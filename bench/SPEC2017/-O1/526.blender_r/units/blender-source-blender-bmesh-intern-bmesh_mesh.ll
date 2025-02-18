; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_mesh.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMElemF = type { %struct.BMHeader, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LinkNode = type { ptr, ptr }

@bm_mesh_allocsize_default = dso_local local_unnamed_addr constant %struct.BMAllocTemplate { i32 512, i32 1024, i32 2048, i32 512 }, align 4
@bm_mesh_chunksize_default = dso_local local_unnamed_addr constant %struct.BMAllocTemplate { i32 512, i32 1024, i32 2048, i32 512 }, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_create = private unnamed_addr constant [15 x i8] c"BM_mesh_create\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_normals_update = private unnamed_addr constant [23 x i8] c"BM_mesh_normals_update\00", align 1
@__func__.BM_verts_calc_normal_vcos = private unnamed_addr constant [26 x i8] c"BM_verts_calc_normal_vcos\00", align 1
@__const.BM_mesh_elem_index_validate.iter_types = private unnamed_addr constant [3 x i8] c"\01\02\03", align 1
@__const.BM_mesh_elem_index_validate.flag_types = private unnamed_addr constant [3 x i8] c"\01\02\08", align 1
@.str = private unnamed_addr constant [5 x i8] c"vert\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"face\00", align 1
@reltable.BM_mesh_elem_index_validate = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.BM_mesh_elem_index_validate to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.BM_mesh_elem_index_validate to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.BM_mesh_elem_index_validate to i64)) to i32)], align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"Invalid Index: at %s, %s, %s[%d] invalid index %d, '%s', '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bm->vtable\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"bm->etable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"bm->ftable\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"BM_mesh_remap vert pointers mapping\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"BM_mesh_remap verts copy\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BM_mesh_remap edge pointers mapping\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"BM_mesh_remap edges copy\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"BM_mesh_remap face pointers mapping\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"BM_mesh_remap faces copy\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_toolflags_ensure(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %79

16:                                               ; preds = %12, %8, %1
  %17 = load i32, ptr %0, align 8, !tbaa !45
  %18 = tail call ptr @BLI_mempool_create(i32 noundef 2, i32 noundef %17, i32 noundef 512, i32 noundef 0) #12
  store ptr %18, ptr %5, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = tail call ptr @BLI_mempool_create(i32 noundef 2, i32 noundef %20, i32 noundef 512, i32 noundef 0) #12
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  store ptr %21, ptr %22, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = tail call ptr @BLI_mempool_create(i32 noundef 2, i32 noundef %24, i32 noundef 512, i32 noundef 0) #12
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  store ptr %25, ptr %26, align 8, !tbaa !44
  %27 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  %28 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %28, align 4, !tbaa !48
  %29 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  store ptr %32, ptr %2, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %33 = load ptr, ptr %30, align 8, !tbaa !51
  %34 = call ptr %33(ptr noundef nonnull %2) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %16, %36
  %37 = phi ptr [ %41, %36 ], [ %34, %16 ]
  %38 = call ptr @BLI_mempool_calloc(ptr noundef %27) #12
  %39 = getelementptr inbounds %struct.BMElemF, ptr %37, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !54
  %40 = load ptr, ptr %30, align 8, !tbaa !51
  %41 = call ptr %40(ptr noundef nonnull %2) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %36, !llvm.loop !57

43:                                               ; preds = %36, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  %44 = load ptr, ptr %22, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %45 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %45, align 4, !tbaa !48
  %46 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %46, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %47, align 8, !tbaa !51
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  store ptr %49, ptr %3, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %50 = load ptr, ptr %47, align 8, !tbaa !51
  %51 = call ptr %50(ptr noundef nonnull %3) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %43, %53
  %54 = phi ptr [ %58, %53 ], [ %51, %43 ]
  %55 = call ptr @BLI_mempool_calloc(ptr noundef %44) #12
  %56 = getelementptr inbounds %struct.BMElemF, ptr %54, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !54
  %57 = load ptr, ptr %47, align 8, !tbaa !51
  %58 = call ptr %57(ptr noundef nonnull %3) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %53, !llvm.loop !61

60:                                               ; preds = %53, %43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %61 = load ptr, ptr %26, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %62 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %62, align 4, !tbaa !48
  %63 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %63, align 8, !tbaa !50
  %64 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %64, align 8, !tbaa !51
  %65 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  store ptr %66, ptr %4, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %67 = load ptr, ptr %64, align 8, !tbaa !51
  %68 = call ptr %67(ptr noundef nonnull %4) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %60, %70
  %71 = phi ptr [ %75, %70 ], [ %68, %60 ]
  %72 = call ptr @BLI_mempool_calloc(ptr noundef %61) #12
  %73 = getelementptr inbounds %struct.BMElemF, ptr %71, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !54
  %74 = load ptr, ptr %64, align 8, !tbaa !51
  %75 = call ptr %74(ptr noundef nonnull %4) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %70, !llvm.loop !63

77:                                               ; preds = %70, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  %78 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  store i32 1, ptr %78, align 4, !tbaa !64
  br label %79

79:                                               ; preds = %12, %77
  ret void
}

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_toolflags_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %8) #12
  store ptr null, ptr %7, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %13) #12
  store ptr null, ptr %12, align 8, !tbaa !44
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_mesh_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %3 = tail call ptr %2(i64 noundef 1008, ptr noundef nonnull @__func__.BM_mesh_create) #12
  %4 = load i32, ptr %0, align 4, !tbaa !66
  %5 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef %4, i32 noundef 512, i32 noundef 1) #12
  %6 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 9
  store ptr %5, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BMAllocTemplate, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = tail call ptr @BLI_mempool_create(i32 noundef 80, i32 noundef %8, i32 noundef 1024, i32 noundef 1) #12
  %10 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 10
  store ptr %9, ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.BMAllocTemplate, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = tail call ptr @BLI_mempool_create(i32 noundef 72, i32 noundef %12, i32 noundef 2048, i32 noundef 0) #12
  %14 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 11
  store ptr %13, ptr %14, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.BMAllocTemplate, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !71
  %17 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef %16, i32 noundef 512, i32 noundef 1) #12
  %18 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 12
  store ptr %17, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 22
  store i32 1, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 31
  store i32 0, ptr %20, align 4, !tbaa !64
  %21 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %21) #12
  %22 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %22) #12
  %23 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 26
  tail call void @CustomData_reset(ptr noundef nonnull %23) #12
  %24 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 27
  tail call void @CustomData_reset(ptr noundef nonnull %24) #12
  ret ptr %3
}

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_data_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %4) #12
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %7 = tail call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %6) #12
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %9 = tail call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %8) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  store ptr %16, ptr %2, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %17 = load ptr, ptr %14, align 8, !tbaa !51
  %18 = call ptr %17(ptr noundef nonnull %2) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %11, %20
  %21 = phi ptr [ %23, %20 ], [ %18, %11 ]
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %8, ptr noundef nonnull %21) #12
  %22 = load ptr, ptr %14, align 8, !tbaa !51
  %23 = call ptr %22(ptr noundef nonnull %2) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !73

25:                                               ; preds = %20, %11, %1
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %27 = call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %26) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 2, ptr %30, align 4, !tbaa !48
  %31 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  store ptr %34, ptr %2, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %35 = load ptr, ptr %32, align 8, !tbaa !51
  %36 = call ptr %35(ptr noundef nonnull %2) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %29, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %29 ]
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %26, ptr noundef nonnull %39) #12
  %40 = load ptr, ptr %32, align 8, !tbaa !51
  %41 = call ptr %40(ptr noundef nonnull %2) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !74

43:                                               ; preds = %38, %29, %25
  %44 = icmp ne i8 %5, 0
  %45 = icmp ne i8 %7, 0
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 3, ptr %48, align 4, !tbaa !48
  %49 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %50, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  store ptr %52, ptr %2, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %53 = load ptr, ptr %50, align 8, !tbaa !51
  %54 = call ptr %53(ptr noundef nonnull %2) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %79, label %56

56:                                               ; preds = %47
  %57 = icmp eq i8 %7, 0
  %58 = icmp eq i8 %5, 0
  %59 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %60 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %61 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %62

62:                                               ; preds = %56, %75
  %63 = phi ptr [ %54, %56 ], [ %77, %75 ]
  br i1 %57, label %65, label %64

64:                                               ; preds = %62
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %6, ptr noundef nonnull %63) #12
  br label %65

65:                                               ; preds = %64, %62
  br i1 %58, label %75, label %66

66:                                               ; preds = %65
  store i8 11, ptr %59, align 4, !tbaa !48
  store ptr @bmiter__loop_of_face_begin, ptr %60, align 8, !tbaa !50
  store ptr @bmiter__loop_of_face_step, ptr %61, align 8, !tbaa !51
  store ptr %63, ptr %3, align 8, !tbaa !53
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #12
  %67 = load ptr, ptr %61, align 8, !tbaa !51
  %68 = call ptr %67(ptr noundef nonnull %3) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %73, %70 ], [ %68, %66 ]
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %4, ptr noundef nonnull %71) #12
  %72 = load ptr, ptr %61, align 8, !tbaa !51
  %73 = call ptr %72(ptr noundef nonnull %3) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %70, !llvm.loop !75

75:                                               ; preds = %70, %66, %65
  %76 = load ptr, ptr %50, align 8, !tbaa !51
  %77 = call ptr %76(ptr noundef nonnull %2) #12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %62, !llvm.loop !76

79:                                               ; preds = %75, %47, %43
  %80 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !77
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !78
  call void @BLI_mempool_destroy(ptr noundef %85) #12
  br label %86

86:                                               ; preds = %83, %79
  %87 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !79
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !80
  call void @BLI_mempool_destroy(ptr noundef %92) #12
  br label %93

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !81
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !82
  call void @BLI_mempool_destroy(ptr noundef %99) #12
  br label %100

100:                                              ; preds = %97, %93
  %101 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !83
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !84
  call void @BLI_mempool_destroy(ptr noundef %106) #12
  br label %107

107:                                              ; preds = %104, %100
  call void @CustomData_free(ptr noundef nonnull %8, i32 noundef 0) #12
  call void @CustomData_free(ptr noundef nonnull %26, i32 noundef 0) #12
  call void @CustomData_free(ptr noundef nonnull %4, i32 noundef 0) #12
  call void @CustomData_free(ptr noundef nonnull %6, i32 noundef 0) #12
  %108 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  call void @BLI_mempool_destroy(ptr noundef %109) #12
  %110 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !60
  call void @BLI_mempool_destroy(ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %113 = load ptr, ptr %112, align 8, !tbaa !70
  call void @BLI_mempool_destroy(ptr noundef %113) #12
  %114 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !62
  call void @BLI_mempool_destroy(ptr noundef %115) #12
  %116 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %117 = load ptr, ptr %116, align 8, !tbaa !85
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %107
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %120(ptr noundef nonnull %117) #12
  br label %121

121:                                              ; preds = %119, %107
  %122 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %126(ptr noundef nonnull %123) #12
  br label %127

127:                                              ; preds = %125, %121
  %128 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %129 = load ptr, ptr %128, align 8, !tbaa !87
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %132(ptr noundef nonnull %129) #12
  br label %133

133:                                              ; preds = %131, %127
  %134 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %135 = load ptr, ptr %134, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  call void @BLI_mempool_destroy(ptr noundef nonnull %135) #12
  store ptr null, ptr %134, align 8, !tbaa !34
  br label %138

138:                                              ; preds = %137, %133
  %139 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %140 = load ptr, ptr %139, align 8, !tbaa !43
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call void @BLI_mempool_destroy(ptr noundef nonnull %140) #12
  store ptr null, ptr %139, align 8, !tbaa !43
  br label %143

143:                                              ; preds = %142, %138
  %144 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %145 = load ptr, ptr %144, align 8, !tbaa !44
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @BLI_mempool_destroy(ptr noundef nonnull %145) #12
  store ptr null, ptr %144, align 8, !tbaa !44
  br label %148

148:                                              ; preds = %143, %147
  %149 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  call void @BLI_freelistN(ptr noundef nonnull %149) #12
  call void @BMO_error_clear(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

declare zeroext i8 @CustomData_bmesh_has_free(ptr noundef) local_unnamed_addr #1

declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BM_mesh_data_free(ptr noundef %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %0, i8 0, i64 1008, i1 false)
  %2 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef 512, i32 noundef 512, i32 noundef 1) #12
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  store ptr %2, ptr %3, align 8, !tbaa !52
  %4 = tail call ptr @BLI_mempool_create(i32 noundef 80, i32 noundef 1024, i32 noundef 1024, i32 noundef 1) #12
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  store ptr %4, ptr %5, align 8, !tbaa !60
  %6 = tail call ptr @BLI_mempool_create(i32 noundef 72, i32 noundef 2048, i32 noundef 2048, i32 noundef 0) #12
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  store ptr %6, ptr %7, align 8, !tbaa !70
  %8 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef 512, i32 noundef 512, i32 noundef 1) #12
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  store ptr %8, ptr %9, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  store i32 1, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  store i32 0, ptr %11, align 4, !tbaa !64
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %12) #12
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %13) #12
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  tail call void @CustomData_reset(ptr noundef nonnull %14) #12
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  tail call void @CustomData_reset(ptr noundef nonnull %15) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BM_mesh_data_free(ptr noundef %0)
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 35
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @bpy_bm_generic_invalidate(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %7(ptr noundef %0) #12
  ret void
}

declare void @bpy_bm_generic_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_normals_update(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @__func__.BM_mesh_normals_update) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  %10 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 3, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  store ptr %14, ptr %2, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %15 = load ptr, ptr %12, align 8, !tbaa !51
  %16 = call ptr %15(ptr noundef nonnull %2) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1, %18
  %19 = phi i32 [ %24, %18 ], [ 0, %1 ]
  %20 = phi ptr [ %23, %18 ], [ %16, %1 ]
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  store i32 %19, ptr %21, align 8, !tbaa !89
  call void @BM_face_normal_update(ptr noundef nonnull %20) #12
  %22 = load ptr, ptr %12, align 8, !tbaa !51
  %23 = call ptr %22(ptr noundef nonnull %2) #12
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %18, !llvm.loop !90

26:                                               ; preds = %18, %1
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %28 = load i8, ptr %27, align 4, !tbaa !91
  %29 = and i8 %28, -9
  store i8 %29, ptr %27, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %30, align 4, !tbaa !48
  %31 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  store ptr %34, ptr %3, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %35 = load ptr, ptr %32, align 8, !tbaa !51
  %36 = call ptr %35(ptr noundef nonnull %3) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %26, %38
  %39 = phi i32 [ %47, %38 ], [ 0, %26 ]
  %40 = phi ptr [ %46, %38 ], [ %36, %26 ]
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 1
  store i32 %39, ptr %41, align 8, !tbaa !89
  %42 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 3
  store float 0.000000e+00, ptr %42, align 4, !tbaa !92
  %43 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %43, align 4, !tbaa !92
  %44 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %44, align 4, !tbaa !92
  %45 = load ptr, ptr %32, align 8, !tbaa !51
  %46 = call ptr %45(ptr noundef nonnull %3) #12
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %38, !llvm.loop !94

49:                                               ; preds = %38, %26
  %50 = load i8, ptr %27, align 4, !tbaa !91
  %51 = and i8 %50, -2
  store i8 %51, ptr %27, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call fastcc void @bm_mesh_edges_calc_vectors(ptr noundef %0, ptr noundef %9, ptr noundef null)
  call fastcc void @bm_mesh_verts_calc_normals(ptr noundef %0, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null)
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %52(ptr noundef %9) #12
  ret void
}

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_mesh_edges_calc_vectors(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = icmp eq ptr %2, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %9 = load i8, ptr %8, align 4, !tbaa !91
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %13, align 4, !tbaa !48
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  store ptr %17, ptr %4, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %18 = load ptr, ptr %15, align 8, !tbaa !51
  %19 = call ptr %18(ptr noundef nonnull %4) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %12, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %12 ]
  %23 = phi i32 [ %27, %21 ], [ 0, %12 ]
  %24 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !89
  %25 = load ptr, ptr %15, align 8, !tbaa !51
  %26 = call ptr %25(ptr noundef nonnull %4) #12
  %27 = add nuw nsw i32 %23, 1
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %21, !llvm.loop !95

29:                                               ; preds = %21, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %30

30:                                               ; preds = %7, %29
  %31 = load i8, ptr %8, align 4, !tbaa !91
  %32 = and i8 %31, -2
  store i8 %32, ptr %8, align 4, !tbaa !91
  br label %33

33:                                               ; preds = %30, %3
  %34 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %34, align 4, !tbaa !48
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !51
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  store ptr %38, ptr %5, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #12
  %39 = load ptr, ptr %36, align 8, !tbaa !51
  %40 = call ptr %39(ptr noundef nonnull %5) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %110, label %42

42:                                               ; preds = %33, %105
  %43 = phi i64 [ %108, %105 ], [ 0, %33 ]
  %44 = phi ptr [ %107, %105 ], [ %40, %33 ]
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 1
  %46 = trunc i64 %43 to i32
  store i32 %46, ptr %45, align 8, !tbaa !89
  %47 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = icmp eq ptr %48, null
  br i1 %49, label %105, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !99
  br i1 %6, label %58, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.BMHeader, ptr %52, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !89
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x float], ptr %2, i64 %56
  br label %60

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %57, %53 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !100
  br i1 %6, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !89
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x float], ptr %2, i64 %67
  br label %71

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %68, %64 ], [ %70, %69 ]
  %73 = getelementptr inbounds [3 x float], ptr %1, i64 %43
  %74 = load float, ptr %72, align 4, !tbaa !92
  %75 = load float, ptr %61, align 4, !tbaa !92
  %76 = fsub float %74, %75
  store float %76, ptr %73, align 4, !tbaa !92
  %77 = getelementptr inbounds float, ptr %72, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !92
  %79 = getelementptr inbounds float, ptr %61, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !92
  %81 = fsub float %78, %80
  %82 = getelementptr inbounds float, ptr %73, i64 1
  store float %81, ptr %82, align 4, !tbaa !92
  %83 = getelementptr inbounds float, ptr %72, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !92
  %85 = getelementptr inbounds float, ptr %61, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !92
  %87 = fsub float %84, %86
  %88 = getelementptr inbounds float, ptr %73, i64 2
  store float %87, ptr %88, align 4, !tbaa !92
  %89 = fmul float %81, %81
  %90 = call float @llvm.fmuladd.f32(float %76, float %76, float %89)
  %91 = call float @llvm.fmuladd.f32(float %87, float %87, float %90)
  %92 = fcmp ogt float %91, 0x38AA95A5C0000000
  br i1 %92, label %93, label %102

93:                                               ; preds = %71
  %94 = call float @sqrtf(float noundef %91) #12
  %95 = fdiv float 1.000000e+00, %94
  %96 = load float, ptr %73, align 4, !tbaa !92
  %97 = fmul float %96, %95
  store float %97, ptr %73, align 4, !tbaa !92
  %98 = load float, ptr %82, align 4, !tbaa !92
  %99 = fmul float %95, %98
  store float %99, ptr %82, align 4, !tbaa !92
  %100 = load float, ptr %88, align 4, !tbaa !92
  %101 = fmul float %95, %100
  br label %103

102:                                              ; preds = %71
  store float 0.000000e+00, ptr %73, align 4, !tbaa !92
  store float 0.000000e+00, ptr %82, align 4, !tbaa !92
  br label %103

103:                                              ; preds = %93, %102
  %104 = phi float [ 0.000000e+00, %102 ], [ %101, %93 ]
  store float %104, ptr %88, align 4, !tbaa !92
  br label %105

105:                                              ; preds = %103, %42
  %106 = load ptr, ptr %36, align 8, !tbaa !51
  %107 = call ptr %106(ptr noundef nonnull %5) #12
  %108 = add nuw i64 %43, 1
  %109 = icmp eq ptr %107, null
  br i1 %109, label %110, label %42, !llvm.loop !101

110:                                              ; preds = %105, %33
  %111 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %112 = load i8, ptr %111, align 4, !tbaa !91
  %113 = and i8 %112, -3
  store i8 %113, ptr %111, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_mesh_verts_calc_normals(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = icmp eq ptr %4, null
  %9 = select i1 %8, i8 2, i8 3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext %9)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %10 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  store ptr %14, ptr %6, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #12
  %15 = load ptr, ptr %12, align 8, !tbaa !51
  %16 = call ptr %15(ptr noundef nonnull %6) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %109, label %18

18:                                               ; preds = %5
  %19 = icmp eq ptr %2, null
  br label %20

20:                                               ; preds = %18, %104
  %21 = phi i64 [ 0, %18 ], [ %107, %104 ]
  %22 = phi ptr [ %16, %18 ], [ %106, %104 ]
  %23 = getelementptr inbounds [3 x float], ptr %2, i64 %21
  %24 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 4
  %25 = select i1 %19, ptr %24, ptr %23
  %26 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds float, ptr %25, i64 1
  %29 = getelementptr inbounds float, ptr %25, i64 2
  br label %30

30:                                               ; preds = %88, %20
  %31 = phi ptr [ %27, %20 ], [ %102, %88 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !104
  br i1 %8, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !89
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x float], ptr %4, i64 %37
  br label %41

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 3
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %38, %34 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !106
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !107
  %47 = getelementptr inbounds %struct.BMHeader, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !89
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x float], ptr %1, i64 %49
  %51 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !107
  %53 = getelementptr inbounds %struct.BMHeader, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !89
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x float], ptr %1, i64 %55
  %57 = load float, ptr %50, align 4, !tbaa !92
  %58 = load float, ptr %56, align 4, !tbaa !92
  %59 = getelementptr inbounds float, ptr %50, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !92
  %61 = getelementptr inbounds float, ptr %56, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !92
  %63 = fmul float %60, %62
  %64 = call float @llvm.fmuladd.f32(float %57, float %58, float %63)
  %65 = getelementptr inbounds float, ptr %50, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !92
  %67 = getelementptr inbounds float, ptr %56, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !92
  %69 = call float @llvm.fmuladd.f32(float %66, float %68, float %64)
  %70 = getelementptr inbounds %struct.BMEdge, ptr %46, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !99
  %72 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !104
  %74 = icmp eq ptr %71, %73
  %75 = getelementptr inbounds %struct.BMEdge, ptr %52, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !99
  %77 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !104
  %79 = icmp eq ptr %76, %78
  %80 = xor i1 %74, %79
  %81 = fneg float %69
  %82 = select i1 %80, float %69, float %81
  %83 = fcmp ugt float %82, -1.000000e+00
  br i1 %83, label %84, label %88

84:                                               ; preds = %41
  %85 = fcmp ult float %82, 1.000000e+00
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = call float @acosf(float noundef %82) #12
  br label %88

88:                                               ; preds = %41, %84, %86
  %89 = phi float [ %87, %86 ], [ 0x400921FB60000000, %41 ], [ 0.000000e+00, %84 ]
  %90 = load float, ptr %25, align 4, !tbaa !92
  %91 = load float, ptr %42, align 4, !tbaa !92
  %92 = call float @llvm.fmuladd.f32(float %90, float %89, float %91)
  store float %92, ptr %42, align 4, !tbaa !92
  %93 = load float, ptr %28, align 4, !tbaa !92
  %94 = getelementptr inbounds float, ptr %42, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !92
  %96 = call float @llvm.fmuladd.f32(float %93, float %89, float %95)
  store float %96, ptr %94, align 4, !tbaa !92
  %97 = load float, ptr %29, align 4, !tbaa !92
  %98 = getelementptr inbounds float, ptr %42, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !92
  %100 = call float @llvm.fmuladd.f32(float %97, float %89, float %99)
  store float %100, ptr %98, align 4, !tbaa !92
  %101 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !108
  %103 = icmp eq ptr %102, %27
  br i1 %103, label %104, label %30, !llvm.loop !109

104:                                              ; preds = %88
  %105 = load ptr, ptr %12, align 8, !tbaa !51
  %106 = call ptr %105(ptr noundef nonnull %6) #12
  %107 = add nuw i64 %21, 1
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %20, !llvm.loop !110

109:                                              ; preds = %104, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %110 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %110, align 4, !tbaa !48
  %111 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %111, align 8, !tbaa !50
  %112 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %112, align 8, !tbaa !51
  %113 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %114 = load ptr, ptr %113, align 8, !tbaa !52
  store ptr %114, ptr %7, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #12
  %115 = load ptr, ptr %112, align 8, !tbaa !51
  %116 = call ptr %115(ptr noundef nonnull %7) #12
  %117 = icmp eq ptr %116, null
  br i1 %117, label %179, label %118

118:                                              ; preds = %109
  %119 = icmp eq ptr %3, null
  br label %120

120:                                              ; preds = %118, %174
  %121 = phi i64 [ 0, %118 ], [ %177, %174 ]
  %122 = phi ptr [ %116, %118 ], [ %176, %174 ]
  %123 = getelementptr inbounds [3 x float], ptr %4, i64 %121
  %124 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 3
  %125 = select i1 %8, ptr %124, ptr %123
  %126 = load float, ptr %125, align 4, !tbaa !92
  %127 = getelementptr inbounds float, ptr %125, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !92
  %129 = fmul float %128, %128
  %130 = call float @llvm.fmuladd.f32(float %126, float %126, float %129)
  %131 = getelementptr inbounds float, ptr %125, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !92
  %133 = call float @llvm.fmuladd.f32(float %132, float %132, float %130)
  %134 = fcmp ogt float %133, 0x38AA95A5C0000000
  br i1 %134, label %135, label %144

135:                                              ; preds = %120
  %136 = call float @sqrtf(float noundef %133) #12
  %137 = fdiv float 1.000000e+00, %136
  %138 = load float, ptr %125, align 4, !tbaa !92
  %139 = fmul float %138, %137
  store float %139, ptr %125, align 4, !tbaa !92
  %140 = load float, ptr %127, align 4, !tbaa !92
  %141 = fmul float %137, %140
  store float %141, ptr %127, align 4, !tbaa !92
  %142 = load float, ptr %131, align 4, !tbaa !92
  %143 = fmul float %137, %142
  br label %145

144:                                              ; preds = %120
  store float 0.000000e+00, ptr %125, align 4, !tbaa !92
  store float 0.000000e+00, ptr %127, align 4, !tbaa !92
  br label %145

145:                                              ; preds = %135, %144
  %146 = phi float [ 0.000000e+00, %144 ], [ %143, %135 ]
  %147 = phi float [ 0.000000e+00, %144 ], [ %136, %135 ]
  store float %146, ptr %131, align 4, !tbaa !92
  %148 = fcmp oeq float %147, 0.000000e+00
  br i1 %148, label %149, label %174

149:                                              ; preds = %145
  %150 = getelementptr inbounds [3 x float], ptr %3, i64 %121
  %151 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2
  %152 = select i1 %119, ptr %151, ptr %150
  %153 = load float, ptr %152, align 4, !tbaa !92
  %154 = getelementptr inbounds float, ptr %152, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !92
  %156 = fmul float %155, %155
  %157 = call float @llvm.fmuladd.f32(float %153, float %153, float %156)
  %158 = getelementptr inbounds float, ptr %152, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !92
  %160 = call float @llvm.fmuladd.f32(float %159, float %159, float %157)
  %161 = fcmp ogt float %160, 0x38AA95A5C0000000
  br i1 %161, label %162, label %171

162:                                              ; preds = %149
  %163 = call float @sqrtf(float noundef %160) #12
  %164 = fdiv float 1.000000e+00, %163
  %165 = load float, ptr %152, align 4, !tbaa !92
  %166 = fmul float %165, %164
  store float %166, ptr %125, align 4, !tbaa !92
  %167 = load float, ptr %154, align 4, !tbaa !92
  %168 = fmul float %164, %167
  store float %168, ptr %127, align 4, !tbaa !92
  %169 = load float, ptr %158, align 4, !tbaa !92
  %170 = fmul float %164, %169
  br label %172

171:                                              ; preds = %149
  store float 0.000000e+00, ptr %125, align 4, !tbaa !92
  store float 0.000000e+00, ptr %127, align 4, !tbaa !92
  br label %172

172:                                              ; preds = %162, %171
  %173 = phi float [ 0.000000e+00, %171 ], [ %170, %162 ]
  store float %173, ptr %131, align 4, !tbaa !92
  br label %174

174:                                              ; preds = %172, %145
  %175 = load ptr, ptr %112, align 8, !tbaa !51
  %176 = call ptr %175(ptr noundef nonnull %7) #12
  %177 = add nuw i64 %121, 1
  %178 = icmp eq ptr %176, null
  br i1 %178, label %179, label %120, !llvm.loop !111

179:                                              ; preds = %174, %109
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_verts_calc_normal_vcos(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 12
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @__func__.BM_verts_calc_normal_vcos) #12
  tail call fastcc void @bm_mesh_edges_calc_vectors(ptr noundef %0, ptr noundef %10, ptr noundef %2)
  tail call fastcc void @bm_mesh_verts_calc_normals(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %11(ptr noundef %10) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_loops_calc_normal_vcos(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %10 = fcmp olt float %4, 0x400921FB60000000
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call float @cosf(float noundef %4) #12
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi float [ %12, %11 ], [ %4, %6 ]
  %15 = icmp eq ptr %2, null
  %16 = select i1 %15, i8 4, i8 5
  %17 = icmp eq ptr %3, null
  %18 = or disjoint i8 %16, 8
  %19 = select i1 %17, i8 %16, i8 %18
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext %19)
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 2, ptr %20, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  store ptr %24, ptr %7, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #12
  %25 = load ptr, ptr %22, align 8, !tbaa !51
  %26 = call ptr %25(ptr noundef nonnull %7) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %154, label %28

28:                                               ; preds = %13, %149
  %29 = phi ptr [ %151, %149 ], [ %26, %13 ]
  %30 = phi i32 [ %152, %149 ], [ 0, %13 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %31 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !112
  %34 = and i8 %33, -17
  store i8 %34, ptr %32, align 1, !tbaa !112
  %35 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %29, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %149, label %37

37:                                               ; preds = %28
  br i1 %10, label %38, label %78

38:                                               ; preds = %37
  %39 = load ptr, ptr %8, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  br i1 %17, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !89
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x float], ptr %3, i64 %45
  br label %49

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %46, %42 ], [ %48, %47 ]
  %51 = load ptr, ptr %9, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !113
  br i1 %17, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !89
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x float], ptr %3, i64 %57
  br label %61

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.BMFace, ptr %53, i64 0, i32 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi ptr [ %58, %54 ], [ %60, %59 ]
  %63 = load float, ptr %50, align 4, !tbaa !92
  %64 = load float, ptr %62, align 4, !tbaa !92
  %65 = getelementptr inbounds float, ptr %50, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !92
  %67 = getelementptr inbounds float, ptr %62, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !92
  %69 = fmul float %66, %68
  %70 = call float @llvm.fmuladd.f32(float %63, float %64, float %69)
  %71 = getelementptr inbounds float, ptr %50, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !92
  %73 = getelementptr inbounds float, ptr %62, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !92
  %75 = call float @llvm.fmuladd.f32(float %72, float %74, float %70)
  %76 = fcmp oge float %75, %14
  %77 = zext i1 %76 to i32
  br label %78

78:                                               ; preds = %61, %37
  %79 = phi i32 [ %77, %61 ], [ 1, %37 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %149, label %81

81:                                               ; preds = %78
  %82 = load i8, ptr %32, align 1, !tbaa !112
  %83 = and i8 %82, 8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %149, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %8, align 8, !tbaa !65
  %87 = getelementptr inbounds %struct.BMLoop, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !113
  %89 = getelementptr inbounds %struct.BMHeader, ptr %88, i64 0, i32 3
  %90 = load i8, ptr %89, align 1, !tbaa !112
  %91 = and i8 %90, 8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %149, label %93

93:                                               ; preds = %85
  %94 = load ptr, ptr %9, align 8, !tbaa !65
  %95 = getelementptr inbounds %struct.BMLoop, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !113
  %97 = getelementptr inbounds %struct.BMHeader, ptr %96, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !112
  %99 = and i8 %98, 8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %149, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.BMLoop, ptr %86, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !104
  %104 = getelementptr inbounds %struct.BMLoop, ptr %94, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !104
  %106 = icmp eq ptr %103, %105
  br i1 %106, label %149, label %107

107:                                              ; preds = %101
  %108 = or i8 %82, 16
  store i8 %108, ptr %32, align 1, !tbaa !112
  br i1 %15, label %114, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !89
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x float], ptr %2, i64 %112
  br label %116

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.BMVert, ptr %103, i64 0, i32 3
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi ptr [ %113, %109 ], [ %115, %114 ]
  %118 = getelementptr inbounds %struct.BMHeader, ptr %86, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !89
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x float], ptr %5, i64 %120
  %122 = load float, ptr %117, align 4, !tbaa !92
  store float %122, ptr %121, align 4, !tbaa !92
  %123 = getelementptr inbounds float, ptr %117, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !92
  %125 = getelementptr inbounds float, ptr %121, i64 1
  store float %124, ptr %125, align 4, !tbaa !92
  %126 = getelementptr inbounds float, ptr %117, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !92
  %128 = getelementptr inbounds float, ptr %121, i64 2
  store float %127, ptr %128, align 4, !tbaa !92
  br i1 %15, label %134, label %129

129:                                              ; preds = %116
  %130 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !89
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x float], ptr %2, i64 %132
  br label %136

134:                                              ; preds = %116
  %135 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 3
  br label %136

136:                                              ; preds = %134, %129
  %137 = phi ptr [ %133, %129 ], [ %135, %134 ]
  %138 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !89
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x float], ptr %5, i64 %140
  %142 = load float, ptr %137, align 4, !tbaa !92
  store float %142, ptr %141, align 4, !tbaa !92
  %143 = getelementptr inbounds float, ptr %137, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !92
  %145 = getelementptr inbounds float, ptr %141, i64 1
  store float %144, ptr %145, align 4, !tbaa !92
  %146 = getelementptr inbounds float, ptr %137, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !92
  %148 = getelementptr inbounds float, ptr %141, i64 2
  store float %147, ptr %148, align 4, !tbaa !92
  br label %149

149:                                              ; preds = %136, %101, %93, %85, %81, %78, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %150 = load ptr, ptr %22, align 8, !tbaa !51
  %151 = call ptr %150(ptr noundef nonnull %7) #12
  %152 = add nuw nsw i32 %30, 1
  %153 = icmp eq ptr %151, null
  br i1 %153, label %154, label %28, !llvm.loop !114

154:                                              ; preds = %149, %13
  %155 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %156 = load i8, ptr %155, align 4, !tbaa !91
  %157 = and i8 %156, -3
  store i8 %157, ptr %155, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  call fastcc void @bm_mesh_loops_calc_normals(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_mesh_loops_calc_normals(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, i8 4, i8 5
  %9 = icmp eq ptr %2, null
  %10 = or disjoint i8 %8, 8
  %11 = select i1 %9, i8 %8, i8 %10
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext %11)
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  store ptr %16, ptr %5, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #12
  %17 = load ptr, ptr %14, align 8, !tbaa !51
  %18 = call ptr %17(ptr noundef nonnull %5) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %295, label %20

20:                                               ; preds = %4, %291
  %21 = phi ptr [ %293, %291 ], [ %18, %4 ]
  %22 = phi ptr [ %287, %291 ], [ null, %4 ]
  %23 = phi ptr [ %286, %291 ], [ null, %4 ]
  %24 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 1
  %27 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 4
  br label %28

28:                                               ; preds = %285, %20
  %29 = phi ptr [ %25, %20 ], [ %289, %285 ]
  %30 = phi ptr [ %23, %20 ], [ %286, %285 ]
  %31 = phi ptr [ %22, %20 ], [ %287, %285 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !112
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %285

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !107
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !112
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  br i1 %9, label %52, label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %26, align 8, !tbaa !89
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], ptr %2, i64 %50
  br label %52

52:                                               ; preds = %47, %48
  %53 = phi ptr [ %51, %48 ], [ %27, %47 ]
  %54 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !89
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x float], ptr %3, i64 %56
  %58 = load float, ptr %53, align 4, !tbaa !92
  store float %58, ptr %57, align 4, !tbaa !92
  %59 = getelementptr inbounds float, ptr %53, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !92
  %61 = getelementptr inbounds float, ptr %57, i64 1
  store float %60, ptr %61, align 4, !tbaa !92
  %62 = getelementptr inbounds float, ptr %53, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !92
  %64 = getelementptr inbounds float, ptr %57, i64 2
  store float %63, ptr %64, align 4, !tbaa !92
  br label %285

65:                                               ; preds = %38
  %66 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  br i1 %7, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !89
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x float], ptr %1, i64 %71
  br label %75

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %72, %68 ], [ %74, %73 ]
  store ptr %33, ptr %6, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !99
  %79 = icmp eq ptr %78, %67
  %80 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !100
  %82 = icmp eq ptr %81, %67
  %83 = select i1 %82, ptr %78, ptr null
  %84 = select i1 %79, ptr %81, ptr %83
  br i1 %7, label %90, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !89
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x float], ptr %1, i64 %88
  br label %92

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi ptr [ %89, %85 ], [ %91, %90 ]
  %94 = load float, ptr %93, align 4, !tbaa !92
  %95 = load float, ptr %76, align 4, !tbaa !92
  %96 = fsub float %94, %95
  %97 = getelementptr inbounds float, ptr %93, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !92
  %99 = getelementptr inbounds float, ptr %76, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !92
  %101 = fsub float %98, %100
  %102 = getelementptr inbounds float, ptr %93, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !92
  %104 = getelementptr inbounds float, ptr %76, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !92
  %106 = fsub float %103, %105
  %107 = fmul float %101, %101
  %108 = call float @llvm.fmuladd.f32(float %96, float %96, float %107)
  %109 = call float @llvm.fmuladd.f32(float %106, float %106, float %108)
  %110 = fcmp ogt float %109, 0x38AA95A5C0000000
  br i1 %110, label %111, label %117

111:                                              ; preds = %92
  %112 = call float @sqrtf(float noundef %109) #12
  %113 = fdiv float 1.000000e+00, %112
  %114 = fmul float %96, %113
  %115 = fmul float %101, %113
  %116 = fmul float %106, %113
  br label %117

117:                                              ; preds = %92, %111
  %118 = phi float [ %116, %111 ], [ 0.000000e+00, %92 ]
  %119 = phi float [ %115, %111 ], [ 0.000000e+00, %92 ]
  %120 = phi float [ %114, %111 ], [ 0.000000e+00, %92 ]
  br label %121

121:                                              ; preds = %117, %223
  %122 = phi float [ %211, %223 ], [ 0.000000e+00, %117 ]
  %123 = phi float [ %214, %223 ], [ 0.000000e+00, %117 ]
  %124 = phi float [ %217, %223 ], [ 0.000000e+00, %117 ]
  %125 = phi float [ %188, %223 ], [ %118, %117 ]
  %126 = phi float [ %186, %223 ], [ %119, %117 ]
  %127 = phi float [ %187, %223 ], [ %120, %117 ]
  %128 = phi ptr [ %131, %223 ], [ %29, %117 ]
  %129 = phi ptr [ %225, %223 ], [ %30, %117 ]
  %130 = phi ptr [ %224, %223 ], [ %31, %117 ]
  %131 = call ptr @BM_vert_step_fan_loop(ptr noundef %128, ptr noundef nonnull %6) #12
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !107
  %136 = load ptr, ptr %6, align 8, !tbaa !65
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !106
  %141 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !107
  br label %143

143:                                              ; preds = %133, %138
  %144 = phi ptr [ %142, %138 ], [ %135, %133 ]
  store ptr %144, ptr %6, align 8, !tbaa !65
  br label %145

145:                                              ; preds = %121, %143
  %146 = load ptr, ptr %6, align 8, !tbaa !65
  %147 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !99
  %149 = icmp eq ptr %148, %67
  %150 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !100
  %152 = icmp eq ptr %151, %67
  %153 = select i1 %152, ptr %148, ptr null
  %154 = select i1 %149, ptr %151, ptr %153
  br i1 %7, label %160, label %155

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.BMHeader, ptr %154, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !89
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x float], ptr %1, i64 %158
  br label %162

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.BMVert, ptr %154, i64 0, i32 2
  br label %162

162:                                              ; preds = %160, %155
  %163 = phi ptr [ %159, %155 ], [ %161, %160 ]
  %164 = load float, ptr %163, align 4, !tbaa !92
  %165 = load float, ptr %76, align 4, !tbaa !92
  %166 = fsub float %164, %165
  %167 = getelementptr inbounds float, ptr %163, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !92
  %169 = load float, ptr %99, align 4, !tbaa !92
  %170 = fsub float %168, %169
  %171 = getelementptr inbounds float, ptr %163, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !92
  %173 = load float, ptr %104, align 4, !tbaa !92
  %174 = fsub float %172, %173
  %175 = fmul float %170, %170
  %176 = call float @llvm.fmuladd.f32(float %166, float %166, float %175)
  %177 = call float @llvm.fmuladd.f32(float %174, float %174, float %176)
  %178 = fcmp ogt float %177, 0x38AA95A5C0000000
  br i1 %178, label %179, label %185

179:                                              ; preds = %162
  %180 = call float @sqrtf(float noundef %177) #12
  %181 = fdiv float 1.000000e+00, %180
  %182 = fmul float %166, %181
  %183 = fmul float %170, %181
  %184 = fmul float %174, %181
  br label %185

185:                                              ; preds = %162, %179
  %186 = phi float [ %183, %179 ], [ 0.000000e+00, %162 ]
  %187 = phi float [ %182, %179 ], [ 0.000000e+00, %162 ]
  %188 = phi float [ %184, %179 ], [ 0.000000e+00, %162 ]
  %189 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !113
  %191 = fmul float %126, %186
  %192 = call float @llvm.fmuladd.f32(float %187, float %127, float %191)
  %193 = call float @llvm.fmuladd.f32(float %188, float %125, float %192)
  %194 = fcmp ugt float %193, -1.000000e+00
  br i1 %194, label %195, label %199

195:                                              ; preds = %185
  %196 = fcmp ult float %193, 1.000000e+00
  br i1 %196, label %197, label %199

197:                                              ; preds = %195
  %198 = call float @acosf(float noundef %193) #12
  br label %199

199:                                              ; preds = %185, %195, %197
  %200 = phi float [ %198, %197 ], [ 0x400921FB60000000, %185 ], [ 0.000000e+00, %195 ]
  br i1 %9, label %206, label %201

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.BMHeader, ptr %190, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !89
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [3 x float], ptr %2, i64 %204
  br label %208

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.BMFace, ptr %190, i64 0, i32 4
  br label %208

208:                                              ; preds = %206, %201
  %209 = phi ptr [ %205, %201 ], [ %207, %206 ]
  %210 = load float, ptr %209, align 4, !tbaa !92
  %211 = call float @llvm.fmuladd.f32(float %210, float %200, float %122)
  %212 = getelementptr inbounds float, ptr %209, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !92
  %214 = call float @llvm.fmuladd.f32(float %213, float %200, float %123)
  %215 = getelementptr inbounds float, ptr %209, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !92
  %217 = call float @llvm.fmuladd.f32(float %216, float %200, float %124)
  %218 = icmp eq ptr %129, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %208
  %220 = load ptr, ptr %129, align 8, !tbaa !115
  br label %223

221:                                              ; preds = %208
  %222 = alloca [16 x i8], align 16
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi ptr [ %129, %219 ], [ %222, %221 ]
  %225 = phi ptr [ %220, %219 ], [ null, %221 ]
  store ptr %130, ptr %224, align 8, !tbaa !115
  %226 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !89
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [3 x float], ptr %3, i64 %228
  %230 = getelementptr inbounds %struct.LinkNode, ptr %224, i64 0, i32 1
  store ptr %229, ptr %230, align 8, !tbaa !117
  %231 = load ptr, ptr %6, align 8, !tbaa !65
  %232 = getelementptr inbounds %struct.BMHeader, ptr %231, i64 0, i32 3
  %233 = load i8, ptr %232, align 1, !tbaa !112
  %234 = and i8 %233, 16
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %121, !llvm.loop !118

236:                                              ; preds = %223
  %237 = fmul float %214, %214
  %238 = call float @llvm.fmuladd.f32(float %211, float %211, float %237)
  %239 = call float @llvm.fmuladd.f32(float %217, float %217, float %238)
  %240 = fcmp ogt float %239, 0x38AA95A5C0000000
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = call float @sqrtf(float noundef %239) #12
  %243 = fdiv float 1.000000e+00, %242
  %244 = fmul float %211, %243
  %245 = fmul float %214, %243
  %246 = fmul float %217, %243
  br label %247

247:                                              ; preds = %236, %241
  %248 = phi float [ %244, %241 ], [ 0.000000e+00, %236 ]
  %249 = phi float [ %245, %241 ], [ 0.000000e+00, %236 ]
  %250 = phi float [ %246, %241 ], [ 0.000000e+00, %236 ]
  %251 = phi float [ %242, %241 ], [ 0.000000e+00, %236 ]
  %252 = fcmp une float %251, 0.000000e+00
  br i1 %252, label %253, label %269

253:                                              ; preds = %247, %266
  %254 = phi ptr [ %262, %266 ], [ %225, %247 ]
  %255 = phi ptr [ %263, %266 ], [ %224, %247 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %255, align 8, !tbaa !115
  store ptr %254, ptr %255, align 8, !tbaa !115
  %259 = getelementptr inbounds %struct.LinkNode, ptr %255, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !117
  br label %261

261:                                              ; preds = %253, %257
  %262 = phi ptr [ %255, %257 ], [ %254, %253 ]
  %263 = phi ptr [ %258, %257 ], [ null, %253 ]
  %264 = phi ptr [ %260, %257 ], [ null, %253 ]
  %265 = icmp eq ptr %264, null
  br i1 %265, label %282, label %266

266:                                              ; preds = %261
  store float %248, ptr %264, align 4, !tbaa !92
  %267 = getelementptr inbounds float, ptr %264, i64 1
  store float %249, ptr %267, align 4, !tbaa !92
  %268 = getelementptr inbounds float, ptr %264, i64 2
  store float %250, ptr %268, align 4, !tbaa !92
  br label %253, !llvm.loop !119

269:                                              ; preds = %247, %277
  %270 = phi ptr [ %278, %277 ], [ %225, %247 ]
  %271 = phi ptr [ %279, %277 ], [ %224, %247 ]
  %272 = icmp eq ptr %271, null
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %271, align 8, !tbaa !115
  store ptr %270, ptr %271, align 8, !tbaa !115
  %275 = getelementptr inbounds %struct.LinkNode, ptr %271, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !117
  br label %277

277:                                              ; preds = %269, %273
  %278 = phi ptr [ %271, %273 ], [ %270, %269 ]
  %279 = phi ptr [ %274, %273 ], [ null, %269 ]
  %280 = phi ptr [ %276, %273 ], [ null, %269 ]
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %269, !llvm.loop !120

282:                                              ; preds = %277, %261
  %283 = phi ptr [ %262, %261 ], [ %278, %277 ]
  %284 = phi ptr [ %263, %261 ], [ %279, %277 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %285

285:                                              ; preds = %28, %282, %52
  %286 = phi ptr [ %30, %52 ], [ %283, %282 ], [ %30, %28 ]
  %287 = phi ptr [ %31, %52 ], [ %284, %282 ], [ %31, %28 ]
  %288 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !108
  %290 = icmp eq ptr %289, %25
  br i1 %290, label %291, label %28, !llvm.loop !121

291:                                              ; preds = %285
  %292 = load ptr, ptr %14, align 8, !tbaa !51
  %293 = call ptr %292(ptr noundef nonnull %5) #12
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %20, !llvm.loop !122

295:                                              ; preds = %291, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @bmesh_edit_begin(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmesh_edit_end(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %4 = and i32 %1, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BM_mesh_normals_update(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %2
  %8 = and i32 %1, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %12

12:                                               ; preds = %10, %7
  %13 = and i32 %1, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BM_mesh_select_mode_flush(ptr noundef %0) #12
  br label %16

16:                                               ; preds = %15, %12
  br i1 %9, label %17, label %19

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !123
  br label %19

19:                                               ; preds = %17, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_index_ensure(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 4, !tbaa !91
  %8 = zext i8 %1 to i32
  %9 = and i8 %7, %1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %111, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i8 %7, 1
  %15 = icmp eq i8 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  store ptr %22, ptr %3, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %23 = load ptr, ptr %20, align 8, !tbaa !51
  %24 = call ptr %23(ptr noundef nonnull %3) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %17, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %17 ]
  %28 = phi i32 [ %32, %26 ], [ 0, %17 ]
  %29 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !89
  %30 = load ptr, ptr %20, align 8, !tbaa !51
  %31 = call ptr %30(ptr noundef nonnull %3) #12
  %32 = add nuw nsw i32 %28, 1
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %26, !llvm.loop !95

34:                                               ; preds = %26, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %35

35:                                               ; preds = %34, %11
  %36 = and i32 %8, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = load i8, ptr %6, align 4, !tbaa !91
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %43 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %43, align 4, !tbaa !48
  %44 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %45, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  store ptr %47, ptr %4, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %48 = load ptr, ptr %45, align 8, !tbaa !51
  %49 = call ptr %48(ptr noundef nonnull %4) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %42, %51
  %52 = phi ptr [ %56, %51 ], [ %49, %42 ]
  %53 = phi i32 [ %57, %51 ], [ 0, %42 ]
  %54 = getelementptr inbounds %struct.BMHeader, ptr %52, i64 0, i32 1
  store i32 %53, ptr %54, align 8, !tbaa !89
  %55 = load ptr, ptr %45, align 8, !tbaa !51
  %56 = call ptr %55(ptr noundef nonnull %4) #12
  %57 = add nuw nsw i32 %53, 1
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %51, !llvm.loop !124

59:                                               ; preds = %51, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %60

60:                                               ; preds = %59, %38, %35
  %61 = and i32 %8, 12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %60
  %64 = load i8, ptr %6, align 4, !tbaa !91
  %65 = and i8 %64, 12
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %68 = and i32 %8, 8
  %69 = icmp eq i32 %68, 0
  %70 = and i8 %64, 8
  %71 = icmp eq i8 %70, 0
  %72 = or i1 %69, %71
  %73 = and i32 %8, 4
  %74 = icmp eq i32 %73, 0
  %75 = and i8 %64, 4
  %76 = icmp eq i8 %75, 0
  %77 = or i1 %74, %76
  %78 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %78, align 4, !tbaa !48
  %79 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %79, align 8, !tbaa !50
  %80 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %80, align 8, !tbaa !51
  %81 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !62
  store ptr %82, ptr %5, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #12
  %83 = load ptr, ptr %80, align 8, !tbaa !51
  %84 = call ptr %83(ptr noundef nonnull %5) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %110, label %86

86:                                               ; preds = %67, %104
  %87 = phi i32 [ %105, %104 ], [ 0, %67 ]
  %88 = phi i32 [ %108, %104 ], [ 0, %67 ]
  %89 = phi ptr [ %107, %104 ], [ %84, %67 ]
  br i1 %72, label %92, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 1
  store i32 %88, ptr %91, align 8, !tbaa !89
  br label %92

92:                                               ; preds = %90, %86
  br i1 %77, label %104, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.BMFace, ptr %89, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !102
  br label %96

96:                                               ; preds = %96, %93
  %97 = phi i32 [ %87, %93 ], [ %99, %96 ]
  %98 = phi ptr [ %95, %93 ], [ %102, %96 ]
  %99 = add nsw i32 %97, 1
  %100 = getelementptr inbounds %struct.BMHeader, ptr %98, i64 0, i32 1
  store i32 %97, ptr %100, align 8, !tbaa !89
  %101 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !108
  %103 = icmp eq ptr %102, %95
  br i1 %103, label %104, label %96, !llvm.loop !125

104:                                              ; preds = %96, %92
  %105 = phi i32 [ %87, %92 ], [ %99, %96 ]
  %106 = load ptr, ptr %80, align 8, !tbaa !51
  %107 = call ptr %106(ptr noundef nonnull %5) #12
  %108 = add nuw nsw i32 %88, 1
  %109 = icmp eq ptr %107, null
  br i1 %109, label %110, label %86, !llvm.loop !126

110:                                              ; preds = %104, %67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  br label %111

111:                                              ; preds = %60, %63, %110, %2
  %112 = xor i8 %1, -1
  %113 = load i8, ptr %6, align 4, !tbaa !91
  %114 = and i8 %113, %112
  store i8 %114, ptr %6, align 4, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_index_validate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %9 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %18 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %32 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %35 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %36 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %38 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %39 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %41

41:                                               ; preds = %5, %104
  %42 = phi i64 [ 0, %5 ], [ %105, %104 ]
  %43 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_index_validate.flag_types, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !53
  %45 = load i8, ptr %7, align 4, !tbaa !91
  %46 = and i8 %45, %44
  %47 = icmp ne i8 %46, 0
  %48 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_index_validate.iter_types, i64 0, i64 %42
  %49 = load i8, ptr %48, align 1, !tbaa !53
  store i8 %49, ptr %8, align 4, !tbaa !48
  switch i8 %49, label %70 [
    i8 1, label %50
    i8 2, label %52
    i8 3, label %54
    i8 4, label %56
    i8 5, label %57
    i8 6, label %58
    i8 7, label %59
    i8 8, label %60
    i8 9, label %61
    i8 10, label %62
    i8 11, label %63
    i8 13, label %64
    i8 14, label %65
  ]

50:                                               ; preds = %41
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !50
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !51
  %51 = load ptr, ptr %37, align 8, !tbaa !52
  store ptr %51, ptr %6, align 8, !tbaa !53
  br label %66

52:                                               ; preds = %41
  store ptr @bmiter__elem_of_mesh_begin, ptr %32, align 8, !tbaa !50
  store ptr @bmiter__elem_of_mesh_step, ptr %33, align 8, !tbaa !51
  %53 = load ptr, ptr %34, align 8, !tbaa !60
  store ptr %53, ptr %6, align 8, !tbaa !53
  br label %66

54:                                               ; preds = %41
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !50
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !51
  %55 = load ptr, ptr %31, align 8, !tbaa !62
  store ptr %55, ptr %6, align 8, !tbaa !53
  br label %66

56:                                               ; preds = %41
  store ptr @bmiter__edge_of_vert_begin, ptr %27, align 8, !tbaa !50
  store ptr @bmiter__edge_of_vert_step, ptr %28, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

57:                                               ; preds = %41
  store ptr @bmiter__face_of_vert_begin, ptr %25, align 8, !tbaa !50
  store ptr @bmiter__face_of_vert_step, ptr %26, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

58:                                               ; preds = %41
  store ptr @bmiter__loop_of_vert_begin, ptr %23, align 8, !tbaa !50
  store ptr @bmiter__loop_of_vert_step, ptr %24, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

59:                                               ; preds = %41
  store ptr @bmiter__vert_of_edge_begin, ptr %21, align 8, !tbaa !50
  store ptr @bmiter__vert_of_edge_step, ptr %22, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

60:                                               ; preds = %41
  store ptr @bmiter__face_of_edge_begin, ptr %19, align 8, !tbaa !50
  store ptr @bmiter__face_of_edge_step, ptr %20, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

61:                                               ; preds = %41
  store ptr @bmiter__vert_of_face_begin, ptr %17, align 8, !tbaa !50
  store ptr @bmiter__vert_of_face_step, ptr %18, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

62:                                               ; preds = %41
  store ptr @bmiter__edge_of_face_begin, ptr %15, align 8, !tbaa !50
  store ptr @bmiter__edge_of_face_step, ptr %16, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

63:                                               ; preds = %41
  store ptr @bmiter__loop_of_face_begin, ptr %13, align 8, !tbaa !50
  store ptr @bmiter__loop_of_face_step, ptr %14, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

64:                                               ; preds = %41
  store ptr @bmiter__loop_of_loop_begin, ptr %11, align 8, !tbaa !50
  store ptr @bmiter__loop_of_loop_step, ptr %12, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

65:                                               ; preds = %41
  store ptr @bmiter__loop_of_edge_begin, ptr %9, align 8, !tbaa !50
  store ptr @bmiter__loop_of_edge_step, ptr %10, align 8, !tbaa !51
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %54, %52, %50
  %67 = load ptr, ptr %38, align 8, !tbaa !50
  call void %67(ptr noundef nonnull %6) #12
  %68 = load ptr, ptr %39, align 8, !tbaa !51
  %69 = call ptr %68(ptr noundef nonnull %6) #12
  br label %70

70:                                               ; preds = %41, %66
  %71 = phi ptr [ %69, %66 ], [ null, %41 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %93, label %73

73:                                               ; preds = %70, %84
  %74 = phi i32 [ %87, %84 ], [ 0, %70 ]
  %75 = phi i32 [ %86, %84 ], [ 0, %70 ]
  %76 = phi i8 [ %85, %84 ], [ 0, %70 ]
  %77 = phi i32 [ %89, %84 ], [ 0, %70 ]
  %78 = phi ptr [ %91, %84 ], [ %71, %70 ]
  br i1 %47, label %84, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !89
  %82 = icmp eq i32 %81, %77
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %79, %83, %73
  %85 = phi i8 [ %76, %73 ], [ 1, %83 ], [ %76, %79 ]
  %86 = phi i32 [ %75, %73 ], [ %81, %83 ], [ %75, %79 ]
  %87 = phi i32 [ %74, %73 ], [ %77, %83 ], [ %74, %79 ]
  %88 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 1
  store i32 %77, ptr %88, align 8, !tbaa !89
  %89 = add nuw nsw i32 %77, 1
  %90 = load ptr, ptr %40, align 8, !tbaa !51
  %91 = call ptr %90(ptr noundef nonnull %6) #12
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %73, !llvm.loop !127

93:                                               ; preds = %84, %70
  %94 = phi i8 [ 0, %70 ], [ %85, %84 ]
  %95 = phi i32 [ 0, %70 ], [ %86, %84 ]
  %96 = phi i32 [ 0, %70 ], [ %87, %84 ]
  %97 = icmp ne i8 %94, 1
  %98 = select i1 %97, i1 true, i1 %47
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr @stderr, align 8, !tbaa !65
  %101 = shl i64 %42, 2
  %102 = call ptr @llvm.load.relative.i64(ptr @reltable.BM_mesh_elem_index_validate, i64 %101)
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %2, ptr noundef %102, i32 noundef %96, i32 noundef %95, ptr noundef %3, ptr noundef %4) #13
  br label %104

104:                                              ; preds = %93, %99
  %105 = add nuw nsw i64 %42, 1
  %106 = icmp eq i64 %105, 3
  br i1 %106, label %107, label %41, !llvm.loop !128

107:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !129
  %9 = and i8 %8, 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i8 [ 1, %2 ], [ %9, %6 ]
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %17 = load i8, ptr %16, align 1, !tbaa !129
  %18 = and i8 %17, 2
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i8 [ 2, %10 ], [ %18, %15 ]
  %21 = or disjoint i8 %20, %11
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %27 = load i8, ptr %26, align 1, !tbaa !129
  %28 = and i8 %27, 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i8 [ 8, %19 ], [ %28, %25 ]
  %31 = or disjoint i8 %21, %30
  %32 = and i8 %31, %1
  %33 = zext nneg i8 %32 to i32
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %128, label %35

35:                                               ; preds = %29
  %36 = and i32 %33, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %35
  br i1 %5, label %50, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %0, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !130
  %43 = icmp sgt i32 %40, %42
  %44 = shl nsw i32 %40, 1
  %45 = icmp slt i32 %44, %42
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  br i1 %5, label %50, label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %49(ptr noundef nonnull %4) #12
  br label %50

50:                                               ; preds = %38, %48, %47
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %52 = load i32, ptr %0, align 8, !tbaa !45
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call ptr %51(i64 noundef %54, ptr noundef nonnull @.str.4) #12
  store ptr %55, ptr %3, align 8, !tbaa !85
  %56 = load i32, ptr %0, align 8, !tbaa !45
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 16
  store i32 %56, ptr %57, align 8, !tbaa !130
  br label %58

58:                                               ; preds = %39, %50, %35
  %59 = and i32 %33, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %12, align 8, !tbaa !86
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !46
  %67 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 17
  %68 = load i32, ptr %67, align 4, !tbaa !131
  %69 = icmp sgt i32 %66, %68
  %70 = shl nsw i32 %66, 1
  %71 = icmp slt i32 %70, %68
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %64
  br i1 %63, label %76, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %75(ptr noundef nonnull %62) #12
  br label %76

76:                                               ; preds = %61, %74, %73
  %77 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %78 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !46
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 3
  %82 = tail call ptr %77(i64 noundef %81, ptr noundef nonnull @.str.5) #12
  store ptr %82, ptr %12, align 8, !tbaa !86
  %83 = load i32, ptr %78, align 4, !tbaa !46
  %84 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 17
  store i32 %83, ptr %84, align 4, !tbaa !131
  br label %85

85:                                               ; preds = %64, %76, %58
  %86 = icmp ult i8 %32, 8
  br i1 %86, label %111, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %22, align 8, !tbaa !87
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !47
  %93 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 18
  %94 = load i32, ptr %93, align 8, !tbaa !132
  %95 = icmp sgt i32 %92, %94
  %96 = shl nsw i32 %92, 1
  %97 = icmp slt i32 %96, %94
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  br i1 %89, label %102, label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %101(ptr noundef nonnull %88) #12
  br label %102

102:                                              ; preds = %87, %100, %99
  %103 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %104 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !47
  %106 = sext i32 %105 to i64
  %107 = shl nsw i64 %106, 3
  %108 = tail call ptr %103(i64 noundef %107, ptr noundef nonnull @.str.6) #12
  store ptr %108, ptr %22, align 8, !tbaa !87
  %109 = load i32, ptr %104, align 4, !tbaa !47
  %110 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 18
  store i32 %109, ptr %110, align 8, !tbaa !132
  br label %111

111:                                              ; preds = %90, %102, %85
  br i1 %37, label %116, label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %3, align 8, !tbaa !85
  %114 = load i32, ptr %0, align 8, !tbaa !45
  %115 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null, ptr noundef %113, i32 noundef %114) #12
  br label %116

116:                                              ; preds = %112, %111
  br i1 %60, label %122, label %117

117:                                              ; preds = %116
  %118 = load ptr, ptr %12, align 8, !tbaa !86
  %119 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !46
  %121 = tail call i32 @BM_iter_as_array(ptr noundef %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef %118, i32 noundef %120) #12
  br label %122

122:                                              ; preds = %117, %116
  br i1 %86, label %128, label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %22, align 8, !tbaa !87
  %125 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %126 = load i32, ptr %125, align 4, !tbaa !47
  %127 = tail call i32 @BM_iter_as_array(ptr noundef %0, i8 noundef zeroext 3, ptr noundef null, ptr noundef %124, i32 noundef %126) #12
  br label %128

128:                                              ; preds = %122, %123, %29
  %129 = xor i8 %32, -1
  %130 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %131 = load i8, ptr %130, align 1, !tbaa !129
  %132 = and i8 %131, %129
  store i8 %132, ptr %130, align 1, !tbaa !129
  ret void
}

declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_table_init(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %7(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %13(ptr noundef nonnull %10) #12
  store ptr null, ptr %9, align 8, !tbaa !86
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %19(ptr noundef nonnull %16) #12
  store ptr null, ptr %15, align 8, !tbaa !87
  br label %20

20:                                               ; preds = %14, %18
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_table_free(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %11(ptr noundef nonnull %8) #12
  store ptr null, ptr %7, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %6, %10, %2
  %13 = and i32 %3, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %20(ptr noundef nonnull %17) #12
  store ptr null, ptr %16, align 8, !tbaa !86
  br label %21

21:                                               ; preds = %15, %19, %12
  %22 = and i32 %3, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %29(ptr noundef nonnull %26) #12
  store ptr null, ptr %25, align 8, !tbaa !87
  br label %30

30:                                               ; preds = %24, %28, %21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_vert_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_vert_at_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr @BLI_mempool_findelem(ptr noundef %4, i32 noundef %1) #12
  ret ptr %5
}

declare ptr @BLI_mempool_findelem(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_edge_at_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = tail call ptr @BLI_mempool_findelem(ptr noundef %4, i32 noundef %1) #12
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_at_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = tail call ptr @BLI_mempool_findelem(ptr noundef %4, i32 noundef %1) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BM_mesh_elem_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #8 {
  switch i8 %1, label %11 [
    i8 1, label %3
    i8 2, label %5
    i8 8, label %8
  ]

3:                                                ; preds = %2
  %4 = load i32, ptr %0, align 8, !tbaa !45
  br label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !46
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !47
  br label %11

11:                                               ; preds = %2, %8, %5, %3
  %12 = phi i32 [ %10, %8 ], [ %7, %5 ], [ %4, %3 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_remap(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %2, null
  %9 = or i1 %7, %8
  %10 = icmp ne ptr %3, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %277

12:                                               ; preds = %4
  %13 = zext i1 %7 to i8
  %14 = select i1 %8, i8 2, i8 0
  %15 = or disjoint i8 %14, %13
  %16 = select i1 %10, i8 8, i8 0
  %17 = or disjoint i8 %15, %16
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext %17)
  br i1 %7, label %18, label %66

18:                                               ; preds = %12
  %19 = load i32, ptr %0, align 8, !tbaa !45
  %20 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.7, i32 noundef %19) #12
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %24 = sext i32 %19 to i64
  %25 = mul nsw i64 %24, 56
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.8) #12
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 %24
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 -1
  %29 = getelementptr inbounds ptr, ptr %22, i64 %24
  %30 = getelementptr inbounds ptr, ptr %29, i64 -1
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %18, %32
  %33 = phi ptr [ %38, %32 ], [ %28, %18 ]
  %34 = phi ptr [ %39, %32 ], [ %30, %18 ]
  %35 = phi i32 [ %36, %32 ], [ %19, %18 ]
  %36 = add nsw i32 %35, -1
  %37 = load ptr, ptr %34, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef nonnull align 8 dereferenceable(56) %37, i64 56, i1 false), !tbaa.struct !133
  %38 = getelementptr inbounds %struct.BMVert, ptr %33, i64 -1
  %39 = getelementptr inbounds ptr, ptr %34, i64 -1
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %41, label %32, !llvm.loop !135

41:                                               ; preds = %32
  %42 = getelementptr inbounds i32, ptr %1, i64 %24
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi ptr [ %55, %43 ], [ %28, %41 ]
  %45 = phi ptr [ %56, %43 ], [ %30, %41 ]
  %46 = phi ptr [ %48, %43 ], [ %42, %41 ]
  %47 = phi i32 [ %49, %43 ], [ %19, %41 ]
  %48 = getelementptr inbounds i32, ptr %46, i64 -1
  %49 = add nsw i32 %47, -1
  %50 = load i32, ptr %48, align 4, !tbaa !134
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %22, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %53, ptr noundef nonnull align 8 dereferenceable(56) %44, i64 56, i1 false), !tbaa.struct !133
  %54 = load ptr, ptr %45, align 8, !tbaa !65
  tail call void @BLI_ghash_insert(ptr noundef %20, ptr noundef %54, ptr noundef %53) #12
  %55 = getelementptr inbounds %struct.BMVert, ptr %44, i64 -1
  %56 = getelementptr inbounds ptr, ptr %45, i64 -1
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %58, label %43, !llvm.loop !136

58:                                               ; preds = %43, %18
  %59 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %60 = load i8, ptr %59, align 4, !tbaa !91
  %61 = or i8 %60, 1
  store i8 %61, ptr %59, align 4, !tbaa !91
  %62 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %63 = load i8, ptr %62, align 1, !tbaa !129
  %64 = or i8 %63, 1
  store i8 %64, ptr %62, align 1, !tbaa !129
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %65(ptr noundef %26) #12
  br label %66

66:                                               ; preds = %58, %12
  %67 = phi ptr [ %20, %58 ], [ null, %12 ]
  br i1 %8, label %68, label %117

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !46
  %71 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.9, i32 noundef %70) #12
  %72 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %73 = load ptr, ptr %72, align 8, !tbaa !86
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %75 = sext i32 %70 to i64
  %76 = mul nsw i64 %75, 80
  %77 = tail call ptr %74(i64 noundef %76, ptr noundef nonnull @.str.10) #12
  %78 = getelementptr inbounds %struct.BMEdge, ptr %77, i64 %75
  %79 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 -1
  %80 = getelementptr inbounds ptr, ptr %73, i64 %75
  %81 = getelementptr inbounds ptr, ptr %80, i64 -1
  %82 = icmp eq i32 %70, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %68, %83
  %84 = phi ptr [ %89, %83 ], [ %79, %68 ]
  %85 = phi i32 [ %87, %83 ], [ %70, %68 ]
  %86 = phi ptr [ %90, %83 ], [ %81, %68 ]
  %87 = add nsw i32 %85, -1
  %88 = load ptr, ptr %86, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %84, ptr noundef nonnull align 8 dereferenceable(80) %88, i64 80, i1 false), !tbaa.struct !137
  %89 = getelementptr inbounds %struct.BMEdge, ptr %84, i64 -1
  %90 = getelementptr inbounds ptr, ptr %86, i64 -1
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %92, label %83, !llvm.loop !138

92:                                               ; preds = %83
  %93 = getelementptr inbounds i32, ptr %2, i64 %75
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi ptr [ %106, %94 ], [ %79, %92 ]
  %96 = phi ptr [ %99, %94 ], [ %93, %92 ]
  %97 = phi i32 [ %100, %94 ], [ %70, %92 ]
  %98 = phi ptr [ %107, %94 ], [ %81, %92 ]
  %99 = getelementptr inbounds i32, ptr %96, i64 -1
  %100 = add nsw i32 %97, -1
  %101 = load i32, ptr %99, align 4, !tbaa !134
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %73, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %104, ptr noundef nonnull align 8 dereferenceable(80) %95, i64 80, i1 false), !tbaa.struct !137
  %105 = load ptr, ptr %98, align 8, !tbaa !65
  tail call void @BLI_ghash_insert(ptr noundef %71, ptr noundef %105, ptr noundef %104) #12
  %106 = getelementptr inbounds %struct.BMEdge, ptr %95, i64 -1
  %107 = getelementptr inbounds ptr, ptr %98, i64 -1
  %108 = icmp eq i32 %100, 0
  br i1 %108, label %109, label %94, !llvm.loop !139

109:                                              ; preds = %94, %68
  %110 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %111 = load i8, ptr %110, align 4, !tbaa !91
  %112 = or i8 %111, 2
  store i8 %112, ptr %110, align 4, !tbaa !91
  %113 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %114 = load i8, ptr %113, align 1, !tbaa !129
  %115 = or i8 %114, 2
  store i8 %115, ptr %113, align 1, !tbaa !129
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %116(ptr noundef %77) #12
  br label %117

117:                                              ; preds = %109, %66
  %118 = phi ptr [ %71, %109 ], [ null, %66 ]
  br i1 %10, label %119, label %168

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %121 = load i32, ptr %120, align 4, !tbaa !47
  %122 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.11, i32 noundef %121) #12
  %123 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !87
  %125 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %126 = sext i32 %121 to i64
  %127 = mul nsw i64 %126, 56
  %128 = tail call ptr %125(i64 noundef %127, ptr noundef nonnull @.str.12) #12
  %129 = getelementptr inbounds %struct.BMFace, ptr %128, i64 %126
  %130 = getelementptr inbounds %struct.BMFace, ptr %129, i64 -1
  %131 = getelementptr inbounds ptr, ptr %124, i64 %126
  %132 = getelementptr inbounds ptr, ptr %131, i64 -1
  %133 = icmp eq i32 %121, 0
  br i1 %133, label %160, label %134

134:                                              ; preds = %119, %134
  %135 = phi i32 [ %138, %134 ], [ %121, %119 ]
  %136 = phi ptr [ %141, %134 ], [ %132, %119 ]
  %137 = phi ptr [ %140, %134 ], [ %130, %119 ]
  %138 = add nsw i32 %135, -1
  %139 = load ptr, ptr %136, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %137, ptr noundef nonnull align 8 dereferenceable(56) %139, i64 56, i1 false), !tbaa.struct !140
  %140 = getelementptr inbounds %struct.BMFace, ptr %137, i64 -1
  %141 = getelementptr inbounds ptr, ptr %136, i64 -1
  %142 = icmp eq i32 %138, 0
  br i1 %142, label %143, label %134, !llvm.loop !142

143:                                              ; preds = %134
  %144 = getelementptr inbounds i32, ptr %3, i64 %126
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %150, %145 ], [ %144, %143 ]
  %147 = phi i32 [ %151, %145 ], [ %121, %143 ]
  %148 = phi ptr [ %158, %145 ], [ %132, %143 ]
  %149 = phi ptr [ %157, %145 ], [ %130, %143 ]
  %150 = getelementptr inbounds i32, ptr %146, i64 -1
  %151 = add nsw i32 %147, -1
  %152 = load i32, ptr %150, align 4, !tbaa !134
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %124, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %155, ptr noundef nonnull align 8 dereferenceable(56) %149, i64 56, i1 false), !tbaa.struct !140
  %156 = load ptr, ptr %148, align 8, !tbaa !65
  tail call void @BLI_ghash_insert(ptr noundef %122, ptr noundef %156, ptr noundef %155) #12
  %157 = getelementptr inbounds %struct.BMFace, ptr %149, i64 -1
  %158 = getelementptr inbounds ptr, ptr %148, i64 -1
  %159 = icmp eq i32 %151, 0
  br i1 %159, label %160, label %145, !llvm.loop !143

160:                                              ; preds = %145, %119
  %161 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %162 = load i8, ptr %161, align 4, !tbaa !91
  %163 = or i8 %162, 12
  store i8 %163, ptr %161, align 4, !tbaa !91
  %164 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %165 = load i8, ptr %164, align 1, !tbaa !129
  %166 = or i8 %165, 8
  store i8 %166, ptr %164, align 1, !tbaa !129
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %167(ptr noundef %128) #12
  br label %168

168:                                              ; preds = %160, %117
  %169 = phi ptr [ %122, %160 ], [ null, %117 ]
  %170 = icmp ne ptr %118, null
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %172, align 4, !tbaa !48
  %173 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %173, align 8, !tbaa !50
  %174 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %174, align 8, !tbaa !51
  %175 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %176 = load ptr, ptr %175, align 8, !tbaa !52
  store ptr %176, ptr %5, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #12
  %177 = load ptr, ptr %174, align 8, !tbaa !51
  %178 = call ptr %177(ptr noundef nonnull %5) #12
  %179 = icmp eq ptr %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %171, %180
  %181 = phi ptr [ %186, %180 ], [ %178, %171 ]
  %182 = getelementptr inbounds %struct.BMVert, ptr %181, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !144
  %184 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %118, ptr noundef %183) #12
  store ptr %184, ptr %182, align 8, !tbaa !144
  %185 = load ptr, ptr %174, align 8, !tbaa !51
  %186 = call ptr %185(ptr noundef nonnull %5) #12
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %180, !llvm.loop !146

188:                                              ; preds = %180, %171, %168
  %189 = icmp ne ptr %67, null
  %190 = or i1 %189, %170
  br i1 %190, label %191, label %227

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %192, align 4, !tbaa !48
  %193 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %193, align 8, !tbaa !50
  %194 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %194, align 8, !tbaa !51
  %195 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %196 = load ptr, ptr %195, align 8, !tbaa !60
  store ptr %196, ptr %5, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #12
  %197 = load ptr, ptr %194, align 8, !tbaa !51
  %198 = call ptr %197(ptr noundef nonnull %5) #12
  %199 = icmp eq ptr %198, null
  br i1 %199, label %227, label %200

200:                                              ; preds = %191, %223
  %201 = phi ptr [ %225, %223 ], [ %198, %191 ]
  br i1 %189, label %202, label %209

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !99
  %205 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %67, ptr noundef %204) #12
  store ptr %205, ptr %203, align 8, !tbaa !99
  %206 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !100
  %208 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %67, ptr noundef %207) #12
  store ptr %208, ptr %206, align 8, !tbaa !100
  br label %209

209:                                              ; preds = %202, %200
  br i1 %170, label %210, label %223

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 5
  %212 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 5, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !147
  %214 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %118, ptr noundef %213) #12
  store ptr %214, ptr %212, align 8, !tbaa !147
  %215 = load ptr, ptr %211, align 8, !tbaa !148
  %216 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %118, ptr noundef %215) #12
  store ptr %216, ptr %211, align 8, !tbaa !148
  %217 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 6
  %218 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 6, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !149
  %220 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %118, ptr noundef %219) #12
  store ptr %220, ptr %218, align 8, !tbaa !149
  %221 = load ptr, ptr %217, align 8, !tbaa !150
  %222 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %118, ptr noundef %221) #12
  store ptr %222, ptr %217, align 8, !tbaa !150
  br label %223

223:                                              ; preds = %209, %210
  %224 = load ptr, ptr %194, align 8, !tbaa !51
  %225 = call ptr %224(ptr noundef nonnull %5) #12
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %200, !llvm.loop !151

227:                                              ; preds = %223, %191, %188
  %228 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %228, align 4, !tbaa !48
  %229 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %229, align 8, !tbaa !50
  %230 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %230, align 8, !tbaa !51
  %231 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %232 = load ptr, ptr %231, align 8, !tbaa !62
  store ptr %232, ptr %5, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #12
  %233 = load ptr, ptr %230, align 8, !tbaa !51
  %234 = call ptr %233(ptr noundef nonnull %5) #12
  %235 = icmp eq ptr %234, null
  br i1 %235, label %270, label %236

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %238 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %239 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %240 = icmp eq ptr %169, null
  br label %241

241:                                              ; preds = %236, %266
  %242 = phi ptr [ %234, %236 ], [ %268, %266 ]
  store i8 11, ptr %237, align 4, !tbaa !48
  store ptr @bmiter__loop_of_face_begin, ptr %238, align 8, !tbaa !50
  store ptr @bmiter__loop_of_face_step, ptr %239, align 8, !tbaa !51
  store ptr %242, ptr %6, align 8, !tbaa !53
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #12
  %243 = load ptr, ptr %239, align 8, !tbaa !51
  %244 = call ptr %243(ptr noundef nonnull %6) #12
  %245 = icmp eq ptr %244, null
  br i1 %245, label %266, label %246

246:                                              ; preds = %241, %262
  %247 = phi ptr [ %264, %262 ], [ %244, %241 ]
  br i1 %189, label %248, label %252

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.BMLoop, ptr %247, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !104
  %251 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %67, ptr noundef %250) #12
  store ptr %251, ptr %249, align 8, !tbaa !104
  br label %252

252:                                              ; preds = %248, %246
  br i1 %170, label %253, label %257

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.BMLoop, ptr %247, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !107
  %256 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %118, ptr noundef %255) #12
  store ptr %256, ptr %254, align 8, !tbaa !107
  br label %257

257:                                              ; preds = %253, %252
  br i1 %240, label %262, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds %struct.BMLoop, ptr %247, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !113
  %261 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %169, ptr noundef %260) #12
  store ptr %261, ptr %259, align 8, !tbaa !113
  br label %262

262:                                              ; preds = %257, %258
  %263 = load ptr, ptr %239, align 8, !tbaa !51
  %264 = call ptr %263(ptr noundef nonnull %6) #12
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %246, !llvm.loop !152

266:                                              ; preds = %262, %241
  %267 = load ptr, ptr %230, align 8, !tbaa !51
  %268 = call ptr %267(ptr noundef nonnull %5) #12
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %241, !llvm.loop !153

270:                                              ; preds = %266, %227
  br i1 %189, label %271, label %272

271:                                              ; preds = %270
  call void @BLI_ghash_free(ptr noundef nonnull %67, ptr noundef null, ptr noundef null) #12
  br label %272

272:                                              ; preds = %271, %270
  br i1 %170, label %273, label %274

273:                                              ; preds = %272
  call void @BLI_ghash_free(ptr noundef nonnull %118, ptr noundef null, ptr noundef null) #12
  br label %274

274:                                              ; preds = %273, %272
  %275 = icmp eq ptr %169, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %274
  call void @BLI_ghash_free(ptr noundef nonnull %169, ptr noundef null, ptr noundef null) #12
  br label %277

277:                                              ; preds = %274, %276, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

declare void @bmiter__face_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

declare void @bmiter__face_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

declare void @bmiter__vert_of_face_begin(ptr noundef) #1

declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

declare void @bmiter__edge_of_face_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

declare void @bmiter__loop_of_face_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

declare void @bmiter__loop_of_loop_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #1

declare void @bmiter__loop_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_vert_step_fan_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { cold }

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
!34 = !{!35, !39, i64 104}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!35, !39, i64 112}
!44 = !{!35, !39, i64 120}
!45 = !{!35, !36, i64 0}
!46 = !{!35, !36, i64 4}
!47 = !{!35, !36, i64 12}
!48 = !{!49, !37, i64 60}
!49 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!50 = !{!49, !39, i64 40}
!51 = !{!49, !39, i64 48}
!52 = !{!35, !39, i64 32}
!53 = !{!37, !37, i64 0}
!54 = !{!55, !39, i64 16}
!55 = !{!"BMElemF", !56, i64 0, !39, i64 16}
!56 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!35, !39, i64 40}
!61 = distinct !{!61, !58, !59}
!62 = !{!35, !39, i64 56}
!63 = distinct !{!63, !58, !59}
!64 = !{!35, !36, i64 956}
!65 = !{!39, !39, i64 0}
!66 = !{!67, !36, i64 0}
!67 = !{!"BMAllocTemplate", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!68 = !{!67, !36, i64 4}
!69 = !{!67, !36, i64 8}
!70 = !{!35, !39, i64 48}
!71 = !{!67, !36, i64 12}
!72 = !{!35, !36, i64 128}
!73 = distinct !{!73, !58, !59}
!74 = distinct !{!74, !58, !59}
!75 = distinct !{!75, !58, !59}
!76 = distinct !{!76, !58, !59}
!77 = !{!35, !36, i64 316}
!78 = !{!35, !39, i64 328}
!79 = !{!35, !36, i64 516}
!80 = !{!35, !39, i64 528}
!81 = !{!35, !36, i64 716}
!82 = !{!35, !39, i64 728}
!83 = !{!35, !36, i64 916}
!84 = !{!35, !39, i64 928}
!85 = !{!35, !39, i64 64}
!86 = !{!35, !39, i64 72}
!87 = !{!35, !39, i64 80}
!88 = !{!35, !39, i64 1000}
!89 = !{!56, !36, i64 8}
!90 = distinct !{!90, !58, !59}
!91 = !{!35, !37, i64 28}
!92 = !{!93, !93, i64 0}
!93 = !{!"float", !37, i64 0}
!94 = distinct !{!94, !58, !59}
!95 = distinct !{!95, !58, !59}
!96 = !{!97, !39, i64 40}
!97 = !{!"BMEdge", !56, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !98, i64 48, !98, i64 64}
!98 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!99 = !{!97, !39, i64 24}
!100 = !{!97, !39, i64 32}
!101 = distinct !{!101, !58, !59}
!102 = !{!103, !39, i64 24}
!103 = !{!"BMFace", !56, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!104 = !{!105, !39, i64 16}
!105 = !{!"BMLoop", !56, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!106 = !{!105, !39, i64 64}
!107 = !{!105, !39, i64 24}
!108 = !{!105, !39, i64 56}
!109 = distinct !{!109, !58, !59}
!110 = distinct !{!110, !58, !59}
!111 = distinct !{!111, !58, !59}
!112 = !{!56, !37, i64 13}
!113 = !{!105, !39, i64 32}
!114 = distinct !{!114, !58, !59}
!115 = !{!116, !39, i64 0}
!116 = !{!"LinkNode", !39, i64 0, !39, i64 8}
!117 = !{!116, !39, i64 8}
!118 = distinct !{!118, !59}
!119 = distinct !{!119, !58, !59}
!120 = distinct !{!120, !58, !59}
!121 = distinct !{!121, !58, !59}
!122 = distinct !{!122, !58, !59}
!123 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!124 = distinct !{!124, !58, !59}
!125 = distinct !{!125, !58, !59}
!126 = distinct !{!126, !58, !59}
!127 = distinct !{!127, !58, !59}
!128 = distinct !{!128, !58, !59}
!129 = !{!35, !37, i64 29}
!130 = !{!35, !36, i64 88}
!131 = !{!35, !36, i64 92}
!132 = !{!35, !36, i64 96}
!133 = !{i64 0, i64 8, !65, i64 8, i64 4, !134, i64 12, i64 1, !53, i64 13, i64 1, !53, i64 14, i64 1, !53, i64 16, i64 8, !65, i64 24, i64 12, !53, i64 36, i64 12, !53, i64 48, i64 8, !65}
!134 = !{!36, !36, i64 0}
!135 = distinct !{!135, !58, !59}
!136 = distinct !{!136, !58, !59}
!137 = !{i64 0, i64 8, !65, i64 8, i64 4, !134, i64 12, i64 1, !53, i64 13, i64 1, !53, i64 14, i64 1, !53, i64 16, i64 8, !65, i64 24, i64 8, !65, i64 32, i64 8, !65, i64 40, i64 8, !65, i64 48, i64 8, !65, i64 56, i64 8, !65, i64 64, i64 8, !65, i64 72, i64 8, !65}
!138 = distinct !{!138, !58, !59}
!139 = distinct !{!139, !58, !59}
!140 = !{i64 0, i64 8, !65, i64 8, i64 4, !134, i64 12, i64 1, !53, i64 13, i64 1, !53, i64 14, i64 1, !53, i64 16, i64 8, !65, i64 24, i64 8, !65, i64 32, i64 4, !134, i64 36, i64 12, !53, i64 48, i64 2, !141}
!141 = !{!41, !41, i64 0}
!142 = distinct !{!142, !58, !59}
!143 = distinct !{!143, !58, !59}
!144 = !{!145, !39, i64 48}
!145 = !{!"BMVert", !56, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!146 = distinct !{!146, !58, !59}
!147 = !{!97, !39, i64 56}
!148 = !{!97, !39, i64 48}
!149 = !{!97, !39, i64 72}
!150 = !{!97, !39, i64 64}
!151 = distinct !{!151, !58, !59}
!152 = distinct !{!152, !58, !59}
!153 = distinct !{!153, !58, !59}
