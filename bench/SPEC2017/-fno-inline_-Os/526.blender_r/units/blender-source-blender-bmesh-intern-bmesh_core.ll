; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_core.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.SmallHash = type { i32, i32, i32, ptr, [131 x %struct.SmallHashEntry] }
%struct.SmallHashEntry = type { i64, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"blender/source/blender/bmesh/intern/bmesh_core.c\00", align 1
@__func__.BM_faces_join = private unnamed_addr constant [14 x i8] c"BM_faces_join\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Input faces do not form a contiguous manifold region\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"BLI_array.edges\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"BLI_array.deledges\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"BLI_array.delverts\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Invalid boundary region to join faces\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.bmesh_jfke = private unnamed_addr constant [11 x i8] c"bmesh_jfke\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"edok != 0\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bmesh_vert_separate = private unnamed_addr constant [20 x i8] c"bmesh_vert_separate\00", align 1
@switch.table.BM_iter_init = private unnamed_addr constant [3 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin], align 8
@switch.table.BM_iter_init.9 = private unnamed_addr constant [3 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BM_vert_create(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @BLI_mempool_alloc(ptr noundef %6) #13
  store ptr null, ptr %7, align 8, !tbaa !43
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 2
  store i8 1, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 3
  store i8 0, ptr %9, align 1, !tbaa !47
  %10 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 4
  store i8 0, ptr %10, align 2, !tbaa !48
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call ptr @BLI_mempool_calloc(ptr noundef nonnull %12) #13
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi ptr [ %15, %14 ], [ null, %4 ]
  %18 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !50
  %19 = icmp eq ptr %1, null
  %20 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %1) #14
  br label %23

22:                                               ; preds = %16
  tail call fastcc void @zero_v3(ptr noundef nonnull %20) #14
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3
  tail call fastcc void @zero_v3(ptr noundef nonnull %24) #14
  %25 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  store ptr null, ptr %25, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 4, !tbaa !52
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 4, !tbaa !52
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %30 = load i8, ptr %29, align 1, !tbaa !53
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 1, !tbaa !53
  %32 = load i32, ptr %0, align 8, !tbaa !54
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %0, align 8, !tbaa !54
  %34 = and i32 %3, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = icmp eq ptr %2, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  tail call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %7) #13
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %40 = load ptr, ptr %7, align 8, !tbaa !43
  %41 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %39, ptr noundef %40, i32 noundef 27) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  store i32 -1, ptr %41, align 4, !tbaa !55
  br label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %45, ptr noundef nonnull %7) #13
  br label %46

46:                                               ; preds = %38, %43, %44, %23
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 -1, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !58 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !61 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !59
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @CustomData_bmesh_set_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_edge_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @BM_edge_exists(ptr noundef %1, ptr noundef %2) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = tail call ptr @BLI_mempool_alloc(ptr noundef %13) #13
  store ptr null, ptr %14, align 8, !tbaa !63
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 2
  store i8 2, ptr %15, align 4, !tbaa !66
  %16 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 3
  store i8 40, ptr %16, align 1, !tbaa !67
  %17 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 4
  store i8 0, ptr %17, align 2, !tbaa !68
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = tail call ptr @BLI_mempool_calloc(ptr noundef nonnull %19) #13
  br label %23

23:                                               ; preds = %11, %21
  %24 = phi ptr [ %22, %21 ], [ null, %11 ]
  %25 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  store ptr %1, ptr %26, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  store ptr %2, ptr %27, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  tail call void @bmesh_disk_edge_append(ptr noundef nonnull %14, ptr noundef %1) #13
  %29 = load ptr, ptr %27, align 8, !tbaa !72
  tail call void @bmesh_disk_edge_append(ptr noundef nonnull %14, ptr noundef %29) #13
  %30 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %31 = load i8, ptr %30, align 4, !tbaa !52
  %32 = or i8 %31, 2
  store i8 %32, ptr %30, align 4, !tbaa !52
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %34 = load i8, ptr %33, align 1, !tbaa !53
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 1, !tbaa !53
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !73
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !73
  %39 = and i32 %4, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = icmp eq ptr %3, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  tail call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %14) #13
  br label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %45, ptr noundef nonnull %14) #13
  br label %46

46:                                               ; preds = %23, %44, %43, %8
  %47 = phi ptr [ %9, %8 ], [ %14, %43 ], [ %14, %44 ], [ %14, %23 ]
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @bmesh_disk_edge_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BM_face_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %23, %5
  %16 = phi i64 [ %26, %23 ], [ 0, %5 ]
  %17 = phi ptr [ %28, %23 ], [ %13, %5 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  br i1 %14, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %22 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %19, i32 noundef 0) #14
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %22, %20 ], [ %19, %15 ]
  %25 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %24, ptr %25, align 8
  %26 = add nuw i64 %16, 1
  %27 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %30, label %15, !llvm.loop !80

30:                                               ; preds = %23
  %31 = load ptr, ptr %12, align 8, !tbaa !76
  %32 = icmp eq i8 %4, 0
  br label %33

33:                                               ; preds = %54, %30
  %34 = phi i64 [ %57, %54 ], [ 0, %30 ]
  %35 = phi ptr [ %59, %54 ], [ %31, %30 ]
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !82
  br i1 %32, label %54, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = getelementptr inbounds ptr, ptr %10, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !83
  %43 = icmp eq ptr %40, %42
  %44 = load i32, ptr %6, align 8, !tbaa !74
  %45 = trunc i64 %34 to i32
  %46 = add i32 %45, 1
  %47 = srem i32 %46, %44
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %10, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = select i1 %43, ptr %40, ptr %50
  %52 = select i1 %43, ptr %50, ptr %42
  %53 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %51, ptr noundef %52, ptr noundef nonnull %37, i32 noundef 0) #14
  br label %54

54:                                               ; preds = %33, %38
  %55 = phi ptr [ %53, %38 ], [ %37, %33 ]
  %56 = getelementptr inbounds ptr, ptr %11, i64 %34
  store ptr %55, ptr %56, align 8, !tbaa !83
  %57 = add nuw i64 %34, 1
  %58 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !79
  %60 = icmp eq ptr %59, %31
  br i1 %60, label %61, label %33, !llvm.loop !84

61:                                               ; preds = %54
  %62 = load i32, ptr %6, align 8, !tbaa !74
  %63 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %62, ptr noundef null, i32 noundef 4) #14
  call void @BM_elem_attrs_copy(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef %63) #13
  %64 = load ptr, ptr %12, align 8, !tbaa !76
  %65 = getelementptr inbounds %struct.BMFace, ptr %63, i64 0, i32 2
  br label %66

66:                                               ; preds = %66, %61
  %67 = phi ptr [ %65, %61 ], [ %70, %66 ]
  %68 = phi ptr [ %64, %61 ], [ %72, %66 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !83
  call void @BM_elem_attrs_copy(ptr noundef %1, ptr noundef %0, ptr noundef %68, ptr noundef %69) #13
  %70 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 6
  %71 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !79
  %73 = icmp eq ptr %72, %64
  br i1 %73, label %74, label %66, !llvm.loop !85

74:                                               ; preds = %66
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !83
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = and i32 %5, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = call zeroext i8 @BM_face_exists(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %7) #13
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %7, align 8
  br i1 %14, label %16, label %61

16:                                               ; preds = %12, %9
  %17 = call fastcc ptr @bm_face_create__internal(ptr noundef %0) #14
  store ptr %17, ptr %7, align 8, !tbaa !83
  %18 = load ptr, ptr %1, align 8, !tbaa !83
  %19 = load ptr, ptr %2, align 8, !tbaa !83
  %20 = call fastcc ptr @bm_face_boundary_add(ptr noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %5) #14
  %21 = load ptr, ptr %1, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !77
  %23 = load ptr, ptr %2, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !82
  %25 = icmp sgt i32 %3, 1
  br i1 %25, label %26, label %46

26:                                               ; preds = %16
  %27 = zext nneg i32 %3 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 1, %26 ], [ %44, %28 ]
  %30 = phi ptr [ %20, %26 ], [ %38, %28 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = getelementptr inbounds ptr, ptr %2, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = load ptr, ptr %7, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = call fastcc ptr @bm_loop_create(ptr noundef %0, ptr noundef %32, ptr noundef %34, ptr noundef %35, ptr noundef %37, i32 noundef %5) #14
  %39 = load ptr, ptr %7, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !87
  %41 = load ptr, ptr %33, align 8, !tbaa !83
  call void @bmesh_radial_append(ptr noundef %41, ptr noundef %38) #13
  %42 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 7
  store ptr %30, ptr %42, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  store ptr %38, ptr %43, align 8, !tbaa !79
  %44 = add nuw nsw i64 %29, 1
  %45 = icmp eq i64 %44, %27
  br i1 %45, label %46, label %28, !llvm.loop !89

46:                                               ; preds = %28, %16
  %47 = phi ptr [ %20, %16 ], [ %38, %28 ]
  %48 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  store ptr %47, ptr %48, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  store ptr %20, ptr %49, align 8, !tbaa !79
  %50 = load ptr, ptr %7, align 8, !tbaa !83
  %51 = getelementptr inbounds %struct.BMFace, ptr %50, i64 0, i32 3
  store i32 %3, ptr %51, align 8, !tbaa !74
  %52 = and i32 %5, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = icmp eq ptr %4, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %50) #13
  br label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  call void @CustomData_bmesh_set_default(ptr noundef nonnull %58, ptr noundef nonnull %50) #13
  br label %59

59:                                               ; preds = %56, %57, %46
  %60 = load ptr, ptr %7, align 8, !tbaa !83
  br label %61

61:                                               ; preds = %6, %12, %59
  %62 = phi ptr [ %60, %59 ], [ %15, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret ptr %62
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_face_create__internal(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call ptr @BLI_mempool_alloc(ptr noundef %3) #13
  store ptr null, ptr %4, align 8, !tbaa !92
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %4) #14
  %5 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 2
  store i8 8, ptr %5, align 4, !tbaa !93
  %6 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 3
  store i8 0, ptr %6, align 1, !tbaa !94
  %7 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 4
  store i8 0, ptr %7, align 2, !tbaa !95
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call ptr @BLI_mempool_calloc(ptr noundef nonnull %9) #13
  br label %13

13:                                               ; preds = %1, %11
  %14 = phi ptr [ %12, %11 ], [ null, %1 ]
  %15 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 3
  store i32 0, ptr %17, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 4
  tail call fastcc void @zero_v3(ptr noundef nonnull %18) #14
  %19 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 5
  store i16 0, ptr %19, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %21 = load i8, ptr %20, align 4, !tbaa !52
  %22 = or i8 %21, 8
  store i8 %22, ptr %20, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %24 = load i8, ptr %23, align 1, !tbaa !53
  %25 = or i8 %24, 8
  store i8 %25, ptr %23, align 1, !tbaa !53
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !99
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !99
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_face_boundary_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !100 {
  %6 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = tail call fastcc ptr @bm_loop_create(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %7, i32 noundef %4) #14
  tail call void @bmesh_radial_append(ptr noundef %3, ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !87
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_loop_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !101 {
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = tail call ptr @BLI_mempool_alloc(ptr noundef %8) #13
  store ptr null, ptr %9, align 8, !tbaa !103
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %9) #14
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  store i8 0, ptr %10, align 1, !tbaa !104
  %11 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 2
  store i8 4, ptr %11, align 4, !tbaa !105
  %12 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 4
  store i8 0, ptr %12, align 2, !tbaa !106
  %13 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  store ptr %3, ptr %15, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %18 = load i8, ptr %17, align 4, !tbaa !52
  %19 = or i8 %18, 4
  store i8 %19, ptr %17, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !107
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !107
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = icmp eq ptr %4, null
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br i1 %26, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8, !tbaa !103
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %27, ptr noundef nonnull %27, ptr noundef %29, ptr noundef nonnull %9) #13
  br label %31

30:                                               ; preds = %25
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %27, ptr noundef nonnull %9) #13
  br label %31

31:                                               ; preds = %28, %30, %6
  ret ptr %9
}

; Function Attrs: optsize
declare void @bmesh_radial_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_create_verts(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = sext i32 %2 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = add nsw i32 %2, -1
  %11 = icmp eq i8 %5, 0
  %12 = icmp sgt i32 %2, 0
  br i1 %11, label %16, label %13

13:                                               ; preds = %6
  br i1 %12, label %14, label %47

14:                                               ; preds = %13
  %15 = zext nneg i32 %2 to i64
  br label %19

16:                                               ; preds = %6
  br i1 %12, label %17, label %47

17:                                               ; preds = %16
  %18 = zext nneg i32 %2 to i64
  br label %36

19:                                               ; preds = %14, %19
  %20 = phi i64 [ 0, %14 ], [ %29, %19 ]
  %21 = phi i32 [ %10, %14 ], [ %30, %19 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = getelementptr inbounds ptr, ptr %1, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %24, ptr noundef %26, ptr noundef null, i32 noundef 2) #14
  %28 = getelementptr inbounds ptr, ptr %9, i64 %22
  store ptr %27, ptr %28, align 8, !tbaa !83
  %29 = add nuw nsw i64 %20, 1
  %30 = trunc i64 %20 to i32
  %31 = icmp eq i64 %29, %15
  br i1 %31, label %47, label %19, !llvm.loop !108

32:                                               ; preds = %36
  %33 = add nuw nsw i64 %37, 1
  %34 = trunc i64 %37 to i32
  %35 = icmp eq i64 %33, %18
  br i1 %35, label %47, label %36, !llvm.loop !109

36:                                               ; preds = %17, %32
  %37 = phi i64 [ 0, %17 ], [ %33, %32 ]
  %38 = phi i32 [ %10, %17 ], [ %34, %32 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !83
  %42 = getelementptr inbounds ptr, ptr %1, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = tail call ptr @BM_edge_exists(ptr noundef %41, ptr noundef %43) #13
  %45 = getelementptr inbounds ptr, ptr %9, i64 %39
  store ptr %44, ptr %45, align 8, !tbaa !83
  %46 = icmp eq ptr %44, null
  br i1 %46, label %49, label %32

47:                                               ; preds = %19, %32, %13, %16
  %48 = call ptr @BM_face_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %2, ptr noundef %3, i32 noundef %4) #14
  br label %49

49:                                               ; preds = %36, %47
  %50 = phi ptr [ %48, %47 ], [ null, %36 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_edges_kill(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !74
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi i64 [ %15, %10 ], [ 0, %2 ]
  %12 = phi ptr [ %18, %10 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = add nuw i64 %11, 1
  %16 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %14, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !110

20:                                               ; preds = %10
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %20 ]
  %24 = getelementptr inbounds ptr, ptr %7, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef %25) #14
  %26 = add nuw nsw i64 %23, 1
  %27 = load i32, ptr %3, align 8, !tbaa !74
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %22, label %30, !llvm.loop !111

30:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edge_kill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @bmesh_disk_edge_remove(ptr noundef %1, ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  tail call void @bmesh_disk_edge_remove(ptr noundef %1, ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2, %20
  %11 = phi ptr [ %13, %20 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  tail call void @BM_face_kill(ptr noundef %0, ptr noundef %15) #14
  br label %24

20:                                               ; preds = %10
  tail call void @BM_face_kill(ptr noundef %0, ptr noundef %17) #14
  %21 = icmp eq ptr %11, %13
  %22 = icmp eq ptr %13, %8
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %10, !llvm.loop !113

24:                                               ; preds = %20, %19, %2
  tail call fastcc void @bm_kill_only_edge(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_verts_kill(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !74
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi i64 [ %15, %10 ], [ 0, %2 ]
  %12 = phi ptr [ %18, %10 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = add nuw i64 %11, 1
  %16 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %14, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !114

20:                                               ; preds = %10
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %20 ]
  %24 = getelementptr inbounds ptr, ptr %7, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef %25) #14
  %26 = add nuw nsw i64 %23, 1
  %27 = load i32, ptr %3, align 8, !tbaa !74
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %22, label %30, !llvm.loop !115

30:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_vert_kill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %8 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %7, ptr noundef nonnull %1) #14
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef %7) #14
  %9 = load ptr, ptr %3, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !116

11:                                               ; preds = %6, %2
  tail call fastcc void @bm_kill_only_vert(ptr noundef %0, ptr noundef nonnull %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_kill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  tail call void @bmesh_radial_loop_remove(ptr noundef %7, ptr noundef %11) #13
  tail call fastcc void @bm_kill_only_loop(ptr noundef %0, ptr noundef %7) #14
  %12 = icmp eq ptr %9, %4
  br i1 %12, label %13, label %6, !llvm.loop !117

13:                                               ; preds = %6, %2
  tail call fastcc void @bm_kill_only_face(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @bmesh_radial_loop_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_kill_only_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !107
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 4, !tbaa !52
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 4, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !103
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %12, ptr noundef nonnull %1) #13
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  tail call void @BLI_mempool_free(ptr noundef %15, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_kill_only_face(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !120
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !99
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 4, !tbaa !52
  %13 = or i8 %12, 8
  store i8 %13, ptr %11, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !53
  %16 = or i8 %15, 8
  store i8 %16, ptr %14, align 1, !tbaa !53
  %17 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %0, ptr noundef %1) #13
  %18 = load ptr, ptr %1, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %21, ptr noundef nonnull %1) #13
  br label %22

22:                                               ; preds = %20, %7
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  tail call void @BLI_mempool_free(ptr noundef nonnull %24, ptr noundef %28) #13
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  tail call void @BLI_mempool_free(ptr noundef %31, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare void @bmesh_disk_edge_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_kill_only_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !121 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !73
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 4, !tbaa !73
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 4, !tbaa !52
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %10 = load i8, ptr %9, align 1, !tbaa !53
  %11 = or i8 %10, 2
  store i8 %11, ptr %9, align 1, !tbaa !53
  %12 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %0, ptr noundef %1) #13
  %13 = load ptr, ptr %1, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %16, ptr noundef nonnull %1) #13
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  tail call void @BLI_mempool_free(ptr noundef nonnull %19, ptr noundef %23) #13
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  tail call void @BLI_mempool_free(ptr noundef %26, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_kill_only_vert(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !124 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 4, !tbaa !52
  %7 = or i8 %6, 1
  store i8 %7, ptr %5, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !53
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 1, !tbaa !53
  %11 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %0, ptr noundef %1) #13
  %12 = load ptr, ptr %1, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %15, ptr noundef nonnull %1) #13
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  tail call void @BLI_mempool_free(ptr noundef nonnull %18, ptr noundef %22) #13
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  tail call void @BLI_mempool_free(ptr noundef %25, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @bm_loop_reverse_loop(ptr noundef %0, ptr noundef %1) #14
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_reverse_loop(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 19) #13
  %9 = sext i32 %6 to i64
  %10 = shl nsw i64 %9, 3
  %11 = alloca i8, i64 %10, align 16
  %12 = icmp sgt i32 %6, 0
  br i1 %12, label %13, label %133

13:                                               ; preds = %2
  %14 = zext nneg i32 %6 to i64
  br label %18

15:                                               ; preds = %18
  br i1 %12, label %16, label %133

16:                                               ; preds = %15
  %17 = icmp eq i8 %8, 0
  br label %28

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %24, %18 ]
  %20 = phi ptr [ %4, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = getelementptr inbounds ptr, ptr %11, i64 %19
  store ptr %22, ptr %23, align 8, !tbaa !83
  tail call void @bmesh_radial_loop_remove(ptr noundef %20, ptr noundef %22) #13
  %24 = add nuw nsw i64 %19, 1
  %25 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq i64 %24, %14
  br i1 %27, label %15, label %18, !llvm.loop !126

28:                                               ; preds = %16, %83
  %29 = phi ptr [ %4, %16 ], [ %32, %83 ]
  %30 = phi i32 [ 0, %16 ], [ %84, %83 ]
  %31 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  store ptr %34, ptr %31, align 8, !tbaa !79
  store ptr %32, ptr %33, align 8, !tbaa !88
  br i1 %17, label %83, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %32, align 8, !tbaa !103
  %37 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %7, ptr noundef %36, i32 noundef 19) #13
  %38 = load i32, ptr %37, align 8, !tbaa !127
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.MDisps, ptr %37, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !129
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %40
  %45 = sitofp i32 %38 to double
  %46 = tail call double @sqrt(double noundef %45) #13
  %47 = fptosi double %46 to i32
  %48 = load ptr, ptr %41, align 8, !tbaa !129
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = add nuw i32 %47, 1
  %52 = zext nneg i32 %47 to i64
  %53 = zext nneg i32 %47 to i64
  br label %54

54:                                               ; preds = %50, %74
  %55 = phi i64 [ 0, %50 ], [ %81, %74 ]
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = trunc i64 %55 to i32
  %59 = mul i32 %58, %47
  %60 = zext i32 %59 to i64
  %61 = getelementptr [3 x float], ptr %48, i64 %55
  %62 = getelementptr [3 x float], ptr %48, i64 %60
  br label %63

63:                                               ; preds = %57, %63
  %64 = phi i64 [ 0, %57 ], [ %72, %63 ]
  %65 = mul nsw i64 %64, %52
  %66 = getelementptr [3 x float], ptr %61, i64 %65
  %67 = getelementptr [3 x float], ptr %62, i64 %64
  tail call fastcc void @swap_v3_v3(ptr noundef nonnull %66, ptr noundef nonnull %67) #14
  %68 = load <2 x float>, ptr %66, align 4, !tbaa !59
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %69, ptr %66, align 4, !tbaa !59
  %70 = load <2 x float>, ptr %67, align 4, !tbaa !59
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %71, ptr %67, align 4, !tbaa !59
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, %55
  br i1 %73, label %74, label %63, !llvm.loop !130

74:                                               ; preds = %63, %54
  %75 = trunc i64 %55 to i32
  %76 = mul i32 %51, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x float], ptr %48, i64 %77
  %79 = load <2 x float>, ptr %78, align 4, !tbaa !59
  %80 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %80, ptr %78, align 4, !tbaa !59
  %81 = add nuw nsw i64 %55, 1
  %82 = icmp eq i64 %81, %53
  br i1 %82, label %83, label %54, !llvm.loop !131

83:                                               ; preds = %74, %44, %40, %35, %28
  %84 = add nuw nsw i32 %30, 1
  %85 = icmp eq i32 %84, %6
  br i1 %85, label %86, label %28, !llvm.loop !132

86:                                               ; preds = %83
  %87 = icmp eq i32 %6, 2
  br i1 %87, label %91, label %88

88:                                               ; preds = %86
  br i1 %12, label %89, label %133

89:                                               ; preds = %88
  %90 = zext nneg i32 %6 to i64
  br label %99

91:                                               ; preds = %86
  %92 = getelementptr inbounds ptr, ptr %11, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !83
  %94 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !82
  %95 = load ptr, ptr %11, align 16, !tbaa !83
  %96 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !79
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 2
  store ptr %95, ptr %98, align 8, !tbaa !82
  br label %123

99:                                               ; preds = %119, %89
  %100 = phi ptr [ %4, %89 ], [ %105, %119 ]
  %101 = phi i32 [ 0, %89 ], [ %120, %119 ]
  %102 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !77
  %104 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !79
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !77
  br label %111

108:                                              ; preds = %111
  %109 = add nuw nsw i64 %112, 1
  %110 = icmp eq i64 %109, %90
  br i1 %110, label %119, label %111, !llvm.loop !133

111:                                              ; preds = %99, %108
  %112 = phi i64 [ 0, %99 ], [ %109, %108 ]
  %113 = getelementptr inbounds ptr, ptr %11, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !83
  %115 = tail call fastcc zeroext i8 @BM_verts_in_edge(ptr noundef %103, ptr noundef %107, ptr noundef %114) #14, !range !134
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %108, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 2
  store ptr %114, ptr %118, align 8, !tbaa !82
  br label %119

119:                                              ; preds = %108, %117
  %120 = add nuw nsw i32 %101, 1
  %121 = icmp eq i32 %120, %6
  br i1 %121, label %122, label %99, !llvm.loop !135

122:                                              ; preds = %119
  br i1 %12, label %123, label %133

123:                                              ; preds = %91, %122
  br label %124

124:                                              ; preds = %123, %124
  %125 = phi ptr [ %131, %124 ], [ %4, %123 ]
  %126 = phi i32 [ %129, %124 ], [ 0, %123 ]
  %127 = getelementptr inbounds %struct.BMLoop, ptr %125, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !82
  tail call void @bmesh_radial_append(ptr noundef %128, ptr noundef %125) #13
  %129 = add nuw nsw i32 %126, 1
  %130 = getelementptr inbounds %struct.BMLoop, ptr %125, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !79
  %132 = icmp eq i32 %129, %6
  br i1 %132, label %133, label %124, !llvm.loop !136

133:                                              ; preds = %124, %15, %2, %88, %122
  %134 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %135 = load i8, ptr %134, align 4, !tbaa !52
  %136 = or i8 %135, 4
  store i8 %136, ptr %134, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_faces_join(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [32 x ptr], align 16
  %9 = alloca [32 x ptr], align 16
  %10 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #15
  switch i32 %2, label %16 [
    i32 0, label %11
    i32 1, label %14
  ]

11:                                               ; preds = %4
  %12 = load ptr, ptr @stderr, align 8, !tbaa !83
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.BM_faces_join, i32 noundef 1077, ptr noundef nonnull @.str.2) #16
  br label %407

14:                                               ; preds = %4
  %15 = load ptr, ptr %1, align 8, !tbaa !83
  br label %407

16:                                               ; preds = %4
  tail call fastcc void @bm_elements_systag_enable(ptr noundef %1, i32 noundef %2) #14
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %18, label %256

18:                                               ; preds = %16
  %19 = icmp eq i8 %3, 0
  %20 = zext nneg i32 %2 to i64
  br label %21

21:                                               ; preds = %18, %243
  %22 = phi i64 [ 0, %18 ], [ %244, %243 ]
  %23 = phi i32 [ 0, %18 ], [ %239, %243 ]
  %24 = phi ptr [ null, %18 ], [ %238, %243 ]
  %25 = phi ptr [ null, %18 ], [ %237, %243 ]
  %26 = phi i32 [ 0, %18 ], [ %236, %243 ]
  %27 = phi i32 [ 0, %18 ], [ %235, %243 ]
  %28 = phi i32 [ 0, %18 ], [ %234, %243 ]
  %29 = getelementptr inbounds ptr, ptr %1, i64 %22
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = getelementptr inbounds %struct.BMFace, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !76
  br label %33

33:                                               ; preds = %233, %21
  %34 = phi i32 [ %28, %21 ], [ %234, %233 ]
  %35 = phi i32 [ %27, %21 ], [ %235, %233 ]
  %36 = phi i32 [ %26, %21 ], [ %236, %233 ]
  %37 = phi ptr [ %25, %21 ], [ %237, %233 ]
  %38 = phi ptr [ %24, %21 ], [ %238, %233 ]
  %39 = phi i32 [ %23, %21 ], [ %239, %233 ]
  %40 = phi ptr [ %32, %21 ], [ %241, %233 ]
  %41 = call fastcc i32 @bm_loop_systag_count_radial(ptr noundef %40) #14
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %380, label %43

43:                                               ; preds = %33
  switch i32 %41, label %233 [
    i32 1, label %44
    i32 2, label %79
  ]

44:                                               ; preds = %43
  %45 = load ptr, ptr %5, align 8
  %46 = icmp eq ptr %45, null
  %47 = add nsw i32 %34, 1
  %48 = icmp ult i32 %47, 33
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store ptr %8, ptr %5, align 8, !tbaa !83
  br label %64

51:                                               ; preds = %44
  %52 = icmp eq ptr %45, %8
  %53 = or i1 %52, %46
  %54 = select i1 %52, i64 32, i64 0
  br i1 %53, label %59, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !83
  %57 = call i64 %56(ptr noundef nonnull %45) #13
  %58 = lshr i64 %57, 3
  br label %59

59:                                               ; preds = %51, %55
  %60 = phi i64 [ %54, %51 ], [ %58, %55 ]
  %61 = sext i32 %47 to i64
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %34, i32 noundef 1, ptr noundef nonnull @.str.4) #13
  br label %64

64:                                               ; preds = %63, %59, %50
  %65 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !82
  %67 = load ptr, ptr %5, align 8, !tbaa !83
  %68 = sext i32 %34 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  store ptr %66, ptr %69, align 8, !tbaa !83
  %70 = icmp eq ptr %37, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !77
  %74 = call fastcc ptr @BM_edge_other_vert(ptr noundef %66, ptr noundef %73) #14
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi ptr [ %37, %64 ], [ %73, %71 ]
  %77 = phi ptr [ %38, %64 ], [ %74, %71 ]
  %78 = add nsw i32 %39, 1
  br label %233

79:                                               ; preds = %43
  %80 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !82
  %82 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !71
  %84 = call fastcc zeroext i8 @disk_is_flagged(ptr noundef %83) #14
  %85 = load ptr, ptr %80, align 8, !tbaa !82
  %86 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = call fastcc zeroext i8 @disk_is_flagged(ptr noundef %87) #14
  %89 = icmp eq i8 %88, 0
  %90 = or i8 %88, %84
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %79
  %93 = load ptr, ptr %80, align 8, !tbaa !82
  %94 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 4
  %95 = load i8, ptr %94, align 2, !tbaa !68
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %233

98:                                               ; preds = %92
  %99 = call i32 @BM_edge_face_count(ptr noundef nonnull %93) #13
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %233

101:                                              ; preds = %98
  br i1 %19, label %102, label %104

102:                                              ; preds = %101
  %103 = load ptr, ptr %80, align 8, !tbaa !82
  br label %129

104:                                              ; preds = %101
  %105 = load ptr, ptr %6, align 8
  %106 = icmp eq ptr %105, null
  %107 = add nsw i32 %35, 1
  %108 = icmp ult i32 %107, 33
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store ptr %9, ptr %6, align 8, !tbaa !83
  br label %124

111:                                              ; preds = %104
  %112 = icmp eq ptr %105, %9
  %113 = or i1 %112, %106
  %114 = select i1 %112, i64 32, i64 0
  br i1 %113, label %119, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !83
  %117 = call i64 %116(ptr noundef nonnull %105) #13
  %118 = lshr i64 %117, 3
  br label %119

119:                                              ; preds = %111, %115
  %120 = phi i64 [ %114, %111 ], [ %118, %115 ]
  %121 = sext i32 %107 to i64
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef nonnull %9, i32 noundef 8, i32 noundef %35, i32 noundef 1, ptr noundef nonnull @.str.5) #13
  br label %124

124:                                              ; preds = %123, %119, %110
  %125 = load ptr, ptr %80, align 8, !tbaa !82
  %126 = load ptr, ptr %6, align 8, !tbaa !83
  %127 = sext i32 %35 to i64
  %128 = getelementptr inbounds ptr, ptr %126, i64 %127
  store ptr %125, ptr %128, align 8, !tbaa !83
  br label %129

129:                                              ; preds = %102, %124
  %130 = phi ptr [ %125, %124 ], [ %103, %102 ]
  %131 = phi i32 [ %107, %124 ], [ %35, %102 ]
  %132 = getelementptr inbounds %struct.BMHeader, ptr %130, i64 0, i32 4
  %133 = load i8, ptr %132, align 2, !tbaa !68
  %134 = or i8 %133, 1
  store i8 %134, ptr %132, align 2, !tbaa !68
  br label %233

135:                                              ; preds = %79
  %136 = icmp eq i8 %84, 0
  br i1 %136, label %184, label %137

137:                                              ; preds = %135
  %138 = load ptr, ptr %80, align 8, !tbaa !82
  %139 = getelementptr inbounds %struct.BMEdge, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !71
  %141 = getelementptr inbounds %struct.BMHeader, ptr %140, i64 0, i32 4
  %142 = load i8, ptr %141, align 2, !tbaa !48
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %184

145:                                              ; preds = %137
  br i1 %19, label %178, label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %7, align 8
  %148 = icmp eq ptr %147, null
  %149 = add nsw i32 %36, 1
  %150 = icmp ult i32 %149, 33
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store ptr %10, ptr %7, align 8, !tbaa !83
  br label %166

153:                                              ; preds = %146
  %154 = icmp eq ptr %147, %10
  %155 = or i1 %154, %148
  %156 = select i1 %154, i64 32, i64 0
  br i1 %155, label %161, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !83
  %159 = call i64 %158(ptr noundef nonnull %147) #13
  %160 = lshr i64 %159, 3
  br label %161

161:                                              ; preds = %153, %157
  %162 = phi i64 [ %156, %153 ], [ %160, %157 ]
  %163 = sext i32 %149 to i64
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %36, i32 noundef 1, ptr noundef nonnull @.str.6) #13
  br label %166

166:                                              ; preds = %165, %161, %152
  %167 = load ptr, ptr %80, align 8, !tbaa !82
  %168 = getelementptr inbounds %struct.BMEdge, ptr %167, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !71
  %170 = load ptr, ptr %7, align 8, !tbaa !83
  %171 = sext i32 %36 to i64
  %172 = getelementptr inbounds ptr, ptr %170, i64 %171
  store ptr %169, ptr %172, align 8, !tbaa !83
  %173 = load ptr, ptr %80, align 8, !tbaa !82
  %174 = getelementptr inbounds %struct.BMEdge, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !71
  %176 = getelementptr inbounds %struct.BMHeader, ptr %175, i64 0, i32 4
  %177 = load i8, ptr %176, align 2, !tbaa !48
  br label %178

178:                                              ; preds = %166, %145
  %179 = phi i8 [ %177, %166 ], [ %142, %145 ]
  %180 = phi ptr [ %175, %166 ], [ %140, %145 ]
  %181 = phi i32 [ %149, %166 ], [ %36, %145 ]
  %182 = getelementptr inbounds %struct.BMHeader, ptr %180, i64 0, i32 4
  %183 = or i8 %179, 1
  store i8 %183, ptr %182, align 2, !tbaa !48
  br label %184

184:                                              ; preds = %178, %137, %135
  %185 = phi i32 [ %36, %137 ], [ %181, %178 ], [ %36, %135 ]
  br i1 %89, label %233, label %186

186:                                              ; preds = %184
  %187 = load ptr, ptr %80, align 8, !tbaa !82
  %188 = getelementptr inbounds %struct.BMEdge, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !72
  %190 = getelementptr inbounds %struct.BMHeader, ptr %189, i64 0, i32 4
  %191 = load i8, ptr %190, align 2, !tbaa !48
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %186
  br i1 %19, label %227, label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr %7, align 8
  %197 = icmp eq ptr %196, null
  %198 = add nsw i32 %185, 1
  %199 = icmp ult i32 %198, 33
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store ptr %10, ptr %7, align 8, !tbaa !83
  br label %215

202:                                              ; preds = %195
  %203 = icmp eq ptr %196, %10
  %204 = or i1 %203, %197
  %205 = select i1 %203, i64 32, i64 0
  br i1 %204, label %210, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !83
  %208 = call i64 %207(ptr noundef nonnull %196) #13
  %209 = lshr i64 %208, 3
  br label %210

210:                                              ; preds = %202, %206
  %211 = phi i64 [ %205, %202 ], [ %209, %206 ]
  %212 = sext i32 %198 to i64
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %185, i32 noundef 1, ptr noundef nonnull @.str.6) #13
  br label %215

215:                                              ; preds = %214, %210, %201
  %216 = load ptr, ptr %80, align 8, !tbaa !82
  %217 = getelementptr inbounds %struct.BMEdge, ptr %216, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !72
  %219 = load ptr, ptr %7, align 8, !tbaa !83
  %220 = sext i32 %185 to i64
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  store ptr %218, ptr %221, align 8, !tbaa !83
  %222 = load ptr, ptr %80, align 8, !tbaa !82
  %223 = getelementptr inbounds %struct.BMEdge, ptr %222, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !72
  %225 = getelementptr inbounds %struct.BMHeader, ptr %224, i64 0, i32 4
  %226 = load i8, ptr %225, align 2, !tbaa !48
  br label %227

227:                                              ; preds = %215, %194
  %228 = phi i8 [ %226, %215 ], [ %191, %194 ]
  %229 = phi ptr [ %224, %215 ], [ %189, %194 ]
  %230 = phi i32 [ %198, %215 ], [ %185, %194 ]
  %231 = getelementptr inbounds %struct.BMHeader, ptr %229, i64 0, i32 4
  %232 = or i8 %228, 1
  store i8 %232, ptr %231, align 2, !tbaa !48
  br label %233

233:                                              ; preds = %92, %129, %98, %227, %186, %184, %43, %75
  %234 = phi i32 [ %34, %129 ], [ %34, %98 ], [ %34, %227 ], [ %34, %186 ], [ %34, %184 ], [ %34, %43 ], [ %47, %75 ], [ %34, %92 ]
  %235 = phi i32 [ %131, %129 ], [ %35, %98 ], [ %35, %227 ], [ %35, %186 ], [ %35, %184 ], [ %35, %43 ], [ %35, %75 ], [ %35, %92 ]
  %236 = phi i32 [ %36, %129 ], [ %36, %98 ], [ %230, %227 ], [ %185, %186 ], [ %185, %184 ], [ %36, %43 ], [ %36, %75 ], [ %36, %92 ]
  %237 = phi ptr [ %37, %129 ], [ %37, %98 ], [ %37, %227 ], [ %37, %186 ], [ %37, %184 ], [ %37, %43 ], [ %76, %75 ], [ %37, %92 ]
  %238 = phi ptr [ %38, %129 ], [ %38, %98 ], [ %38, %227 ], [ %38, %186 ], [ %38, %184 ], [ %38, %43 ], [ %77, %75 ], [ %38, %92 ]
  %239 = phi i32 [ %39, %129 ], [ %39, %98 ], [ %39, %227 ], [ %39, %186 ], [ %39, %184 ], [ %39, %43 ], [ %78, %75 ], [ %39, %92 ]
  %240 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 6
  %241 = load ptr, ptr %240, align 8, !tbaa !79
  %242 = icmp eq ptr %241, %32
  br i1 %242, label %243, label %33, !llvm.loop !137

243:                                              ; preds = %233
  %244 = add nuw nsw i64 %22, 1
  %245 = icmp eq i64 %244, %20
  br i1 %245, label %246, label %21, !llvm.loop !138

246:                                              ; preds = %243
  %247 = icmp eq i32 %239, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %246
  %249 = load ptr, ptr %5, align 8, !tbaa !83
  %250 = load ptr, ptr %1, align 8, !tbaa !83
  %251 = call ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef %237, ptr noundef %238, ptr noundef %249, i32 noundef %239, ptr noundef %250, i32 noundef 0) #13
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %248
  %254 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #13
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %16, %246, %253, %248
  %257 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #13
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, ptr @.str.7, ptr null
  br label %380

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.BMFace, ptr %251, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !76
  br label %263

263:                                              ; preds = %292, %260
  %264 = phi ptr [ %262, %260 ], [ %294, %292 ]
  %265 = getelementptr inbounds %struct.BMLoop, ptr %264, i64 0, i32 4
  %266 = load ptr, ptr %265, align 8, !tbaa !112
  br label %267

267:                                              ; preds = %275, %263
  %268 = phi ptr [ %266, %263 ], [ %277, %275 ]
  %269 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !87
  %271 = getelementptr inbounds %struct.BMHeader, ptr %270, i64 0, i32 4
  %272 = load i8, ptr %271, align 2, !tbaa !95
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !112
  %278 = icmp eq ptr %277, %264
  br i1 %278, label %292, label %267, !llvm.loop !139

279:                                              ; preds = %267
  %280 = icmp eq ptr %268, %264
  br i1 %280, label %292, label %281

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !77
  %284 = getelementptr inbounds %struct.BMLoop, ptr %264, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !77
  %286 = icmp eq ptr %283, %285
  br i1 %286, label %290, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !79
  br label %290

290:                                              ; preds = %287, %281
  %291 = phi ptr [ %289, %287 ], [ %268, %281 ]
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %291, ptr noundef nonnull %264) #13
  br label %292

292:                                              ; preds = %275, %290, %279
  %293 = getelementptr inbounds %struct.BMLoop, ptr %264, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !79
  %295 = icmp eq ptr %294, %262
  br i1 %295, label %296, label %263, !llvm.loop !140

296:                                              ; preds = %292
  %297 = load ptr, ptr %261, align 8, !tbaa !76
  br label %298

298:                                              ; preds = %298, %296
  %299 = phi ptr [ %297, %296 ], [ %302, %298 ]
  %300 = getelementptr inbounds %struct.BMLoop, ptr %299, i64 0, i32 3
  store ptr %251, ptr %300, align 8, !tbaa !87
  %301 = getelementptr inbounds %struct.BMLoop, ptr %299, i64 0, i32 6
  %302 = load ptr, ptr %301, align 8, !tbaa !79
  %303 = icmp eq ptr %302, %297
  br i1 %303, label %304, label %298, !llvm.loop !141

304:                                              ; preds = %298
  call fastcc void @bm_elements_systag_disable(ptr noundef nonnull %1, i32 noundef %2) #14
  %305 = getelementptr inbounds %struct.BMHeader, ptr %251, i64 0, i32 4
  %306 = load i8, ptr %305, align 2, !tbaa !95
  %307 = and i8 %306, -2
  store i8 %307, ptr %305, align 2, !tbaa !95
  %308 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %309 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %308, i32 noundef 19) #13
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %326, label %311

311:                                              ; preds = %304
  %312 = load ptr, ptr %261, align 8, !tbaa !76
  %313 = zext nneg i32 %2 to i64
  br label %314

314:                                              ; preds = %322, %311
  %315 = phi ptr [ %312, %311 ], [ %324, %322 ]
  br i1 %17, label %316, label %322

316:                                              ; preds = %314, %316
  %317 = phi i64 [ %320, %316 ], [ 0, %314 ]
  %318 = getelementptr inbounds ptr, ptr %1, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !83
  call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %315, ptr noundef %319) #13
  %320 = add nuw nsw i64 %317, 1
  %321 = icmp eq i64 %320, %313
  br i1 %321, label %322, label %316, !llvm.loop !142

322:                                              ; preds = %316, %314
  %323 = getelementptr inbounds %struct.BMLoop, ptr %315, i64 0, i32 6
  %324 = load ptr, ptr %323, align 8, !tbaa !79
  %325 = icmp eq ptr %324, %312
  br i1 %325, label %326, label %314, !llvm.loop !143

326:                                              ; preds = %322, %304
  %327 = icmp eq i8 %3, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %326
  %329 = icmp sgt i32 %235, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %328
  %331 = zext nneg i32 %235 to i64
  br label %339

332:                                              ; preds = %326
  br i1 %17, label %333, label %359

333:                                              ; preds = %332
  %334 = zext nneg i32 %2 to i64
  br label %353

335:                                              ; preds = %339, %328
  %336 = icmp sgt i32 %236, 0
  br i1 %336, label %337, label %359

337:                                              ; preds = %335
  %338 = zext nneg i32 %236 to i64
  br label %346

339:                                              ; preds = %330, %339
  %340 = phi i64 [ 0, %330 ], [ %344, %339 ]
  %341 = load ptr, ptr %6, align 8, !tbaa !83
  %342 = getelementptr inbounds ptr, ptr %341, i64 %340
  %343 = load ptr, ptr %342, align 8, !tbaa !83
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %343) #14
  %344 = add nuw nsw i64 %340, 1
  %345 = icmp eq i64 %344, %331
  br i1 %345, label %335, label %339, !llvm.loop !144

346:                                              ; preds = %337, %346
  %347 = phi i64 [ 0, %337 ], [ %351, %346 ]
  %348 = load ptr, ptr %7, align 8, !tbaa !83
  %349 = getelementptr inbounds ptr, ptr %348, i64 %347
  %350 = load ptr, ptr %349, align 8, !tbaa !83
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %350) #14
  %351 = add nuw nsw i64 %347, 1
  %352 = icmp eq i64 %351, %338
  br i1 %352, label %359, label %346, !llvm.loop !145

353:                                              ; preds = %333, %353
  %354 = phi i64 [ 0, %333 ], [ %357, %353 ]
  %355 = getelementptr inbounds ptr, ptr %1, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !83
  call void @BM_face_kill(ptr noundef %0, ptr noundef %356) #14
  %357 = add nuw nsw i64 %354, 1
  %358 = icmp eq i64 %357, %334
  br i1 %358, label %359, label %353, !llvm.loop !146

359:                                              ; preds = %346, %353, %335, %332
  %360 = load ptr, ptr %5, align 8
  %361 = icmp ne ptr %360, null
  %362 = icmp ne ptr %360, %8
  %363 = and i1 %361, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  call void %365(ptr noundef nonnull %360) #13
  br label %366

366:                                              ; preds = %364, %359
  %367 = load ptr, ptr %6, align 8
  %368 = icmp ne ptr %367, null
  %369 = icmp ne ptr %367, %9
  %370 = and i1 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  call void %372(ptr noundef nonnull %367) #13
  br label %373

373:                                              ; preds = %371, %366
  %374 = load ptr, ptr %7, align 8
  %375 = icmp ne ptr %374, null
  %376 = icmp ne ptr %374, %10
  %377 = and i1 %375, %376
  br i1 %377, label %378, label %407

378:                                              ; preds = %373
  %379 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  call void %379(ptr noundef nonnull %374) #13
  br label %407

380:                                              ; preds = %33, %256
  %381 = phi ptr [ %259, %256 ], [ @.str.3, %33 ]
  call fastcc void @bm_elements_systag_disable(ptr noundef %1, i32 noundef %2) #14
  %382 = load ptr, ptr %5, align 8
  %383 = icmp ne ptr %382, null
  %384 = icmp ne ptr %382, %8
  %385 = and i1 %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %380
  %387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  call void %387(ptr noundef nonnull %382) #13
  br label %388

388:                                              ; preds = %386, %380
  %389 = load ptr, ptr %6, align 8
  %390 = icmp ne ptr %389, null
  %391 = icmp ne ptr %389, %9
  %392 = and i1 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  call void %394(ptr noundef nonnull %389) #13
  br label %395

395:                                              ; preds = %393, %388
  %396 = load ptr, ptr %7, align 8
  %397 = icmp ne ptr %396, null
  %398 = icmp ne ptr %396, %10
  %399 = and i1 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %395
  %401 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  call void %401(ptr noundef nonnull %396) #13
  br label %402

402:                                              ; preds = %400, %395
  %403 = icmp eq ptr %381, null
  br i1 %403, label %407, label %404

404:                                              ; preds = %402
  %405 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 23
  %406 = load ptr, ptr %405, align 8, !tbaa !147
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %406, i32 noundef 5, ptr noundef nonnull %381) #13
  br label %407

407:                                              ; preds = %402, %404, %373, %378, %14, %11
  %408 = phi ptr [ %15, %14 ], [ null, %11 ], [ %251, %378 ], [ %251, %373 ], [ null, %404 ], [ null, %402 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret ptr %408
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_elements_systag_enable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !148 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 4
  %11 = load i8, ptr %10, align 2, !tbaa !149
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 2, !tbaa !149
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !151

15:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @bm_loop_systag_count_radial(ptr noundef readonly %0) unnamed_addr #9 !PGOFuncName !152 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %11, %2 ]
  %5 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.BMHeader, ptr %6, i64 0, i32 4
  %8 = load i8, ptr %7, align 2, !tbaa !95
  %9 = and i8 %8, 1
  %10 = zext nneg i8 %9 to i32
  %11 = add nuw nsw i32 %4, %10
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %2, !llvm.loop !153

15:                                               ; preds = %2
  ret i32 %11
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !154 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @disk_is_flagged(ptr noundef readonly %0) unnamed_addr #0 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1, %26
  %6 = phi ptr [ %27, %26 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @bmesh_radial_length(ptr noundef nonnull %8) #13
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %30, label %13

13:                                               ; preds = %10, %21
  %14 = phi ptr [ %23, %21 ], [ %8, %10 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 4
  %18 = load i8, ptr %17, align 2, !tbaa !95
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = load ptr, ptr %7, align 8, !tbaa !86
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %13, !llvm.loop !156

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %6, ptr noundef %0) #14
  %28 = load ptr, ptr %2, align 8, !tbaa !51
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %5, !llvm.loop !157

30:                                               ; preds = %5, %10, %26, %13, %1
  %31 = phi i8 [ 0, %1 ], [ 0, %13 ], [ 0, %5 ], [ 0, %10 ], [ 1, %26 ]
  ret i8 %31
}

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_ngon(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_error_occurred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_elements_systag_disable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !158 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 4
  %11 = load i8, ptr %10, align 2, !tbaa !149
  %12 = and i8 %11, -2
  store i8 %12, ptr %10, align 2, !tbaa !149
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !159

15:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_interp_multires(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq i8 %6, 0
  %13 = select i1 %12, i32 0, i32 2
  %14 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef %5, i32 noundef %13) #14
  %15 = tail call fastcc ptr @bm_face_create__sfme(ptr noundef %0, ptr noundef %1) #14
  %16 = tail call fastcc ptr @bm_loop_create(ptr noundef %0, ptr noundef %11, ptr noundef %14, ptr noundef %1, ptr noundef %3, i32 noundef 0) #14
  %17 = tail call fastcc ptr @bm_loop_create(ptr noundef %0, ptr noundef %9, ptr noundef %14, ptr noundef %15, ptr noundef %2, i32 noundef 0) #14
  %18 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  store ptr %19, ptr %20, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !88
  %24 = load ptr, ptr %18, align 8, !tbaa !88
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  store ptr %16, ptr %25, align 8, !tbaa !79
  %26 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  store ptr %17, ptr %26, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  store ptr %2, ptr %27, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  store ptr %3, ptr %28, align 8, !tbaa !79
  store ptr %16, ptr %21, align 8, !tbaa !88
  store ptr %17, ptr %18, align 8, !tbaa !88
  %29 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  br label %31

31:                                               ; preds = %31, %7
  %32 = phi ptr [ %16, %7 ], [ %37, %31 ]
  %33 = phi i32 [ 0, %7 ], [ %35, %31 ]
  %34 = icmp eq ptr %32, %30
  %35 = select i1 %34, i32 1, i32 %33
  %36 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, %16
  br i1 %38, label %39, label %31, !llvm.loop !160

39:                                               ; preds = %31
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = icmp eq ptr %43, %16
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load ptr, ptr %23, align 8, !tbaa !88
  %47 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !76
  br label %70

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = icmp eq ptr %50, %16
  %52 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  br i1 %51, label %53, label %54

53:                                               ; preds = %48
  store ptr %3, ptr %52, align 8, !tbaa !76
  br label %70

54:                                               ; preds = %48
  store ptr %17, ptr %52, align 8, !tbaa !76
  br label %70

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  store ptr %30, ptr %56, align 8, !tbaa !76
  %57 = load ptr, ptr %29, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !88
  %60 = icmp eq ptr %59, %17
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load ptr, ptr %20, align 8, !tbaa !88
  store ptr %62, ptr %29, align 8, !tbaa !76
  br label %70

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !79
  %66 = icmp eq ptr %65, %17
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %27, align 8, !tbaa !79
  store ptr %68, ptr %29, align 8, !tbaa !76
  br label %70

69:                                               ; preds = %63
  store ptr %16, ptr %29, align 8, !tbaa !76
  br label %70

70:                                               ; preds = %61, %69, %67, %45, %54, %53
  %71 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi ptr [ %72, %70 ], [ %79, %73 ]
  %75 = phi i32 [ 0, %70 ], [ %77, %73 ]
  %76 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 3
  store ptr %15, ptr %76, align 8, !tbaa !87
  %77 = add nuw nsw i32 %75, 1
  %78 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !79
  %80 = icmp eq ptr %79, %72
  br i1 %80, label %81, label %73, !llvm.loop !161

81:                                               ; preds = %73
  tail call void @bmesh_radial_append(ptr noundef %14, ptr noundef %16) #13
  tail call void @bmesh_radial_append(ptr noundef %14, ptr noundef %17) #13
  %82 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 3
  store i32 %77, ptr %82, align 8, !tbaa !74
  %83 = load ptr, ptr %29, align 8, !tbaa !76
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi ptr [ %83, %81 ], [ %89, %84 ]
  %86 = phi i32 [ 0, %81 ], [ %87, %84 ]
  %87 = add nuw nsw i32 %86, 1
  %88 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !79
  %90 = icmp eq ptr %89, %83
  br i1 %90, label %91, label %84, !llvm.loop !162

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  store i32 %87, ptr %92, align 8, !tbaa !74
  %93 = icmp eq ptr %4, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store ptr %17, ptr %4, align 8, !tbaa !83
  br label %95

95:                                               ; preds = %94, %91
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_face_create__sfme(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = tail call fastcc ptr @bm_face_create__internal(ptr noundef %0) #14
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef %3) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bmesh_semv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %6 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #14
  %7 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef %2, i32 noundef 0) #14
  tail call void @bmesh_disk_edge_remove(ptr noundef %7, ptr noundef %1) #13
  tail call void @bmesh_disk_edge_remove(ptr noundef %7, ptr noundef %6) #13
  tail call void @bmesh_disk_edge_remove(ptr noundef %2, ptr noundef %1) #13
  %8 = tail call zeroext i8 @bmesh_edge_swapverts(ptr noundef %2, ptr noundef %1, ptr noundef %6) #13
  tail call void @bmesh_disk_edge_append(ptr noundef %2, ptr noundef %6) #13
  tail call void @bmesh_disk_edge_append(ptr noundef %7, ptr noundef %6) #13
  tail call void @bmesh_disk_edge_append(ptr noundef %7, ptr noundef %1) #13
  %9 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  store ptr null, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %4, %62
  %13 = phi i32 [ %64, %62 ], [ 0, %4 ]
  %14 = phi i32 [ %63, %62 ], [ 0, %4 ]
  %15 = phi ptr [ %22, %62 ], [ %10, %4 ]
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !74
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = icmp eq ptr %15, %22
  tail call void @bmesh_radial_loop_remove(ptr noundef nonnull %15, ptr noundef null) #13
  %24 = load ptr, ptr %16, align 8, !tbaa !87
  %25 = tail call fastcc ptr @bm_loop_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %24, ptr noundef nonnull %15, i32 noundef 0) #14
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 7
  store ptr %15, ptr %26, align 8, !tbaa !88
  %27 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !79
  store ptr %25, ptr %27, align 8, !tbaa !79
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 7
  store ptr %25, ptr %31, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  store ptr %6, ptr %32, align 8, !tbaa !77
  %33 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = tail call fastcc zeroext i8 @BM_verts_in_edge(ptr noundef %6, ptr noundef %34, ptr noundef %2) #14, !range !134
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  store ptr %2, ptr %38, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  store ptr %7, ptr %39, align 8, !tbaa !82
  %40 = icmp eq i32 %14, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %42

42:                                               ; preds = %41, %37
  %43 = icmp eq i32 %13, 0
  br i1 %43, label %54, label %57

44:                                               ; preds = %12
  %45 = tail call fastcc zeroext i8 @BM_verts_in_edge(ptr noundef %6, ptr noundef %34, ptr noundef %7) #14, !range !134
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  store ptr %7, ptr %48, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  store ptr %2, ptr %49, align 8, !tbaa !82
  %50 = icmp eq i32 %14, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %52

52:                                               ; preds = %51, %47
  %53 = icmp eq i32 %13, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %52, %42
  %55 = phi ptr [ %38, %42 ], [ %48, %52 ]
  %56 = phi ptr [ %39, %42 ], [ %49, %52 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %54, %52, %42
  %58 = phi ptr [ %38, %42 ], [ %48, %52 ], [ %55, %54 ]
  %59 = phi ptr [ %39, %42 ], [ %49, %52 ], [ %56, %54 ]
  %60 = load ptr, ptr %58, align 8, !tbaa !82
  tail call void @bmesh_radial_append(ptr noundef %60, ptr noundef nonnull %25) #13
  %61 = load ptr, ptr %59, align 8, !tbaa !82
  tail call void @bmesh_radial_append(ptr noundef %61, ptr noundef nonnull %15) #13
  br label %62

62:                                               ; preds = %57, %44
  %63 = phi i32 [ %14, %44 ], [ 1, %57 ]
  %64 = phi i32 [ %13, %44 ], [ 1, %57 ]
  %65 = icmp eq ptr %22, null
  %66 = or i1 %23, %65
  br i1 %66, label %67, label %12, !llvm.loop !164

67:                                               ; preds = %62, %4
  %68 = icmp eq ptr %3, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  store ptr %7, ptr %3, align 8, !tbaa !83
  br label %70

70:                                               ; preds = %69, %67
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @bmesh_edge_swapverts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_verts_in_edge(ptr noundef readnone %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !165 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %3
  %12 = icmp eq ptr %5, %1
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, %0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %11, %13, %7
  %19 = phi i8 [ 1, %7 ], [ 0, %11 ], [ %17, %13 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bmesh_jekv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %1, ptr noundef %2) #14, !range !134
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %97, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @bmesh_disk_count(ptr noundef %2) #13
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %97

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %1, ptr noundef %2) #14
  %13 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %1, ptr noundef %2) #14
  %14 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %12, ptr noundef %2) #14
  %15 = tail call fastcc zeroext i8 @BM_verts_in_edge(ptr noundef %2, ptr noundef %13, ptr noundef %12) #14, !range !134
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %11
  %18 = icmp ne i8 %4, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call ptr @BM_edge_exists(ptr noundef %13, ptr noundef %14) #13
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %20, %19 ], [ undef, %17 ]
  tail call void @bmesh_disk_edge_remove(ptr noundef %12, ptr noundef %2) #13
  %23 = tail call zeroext i8 @bmesh_edge_swapverts(ptr noundef %12, ptr noundef %2, ptr noundef %13) #13
  tail call void @bmesh_disk_edge_append(ptr noundef %12, ptr noundef %13) #13
  tail call void @bmesh_disk_edge_remove(ptr noundef %1, ptr noundef %13) #13
  %24 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = tail call i32 @bmesh_radial_length(ptr noundef %25) #13
  %27 = load ptr, ptr %24, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %87, label %29

29:                                               ; preds = %21
  %30 = icmp sgt i32 %26, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %29, %52
  %32 = phi i32 [ %56, %52 ], [ 0, %29 ]
  %33 = phi ptr [ %58, %52 ], [ %27, %29 ]
  %34 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store ptr %13, ptr %36, align 8, !tbaa !77
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 7
  store ptr %42, ptr %43, align 8, !tbaa !88
  %44 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 6
  store ptr %35, ptr %44, align 8, !tbaa !79
  %45 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !76
  %49 = icmp eq ptr %48, %33
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load ptr, ptr %34, align 8, !tbaa !79
  store ptr %51, ptr %47, align 8, !tbaa !76
  br label %52

52:                                               ; preds = %50, %40
  %53 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  %54 = load i32, ptr %53, align 8, !tbaa !74
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %53, align 8, !tbaa !74
  %56 = add nuw nsw i32 %32, 1
  %57 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !112
  %59 = icmp eq i32 %56, %26
  br i1 %59, label %60, label %31, !llvm.loop !166

60:                                               ; preds = %52, %29
  %61 = tail call i32 @bmesh_radial_length(ptr noundef nonnull %27) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = sext i32 %61 to i64
  %65 = shl nsw i64 %64, 3
  %66 = alloca i8, i64 %65, align 16
  %67 = icmp sgt i32 %61, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = zext nneg i32 %61 to i64
  br label %73

70:                                               ; preds = %73
  br i1 %67, label %71, label %87

71:                                               ; preds = %70
  %72 = zext nneg i32 %61 to i64
  br label %81

73:                                               ; preds = %68, %73
  %74 = phi i64 [ 0, %68 ], [ %79, %73 ]
  %75 = phi ptr [ %24, %68 ], [ %78, %73 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !83
  %77 = getelementptr inbounds ptr, ptr %66, i64 %74
  store ptr %76, ptr %77, align 8, !tbaa !83
  %78 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 4
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, %69
  br i1 %80, label %70, label %73, !llvm.loop !167

81:                                               ; preds = %71, %81
  %82 = phi i64 [ 0, %71 ], [ %85, %81 ]
  %83 = getelementptr inbounds ptr, ptr %66, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !83
  tail call fastcc void @bm_kill_only_loop(ptr noundef %0, ptr noundef %84) #14
  %85 = add nuw nsw i64 %82, 1
  %86 = icmp eq i64 %85, %72
  br i1 %86, label %87, label %81, !llvm.loop !168

87:                                               ; preds = %81, %63, %70, %60, %21
  tail call fastcc void @bm_kill_only_edge(ptr noundef %0, ptr noundef %1) #14
  %88 = icmp eq i8 %3, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %87
  tail call fastcc void @bm_kill_only_vert(ptr noundef %0, ptr noundef %2) #14
  br label %92

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  store ptr null, ptr %91, align 8, !tbaa !51
  br label %92

92:                                               ; preds = %90, %89
  %93 = icmp ne ptr %22, null
  %94 = select i1 %18, i1 %93, i1 false
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = tail call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %12) #14, !range !134
  br label %97

97:                                               ; preds = %8, %92, %95, %11, %5
  %98 = phi ptr [ null, %5 ], [ null, %11 ], [ %12, %95 ], [ %12, %92 ], [ null, %8 ]
  ret ptr %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare i32 @bmesh_disk_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bmesh_radial_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %1, ptr noundef %5) #14, !range !134
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %1, ptr noundef %10) #14, !range !134
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  tail call void @bmesh_radial_loop_remove(ptr noundef nonnull %18, ptr noundef nonnull %1) #13
  tail call void @bmesh_radial_append(ptr noundef %2, ptr noundef nonnull %18) #13
  %19 = load ptr, ptr %14, align 8, !tbaa !86
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !170

21:                                               ; preds = %17, %13
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %22

22:                                               ; preds = %3, %8, %21
  %23 = phi i8 [ 1, %21 ], [ 0, %8 ], [ 0, %3 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bmesh_jfke(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %184, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %3) #14, !range !134
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %184, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = tail call ptr @BM_face_edge_share_loop(ptr noundef %1, ptr noundef %3) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %184, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @BM_face_edge_share_loop(ptr noundef nonnull %2, ptr noundef %3) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %184, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %184, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %29, ptr noundef nonnull %2) #13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %184

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %36, ptr noundef nonnull %2) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %184

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %43, ptr noundef nonnull %1) #13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %184

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %50, ptr noundef nonnull %1) #13
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %184

53:                                               ; preds = %46
  %54 = tail call i32 @BM_face_share_edge_count(ptr noundef nonnull %1, ptr noundef nonnull %2) #13
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %184, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %58 = icmp sgt i32 %11, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56, %59
  %60 = phi i32 [ %65, %59 ], [ 0, %56 ]
  %61 = phi ptr [ %66, %59 ], [ %57, %56 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !83
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !77
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %64) #14
  %65 = add nuw nsw i32 %60, 1
  %66 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %67 = icmp eq i32 %65, %11
  br i1 %67, label %68, label %59, !llvm.loop !171

68:                                               ; preds = %59, %56
  %69 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %70 = icmp sgt i32 %13, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %72, %68
  br i1 %58, label %82, label %81

72:                                               ; preds = %68, %72
  %73 = phi i32 [ %78, %72 ], [ 0, %68 ]
  %74 = phi ptr [ %79, %72 ], [ %69, %68 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !77
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %77) #14
  %78 = add nuw nsw i32 %73, 1
  %79 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 6
  %80 = icmp eq i32 %78, %13
  br i1 %80, label %71, label %72, !llvm.loop !172

81:                                               ; preds = %90, %71
  br i1 %70, label %94, label %108

82:                                               ; preds = %71, %90
  %83 = phi ptr [ %92, %90 ], [ %57, %71 ]
  %84 = phi i32 [ %91, %90 ], [ 0, %71 ]
  %85 = load ptr, ptr %83, align 8, !tbaa !83
  %86 = icmp eq ptr %85, %14
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !77
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %89) #14
  br label %90

90:                                               ; preds = %82, %87
  %91 = add nuw nsw i32 %84, 1
  %92 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %93 = icmp eq i32 %91, %11
  br i1 %93, label %81, label %82, !llvm.loop !173

94:                                               ; preds = %81, %104
  %95 = phi ptr [ %106, %104 ], [ %69, %81 ]
  %96 = phi i32 [ %105, %104 ], [ 0, %81 ]
  %97 = load ptr, ptr %95, align 8, !tbaa !83
  %98 = icmp eq ptr %97, %17
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !77
  %102 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %101) #14
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %184

104:                                              ; preds = %94, %99
  %105 = add nuw nsw i32 %96, 1
  %106 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 6
  %107 = icmp eq i32 %105, %13
  br i1 %107, label %108, label %94, !llvm.loop !174

108:                                              ; preds = %104, %81
  %109 = load ptr, ptr %40, align 8, !tbaa !79
  %110 = load ptr, ptr %33, align 8, !tbaa !88
  %111 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 6
  store ptr %109, ptr %111, align 8, !tbaa !79
  %112 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 7
  store ptr %110, ptr %112, align 8, !tbaa !88
  %113 = load ptr, ptr %47, align 8, !tbaa !88
  %114 = load ptr, ptr %26, align 8, !tbaa !79
  %115 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 7
  store ptr %113, ptr %115, align 8, !tbaa !88
  %116 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 6
  store ptr %114, ptr %116, align 8, !tbaa !79
  %117 = load ptr, ptr %57, align 8, !tbaa !76
  %118 = icmp eq ptr %117, %14
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store ptr %114, ptr %57, align 8, !tbaa !76
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i32, ptr %12, align 8, !tbaa !74
  %122 = add nsw i32 %121, -2
  %123 = load i32, ptr %10, align 8, !tbaa !74
  %124 = add nsw i32 %122, %123
  store i32 %124, ptr %10, align 8, !tbaa !74
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %120, %126
  %127 = phi i32 [ %131, %126 ], [ 0, %120 ]
  %128 = phi ptr [ %132, %126 ], [ %57, %120 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !83
  %130 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 3
  store ptr %1, ptr %130, align 8, !tbaa !87
  %131 = add nuw nsw i32 %127, 1
  %132 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 6
  %133 = icmp eq i32 %131, %124
  br i1 %133, label %134, label %126, !llvm.loop !175

134:                                              ; preds = %126, %120
  %135 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !82
  %137 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !71
  tail call void @bmesh_disk_edge_remove(ptr noundef %136, ptr noundef %138) #13
  %139 = load ptr, ptr %135, align 8, !tbaa !82
  %140 = getelementptr inbounds %struct.BMEdge, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !72
  tail call void @bmesh_disk_edge_remove(ptr noundef %139, ptr noundef %141) #13
  %142 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %143 = load ptr, ptr %142, align 8, !tbaa !69
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %134
  %146 = load ptr, ptr %135, align 8, !tbaa !82
  %147 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !70
  tail call void @BLI_mempool_free(ptr noundef nonnull %143, ptr noundef %148) #13
  br label %149

149:                                              ; preds = %145, %134
  %150 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %151 = load ptr, ptr %150, align 8, !tbaa !62
  %152 = load ptr, ptr %135, align 8, !tbaa !82
  tail call void @BLI_mempool_free(ptr noundef %151, ptr noundef %152) #13
  %153 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !73
  %155 = add nsw i32 %154, -1
  store i32 %155, ptr %153, align 4, !tbaa !73
  %156 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %157 = load ptr, ptr %156, align 8, !tbaa !102
  tail call void @BLI_mempool_free(ptr noundef %157, ptr noundef nonnull %14) #13
  %158 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !107
  %160 = add nsw i32 %159, -1
  store i32 %160, ptr %158, align 8, !tbaa !107
  %161 = load ptr, ptr %156, align 8, !tbaa !102
  tail call void @BLI_mempool_free(ptr noundef %161, ptr noundef nonnull %17) #13
  %162 = load i32, ptr %158, align 8, !tbaa !107
  %163 = add nsw i32 %162, -1
  store i32 %163, ptr %158, align 8, !tbaa !107
  %164 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %165 = load ptr, ptr %164, align 8, !tbaa !96
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %149
  %168 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !97
  tail call void @BLI_mempool_free(ptr noundef nonnull %165, ptr noundef %169) #13
  br label %170

170:                                              ; preds = %167, %149
  %171 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %172 = load ptr, ptr %171, align 8, !tbaa !91
  tail call void @BLI_mempool_free(ptr noundef %172, ptr noundef %2) #13
  %173 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %174 = load i32, ptr %173, align 4, !tbaa !99
  %175 = add nsw i32 %174, -1
  store i32 %175, ptr %173, align 4, !tbaa !99
  %176 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %177 = load i8, ptr %176, align 4, !tbaa !52
  %178 = or i8 %177, 14
  store i8 %178, ptr %176, align 4, !tbaa !52
  %179 = tail call zeroext i8 @bmesh_loop_validate(ptr noundef %1) #13
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load ptr, ptr @stderr, align 8, !tbaa !83
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_jfke, i32 noundef 1949, ptr noundef nonnull @.str.8) #16
  br label %184

184:                                              ; preds = %99, %181, %170, %53, %25, %32, %39, %46, %19, %9, %16, %6, %4
  %185 = phi ptr [ null, %4 ], [ null, %6 ], [ null, %16 ], [ null, %9 ], [ null, %19 ], [ null, %46 ], [ null, %39 ], [ null, %32 ], [ null, %25 ], [ null, %53 ], [ %1, %170 ], [ %1, %181 ], [ null, %99 ]
  ret ptr %185
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !176 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_face_share_edge_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !177 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !178
  %4 = and i8 %3, 127
  store i8 %4, ptr %2, align 1, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !179 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !178
  %4 = or i8 %3, -128
  store i8 %4, ptr %2, align 1, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !178
  %4 = and i8 %3, -128
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bmesh_loop_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_vert_splice_check_double(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SmallHash, align 8
  %4 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %3) #15
  call void @BLI_smallhash_init(ptr noundef nonnull %3) #13
  %12 = load ptr, ptr %4, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %23, %13 ]
  %15 = call fastcc ptr @BM_edge_other_vert(ptr noundef %14, ptr noundef %0) #14
  %16 = ptrtoint ptr %15 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %3, i64 noundef %16, ptr noundef null) #13
  %17 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 5
  %18 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, %0
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds %struct.BMDiskLink, ptr %17, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %25, label %13, !llvm.loop !181

25:                                               ; preds = %13
  %26 = load ptr, ptr %8, align 8, !tbaa !51
  br label %27

27:                                               ; preds = %33, %25
  %28 = phi ptr [ %26, %25 ], [ %40, %33 ]
  %29 = call fastcc ptr @BM_edge_other_vert(ptr noundef %28, ptr noundef %1) #14
  %30 = ptrtoint ptr %29 to i64
  %31 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %3, i64 noundef %30) #13
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 5
  %35 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = icmp eq ptr %36, %1
  %38 = zext i1 %37 to i64
  %39 = getelementptr inbounds %struct.BMDiskLink, ptr %34, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = icmp eq ptr %40, %26
  br i1 %41, label %42, label %27, !llvm.loop !182

42:                                               ; preds = %27, %33
  %43 = zext i1 %32 to i8
  call void @BLI_smallhash_release(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %3) #15
  br label %44

44:                                               ; preds = %42, %7, %2
  %45 = phi i8 [ %43, %42 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %45
}

; Function Attrs: optsize
declare void @BLI_smallhash_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_smallhash_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_smallhash_haskey(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_smallhash_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5, %24
  %10 = phi ptr [ %26, %24 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %20
  %15 = phi ptr [ %22, %20 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store ptr %2, ptr %16, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %14, %19
  %21 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %24, label %14, !llvm.loop !183

24:                                               ; preds = %20, %9
  tail call void @bmesh_disk_edge_remove(ptr noundef nonnull %10, ptr noundef %1) #13
  %25 = tail call zeroext i8 @bmesh_edge_swapverts(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #13
  tail call void @bmesh_disk_edge_append(ptr noundef nonnull %10, ptr noundef %2) #13
  %26 = load ptr, ptr %6, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !184

28:                                               ; preds = %24, %5
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %29

29:                                               ; preds = %3, %28
  %30 = phi i8 [ 1, %28 ], [ 0, %3 ]
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmesh_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SmallHash, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = tail call i32 @BM_vert_face_count(ptr noundef %1) #13
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @BLI_smallhash_init_ex(ptr noundef nonnull %6, i32 noundef %9) #13
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 4, ptr noundef %1) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %5, %70
  %16 = phi i32 [ %72, %70 ], [ 0, %5 ]
  %17 = phi i32 [ %71, %70 ], [ 0, %5 ]
  %18 = phi ptr [ %73, %70 ], [ %13, %5 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %6, i64 noundef %19) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %15
  %23 = sext i32 %17 to i64
  %24 = inttoptr i64 %23 to ptr
  call void @BLI_smallhash_insert(ptr noundef nonnull %6, i64 noundef %19, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %61, %22
  %26 = phi ptr [ %18, %22 ], [ %65, %61 ]
  %27 = phi i32 [ %16, %22 ], [ %62, %61 ]
  %28 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %25, %53
  %32 = phi ptr [ %56, %53 ], [ %29, %25 ]
  %33 = phi i32 [ %54, %53 ], [ %27, %25 ]
  %34 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = icmp eq ptr %35, %1
  %37 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 7
  %38 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %39 = select i1 %36, ptr %37, ptr %38
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = ptrtoint ptr %42 to i64
  %44 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %6, i64 noundef %43) #13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %31
  %47 = load ptr, ptr %41, align 8, !tbaa !82
  %48 = ptrtoint ptr %47 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %6, i64 noundef %48, ptr noundef %24) #13
  %49 = load ptr, ptr %41, align 8, !tbaa !82
  %50 = add i32 %33, 1
  %51 = zext i32 %33 to i64
  %52 = getelementptr inbounds ptr, ptr %12, i64 %51
  store ptr %49, ptr %52, align 8, !tbaa !83
  br label %53

53:                                               ; preds = %31, %46
  %54 = phi i32 [ %33, %31 ], [ %50, %46 ]
  %55 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !112
  %57 = icmp eq ptr %56, %29
  br i1 %57, label %58, label %31, !llvm.loop !185

58:                                               ; preds = %53, %25
  %59 = phi i32 [ %27, %25 ], [ %54, %53 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = add i32 %59, -1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %12, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %25, !llvm.loop !186

67:                                               ; preds = %58, %61
  %68 = phi i32 [ %62, %61 ], [ 0, %58 ]
  %69 = add nsw i32 %17, 1
  br label %70

70:                                               ; preds = %15, %67
  %71 = phi i32 [ %17, %15 ], [ %69, %67 ]
  %72 = phi i32 [ %16, %15 ], [ %68, %67 ]
  %73 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %15, !llvm.loop !187

75:                                               ; preds = %70, %5
  %76 = phi i32 [ 0, %5 ], [ %71, %70 ]
  %77 = icmp eq ptr %2, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %80 = sext i32 %76 to i64
  %81 = shl nsw i64 %80, 3
  %82 = call ptr %79(i64 noundef %81, ptr noundef nonnull @__func__.bmesh_vert_separate) #13
  br label %87

83:                                               ; preds = %75
  %84 = sext i32 %76 to i64
  %85 = shl nsw i64 %84, 3
  %86 = alloca i8, i64 %85, align 16
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi ptr [ %82, %78 ], [ %86, %83 ]
  store ptr %1, ptr %88, align 8, !tbaa !83
  %89 = icmp sgt i32 %76, 1
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %92 = icmp eq i8 %4, 0
  %93 = zext nneg i32 %76 to i64
  br label %94

94:                                               ; preds = %90, %99
  %95 = phi i64 [ 1, %90 ], [ %100, %99 ]
  %96 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %91, ptr noundef %1, i32 noundef 0) #14
  %97 = getelementptr inbounds ptr, ptr %88, i64 %95
  store ptr %96, ptr %97, align 8, !tbaa !83
  br i1 %92, label %99, label %98

98:                                               ; preds = %94
  call void @BM_elem_select_copy(ptr noundef %0, ptr noundef %0, ptr noundef %96, ptr noundef %1) #13
  br label %99

99:                                               ; preds = %94, %98
  %100 = add nuw nsw i64 %95, 1
  %101 = icmp eq i64 %100, %93
  br i1 %101, label %102, label %94, !llvm.loop !188

102:                                              ; preds = %99, %87
  %103 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, i8 noundef zeroext 6, ptr noundef %1) #14
  %104 = icmp eq ptr %103, null
  br i1 %104, label %145, label %109

105:                                              ; preds = %119
  %106 = icmp eq i32 %120, 0
  br i1 %106, label %145, label %107

107:                                              ; preds = %105
  %108 = zext i32 %120 to i64
  br label %123

109:                                              ; preds = %102, %119
  %110 = phi i32 [ %120, %119 ], [ 0, %102 ]
  %111 = phi ptr [ %121, %119 ], [ %103, %102 ]
  %112 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !77
  %114 = icmp eq ptr %113, %1
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = add i32 %110, 1
  %117 = zext i32 %110 to i64
  %118 = getelementptr inbounds ptr, ptr %12, i64 %117
  store ptr %111, ptr %118, align 8, !tbaa !83
  br label %119

119:                                              ; preds = %109, %115
  %120 = phi i32 [ %116, %115 ], [ %110, %109 ]
  %121 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %122 = icmp eq ptr %121, null
  br i1 %122, label %105, label %109, !llvm.loop !189

123:                                              ; preds = %107, %143
  %124 = phi i64 [ %108, %107 ], [ %125, %143 ]
  %125 = add nsw i64 %124, -1
  %126 = getelementptr inbounds ptr, ptr %12, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !83
  %128 = icmp eq ptr %127, null
  br i1 %128, label %145, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.BMLoop, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !82
  %132 = ptrtoint ptr %131 to i64
  %133 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %6, i64 noundef %132) #13
  %134 = ptrtoint ptr %133 to i64
  %135 = and i64 %134, 4294967295
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %129
  %138 = shl i64 %134, 32
  %139 = ashr exact i64 %138, 32
  %140 = getelementptr inbounds ptr, ptr %88, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !83
  %142 = getelementptr inbounds %struct.BMLoop, ptr %127, i64 0, i32 1
  store ptr %141, ptr %142, align 8, !tbaa !77
  br label %143

143:                                              ; preds = %137, %129
  %144 = icmp eq i64 %125, 0
  br i1 %144, label %145, label %123, !llvm.loop !190

145:                                              ; preds = %123, %143, %102, %105
  %146 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 4, ptr noundef %1) #14
  %147 = icmp eq ptr %146, null
  br i1 %147, label %165, label %148

148:                                              ; preds = %145, %162
  %149 = phi ptr [ %163, %162 ], [ %146, %145 ]
  %150 = ptrtoint ptr %149 to i64
  %151 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %6, i64 noundef %150) #13
  %152 = ptrtoint ptr %151 to i64
  %153 = and i64 %152, 4294967295
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  call void @bmesh_disk_edge_remove(ptr noundef nonnull %149, ptr noundef %1) #13
  %156 = shl i64 %152, 32
  %157 = ashr exact i64 %156, 32
  %158 = getelementptr inbounds ptr, ptr %88, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !83
  %160 = call zeroext i8 @bmesh_edge_swapverts(ptr noundef nonnull %149, ptr noundef %1, ptr noundef %159) #13
  %161 = load ptr, ptr %158, align 8, !tbaa !83
  call void @bmesh_disk_edge_append(ptr noundef nonnull %149, ptr noundef %161) #13
  br label %162

162:                                              ; preds = %148, %155
  %163 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %148, !llvm.loop !191

165:                                              ; preds = %162, %145
  call void @BLI_smallhash_release(ptr noundef nonnull %6) #13
  %166 = icmp eq ptr %3, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %165
  store i32 %76, ptr %3, align 4, !tbaa !55
  br label %168

168:                                              ; preds = %167, %165
  br i1 %77, label %170, label %169

169:                                              ; preds = %168
  store ptr %88, ptr %2, align 8, !tbaa !83
  br label %170

170:                                              ; preds = %169, %168
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_smallhash_init_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !192 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #14
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !193 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @BM_elem_select_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_smallhash_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %6
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %21
  %11 = phi i64 [ 0, %8 ], [ %22, %21 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef nonnull %13, ptr noundef %1) #14, !range !134
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @bmesh_edge_separate(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %15, i8 noundef zeroext 0) #14
  br label %21

21:                                               ; preds = %20, %17, %10
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %10, !llvm.loop !196

24:                                               ; preds = %21, %6
  tail call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmesh_edge_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %1) #14, !range !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  store ptr %13, ptr %8, align 8, !tbaa !86
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %16, ptr noundef %18, ptr noundef nonnull %1, i32 noundef 0) #14
  tail call void @bmesh_radial_loop_remove(ptr noundef %2, ptr noundef nonnull %1) #13
  tail call void @bmesh_radial_append(ptr noundef %19, ptr noundef %2) #13
  %20 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !82
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void @BM_elem_select_copy(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef nonnull %1) #13
  br label %23

23:                                               ; preds = %14, %22, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !197 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bmesh_urmv_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  tail call void @bmesh_edge_separate(ptr noundef %0, ptr noundef %8, ptr noundef %1, i8 noundef zeroext 0) #14
  %9 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  tail call void @bmesh_edge_separate(ptr noundef %0, ptr noundef %12, ptr noundef %10, i8 noundef zeroext 0) #14
  %13 = tail call i32 @bmesh_disk_count(ptr noundef %6) #13
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %72, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %7, align 8, !tbaa !82
  %18 = load ptr, ptr %16, align 8, !tbaa !51
  br label %19

19:                                               ; preds = %15, %27
  %20 = phi ptr [ %18, %15 ], [ %28, %27 ]
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %9, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %22
  %28 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %20, ptr noundef nonnull %6) #14
  store ptr %28, ptr %16, align 8, !tbaa !51
  br label %19, !llvm.loop !198

29:                                               ; preds = %22
  call void @bmesh_vert_separate(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %30 = load ptr, ptr %5, align 8, !tbaa !77
  %31 = load i32, ptr %4, align 4, !tbaa !55
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !tbaa !83
  %35 = zext nneg i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %41
  %37 = phi i64 [ 0, %33 ], [ %42, %41 ]
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !83
  %40 = icmp eq ptr %39, %30
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %35
  br i1 %43, label %69, label %36, !llvm.loop !199

44:                                               ; preds = %36
  %45 = trunc i64 %37 to i32
  %46 = icmp eq i32 %31, %45
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  %48 = and i64 %37, 4294967295
  %49 = getelementptr inbounds ptr, ptr %34, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = getelementptr ptr, ptr %34, i64 %35
  %52 = getelementptr ptr, ptr %51, i64 -1
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  store ptr %53, ptr %49, align 8, !tbaa !83
  %54 = load ptr, ptr %3, align 8, !tbaa !83
  %55 = getelementptr ptr, ptr %54, i64 %35
  %56 = getelementptr ptr, ptr %55, i64 -1
  store ptr %50, ptr %56, align 8, !tbaa !83
  br label %57

57:                                               ; preds = %47, %57
  %58 = phi i64 [ 1, %47 ], [ %64, %57 ]
  %59 = load ptr, ptr %3, align 8, !tbaa !83
  %60 = getelementptr inbounds ptr, ptr %59, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = load ptr, ptr %59, align 8, !tbaa !83
  %63 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %61, ptr noundef %62) #14, !range !134
  %64 = add nuw nsw i64 %58, 1
  %65 = load i32, ptr %4, align 4, !tbaa !55
  %66 = add nsw i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %57, label %69, !llvm.loop !200

69:                                               ; preds = %41, %57, %44, %29
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  %71 = load ptr, ptr %3, align 8, !tbaa !83
  call void %70(ptr noundef %71) #13
  br label %72

72:                                               ; preds = %2, %69
  %73 = phi ptr [ %30, %69 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bmesh_urmv(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %2) #13
  %5 = tail call ptr @bmesh_urmv_loop(ptr noundef %0, ptr noundef %4) #14
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmesh_face_swap_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca %struct.BMFace, align 8
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %5, %2 ], [ %10, %6 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !201

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %14, %12 ], [ %19, %15 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  store ptr %0, ptr %17, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, %14
  br i1 %20, label %21, label %15, !llvm.loop !202

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3)
  %22 = load ptr, ptr %0, align 8, !tbaa !92
  %23 = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %23, ptr %0, align 8, !tbaa !92
  store ptr %22, ptr %1, align 8, !tbaa !92
  %24 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !206
  %26 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !206
  store i32 %27, ptr %24, align 8, !tbaa !206
  store i32 %25, ptr %26, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !PGOFuncName !207 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  store float %4, ptr %0, align 4, !tbaa !59
  store float %3, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  store float %8, ptr %5, align 4, !tbaa !59
  store float %6, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  store float %12, ptr %9, align 4, !tbaa !59
  store float %10, ptr %11, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !208 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !209
  %5 = add nsw i8 %1, -4
  %6 = sext i8 %5 to i64
  %7 = getelementptr inbounds [3 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i8 %5 to i64
  %10 = getelementptr inbounds [3 x ptr], ptr @switch.table.BM_iter_init.9, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %8, ptr %13, align 8, !tbaa !210
  store ptr %11, ptr %12, align 8, !tbaa !194
  store ptr %2, ptr %0, align 8, !tbaa !204
  tail call void %8(ptr noundef nonnull %0) #13
  ret void
}

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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { cold optsize }

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
!34 = !{!35, !39, i64 32}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!44, !39, i64 0}
!44 = !{!"BMVert", !45, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!45 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!46 = !{!44, !37, i64 12}
!47 = !{!44, !37, i64 13}
!48 = !{!44, !37, i64 14}
!49 = !{!35, !39, i64 104}
!50 = !{!44, !39, i64 16}
!51 = !{!44, !39, i64 48}
!52 = !{!35, !37, i64 28}
!53 = !{!35, !37, i64 29}
!54 = !{!35, !36, i64 0}
!55 = !{!36, !36, i64 0}
!56 = !{!"bmesh_core.c:_bm_elem_index_set"}
!57 = !{!45, !36, i64 8}
!58 = !{!"bmesh_core.c:copy_v3_v3"}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !37, i64 0}
!61 = !{!"bmesh_core.c:zero_v3"}
!62 = !{!35, !39, i64 40}
!63 = !{!64, !39, i64 0}
!64 = !{!"BMEdge", !45, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !65, i64 48, !65, i64 64}
!65 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!66 = !{!64, !37, i64 12}
!67 = !{!64, !37, i64 13}
!68 = !{!64, !37, i64 14}
!69 = !{!35, !39, i64 112}
!70 = !{!64, !39, i64 16}
!71 = !{!64, !39, i64 24}
!72 = !{!64, !39, i64 32}
!73 = !{!35, !36, i64 4}
!74 = !{!75, !36, i64 32}
!75 = !{!"BMFace", !45, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!76 = !{!75, !39, i64 24}
!77 = !{!78, !39, i64 16}
!78 = !{!"BMLoop", !45, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!79 = !{!78, !39, i64 56}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!78, !39, i64 24}
!83 = !{!39, !39, i64 0}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !81}
!86 = !{!64, !39, i64 40}
!87 = !{!78, !39, i64 32}
!88 = !{!78, !39, i64 64}
!89 = distinct !{!89, !81}
!90 = !{!"bmesh_core.c:bm_face_create__internal"}
!91 = !{!35, !39, i64 56}
!92 = !{!75, !39, i64 0}
!93 = !{!75, !37, i64 12}
!94 = !{!75, !37, i64 13}
!95 = !{!75, !37, i64 14}
!96 = !{!35, !39, i64 120}
!97 = !{!75, !39, i64 16}
!98 = !{!75, !41, i64 48}
!99 = !{!35, !36, i64 12}
!100 = !{!"bmesh_core.c:bm_face_boundary_add"}
!101 = !{!"bmesh_core.c:bm_loop_create"}
!102 = !{!35, !39, i64 48}
!103 = !{!78, !39, i64 0}
!104 = !{!78, !37, i64 13}
!105 = !{!78, !37, i64 12}
!106 = !{!78, !37, i64 14}
!107 = !{!35, !36, i64 8}
!108 = distinct !{!108, !81}
!109 = distinct !{!109, !81}
!110 = distinct !{!110, !81}
!111 = distinct !{!111, !81}
!112 = !{!78, !39, i64 40}
!113 = distinct !{!113, !81}
!114 = distinct !{!114, !81}
!115 = distinct !{!115, !81}
!116 = distinct !{!116, !81}
!117 = distinct !{!117, !81}
!118 = !{!"bmesh_core.c:bm_kill_only_loop"}
!119 = !{!"bmesh_core.c:bm_kill_only_face"}
!120 = !{!35, !39, i64 976}
!121 = !{!"bmesh_core.c:bm_kill_only_edge"}
!122 = !{!"bmesh_core.c:bmesh_disk_edge_next"}
!123 = !{!64, !39, i64 48}
!124 = !{!"bmesh_core.c:bm_kill_only_vert"}
!125 = !{!"bmesh_core.c:bm_loop_reverse_loop"}
!126 = distinct !{!126, !81}
!127 = !{!128, !36, i64 0}
!128 = !{!"MDisps", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 16}
!129 = !{!128, !39, i64 8}
!130 = distinct !{!130, !81}
!131 = distinct !{!131, !81}
!132 = distinct !{!132, !81}
!133 = distinct !{!133, !81}
!134 = !{i8 0, i8 2}
!135 = distinct !{!135, !81}
!136 = distinct !{!136, !81}
!137 = distinct !{!137, !81}
!138 = distinct !{!138, !81}
!139 = distinct !{!139, !81}
!140 = distinct !{!140, !81}
!141 = distinct !{!141, !81}
!142 = distinct !{!142, !81}
!143 = distinct !{!143, !81}
!144 = distinct !{!144, !81}
!145 = distinct !{!145, !81}
!146 = distinct !{!146, !81}
!147 = !{!35, !39, i64 136}
!148 = !{!"bmesh_core.c:bm_elements_systag_enable"}
!149 = !{!150, !37, i64 14}
!150 = !{!"BMElemF", !45, i64 0, !39, i64 16}
!151 = distinct !{!151, !81}
!152 = !{!"bmesh_core.c:bm_loop_systag_count_radial"}
!153 = distinct !{!153, !81}
!154 = !{!"bmesh_core.c:BM_edge_other_vert"}
!155 = !{!"bmesh_core.c:disk_is_flagged"}
!156 = distinct !{!156, !81}
!157 = distinct !{!157, !81}
!158 = !{!"bmesh_core.c:bm_elements_systag_disable"}
!159 = distinct !{!159, !81}
!160 = distinct !{!160, !81}
!161 = distinct !{!161, !81}
!162 = distinct !{!162, !81}
!163 = !{!"bmesh_core.c:bm_face_create__sfme"}
!164 = distinct !{!164, !81}
!165 = !{!"bmesh_core.c:BM_verts_in_edge"}
!166 = distinct !{!166, !81}
!167 = distinct !{!167, !81}
!168 = distinct !{!168, !81}
!169 = !{!"bmesh_core.c:BM_vert_in_edge"}
!170 = distinct !{!170, !81}
!171 = distinct !{!171, !81}
!172 = distinct !{!172, !81}
!173 = distinct !{!173, !81}
!174 = distinct !{!174, !81}
!175 = distinct !{!175, !81}
!176 = !{!"bmesh_core.c:BM_edge_is_manifold"}
!177 = !{!"bmesh_core.c:_bm_elem_flag_disable"}
!178 = !{!45, !37, i64 13}
!179 = !{!"bmesh_core.c:_bm_elem_flag_enable"}
!180 = !{!"bmesh_core.c:_bm_elem_flag_test"}
!181 = distinct !{!181, !81}
!182 = distinct !{!182, !81}
!183 = distinct !{!183, !81}
!184 = distinct !{!184, !81}
!185 = distinct !{!185, !81}
!186 = distinct !{!186, !81}
!187 = distinct !{!187, !81}
!188 = distinct !{!188, !81}
!189 = distinct !{!189, !81}
!190 = distinct !{!190, !81}
!191 = distinct !{!191, !81}
!192 = !{!"bmesh_core.c:BM_iter_new"}
!193 = !{!"bmesh_core.c:BM_iter_step"}
!194 = !{!195, !39, i64 48}
!195 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!196 = distinct !{!196, !81}
!197 = !{!"bmesh_core.c:BM_edge_is_boundary"}
!198 = distinct !{!198, !81}
!199 = distinct !{!199, !81}
!200 = distinct !{!200, !81}
!201 = distinct !{!201, !81}
!202 = distinct !{!202, !81}
!203 = !{i64 0, i64 8, !83, i64 8, i64 4, !55, i64 12, i64 1, !204, i64 13, i64 1, !204, i64 14, i64 1, !204, i64 16, i64 8, !83, i64 24, i64 8, !83, i64 32, i64 4, !55, i64 36, i64 12, !204, i64 48, i64 2, !205}
!204 = !{!37, !37, i64 0}
!205 = !{!41, !41, i64 0}
!206 = !{!75, !36, i64 8}
!207 = !{!"bmesh_core.c:swap_v3_v3"}
!208 = !{!"bmesh_core.c:BM_iter_init"}
!209 = !{!195, !37, i64 60}
!210 = !{!195, !39, i64 40}
