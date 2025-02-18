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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BM_vert_create(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @BLI_mempool_alloc(ptr noundef %6) #8
  store ptr null, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 1
  store i32 -1, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 2
  store i8 1, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 3
  store i8 0, ptr %10, align 1, !tbaa !48
  %11 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 4
  store i8 0, ptr %11, align 2, !tbaa !49
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @BLI_mempool_calloc(ptr noundef nonnull %13) #8
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ null, %4 ]
  %19 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !51
  %20 = icmp eq ptr %1, null
  %21 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  br i1 %20, label %29, label %22

22:                                               ; preds = %17
  %23 = load float, ptr %1, align 4, !tbaa !52
  store float %23, ptr %21, align 4, !tbaa !52
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !52
  %26 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 1
  store float %25, ptr %26, align 4, !tbaa !52
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !52
  br label %31

29:                                               ; preds = %17
  store float 0.000000e+00, ptr %21, align 4, !tbaa !52
  %30 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %30, align 4, !tbaa !52
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi float [ 0.000000e+00, %29 ], [ %28, %22 ]
  %33 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 2
  store float %32, ptr %33, align 4, !tbaa !52
  %34 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %34, i8 0, i64 20, i1 false)
  %36 = load i8, ptr %35, align 4, !tbaa !54
  %37 = or i8 %36, 1
  store i8 %37, ptr %35, align 4, !tbaa !54
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %39 = load i8, ptr %38, align 1, !tbaa !55
  %40 = or i8 %39, 1
  store i8 %40, ptr %38, align 1, !tbaa !55
  %41 = load i32, ptr %0, align 8, !tbaa !56
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %0, align 8, !tbaa !56
  %43 = and i32 %3, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %31
  %46 = icmp eq ptr %2, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  tail call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %7) #8
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %49 = load ptr, ptr %7, align 8, !tbaa !43
  %50 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %48, ptr noundef %49, i32 noundef 27) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  store i32 -1, ptr %50, align 4, !tbaa !57
  br label %55

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %54, ptr noundef nonnull %7) #8
  br label %55

55:                                               ; preds = %47, %52, %53, %31
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @CustomData_bmesh_set_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_edge_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @BM_edge_exists(ptr noundef %1, ptr noundef %2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = tail call ptr @BLI_mempool_alloc(ptr noundef %13) #8
  store ptr null, ptr %14, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 1
  store i32 -1, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 2
  store i8 2, ptr %16, align 4, !tbaa !62
  %17 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 3
  store i8 40, ptr %17, align 1, !tbaa !63
  %18 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 4
  store i8 0, ptr %18, align 2, !tbaa !64
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  %23 = tail call ptr @BLI_mempool_calloc(ptr noundef nonnull %20) #8
  br label %24

24:                                               ; preds = %11, %22
  %25 = phi ptr [ %23, %22 ], [ null, %11 ]
  %26 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  store ptr %1, ptr %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  store ptr %2, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, i8 0, i64 40, i1 false)
  tail call void @bmesh_disk_edge_append(ptr noundef nonnull %14, ptr noundef %1) #8
  %30 = load ptr, ptr %28, align 8, !tbaa !68
  tail call void @bmesh_disk_edge_append(ptr noundef nonnull %14, ptr noundef %30) #8
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %32 = load i8, ptr %31, align 4, !tbaa !54
  %33 = or i8 %32, 2
  store i8 %33, ptr %31, align 4, !tbaa !54
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %35 = load i8, ptr %34, align 1, !tbaa !55
  %36 = or i8 %35, 2
  store i8 %36, ptr %34, align 1, !tbaa !55
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !69
  %40 = and i32 %4, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = icmp eq ptr %3, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %14) #8
  br label %47

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %46, ptr noundef nonnull %14) #8
  br label %47

47:                                               ; preds = %24, %45, %44, %8
  %48 = phi ptr [ %9, %8 ], [ %14, %44 ], [ %14, %45 ], [ %14, %24 ]
  ret ptr %48
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @bmesh_disk_edge_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BM_face_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %23, %5
  %16 = phi i64 [ %26, %23 ], [ 0, %5 ]
  %17 = phi ptr [ %28, %23 ], [ %13, %5 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  br i1 %14, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %22 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %19, i32 noundef 0)
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %22, %20 ], [ %19, %15 ]
  %25 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %24, ptr %25, align 8, !tbaa !75
  %26 = add nuw i64 %16, 1
  %27 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %30, label %15, !llvm.loop !77

30:                                               ; preds = %23
  %31 = load ptr, ptr %12, align 8, !tbaa !72
  %32 = icmp eq i8 %4, 0
  br label %33

33:                                               ; preds = %54, %30
  %34 = phi i64 [ %57, %54 ], [ 0, %30 ]
  %35 = phi ptr [ %59, %54 ], [ %31, %30 ]
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  br i1 %32, label %54, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !67
  %41 = getelementptr inbounds ptr, ptr %10, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = icmp eq ptr %40, %42
  %44 = load i32, ptr %6, align 8, !tbaa !70
  %45 = trunc i64 %34 to i32
  %46 = add i32 %45, 1
  %47 = srem i32 %46, %44
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %10, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !75
  %51 = select i1 %43, ptr %42, ptr %50
  %52 = select i1 %43, ptr %50, ptr %42
  %53 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %51, ptr noundef %52, ptr noundef %37, i32 noundef 0)
  br label %54

54:                                               ; preds = %33, %38
  %55 = phi ptr [ %53, %38 ], [ %37, %33 ]
  %56 = getelementptr inbounds ptr, ptr %11, i64 %34
  store ptr %55, ptr %56, align 8, !tbaa !75
  %57 = add nuw i64 %34, 1
  %58 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !76
  %60 = icmp eq ptr %59, %31
  br i1 %60, label %61, label %33, !llvm.loop !81

61:                                               ; preds = %54
  %62 = load i32, ptr %6, align 8, !tbaa !70
  %63 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %62, ptr noundef null, i32 noundef 4)
  call void @BM_elem_attrs_copy(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef %63) #8
  %64 = load ptr, ptr %12, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.BMFace, ptr %63, i64 0, i32 2
  br label %66

66:                                               ; preds = %66, %61
  %67 = phi ptr [ %65, %61 ], [ %70, %66 ]
  %68 = phi ptr [ %64, %61 ], [ %72, %66 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !75
  call void @BM_elem_attrs_copy(ptr noundef %1, ptr noundef %0, ptr noundef %68, ptr noundef %69) #8
  %70 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 6
  %71 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  %73 = icmp eq ptr %72, %64
  br i1 %73, label %74, label %66, !llvm.loop !82

74:                                               ; preds = %66
  ret ptr %63
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store ptr null, ptr %7, align 8, !tbaa !75
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %128, label %9

9:                                                ; preds = %6
  %10 = and i32 %5, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = call zeroext i8 @BM_face_exists(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %7) #8
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %7, align 8
  %16 = select i1 %14, ptr undef, ptr %15
  br i1 %14, label %17, label %128

17:                                               ; preds = %12, %9
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = call ptr @BLI_mempool_alloc(ptr noundef %19) #8
  store ptr null, ptr %20, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  store i32 -1, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 2
  store i8 8, ptr %22, align 4, !tbaa !85
  %23 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  store i8 0, ptr %23, align 1, !tbaa !86
  %24 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 4
  store i8 0, ptr %24, align 2, !tbaa !87
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = call ptr @BLI_mempool_calloc(ptr noundef nonnull %26) #8
  br label %30

30:                                               ; preds = %17, %28
  %31 = phi ptr [ %29, %28 ], [ null, %17 ]
  %32 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !89
  %33 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 2
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %33, i8 0, i64 26, i1 false)
  %35 = load i8, ptr %34, align 4, !tbaa !54
  %36 = or i8 %35, 8
  store i8 %36, ptr %34, align 4, !tbaa !54
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %38 = load i8, ptr %37, align 1, !tbaa !55
  %39 = or i8 %38, 8
  store i8 %39, ptr %37, align 1, !tbaa !55
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !90
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !90
  store ptr %20, ptr %7, align 8, !tbaa !75
  %43 = load ptr, ptr %1, align 8, !tbaa !75
  %44 = load ptr, ptr %2, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !91
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  %49 = call ptr @BLI_mempool_alloc(ptr noundef %48) #8
  store ptr null, ptr %49, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 1
  store i32 -1, ptr %50, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  store i8 0, ptr %51, align 1, !tbaa !94
  %52 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 2
  store i8 4, ptr %52, align 4, !tbaa !95
  %53 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 4
  store i8 0, ptr %53, align 2, !tbaa !96
  %54 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 1
  store ptr %43, ptr %54, align 8, !tbaa !73
  %55 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 2
  store ptr %44, ptr %55, align 8, !tbaa !80
  %56 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 3
  store ptr %20, ptr %56, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %57, i8 0, i64 32, i1 false)
  %58 = load i8, ptr %34, align 4, !tbaa !54
  %59 = or i8 %58, 4
  store i8 %59, ptr %34, align 4, !tbaa !54
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !98
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !98
  %63 = and i32 %5, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %30
  %66 = icmp eq ptr %46, null
  %67 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br i1 %66, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %46, align 8, !tbaa !93
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %67, ptr noundef nonnull %67, ptr noundef %69, ptr noundef nonnull %49) #8
  br label %71

70:                                               ; preds = %65
  call void @CustomData_bmesh_set_default(ptr noundef nonnull %67, ptr noundef nonnull %49) #8
  br label %71

71:                                               ; preds = %30, %68, %70
  call void @bmesh_radial_append(ptr noundef %44, ptr noundef nonnull %49) #8
  store ptr %49, ptr %33, align 8, !tbaa !72
  store ptr %20, ptr %56, align 8, !tbaa !97
  %72 = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %72, ptr %54, align 8, !tbaa !73
  %73 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %73, ptr %55, align 8, !tbaa !80
  %74 = icmp sgt i32 %3, 1
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %77 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %78 = zext nneg i32 %3 to i64
  br label %79

79:                                               ; preds = %75, %108
  %80 = phi i64 [ 1, %75 ], [ %113, %108 ]
  %81 = phi ptr [ %49, %75 ], [ %90, %108 ]
  %82 = getelementptr inbounds ptr, ptr %1, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  %84 = getelementptr inbounds ptr, ptr %2, i64 %80
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = load ptr, ptr %7, align 8, !tbaa !75
  %87 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !91
  %89 = load ptr, ptr %47, align 8, !tbaa !92
  %90 = call ptr @BLI_mempool_alloc(ptr noundef %89) #8
  store ptr null, ptr %90, align 8, !tbaa !93
  %91 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 1
  store i32 -1, ptr %91, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 3
  store i8 0, ptr %92, align 1, !tbaa !94
  %93 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 2
  store i8 4, ptr %93, align 4, !tbaa !95
  %94 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 4
  store i8 0, ptr %94, align 2, !tbaa !96
  %95 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 1
  store ptr %83, ptr %95, align 8, !tbaa !73
  %96 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 2
  store ptr %85, ptr %96, align 8, !tbaa !80
  %97 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 3
  store ptr %86, ptr %97, align 8, !tbaa !97
  %98 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %98, i8 0, i64 32, i1 false)
  %99 = load i8, ptr %34, align 4, !tbaa !54
  %100 = or i8 %99, 4
  store i8 %100, ptr %34, align 4, !tbaa !54
  %101 = load i32, ptr %60, align 8, !tbaa !98
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %60, align 8, !tbaa !98
  br i1 %64, label %103, label %108

103:                                              ; preds = %79
  %104 = icmp eq ptr %88, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr %88, align 8, !tbaa !93
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %76, ptr noundef nonnull %76, ptr noundef %106, ptr noundef nonnull %90) #8
  br label %108

107:                                              ; preds = %103
  call void @CustomData_bmesh_set_default(ptr noundef nonnull %77, ptr noundef nonnull %90) #8
  br label %108

108:                                              ; preds = %79, %105, %107
  %109 = load ptr, ptr %7, align 8, !tbaa !75
  store ptr %109, ptr %97, align 8, !tbaa !97
  %110 = load ptr, ptr %84, align 8, !tbaa !75
  call void @bmesh_radial_append(ptr noundef %110, ptr noundef nonnull %90) #8
  %111 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 7
  store ptr %81, ptr %111, align 8, !tbaa !99
  %112 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 6
  store ptr %90, ptr %112, align 8, !tbaa !76
  %113 = add nuw nsw i64 %80, 1
  %114 = icmp eq i64 %113, %78
  br i1 %114, label %115, label %79, !llvm.loop !100

115:                                              ; preds = %108, %71
  %116 = phi ptr [ %49, %71 ], [ %90, %108 ]
  %117 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 7
  store ptr %116, ptr %117, align 8, !tbaa !99
  %118 = getelementptr inbounds %struct.BMLoop, ptr %116, i64 0, i32 6
  store ptr %49, ptr %118, align 8, !tbaa !76
  %119 = load ptr, ptr %7, align 8, !tbaa !75
  %120 = getelementptr inbounds %struct.BMFace, ptr %119, i64 0, i32 3
  store i32 %3, ptr %120, align 8, !tbaa !70
  br i1 %64, label %121, label %126

121:                                              ; preds = %115
  %122 = icmp eq ptr %4, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %119) #8
  br label %126

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  call void @CustomData_bmesh_set_default(ptr noundef nonnull %125, ptr noundef %119) #8
  br label %126

126:                                              ; preds = %123, %124, %115
  %127 = load ptr, ptr %7, align 8, !tbaa !75
  br label %128

128:                                              ; preds = %6, %12, %126
  %129 = phi ptr [ %127, %126 ], [ %16, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %129
}

declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bmesh_radial_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds ptr, ptr %1, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %24, ptr noundef %26, ptr noundef null, i32 noundef 2)
  %28 = getelementptr inbounds ptr, ptr %9, i64 %22
  store ptr %27, ptr %28, align 8, !tbaa !75
  %29 = add nuw nsw i64 %20, 1
  %30 = trunc i64 %20 to i32
  %31 = icmp eq i64 %29, %15
  br i1 %31, label %47, label %19, !llvm.loop !101

32:                                               ; preds = %36
  %33 = add nuw nsw i64 %37, 1
  %34 = trunc i64 %37 to i32
  %35 = icmp eq i64 %33, %18
  br i1 %35, label %47, label %36, !llvm.loop !102

36:                                               ; preds = %17, %32
  %37 = phi i64 [ 0, %17 ], [ %33, %32 ]
  %38 = phi i32 [ %10, %17 ], [ %34, %32 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !75
  %42 = getelementptr inbounds ptr, ptr %1, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = tail call ptr @BM_edge_exists(ptr noundef %41, ptr noundef %43) #8
  %45 = getelementptr inbounds ptr, ptr %9, i64 %39
  store ptr %44, ptr %45, align 8, !tbaa !75
  %46 = icmp eq ptr %44, null
  br i1 %46, label %49, label %32

47:                                               ; preds = %19, %32, %13, %16
  %48 = call ptr @BM_face_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %49

49:                                               ; preds = %36, %47
  %50 = phi ptr [ %48, %47 ], [ null, %36 ]
  ret ptr %50
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_edges_kill(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi i64 [ %15, %10 ], [ 0, %2 ]
  %12 = phi ptr [ %18, %10 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = add nuw i64 %11, 1
  %16 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %14, ptr %16, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !103

20:                                               ; preds = %10
  %21 = load i32, ptr %3, align 8, !tbaa !70
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %20 ]
  %25 = getelementptr inbounds ptr, ptr %7, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef %26)
  %27 = add nuw nsw i64 %24, 1
  %28 = load i32, ptr %3, align 8, !tbaa !70
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %23, label %31, !llvm.loop !104

31:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_edge_kill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  tail call void @bmesh_disk_edge_remove(ptr noundef %1, ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  tail call void @bmesh_disk_edge_remove(ptr noundef %1, ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2, %19
  %11 = phi ptr [ %13, %19 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = icmp eq ptr %15, %17
  tail call void @BM_face_kill(ptr noundef %0, ptr noundef %17)
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = icmp eq ptr %11, %13
  %21 = icmp eq ptr %13, %8
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %10, !llvm.loop !106

23:                                               ; preds = %19, %10, %2
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !69
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %28 = load i8, ptr %27, align 4, !tbaa !54
  %29 = or i8 %28, 2
  store i8 %29, ptr %27, align 4, !tbaa !54
  %30 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %31 = load i8, ptr %30, align 1, !tbaa !55
  %32 = or i8 %31, 2
  store i8 %32, ptr %30, align 1, !tbaa !55
  %33 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %0, ptr noundef %1) #8
  %34 = load ptr, ptr %1, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %37, ptr noundef nonnull %1) #8
  br label %38

38:                                               ; preds = %36, %23
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  tail call void @BLI_mempool_free(ptr noundef nonnull %40, ptr noundef %44) #8
  br label %45

45:                                               ; preds = %38, %42
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  tail call void @BLI_mempool_free(ptr noundef %47, ptr noundef nonnull %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_verts_kill(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi i64 [ %15, %10 ], [ 0, %2 ]
  %12 = phi ptr [ %18, %10 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = add nuw i64 %11, 1
  %16 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %14, ptr %16, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !107

20:                                               ; preds = %10
  %21 = load i32, ptr %3, align 8, !tbaa !70
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %20 ]
  %25 = getelementptr inbounds ptr, ptr %7, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef %26)
  %27 = add nuw nsw i64 %24, 1
  %28 = load i32, ptr %3, align 8, !tbaa !70
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %23, label %31, !llvm.loop !108

31:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_kill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !109
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %17, %9 ], [ %4, %6 ]
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 5
  %12 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = icmp eq ptr %13, %1
  %15 = zext i1 %14 to i64
  %16 = getelementptr inbounds %struct.BMDiskLink, ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef %10)
  %18 = load ptr, ptr %3, align 8, !tbaa !109
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !111

20:                                               ; preds = %9, %6, %2
  %21 = load i32, ptr %0, align 8, !tbaa !56
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %0, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %24 = load i8, ptr %23, align 4, !tbaa !54
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %27 = load i8, ptr %26, align 1, !tbaa !55
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 1, !tbaa !55
  %29 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %0, ptr noundef %1) #8
  %30 = load ptr, ptr %1, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %33, ptr noundef nonnull %1) #8
  br label %34

34:                                               ; preds = %32, %20
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  tail call void @BLI_mempool_free(ptr noundef nonnull %36, ptr noundef %40) #8
  br label %41

41:                                               ; preds = %34, %38
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  tail call void @BLI_mempool_free(ptr noundef %43, ptr noundef nonnull %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_kill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  br label %11

11:                                               ; preds = %6, %24
  %12 = phi ptr [ %14, %24 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  tail call void @bmesh_radial_loop_remove(ptr noundef %12, ptr noundef %16) #8
  %17 = load i32, ptr %7, align 8, !tbaa !98
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %7, align 8, !tbaa !98
  %19 = load i8, ptr %8, align 4, !tbaa !54
  %20 = or i8 %19, 4
  store i8 %20, ptr %8, align 4, !tbaa !54
  %21 = load ptr, ptr %12, align 8, !tbaa !93
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %9, ptr noundef nonnull %12) #8
  br label %24

24:                                               ; preds = %11, %23
  %25 = load ptr, ptr %10, align 8, !tbaa !92
  tail call void @BLI_mempool_free(ptr noundef %25, ptr noundef nonnull %12) #8
  %26 = icmp eq ptr %14, %4
  br i1 %26, label %27, label %11, !llvm.loop !112

27:                                               ; preds = %24, %2
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store ptr null, ptr %28, align 8, !tbaa !113
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !90
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %33, align 4, !tbaa !90
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %37 = load i8, ptr %36, align 4, !tbaa !54
  %38 = or i8 %37, 8
  store i8 %38, ptr %36, align 4, !tbaa !54
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %40 = load i8, ptr %39, align 1, !tbaa !55
  %41 = or i8 %40, 8
  store i8 %41, ptr %39, align 1, !tbaa !55
  %42 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %0, ptr noundef %1) #8
  %43 = load ptr, ptr %1, align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %46, ptr noundef nonnull %1) #8
  br label %47

47:                                               ; preds = %45, %32
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  tail call void @BLI_mempool_free(ptr noundef nonnull %49, ptr noundef %53) #8
  br label %54

54:                                               ; preds = %47, %51
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  tail call void @BLI_mempool_free(ptr noundef %56, ptr noundef nonnull %1) #8
  ret void
}

declare void @bmesh_radial_loop_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmesh_disk_edge_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @bm_loop_reverse_loop(ptr noundef %0, ptr noundef %1)
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_loop_reverse_loop(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 19) #8
  %9 = sext i32 %6 to i64
  %10 = shl nsw i64 %9, 3
  %11 = alloca i8, i64 %10, align 16
  %12 = icmp sgt i32 %6, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = zext nneg i32 %6 to i64
  br label %19

15:                                               ; preds = %19, %2
  %16 = icmp sgt i32 %6, 0
  br i1 %16, label %17, label %100

17:                                               ; preds = %15
  %18 = icmp eq i8 %8, 0
  br label %29

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %25, %19 ]
  %21 = phi ptr [ %4, %13 ], [ %27, %19 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %23, ptr %24, align 8, !tbaa !75
  tail call void @bmesh_radial_loop_remove(ptr noundef %21, ptr noundef %23) #8
  %25 = add nuw nsw i64 %20, 1
  %26 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = icmp eq i64 %25, %14
  br i1 %28, label %15, label %19, !llvm.loop !114

29:                                               ; preds = %17, %97
  %30 = phi ptr [ %4, %17 ], [ %33, %97 ]
  %31 = phi i32 [ 0, %17 ], [ %98, %97 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !99
  store ptr %35, ptr %32, align 8, !tbaa !76
  store ptr %33, ptr %34, align 8, !tbaa !99
  br i1 %18, label %97, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %33, align 8, !tbaa !93
  %38 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %7, ptr noundef %37, i32 noundef 19) #8
  %39 = load i32, ptr %38, align 8, !tbaa !115
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %97, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.MDisps, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !117
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45

45:                                               ; preds = %41
  %46 = sitofp i32 %39 to double
  %47 = tail call double @sqrt(double noundef %46) #8
  %48 = fptosi double %47 to i32
  %49 = load ptr, ptr %42, align 8, !tbaa !117
  %50 = icmp sgt i32 %48, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = add nuw i32 %48, 1
  %53 = zext nneg i32 %48 to i64
  %54 = zext nneg i32 %48 to i64
  br label %55

55:                                               ; preds = %51, %87
  %56 = phi i64 [ 0, %51 ], [ %95, %87 ]
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %55
  %59 = trunc i64 %56 to i32
  %60 = mul i32 %59, %48
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %58, %62
  %63 = phi i64 [ 0, %58 ], [ %85, %62 ]
  %64 = mul nsw i64 %63, %53
  %65 = add nuw nsw i64 %64, %56
  %66 = getelementptr inbounds [3 x float], ptr %49, i64 %65
  %67 = add nuw nsw i64 %63, %61
  %68 = getelementptr inbounds [3 x float], ptr %49, i64 %67
  %69 = load float, ptr %66, align 4, !tbaa !52
  %70 = load float, ptr %68, align 4, !tbaa !52
  store float %70, ptr %66, align 4, !tbaa !52
  store float %69, ptr %68, align 4, !tbaa !52
  %71 = getelementptr inbounds float, ptr %66, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !52
  %73 = getelementptr inbounds float, ptr %68, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !52
  store float %74, ptr %71, align 4, !tbaa !52
  store float %72, ptr %73, align 4, !tbaa !52
  %75 = getelementptr inbounds float, ptr %66, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !52
  %77 = getelementptr inbounds float, ptr %68, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !52
  store float %78, ptr %75, align 4, !tbaa !52
  store float %76, ptr %77, align 4, !tbaa !52
  %79 = load float, ptr %66, align 4, !tbaa !52
  %80 = getelementptr inbounds [3 x float], ptr %49, i64 %65, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !52
  store float %81, ptr %66, align 4, !tbaa !52
  store float %79, ptr %80, align 4, !tbaa !52
  %82 = load float, ptr %68, align 4, !tbaa !52
  %83 = getelementptr inbounds [3 x float], ptr %49, i64 %67, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !52
  store float %84, ptr %68, align 4, !tbaa !52
  store float %82, ptr %83, align 4, !tbaa !52
  %85 = add nuw nsw i64 %63, 1
  %86 = icmp eq i64 %85, %56
  br i1 %86, label %87, label %62, !llvm.loop !118

87:                                               ; preds = %62, %55
  %88 = trunc i64 %56 to i32
  %89 = mul i32 %52, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x float], ptr %49, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !52
  %93 = getelementptr inbounds [3 x float], ptr %49, i64 %90, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !52
  store float %94, ptr %91, align 4, !tbaa !52
  store float %92, ptr %93, align 4, !tbaa !52
  %95 = add nuw nsw i64 %56, 1
  %96 = icmp eq i64 %95, %54
  br i1 %96, label %97, label %55, !llvm.loop !119

97:                                               ; preds = %87, %45, %41, %36, %29
  %98 = add nuw nsw i32 %31, 1
  %99 = icmp eq i32 %98, %6
  br i1 %99, label %100, label %29, !llvm.loop !120

100:                                              ; preds = %97, %15
  %101 = icmp eq i32 %6, 2
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = icmp sgt i32 %6, 0
  br i1 %103, label %104, label %154

104:                                              ; preds = %102
  %105 = zext nneg i32 %6 to i64
  br label %114

106:                                              ; preds = %100
  %107 = getelementptr inbounds ptr, ptr %11, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  %109 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !80
  %110 = load ptr, ptr %11, align 16, !tbaa !75
  %111 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !76
  %113 = getelementptr inbounds %struct.BMLoop, ptr %112, i64 0, i32 2
  store ptr %110, ptr %113, align 8, !tbaa !80
  br label %154

114:                                              ; preds = %104, %149
  %115 = phi ptr [ %152, %149 ], [ %4, %104 ]
  %116 = phi i32 [ %150, %149 ], [ 0, %104 ]
  %117 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !73
  %119 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !76
  %121 = getelementptr inbounds %struct.BMLoop, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !73
  br label %126

123:                                              ; preds = %144
  %124 = add nuw nsw i64 %127, 1
  %125 = icmp eq i64 %124, %105
  br i1 %125, label %149, label %126, !llvm.loop !121

126:                                              ; preds = %114, %123
  %127 = phi i64 [ 0, %114 ], [ %124, %123 ]
  %128 = getelementptr inbounds ptr, ptr %11, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !75
  %130 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !67
  %132 = icmp eq ptr %131, %118
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !68
  %136 = icmp eq ptr %135, %122
  br i1 %136, label %144, label %137

137:                                              ; preds = %133, %126
  %138 = icmp eq ptr %131, %122
  br i1 %138, label %139, label %144

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !68
  %142 = icmp eq ptr %141, %118
  %143 = zext i1 %142 to i8
  br label %144

144:                                              ; preds = %133, %137, %139
  %145 = phi i8 [ 1, %133 ], [ 0, %137 ], [ %143, %139 ]
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %123, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 2
  store ptr %129, ptr %148, align 8, !tbaa !80
  br label %149

149:                                              ; preds = %123, %147
  %150 = add nuw nsw i32 %116, 1
  %151 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !76
  %153 = icmp eq i32 %150, %6
  br i1 %153, label %154, label %114, !llvm.loop !122

154:                                              ; preds = %149, %102, %106
  %155 = icmp sgt i32 %6, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %154, %156
  %157 = phi ptr [ %163, %156 ], [ %4, %154 ]
  %158 = phi i32 [ %161, %156 ], [ 0, %154 ]
  %159 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !80
  tail call void @bmesh_radial_append(ptr noundef %160, ptr noundef %157) #8
  %161 = add nuw nsw i32 %158, 1
  %162 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 6
  %163 = load ptr, ptr %162, align 8, !tbaa !76
  %164 = icmp eq i32 %161, %6
  br i1 %164, label %165, label %156, !llvm.loop !123

165:                                              ; preds = %156, %154
  %166 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %167 = load i8, ptr %166, align 4, !tbaa !54
  %168 = or i8 %167, 4
  store i8 %168, ptr %166, align 4, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_faces_join(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [32 x ptr], align 16
  %9 = alloca [32 x ptr], align 16
  %10 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store ptr null, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store ptr null, ptr %7, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #8
  switch i32 %2, label %11 [
    i32 0, label %15
    i32 1, label %18
  ]

11:                                               ; preds = %4
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  br label %27

15:                                               ; preds = %4
  %16 = load ptr, ptr @stderr, align 8, !tbaa !75
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.BM_faces_join, i32 noundef 1077, ptr noundef nonnull @.str.2) #9
  br label %544

18:                                               ; preds = %4
  %19 = load ptr, ptr %1, align 8, !tbaa !75
  br label %544

20:                                               ; preds = %27, %11
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %346

22:                                               ; preds = %20
  %23 = icmp eq i8 %3, 0
  %24 = icmp eq i8 %3, 0
  %25 = icmp eq i8 %3, 0
  %26 = zext nneg i32 %2 to i64
  br label %36

27:                                               ; preds = %13, %27
  %28 = phi i64 [ 0, %13 ], [ %34, %27 ]
  %29 = getelementptr inbounds ptr, ptr %1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 4
  %32 = load i8, ptr %31, align 2, !tbaa !124
  %33 = or i8 %32, 1
  store i8 %33, ptr %31, align 2, !tbaa !124
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %14
  br i1 %35, label %20, label %27, !llvm.loop !126

36:                                               ; preds = %22, %343
  %37 = phi i64 [ 0, %22 ], [ %344, %343 ]
  %38 = phi i32 [ 0, %22 ], [ %337, %343 ]
  %39 = phi ptr [ null, %22 ], [ %336, %343 ]
  %40 = phi ptr [ null, %22 ], [ %335, %343 ]
  %41 = phi ptr [ null, %22 ], [ %334, %343 ]
  %42 = phi i32 [ 0, %22 ], [ %333, %343 ]
  %43 = phi i32 [ 0, %22 ], [ %332, %343 ]
  %44 = phi i32 [ 0, %22 ], [ %331, %343 ]
  %45 = getelementptr inbounds ptr, ptr %1, i64 %37
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  br label %49

49:                                               ; preds = %339, %36
  %50 = phi i32 [ %44, %36 ], [ %331, %339 ]
  %51 = phi i32 [ %43, %36 ], [ %332, %339 ]
  %52 = phi i32 [ %42, %36 ], [ %333, %339 ]
  %53 = phi ptr [ %41, %36 ], [ %334, %339 ]
  %54 = phi ptr [ %40, %36 ], [ %335, %339 ]
  %55 = phi ptr [ %39, %36 ], [ %336, %339 ]
  %56 = phi i32 [ %38, %36 ], [ %337, %339 ]
  %57 = phi ptr [ %48, %36 ], [ %341, %339 ]
  br label %58

58:                                               ; preds = %58, %49
  %59 = phi ptr [ %57, %49 ], [ %69, %58 ]
  %60 = phi i32 [ 0, %49 ], [ %67, %58 ]
  %61 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !97
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 4
  %64 = load i8, ptr %63, align 2, !tbaa !87
  %65 = and i8 %64, 1
  %66 = zext nneg i8 %65 to i32
  %67 = add nuw nsw i32 %60, %66
  %68 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !105
  %70 = icmp eq ptr %69, %57
  br i1 %70, label %71, label %58, !llvm.loop !127

71:                                               ; preds = %58
  %72 = icmp ugt i32 %67, 2
  br i1 %72, label %330, label %73

73:                                               ; preds = %71
  switch i32 %67, label %330 [
    i32 1, label %74
    i32 2, label %117
  ]

74:                                               ; preds = %73
  %75 = load ptr, ptr %5, align 8
  %76 = icmp eq ptr %75, null
  %77 = add nsw i32 %50, 1
  %78 = icmp ult i32 %77, 33
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store ptr %8, ptr %5, align 8, !tbaa !75
  br label %94

81:                                               ; preds = %74
  %82 = icmp eq ptr %75, %8
  %83 = or i1 %82, %76
  %84 = select i1 %82, i64 32, i64 0
  br i1 %83, label %89, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
  %87 = call i64 %86(ptr noundef nonnull %75) #8
  %88 = lshr i64 %87, 3
  br label %89

89:                                               ; preds = %81, %85
  %90 = phi i64 [ %84, %81 ], [ %88, %85 ]
  %91 = sext i32 %77 to i64
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %50, i32 noundef 1, ptr noundef nonnull @.str.4) #8
  br label %94

94:                                               ; preds = %93, %89, %80
  %95 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !80
  %97 = load ptr, ptr %5, align 8, !tbaa !75
  %98 = sext i32 %50 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  store ptr %96, ptr %99, align 8, !tbaa !75
  %100 = icmp eq ptr %53, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !73
  %104 = load ptr, ptr %95, align 8, !tbaa !80
  %105 = getelementptr inbounds %struct.BMEdge, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !67
  %107 = icmp eq ptr %106, %103
  %108 = getelementptr inbounds %struct.BMEdge, ptr %104, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !68
  br i1 %107, label %113, label %110

110:                                              ; preds = %101
  %111 = icmp eq ptr %109, %103
  %112 = select i1 %111, ptr %106, ptr null
  br label %113

113:                                              ; preds = %101, %110, %94
  %114 = phi ptr [ %53, %94 ], [ %103, %110 ], [ %103, %101 ]
  %115 = phi ptr [ %54, %94 ], [ %112, %110 ], [ %109, %101 ]
  %116 = add nsw i32 %56, 1
  br label %330

117:                                              ; preds = %73
  %118 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !80
  %120 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !67
  %122 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !109
  %124 = icmp eq ptr %123, null
  br i1 %124, label %156, label %125

125:                                              ; preds = %117, %146
  %126 = phi ptr [ %153, %146 ], [ %123, %117 ]
  %127 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !91
  %129 = icmp eq ptr %128, null
  br i1 %129, label %156, label %130

130:                                              ; preds = %125
  %131 = call i32 @bmesh_radial_length(ptr noundef nonnull %128) #8
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %156, label %133

133:                                              ; preds = %130, %141
  %134 = phi ptr [ %143, %141 ], [ %128, %130 ]
  %135 = getelementptr inbounds %struct.BMLoop, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !97
  %137 = getelementptr inbounds %struct.BMHeader, ptr %136, i64 0, i32 4
  %138 = load i8, ptr %137, align 2, !tbaa !87
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.BMLoop, ptr %134, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !105
  %144 = load ptr, ptr %127, align 8, !tbaa !91
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %133, !llvm.loop !128

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 5
  %148 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !68
  %150 = icmp eq ptr %149, %121
  %151 = zext i1 %150 to i64
  %152 = getelementptr inbounds %struct.BMDiskLink, ptr %147, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !110
  %154 = load ptr, ptr %122, align 8, !tbaa !109
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %156, label %125, !llvm.loop !129

156:                                              ; preds = %125, %130, %146, %133, %117
  %157 = phi i1 [ false, %117 ], [ false, %133 ], [ true, %146 ], [ false, %130 ], [ false, %125 ]
  %158 = load ptr, ptr %118, align 8, !tbaa !80
  %159 = getelementptr inbounds %struct.BMEdge, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !68
  %161 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !109
  %163 = icmp eq ptr %162, null
  br i1 %163, label %195, label %164

164:                                              ; preds = %156, %185
  %165 = phi ptr [ %192, %185 ], [ %162, %156 ]
  %166 = getelementptr inbounds %struct.BMEdge, ptr %165, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !91
  %168 = icmp eq ptr %167, null
  br i1 %168, label %195, label %169

169:                                              ; preds = %164
  %170 = call i32 @bmesh_radial_length(ptr noundef nonnull %167) #8
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %195, label %172

172:                                              ; preds = %169, %180
  %173 = phi ptr [ %182, %180 ], [ %167, %169 ]
  %174 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !97
  %176 = getelementptr inbounds %struct.BMHeader, ptr %175, i64 0, i32 4
  %177 = load i8, ptr %176, align 2, !tbaa !87
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %195, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !105
  %183 = load ptr, ptr %166, align 8, !tbaa !91
  %184 = icmp eq ptr %182, %183
  br i1 %184, label %185, label %172, !llvm.loop !128

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.BMEdge, ptr %165, i64 0, i32 5
  %187 = getelementptr inbounds %struct.BMEdge, ptr %165, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !68
  %189 = icmp eq ptr %188, %160
  %190 = zext i1 %189 to i64
  %191 = getelementptr inbounds %struct.BMDiskLink, ptr %186, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !110
  %193 = load ptr, ptr %161, align 8, !tbaa !109
  %194 = icmp eq ptr %192, %193
  br i1 %194, label %195, label %164, !llvm.loop !129

195:                                              ; preds = %164, %169, %185, %172, %156
  %196 = phi i1 [ false, %156 ], [ false, %172 ], [ true, %185 ], [ false, %169 ], [ false, %164 ]
  %197 = or i1 %157, %196
  br i1 %197, label %239, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %118, align 8, !tbaa !80
  %200 = getelementptr inbounds %struct.BMHeader, ptr %199, i64 0, i32 4
  %201 = load i8, ptr %200, align 2, !tbaa !64
  %202 = and i8 %201, 1
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %239

204:                                              ; preds = %198
  %205 = call i32 @BM_edge_face_count(ptr noundef %199) #8
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %207, label %330

207:                                              ; preds = %204
  br i1 %23, label %233, label %208

208:                                              ; preds = %207
  %209 = load ptr, ptr %6, align 8
  %210 = icmp eq ptr %209, null
  %211 = add nsw i32 %51, 1
  %212 = icmp ult i32 %211, 33
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  store ptr %9, ptr %6, align 8, !tbaa !75
  br label %228

215:                                              ; preds = %208
  %216 = icmp eq ptr %209, %9
  %217 = or i1 %216, %210
  %218 = select i1 %216, i64 32, i64 0
  br i1 %217, label %223, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
  %221 = call i64 %220(ptr noundef nonnull %209) #8
  %222 = lshr i64 %221, 3
  br label %223

223:                                              ; preds = %215, %219
  %224 = phi i64 [ %218, %215 ], [ %222, %219 ]
  %225 = sext i32 %211 to i64
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef nonnull %9, i32 noundef 8, i32 noundef %51, i32 noundef 1, ptr noundef nonnull @.str.5) #8
  br label %228

228:                                              ; preds = %227, %223, %214
  %229 = load ptr, ptr %118, align 8, !tbaa !80
  %230 = load ptr, ptr %6, align 8, !tbaa !75
  %231 = sext i32 %51 to i64
  %232 = getelementptr inbounds ptr, ptr %230, i64 %231
  store ptr %229, ptr %232, align 8, !tbaa !75
  br label %233

233:                                              ; preds = %228, %207
  %234 = phi i32 [ %211, %228 ], [ %51, %207 ]
  %235 = load ptr, ptr %118, align 8, !tbaa !80
  %236 = getelementptr inbounds %struct.BMHeader, ptr %235, i64 0, i32 4
  %237 = load i8, ptr %236, align 2, !tbaa !64
  %238 = or i8 %237, 1
  store i8 %238, ptr %236, align 2, !tbaa !64
  br label %330

239:                                              ; preds = %198, %195
  br i1 %157, label %240, label %284

240:                                              ; preds = %239
  %241 = load ptr, ptr %118, align 8, !tbaa !80
  %242 = getelementptr inbounds %struct.BMEdge, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !67
  %244 = getelementptr inbounds %struct.BMHeader, ptr %243, i64 0, i32 4
  %245 = load i8, ptr %244, align 2, !tbaa !49
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %284

248:                                              ; preds = %240
  br i1 %24, label %276, label %249

249:                                              ; preds = %248
  %250 = load ptr, ptr %7, align 8
  %251 = icmp eq ptr %250, null
  %252 = add nsw i32 %52, 1
  %253 = icmp ult i32 %252, 33
  %254 = select i1 %251, i1 %253, i1 false
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  store ptr %10, ptr %7, align 8, !tbaa !75
  br label %269

256:                                              ; preds = %249
  %257 = icmp eq ptr %250, %10
  %258 = or i1 %257, %251
  %259 = select i1 %257, i64 32, i64 0
  br i1 %258, label %264, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
  %262 = call i64 %261(ptr noundef nonnull %250) #8
  %263 = lshr i64 %262, 3
  br label %264

264:                                              ; preds = %256, %260
  %265 = phi i64 [ %259, %256 ], [ %263, %260 ]
  %266 = sext i32 %252 to i64
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %52, i32 noundef 1, ptr noundef nonnull @.str.6) #8
  br label %269

269:                                              ; preds = %268, %264, %255
  %270 = load ptr, ptr %118, align 8, !tbaa !80
  %271 = getelementptr inbounds %struct.BMEdge, ptr %270, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !67
  %273 = load ptr, ptr %7, align 8, !tbaa !75
  %274 = sext i32 %52 to i64
  %275 = getelementptr inbounds ptr, ptr %273, i64 %274
  store ptr %272, ptr %275, align 8, !tbaa !75
  br label %276

276:                                              ; preds = %269, %248
  %277 = phi i32 [ %252, %269 ], [ %52, %248 ]
  %278 = load ptr, ptr %118, align 8, !tbaa !80
  %279 = getelementptr inbounds %struct.BMEdge, ptr %278, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !67
  %281 = getelementptr inbounds %struct.BMHeader, ptr %280, i64 0, i32 4
  %282 = load i8, ptr %281, align 2, !tbaa !49
  %283 = or i8 %282, 1
  store i8 %283, ptr %281, align 2, !tbaa !49
  br label %284

284:                                              ; preds = %276, %240, %239
  %285 = phi i32 [ %52, %240 ], [ %277, %276 ], [ %52, %239 ]
  br i1 %196, label %286, label %330

286:                                              ; preds = %284
  %287 = load ptr, ptr %118, align 8, !tbaa !80
  %288 = getelementptr inbounds %struct.BMEdge, ptr %287, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !68
  %290 = getelementptr inbounds %struct.BMHeader, ptr %289, i64 0, i32 4
  %291 = load i8, ptr %290, align 2, !tbaa !49
  %292 = and i8 %291, 1
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %330

294:                                              ; preds = %286
  br i1 %25, label %322, label %295

295:                                              ; preds = %294
  %296 = load ptr, ptr %7, align 8
  %297 = icmp eq ptr %296, null
  %298 = add nsw i32 %285, 1
  %299 = icmp ult i32 %298, 33
  %300 = select i1 %297, i1 %299, i1 false
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  store ptr %10, ptr %7, align 8, !tbaa !75
  br label %315

302:                                              ; preds = %295
  %303 = icmp eq ptr %296, %10
  %304 = or i1 %303, %297
  %305 = select i1 %303, i64 32, i64 0
  br i1 %304, label %310, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
  %308 = call i64 %307(ptr noundef nonnull %296) #8
  %309 = lshr i64 %308, 3
  br label %310

310:                                              ; preds = %302, %306
  %311 = phi i64 [ %305, %302 ], [ %309, %306 ]
  %312 = sext i32 %298 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %285, i32 noundef 1, ptr noundef nonnull @.str.6) #8
  br label %315

315:                                              ; preds = %314, %310, %301
  %316 = load ptr, ptr %118, align 8, !tbaa !80
  %317 = getelementptr inbounds %struct.BMEdge, ptr %316, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !68
  %319 = load ptr, ptr %7, align 8, !tbaa !75
  %320 = sext i32 %285 to i64
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %318, ptr %321, align 8, !tbaa !75
  br label %322

322:                                              ; preds = %315, %294
  %323 = phi i32 [ %298, %315 ], [ %285, %294 ]
  %324 = load ptr, ptr %118, align 8, !tbaa !80
  %325 = getelementptr inbounds %struct.BMEdge, ptr %324, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !68
  %327 = getelementptr inbounds %struct.BMHeader, ptr %326, i64 0, i32 4
  %328 = load i8, ptr %327, align 2, !tbaa !49
  %329 = or i8 %328, 1
  store i8 %329, ptr %327, align 2, !tbaa !49
  br label %330

330:                                              ; preds = %113, %73, %284, %286, %322, %204, %233, %71
  %331 = phi i32 [ %50, %71 ], [ %77, %113 ], [ %50, %73 ], [ %50, %284 ], [ %50, %286 ], [ %50, %322 ], [ %50, %204 ], [ %50, %233 ]
  %332 = phi i32 [ %51, %71 ], [ %51, %113 ], [ %51, %73 ], [ %51, %284 ], [ %51, %286 ], [ %51, %322 ], [ %51, %204 ], [ %234, %233 ]
  %333 = phi i32 [ %52, %71 ], [ %52, %113 ], [ %52, %73 ], [ %285, %284 ], [ %285, %286 ], [ %323, %322 ], [ %52, %204 ], [ %52, %233 ]
  %334 = phi ptr [ %53, %71 ], [ %114, %113 ], [ %53, %73 ], [ %53, %284 ], [ %53, %286 ], [ %53, %322 ], [ %53, %204 ], [ %53, %233 ]
  %335 = phi ptr [ %54, %71 ], [ %115, %113 ], [ %54, %73 ], [ %54, %284 ], [ %54, %286 ], [ %54, %322 ], [ %54, %204 ], [ %54, %233 ]
  %336 = phi ptr [ @.str.3, %71 ], [ %55, %113 ], [ %55, %73 ], [ %55, %284 ], [ %55, %286 ], [ %55, %322 ], [ %55, %204 ], [ %55, %233 ]
  %337 = phi i32 [ %56, %71 ], [ %116, %113 ], [ %56, %73 ], [ %56, %284 ], [ %56, %286 ], [ %56, %322 ], [ %56, %204 ], [ %56, %233 ]
  %338 = phi i32 [ 7, %71 ], [ 0, %113 ], [ 0, %73 ], [ 0, %284 ], [ 0, %286 ], [ 0, %322 ], [ 0, %204 ], [ 0, %233 ]
  switch i32 %338, label %544 [
    i32 0, label %339
    i32 7, label %504
  ]

339:                                              ; preds = %330
  %340 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 6
  %341 = load ptr, ptr %340, align 8, !tbaa !76
  %342 = icmp eq ptr %341, %48
  br i1 %342, label %343, label %49, !llvm.loop !130

343:                                              ; preds = %339
  %344 = add nuw nsw i64 %37, 1
  %345 = icmp eq i64 %344, %26
  br i1 %345, label %346, label %36, !llvm.loop !131

346:                                              ; preds = %343, %20
  %347 = phi i32 [ 0, %20 ], [ %332, %343 ]
  %348 = phi i32 [ 0, %20 ], [ %333, %343 ]
  %349 = phi ptr [ null, %20 ], [ %334, %343 ]
  %350 = phi ptr [ null, %20 ], [ %335, %343 ]
  %351 = phi ptr [ null, %20 ], [ %336, %343 ]
  %352 = phi i32 [ 0, %20 ], [ %337, %343 ]
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %346
  %355 = load ptr, ptr %5, align 8, !tbaa !75
  %356 = load ptr, ptr %1, align 8, !tbaa !75
  %357 = call ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef %349, ptr noundef %350, ptr noundef %355, i32 noundef %352, ptr noundef %356, i32 noundef 0) #8
  br label %358

358:                                              ; preds = %346, %354
  %359 = phi ptr [ %357, %354 ], [ null, %346 ]
  %360 = icmp eq ptr %359, null
  br i1 %360, label %364, label %361

361:                                              ; preds = %358
  %362 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #8
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %361, %358
  %365 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #8
  %366 = icmp eq i8 %365, 0
  %367 = select i1 %366, ptr @.str.7, ptr %351
  br label %504

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.BMFace, ptr %359, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !72
  br label %371

371:                                              ; preds = %401, %368
  %372 = phi ptr [ %370, %368 ], [ %403, %401 ]
  %373 = getelementptr inbounds %struct.BMLoop, ptr %372, i64 0, i32 4
  %374 = load ptr, ptr %373, align 8, !tbaa !105
  br label %375

375:                                              ; preds = %383, %371
  %376 = phi ptr [ %374, %371 ], [ %385, %383 ]
  %377 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !97
  %379 = getelementptr inbounds %struct.BMHeader, ptr %378, i64 0, i32 4
  %380 = load i8, ptr %379, align 2, !tbaa !87
  %381 = and i8 %380, 1
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 4
  %385 = load ptr, ptr %384, align 8, !tbaa !105
  %386 = icmp eq ptr %385, %372
  br i1 %386, label %387, label %375, !llvm.loop !132

387:                                              ; preds = %375, %383
  %388 = phi ptr [ %376, %375 ], [ %385, %383 ]
  %389 = icmp eq ptr %388, %372
  br i1 %389, label %401, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.BMLoop, ptr %388, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !73
  %393 = getelementptr inbounds %struct.BMLoop, ptr %372, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !73
  %395 = icmp eq ptr %392, %394
  br i1 %395, label %399, label %396

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct.BMLoop, ptr %388, i64 0, i32 6
  %398 = load ptr, ptr %397, align 8, !tbaa !76
  br label %399

399:                                              ; preds = %396, %390
  %400 = phi ptr [ %398, %396 ], [ %388, %390 ]
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %400, ptr noundef %372) #8
  br label %401

401:                                              ; preds = %399, %387
  %402 = getelementptr inbounds %struct.BMLoop, ptr %372, i64 0, i32 6
  %403 = load ptr, ptr %402, align 8, !tbaa !76
  %404 = icmp eq ptr %403, %370
  br i1 %404, label %405, label %371, !llvm.loop !133

405:                                              ; preds = %401
  %406 = load ptr, ptr %369, align 8, !tbaa !72
  br label %407

407:                                              ; preds = %407, %405
  %408 = phi ptr [ %406, %405 ], [ %411, %407 ]
  %409 = getelementptr inbounds %struct.BMLoop, ptr %408, i64 0, i32 3
  store ptr %359, ptr %409, align 8, !tbaa !97
  %410 = getelementptr inbounds %struct.BMLoop, ptr %408, i64 0, i32 6
  %411 = load ptr, ptr %410, align 8, !tbaa !76
  %412 = icmp eq ptr %411, %406
  br i1 %412, label %413, label %407, !llvm.loop !134

413:                                              ; preds = %407
  %414 = icmp sgt i32 %2, 0
  br i1 %414, label %415, label %426

415:                                              ; preds = %413
  %416 = zext nneg i32 %2 to i64
  br label %417

417:                                              ; preds = %415, %417
  %418 = phi i64 [ 0, %415 ], [ %424, %417 ]
  %419 = getelementptr inbounds ptr, ptr %1, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !75
  %421 = getelementptr inbounds %struct.BMHeader, ptr %420, i64 0, i32 4
  %422 = load i8, ptr %421, align 2, !tbaa !124
  %423 = and i8 %422, -2
  store i8 %423, ptr %421, align 2, !tbaa !124
  %424 = add nuw nsw i64 %418, 1
  %425 = icmp eq i64 %424, %416
  br i1 %425, label %426, label %417, !llvm.loop !135

426:                                              ; preds = %417, %413
  %427 = getelementptr inbounds %struct.BMHeader, ptr %359, i64 0, i32 4
  %428 = load i8, ptr %427, align 2, !tbaa !87
  %429 = and i8 %428, -2
  store i8 %429, ptr %427, align 2, !tbaa !87
  %430 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %431 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %430, i32 noundef 19) #8
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %449, label %433

433:                                              ; preds = %426
  %434 = load ptr, ptr %369, align 8, !tbaa !72
  %435 = icmp sgt i32 %2, 0
  %436 = zext nneg i32 %2 to i64
  br label %437

437:                                              ; preds = %445, %433
  %438 = phi ptr [ %434, %433 ], [ %447, %445 ]
  br i1 %435, label %439, label %445

439:                                              ; preds = %437, %439
  %440 = phi i64 [ %443, %439 ], [ 0, %437 ]
  %441 = getelementptr inbounds ptr, ptr %1, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !75
  call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %438, ptr noundef %442) #8
  %443 = add nuw nsw i64 %440, 1
  %444 = icmp eq i64 %443, %436
  br i1 %444, label %445, label %439, !llvm.loop !136

445:                                              ; preds = %439, %437
  %446 = getelementptr inbounds %struct.BMLoop, ptr %438, i64 0, i32 6
  %447 = load ptr, ptr %446, align 8, !tbaa !76
  %448 = icmp eq ptr %447, %434
  br i1 %448, label %449, label %437, !llvm.loop !137

449:                                              ; preds = %445, %426
  %450 = icmp eq i8 %3, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %449
  %452 = icmp sgt i32 %347, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %451
  %454 = zext nneg i32 %347 to i64
  br label %463

455:                                              ; preds = %449
  %456 = icmp sgt i32 %2, 0
  br i1 %456, label %457, label %483

457:                                              ; preds = %455
  %458 = zext nneg i32 %2 to i64
  br label %477

459:                                              ; preds = %463, %451
  %460 = icmp sgt i32 %348, 0
  br i1 %460, label %461, label %483

461:                                              ; preds = %459
  %462 = zext nneg i32 %348 to i64
  br label %470

463:                                              ; preds = %453, %463
  %464 = phi i64 [ 0, %453 ], [ %468, %463 ]
  %465 = load ptr, ptr %6, align 8, !tbaa !75
  %466 = getelementptr inbounds ptr, ptr %465, i64 %464
  %467 = load ptr, ptr %466, align 8, !tbaa !75
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %467)
  %468 = add nuw nsw i64 %464, 1
  %469 = icmp eq i64 %468, %454
  br i1 %469, label %459, label %463, !llvm.loop !138

470:                                              ; preds = %461, %470
  %471 = phi i64 [ 0, %461 ], [ %475, %470 ]
  %472 = load ptr, ptr %7, align 8, !tbaa !75
  %473 = getelementptr inbounds ptr, ptr %472, i64 %471
  %474 = load ptr, ptr %473, align 8, !tbaa !75
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %474)
  %475 = add nuw nsw i64 %471, 1
  %476 = icmp eq i64 %475, %462
  br i1 %476, label %483, label %470, !llvm.loop !139

477:                                              ; preds = %457, %477
  %478 = phi i64 [ 0, %457 ], [ %481, %477 ]
  %479 = getelementptr inbounds ptr, ptr %1, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !75
  call void @BM_face_kill(ptr noundef %0, ptr noundef %480)
  %481 = add nuw nsw i64 %478, 1
  %482 = icmp eq i64 %481, %458
  br i1 %482, label %483, label %477, !llvm.loop !140

483:                                              ; preds = %470, %477, %459, %455
  %484 = load ptr, ptr %5, align 8
  %485 = icmp ne ptr %484, null
  %486 = icmp ne ptr %484, %8
  %487 = and i1 %485, %486
  br i1 %487, label %488, label %490

488:                                              ; preds = %483
  %489 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %489(ptr noundef nonnull %484) #8
  br label %490

490:                                              ; preds = %488, %483
  %491 = load ptr, ptr %6, align 8
  %492 = icmp ne ptr %491, null
  %493 = icmp ne ptr %491, %9
  %494 = and i1 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %490
  %496 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %496(ptr noundef nonnull %491) #8
  br label %497

497:                                              ; preds = %495, %490
  %498 = load ptr, ptr %7, align 8
  %499 = icmp ne ptr %498, null
  %500 = icmp ne ptr %498, %10
  %501 = and i1 %499, %500
  br i1 %501, label %502, label %544

502:                                              ; preds = %497
  %503 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %503(ptr noundef nonnull %498) #8
  br label %544

504:                                              ; preds = %330, %364
  %505 = phi ptr [ %367, %364 ], [ %336, %330 ]
  %506 = icmp sgt i32 %2, 0
  br i1 %506, label %507, label %518

507:                                              ; preds = %504
  %508 = zext nneg i32 %2 to i64
  br label %509

509:                                              ; preds = %507, %509
  %510 = phi i64 [ 0, %507 ], [ %516, %509 ]
  %511 = getelementptr inbounds ptr, ptr %1, i64 %510
  %512 = load ptr, ptr %511, align 8, !tbaa !75
  %513 = getelementptr inbounds %struct.BMHeader, ptr %512, i64 0, i32 4
  %514 = load i8, ptr %513, align 2, !tbaa !124
  %515 = and i8 %514, -2
  store i8 %515, ptr %513, align 2, !tbaa !124
  %516 = add nuw nsw i64 %510, 1
  %517 = icmp eq i64 %516, %508
  br i1 %517, label %518, label %509, !llvm.loop !135

518:                                              ; preds = %509, %504
  %519 = load ptr, ptr %5, align 8
  %520 = icmp ne ptr %519, null
  %521 = icmp ne ptr %519, %8
  %522 = and i1 %520, %521
  br i1 %522, label %523, label %525

523:                                              ; preds = %518
  %524 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %524(ptr noundef nonnull %519) #8
  br label %525

525:                                              ; preds = %523, %518
  %526 = load ptr, ptr %6, align 8
  %527 = icmp ne ptr %526, null
  %528 = icmp ne ptr %526, %9
  %529 = and i1 %527, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %531(ptr noundef nonnull %526) #8
  br label %532

532:                                              ; preds = %530, %525
  %533 = load ptr, ptr %7, align 8
  %534 = icmp ne ptr %533, null
  %535 = icmp ne ptr %533, %10
  %536 = and i1 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %538(ptr noundef nonnull %533) #8
  br label %539

539:                                              ; preds = %537, %532
  %540 = icmp eq ptr %505, null
  br i1 %540, label %544, label %541

541:                                              ; preds = %539
  %542 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 23
  %543 = load ptr, ptr %542, align 8, !tbaa !141
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %543, i32 noundef 5, ptr noundef nonnull %505) #8
  br label %544

544:                                              ; preds = %330, %539, %541, %497, %502, %18, %15
  %545 = phi ptr [ %19, %18 ], [ null, %15 ], [ %359, %502 ], [ %359, %497 ], [ null, %541 ], [ null, %539 ], [ undef, %330 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret ptr %545
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_ngon(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_error_occurred(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_loop_interp_multires(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq i8 %6, 0
  %13 = select i1 %12, i32 0, i32 2
  %14 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef %5, i32 noundef %13)
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = tail call ptr @BLI_mempool_alloc(ptr noundef %16) #8
  store ptr null, ptr %17, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 1
  store i32 -1, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 2
  store i8 8, ptr %19, align 4, !tbaa !85
  %20 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  store i8 0, ptr %20, align 1, !tbaa !86
  %21 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 4
  store i8 0, ptr %21, align 2, !tbaa !87
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  %26 = tail call ptr @BLI_mempool_calloc(ptr noundef nonnull %23) #8
  br label %27

27:                                               ; preds = %7, %25
  %28 = phi ptr [ %26, %25 ], [ null, %7 ]
  %29 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 3
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %30, i8 0, i64 26, i1 false)
  %33 = load i8, ptr %32, align 4, !tbaa !54
  %34 = or i8 %33, 8
  store i8 %34, ptr %32, align 4, !tbaa !54
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %36 = load i8, ptr %35, align 1, !tbaa !55
  %37 = or i8 %36, 8
  store i8 %37, ptr %35, align 1, !tbaa !55
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !90
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4, !tbaa !90
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17) #8
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  %43 = tail call ptr @BLI_mempool_alloc(ptr noundef %42) #8
  store ptr null, ptr %43, align 8, !tbaa !93
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 1
  store i32 -1, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  store i8 0, ptr %45, align 1, !tbaa !94
  %46 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 2
  store i8 4, ptr %46, align 4, !tbaa !95
  %47 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 4
  store i8 0, ptr %47, align 2, !tbaa !96
  %48 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 1
  store ptr %11, ptr %48, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 2
  store ptr %14, ptr %49, align 8, !tbaa !80
  %50 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 3
  store ptr %1, ptr %50, align 8, !tbaa !97
  %51 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  %52 = load i8, ptr %32, align 4, !tbaa !54
  %53 = or i8 %52, 4
  store i8 %53, ptr %32, align 4, !tbaa !54
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !98
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !98
  %57 = icmp eq ptr %3, null
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br i1 %57, label %61, label %59

59:                                               ; preds = %27
  %60 = load ptr, ptr %3, align 8, !tbaa !93
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %58, ptr noundef nonnull %58, ptr noundef %60, ptr noundef nonnull %43) #8
  br label %62

61:                                               ; preds = %27
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %58, ptr noundef nonnull %43) #8
  br label %62

62:                                               ; preds = %59, %61
  %63 = load ptr, ptr %41, align 8, !tbaa !92
  %64 = tail call ptr @BLI_mempool_alloc(ptr noundef %63) #8
  store ptr null, ptr %64, align 8, !tbaa !93
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 1
  store i32 -1, ptr %65, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 3
  store i8 0, ptr %66, align 1, !tbaa !94
  %67 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 2
  store i8 4, ptr %67, align 4, !tbaa !95
  %68 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 4
  store i8 0, ptr %68, align 2, !tbaa !96
  %69 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  store ptr %9, ptr %69, align 8, !tbaa !73
  %70 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 2
  store ptr %14, ptr %70, align 8, !tbaa !80
  %71 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 3
  store ptr %17, ptr %71, align 8, !tbaa !97
  %72 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %72, i8 0, i64 32, i1 false)
  %73 = load i8, ptr %32, align 4, !tbaa !54
  %74 = or i8 %73, 4
  store i8 %74, ptr %32, align 4, !tbaa !54
  %75 = load i32, ptr %54, align 8, !tbaa !98
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %54, align 8, !tbaa !98
  %77 = icmp eq ptr %2, null
  %78 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br i1 %77, label %81, label %79

79:                                               ; preds = %62
  %80 = load ptr, ptr %2, align 8, !tbaa !93
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %78, ptr noundef nonnull %78, ptr noundef %80, ptr noundef nonnull %64) #8
  br label %82

81:                                               ; preds = %62
  tail call void @CustomData_bmesh_set_default(ptr noundef nonnull %78, ptr noundef nonnull %64) #8
  br label %82

82:                                               ; preds = %79, %81
  %83 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !99
  %85 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 7
  store ptr %84, ptr %85, align 8, !tbaa !99
  %86 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !99
  %88 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 7
  store ptr %87, ptr %88, align 8, !tbaa !99
  %89 = load ptr, ptr %83, align 8, !tbaa !99
  %90 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 6
  store ptr %43, ptr %90, align 8, !tbaa !76
  %91 = load ptr, ptr %86, align 8, !tbaa !99
  %92 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 6
  store ptr %64, ptr %92, align 8, !tbaa !76
  %93 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 6
  store ptr %2, ptr %93, align 8, !tbaa !76
  %94 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 6
  store ptr %3, ptr %94, align 8, !tbaa !76
  store ptr %43, ptr %86, align 8, !tbaa !99
  store ptr %64, ptr %83, align 8, !tbaa !99
  %95 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !72
  br label %97

97:                                               ; preds = %97, %82
  %98 = phi ptr [ %43, %82 ], [ %103, %97 ]
  %99 = phi i32 [ 0, %82 ], [ %101, %97 ]
  %100 = icmp eq ptr %98, %96
  %101 = select i1 %100, i32 1, i32 %99
  %102 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !76
  %104 = icmp eq ptr %103, %43
  br i1 %104, label %105, label %97, !llvm.loop !142

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %107 = icmp eq i32 %101, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !99
  %111 = icmp eq ptr %110, %43
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load ptr, ptr %88, align 8, !tbaa !99
  store ptr %113, ptr %30, align 8, !tbaa !72
  br label %134

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  %117 = icmp eq ptr %116, %43
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store ptr %3, ptr %30, align 8, !tbaa !72
  br label %134

119:                                              ; preds = %114
  store ptr %64, ptr %30, align 8, !tbaa !72
  br label %134

120:                                              ; preds = %105
  store ptr %96, ptr %30, align 8, !tbaa !72
  %121 = load ptr, ptr %106, align 8, !tbaa !72
  %122 = getelementptr inbounds %struct.BMLoop, ptr %121, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !99
  %124 = icmp eq ptr %123, %64
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %85, align 8, !tbaa !99
  store ptr %126, ptr %106, align 8, !tbaa !72
  br label %134

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.BMLoop, ptr %121, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !76
  %130 = icmp eq ptr %129, %64
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load ptr, ptr %93, align 8, !tbaa !76
  store ptr %132, ptr %106, align 8, !tbaa !72
  br label %134

133:                                              ; preds = %127
  store ptr %43, ptr %106, align 8, !tbaa !72
  br label %134

134:                                              ; preds = %125, %133, %131, %112, %119, %118
  %135 = load ptr, ptr %30, align 8, !tbaa !72
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi ptr [ %135, %134 ], [ %142, %136 ]
  %138 = phi i32 [ 0, %134 ], [ %140, %136 ]
  %139 = getelementptr inbounds %struct.BMLoop, ptr %137, i64 0, i32 3
  store ptr %17, ptr %139, align 8, !tbaa !97
  %140 = add nuw nsw i32 %138, 1
  %141 = getelementptr inbounds %struct.BMLoop, ptr %137, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !76
  %143 = icmp eq ptr %142, %135
  br i1 %143, label %144, label %136, !llvm.loop !143

144:                                              ; preds = %136
  tail call void @bmesh_radial_append(ptr noundef %14, ptr noundef %43) #8
  tail call void @bmesh_radial_append(ptr noundef %14, ptr noundef nonnull %64) #8
  store i32 %140, ptr %31, align 8, !tbaa !70
  %145 = load ptr, ptr %106, align 8, !tbaa !72
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi ptr [ %145, %144 ], [ %151, %146 ]
  %148 = phi i32 [ 0, %144 ], [ %149, %146 ]
  %149 = add nuw nsw i32 %148, 1
  %150 = getelementptr inbounds %struct.BMLoop, ptr %147, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !76
  %152 = icmp eq ptr %151, %145
  br i1 %152, label %153, label %146, !llvm.loop !144

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  store i32 %149, ptr %154, align 8, !tbaa !70
  %155 = icmp eq ptr %4, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  store ptr %64, ptr %4, align 8, !tbaa !75
  br label %157

157:                                              ; preds = %156, %153
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bmesh_semv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %7 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, i32 noundef 0)
  %8 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %2, i32 noundef 0)
  tail call void @bmesh_disk_edge_remove(ptr noundef %8, ptr noundef %1) #8
  tail call void @bmesh_disk_edge_remove(ptr noundef %8, ptr noundef %7) #8
  tail call void @bmesh_disk_edge_remove(ptr noundef %2, ptr noundef %1) #8
  %9 = tail call zeroext i8 @bmesh_edge_swapverts(ptr noundef %2, ptr noundef %1, ptr noundef %7) #8
  tail call void @bmesh_disk_edge_append(ptr noundef %2, ptr noundef %7) #8
  tail call void @bmesh_disk_edge_append(ptr noundef %8, ptr noundef %7) #8
  tail call void @bmesh_disk_edge_append(ptr noundef %8, ptr noundef %1) #8
  %10 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  store ptr null, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %18 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %19 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %20 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 3
  %22 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 3
  br label %23

23:                                               ; preds = %13, %107
  %24 = phi i32 [ 0, %13 ], [ %109, %107 ]
  %25 = phi i32 [ 0, %13 ], [ %108, %107 ]
  %26 = phi ptr [ %11, %13 ], [ %35, %107 ]
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !70
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !105
  %34 = icmp eq ptr %26, %33
  %35 = select i1 %34, ptr null, ptr %33
  tail call void @bmesh_radial_loop_remove(ptr noundef nonnull %26, ptr noundef null) #8
  %36 = load ptr, ptr %27, align 8, !tbaa !97
  %37 = load ptr, ptr %14, align 8, !tbaa !92
  %38 = tail call ptr @BLI_mempool_alloc(ptr noundef %37) #8
  store ptr null, ptr %38, align 8, !tbaa !93
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 1
  store i32 -1, ptr %39, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 3
  store i8 0, ptr %40, align 1, !tbaa !94
  %41 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 2
  store i8 4, ptr %41, align 4, !tbaa !95
  %42 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 4
  store i8 0, ptr %42, align 2, !tbaa !96
  %43 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %44 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 2
  %45 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store ptr %36, ptr %45, align 8, !tbaa !97
  %46 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, i8 0, i64 32, i1 false)
  %47 = load i8, ptr %15, align 4, !tbaa !54
  %48 = or i8 %47, 4
  store i8 %48, ptr %15, align 4, !tbaa !54
  %49 = load i32, ptr %16, align 8, !tbaa !98
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %16, align 8, !tbaa !98
  %51 = load ptr, ptr %26, align 8, !tbaa !93
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef %51, ptr noundef nonnull %38) #8
  %52 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 7
  store ptr %26, ptr %52, align 8, !tbaa !99
  %53 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 6
  store ptr %54, ptr %55, align 8, !tbaa !76
  store ptr %38, ptr %53, align 8, !tbaa !76
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 7
  store ptr %38, ptr %57, align 8, !tbaa !99
  store ptr %7, ptr %43, align 8, !tbaa !73
  %58 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !73
  %60 = load ptr, ptr %5, align 8, !tbaa !67
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %62, label %65

62:                                               ; preds = %23
  %63 = load ptr, ptr %18, align 8, !tbaa !68
  %64 = icmp eq ptr %63, %59
  br i1 %64, label %71, label %65

65:                                               ; preds = %62, %23
  %66 = icmp eq ptr %60, %59
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = load ptr, ptr %19, align 8, !tbaa !68
  %69 = icmp eq ptr %68, %7
  %70 = zext i1 %69 to i8
  br label %71

71:                                               ; preds = %62, %65, %67
  %72 = phi i8 [ 1, %62 ], [ 0, %65 ], [ %70, %67 ]
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  store ptr %2, ptr %44, align 8, !tbaa !80
  %75 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 2
  store ptr %8, ptr %75, align 8, !tbaa !80
  %76 = icmp eq i32 %25, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %78

78:                                               ; preds = %77, %74
  %79 = icmp eq i32 %24, 0
  br i1 %79, label %101, label %103

80:                                               ; preds = %71
  %81 = load ptr, ptr %20, align 8, !tbaa !67
  %82 = icmp eq ptr %81, %7
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load ptr, ptr %21, align 8, !tbaa !68
  %85 = icmp eq ptr %84, %59
  br i1 %85, label %92, label %86

86:                                               ; preds = %83, %80
  %87 = icmp eq ptr %81, %59
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = load ptr, ptr %22, align 8, !tbaa !68
  %90 = icmp eq ptr %89, %7
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %83, %86, %88
  %93 = phi i8 [ 1, %83 ], [ 0, %86 ], [ %91, %88 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  store ptr %8, ptr %44, align 8, !tbaa !80
  %96 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 2
  store ptr %2, ptr %96, align 8, !tbaa !80
  %97 = icmp eq i32 %25, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %99

99:                                               ; preds = %98, %95
  %100 = icmp eq i32 %24, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %99, %78
  %102 = phi ptr [ %75, %78 ], [ %96, %99 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %103

103:                                              ; preds = %101, %99, %78
  %104 = phi ptr [ %75, %78 ], [ %96, %99 ], [ %102, %101 ]
  %105 = load ptr, ptr %44, align 8, !tbaa !80
  tail call void @bmesh_radial_append(ptr noundef %105, ptr noundef nonnull %38) #8
  %106 = load ptr, ptr %104, align 8, !tbaa !80
  tail call void @bmesh_radial_append(ptr noundef %106, ptr noundef nonnull %26) #8
  br label %107

107:                                              ; preds = %103, %92
  %108 = phi i32 [ %25, %92 ], [ 1, %103 ]
  %109 = phi i32 [ %24, %92 ], [ 1, %103 ]
  %110 = icmp eq ptr %35, null
  br i1 %110, label %111, label %23, !llvm.loop !145

111:                                              ; preds = %107, %4
  %112 = icmp eq ptr %3, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %111
  store ptr %8, ptr %3, align 8, !tbaa !75
  br label %114

114:                                              ; preds = %113, %111
  ret ptr %7
}

declare zeroext i8 @bmesh_edge_swapverts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @bmesh_jekv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %210

13:                                               ; preds = %5, %9
  %14 = tail call i32 @bmesh_disk_count(ptr noundef %2) #8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %210

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 5
  %18 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = icmp eq ptr %19, %2
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds %struct.BMDiskLink, ptr %17, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = load ptr, ptr %6, align 8, !tbaa !67
  %25 = icmp eq ptr %24, %2
  %26 = select i1 %20, ptr %24, ptr null
  %27 = select i1 %25, ptr %19, ptr %26
  %28 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %29, %2
  %31 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  %33 = icmp eq ptr %32, %2
  %34 = select i1 %33, ptr %29, ptr null
  %35 = select i1 %30, ptr %32, ptr %34
  br i1 %30, label %36, label %40

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = icmp eq ptr %38, %27
  br i1 %39, label %210, label %40

40:                                               ; preds = %36, %16
  %41 = icmp eq ptr %29, %27
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = icmp eq ptr %44, %2
  br i1 %45, label %210, label %46

46:                                               ; preds = %40, %42
  %47 = icmp ne i8 %4, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = tail call ptr @BM_edge_exists(ptr noundef %27, ptr noundef %35) #8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %49, %48 ], [ undef, %46 ]
  tail call void @bmesh_disk_edge_remove(ptr noundef %23, ptr noundef %2) #8
  %52 = tail call zeroext i8 @bmesh_edge_swapverts(ptr noundef %23, ptr noundef %2, ptr noundef %27) #8
  tail call void @bmesh_disk_edge_append(ptr noundef %23, ptr noundef %27) #8
  tail call void @bmesh_disk_edge_remove(ptr noundef %1, ptr noundef %27) #8
  %53 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = tail call i32 @bmesh_radial_length(ptr noundef %54) #8
  %56 = load ptr, ptr %53, align 8, !tbaa !91
  %57 = icmp eq ptr %56, null
  br i1 %57, label %131, label %58

58:                                               ; preds = %50
  %59 = icmp sgt i32 %55, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %58, %82
  %61 = phi i32 [ %86, %82 ], [ 0, %58 ]
  %62 = phi ptr [ %88, %82 ], [ %56, %58 ]
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !76
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !73
  %67 = icmp eq ptr %66, %2
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store ptr %27, ptr %65, align 8, !tbaa !73
  br label %69

69:                                               ; preds = %68, %60
  %70 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !99
  %72 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 7
  store ptr %71, ptr %72, align 8, !tbaa !99
  %73 = load ptr, ptr %70, align 8, !tbaa !99
  %74 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 6
  store ptr %64, ptr %74, align 8, !tbaa !76
  %75 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !97
  %77 = getelementptr inbounds %struct.BMFace, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !72
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load ptr, ptr %63, align 8, !tbaa !76
  store ptr %81, ptr %77, align 8, !tbaa !72
  br label %82

82:                                               ; preds = %80, %69
  %83 = getelementptr inbounds %struct.BMFace, ptr %76, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  %84 = load i32, ptr %83, align 8, !tbaa !70
  %85 = add nsw i32 %84, -1
  store i32 %85, ptr %83, align 8, !tbaa !70
  %86 = add nuw nsw i32 %61, 1
  %87 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !105
  %89 = icmp eq i32 %86, %55
  br i1 %89, label %90, label %60, !llvm.loop !146

90:                                               ; preds = %82, %58
  %91 = tail call i32 @bmesh_radial_length(ptr noundef nonnull %56) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %131, label %93

93:                                               ; preds = %90
  %94 = sext i32 %91 to i64
  %95 = shl nsw i64 %94, 3
  %96 = alloca i8, i64 %95, align 16
  %97 = icmp sgt i32 %91, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = zext nneg i32 %91 to i64
  br label %108

100:                                              ; preds = %108, %93
  %101 = icmp sgt i32 %91, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %104 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %106 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %107 = zext nneg i32 %91 to i64
  br label %116

108:                                              ; preds = %98, %108
  %109 = phi i64 [ 0, %98 ], [ %114, %108 ]
  %110 = phi ptr [ %53, %98 ], [ %113, %108 ]
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = getelementptr inbounds ptr, ptr %96, i64 %109
  store ptr %111, ptr %112, align 8, !tbaa !75
  %113 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 4
  %114 = add nuw nsw i64 %109, 1
  %115 = icmp eq i64 %114, %99
  br i1 %115, label %100, label %108, !llvm.loop !147

116:                                              ; preds = %102, %127
  %117 = phi i64 [ 0, %102 ], [ %129, %127 ]
  %118 = getelementptr inbounds ptr, ptr %96, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = load i32, ptr %103, align 8, !tbaa !98
  %121 = add nsw i32 %120, -1
  store i32 %121, ptr %103, align 8, !tbaa !98
  %122 = load i8, ptr %104, align 4, !tbaa !54
  %123 = or i8 %122, 4
  store i8 %123, ptr %104, align 4, !tbaa !54
  %124 = load ptr, ptr %119, align 8, !tbaa !93
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %116
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %105, ptr noundef nonnull %119) #8
  br label %127

127:                                              ; preds = %116, %126
  %128 = load ptr, ptr %106, align 8, !tbaa !92
  tail call void @BLI_mempool_free(ptr noundef %128, ptr noundef nonnull %119) #8
  %129 = add nuw nsw i64 %117, 1
  %130 = icmp eq i64 %129, %107
  br i1 %130, label %131, label %116, !llvm.loop !148

131:                                              ; preds = %127, %100, %90, %50
  %132 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !69
  %134 = add nsw i32 %133, -1
  store i32 %134, ptr %132, align 4, !tbaa !69
  %135 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %136 = load i8, ptr %135, align 4, !tbaa !54
  %137 = or i8 %136, 2
  store i8 %137, ptr %135, align 4, !tbaa !54
  %138 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %139 = load i8, ptr %138, align 1, !tbaa !55
  %140 = or i8 %139, 2
  store i8 %140, ptr %138, align 1, !tbaa !55
  %141 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %0, ptr noundef %1) #8
  %142 = load ptr, ptr %1, align 8, !tbaa !59
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %145, ptr noundef nonnull %1) #8
  br label %146

146:                                              ; preds = %144, %131
  %147 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %148 = load ptr, ptr %147, align 8, !tbaa !65
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !66
  tail call void @BLI_mempool_free(ptr noundef nonnull %148, ptr noundef %152) #8
  br label %153

153:                                              ; preds = %146, %150
  %154 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %155 = load ptr, ptr %154, align 8, !tbaa !58
  tail call void @BLI_mempool_free(ptr noundef %155, ptr noundef nonnull %1) #8
  %156 = icmp eq i8 %3, 0
  br i1 %156, label %179, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %0, align 8, !tbaa !56
  %159 = add nsw i32 %158, -1
  store i32 %159, ptr %0, align 8, !tbaa !56
  %160 = load i8, ptr %135, align 4, !tbaa !54
  %161 = or i8 %160, 1
  store i8 %161, ptr %135, align 4, !tbaa !54
  %162 = load i8, ptr %138, align 1, !tbaa !55
  %163 = or i8 %162, 1
  store i8 %163, ptr %138, align 1, !tbaa !55
  %164 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %0, ptr noundef %2) #8
  %165 = load ptr, ptr %2, align 8, !tbaa !43
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %168, ptr noundef nonnull %2) #8
  br label %169

169:                                              ; preds = %167, %157
  %170 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %171 = load ptr, ptr %170, align 8, !tbaa !50
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !51
  tail call void @BLI_mempool_free(ptr noundef nonnull %171, ptr noundef %175) #8
  br label %176

176:                                              ; preds = %169, %173
  %177 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %178 = load ptr, ptr %177, align 8, !tbaa !34
  tail call void @BLI_mempool_free(ptr noundef %178, ptr noundef nonnull %2) #8
  br label %181

179:                                              ; preds = %153
  %180 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  store ptr null, ptr %180, align 8, !tbaa !109
  br label %181

181:                                              ; preds = %179, %176
  %182 = icmp ne ptr %51, null
  %183 = select i1 %47, i1 %182, i1 false
  br i1 %183, label %184, label %210

184:                                              ; preds = %181
  %185 = load ptr, ptr %28, align 8, !tbaa !67
  %186 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !67
  %188 = icmp eq ptr %187, %185
  br i1 %188, label %193, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !68
  %192 = icmp eq ptr %191, %185
  br i1 %192, label %193, label %210

193:                                              ; preds = %189, %184
  %194 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !68
  %196 = icmp eq ptr %187, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !68
  %200 = icmp eq ptr %199, %195
  br i1 %200, label %201, label %210

201:                                              ; preds = %197, %193
  %202 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !91
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %201, %205
  %206 = phi ptr [ %207, %205 ], [ %203, %201 ]
  tail call void @bmesh_radial_loop_remove(ptr noundef nonnull %206, ptr noundef nonnull %51) #8
  tail call void @bmesh_radial_append(ptr noundef %23, ptr noundef nonnull %206) #8
  %207 = load ptr, ptr %202, align 8, !tbaa !91
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %205, !llvm.loop !149

209:                                              ; preds = %205, %201
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %51)
  br label %210

210:                                              ; preds = %36, %209, %197, %189, %13, %181, %42, %9
  %211 = phi ptr [ null, %9 ], [ null, %42 ], [ %23, %181 ], [ null, %13 ], [ %23, %189 ], [ %23, %197 ], [ %23, %209 ], [ null, %36 ]
  ret ptr %211
}

declare i32 @bmesh_disk_count(ptr noundef) local_unnamed_addr #2

declare i32 @bmesh_radial_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %30

13:                                               ; preds = %3, %9
  %14 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %7, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %21 ]
  tail call void @bmesh_radial_loop_remove(ptr noundef nonnull %26, ptr noundef %1) #8
  tail call void @bmesh_radial_append(ptr noundef %2, ptr noundef nonnull %26) #8
  %27 = load ptr, ptr %22, align 8, !tbaa !91
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !149

29:                                               ; preds = %25, %21
  tail call void @BM_edge_kill(ptr noundef %0, ptr noundef %1)
  br label %30

30:                                               ; preds = %9, %17, %29
  %31 = phi i8 [ 1, %29 ], [ 0, %17 ], [ 0, %9 ]
  ret i8 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bmesh_jfke(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %212, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = icmp eq ptr %16, %8
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %6, %10, %14
  %20 = phi i8 [ 0, %10 ], [ 0, %6 ], [ %18, %14 ]
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %212, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !70
  %27 = tail call ptr @BM_face_edge_share_loop(ptr noundef %1, ptr noundef %3) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %212, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @BM_face_edge_share_loop(ptr noundef %2, ptr noundef %3) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %212, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %212, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !80
  %43 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %42, ptr noundef %2) #8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %212

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !99
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !80
  %50 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %49, ptr noundef %2) #8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %212

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %56, ptr noundef %1) #8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %212

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !99
  %62 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !80
  %64 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %63, ptr noundef %1) #8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %212

66:                                               ; preds = %59
  %67 = tail call i32 @BM_face_share_edge_count(ptr noundef %1, ptr noundef %2) #8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %212, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %71 = icmp sgt i32 %24, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69, %72
  %73 = phi i32 [ %81, %72 ], [ 0, %69 ]
  %74 = phi ptr [ %82, %72 ], [ %70, %69 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !75
  %76 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !73
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !150
  %80 = and i8 %79, 127
  store i8 %80, ptr %78, align 1, !tbaa !150
  %81 = add nuw nsw i32 %73, 1
  %82 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 6
  %83 = icmp eq i32 %81, %24
  br i1 %83, label %84, label %72, !llvm.loop !151

84:                                               ; preds = %72, %69
  %85 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %86 = icmp sgt i32 %26, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %89, %84
  %88 = icmp sgt i32 %24, 0
  br i1 %88, label %103, label %101

89:                                               ; preds = %84, %89
  %90 = phi i32 [ %98, %89 ], [ 0, %84 ]
  %91 = phi ptr [ %99, %89 ], [ %85, %84 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !75
  %93 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !73
  %95 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 3
  %96 = load i8, ptr %95, align 1, !tbaa !150
  %97 = and i8 %96, 127
  store i8 %97, ptr %95, align 1, !tbaa !150
  %98 = add nuw nsw i32 %90, 1
  %99 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 6
  %100 = icmp eq i32 %98, %26
  br i1 %100, label %87, label %89, !llvm.loop !152

101:                                              ; preds = %114, %87
  %102 = icmp sgt i32 %26, 0
  br i1 %102, label %118, label %133

103:                                              ; preds = %87, %114
  %104 = phi ptr [ %116, %114 ], [ %70, %87 ]
  %105 = phi i32 [ %115, %114 ], [ 0, %87 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !75
  %107 = icmp eq ptr %106, %27
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !73
  %111 = getelementptr inbounds %struct.BMHeader, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !150
  %113 = or i8 %112, -128
  store i8 %113, ptr %111, align 1, !tbaa !150
  br label %114

114:                                              ; preds = %103, %108
  %115 = add nuw nsw i32 %105, 1
  %116 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 6
  %117 = icmp eq i32 %115, %24
  br i1 %117, label %101, label %103, !llvm.loop !153

118:                                              ; preds = %101, %129
  %119 = phi ptr [ %131, %129 ], [ %85, %101 ]
  %120 = phi i32 [ %130, %129 ], [ 0, %101 ]
  %121 = load ptr, ptr %119, align 8, !tbaa !75
  %122 = icmp eq ptr %121, %30
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.BMLoop, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !73
  %126 = getelementptr inbounds %struct.BMHeader, ptr %125, i64 0, i32 3
  %127 = load i8, ptr %126, align 1, !tbaa !150
  %128 = icmp sgt i8 %127, -1
  br i1 %128, label %129, label %212

129:                                              ; preds = %118, %123
  %130 = add nuw nsw i32 %120, 1
  %131 = getelementptr inbounds %struct.BMLoop, ptr %121, i64 0, i32 6
  %132 = icmp eq i32 %130, %26
  br i1 %132, label %133, label %118, !llvm.loop !154

133:                                              ; preds = %129, %101
  %134 = load ptr, ptr %53, align 8, !tbaa !76
  %135 = load ptr, ptr %46, align 8, !tbaa !99
  %136 = getelementptr inbounds %struct.BMLoop, ptr %135, i64 0, i32 6
  store ptr %134, ptr %136, align 8, !tbaa !76
  %137 = load ptr, ptr %53, align 8, !tbaa !76
  %138 = getelementptr inbounds %struct.BMLoop, ptr %137, i64 0, i32 7
  store ptr %135, ptr %138, align 8, !tbaa !99
  %139 = load ptr, ptr %60, align 8, !tbaa !99
  %140 = load ptr, ptr %39, align 8, !tbaa !76
  %141 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 7
  store ptr %139, ptr %141, align 8, !tbaa !99
  %142 = load ptr, ptr %60, align 8, !tbaa !99
  %143 = getelementptr inbounds %struct.BMLoop, ptr %142, i64 0, i32 6
  store ptr %140, ptr %143, align 8, !tbaa !76
  %144 = load ptr, ptr %70, align 8, !tbaa !72
  %145 = icmp eq ptr %144, %27
  br i1 %145, label %146, label %148

146:                                              ; preds = %133
  %147 = load ptr, ptr %39, align 8, !tbaa !76
  store ptr %147, ptr %70, align 8, !tbaa !72
  br label %148

148:                                              ; preds = %146, %133
  %149 = load i32, ptr %25, align 8, !tbaa !70
  %150 = add nsw i32 %149, -2
  %151 = load i32, ptr %23, align 8, !tbaa !70
  %152 = add nsw i32 %150, %151
  store i32 %152, ptr %23, align 8, !tbaa !70
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %148, %154
  %155 = phi i32 [ %159, %154 ], [ 0, %148 ]
  %156 = phi ptr [ %160, %154 ], [ %70, %148 ]
  %157 = load ptr, ptr %156, align 8, !tbaa !75
  %158 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 3
  store ptr %1, ptr %158, align 8, !tbaa !97
  %159 = add nuw nsw i32 %155, 1
  %160 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 6
  %161 = icmp eq i32 %159, %152
  br i1 %161, label %162, label %154, !llvm.loop !155

162:                                              ; preds = %154, %148
  %163 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !80
  %165 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !67
  tail call void @bmesh_disk_edge_remove(ptr noundef %164, ptr noundef %166) #8
  %167 = load ptr, ptr %163, align 8, !tbaa !80
  %168 = getelementptr inbounds %struct.BMEdge, ptr %167, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !68
  tail call void @bmesh_disk_edge_remove(ptr noundef %167, ptr noundef %169) #8
  %170 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %171 = load ptr, ptr %170, align 8, !tbaa !65
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %162
  %174 = load ptr, ptr %163, align 8, !tbaa !80
  %175 = getelementptr inbounds %struct.BMEdge, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !66
  tail call void @BLI_mempool_free(ptr noundef nonnull %171, ptr noundef %176) #8
  br label %177

177:                                              ; preds = %173, %162
  %178 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %179 = load ptr, ptr %178, align 8, !tbaa !58
  %180 = load ptr, ptr %163, align 8, !tbaa !80
  tail call void @BLI_mempool_free(ptr noundef %179, ptr noundef %180) #8
  %181 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !69
  %183 = add nsw i32 %182, -1
  store i32 %183, ptr %181, align 4, !tbaa !69
  %184 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %185 = load ptr, ptr %184, align 8, !tbaa !92
  tail call void @BLI_mempool_free(ptr noundef %185, ptr noundef nonnull %27) #8
  %186 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !98
  %188 = add nsw i32 %187, -1
  store i32 %188, ptr %186, align 8, !tbaa !98
  %189 = load ptr, ptr %184, align 8, !tbaa !92
  tail call void @BLI_mempool_free(ptr noundef %189, ptr noundef nonnull %30) #8
  %190 = load i32, ptr %186, align 8, !tbaa !98
  %191 = add nsw i32 %190, -1
  store i32 %191, ptr %186, align 8, !tbaa !98
  %192 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %193 = load ptr, ptr %192, align 8, !tbaa !88
  %194 = icmp eq ptr %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %177
  %196 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !89
  tail call void @BLI_mempool_free(ptr noundef nonnull %193, ptr noundef %197) #8
  br label %198

198:                                              ; preds = %195, %177
  %199 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %200 = load ptr, ptr %199, align 8, !tbaa !83
  tail call void @BLI_mempool_free(ptr noundef %200, ptr noundef %2) #8
  %201 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !90
  %203 = add nsw i32 %202, -1
  store i32 %203, ptr %201, align 4, !tbaa !90
  %204 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %205 = load i8, ptr %204, align 4, !tbaa !54
  %206 = or i8 %205, 14
  store i8 %206, ptr %204, align 4, !tbaa !54
  %207 = tail call zeroext i8 @bmesh_loop_validate(ptr noundef %1) #8
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %198
  %210 = load ptr, ptr @stderr, align 8, !tbaa !75
  %211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_jfke, i32 noundef 1949, ptr noundef nonnull @.str.8) #9
  br label %212

212:                                              ; preds = %123, %209, %198, %66, %38, %45, %52, %59, %32, %22, %29, %19, %4
  %213 = phi ptr [ null, %4 ], [ null, %19 ], [ null, %29 ], [ null, %22 ], [ null, %32 ], [ null, %59 ], [ null, %52 ], [ null, %45 ], [ null, %38 ], [ null, %66 ], [ %1, %198 ], [ %1, %209 ], [ null, %123 ]
  ret ptr %213
}

declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BM_face_share_edge_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @bmesh_loop_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_vert_splice_check_double(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SmallHash, align 8
  %4 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %3) #8
  call void @BLI_smallhash_init(ptr noundef nonnull %3) #8
  %12 = load ptr, ptr %4, align 8, !tbaa !109
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %30, %13 ]
  %15 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %16, %0
  %18 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %20, ptr %16, ptr null
  %22 = select i1 %17, ptr %19, ptr %21
  %23 = ptrtoint ptr %22 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %3, i64 noundef %23, ptr noundef null) #8
  %24 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 5
  %25 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = icmp eq ptr %26, %0
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %struct.BMDiskLink, ptr %24, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = icmp eq ptr %30, %12
  br i1 %31, label %32, label %13, !llvm.loop !156

32:                                               ; preds = %13
  %33 = load ptr, ptr %8, align 8, !tbaa !109
  br label %34

34:                                               ; preds = %49, %32
  %35 = phi ptr [ %33, %32 ], [ %56, %49 ]
  %36 = phi i8 [ 0, %32 ], [ %48, %49 ]
  %37 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !67
  %39 = icmp eq ptr %38, %1
  %40 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = icmp eq ptr %41, %1
  %43 = select i1 %42, ptr %38, ptr null
  %44 = select i1 %39, ptr %41, ptr %43
  %45 = ptrtoint ptr %44 to i64
  %46 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %3, i64 noundef %45) #8
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i8 %36, i8 1
  br i1 %47, label %49, label %58

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 5
  %51 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = icmp eq ptr %52, %1
  %54 = zext i1 %53 to i64
  %55 = getelementptr inbounds %struct.BMDiskLink, ptr %50, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !110
  %57 = icmp eq ptr %56, %33
  br i1 %57, label %58, label %34, !llvm.loop !157

58:                                               ; preds = %34, %49
  call void @BLI_smallhash_release(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %3) #8
  br label %59

59:                                               ; preds = %58, %7, %2
  %60 = phi i8 [ %48, %58 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %60
}

declare void @BLI_smallhash_init(ptr noundef) local_unnamed_addr #2

declare void @BLI_smallhash_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_smallhash_haskey(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_smallhash_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5, %24
  %10 = phi ptr [ %26, %24 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %20
  %15 = phi ptr [ %22, %20 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store ptr %2, ptr %16, align 8, !tbaa !73
  br label %20

20:                                               ; preds = %14, %19
  %21 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %24, label %14, !llvm.loop !158

24:                                               ; preds = %20, %9
  tail call void @bmesh_disk_edge_remove(ptr noundef nonnull %10, ptr noundef %1) #8
  %25 = tail call zeroext i8 @bmesh_edge_swapverts(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #8
  tail call void @bmesh_disk_edge_append(ptr noundef nonnull %10, ptr noundef %2) #8
  %26 = load ptr, ptr %6, align 8, !tbaa !109
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !159

28:                                               ; preds = %24, %5
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef %1)
  br label %29

29:                                               ; preds = %3, %28
  %30 = phi i8 [ 1, %28 ], [ 0, %3 ]
  ret i8 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @bmesh_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SmallHash, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = tail call i32 @BM_vert_face_count(ptr noundef %1) #8
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  call void @BLI_smallhash_init_ex(ptr noundef nonnull %6, i32 noundef %9) #8
  %13 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 4, ptr %13, align 4, !tbaa !160
  %14 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %14, align 8, !tbaa !162
  %15 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %15, align 8, !tbaa !163
  store ptr %1, ptr %7, align 8, !tbaa !164
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = call ptr %16(ptr noundef nonnull %7) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %82, label %19

19:                                               ; preds = %5, %76
  %20 = phi i32 [ %78, %76 ], [ 0, %5 ]
  %21 = phi i32 [ %77, %76 ], [ 0, %5 ]
  %22 = phi ptr [ %80, %76 ], [ %17, %5 ]
  %23 = ptrtoint ptr %22 to i64
  %24 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %6, i64 noundef %23) #8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %19
  %27 = sext i32 %21 to i64
  %28 = inttoptr i64 %27 to ptr
  call void @BLI_smallhash_insert(ptr noundef nonnull %6, i64 noundef %23, ptr noundef %28) #8
  br label %29

29:                                               ; preds = %70, %26
  %30 = phi ptr [ %22, %26 ], [ %72, %70 ]
  %31 = phi i32 [ %20, %26 ], [ %71, %70 ]
  %32 = getelementptr inbounds %struct.BMEdge, ptr %30, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %29, %57
  %36 = phi ptr [ %60, %57 ], [ %33, %29 ]
  %37 = phi i32 [ %58, %57 ], [ %31, %29 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %39, %1
  %41 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 7
  %42 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %43 = select i1 %40, ptr %41, ptr %42
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !80
  %47 = ptrtoint ptr %46 to i64
  %48 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %6, i64 noundef %47) #8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %35
  %51 = load ptr, ptr %45, align 8, !tbaa !80
  %52 = ptrtoint ptr %51 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %6, i64 noundef %52, ptr noundef %28) #8
  %53 = load ptr, ptr %45, align 8, !tbaa !80
  %54 = add i32 %37, 1
  %55 = zext i32 %37 to i64
  %56 = getelementptr inbounds ptr, ptr %12, i64 %55
  store ptr %53, ptr %56, align 8, !tbaa !75
  br label %57

57:                                               ; preds = %35, %50
  %58 = phi i32 [ %37, %35 ], [ %54, %50 ]
  %59 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !105
  %61 = icmp eq ptr %60, %33
  br i1 %61, label %62, label %35, !llvm.loop !165

62:                                               ; preds = %57, %29
  %63 = phi i32 [ %31, %29 ], [ %58, %57 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = add i32 %63, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %12, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  br label %70

70:                                               ; preds = %62, %65
  %71 = phi i32 [ %66, %65 ], [ 0, %62 ]
  %72 = phi ptr [ %69, %65 ], [ null, %62 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %29, !llvm.loop !166

74:                                               ; preds = %70
  %75 = add nsw i32 %21, 1
  br label %76

76:                                               ; preds = %19, %74
  %77 = phi i32 [ %21, %19 ], [ %75, %74 ]
  %78 = phi i32 [ %20, %19 ], [ %71, %74 ]
  %79 = load ptr, ptr %15, align 8, !tbaa !163
  %80 = call ptr %79(ptr noundef nonnull %7) #8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %19, !llvm.loop !167

82:                                               ; preds = %76, %5
  %83 = phi i32 [ 0, %5 ], [ %77, %76 ]
  %84 = icmp eq ptr %2, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %87 = sext i32 %83 to i64
  %88 = shl nsw i64 %87, 3
  %89 = call ptr %86(i64 noundef %88, ptr noundef nonnull @__func__.bmesh_vert_separate) #8
  br label %94

90:                                               ; preds = %82
  %91 = sext i32 %83 to i64
  %92 = shl nsw i64 %91, 3
  %93 = alloca i8, i64 %92, align 16
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi ptr [ %89, %85 ], [ %93, %90 ]
  store ptr %1, ptr %95, align 8, !tbaa !75
  %96 = icmp sgt i32 %83, 1
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %99 = icmp eq i8 %4, 0
  %100 = zext nneg i32 %83 to i64
  br label %101

101:                                              ; preds = %97, %106
  %102 = phi i64 [ 1, %97 ], [ %107, %106 ]
  %103 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %98, ptr noundef %1, i32 noundef 0)
  %104 = getelementptr inbounds ptr, ptr %95, i64 %102
  store ptr %103, ptr %104, align 8, !tbaa !75
  br i1 %99, label %106, label %105

105:                                              ; preds = %101
  call void @BM_elem_select_copy(ptr noundef %0, ptr noundef %0, ptr noundef %103, ptr noundef %1) #8
  br label %106

106:                                              ; preds = %101, %105
  %107 = add nuw nsw i64 %102, 1
  %108 = icmp eq i64 %107, %100
  br i1 %108, label %109, label %101, !llvm.loop !168

109:                                              ; preds = %106, %94
  %110 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 6, ptr %110, align 4, !tbaa !160
  %111 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %111, align 8, !tbaa !162
  %112 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %112, align 8, !tbaa !163
  store ptr %1, ptr %8, align 8, !tbaa !164
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %8) #8
  %113 = load ptr, ptr %112, align 8, !tbaa !163
  %114 = call ptr %113(ptr noundef nonnull %8) #8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %131, label %116

116:                                              ; preds = %109, %126
  %117 = phi i32 [ %127, %126 ], [ 0, %109 ]
  %118 = phi ptr [ %129, %126 ], [ %114, %109 ]
  %119 = getelementptr inbounds %struct.BMLoop, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !73
  %121 = icmp eq ptr %120, %1
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = add i32 %117, 1
  %124 = zext i32 %117 to i64
  %125 = getelementptr inbounds ptr, ptr %12, i64 %124
  store ptr %118, ptr %125, align 8, !tbaa !75
  br label %126

126:                                              ; preds = %116, %122
  %127 = phi i32 [ %123, %122 ], [ %117, %116 ]
  %128 = load ptr, ptr %112, align 8, !tbaa !163
  %129 = call ptr %128(ptr noundef nonnull %8) #8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %116, !llvm.loop !169

131:                                              ; preds = %126, %109
  %132 = phi i32 [ 0, %109 ], [ %127, %126 ]
  br label %133

133:                                              ; preds = %159, %131
  %134 = phi i32 [ %132, %131 ], [ %142, %159 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = add i32 %134, -1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds ptr, ptr %12, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !75
  br label %141

141:                                              ; preds = %133, %136
  %142 = phi i32 [ %137, %136 ], [ 0, %133 ]
  %143 = phi ptr [ %140, %136 ], [ null, %133 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %160, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.BMLoop, ptr %143, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !80
  %148 = ptrtoint ptr %147 to i64
  %149 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %6, i64 noundef %148) #8
  %150 = ptrtoint ptr %149 to i64
  %151 = and i64 %150, 4294967295
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %145
  %154 = shl i64 %150, 32
  %155 = ashr exact i64 %154, 32
  %156 = getelementptr inbounds ptr, ptr %95, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !75
  %158 = getelementptr inbounds %struct.BMLoop, ptr %143, i64 0, i32 1
  store ptr %157, ptr %158, align 8, !tbaa !73
  br label %159

159:                                              ; preds = %153, %145
  br label %133, !llvm.loop !170

160:                                              ; preds = %141
  store i8 4, ptr %13, align 4, !tbaa !160
  store ptr @bmiter__edge_of_vert_begin, ptr %14, align 8, !tbaa !162
  store ptr @bmiter__edge_of_vert_step, ptr %15, align 8, !tbaa !163
  store ptr %1, ptr %7, align 8, !tbaa !164
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #8
  %161 = load ptr, ptr %15, align 8, !tbaa !163
  %162 = call ptr %161(ptr noundef nonnull %7) #8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %182, label %164

164:                                              ; preds = %160, %178
  %165 = phi ptr [ %180, %178 ], [ %162, %160 ]
  %166 = ptrtoint ptr %165 to i64
  %167 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %6, i64 noundef %166) #8
  %168 = ptrtoint ptr %167 to i64
  %169 = and i64 %168, 4294967295
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %164
  call void @bmesh_disk_edge_remove(ptr noundef nonnull %165, ptr noundef %1) #8
  %172 = shl i64 %168, 32
  %173 = ashr exact i64 %172, 32
  %174 = getelementptr inbounds ptr, ptr %95, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !75
  %176 = call zeroext i8 @bmesh_edge_swapverts(ptr noundef nonnull %165, ptr noundef %1, ptr noundef %175) #8
  %177 = load ptr, ptr %174, align 8, !tbaa !75
  call void @bmesh_disk_edge_append(ptr noundef nonnull %165, ptr noundef %177) #8
  br label %178

178:                                              ; preds = %164, %171
  %179 = load ptr, ptr %15, align 8, !tbaa !163
  %180 = call ptr %179(ptr noundef nonnull %7) #8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %164, !llvm.loop !171

182:                                              ; preds = %178, %160
  call void @BLI_smallhash_release(ptr noundef nonnull %6) #8
  %183 = icmp eq ptr %3, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %182
  store i32 %83, ptr %3, align 4, !tbaa !57
  br label %185

185:                                              ; preds = %184, %182
  br i1 %84, label %187, label %186

186:                                              ; preds = %185
  store ptr %95, ptr %2, align 8, !tbaa !75
  br label %187

187:                                              ; preds = %186, %185
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %6) #8
  ret void
}

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

declare void @BLI_smallhash_init_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_elem_select_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_smallhash_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %6
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %40
  %11 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = icmp eq ptr %23, %1
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %17, %21
  %27 = phi i8 [ 1, %17 ], [ %25, %21 ]
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = icmp eq ptr %31, %15
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !105
  store ptr %35, ptr %14, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %19, ptr noundef %37, ptr noundef %13, i32 noundef 0)
  tail call void @bmesh_radial_loop_remove(ptr noundef nonnull %15, ptr noundef %13) #8
  tail call void @bmesh_radial_append(ptr noundef %38, ptr noundef nonnull %15) #8
  %39 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !80
  br label %40

40:                                               ; preds = %33, %29, %26, %10
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %9
  br i1 %42, label %43, label %10, !llvm.loop !172

43:                                               ; preds = %40, %6
  tail call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmesh_edge_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %26, label %12

12:                                               ; preds = %4, %8
  %13 = icmp eq ptr %6, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  store ptr %16, ptr %5, align 8, !tbaa !91
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %19, ptr noundef %21, ptr noundef %1, i32 noundef 0)
  tail call void @bmesh_radial_loop_remove(ptr noundef %2, ptr noundef %1) #8
  tail call void @bmesh_radial_append(ptr noundef %22, ptr noundef %2) #8
  %23 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !80
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void @BM_elem_select_copy(ptr noundef %0, ptr noundef %0, ptr noundef %22, ptr noundef %1) #8
  br label %26

26:                                               ; preds = %17, %25, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bmesh_urmv_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %27, label %16

16:                                               ; preds = %12, %2
  %17 = icmp eq ptr %10, %1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  store ptr %20, ptr %9, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %23, ptr noundef %25, ptr noundef %8, i32 noundef 0)
  tail call void @bmesh_radial_loop_remove(ptr noundef %1, ptr noundef %8) #8
  tail call void @bmesh_radial_append(ptr noundef %26, ptr noundef %1) #8
  store ptr %26, ptr %7, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %12, %21
  %28 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  %38 = icmp eq ptr %37, %33
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %27
  %40 = icmp eq ptr %33, %29
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  store ptr %43, ptr %32, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %41, %39
  %45 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %46, ptr noundef %48, ptr noundef %31, i32 noundef 0)
  tail call void @bmesh_radial_loop_remove(ptr noundef %29, ptr noundef %31) #8
  tail call void @bmesh_radial_append(ptr noundef %49, ptr noundef %29) #8
  store ptr %49, ptr %30, align 8, !tbaa !80
  br label %50

50:                                               ; preds = %35, %44
  %51 = tail call i32 @bmesh_disk_count(ptr noundef %6) #8
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %147, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 4
  %55 = load ptr, ptr %7, align 8, !tbaa !80
  %56 = load ptr, ptr %54, align 8, !tbaa !109
  br label %57

57:                                               ; preds = %53, %65
  %58 = phi ptr [ %56, %53 ], [ %72, %65 ]
  %59 = icmp eq ptr %58, %55
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %28, align 8, !tbaa !99
  %62 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !80
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57, %60
  %66 = getelementptr inbounds %struct.BMEdge, ptr %58, i64 0, i32 5
  %67 = getelementptr inbounds %struct.BMEdge, ptr %58, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !68
  %69 = icmp eq ptr %68, %6
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds %struct.BMDiskLink, ptr %66, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !110
  store ptr %72, ptr %54, align 8, !tbaa !109
  br label %57, !llvm.loop !173

73:                                               ; preds = %60
  call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0)
  %74 = load ptr, ptr %5, align 8, !tbaa !73
  %75 = load i32, ptr %4, align 4, !tbaa !57
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %144

77:                                               ; preds = %73
  %78 = load ptr, ptr %3, align 8, !tbaa !75
  %79 = zext nneg i32 %75 to i64
  br label %80

80:                                               ; preds = %77, %85
  %81 = phi i64 [ 0, %77 ], [ %86, %85 ]
  %82 = getelementptr inbounds ptr, ptr %78, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  %84 = icmp eq ptr %83, %74
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, %79
  br i1 %87, label %90, label %80, !llvm.loop !174

88:                                               ; preds = %80
  %89 = trunc i64 %81 to i32
  br label %90

90:                                               ; preds = %85, %88
  %91 = phi i32 [ %89, %88 ], [ %75, %85 ]
  %92 = icmp eq i32 %91, %75
  br i1 %92, label %144, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %3, align 8, !tbaa !75
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr inbounds ptr, ptr %94, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !75
  %98 = zext nneg i32 %75 to i64
  %99 = getelementptr ptr, ptr %94, i64 %98
  %100 = getelementptr ptr, ptr %99, i64 -1
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  store ptr %101, ptr %96, align 8, !tbaa !75
  %102 = load ptr, ptr %3, align 8, !tbaa !75
  %103 = getelementptr ptr, ptr %102, i64 %98
  %104 = getelementptr ptr, ptr %103, i64 -1
  store ptr %97, ptr %104, align 8, !tbaa !75
  %105 = load i32, ptr %4, align 4, !tbaa !57
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %144

107:                                              ; preds = %93, %138
  %108 = phi i64 [ %139, %138 ], [ 1, %93 ]
  %109 = load ptr, ptr %3, align 8, !tbaa !75
  %110 = getelementptr inbounds ptr, ptr %109, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = load ptr, ptr %109, align 8, !tbaa !75
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %138, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.BMVert, ptr %111, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !109
  %117 = icmp eq ptr %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %114, %133
  %119 = phi ptr [ %135, %133 ], [ %116, %114 ]
  %120 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !91
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %118, %129
  %124 = phi ptr [ %131, %129 ], [ %121, %118 ]
  %125 = getelementptr inbounds %struct.BMLoop, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !73
  %127 = icmp eq ptr %126, %111
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store ptr %112, ptr %125, align 8, !tbaa !73
  br label %129

129:                                              ; preds = %128, %123
  %130 = getelementptr inbounds %struct.BMLoop, ptr %124, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !105
  %132 = icmp eq ptr %131, %121
  br i1 %132, label %133, label %123, !llvm.loop !158

133:                                              ; preds = %129, %118
  call void @bmesh_disk_edge_remove(ptr noundef nonnull %119, ptr noundef %111) #8
  %134 = call zeroext i8 @bmesh_edge_swapverts(ptr noundef nonnull %119, ptr noundef %111, ptr noundef %112) #8
  call void @bmesh_disk_edge_append(ptr noundef nonnull %119, ptr noundef %112) #8
  %135 = load ptr, ptr %115, align 8, !tbaa !109
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %118, !llvm.loop !159

137:                                              ; preds = %133, %114
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %111)
  br label %138

138:                                              ; preds = %107, %137
  %139 = add nuw nsw i64 %108, 1
  %140 = load i32, ptr %4, align 4, !tbaa !57
  %141 = add nsw i32 %140, -1
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %107, label %144, !llvm.loop !175

144:                                              ; preds = %138, %93, %90, %73
  %145 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %146 = load ptr, ptr %3, align 8, !tbaa !75
  call void %145(ptr noundef %146) #8
  br label %147

147:                                              ; preds = %50, %144
  %148 = phi ptr [ %74, %144 ], [ %6, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret ptr %148
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bmesh_urmv(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %2) #8
  %5 = tail call ptr @bmesh_urmv_loop(ptr noundef %0, ptr noundef %4)
  ret ptr %5
}

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmesh_face_swap_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.BMFace, align 8
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %5, %2 ], [ %10, %6 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !176

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %14, %12 ], [ %19, %15 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  store ptr %0, ptr %17, align 8, !tbaa !97
  %18 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, %14
  br i1 %20, label %21, label %15, !llvm.loop !177

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3)
  %22 = load ptr, ptr %0, align 8, !tbaa !84
  %23 = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %23, ptr %0, align 8, !tbaa !84
  store ptr %22, ptr %1, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !180
  %26 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !180
  store i32 %27, ptr %24, align 8, !tbaa !180
  store i32 %25, ptr %26, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
!46 = !{!45, !36, i64 8}
!47 = !{!44, !37, i64 12}
!48 = !{!44, !37, i64 13}
!49 = !{!44, !37, i64 14}
!50 = !{!35, !39, i64 104}
!51 = !{!44, !39, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !37, i64 0}
!54 = !{!35, !37, i64 28}
!55 = !{!35, !37, i64 29}
!56 = !{!35, !36, i64 0}
!57 = !{!36, !36, i64 0}
!58 = !{!35, !39, i64 40}
!59 = !{!60, !39, i64 0}
!60 = !{!"BMEdge", !45, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !61, i64 48, !61, i64 64}
!61 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!62 = !{!60, !37, i64 12}
!63 = !{!60, !37, i64 13}
!64 = !{!60, !37, i64 14}
!65 = !{!35, !39, i64 112}
!66 = !{!60, !39, i64 16}
!67 = !{!60, !39, i64 24}
!68 = !{!60, !39, i64 32}
!69 = !{!35, !36, i64 4}
!70 = !{!71, !36, i64 32}
!71 = !{!"BMFace", !45, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!72 = !{!71, !39, i64 24}
!73 = !{!74, !39, i64 16}
!74 = !{!"BMLoop", !45, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!75 = !{!39, !39, i64 0}
!76 = !{!74, !39, i64 56}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!74, !39, i64 24}
!81 = distinct !{!81, !78, !79}
!82 = distinct !{!82, !78, !79}
!83 = !{!35, !39, i64 56}
!84 = !{!71, !39, i64 0}
!85 = !{!71, !37, i64 12}
!86 = !{!71, !37, i64 13}
!87 = !{!71, !37, i64 14}
!88 = !{!35, !39, i64 120}
!89 = !{!71, !39, i64 16}
!90 = !{!35, !36, i64 12}
!91 = !{!60, !39, i64 40}
!92 = !{!35, !39, i64 48}
!93 = !{!74, !39, i64 0}
!94 = !{!74, !37, i64 13}
!95 = !{!74, !37, i64 12}
!96 = !{!74, !37, i64 14}
!97 = !{!74, !39, i64 32}
!98 = !{!35, !36, i64 8}
!99 = !{!74, !39, i64 64}
!100 = distinct !{!100, !78, !79}
!101 = distinct !{!101, !78, !79}
!102 = distinct !{!102, !78, !79}
!103 = distinct !{!103, !78, !79}
!104 = distinct !{!104, !78, !79}
!105 = !{!74, !39, i64 40}
!106 = distinct !{!106, !78, !79}
!107 = distinct !{!107, !78, !79}
!108 = distinct !{!108, !78, !79}
!109 = !{!44, !39, i64 48}
!110 = !{!60, !39, i64 48}
!111 = distinct !{!111, !78, !79}
!112 = distinct !{!112, !78, !79}
!113 = !{!35, !39, i64 976}
!114 = distinct !{!114, !78, !79}
!115 = !{!116, !36, i64 0}
!116 = !{!"MDisps", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 16}
!117 = !{!116, !39, i64 8}
!118 = distinct !{!118, !78, !79}
!119 = distinct !{!119, !78, !79}
!120 = distinct !{!120, !78, !79}
!121 = distinct !{!121, !78, !79}
!122 = distinct !{!122, !78, !79}
!123 = distinct !{!123, !78, !79}
!124 = !{!125, !37, i64 14}
!125 = !{!"BMElemF", !45, i64 0, !39, i64 16}
!126 = distinct !{!126, !78, !79}
!127 = distinct !{!127, !78, !79}
!128 = distinct !{!128, !78, !79}
!129 = distinct !{!129, !78, !79}
!130 = distinct !{!130, !78, !79}
!131 = distinct !{!131, !78, !79}
!132 = distinct !{!132, !78, !79}
!133 = distinct !{!133, !78, !79}
!134 = distinct !{!134, !78, !79}
!135 = distinct !{!135, !78, !79}
!136 = distinct !{!136, !78, !79}
!137 = distinct !{!137, !78, !79}
!138 = distinct !{!138, !78, !79}
!139 = distinct !{!139, !78, !79}
!140 = distinct !{!140, !78, !79}
!141 = !{!35, !39, i64 136}
!142 = distinct !{!142, !78, !79}
!143 = distinct !{!143, !78, !79}
!144 = distinct !{!144, !78, !79}
!145 = distinct !{!145, !78, !79}
!146 = distinct !{!146, !78, !79}
!147 = distinct !{!147, !78, !79}
!148 = distinct !{!148, !78, !79}
!149 = distinct !{!149, !78, !79}
!150 = !{!45, !37, i64 13}
!151 = distinct !{!151, !78, !79}
!152 = distinct !{!152, !78, !79}
!153 = distinct !{!153, !78, !79}
!154 = distinct !{!154, !78, !79}
!155 = distinct !{!155, !78, !79}
!156 = distinct !{!156, !78, !79}
!157 = distinct !{!157, !78, !79}
!158 = distinct !{!158, !78, !79}
!159 = distinct !{!159, !78, !79}
!160 = !{!161, !37, i64 60}
!161 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!162 = !{!161, !39, i64 40}
!163 = !{!161, !39, i64 48}
!164 = !{!37, !37, i64 0}
!165 = distinct !{!165, !78, !79}
!166 = distinct !{!166, !78, !79}
!167 = distinct !{!167, !78, !79}
!168 = distinct !{!168, !78, !79}
!169 = distinct !{!169, !78, !79}
!170 = distinct !{!170, !78, !79}
!171 = distinct !{!171, !78, !79}
!172 = distinct !{!172, !78, !79}
!173 = distinct !{!173, !78, !79}
!174 = distinct !{!174, !78, !79}
!175 = distinct !{!175, !78, !79}
!176 = distinct !{!176, !78, !79}
!177 = distinct !{!177, !78, !79}
!178 = !{i64 0, i64 8, !75, i64 8, i64 4, !57, i64 12, i64 1, !164, i64 13, i64 1, !164, i64 14, i64 1, !164, i64 16, i64 8, !75, i64 24, i64 8, !75, i64 32, i64 4, !57, i64 36, i64 12, !164, i64 48, i64 2, !179}
!179 = !{!41, !41, i64 0}
!180 = !{!71, !36, i64 8}
