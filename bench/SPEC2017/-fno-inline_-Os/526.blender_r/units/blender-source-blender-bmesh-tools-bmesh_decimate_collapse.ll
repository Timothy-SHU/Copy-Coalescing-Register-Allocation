; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_decimate_collapse.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_decimate_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.Quadric = type { float, float, float, float, float, float, float, float, float, float }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_decimate_collapse = private unnamed_addr constant [26 x i8] c"BM_mesh_decimate_collapse\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_decimate_collapse(ptr noundef %0, float noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @bm_decim_triangulate_begin(ptr noundef %0) #12, !range !34
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %7 = load i32, ptr %0, align 8, !tbaa !39
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 40
  %10 = tail call ptr %6(i64 noundef %9, ptr noundef nonnull @__func__.BM_mesh_decimate_collapse) #13
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = tail call ptr @BLI_heap_new_ex(i32 noundef %12) #13
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %15 = load i32, ptr %11, align 4, !tbaa !45
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @__func__.BM_mesh_decimate_collapse) #13
  tail call fastcc void @bm_decim_build_quadrics(ptr noundef nonnull %0, ptr noundef %10) #12
  tail call fastcc void @bm_decim_build_edge_cost(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %2, ptr noundef %13, ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = sitofp i32 %20 to float
  %22 = fmul float %21, %1
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %25 = load i8, ptr %24, align 4, !tbaa !47
  %26 = or i8 %25, 15
  store i8 %26, ptr %24, align 4, !tbaa !47
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %28 = tail call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %27) #13
  %29 = icmp ne i8 %28, 0
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %32 = tail call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %31) #13
  %33 = icmp eq i8 %32, 0
  %34 = or disjoint i32 %30, 2
  %35 = select i1 %33, i32 %30, i32 %34
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %37 = tail call zeroext i8 @CustomData_has_math(ptr noundef nonnull %36) #13
  %38 = icmp eq i8 %37, 0
  %39 = or disjoint i32 %35, 4
  %40 = select i1 %38, i32 %35, i32 %39
  %41 = load i32, ptr %19, align 4, !tbaa !46
  %42 = icmp sgt i32 %41, %23
  br i1 %42, label %43, label %57

43:                                               ; preds = %4, %50
  %44 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %13) #13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = tail call ptr @BLI_heap_top(ptr noundef %13) #13
  %48 = tail call float @BLI_heap_node_value(ptr noundef %47) #13
  %49 = fcmp une float %48, 0x47EFFFFFE0000000
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = tail call ptr @BLI_heap_popmin(ptr noundef %13) #13
  %52 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %51) #12
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %18, i64 %53
  store ptr null, ptr %54, align 8, !tbaa !35
  tail call fastcc void @bm_decim_edge_collapse(ptr noundef nonnull %0, ptr noundef %51, ptr noundef %10, ptr noundef %2, ptr noundef %13, ptr noundef %18, i32 noundef %40) #12
  %55 = load i32, ptr %19, align 4, !tbaa !46
  %56 = icmp sgt i32 %55, %23
  br i1 %56, label %43, label %57, !llvm.loop !48

57:                                               ; preds = %46, %50, %43, %4
  %58 = icmp eq i8 %3, 0
  %59 = icmp ne i8 %5, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call fastcc void @bm_decim_triangulate_end(ptr noundef nonnull %0) #12
  br label %62

62:                                               ; preds = %61, %57
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %63(ptr noundef %10) #13
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %64(ptr noundef %18) #13
  tail call void @BLI_heap_free(ptr noundef %13, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_decim_triangulate_begin(ptr noundef %0) unnamed_addr #0 !PGOFuncName !50 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.BMFace, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %9, %6 ], [ %13, %10 ]
  call fastcc void @_bm_elem_index_set(ptr noundef %11, i32 noundef -1) #12
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %10, !llvm.loop !56

15:                                               ; preds = %10
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !57

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 4, !tbaa !47
  %21 = or i8 %20, 4
  store i8 %21, ptr %19, align 4, !tbaa !47
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %80, label %24

24:                                               ; preds = %18, %73
  %25 = phi ptr [ %75, %73 ], [ %22, %18 ]
  %26 = phi i8 [ %74, %73 ], [ 0, %18 ]
  %27 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 2
  %42 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  %45 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %41, ptr noundef nonnull %44) #12
  %46 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %49 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2
  %52 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %48, ptr noundef nonnull %51) #12
  %53 = fcmp olt float %45, %52
  %54 = select i1 %53, ptr %32, ptr %34
  %55 = select i1 %53, ptr %36, ptr %38
  %56 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !59
  %60 = call ptr @BM_edge_exists(ptr noundef %57, ptr noundef %59) #13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %63 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %25) #12
  %67 = load ptr, ptr %3, align 8, !tbaa !35
  call fastcc void @_bm_elem_index_set(ptr noundef %67, i32 noundef %66) #12
  %68 = load ptr, ptr %3, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  call fastcc void @_bm_elem_index_set(ptr noundef %70, i32 noundef %66) #12
  call void @BM_face_normal_update(ptr noundef nonnull %25) #13
  call void @BM_face_normal_update(ptr noundef nonnull %63) #13
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i8 [ 1, %65 ], [ %26, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %73

73:                                               ; preds = %30, %71, %24
  %74 = phi i8 [ %26, %24 ], [ %72, %71 ], [ %26, %30 ]
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %24, !llvm.loop !61

77:                                               ; preds = %73
  %78 = icmp eq i8 %74, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 10) #13
  br label %80

80:                                               ; preds = %18, %79, %77
  %81 = phi i8 [ %74, %79 ], [ 0, %77 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  ret i8 %81
}

; Function Attrs: optsize
declare ptr @BLI_heap_new_ex(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_build_quadrics(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !62 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.Quadric, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.Quadric, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %2, %31
  %11 = phi ptr [ %32, %31 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 4
  %18 = call fastcc float @dot_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %16) #12
  %19 = fneg float %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  call void @BLI_quadric_from_v3_dist(ptr noundef nonnull %4, ptr noundef nonnull %17, float noundef %19) #13
  %20 = load ptr, ptr %12, align 8, !tbaa !51
  br label %21

21:                                               ; preds = %21, %10
  %22 = phi ptr [ %20, %10 ], [ %29, %21 ]
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = call fastcc i32 @_bm_elem_index_get(ptr noundef %24) #12
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %26
  call void @BLI_quadric_add_qu_qu(ptr noundef %27, ptr noundef nonnull %4) #13
  %28 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %21, !llvm.loop !63

31:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %10, !llvm.loop !64

34:                                               ; preds = %31, %2
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %72, label %37

37:                                               ; preds = %34, %69
  %38 = phi ptr [ %70, %69 ], [ %35, %34 ]
  %39 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %38) #12, !range !34
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %42 = getelementptr inbounds %struct.BMEdge, ptr %38, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  %45 = getelementptr inbounds %struct.BMEdge, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %44, ptr noundef nonnull %47) #12
  %48 = getelementptr inbounds %struct.BMEdge, ptr %38, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.BMFace, ptr %51, i64 0, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %52) #12
  %53 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #12
  %54 = fcmp ogt float %53, 0x3E80000000000000
  br i1 %54, label %55, label %68

55:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  %56 = load ptr, ptr %45, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  %58 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %57) #12
  %59 = fneg float %58
  call void @BLI_quadric_from_v3_dist(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %59) #13
  call void @BLI_quadric_mul(ptr noundef nonnull %7, float noundef 1.000000e+02) #13
  %60 = load ptr, ptr %45, align 8, !tbaa !68
  %61 = call fastcc i32 @_bm_elem_index_get(ptr noundef %60) #12
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %62
  call void @BLI_quadric_add_qu_qu(ptr noundef %63, ptr noundef nonnull %7) #13
  %64 = load ptr, ptr %42, align 8, !tbaa !65
  %65 = call fastcc i32 @_bm_elem_index_get(ptr noundef %64) #12
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %66
  call void @BLI_quadric_add_qu_qu(ptr noundef %67, ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  br label %68

68:                                               ; preds = %55, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  br label %69

69:                                               ; preds = %37, %68
  %70 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %37, !llvm.loop !71

72:                                               ; preds = %69, %34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_build_edge_cost(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !72 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %9
  %10 = phi i32 [ %15, %9 ], [ 0, %5 ]
  %11 = phi ptr [ %14, %9 ], [ %7, %5 ]
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %4, i64 %12
  store ptr null, ptr %13, align 8, !tbaa !35
  call fastcc void @bm_decim_build_edge_cost_single(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12
  %14 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %15 = add i32 %10, 1
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %9, !llvm.loop !73

17:                                               ; preds = %9, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_interp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_heap_node_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_heap_top(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !75
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_edge_collapse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !76 {
  %8 = alloca [2 x i32], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %12 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %15) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %17 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %17) #12
  %18 = tail call fastcc zeroext i8 @bm_edge_collapse_is_degenerate_topology(ptr noundef %1) #12, !range !34
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  tail call fastcc void @bm_decim_invalid_edge_cost_single(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %5) #12
  br label %110

21:                                               ; preds = %7
  call fastcc void @bm_decim_calc_target_co(ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef %2) #12
  %22 = call fastcc zeroext i8 @bm_edge_collapse_is_degenerate_flip(ptr noundef nonnull %1, ptr noundef nonnull %9) #12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call fastcc void @bm_decim_invalid_edge_cost_single(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %5) #12
  br label %110

25:                                               ; preds = %21
  %26 = load ptr, ptr %12, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %14, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %29) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = call float @line_point_factor_v3(ptr noundef nonnull %9, ptr noundef nonnull %27, ptr noundef nonnull %29) #13
  %34 = load ptr, ptr %14, align 8, !tbaa !65
  br label %35

35:                                               ; preds = %25, %32
  %36 = phi ptr [ %34, %32 ], [ %28, %25 ]
  %37 = phi float [ %33, %32 ], [ 5.000000e-01, %25 ]
  %38 = call fastcc zeroext i8 @bm_edge_collapse(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %36, ptr noundef nonnull %8, i32 noundef %6, float noundef %37) #12, !range !34
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %109, label %40

40:                                               ; preds = %35
  %41 = icmp eq ptr %3, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %40
  %43 = sext i32 %16 to i64
  %44 = getelementptr inbounds float, ptr %3, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !77
  %46 = call fastcc i32 @_bm_elem_index_get(ptr noundef %13) #12
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %3, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !77
  %50 = fadd float %45, %49
  store float %50, ptr %48, align 4, !tbaa !77
  br label %51

51:                                               ; preds = %42, %40
  %52 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %9) #12
  br label %53

53:                                               ; preds = %51, %65
  %54 = phi i1 [ true, %51 ], [ false, %65 ]
  %55 = phi i64 [ 0, %51 ], [ 1, %65 ]
  %56 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !79
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %5, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @BLI_heap_remove(ptr noundef %4, ptr noundef nonnull %62) #13
  store ptr null, ptr %61, align 8, !tbaa !35
  br label %65

65:                                               ; preds = %53, %59, %64
  br i1 %54, label %53, label %66, !llvm.loop !80

66:                                               ; preds = %65
  %67 = call fastcc i32 @_bm_elem_index_get(ptr noundef %13) #12
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Quadric, ptr %2, i64 %68
  %70 = sext i32 %16 to i64
  %71 = getelementptr inbounds %struct.Quadric, ptr %2, i64 %70
  call void @BLI_quadric_add_qu_qu(ptr noundef %69, ptr noundef %71) #13
  %72 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %72, ptr noundef nonnull %72, ptr noundef nonnull %10, float noundef %37) #13
  %73 = call fastcc float @normalize_v3(ptr noundef nonnull %72) #12
  %74 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !81
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %66, %77
  %78 = phi ptr [ %79, %77 ], [ %75, %66 ]
  call fastcc void @bm_decim_build_edge_cost_single(ptr noundef %78, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  %79 = call fastcc ptr @bmesh_disk_edge_next(ptr noundef %78, ptr noundef %13) #12
  %80 = icmp eq ptr %79, %75
  br i1 %80, label %81, label %77, !llvm.loop !83

81:                                               ; preds = %77, %66
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #14
  %82 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 6, ptr noundef %13) #12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %108, label %84

84:                                               ; preds = %81, %105
  %85 = phi ptr [ %106, %105 ], [ %82, %81 ]
  %86 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !58
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !84
  %94 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !85
  %96 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !59
  %98 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %95, ptr noundef %97) #12, !range !34
  %99 = icmp eq i8 %98, 0
  %100 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %101 = select i1 %99, ptr %92, ptr %100
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !85
  call fastcc void @bm_decim_build_edge_cost_single(ptr noundef %104, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  br label %105

105:                                              ; preds = %84, %91
  %106 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %11) #12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %84, !llvm.loop !86

108:                                              ; preds = %105, %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #14
  br label %110

109:                                              ; preds = %35
  call fastcc void @bm_decim_invalid_edge_cost_single(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %5) #12
  br label %110

110:                                              ; preds = %108, %109, %24, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_triangulate_end(ptr noundef %0) unnamed_addr #0 !PGOFuncName !87 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds ptr, ptr %5, i64 1
  br label %10

10:                                               ; preds = %8, %82
  %11 = phi ptr [ %6, %8 ], [ %12, %82 ]
  %12 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %13 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %82, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8
  %17 = call fastcc i32 @_bm_elem_index_get(ptr noundef %16) #12
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %82, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8
  %21 = call fastcc i32 @_bm_elem_index_get(ptr noundef %20) #12
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !58
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %82

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %82, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef nonnull %11, ptr noundef %47) #12, !range !34
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  %51 = select i1 %49, ptr %44, ptr %50
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef nonnull %11, ptr noundef %60) #12, !range !34
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %64 = select i1 %62, ptr %57, ptr %63
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  %69 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 2
  %70 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  %71 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  %72 = call zeroext i8 @is_quad_convex_v3(ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef nonnull %71) #13
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %75 = load ptr, ptr %3, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  store ptr %77, ptr %5, align 16, !tbaa !35
  %78 = load ptr, ptr %4, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.BMLoop, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !70
  store ptr %80, ptr %9, align 8, !tbaa !35
  %81 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %82

82:                                               ; preds = %15, %41, %74, %23, %29, %35, %19, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %83 = icmp eq ptr %12, null
  br i1 %83, label %84, label %10, !llvm.loop !88

84:                                               ; preds = %82, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !89 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #12
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !94 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !95 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !96
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %17 [
    i8 6, label %16
    i8 2, label %8
    i8 3, label %11
    i8 4, label %14
    i8 5, label %15
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !97
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  br label %18

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !97
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  br label %18

14:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !97
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !92
  br label %18

15:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !97
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !92
  br label %18

16:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !97
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !92
  br label %18

17:                                               ; preds = %4
  unreachable

18:                                               ; preds = %16, %15, %14, %11, %8
  %19 = phi ptr [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %13, %11 ], [ %10, %8 ]
  %20 = phi ptr [ @bmiter__loop_of_vert_begin, %16 ], [ @bmiter__face_of_vert_begin, %15 ], [ @bmiter__edge_of_vert_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %19, ptr %0, align 8, !tbaa !100
  tail call void %20(ptr noundef nonnull %0) #13
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !101 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = load float, ptr %2, align 4, !tbaa !77
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !102 {
  %3 = load float, ptr %0, align 4, !tbaa !77
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @BLI_quadric_from_v3_dist(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_quadric_add_qu_qu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !104 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !77
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !77
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !77
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !77
  %15 = load float, ptr %8, align 4, !tbaa !77
  %16 = load float, ptr %2, align 4, !tbaa !77
  %17 = load float, ptr %1, align 4, !tbaa !77
  %18 = load float, ptr %6, align 4, !tbaa !77
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !77
  %23 = load float, ptr %1, align 4, !tbaa !77
  %24 = load float, ptr %10, align 4, !tbaa !77
  %25 = load float, ptr %4, align 4, !tbaa !77
  %26 = load float, ptr %2, align 4, !tbaa !77
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !105 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret float %2
}

; Function Attrs: optsize
declare void @BLI_quadric_mul(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !106 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !107 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !77
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !77
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !77
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !108 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !77
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_build_edge_cost_single(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !109 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #12
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @BLI_heap_remove(ptr noundef %3, ptr noundef nonnull %10) #13
  br label %13

13:                                               ; preds = %12, %5
  %14 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %0) #12, !range !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %49, label %24

24:                                               ; preds = %16
  %25 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %0) #12
  br label %105

26:                                               ; preds = %13
  %27 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %0) #12, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !58
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !58
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %49, label %45

45:                                               ; preds = %37, %29
  %46 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %0) #12
  br label %105

47:                                               ; preds = %26
  %48 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #12
  br label %105

49:                                               ; preds = %37, %16
  %50 = icmp eq ptr %2, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %53) #12
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %2, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !77
  %58 = fcmp ult float %57, 1.000000e+05
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %61) #12
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr %2, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !77
  %66 = fcmp ult float %65, 1.000000e+05
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %0) #12
  br label %105

69:                                               ; preds = %51, %59, %49
  call fastcc void @bm_decim_calc_target_co(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %1) #12
  %70 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  %72 = call fastcc i32 @_bm_elem_index_get(ptr noundef %71) #12
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %73
  %75 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !65
  %77 = call fastcc i32 @_bm_elem_index_get(ptr noundef %76) #12
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %78
  %80 = call float @BLI_quadric_evaluate(ptr noundef %74, ptr noundef nonnull %6) #13
  br i1 %50, label %81, label %84

81:                                               ; preds = %69
  %82 = call float @BLI_quadric_evaluate(ptr noundef %79, ptr noundef nonnull %6) #13
  %83 = fadd float %80, %82
  br label %100

84:                                               ; preds = %69
  %85 = fadd float %80, 1.000000e+00
  %86 = load ptr, ptr %70, align 8, !tbaa !68
  %87 = call fastcc i32 @_bm_elem_index_get(ptr noundef %86) #12
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %2, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !77
  %91 = call float @BLI_quadric_evaluate(ptr noundef %79, ptr noundef nonnull %6) #13
  %92 = fadd float %91, 1.000000e+00
  %93 = load ptr, ptr %75, align 8, !tbaa !65
  %94 = call fastcc i32 @_bm_elem_index_get(ptr noundef %93) #12
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, ptr %2, i64 %95
  %97 = load float, ptr %96, align 4, !tbaa !77
  %98 = fmul float %92, %97
  %99 = call float @llvm.fmuladd.f32(float %85, float %90, float %98)
  br label %100

100:                                              ; preds = %84, %81
  %101 = phi float [ %83, %81 ], [ %99, %84 ]
  %102 = call float @llvm.fabs.f32(float %101)
  %103 = call ptr @BLI_heap_insert(ptr noundef %3, float noundef %102, ptr noundef nonnull %0) #13
  %104 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %0) #12
  br label %105

105:                                              ; preds = %100, %67, %47, %45, %24
  %106 = phi i32 [ %104, %100 ], [ %68, %67 ], [ %48, %47 ], [ %46, %45 ], [ %25, %24 ]
  %107 = phi ptr [ %103, %100 ], [ null, %67 ], [ null, %47 ], [ null, %45 ], [ null, %24 ]
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds ptr, ptr %4, i64 %108
  store ptr %107, ptr %109, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_calc_target_co(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !111 {
  %4 = alloca %struct.Quadric, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %6) #12
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.Quadric, ptr %2, i64 %8
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %11) #12
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Quadric, ptr %2, i64 %13
  call void @BLI_quadric_add_qu_ququ(ptr noundef nonnull %4, ptr noundef %9, ptr noundef %14) #13
  %15 = call zeroext i8 @BLI_quadric_optimize(ptr noundef nonnull %4, ptr noundef %1, float noundef 0x3F847AE140000000) #13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %10, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %21) #13
  br label %22

22:                                               ; preds = %3, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare float @BLI_quadric_evaluate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: optsize
declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_quadric_add_qu_ququ(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_quadric_optimize(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !112 {
  %3 = load float, ptr %1, align 4, !tbaa !77
  store float %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bm_edge_collapse_is_degenerate_topology(ptr noundef readonly %0) unnamed_addr #10 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %9, %1
  %4 = phi ptr [ %0, %1 ], [ %11, %9 ]
  %5 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = tail call fastcc i32 @bm_edge_is_manifold_or_boundary(ptr noundef %6) #12, !range !114
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %3
  tail call fastcc void @bm_edge_tag_disable(ptr noundef nonnull %4) #12
  %10 = load ptr, ptr %2, align 8, !tbaa !68
  %11 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %4, ptr noundef %10) #12
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %3, !llvm.loop !115

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %21
  %16 = phi ptr [ %23, %21 ], [ %0, %13 ]
  %17 = getelementptr inbounds %struct.BMEdge, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = tail call fastcc i32 @bm_edge_is_manifold_or_boundary(ptr noundef %18) #12, !range !114
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %71, label %21

21:                                               ; preds = %15
  tail call fastcc void @bm_edge_tag_disable(ptr noundef nonnull %16) #12
  %22 = load ptr, ptr %14, align 8, !tbaa !65
  %23 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %16, ptr noundef %22) #12
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %15, !llvm.loop !116

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %28, %25 ], [ %0, %21 ]
  tail call fastcc void @bm_edge_tag_enable(ptr noundef %26) #12
  %27 = load ptr, ptr %2, align 8, !tbaa !68
  %28 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %26, ptr noundef %27) #12
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %25, !llvm.loop !117

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %34) #12
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %36) #12
  %37 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %40) #12
  %41 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %44) #12
  %45 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = icmp eq ptr %32, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %50) #12
  %51 = load ptr, ptr %45, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %53) #12
  %54 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %57) #12
  %58 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %61) #12
  br label %62

62:                                               ; preds = %48, %30
  br label %63

63:                                               ; preds = %62, %67
  %64 = phi ptr [ %69, %67 ], [ %0, %62 ]
  %65 = tail call fastcc zeroext i8 @bm_edge_tag_test(ptr noundef %64) #12, !range !34
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load ptr, ptr %14, align 8, !tbaa !65
  %69 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %64, ptr noundef %68) #12
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %63, !llvm.loop !118

71:                                               ; preds = %3, %15, %67, %63
  %72 = phi i8 [ 0, %67 ], [ 1, %63 ], [ 1, %15 ], [ 1, %3 ]
  ret i8 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_decim_invalid_edge_cost_single(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !119 {
  %4 = tail call ptr @BLI_heap_insert(ptr noundef %1, float noundef 0x47EFFFFFE0000000, ptr noundef %0) #13
  %5 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #12
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  store ptr %4, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_edge_collapse_is_degenerate_flip(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %9 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %2, %46
  %11 = phi i1 [ true, %2 ], [ false, %46 ]
  %12 = phi i64 [ 0, %2 ], [ 1, %46 ]
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 6, ptr noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %43
  %20 = phi ptr [ %15, %17 ], [ %44, %43 ]
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %34 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %33, ptr noundef nonnull %38) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef nonnull %18) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef %1) #12
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8) #12
  %39 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #12
  %40 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #12
  %41 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %42 = fcmp ugt float %41, 0x3E80000000000000
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  br i1 %42, label %43, label %47

43:                                               ; preds = %19, %24, %30
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %19, !llvm.loop !121

46:                                               ; preds = %43, %10
  br i1 %11, label %10, label %47, !llvm.loop !122

47:                                               ; preds = %46, %30
  %48 = phi i8 [ 1, %30 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !123 {
  %3 = load float, ptr %0, align 4, !tbaa !77
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3E80000000000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3E80000000000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !77
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !77
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3E80000000000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: optsize
declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_edge_collapse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !124 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %1, ptr noundef %2) #12
  %10 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %1) #12, !range !34
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %94, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %13 = call zeroext i8 @BM_edge_loop_pair(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %18, ptr noundef %2) #12, !range !34
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %22 = select i1 %20, ptr %21, ptr %15
  %23 = select i1 %20, ptr %15, ptr %21
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = load ptr, ptr %22, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %34, ptr noundef %2) #12, !range !34
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %38 = select i1 %36, ptr %31, ptr %37
  %39 = select i1 %36, ptr %37, ptr %31
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  %43 = load ptr, ptr %38, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !85
  %46 = icmp eq ptr %29, %42
  %47 = icmp eq ptr %29, %45
  %48 = select i1 %46, i1 true, i1 %47
  %49 = icmp eq ptr %26, %42
  %50 = select i1 %48, i1 true, i1 %49
  %51 = icmp eq ptr %26, %45
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %92, label %53

53:                                               ; preds = %12
  %54 = call fastcc i32 @_bm_elem_index_get(ptr noundef %29) #12
  store i32 %54, ptr %3, align 4, !tbaa !79
  %55 = call fastcc i32 @_bm_elem_index_get(ptr noundef %42) #12
  %56 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %55, ptr %56, align 4, !tbaa !79
  %57 = and i32 %4, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %9, ptr noundef %2, ptr noundef %9, float noundef %5) #13
  br label %60

60:                                               ; preds = %59, %53
  %61 = and i32 %4, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %26, ptr noundef %29, ptr noundef %26, float noundef %5) #13
  call void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %45, ptr noundef %42, ptr noundef %45, float noundef %5) #13
  br label %64

64:                                               ; preds = %63, %60
  %65 = and i32 %4, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !69
  call fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %69, ptr noundef %2, float noundef %5) #12
  %70 = load ptr, ptr %68, align 8, !tbaa !69
  %71 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !60
  call fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %72, ptr noundef %2, float noundef %5) #12
  br label %73

73:                                               ; preds = %67, %64
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %1) #13
  %74 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !125
  %76 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  %77 = load i8, ptr %76, align 1, !tbaa !125
  %78 = or i8 %77, %75
  store i8 %78, ptr %76, align 1, !tbaa !125
  %79 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %2, ptr noundef %9) #13
  %80 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %81 = load i8, ptr %80, align 1, !tbaa !126
  %82 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !126
  %84 = or i8 %83, %81
  store i8 %84, ptr %82, align 1, !tbaa !126
  %85 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !126
  %87 = getelementptr inbounds %struct.BMHeader, ptr %45, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !126
  %89 = or i8 %88, %86
  store i8 %89, ptr %87, align 1, !tbaa !126
  %90 = call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %29, ptr noundef %26) #13
  %91 = call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %42, ptr noundef %45) #13
  br label %92

92:                                               ; preds = %12, %73
  %93 = phi i8 [ 1, %73 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %142

94:                                               ; preds = %6
  %95 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %1) #12, !range !34
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %142, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !69
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !84
  %102 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !85
  %104 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %103, ptr noundef %2) #12, !range !34
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 6
  %107 = select i1 %105, ptr %100, ptr %106
  %108 = select i1 %105, ptr %106, ptr %100
  %109 = load ptr, ptr %108, align 8, !tbaa !35
  %110 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !85
  %112 = load ptr, ptr %107, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.BMLoop, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !85
  %115 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %111) #12
  store i32 %115, ptr %3, align 4, !tbaa !79
  %116 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 -1, ptr %116, align 4, !tbaa !79
  %117 = and i32 %4, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %97
  tail call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %9, ptr noundef %2, ptr noundef %9, float noundef %5) #13
  br label %120

120:                                              ; preds = %119, %97
  %121 = and i32 %4, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %114, ptr noundef %111, ptr noundef %114, float noundef %5) #13
  br label %124

124:                                              ; preds = %123, %120
  %125 = and i32 %4, 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %98, align 8, !tbaa !69
  tail call fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %128, ptr noundef %2, float noundef %5) #12
  br label %129

129:                                              ; preds = %127, %124
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %1) #13
  %130 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %131 = load i8, ptr %130, align 1, !tbaa !125
  %132 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  %133 = load i8, ptr %132, align 1, !tbaa !125
  %134 = or i8 %133, %131
  store i8 %134, ptr %132, align 1, !tbaa !125
  %135 = tail call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %2, ptr noundef %9) #13
  %136 = getelementptr inbounds %struct.BMHeader, ptr %111, i64 0, i32 3
  %137 = load i8, ptr %136, align 1, !tbaa !126
  %138 = getelementptr inbounds %struct.BMHeader, ptr %114, i64 0, i32 3
  %139 = load i8, ptr %138, align 1, !tbaa !126
  %140 = or i8 %139, %137
  store i8 %140, ptr %138, align 1, !tbaa !126
  %141 = tail call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %111, ptr noundef %114) #13
  br label %142

142:                                              ; preds = %94, %129, %92
  %143 = phi i8 [ %93, %92 ], [ 1, %129 ], [ 0, %94 ]
  ret i8 %143
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !127 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @bm_edge_is_manifold_or_boundary(ptr noundef readonly %0) unnamed_addr #7 !PGOFuncName !130 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, %0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_edge_tag_disable(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !131 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %11) #12
  %12 = load ptr, ptr %6, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %18) #12
  br label %19

19:                                               ; preds = %9, %16, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_edge_tag_enable(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !132 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %11) #12
  %12 = load ptr, ptr %6, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %18) #12
  br label %19

19:                                               ; preds = %9, %16, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !133 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !134
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bm_edge_tag_test(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %17) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %13, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26) #12
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %11, %20, %24, %15, %6, %1
  %31 = phi i8 [ 1, %6 ], [ 1, %1 ], [ 0, %11 ], [ 1, %15 ], [ 0, %20 ], [ %29, %24 ]
  ret i8 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !134
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !134
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_interp_from_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_interp_from_edges(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, float noundef %3) unnamed_addr #0 !PGOFuncName !139 {
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x ptr], align 16
  %8 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %9) #12, !range !34
  %11 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, %2
  %14 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = select i1 %13, ptr %15, ptr %1
  %17 = select i1 %13, ptr %1, ptr %15
  %18 = icmp eq i8 %10, 0
  %19 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  %20 = fsub float 1.000000e+00, %3
  %21 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %24 = getelementptr inbounds ptr, ptr %7, i64 1
  br label %25

25:                                               ; preds = %4, %88
  %26 = phi i1 [ true, %4 ], [ false, %88 ]
  br i1 %18, label %31, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %19, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  br label %31

31:                                               ; preds = %25, %27
  %32 = phi ptr [ %30, %27 ], [ null, %25 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %33 = load ptr, ptr %8, align 8, !tbaa !85
  store ptr %33, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  br i1 %26, label %35, label %34

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %31, %34
  %36 = phi float [ %20, %34 ], [ %3, %31 ]
  %37 = phi float [ %3, %34 ], [ %20, %31 ]
  %38 = phi ptr [ %16, %34 ], [ %17, %31 ]
  %39 = phi ptr [ %17, %34 ], [ %16, %31 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !140
  %41 = load ptr, ptr %38, align 8, !tbaa !140
  store float %36, ptr %6, align 4, !tbaa !77
  store float %37, ptr %21, align 4, !tbaa !77
  %42 = call ptr @BM_vert_step_fan_loop(ptr noundef nonnull %38, ptr noundef nonnull %5) #13
  %43 = icmp ne ptr %42, %38
  %44 = icmp ne ptr %42, null
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %35
  %47 = icmp eq ptr %32, null
  br label %53

48:                                               ; preds = %83, %59
  %49 = call ptr @BM_vert_step_fan_loop(ptr noundef %54, ptr noundef nonnull %5) #13
  %50 = icmp ne ptr %49, %38
  %51 = icmp ne ptr %49, null
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %46, %48
  %54 = phi ptr [ %42, %46 ], [ %49, %48 ]
  br i1 %47, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = icmp eq ptr %32, %57
  br i1 %58, label %88, label %59

59:                                               ; preds = %55, %53
  %60 = load i32, ptr %23, align 4, !tbaa !141
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %48

62:                                               ; preds = %59, %83
  %63 = phi i64 [ %84, %83 ], [ 0, %59 ]
  %64 = trunc i64 %63 to i32
  %65 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %22, i32 noundef %64) #13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %22, align 8, !tbaa !142
  %69 = getelementptr inbounds %struct.CustomDataLayer, ptr %68, i64 %63
  %70 = getelementptr inbounds %struct.CustomDataLayer, ptr %68, i64 %63, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !143
  %72 = load i32, ptr %69, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, ptr %41, i64 %73
  store ptr %74, ptr %7, align 16, !tbaa !35
  %75 = getelementptr inbounds i8, ptr %40, i64 %73
  store ptr %75, ptr %24, align 8, !tbaa !35
  %76 = load ptr, ptr %54, align 8, !tbaa !140
  %77 = getelementptr inbounds i8, ptr %76, i64 %73
  %78 = call zeroext i8 @CustomData_data_equals(i32 noundef %72, ptr noundef %74, ptr noundef %77) #13
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %67
  %81 = load ptr, ptr %54, align 8, !tbaa !140
  call void @CustomData_bmesh_interp_n(ptr noundef nonnull %22, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null, i32 noundef 2, ptr noundef %81, i32 noundef %64) #13
  br label %82

82:                                               ; preds = %80, %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %83

83:                                               ; preds = %62, %82
  %84 = add nuw nsw i64 %63, 1
  %85 = load i32, ptr %23, align 4, !tbaa !141
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %62, label %48, !llvm.loop !146

88:                                               ; preds = %48, %55, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br i1 %26, label %25, label %89, !llvm.loop !147

89:                                               ; preds = %88
  ret void
}

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_step_fan_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_interp_n(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_quad_convex_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_faces_join(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

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
!34 = !{i8 0, i8 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 0}
!40 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !36, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !43, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !44, i64 960, !36, i64 976, !44, i64 984, !36, i64 1000}
!41 = !{!"int", !37, i64 0}
!42 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!43 = !{!"short", !37, i64 0}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!40, !41, i64 4}
!46 = !{!40, !41, i64 12}
!47 = !{!40, !37, i64 28}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"bmesh_decimate_collapse.c:bm_decim_triangulate_begin"}
!51 = !{!52, !36, i64 24}
!52 = !{!"BMFace", !53, i64 0, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36, !43, i64 48}
!53 = !{!"BMHeader", !36, i64 0, !41, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!54 = !{!55, !36, i64 56}
!55 = !{!"BMLoop", !53, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
!58 = !{!52, !41, i64 32}
!59 = !{!55, !36, i64 16}
!60 = !{!55, !36, i64 40}
!61 = distinct !{!61, !49}
!62 = !{!"bmesh_decimate_collapse.c:bm_decim_build_quadrics"}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49}
!65 = !{!66, !36, i64 32}
!66 = !{!"BMEdge", !53, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !67, i64 48, !67, i64 64}
!67 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!68 = !{!66, !36, i64 24}
!69 = !{!66, !36, i64 40}
!70 = !{!55, !36, i64 32}
!71 = distinct !{!71, !49}
!72 = !{!"bmesh_decimate_collapse.c:bm_decim_build_edge_cost"}
!73 = distinct !{!73, !49}
!74 = !{!"bmesh_decimate_collapse.c:_bm_elem_index_get"}
!75 = !{!53, !41, i64 8}
!76 = !{!"bmesh_decimate_collapse.c:bm_decim_edge_collapse"}
!77 = !{!78, !78, i64 0}
!78 = !{!"float", !37, i64 0}
!79 = !{!41, !41, i64 0}
!80 = distinct !{!80, !49}
!81 = !{!82, !36, i64 48}
!82 = !{!"BMVert", !53, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!83 = distinct !{!83, !49}
!84 = !{!55, !36, i64 64}
!85 = !{!55, !36, i64 24}
!86 = distinct !{!86, !49}
!87 = !{!"bmesh_decimate_collapse.c:bm_decim_triangulate_end"}
!88 = distinct !{!88, !49}
!89 = !{!"bmesh_decimate_collapse.c:BM_iter_new"}
!90 = !{!"bmesh_decimate_collapse.c:_bm_elem_index_set"}
!91 = !{!"bmesh_decimate_collapse.c:BM_iter_step"}
!92 = !{!93, !36, i64 48}
!93 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60}
!94 = !{!"bmesh_decimate_collapse.c:len_squared_v3v3"}
!95 = !{!"bmesh_decimate_collapse.c:BM_iter_init"}
!96 = !{!93, !37, i64 60}
!97 = !{!93, !36, i64 40}
!98 = !{!40, !36, i64 40}
!99 = !{!40, !36, i64 56}
!100 = !{!37, !37, i64 0}
!101 = !{!"bmesh_decimate_collapse.c:sub_v3_v3v3"}
!102 = !{!"bmesh_decimate_collapse.c:dot_v3v3"}
!103 = !{!"bmesh_decimate_collapse.c:BM_edge_is_boundary"}
!104 = !{!"bmesh_decimate_collapse.c:cross_v3_v3v3"}
!105 = !{!"bmesh_decimate_collapse.c:normalize_v3"}
!106 = !{!"bmesh_decimate_collapse.c:normalize_v3_v3"}
!107 = !{!"bmesh_decimate_collapse.c:mul_v3_v3fl"}
!108 = !{!"bmesh_decimate_collapse.c:zero_v3"}
!109 = !{!"bmesh_decimate_collapse.c:bm_decim_build_edge_cost_single"}
!110 = !{!"bmesh_decimate_collapse.c:BM_edge_is_manifold"}
!111 = !{!"bmesh_decimate_collapse.c:bm_decim_calc_target_co"}
!112 = !{!"bmesh_decimate_collapse.c:copy_v3_v3"}
!113 = !{!"bmesh_decimate_collapse.c:bm_edge_collapse_is_degenerate_topology"}
!114 = !{i32 0, i32 2}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !49}
!118 = distinct !{!118, !49}
!119 = !{!"bmesh_decimate_collapse.c:bm_decim_invalid_edge_cost_single"}
!120 = !{!"bmesh_decimate_collapse.c:bm_edge_collapse_is_degenerate_flip"}
!121 = distinct !{!121, !49}
!122 = distinct !{!122, !49}
!123 = !{!"bmesh_decimate_collapse.c:compare_v3v3"}
!124 = !{!"bmesh_decimate_collapse.c:bm_edge_collapse"}
!125 = !{!82, !37, i64 13}
!126 = !{!66, !37, i64 13}
!127 = !{!"bmesh_decimate_collapse.c:bmesh_disk_edge_next"}
!128 = !{!66, !36, i64 48}
!129 = !{!"bmesh_decimate_collapse.c:BM_vert_in_edge"}
!130 = !{!"bmesh_decimate_collapse.c:bm_edge_is_manifold_or_boundary"}
!131 = !{!"bmesh_decimate_collapse.c:bm_edge_tag_disable"}
!132 = !{!"bmesh_decimate_collapse.c:bm_edge_tag_enable"}
!133 = !{!"bmesh_decimate_collapse.c:_bm_elem_flag_disable"}
!134 = !{!53, !37, i64 13}
!135 = !{!"bmesh_decimate_collapse.c:bm_edge_tag_test"}
!136 = !{!"bmesh_decimate_collapse.c:_bm_elem_flag_enable"}
!137 = !{!"bmesh_decimate_collapse.c:_bm_elem_flag_test"}
!138 = !{!"bmesh_decimate_collapse.c:BM_edge_other_vert"}
!139 = !{!"bmesh_decimate_collapse.c:bm_edge_collapse_loop_customdata"}
!140 = !{!55, !36, i64 0}
!141 = !{!40, !41, i64 716}
!142 = !{!40, !36, i64 544}
!143 = !{!144, !41, i64 4}
!144 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96}
!145 = !{!144, !41, i64 0}
!146 = distinct !{!146, !49}
!147 = distinct !{!147, !49}
