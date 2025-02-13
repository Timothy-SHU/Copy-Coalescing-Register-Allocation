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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call fastcc void @bm_data_interp_from_elem(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_data_interp_from_elem(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !34 {
  %6 = alloca [2 x ptr], align 16
  %7 = alloca [2 x float], align 4
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = fcmp ugt float %4, 0.000000e+00
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, %3
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8, !tbaa !35
  tail call void @CustomData_bmesh_free_block_data(ptr noundef %0, ptr noundef %18) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @CustomData_bmesh_copy_data(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef nonnull %3) #15
  br label %32

20:                                               ; preds = %13
  %21 = fcmp ult float %4, 1.000000e+00
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = icmp eq ptr %2, %3
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !35
  tail call void @CustomData_bmesh_free_block_data(ptr noundef %0, ptr noundef %25) #15
  %26 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @CustomData_bmesh_copy_data(ptr noundef %0, ptr noundef %0, ptr noundef %26, ptr noundef nonnull %3) #15
  br label %32

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr %8, ptr %6, align 16, !tbaa !42
  %28 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  store ptr %11, ptr %28, align 8, !tbaa !42
  %29 = fsub float 1.000000e+00, %4
  store float %29, ptr %7, align 4, !tbaa !43
  %30 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %4, ptr %30, align 4, !tbaa !43
  %31 = load ptr, ptr %3, align 8, !tbaa !35
  call void @CustomData_bmesh_interp(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 2, ptr noundef %31) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %32

32:                                               ; preds = %15, %17, %24, %22, %27, %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call fastcc void @bm_data_interp_from_elem(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_interp_face_vert_edge(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef readnone %3, ptr nocapture noundef readonly %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %9 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %6
  %13 = fsub float 1.000000e+00, %5
  %14 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !43
  store float %5, ptr %8, align 4, !tbaa !43
  %15 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %17

17:                                               ; preds = %47, %12
  %18 = phi ptr [ null, %12 ], [ %41, %47 ]
  %19 = phi ptr [ null, %12 ], [ %42, %47 ]
  %20 = phi ptr [ null, %12 ], [ %43, %47 ]
  %21 = phi ptr [ %10, %12 ], [ %52, %47 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  br label %35

29:                                               ; preds = %17
  %30 = icmp eq ptr %23, %3
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 7
  br label %35

35:                                               ; preds = %25, %31
  %36 = phi ptr [ %34, %31 ], [ %28, %25 ]
  %37 = phi ptr [ %33, %31 ], [ %21, %25 ]
  %38 = phi ptr [ %21, %31 ], [ %27, %25 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !42
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
  %48 = load ptr, ptr %41, align 8, !tbaa !51
  store ptr %48, ptr %7, align 16, !tbaa !42
  %49 = load ptr, ptr %43, align 8, !tbaa !51
  store ptr %49, ptr %15, align 8, !tbaa !42
  %50 = load ptr, ptr %42, align 8, !tbaa !51
  call void @CustomData_bmesh_interp(ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i32 noundef 2, ptr noundef %50) #15
  %51 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = load ptr, ptr %9, align 8, !tbaa !45
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %17, !llvm.loop !53

55:                                               ; preds = %47, %40, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @CustomData_bmesh_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [2 x float], align 4
  %10 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = alloca i8, i64 %13, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %15 = icmp eq ptr %2, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1) #15
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
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %9, ptr noundef %7, ptr noundef nonnull %27) #15
  %28 = load i32, ptr %10, align 8, !tbaa !55
  call void @interp_weights_poly_v2(ptr noundef nonnull %14, ptr noundef %6, i32 noundef %28, ptr noundef nonnull %9) #15
  %29 = load i32, ptr %10, align 8, !tbaa !55
  %30 = load ptr, ptr %24, align 8, !tbaa !51
  call void @CustomData_bmesh_interp(ptr noundef nonnull %20, ptr noundef %4, ptr noundef nonnull %14, ptr noundef null, i32 noundef %29, ptr noundef %30) #15
  br i1 %21, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %10, align 8, !tbaa !55
  %33 = load ptr, ptr %25, align 8, !tbaa !48
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %22, ptr noundef %5, ptr noundef nonnull %14, ptr noundef null, i32 noundef %32, ptr noundef %34) #15
  br label %35

35:                                               ; preds = %23, %31
  %36 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = icmp eq ptr %37, %19
  br i1 %38, label %39, label %23, !llvm.loop !61

39:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret void
}

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_weights_poly_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %5, ptr noundef nonnull %17) #15
  %18 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %33, %14
  %21 = phi i64 [ %34, %33 ], [ 0, %14 ]
  %22 = phi ptr [ %36, %33 ], [ %19, %14 ]
  %23 = getelementptr inbounds [2 x float], ptr %16, i64 %21
  %24 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %26) #15
  %27 = load ptr, ptr %22, align 8, !tbaa !51
  %28 = getelementptr inbounds ptr, ptr %10, i64 %21
  store ptr %27, ptr %28, align 8, !tbaa !42
  br i1 %11, label %33, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr %24, align 8, !tbaa !48
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21
  store ptr %31, ptr %32, align 8, !tbaa !42
  br label %33

33:                                               ; preds = %20, %29
  %34 = add nuw i64 %21, 1
  %35 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = icmp eq ptr %36, %19
  br i1 %37, label %38, label %20, !llvm.loop !62

38:                                               ; preds = %33
  call void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef nonnull %10, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_multires_bounds_smooth(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 19) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %124, label %11

11:                                               ; preds = %2
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %11
  %15 = sext i32 %9 to i64
  br label %16

16:                                               ; preds = %14, %51
  %17 = phi ptr [ %12, %14 ], [ %52, %51 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds i8, ptr %20, i64 %15
  %22 = load ptr, ptr %17, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %26 = load i32, ptr %21, align 8, !tbaa !64
  %27 = sitofp i32 %26 to double
  %28 = call double @sqrt(double noundef %27) #15
  %29 = fptosi double %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %16
  %32 = getelementptr inbounds i8, ptr %25, i64 %15
  %33 = getelementptr inbounds i8, ptr %22, i64 %15
  %34 = getelementptr inbounds %struct.MDisps, ptr %32, i64 0, i32 2
  %35 = getelementptr inbounds %struct.MDisps, ptr %33, i64 0, i32 2
  %36 = zext nneg i32 %29 to i64
  %37 = zext nneg i32 %29 to i64
  br label %38

38:                                               ; preds = %31, %38
  %39 = phi i64 [ 0, %31 ], [ %49, %38 ]
  %40 = load ptr, ptr %34, align 8, !tbaa !66
  %41 = mul nsw i64 %39, %36
  %42 = getelementptr inbounds [3 x float], ptr %40, i64 %41
  %43 = load ptr, ptr %35, align 8, !tbaa !66
  %44 = getelementptr inbounds [3 x float], ptr %43, i64 %39
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef %42, ptr noundef %44) #15
  %45 = load ptr, ptr %34, align 8, !tbaa !66
  %46 = getelementptr inbounds [3 x float], ptr %45, i64 %41
  call fastcc void @copy_v3_v3(ptr noundef %46, ptr noundef nonnull %4) #14
  %47 = load ptr, ptr %35, align 8, !tbaa !66
  %48 = getelementptr inbounds [3 x float], ptr %47, i64 %39
  call fastcc void @copy_v3_v3(ptr noundef %48, ptr noundef nonnull %4) #14
  %49 = add nuw nsw i64 %39, 1
  %50 = icmp eq i64 %49, %37
  br i1 %50, label %51, label %38, !llvm.loop !67

51:                                               ; preds = %38, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !llvm.loop !68

54:                                               ; preds = %51, %11
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %124, label %57

57:                                               ; preds = %54
  %58 = sext i32 %9 to i64
  br label %59

59:                                               ; preds = %57, %121
  %60 = phi ptr [ %55, %57 ], [ %122, %121 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = getelementptr inbounds i8, ptr %61, i64 %58
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %63 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = icmp eq ptr %64, %60
  br i1 %65, label %121, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  br label %75

75:                                               ; preds = %66, %72
  %76 = phi ptr [ %74, %72 ], [ %64, %66 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !51
  %78 = load i32, ptr %62, align 8, !tbaa !64
  %79 = sitofp i32 %78 to double
  %80 = call double @sqrt(double noundef %79) #15
  %81 = fptosi double %80 to i32
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %75
  %84 = getelementptr inbounds i8, ptr %77, i64 %58
  %85 = add nsw i32 %81, -2
  %86 = mul nsw i32 %85, %81
  %87 = add nsw i32 %81, -1
  %88 = mul nsw i32 %87, %81
  %89 = getelementptr inbounds %struct.MDisps, ptr %62, i64 0, i32 2
  %90 = getelementptr inbounds %struct.MDisps, ptr %84, i64 0, i32 2
  br label %91

91:                                               ; preds = %83, %91
  %92 = phi i32 [ 0, %83 ], [ %98, %91 ]
  %93 = load ptr, ptr %69, align 8, !tbaa !48
  %94 = load ptr, ptr %63, align 8, !tbaa !52
  %95 = getelementptr inbounds %struct.BMLoop, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  %97 = icmp eq ptr %93, %96
  %98 = add nuw nsw i32 %92, 1
  %99 = mul i32 %98, %81
  %100 = add nsw i32 %99, -2
  %101 = add nsw i32 %99, -1
  %102 = add nsw i32 %92, %86
  %103 = add nsw i32 %99, -1
  %104 = add nsw i32 %92, %88
  %105 = select i1 %97, i32 %100, i32 %102
  %106 = select i1 %97, i32 %101, i32 %103
  %107 = select i1 %97, i32 %101, i32 %104
  %108 = load ptr, ptr %89, align 8, !tbaa !66
  %109 = sext i32 %100 to i64
  %110 = getelementptr inbounds [3 x float], ptr %108, i64 %109
  %111 = load ptr, ptr %90, align 8, !tbaa !66
  %112 = sext i32 %105 to i64
  %113 = getelementptr inbounds [3 x float], ptr %111, i64 %112
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef %110, ptr noundef %113) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef 0x3FC70A3D80000000) #14
  %114 = sext i32 %106 to i64
  %115 = getelementptr inbounds [3 x float], ptr %108, i64 %114
  %116 = sext i32 %107 to i64
  %117 = getelementptr inbounds [3 x float], ptr %111, i64 %116
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef %115, ptr noundef %117) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef 0x3FD47AE140000000) #14
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  call fastcc void @copy_v3_v3(ptr noundef %115, ptr noundef nonnull %7) #14
  %118 = load ptr, ptr %90, align 8, !tbaa !66
  %119 = getelementptr inbounds [3 x float], ptr %118, i64 %116
  call fastcc void @copy_v3_v3(ptr noundef %119, ptr noundef nonnull %7) #14
  %120 = icmp eq i32 %98, %81
  br i1 %120, label %121, label %91, !llvm.loop !69

121:                                              ; preds = %91, %75, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  %122 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %59, !llvm.loop !70

124:                                              ; preds = %121, %54, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !71 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !72 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  store float %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !76 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !77 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !43
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_loop_interp_multires(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call fastcc void @bm_loop_interp_mdisps(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_interp_mdisps(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !78 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %20 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %19, i32 noundef 19) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %99, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.BMFace, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %99, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %1, align 8, !tbaa !51
  %30 = sext i32 %20 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  call fastcc void @compute_mdisp_quad(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %32 = load i32, ptr %31, align 8, !tbaa !64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = getelementptr inbounds i8, ptr %37, i64 %30
  %39 = load <2 x i32>, ptr %38, align 8, !tbaa !80
  store <2 x i32> %39, ptr %31, align 8, !tbaa !80
  %40 = extractelement <2 x i32> %39, i64 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %99, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %44 = sext i32 %40 to i64
  %45 = mul nsw i64 %44, 12
  %46 = tail call ptr %43(i64 noundef %45, ptr noundef nonnull @__func__.bm_loop_interp_mdisps) #15
  %47 = getelementptr inbounds %struct.MDisps, ptr %31, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !66
  br label %48

48:                                               ; preds = %42, %28
  call fastcc void @mdisp_axis_from_quad(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %49 = load i32, ptr %31, align 8, !tbaa !64
  %50 = sitofp i32 %49 to double
  %51 = tail call double @sqrt(double noundef %50) #15
  %52 = fptosi double %51 to i32
  %53 = add nsw i32 %52, -1
  %54 = sitofp i32 %53 to float
  %55 = fdiv float 1.000000e+00, %54
  %56 = icmp sgt i32 %52, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %59 = getelementptr inbounds %struct.MDisps, ptr %31, i64 0, i32 2
  %60 = zext nneg i32 %52 to i64
  %61 = zext nneg i32 %52 to i64
  br label %62

62:                                               ; preds = %96, %57
  %63 = phi i64 [ 0, %57 ], [ %97, %96 ]
  %64 = trunc i64 %63 to i32
  %65 = sitofp i32 %64 to float
  %66 = fmul float %55, %65
  br label %67

67:                                               ; preds = %62, %92
  %68 = phi i64 [ 0, %62 ], [ %94, %92 ]
  %69 = phi float [ 0.000000e+00, %62 ], [ %93, %92 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %8) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %69) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %4) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %9) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef %69) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %7) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %66) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %12) #14
  %70 = load ptr, ptr %58, align 8, !tbaa !58
  br label %71

71:                                               ; preds = %88, %67
  %72 = phi ptr [ %70, %67 ], [ %90, %88 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #16
  %73 = load ptr, ptr %72, align 8, !tbaa !51
  %74 = call fastcc zeroext i8 @mdisp_in_mdispquad(ptr noundef nonnull %1, ptr noundef nonnull %72, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %52, ptr noundef nonnull %17, ptr noundef nonnull %18) #14, !range !81
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, ptr %73, i64 %30
  %78 = load ptr, ptr %59, align 8, !tbaa !66
  %79 = mul nsw i64 %68, %60
  %80 = add nuw nsw i64 %79, %63
  %81 = getelementptr inbounds [3 x float], ptr %78, i64 %80
  %82 = getelementptr inbounds %struct.MDisps, ptr %77, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !66
  %84 = load float, ptr %15, align 4, !tbaa !43
  %85 = load float, ptr %16, align 4, !tbaa !43
  tail call void @old_mdisps_bilinear(ptr noundef %81, ptr noundef %83, i32 noundef %52, float noundef %84, float noundef %85) #15
  %86 = load ptr, ptr %59, align 8, !tbaa !66
  %87 = getelementptr inbounds [3 x float], ptr %86, i64 %80
  call fastcc void @bm_loop_flip_disp(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %87) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  br label %92

88:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  %89 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = icmp eq ptr %90, %70
  br i1 %91, label %92, label %71, !llvm.loop !82

92:                                               ; preds = %88, %76
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  %93 = fadd float %55, %69
  %94 = add nuw nsw i64 %68, 1
  %95 = icmp eq i64 %94, %61
  br i1 %95, label %96, label %67, !llvm.loop !83

96:                                               ; preds = %92
  %97 = add nuw nsw i64 %63, 1
  %98 = icmp eq i64 %97, %61
  br i1 %98, label %99, label %62, !llvm.loop !84

99:                                               ; preds = %96, %48, %34, %22, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_loop_interp_from_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [2 x float], align 4
  %8 = icmp eq i8 %3, 0
  %9 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  br i1 %8, label %15, label %13

13:                                               ; preds = %5
  %14 = alloca i8, i64 %12, align 16
  br label %15

15:                                               ; preds = %5, %13
  %16 = phi ptr [ %14, %13 ], [ null, %5 ]
  %17 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %18 = alloca i8, i64 %12, align 16
  %19 = alloca i8, i64 %12, align 16
  %20 = shl nsw i64 %11, 2
  %21 = alloca i8, i64 %20, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %22 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %6, ptr noundef nonnull %22) #15
  %23 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  br label %25

25:                                               ; preds = %38, %15
  %26 = phi i64 [ %39, %38 ], [ 0, %15 ]
  %27 = phi ptr [ %41, %38 ], [ %24, %15 ]
  %28 = getelementptr inbounds [2 x float], ptr %19, i64 %26
  %29 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %28, ptr noundef nonnull %6, ptr noundef nonnull %31) #15
  %32 = load ptr, ptr %27, align 8, !tbaa !51
  %33 = getelementptr inbounds ptr, ptr %18, i64 %26
  store ptr %32, ptr %33, align 8, !tbaa !42
  br i1 %8, label %38, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %29, align 8, !tbaa !48
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds ptr, ptr %16, i64 %26
  store ptr %36, ptr %37, align 8, !tbaa !42
  br label %38

38:                                               ; preds = %25, %34
  %39 = add nuw i64 %26, 1
  %40 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = icmp eq ptr %41, %24
  br i1 %42, label %43, label %25, !llvm.loop !85

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %46) #15
  %47 = load i32, ptr %17, align 8, !tbaa !55
  call void @interp_weights_poly_v2(ptr noundef nonnull %21, ptr noundef nonnull %19, i32 noundef %47, ptr noundef nonnull %7) #15
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %49 = load i32, ptr %17, align 8, !tbaa !55
  %50 = load ptr, ptr %1, align 8, !tbaa !51
  call void @CustomData_bmesh_interp(ptr noundef nonnull %48, ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef null, i32 noundef %49, ptr noundef %50) #15
  br i1 %8, label %56, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %53 = load i32, ptr %17, align 8, !tbaa !55
  %54 = load ptr, ptr %44, align 8, !tbaa !48
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %52, ptr noundef %16, ptr noundef nonnull %21, ptr noundef null, i32 noundef %53, ptr noundef %55) #15
  br label %56

56:                                               ; preds = %51, %43
  %57 = icmp eq i8 %4, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  call fastcc void @bm_loop_interp_mdisps(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #14
  br label %59

59:                                               ; preds = %58, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %14 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  br label %17

17:                                               ; preds = %17, %3
  %18 = phi i64 [ %27, %17 ], [ 0, %3 ]
  %19 = phi ptr [ %29, %17 ], [ %16, %3 ]
  %20 = getelementptr inbounds [2 x float], ptr %11, i64 %18
  %21 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %20, ptr noundef nonnull %4, ptr noundef nonnull %23) #15
  %24 = load ptr, ptr %21, align 8, !tbaa !48
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds ptr, ptr %10, i64 %18
  store ptr %25, ptr %26, align 8, !tbaa !42
  %27 = add nuw i64 %18, 1
  %28 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %31, label %17, !llvm.loop !86

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %32) #15
  %33 = load i32, ptr %6, align 8, !tbaa !55
  call void @interp_weights_poly_v2(ptr noundef nonnull %13, ptr noundef nonnull %11, i32 noundef %33, ptr noundef nonnull %5) #15
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %35 = load i32, ptr %6, align 8, !tbaa !55
  %36 = load ptr, ptr %1, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %34, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef null, i32 noundef %35, ptr noundef %36) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_layer_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !87
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %9 = tail call ptr %8(ptr noundef nonnull %5) #15
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  store ptr %11, ptr %4, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !91
  %13 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2, ptr noundef null, i32 noundef 0) #15
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1) #14
  %14 = load ptr, ptr %4, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %17(ptr noundef nonnull %14) #15
  br label %18

18:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_data_blocks(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !92 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, ptr %0, align 8, !tbaa !93
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %12, i8 noundef zeroext 1) #15
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %71, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %11 ]
  store ptr null, ptr %5, align 8, !tbaa !42
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #15
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %17, ptr noundef nonnull %5) #15
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %16) #15
  %18 = load ptr, ptr %5, align 8, !tbaa !42
  store ptr %18, ptr %16, align 8, !tbaa !59
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %71, label %15, !llvm.loop !96

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !97
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %26, i8 noundef zeroext 2) #15
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %71, label %29

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %33, %29 ], [ %27, %24 ]
  store ptr null, ptr %5, align 8, !tbaa !42
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #15
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %31, ptr noundef nonnull %5) #15
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %30) #15
  %32 = load ptr, ptr %5, align 8, !tbaa !42
  store ptr %32, ptr %30, align 8, !tbaa !98
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %71, label %29, !llvm.loop !99

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !100
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %40, i8 noundef zeroext 4) #15
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %38, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %38 ]
  %45 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %44) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %51, %47 ], [ %45, %43 ]
  store ptr null, ptr %5, align 8, !tbaa !42
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #15
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %49, ptr noundef nonnull %5) #15
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %48) #15
  %50 = load ptr, ptr %5, align 8, !tbaa !42
  store ptr %50, ptr %48, align 8, !tbaa !51
  %51 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %47, !llvm.loop !101

53:                                               ; preds = %47, %43
  %54 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !102

56:                                               ; preds = %53, %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  br label %71

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !103
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %62, i8 noundef zeroext 8) #15
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60, %65
  %66 = phi ptr [ %69, %65 ], [ %63, %60 ]
  store ptr null, ptr %5, align 8, !tbaa !42
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #15
  %67 = load ptr, ptr %66, align 8, !tbaa !104
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %67, ptr noundef nonnull %5) #15
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %66) #15
  %68 = load ptr, ptr %5, align 8, !tbaa !42
  store ptr %68, ptr %66, align 8, !tbaa !104
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %65, !llvm.loop !105

71:                                               ; preds = %65, %29, %15, %60, %24, %11, %57, %56
  %72 = icmp eq ptr %8, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  call void @BLI_mempool_destroy(ptr noundef nonnull %8) #15
  br label %74

74:                                               ; preds = %73, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_layer_add_named(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !87
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %10 = tail call ptr %9(ptr noundef nonnull %6) #15
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  store ptr %12, ptr %5, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !91
  %14 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %3) #15
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #14
  %15 = load ptr, ptr %5, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %18(ptr noundef nonnull %15) #15
  br label %19

19:                                               ; preds = %17, %11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_layer_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !87
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %9 = tail call ptr %8(ptr noundef nonnull %5) #15
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  store ptr %11, ptr %4, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !91
  %13 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0) #15
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1) #14
  %14 = load ptr, ptr %4, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %17(ptr noundef nonnull %14) #15
  br label %18

18:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_layer_free_n(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !87
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %10 = tail call ptr %9(ptr noundef nonnull %6) #15
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  store ptr %12, ptr %5, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !91
  %14 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #15
  %15 = tail call zeroext i8 @CustomData_free_layer(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, i32 noundef %14) #15
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #14
  %16 = load ptr, ptr %5, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %19(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %18, %11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_data_layer_copy(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %15, i32 noundef %2, i32 noundef %3) #15
  %17 = load ptr, ptr %14, align 8, !tbaa !59
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %17, i32 noundef %2, i32 noundef %4, ptr noundef %16) #15
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %67, label %13, !llvm.loop !106

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %28, i32 noundef %2, i32 noundef %3) #15
  %30 = load ptr, ptr %27, align 8, !tbaa !98
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %30, i32 noundef %2, i32 noundef %4, ptr noundef %29) #15
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %67, label %26, !llvm.loop !107

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %44, %39 ], [ %37, %36 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !104
  %42 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %41, i32 noundef %2, i32 noundef %3) #15
  %43 = load ptr, ptr %40, align 8, !tbaa !104
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %43, i32 noundef %2, i32 noundef %4, ptr noundef %42) #15
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %67, label %39, !llvm.loop !108

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %49, %63
  %53 = phi ptr [ %64, %63 ], [ %50, %49 ]
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %53) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %61, %56 ], [ %54, %52 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %58, i32 noundef %2, i32 noundef %3) #15
  %60 = load ptr, ptr %57, align 8, !tbaa !51
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %60, i32 noundef %2, i32 noundef %4, ptr noundef %59) #15
  %61 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %56, !llvm.loop !109

63:                                               ; preds = %56, %52
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !110

66:                                               ; preds = %63, %49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  br label %67

67:                                               ; preds = %39, %26, %13, %36, %23, %10, %66, %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_set_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_elem_float_data_get(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !111
  %5 = tail call ptr @CustomData_bmesh_get(ptr noundef %0, ptr noundef %4, i32 noundef %2) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load float, ptr %5, align 4, !tbaa !43
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi float [ %8, %7 ], [ 0.000000e+00, %3 ]
  ret float %10
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_elem_float_data_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !111
  %6 = tail call ptr @CustomData_bmesh_get(ptr noundef %0, ptr noundef %5, i32 noundef %2) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store float %3, ptr %6, align 4, !tbaa !43
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: optsize
declare void @CustomData_bmesh_free_block_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !112 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !113
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !74
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !74
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !74
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !74
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !74
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !74
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !74
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !114
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !74
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !88
  tail call void %28(ptr noundef nonnull %0) #15
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

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_mdisp_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !118 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  %11 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  call void @BM_face_calc_center_mean(ptr noundef %12, ptr noundef nonnull %8) #15
  %13 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %20) #15
  %21 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %18, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %25, ptr noundef nonnull %27) #15
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %8) #14
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %10) #14
  %28 = load ptr, ptr %18, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %29) #14
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %9) #14
  call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %2, ptr noundef %1) #14
  call fastcc void @sub_v3_v3v3(ptr noundef %6, ptr noundef %3, ptr noundef %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @mdisp_axis_from_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #7 !PGOFuncName !119 {
  tail call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef %2, ptr noundef %0) #14
  tail call fastcc void @sub_v3_v3v3(ptr noundef %4, ptr noundef %1, ptr noundef %0) #14
  tail call fastcc void @normalize_v3(ptr noundef %3) #14
  tail call fastcc void @normalize_v3(ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !120 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  %4 = load float, ptr %0, align 4, !tbaa !43
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !43
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !121 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mdisp_in_mdispquad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !122 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  %16 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 3
  %19 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %18) #14, !range !81
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  tail call void @BM_vert_normal_update_all(ptr noundef %17) #15
  br label %22

22:                                               ; preds = %21, %8
  %23 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3
  %26 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %25) #14, !range !81
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @BM_vert_normal_update_all(ptr noundef %24) #15
  br label %29

29:                                               ; preds = %28, %22
  call fastcc void @compute_mdisp_quad(ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #14
  call void @cent_quad_v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #14
  call fastcc void @sub_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  call fastcc void @sub_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #14
  call fastcc void @sub_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %11) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef 0x3FF001F400000000) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef 0x3FF001F400000000) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef 0x3FF001F400000000) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef 0x3FF001F400000000) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %11) #14
  %30 = load ptr, ptr %16, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 3
  %32 = call fastcc i32 @quad_co(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %2, ptr noundef nonnull %31) #14, !range !123
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = add nsw i32 %5, -1
  %36 = sitofp i32 %35 to float
  %37 = load float, ptr %3, align 4, !tbaa !43
  %38 = fmul float %37, %36
  store float %38, ptr %3, align 4, !tbaa !43
  %39 = load float, ptr %4, align 4, !tbaa !43
  %40 = fmul float %39, %36
  store float %40, ptr %4, align 4, !tbaa !43
  call fastcc void @mdisp_axis_from_quad(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef %6, ptr noundef %7) #14
  br label %41

41:                                               ; preds = %29, %34
  %42 = phi i8 [ 1, %34 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  ret i8 %42
}

; Function Attrs: optsize
declare void @old_mdisps_bilinear(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_flip_disp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !124 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  %13 = load float, ptr %4, align 4, !tbaa !43
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %6, ptr noundef %0, float noundef %13) #14
  %14 = getelementptr inbounds float, ptr %4, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !43
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %7, ptr noundef %1, float noundef %15) #14
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3) #14
  call void @project_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %10) #14
  %16 = call fastcc float @bm_loop_flip_equotion(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1) #14
  %17 = call float @llvm.fabs.f32(float %16)
  %18 = fcmp olt float %17, 0x3F1A36E2E0000000
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = call fastcc float @bm_loop_flip_equotion(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 2) #14
  %21 = call float @llvm.fabs.f32(float %20)
  %22 = fcmp olt float %21, 0x3F1A36E2E0000000
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call fastcc float @bm_loop_flip_equotion(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 2) #14
  br label %25

25:                                               ; preds = %19, %23, %5
  %26 = phi float [ %24, %23 ], [ %20, %19 ], [ %16, %5 ]
  %27 = load float, ptr %11, align 4, !tbaa !43
  %28 = getelementptr inbounds [2 x [2 x float]], ptr %12, i64 0, i64 1
  %29 = load <4 x float>, ptr %12, align 16
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %31 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !43
  %33 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !43
  %35 = load float, ptr %12, align 16, !tbaa !43
  %36 = load float, ptr %28, align 8, !tbaa !43
  %37 = insertelement <2 x float> poison, float %32, i64 0
  %38 = insertelement <2 x float> %37, float %27, i64 1
  %39 = fneg <2 x float> %38
  %40 = insertelement <2 x float> poison, float %34, i64 0
  %41 = insertelement <2 x float> %40, float %36, i64 1
  %42 = fmul <2 x float> %41, %39
  %43 = insertelement <2 x float> poison, float %27, i64 0
  %44 = insertelement <2 x float> %43, float %35, i64 1
  %45 = insertelement <2 x float> %30, float %34, i64 1
  %46 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %45, <2 x float> %42)
  %47 = insertelement <2 x float> poison, float %26, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = fdiv <2 x float> %46, %48
  store <2 x float> %49, ptr %4, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !125 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !126 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !127 {
  %3 = load float, ptr %0, align 4, !tbaa !43
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !128 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !129 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !43
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !130 {
  %2 = load float, ptr %0, align 4, !tbaa !43
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !43
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BM_vert_normal_update_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cent_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !131 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  %4 = load float, ptr %0, align 4, !tbaa !43
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !43
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @quad_co(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !132 {
  %9 = alloca [5 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %2) #14
  %13 = getelementptr inbounds [5 x [3 x float]], ptr %9, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %3) #14
  %14 = getelementptr inbounds [5 x [3 x float]], ptr %9, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %4) #14
  %15 = getelementptr inbounds [5 x [3 x float]], ptr %9, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef %5) #14
  %16 = getelementptr inbounds [5 x [3 x float]], ptr %9, i64 0, i64 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %6) #14
  %17 = call float @normal_quad_v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #15
  %18 = call fastcc float @dot_v3v3(ptr noundef %7, ptr noundef nonnull %10) #14
  %19 = fcmp olt float %18, 0xBE80000000000000
  br i1 %19, label %35, label %20

20:                                               ; preds = %8
  call void @poly_rotate_plane(ptr noundef %7, ptr noundef nonnull %9, i32 noundef 5) #15
  br label %21

21:                                               ; preds = %20, %21
  %22 = phi i64 [ 0, %20 ], [ %24, %21 ]
  %23 = getelementptr inbounds [5 x [3 x float]], ptr %9, i64 0, i64 %22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %16) #14
  %24 = add nuw nsw i64 %22, 1
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %21, !llvm.loop !133

26:                                               ; preds = %21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #14
  %27 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %13) #14
  %28 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %14) #14
  %29 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %15) #14
  %30 = call i32 @isect_point_quad_v2(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = call fastcc float @quad_coord(ptr noundef nonnull %27, ptr noundef nonnull %11, ptr noundef nonnull %28, ptr noundef nonnull %29) #14
  store float %33, ptr %1, align 4, !tbaa !43
  %34 = call fastcc float @quad_coord(ptr noundef nonnull %28, ptr noundef nonnull %27, ptr noundef nonnull %29, ptr noundef nonnull %11) #14
  store float %34, ptr %0, align 4, !tbaa !43
  br label %35

35:                                               ; preds = %26, %8, %32
  %36 = phi i32 [ 1, %32 ], [ 0, %8 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %9) #16
  ret i32 %36
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @poly_rotate_plane(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc float @quad_coord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #11 !PGOFuncName !134 {
  %5 = load float, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = load float, ptr %2, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fneg float %8
  %12 = fmul float %10, %11
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %12)
  %14 = getelementptr inbounds float, ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !43
  %16 = load float, ptr %1, align 4, !tbaa !43
  %17 = fmul float %7, %16
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %15, float %17)
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = tail call float @llvm.fmuladd.f32(float %11, float %20, float %18)
  %22 = load float, ptr %3, align 4, !tbaa !43
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %10, float %21)
  %25 = fmul float %20, %23
  %26 = tail call float @llvm.fmuladd.f32(float %16, float %15, float %25)
  %27 = fsub float %13, %24
  %28 = fadd float %26, %27
  %29 = fmul float %28, 2.000000e+00
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ogt float %30, 0x3EB4000000000000
  br i1 %31, label %32, label %49

32:                                               ; preds = %4
  %33 = fmul float %13, -4.000000e+00
  %34 = fmul float %33, %26
  %35 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %34)
  %36 = tail call float @sqrtf(float noundef %35) #15
  %37 = fsub float %36, %24
  %38 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %37)
  %39 = fdiv float %38, %29
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fneg float %36
  %42 = fsub float %41, %24
  %43 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %42)
  %44 = fdiv float %43, %29
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = tail call fastcc float @min_ff(float noundef %40, float noundef %45) #14
  %47 = fcmp ogt float %46, 0x3FF0000020000000
  %48 = select i1 %47, float 0x3FF0000020000000, float %46
  br label %96

49:                                               ; preds = %4
  %50 = fneg float %26
  %51 = tail call float @llvm.fmuladd.f32(float %26, float -2.000000e+00, float %24)
  %52 = fdiv float %50, %51
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = fcmp ogt float %52, 0x3FF0000020000000
  br i1 %55, label %63, label %56

56:                                               ; preds = %49, %54
  %57 = phi float [ %52, %54 ], [ 0.000000e+00, %49 ]
  %58 = fcmp uno float %57, 0.000000e+00
  %59 = fcmp ogt float %57, 1.000000e+00
  %60 = or i1 %58, %59
  %61 = fcmp olt float %57, 0.000000e+00
  %62 = or i1 %61, %60
  br i1 %62, label %63, label %96

63:                                               ; preds = %54, %56
  %64 = phi float [ %57, %56 ], [ 0x3FF0000020000000, %54 ]
  br label %65

65:                                               ; preds = %63, %95
  %66 = phi i1 [ true, %63 ], [ false, %95 ]
  %67 = phi i64 [ 0, %63 ], [ 1, %95 ]
  %68 = getelementptr inbounds float, ptr %0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !43
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = fcmp olt float %70, 0x3EE9000000000000
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = xor i64 %67, 1
  %74 = getelementptr inbounds float, ptr %0, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !43
  %76 = getelementptr inbounds float, ptr %1, i64 %73
  %77 = load float, ptr %76, align 4, !tbaa !43
  %78 = fsub float %77, %75
  %79 = tail call float @llvm.fabs.f32(float %78)
  %80 = fdiv float %75, %79
  br label %96

81:                                               ; preds = %65
  %82 = getelementptr inbounds float, ptr %2, i64 %67
  %83 = load float, ptr %82, align 4, !tbaa !43
  %84 = tail call float @llvm.fabs.f32(float %83)
  %85 = fcmp olt float %84, 0x3EE9000000000000
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = xor i64 %67, 1
  %88 = getelementptr inbounds float, ptr %2, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !43
  %90 = getelementptr inbounds float, ptr %3, i64 %87
  %91 = load float, ptr %90, align 4, !tbaa !43
  %92 = fsub float %91, %89
  %93 = tail call float @llvm.fabs.f32(float %92)
  %94 = fdiv float %89, %93
  br label %96

95:                                               ; preds = %81
  br i1 %66, label %65, label %96, !llvm.loop !135

96:                                               ; preds = %95, %72, %86, %32, %56
  %97 = phi float [ %48, %32 ], [ %57, %56 ], [ %94, %86 ], [ %80, %72 ], [ %64, %95 ]
  ret float %97
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !136 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !137 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !43
  %15 = load float, ptr %8, align 4, !tbaa !43
  %16 = load float, ptr %2, align 4, !tbaa !43
  %17 = load float, ptr %1, align 4, !tbaa !43
  %18 = load float, ptr %6, align 4, !tbaa !43
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !43
  %23 = load float, ptr %1, align 4, !tbaa !43
  %24 = load float, ptr %10, align 4, !tbaa !43
  %25 = load float, ptr %4, align 4, !tbaa !43
  %26 = load float, ptr %2, align 4, !tbaa !43
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @bm_loop_flip_equotion(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 !PGOFuncName !138 {
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds float, ptr %2, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !43
  store float %10, ptr %0, align 4, !tbaa !43
  %11 = getelementptr inbounds float, ptr %3, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float %12, ptr %13, align 4, !tbaa !43
  %14 = zext nneg i32 %6 to i64
  %15 = getelementptr inbounds float, ptr %2, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = getelementptr inbounds [2 x float], ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !43
  %18 = getelementptr inbounds float, ptr %3, i64 %14
  %19 = load float, ptr %18, align 4, !tbaa !43
  %20 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  store float %19, ptr %20, align 4, !tbaa !43
  %21 = getelementptr inbounds float, ptr %4, i64 %8
  %22 = load float, ptr %21, align 4, !tbaa !43
  store float %22, ptr %1, align 4, !tbaa !43
  %23 = getelementptr inbounds float, ptr %4, i64 %14
  %24 = load float, ptr %23, align 4, !tbaa !43
  %25 = getelementptr inbounds float, ptr %1, i64 1
  store float %24, ptr %25, align 4, !tbaa !43
  %26 = load float, ptr %0, align 4, !tbaa !43
  %27 = load float, ptr %20, align 4, !tbaa !43
  %28 = load float, ptr %13, align 4, !tbaa !43
  %29 = load float, ptr %17, align 4, !tbaa !43
  %30 = fneg float %28
  %31 = fmul float %29, %30
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %31)
  ret float %32
}

; Function Attrs: optsize
declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_set_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

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
!34 = !{!"bmesh_interp.c:bm_data_interp_from_elem"}
!35 = !{!36, !38, i64 0}
!36 = !{!"BMElem", !37, i64 0}
!37 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!38, !38, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !39, i64 0}
!45 = !{!46, !38, i64 40}
!46 = !{!"BMEdge", !37, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !47, i64 48, !47, i64 64}
!47 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!48 = !{!49, !38, i64 16}
!49 = !{!"BMLoop", !37, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!50 = !{!49, !38, i64 56}
!51 = !{!49, !38, i64 0}
!52 = !{!49, !38, i64 40}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!56, !41, i64 32}
!56 = !{!"BMFace", !37, i64 0, !38, i64 16, !38, i64 24, !41, i64 32, !39, i64 36, !57, i64 48}
!57 = !{!"short", !39, i64 0}
!58 = !{!56, !38, i64 24}
!59 = !{!60, !38, i64 0}
!60 = !{!"BMVert", !37, i64 0, !38, i64 16, !39, i64 24, !39, i64 36, !38, i64 48}
!61 = distinct !{!61, !54}
!62 = distinct !{!62, !54}
!63 = !{!49, !38, i64 64}
!64 = !{!65, !41, i64 0}
!65 = !{!"MDisps", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 16}
!66 = !{!65, !38, i64 8}
!67 = distinct !{!67, !54}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !54}
!71 = !{!"bmesh_interp.c:BM_iter_new"}
!72 = !{!"bmesh_interp.c:copy_v3_v3"}
!73 = !{!"bmesh_interp.c:BM_iter_step"}
!74 = !{!75, !38, i64 48}
!75 = !{!"BMIter", !39, i64 0, !38, i64 40, !38, i64 48, !41, i64 56, !39, i64 60}
!76 = !{!"bmesh_interp.c:add_v3_v3v3"}
!77 = !{!"bmesh_interp.c:mul_v3_fl"}
!78 = !{!"bmesh_interp.c:bm_loop_interp_mdisps"}
!79 = !{!49, !38, i64 32}
!80 = !{!41, !41, i64 0}
!81 = !{i8 0, i8 2}
!82 = distinct !{!82, !54}
!83 = distinct !{!83, !54}
!84 = distinct !{!84, !54}
!85 = distinct !{!85, !54}
!86 = distinct !{!86, !54}
!87 = !{i64 0, i64 8, !42, i64 8, i64 164, !88, i64 172, i64 4, !80, i64 176, i64 4, !80, i64 180, i64 4, !80, i64 184, i64 8, !42, i64 192, i64 8, !42}
!88 = !{!39, !39, i64 0}
!89 = !{!90, !38, i64 0}
!90 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!91 = !{!90, !38, i64 184}
!92 = !{!"bmesh_interp.c:update_data_blocks"}
!93 = !{!94, !41, i64 0}
!94 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 136, !90, i64 144, !90, i64 344, !90, i64 544, !90, i64 744, !57, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !95, i64 960, !38, i64 976, !95, i64 984, !38, i64 1000}
!95 = !{!"ListBase", !38, i64 0, !38, i64 8}
!96 = distinct !{!96, !54}
!97 = !{!94, !41, i64 4}
!98 = !{!46, !38, i64 0}
!99 = distinct !{!99, !54}
!100 = !{!94, !41, i64 8}
!101 = distinct !{!101, !54}
!102 = distinct !{!102, !54}
!103 = !{!94, !41, i64 12}
!104 = !{!56, !38, i64 0}
!105 = distinct !{!105, !54}
!106 = distinct !{!106, !54}
!107 = distinct !{!107, !54}
!108 = distinct !{!108, !54}
!109 = distinct !{!109, !54}
!110 = distinct !{!110, !54}
!111 = !{!37, !38, i64 0}
!112 = !{!"bmesh_interp.c:BM_iter_init"}
!113 = !{!75, !39, i64 60}
!114 = !{!75, !38, i64 40}
!115 = !{!94, !38, i64 32}
!116 = !{!94, !38, i64 40}
!117 = !{!94, !38, i64 56}
!118 = !{!"bmesh_interp.c:compute_mdisp_quad"}
!119 = !{!"bmesh_interp.c:mdisp_axis_from_quad"}
!120 = !{!"bmesh_interp.c:add_v3_v3"}
!121 = !{!"bmesh_interp.c:sub_v3_v3v3"}
!122 = !{!"bmesh_interp.c:mdisp_in_mdispquad"}
!123 = !{i32 0, i32 2}
!124 = !{!"bmesh_interp.c:bm_loop_flip_disp"}
!125 = !{!"bmesh_interp.c:normalize_v3"}
!126 = !{!"bmesh_interp.c:normalize_v3_v3"}
!127 = !{!"bmesh_interp.c:dot_v3v3"}
!128 = !{!"bmesh_interp.c:mul_v3_v3fl"}
!129 = !{!"bmesh_interp.c:zero_v3"}
!130 = !{!"bmesh_interp.c:is_zero_v3"}
!131 = !{!"bmesh_interp.c:sub_v3_v3"}
!132 = !{!"bmesh_interp.c:quad_co"}
!133 = distinct !{!133, !54}
!134 = !{!"bmesh_interp.c:quad_coord"}
!135 = distinct !{!135, !54}
!136 = !{!"bmesh_interp.c:min_ff"}
!137 = !{!"bmesh_interp.c:cross_v3_v3v3"}
!138 = !{!"bmesh_interp.c:bm_loop_flip_equotion"}
