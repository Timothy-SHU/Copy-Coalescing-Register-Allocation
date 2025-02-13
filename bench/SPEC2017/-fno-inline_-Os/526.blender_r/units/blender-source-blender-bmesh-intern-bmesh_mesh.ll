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

@bm_mesh_allocsize_default = dso_local constant %struct.BMAllocTemplate { i32 512, i32 1024, i32 2048, i32 512 }, align 4
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

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %15, label %16, label %58

16:                                               ; preds = %12, %8, %1
  %17 = load i32, ptr %0, align 8, !tbaa !45
  %18 = tail call ptr @BLI_mempool_create(i32 noundef 2, i32 noundef %17, i32 noundef 512, i32 noundef 0) #16
  store ptr %18, ptr %5, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = tail call ptr @BLI_mempool_create(i32 noundef 2, i32 noundef %20, i32 noundef 512, i32 noundef 0) #16
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  store ptr %21, ptr %22, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = tail call ptr @BLI_mempool_create(i32 noundef 2, i32 noundef %24, i32 noundef 512, i32 noundef 0) #16
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  store ptr %25, ptr %26, align 8, !tbaa !44
  %27 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %16, %30
  %31 = phi ptr [ %34, %30 ], [ %28, %16 ]
  %32 = call ptr @BLI_mempool_calloc(ptr noundef %27) #16
  %33 = getelementptr inbounds %struct.BMElemF, ptr %31, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !48
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30, !llvm.loop !51

36:                                               ; preds = %30, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  %37 = load ptr, ptr %22, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %44, %40 ], [ %38, %36 ]
  %42 = call ptr @BLI_mempool_calloc(ptr noundef %37) #16
  %43 = getelementptr inbounds %struct.BMElemF, ptr %41, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !48
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %40, !llvm.loop !53

46:                                               ; preds = %40, %36
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  %47 = load ptr, ptr %26, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46, %50
  %51 = phi ptr [ %54, %50 ], [ %48, %46 ]
  %52 = call ptr @BLI_mempool_calloc(ptr noundef %47) #16
  %53 = getelementptr inbounds %struct.BMElemF, ptr %51, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !48
  %54 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %50, !llvm.loop !54

56:                                               ; preds = %50, %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  store i32 1, ptr %57, align 4, !tbaa !55
  br label %58

58:                                               ; preds = %12, %56
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !56 {
  %5 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #18, !range !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call ptr %3(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_toolflags_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %8) #16
  store ptr null, ptr %7, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %13) #16
  store ptr null, ptr %12, align 8, !tbaa !44
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BM_mesh_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %3 = tail call ptr %2(i64 noundef 1008, ptr noundef nonnull @__func__.BM_mesh_create) #16
  tail call fastcc void @bm_mempool_init(ptr noundef %3, ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 22
  store i32 1, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 31
  store i32 0, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 26
  tail call void @CustomData_reset(ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 27
  tail call void @CustomData_reset(ptr noundef nonnull %9) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mempool_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !63 {
  %3 = load i32, ptr %1, align 4, !tbaa !64
  %4 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef %3, i32 noundef 512, i32 noundef 1) #16
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.BMAllocTemplate, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !67
  %8 = tail call ptr @BLI_mempool_create(i32 noundef 80, i32 noundef %7, i32 noundef 1024, i32 noundef 1) #16
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  store ptr %8, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.BMAllocTemplate, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 72, i32 noundef %11, i32 noundef 2048, i32 noundef 0) #16
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.BMAllocTemplate, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !71
  %16 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef %15, i32 noundef 512, i32 noundef 1) #16
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  store ptr %16, ptr %17, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_data_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %4) #16
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %7 = tail call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %6) #16
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %9 = tail call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %8) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %11 ]
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %8, ptr noundef nonnull %15) #16
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !73

18:                                               ; preds = %14, %11, %1
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %20 = call zeroext i8 @CustomData_bmesh_has_free(ptr noundef nonnull %19) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %22 ]
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %19, ptr noundef nonnull %26) #16
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !74

29:                                               ; preds = %25, %22, %18
  %30 = icmp ne i8 %5, 0
  %31 = icmp ne i8 %7, 0
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %33
  %37 = icmp eq i8 %7, 0
  %38 = icmp eq i8 %5, 0
  br label %39

39:                                               ; preds = %36, %50
  %40 = phi ptr [ %34, %36 ], [ %51, %50 ]
  br i1 %37, label %42, label %41

41:                                               ; preds = %39
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %6, ptr noundef nonnull %40) #16
  br label %42

42:                                               ; preds = %41, %39
  br i1 %38, label %50, label %43

43:                                               ; preds = %42
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %40) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %44, %43 ]
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %4, ptr noundef nonnull %47) #16
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %46, !llvm.loop !75

50:                                               ; preds = %46, %43, %42
  %51 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %39, !llvm.loop !76

53:                                               ; preds = %50, %33, %29
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !77
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !78
  call void @BLI_mempool_destroy(ptr noundef %59) #16
  br label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !79
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !80
  call void @BLI_mempool_destroy(ptr noundef %66) #16
  br label %67

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !81
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !82
  call void @BLI_mempool_destroy(ptr noundef %73) #16
  br label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !83
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !84
  call void @BLI_mempool_destroy(ptr noundef %80) #16
  br label %81

81:                                               ; preds = %78, %74
  call void @CustomData_free(ptr noundef nonnull %8, i32 noundef 0) #16
  call void @CustomData_free(ptr noundef nonnull %19, i32 noundef 0) #16
  call void @CustomData_free(ptr noundef nonnull %4, i32 noundef 0) #16
  call void @CustomData_free(ptr noundef nonnull %6, i32 noundef 0) #16
  %82 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !66
  call void @BLI_mempool_destroy(ptr noundef %83) #16
  %84 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !68
  call void @BLI_mempool_destroy(ptr noundef %85) #16
  %86 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  call void @BLI_mempool_destroy(ptr noundef %87) #16
  %88 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !72
  call void @BLI_mempool_destroy(ptr noundef %89) #16
  %90 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %91 = load ptr, ptr %90, align 8, !tbaa !85
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %81
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %94(ptr noundef nonnull %91) #16
  br label %95

95:                                               ; preds = %93, %81
  %96 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %97 = load ptr, ptr %96, align 8, !tbaa !86
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %100(ptr noundef nonnull %97) #16
  br label %101

101:                                              ; preds = %99, %95
  %102 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %103 = load ptr, ptr %102, align 8, !tbaa !87
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %106(ptr noundef nonnull %103) #16
  br label %107

107:                                              ; preds = %105, %101
  call void @BM_mesh_elem_toolflags_clear(ptr noundef nonnull %0) #18
  %108 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  call void @BLI_freelistN(ptr noundef nonnull %108) #16
  call void @BMO_error_clear(ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_bmesh_has_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BM_mesh_data_free(ptr noundef %0) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %0, i8 0, i64 1008, i1 false)
  tail call fastcc void @bm_mempool_init(ptr noundef %0, ptr noundef nonnull @bm_mesh_allocsize_default) #18
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  store i32 1, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  store i32 0, ptr %3, align 4, !tbaa !55
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %5) #16
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  tail call void @CustomData_reset(ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  tail call void @CustomData_reset(ptr noundef nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BM_mesh_data_free(ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 35
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @bpy_bm_generic_invalidate(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %7(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @bpy_bm_generic_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_normals_update(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @__func__.BM_mesh_normals_update) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %1 ]
  %14 = phi ptr [ %15, %12 ], [ %10, %1 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %14, i32 noundef %13) #18
  call void @BM_face_normal_update(ptr noundef nonnull %14) #16
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %12, !llvm.loop !89

18:                                               ; preds = %12, %1
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 4, !tbaa !90
  %21 = and i8 %20, -9
  store i8 %21, ptr %19, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %18, %24
  %25 = phi i32 [ %29, %24 ], [ 0, %18 ]
  %26 = phi ptr [ %28, %24 ], [ %22, %18 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %26, i32 noundef %25) #18
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 3
  call fastcc void @zero_v3(ptr noundef nonnull %27) #18
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %29 = add nuw nsw i32 %25, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %24, !llvm.loop !91

31:                                               ; preds = %24, %18
  %32 = load i8, ptr %19, align 4, !tbaa !90
  %33 = and i8 %32, -2
  store i8 %33, ptr %19, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  call fastcc void @bm_mesh_edges_calc_vectors(ptr noundef %0, ptr noundef %9, ptr noundef null) #18
  call fastcc void @bm_mesh_verts_calc_normals(ptr noundef %0, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %34(ptr noundef %9) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !94 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !95
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_edges_calc_vectors(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) unnamed_addr #0 !PGOFuncName !97 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %5 = icmp eq ptr %2, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #18
  br label %7

7:                                                ; preds = %6, %3
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %7, %39
  %11 = phi i64 [ %41, %39 ], [ 0, %7 ]
  %12 = phi ptr [ %40, %39 ], [ %8, %7 ]
  %13 = trunc i64 %11 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %12, i32 noundef %13) #18
  %14 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  br i1 %5, label %29, label %20

20:                                               ; preds = %17
  %21 = call fastcc i32 @_bm_elem_index_get(ptr noundef %19) #18
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x float], ptr %2, i64 %22
  %24 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = call fastcc i32 @_bm_elem_index_get(ptr noundef %25) #18
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x float], ptr %2, i64 %27
  br label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  br label %34

34:                                               ; preds = %29, %20
  %35 = phi ptr [ %23, %20 ], [ %30, %29 ]
  %36 = phi ptr [ %28, %20 ], [ %33, %29 ]
  %37 = getelementptr inbounds [3 x float], ptr %1, i64 %11
  call fastcc void @sub_v3_v3v3(ptr noundef %37, ptr noundef %36, ptr noundef %35) #18
  %38 = call fastcc float @normalize_v3(ptr noundef %37) #18
  br label %39

39:                                               ; preds = %34, %10
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %41 = add nuw i64 %11, 1
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %10, !llvm.loop !103

43:                                               ; preds = %39, %7
  %44 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %45 = load i8, ptr %44, align 4, !tbaa !90
  %46 = and i8 %45, -3
  store i8 %46, ptr %44, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_verts_calc_normals(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !104 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = icmp eq ptr %4, null
  %9 = select i1 %8, i8 2, i8 3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext %9) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  br label %14

14:                                               ; preds = %12, %62
  %15 = phi i64 [ 0, %12 ], [ %64, %62 ]
  %16 = phi ptr [ %10, %12 ], [ %63, %62 ]
  %17 = getelementptr inbounds [3 x float], ptr %2, i64 %15
  %18 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 4
  %19 = select i1 %13, ptr %18, ptr %17
  %20 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  br label %22

22:                                               ; preds = %32, %14
  %23 = phi ptr [ %21, %14 ], [ %60, %32 ]
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  br i1 %8, label %30, label %26

26:                                               ; preds = %22
  %27 = call fastcc i32 @_bm_elem_index_get(ptr noundef %25) #18
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x float], ptr %4, i64 %28
  br label %32

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 3
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %29, %26 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !110
  %38 = call fastcc i32 @_bm_elem_index_get(ptr noundef %37) #18
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float], ptr %1, i64 %39
  %41 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !110
  %43 = call fastcc i32 @_bm_elem_index_get(ptr noundef %42) #18
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x float], ptr %1, i64 %44
  %46 = call fastcc float @dot_v3v3(ptr noundef %40, ptr noundef %45) #18
  %47 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !107
  %51 = icmp eq ptr %48, %50
  %52 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = icmp eq ptr %53, %25
  %55 = xor i1 %51, %54
  %56 = fneg float %46
  %57 = select i1 %55, float %46, float %56
  %58 = call fastcc float @saacos(float noundef %57) #18
  call fastcc void @madd_v3_v3fl(ptr noundef %33, ptr noundef %19, float noundef %58) #18
  %59 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = icmp eq ptr %60, %21
  br i1 %61, label %62, label %22, !llvm.loop !112

62:                                               ; preds = %32
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #18
  %64 = add nuw i64 %15, 1
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %14, !llvm.loop !113

66:                                               ; preds = %62, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  %67 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %66
  %70 = icmp eq ptr %3, null
  br label %71

71:                                               ; preds = %69, %84
  %72 = phi i64 [ 0, %69 ], [ %86, %84 ]
  %73 = phi ptr [ %67, %69 ], [ %85, %84 ]
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 %72
  %75 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 3
  %76 = select i1 %8, ptr %75, ptr %74
  %77 = call fastcc float @normalize_v3(ptr noundef %76) #18
  %78 = fcmp oeq float %77, 0.000000e+00
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = getelementptr inbounds [3 x float], ptr %3, i64 %72
  %81 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2
  %82 = select i1 %70, ptr %81, ptr %80
  %83 = call fastcc float @normalize_v3_v3(ptr noundef %76, ptr noundef %82) #18
  br label %84

84:                                               ; preds = %79, %71
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #18
  %86 = add nuw i64 %72, 1
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %71, !llvm.loop !114

88:                                               ; preds = %84, %66
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_verts_calc_normal_vcos(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 12
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @__func__.BM_verts_calc_normal_vcos) #16
  tail call fastcc void @bm_mesh_edges_calc_vectors(ptr noundef %0, ptr noundef %10, ptr noundef %2) #18
  tail call fastcc void @bm_mesh_verts_calc_normals(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %11(ptr noundef %10) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_loops_calc_normal_vcos(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @bm_mesh_edges_sharp_tag(ptr noundef %0, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef %5) #18
  tail call fastcc void @bm_mesh_loops_calc_normals(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_edges_sharp_tag(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !115 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %9 = fcmp olt float %3, 0x400921FB60000000
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call float @cosf(float noundef %3) #16
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi float [ %11, %10 ], [ %3, %5 ]
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, i8 4, i8 5
  %16 = icmp eq ptr %2, null
  %17 = or disjoint i8 %15, 8
  %18 = select i1 %16, i8 %15, i8 %17
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext %18) #18
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %106, label %21

21:                                               ; preds = %12, %102
  %22 = phi ptr [ %103, %102 ], [ %19, %12 ]
  %23 = phi i32 [ %104, %102 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %22, i32 noundef %23) #18
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %22) #18
  %24 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %22, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %102, label %26

26:                                               ; preds = %21
  br i1 %9, label %27, label %52

27:                                               ; preds = %26
  %28 = load ptr, ptr %7, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  br i1 %16, label %41, label %31

31:                                               ; preds = %27
  %32 = call fastcc i32 @_bm_elem_index_get(ptr noundef %30) #18
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x float], ptr %2, i64 %33
  %35 = load ptr, ptr %8, align 8, !tbaa !61
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !116
  %38 = call fastcc i32 @_bm_elem_index_get(ptr noundef %37) #18
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float], ptr %2, i64 %39
  br label %47

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.BMFace, ptr %30, i64 0, i32 4
  %43 = load ptr, ptr %8, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  %46 = getelementptr inbounds %struct.BMFace, ptr %45, i64 0, i32 4
  br label %47

47:                                               ; preds = %31, %41
  %48 = phi ptr [ %34, %31 ], [ %42, %41 ]
  %49 = phi ptr [ %40, %31 ], [ %46, %41 ]
  %50 = call fastcc float @dot_v3v3(ptr noundef %48, ptr noundef %49) #18
  %51 = fcmp ult float %50, %13
  br i1 %51, label %102, label %52

52:                                               ; preds = %26, %47
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %22, i8 noundef zeroext 8) #18, !range !57
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 8, !tbaa !61
  %57 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !116
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %58, i8 noundef zeroext 8) #18, !range !57
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %102, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %8, align 8, !tbaa !61
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !116
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %64, i8 noundef zeroext 8) #18, !range !57
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %102, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !107
  %70 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !107
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %102, label %73

73:                                               ; preds = %67
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %22) #18
  %74 = load ptr, ptr %7, align 8, !tbaa !61
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !107
  br i1 %14, label %81, label %77

77:                                               ; preds = %73
  %78 = call fastcc i32 @_bm_elem_index_get(ptr noundef %76) #18
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x float], ptr %1, i64 %79
  br label %83

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 3
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi ptr [ %80, %77 ], [ %82, %81 ]
  %85 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %74) #18
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x float], ptr %4, i64 %86
  call fastcc void @copy_v3_v3(ptr noundef %87, ptr noundef %84) #18
  %88 = load ptr, ptr %8, align 8, !tbaa !61
  %89 = getelementptr inbounds %struct.BMLoop, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !107
  br i1 %14, label %95, label %91

91:                                               ; preds = %83
  %92 = call fastcc i32 @_bm_elem_index_get(ptr noundef %90) #18
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x float], ptr %1, i64 %93
  br label %97

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 3
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %94, %91 ], [ %96, %95 ]
  %99 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %88) #18
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x float], ptr %4, i64 %100
  call fastcc void @copy_v3_v3(ptr noundef %101, ptr noundef %98) #18
  br label %102

102:                                              ; preds = %47, %52, %55, %61, %67, %97, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %103 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #18
  %104 = add nuw nsw i32 %23, 1
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %21, !llvm.loop !117

106:                                              ; preds = %102, %12
  %107 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %108 = load i8, ptr %107, align 4, !tbaa !90
  %109 = and i8 %108, -3
  store i8 %109, ptr %107, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_loops_calc_normals(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !118 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, i8 4, i8 5
  %12 = icmp eq ptr %2, null
  %13 = or disjoint i8 %11, 8
  %14 = select i1 %12, i8 %11, i8 %13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext %14) #18
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %159, label %17

17:                                               ; preds = %4, %156
  %18 = phi ptr [ %157, %156 ], [ %15, %4 ]
  %19 = phi ptr [ %152, %156 ], [ null, %4 ]
  %20 = phi ptr [ %151, %156 ], [ null, %4 ]
  %21 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 4
  br label %24

24:                                               ; preds = %150, %17
  %25 = phi ptr [ %22, %17 ], [ %154, %150 ]
  %26 = phi ptr [ %20, %17 ], [ %151, %150 ]
  %27 = phi ptr [ %19, %17 ], [ %152, %150 ]
  %28 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %29, i8 noundef zeroext 16) #18, !range !57
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %150

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !110
  %37 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %36, i8 noundef zeroext 16) #18, !range !57
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  br i1 %12, label %44, label %40

40:                                               ; preds = %39
  %41 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %18) #18
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x float], ptr %2, i64 %42
  br label %44

44:                                               ; preds = %39, %40
  %45 = phi ptr [ %43, %40 ], [ %23, %39 ]
  %46 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %25) #18
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x float], ptr %3, i64 %47
  call fastcc void @copy_v3_v3(ptr noundef %48, ptr noundef %45) #18
  br label %150

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  br i1 %10, label %60, label %52

52:                                               ; preds = %49
  %53 = call fastcc i32 @_bm_elem_index_get(ptr noundef %51) #18
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %1, i64 %54
  store ptr %29, ptr %6, align 8, !tbaa !61
  %56 = call fastcc ptr @BM_edge_other_vert(ptr noundef %29, ptr noundef %51) #18
  %57 = call fastcc i32 @_bm_elem_index_get(ptr noundef %56) #18
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %1, i64 %58
  br label %64

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  store ptr %29, ptr %6, align 8, !tbaa !61
  %62 = call fastcc ptr @BM_edge_other_vert(ptr noundef %29, ptr noundef %51) #18
  %63 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi ptr [ %55, %52 ], [ %61, %60 ]
  %66 = phi ptr [ %59, %52 ], [ %63, %60 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %66, ptr noundef %65) #18
  %67 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #18
  br label %68

68:                                               ; preds = %125, %64
  %69 = phi ptr [ %25, %64 ], [ %72, %125 ]
  %70 = phi ptr [ %26, %64 ], [ %117, %125 ]
  %71 = phi ptr [ %27, %64 ], [ %116, %125 ]
  %72 = call ptr @BM_vert_step_fan_loop(ptr noundef %69, ptr noundef nonnull %6) #16
  %73 = icmp eq ptr %72, null
  %74 = load ptr, ptr %6, align 8, !tbaa !61
  br i1 %73, label %75, label %86

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !110
  %78 = icmp eq ptr %77, %74
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !109
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !110
  br label %84

84:                                               ; preds = %75, %79
  %85 = phi ptr [ %83, %79 ], [ %77, %75 ]
  store ptr %85, ptr %6, align 8, !tbaa !61
  br label %86

86:                                               ; preds = %68, %84
  %87 = phi ptr [ %74, %68 ], [ %85, %84 ]
  %88 = call fastcc ptr @BM_edge_other_vert(ptr noundef %87, ptr noundef %51) #18
  br i1 %10, label %93, label %89

89:                                               ; preds = %86
  %90 = call fastcc i32 @_bm_elem_index_get(ptr noundef %88) #18
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x float], ptr %1, i64 %91
  br label %95

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi ptr [ %92, %89 ], [ %94, %93 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %96, ptr noundef %65) #18
  %97 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #18
  %98 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !116
  %100 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %101 = call fastcc float @saacos(float noundef %100) #18
  br i1 %12, label %106, label %102

102:                                              ; preds = %95
  %103 = call fastcc i32 @_bm_elem_index_get(ptr noundef %99) #18
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x float], ptr %2, i64 %104
  br label %108

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.BMFace, ptr %99, i64 0, i32 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi ptr [ %105, %102 ], [ %107, %106 ]
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %7, ptr noundef %109, float noundef %101) #18
  %110 = icmp eq ptr %70, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %70, align 8, !tbaa !119
  br label %115

113:                                              ; preds = %108
  %114 = alloca [16 x i8], align 16
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi ptr [ %70, %111 ], [ %114, %113 ]
  %117 = phi ptr [ %112, %111 ], [ null, %113 ]
  store ptr %71, ptr %116, align 8, !tbaa !119
  %118 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %69) #18
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x float], ptr %3, i64 %119
  %121 = getelementptr inbounds %struct.LinkNode, ptr %116, i64 0, i32 1
  store ptr %120, ptr %121, align 8, !tbaa !121
  %122 = load ptr, ptr %6, align 8, !tbaa !61
  %123 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %122, i8 noundef zeroext 16) #18, !range !57
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %115
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  br label %68

126:                                              ; preds = %115
  %127 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #18
  %128 = fcmp une float %127, 0.000000e+00
  br i1 %128, label %129, label %138

129:                                              ; preds = %126, %136
  %130 = phi ptr [ %132, %136 ], [ %116, %126 ]
  %131 = phi ptr [ %130, %136 ], [ %117, %126 ]
  %132 = load ptr, ptr %130, align 8, !tbaa !119
  store ptr %131, ptr %130, align 8, !tbaa !119
  %133 = getelementptr inbounds %struct.LinkNode, ptr %130, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !121
  %135 = icmp eq ptr %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %129
  call fastcc void @copy_v3_v3(ptr noundef nonnull %134, ptr noundef nonnull %7) #18
  %137 = icmp eq ptr %132, null
  br i1 %137, label %147, label %129, !llvm.loop !122

138:                                              ; preds = %126, %142
  %139 = phi ptr [ %140, %142 ], [ %117, %126 ]
  %140 = phi ptr [ %143, %142 ], [ %116, %126 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %140, align 8, !tbaa !119
  store ptr %139, ptr %140, align 8, !tbaa !119
  %144 = getelementptr inbounds %struct.LinkNode, ptr %140, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !121
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %138, !llvm.loop !123

147:                                              ; preds = %138, %142, %136, %129
  %148 = phi ptr [ %130, %129 ], [ %130, %136 ], [ %139, %138 ], [ %140, %142 ]
  %149 = phi ptr [ null, %136 ], [ %132, %129 ], [ null, %138 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %150

150:                                              ; preds = %24, %147, %44
  %151 = phi ptr [ %26, %24 ], [ %148, %147 ], [ %26, %44 ]
  %152 = phi ptr [ %27, %24 ], [ %149, %147 ], [ %27, %44 ]
  %153 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 6
  %154 = load ptr, ptr %153, align 8, !tbaa !111
  %155 = icmp eq ptr %154, %22
  br i1 %155, label %156, label %24, !llvm.loop !124

156:                                              ; preds = %150
  %157 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %17, !llvm.loop !125

159:                                              ; preds = %156, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @bmesh_edit_begin(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmesh_edit_end(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %4 = and i32 %1, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BM_mesh_normals_update(ptr noundef %0) #18
  br label %7

7:                                                ; preds = %6, %2
  %8 = and i32 %1, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !126
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %11) #18
  br label %12

12:                                               ; preds = %10, %7
  %13 = and i32 %1, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BM_mesh_select_mode_flush(ptr noundef %0) #16
  br label %16

16:                                               ; preds = %15, %12
  br i1 %9, label %17, label %19

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !126
  br label %19

19:                                               ; preds = %17, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !127 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_index_ensure(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 4, !tbaa !90
  %8 = zext i8 %1 to i32
  %9 = and i8 %7, %1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %89, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i8 %7, 1
  %15 = icmp eq i8 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %23, %20 ], [ %18, %17 ]
  %22 = phi i32 [ %24, %20 ], [ 0, %17 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %21, i32 noundef %22) #18
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %24 = add nuw nsw i32 %22, 1
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %20, !llvm.loop !128

26:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  %27 = load i8, ptr %6, align 4, !tbaa !90
  br label %28

28:                                               ; preds = %26, %11
  %29 = phi i8 [ %27, %26 ], [ %7, %11 ]
  %30 = and i32 %8, 2
  %31 = icmp eq i32 %30, 0
  %32 = and i8 %29, 2
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %42, %38 ], [ 0, %35 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %39, i32 noundef %40) #18
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %42 = add nuw nsw i32 %40, 1
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %38, !llvm.loop !129

44:                                               ; preds = %38, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  %45 = load i8, ptr %6, align 4, !tbaa !90
  br label %46

46:                                               ; preds = %44, %28
  %47 = phi i8 [ %45, %44 ], [ %29, %28 ]
  %48 = and i32 %8, 12
  %49 = icmp eq i32 %48, 0
  %50 = and i8 %47, 12
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %89, label %53

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %54 = and i32 %8, 8
  %55 = icmp eq i32 %54, 0
  %56 = and i8 %47, 8
  %57 = icmp eq i8 %56, 0
  %58 = or i1 %55, %57
  %59 = and i32 %8, 4
  %60 = icmp eq i32 %59, 0
  %61 = and i8 %47, 4
  %62 = icmp eq i8 %61, 0
  %63 = or i1 %60, %62
  %64 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %53, %82
  %67 = phi i32 [ %83, %82 ], [ 0, %53 ]
  %68 = phi i32 [ %85, %82 ], [ 0, %53 ]
  %69 = phi ptr [ %84, %82 ], [ %64, %53 ]
  br i1 %58, label %71, label %70

70:                                               ; preds = %66
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %69, i32 noundef %68) #18
  br label %71

71:                                               ; preds = %70, %66
  br i1 %63, label %82, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.BMFace, ptr %69, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !105
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i32 [ %67, %72 ], [ %78, %75 ]
  %77 = phi ptr [ %74, %72 ], [ %80, %75 ]
  %78 = add nsw i32 %76, 1
  call fastcc void @_bm_elem_index_set(ptr noundef %77, i32 noundef %76) #18
  %79 = getelementptr inbounds %struct.BMLoop, ptr %77, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !111
  %81 = icmp eq ptr %80, %74
  br i1 %81, label %82, label %75, !llvm.loop !130

82:                                               ; preds = %75, %71
  %83 = phi i32 [ %67, %71 ], [ %78, %75 ]
  %84 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %85 = add nuw nsw i32 %68, 1
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %66, !llvm.loop !131

87:                                               ; preds = %82, %53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  %88 = load i8, ptr %6, align 4, !tbaa !90
  br label %89

89:                                               ; preds = %46, %87, %2
  %90 = phi i8 [ %47, %46 ], [ %88, %87 ], [ %7, %2 ]
  %91 = xor i8 %1, -1
  %92 = and i8 %90, %91
  store i8 %92, ptr %6, align 4, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_index_validate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  br label %8

8:                                                ; preds = %5, %44
  %9 = phi i64 [ 0, %5 ], [ %45, %44 ]
  %10 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_index_validate.flag_types, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !132
  %12 = load i8, ptr %7, align 4, !tbaa !90
  %13 = and i8 %12, %11
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_index_validate.iter_types, i64 0, i64 %9
  %16 = load i8, ptr %15, align 1, !tbaa !132
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext %16, ptr noundef null) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %8, %29
  %20 = phi i32 [ %32, %29 ], [ 0, %8 ]
  %21 = phi i32 [ %31, %29 ], [ 0, %8 ]
  %22 = phi i8 [ %30, %29 ], [ 0, %8 ]
  %23 = phi i32 [ %33, %29 ], [ 0, %8 ]
  %24 = phi ptr [ %34, %29 ], [ %17, %8 ]
  br i1 %14, label %29, label %25

25:                                               ; preds = %19
  %26 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %24) #18
  %27 = icmp eq i32 %26, %23
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = phi i8 [ %22, %19 ], [ 1, %28 ], [ %22, %25 ]
  %31 = phi i32 [ %21, %19 ], [ %26, %28 ], [ %21, %25 ]
  %32 = phi i32 [ %20, %19 ], [ %23, %28 ], [ %20, %25 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %24, i32 noundef %23) #18
  %33 = add nuw nsw i32 %23, 1
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !133

36:                                               ; preds = %29
  %37 = icmp ne i8 %30, 1
  %38 = select i1 %37, i1 true, i1 %14
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @stderr, align 8, !tbaa !61
  %41 = shl i64 %9, 2
  %42 = call ptr @llvm.load.relative.i64(ptr @reltable.BM_mesh_elem_index_validate, i64 %41)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %2, ptr noundef %42, i32 noundef %32, i32 noundef %31, ptr noundef %3, ptr noundef %4) #19
  br label %44

44:                                               ; preds = %8, %36, %39
  %45 = add nuw nsw i64 %9, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %8, !llvm.loop !134

47:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !93
  ret i32 %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !136
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
  %17 = load i8, ptr %16, align 1, !tbaa !136
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
  %27 = load i8, ptr %26, align 1, !tbaa !136
  %28 = and i8 %27, 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i8 [ 8, %19 ], [ %28, %25 ]
  %31 = or disjoint i8 %21, %30
  %32 = and i8 %31, %1
  %33 = zext nneg i8 %32 to i32
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %125, label %35

35:                                               ; preds = %29
  %36 = and i32 %33, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  br i1 %5, label %49, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %0, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !137
  %43 = icmp sgt i32 %40, %42
  %44 = shl nsw i32 %40, 1
  %45 = icmp slt i32 %44, %42
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %48(ptr noundef nonnull %4) #16
  br label %49

49:                                               ; preds = %38, %47
  %50 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %51 = load i32, ptr %0, align 8, !tbaa !45
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  %54 = tail call ptr %50(i64 noundef %53, ptr noundef nonnull @.str.4) #16
  store ptr %54, ptr %3, align 8, !tbaa !85
  %55 = load i32, ptr %0, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 16
  store i32 %55, ptr %56, align 8, !tbaa !137
  br label %57

57:                                               ; preds = %39, %49, %35
  %58 = and i32 %33, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %12, align 8, !tbaa !86
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !46
  %66 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 17
  %67 = load i32, ptr %66, align 4, !tbaa !138
  %68 = icmp sgt i32 %65, %67
  %69 = shl nsw i32 %65, 1
  %70 = icmp slt i32 %69, %67
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %63
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %73(ptr noundef nonnull %61) #16
  br label %74

74:                                               ; preds = %60, %72
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %76 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !46
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 3
  %80 = tail call ptr %75(i64 noundef %79, ptr noundef nonnull @.str.5) #16
  store ptr %80, ptr %12, align 8, !tbaa !86
  %81 = load i32, ptr %76, align 4, !tbaa !46
  %82 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 17
  store i32 %81, ptr %82, align 4, !tbaa !138
  br label %83

83:                                               ; preds = %63, %74, %57
  %84 = icmp ult i8 %32, 8
  br i1 %84, label %108, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %22, align 8, !tbaa !87
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !47
  %91 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 18
  %92 = load i32, ptr %91, align 8, !tbaa !139
  %93 = icmp sgt i32 %90, %92
  %94 = shl nsw i32 %90, 1
  %95 = icmp slt i32 %94, %92
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %98(ptr noundef nonnull %86) #16
  br label %99

99:                                               ; preds = %85, %97
  %100 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %101 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %102 = load i32, ptr %101, align 4, !tbaa !47
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 3
  %105 = tail call ptr %100(i64 noundef %104, ptr noundef nonnull @.str.6) #16
  store ptr %105, ptr %22, align 8, !tbaa !87
  %106 = load i32, ptr %101, align 4, !tbaa !47
  %107 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 18
  store i32 %106, ptr %107, align 8, !tbaa !139
  br label %108

108:                                              ; preds = %88, %99, %83
  br i1 %37, label %113, label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %3, align 8, !tbaa !85
  %111 = load i32, ptr %0, align 8, !tbaa !45
  %112 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null, ptr noundef %110, i32 noundef %111) #16
  br label %113

113:                                              ; preds = %109, %108
  br i1 %59, label %119, label %114

114:                                              ; preds = %113
  %115 = load ptr, ptr %12, align 8, !tbaa !86
  %116 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !46
  %118 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef %115, i32 noundef %117) #16
  br label %119

119:                                              ; preds = %114, %113
  br i1 %84, label %125, label %120

120:                                              ; preds = %119
  %121 = load ptr, ptr %22, align 8, !tbaa !87
  %122 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %123 = load i32, ptr %122, align 4, !tbaa !47
  %124 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null, ptr noundef %121, i32 noundef %123) #16
  br label %125

125:                                              ; preds = %119, %120, %29
  %126 = xor i8 %32, -1
  %127 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %128 = load i8, ptr %127, align 1, !tbaa !136
  %129 = and i8 %128, %126
  store i8 %129, ptr %127, align 1, !tbaa !136
  ret void
}

; Function Attrs: optsize
declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_table_init(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void @BM_mesh_elem_table_free(ptr noundef %0, i8 noundef zeroext 11) #18
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %11(ptr noundef nonnull %8) #16
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
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %20(ptr noundef nonnull %17) #16
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
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %29(ptr noundef nonnull %26) #16
  store ptr null, ptr %25, align 8, !tbaa !87
  br label %30

30:                                               ; preds = %24, %28, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_vert_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_vert_at_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call ptr @BLI_mempool_findelem(ptr noundef %4, i32 noundef %1) #16
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_mempool_findelem(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_edge_at_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr @BLI_mempool_findelem(ptr noundef %4, i32 noundef %1) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_at_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = tail call ptr @BLI_mempool_findelem(ptr noundef %4, i32 noundef %1) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BM_mesh_elem_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_remap(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %2, null
  %9 = or i1 %7, %8
  %10 = icmp ne ptr %3, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %258

12:                                               ; preds = %4
  %13 = zext i1 %7 to i8
  %14 = select i1 %8, i8 2, i8 0
  %15 = or disjoint i8 %14, %13
  %16 = select i1 %10, i8 8, i8 0
  %17 = or disjoint i8 %15, %16
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext %17) #18
  br i1 %7, label %18, label %67

18:                                               ; preds = %12
  %19 = load i32, ptr %0, align 8, !tbaa !45
  %20 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.7, i32 noundef %19) #16
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %24 = sext i32 %19 to i64
  %25 = mul nsw i64 %24, 56
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.8) #16
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 %24
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 -1
  %29 = getelementptr inbounds ptr, ptr %22, i64 %24
  %30 = getelementptr inbounds ptr, ptr %29, i64 -1
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %18, %32
  %33 = phi ptr [ %38, %32 ], [ %28, %18 ]
  %34 = phi ptr [ %39, %32 ], [ %30, %18 ]
  %35 = phi i32 [ %36, %32 ], [ %19, %18 ]
  %36 = add nsw i32 %35, -1
  %37 = load ptr, ptr %34, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef nonnull align 8 dereferenceable(56) %37, i64 56, i1 false), !tbaa.struct !140
  %38 = getelementptr inbounds %struct.BMVert, ptr %33, i64 -1
  %39 = getelementptr inbounds ptr, ptr %34, i64 -1
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %41, label %32, !llvm.loop !142

41:                                               ; preds = %32
  br i1 %31, label %59, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds i32, ptr %1, i64 %24
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi ptr [ %56, %44 ], [ %28, %42 ]
  %46 = phi ptr [ %57, %44 ], [ %30, %42 ]
  %47 = phi ptr [ %49, %44 ], [ %43, %42 ]
  %48 = phi i32 [ %50, %44 ], [ %19, %42 ]
  %49 = getelementptr inbounds i32, ptr %47, i64 -1
  %50 = add nsw i32 %48, -1
  %51 = load i32, ptr %49, align 4, !tbaa !141
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %22, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %54, ptr noundef nonnull align 8 dereferenceable(56) %45, i64 56, i1 false), !tbaa.struct !140
  %55 = load ptr, ptr %46, align 8, !tbaa !61
  tail call void @BLI_ghash_insert(ptr noundef %20, ptr noundef %55, ptr noundef %54) #16
  %56 = getelementptr inbounds %struct.BMVert, ptr %45, i64 -1
  %57 = getelementptr inbounds ptr, ptr %46, i64 -1
  %58 = icmp eq i32 %50, 0
  br i1 %58, label %59, label %44, !llvm.loop !143

59:                                               ; preds = %44, %18, %41
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %61 = load i8, ptr %60, align 4, !tbaa !90
  %62 = or i8 %61, 1
  store i8 %62, ptr %60, align 4, !tbaa !90
  %63 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %64 = load i8, ptr %63, align 1, !tbaa !136
  %65 = or i8 %64, 1
  store i8 %65, ptr %63, align 1, !tbaa !136
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %66(ptr noundef %26) #16
  br label %67

67:                                               ; preds = %59, %12
  %68 = phi ptr [ %20, %59 ], [ null, %12 ]
  br i1 %8, label %69, label %119

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !46
  %72 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.9, i32 noundef %71) #16
  %73 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 14
  %74 = load ptr, ptr %73, align 8, !tbaa !86
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %76 = sext i32 %71 to i64
  %77 = mul nsw i64 %76, 80
  %78 = tail call ptr %75(i64 noundef %77, ptr noundef nonnull @.str.10) #16
  %79 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 %76
  %80 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 -1
  %81 = getelementptr inbounds ptr, ptr %74, i64 %76
  %82 = getelementptr inbounds ptr, ptr %81, i64 -1
  %83 = icmp eq i32 %71, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %69, %84
  %85 = phi ptr [ %90, %84 ], [ %80, %69 ]
  %86 = phi i32 [ %88, %84 ], [ %71, %69 ]
  %87 = phi ptr [ %91, %84 ], [ %82, %69 ]
  %88 = add nsw i32 %86, -1
  %89 = load ptr, ptr %87, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %85, ptr noundef nonnull align 8 dereferenceable(80) %89, i64 80, i1 false), !tbaa.struct !144
  %90 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 -1
  %91 = getelementptr inbounds ptr, ptr %87, i64 -1
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %93, label %84, !llvm.loop !145

93:                                               ; preds = %84
  br i1 %83, label %111, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds i32, ptr %2, i64 %76
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi ptr [ %108, %96 ], [ %80, %94 ]
  %98 = phi ptr [ %101, %96 ], [ %95, %94 ]
  %99 = phi i32 [ %102, %96 ], [ %71, %94 ]
  %100 = phi ptr [ %109, %96 ], [ %82, %94 ]
  %101 = getelementptr inbounds i32, ptr %98, i64 -1
  %102 = add nsw i32 %99, -1
  %103 = load i32, ptr %101, align 4, !tbaa !141
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %74, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %106, ptr noundef nonnull align 8 dereferenceable(80) %97, i64 80, i1 false), !tbaa.struct !144
  %107 = load ptr, ptr %100, align 8, !tbaa !61
  tail call void @BLI_ghash_insert(ptr noundef %72, ptr noundef %107, ptr noundef %106) #16
  %108 = getelementptr inbounds %struct.BMEdge, ptr %97, i64 -1
  %109 = getelementptr inbounds ptr, ptr %100, i64 -1
  %110 = icmp eq i32 %102, 0
  br i1 %110, label %111, label %96, !llvm.loop !146

111:                                              ; preds = %96, %69, %93
  %112 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %113 = load i8, ptr %112, align 4, !tbaa !90
  %114 = or i8 %113, 2
  store i8 %114, ptr %112, align 4, !tbaa !90
  %115 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %116 = load i8, ptr %115, align 1, !tbaa !136
  %117 = or i8 %116, 2
  store i8 %117, ptr %115, align 1, !tbaa !136
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %118(ptr noundef %78) #16
  br label %119

119:                                              ; preds = %111, %67
  %120 = phi ptr [ %72, %111 ], [ null, %67 ]
  br i1 %10, label %121, label %171

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %123 = load i32, ptr %122, align 4, !tbaa !47
  %124 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.11, i32 noundef %123) #16
  %125 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %126 = load ptr, ptr %125, align 8, !tbaa !87
  %127 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %128 = sext i32 %123 to i64
  %129 = mul nsw i64 %128, 56
  %130 = tail call ptr %127(i64 noundef %129, ptr noundef nonnull @.str.12) #16
  %131 = getelementptr inbounds %struct.BMFace, ptr %130, i64 %128
  %132 = getelementptr inbounds %struct.BMFace, ptr %131, i64 -1
  %133 = getelementptr inbounds ptr, ptr %126, i64 %128
  %134 = getelementptr inbounds ptr, ptr %133, i64 -1
  %135 = icmp eq i32 %123, 0
  br i1 %135, label %163, label %136

136:                                              ; preds = %121, %136
  %137 = phi i32 [ %140, %136 ], [ %123, %121 ]
  %138 = phi ptr [ %143, %136 ], [ %134, %121 ]
  %139 = phi ptr [ %142, %136 ], [ %132, %121 ]
  %140 = add nsw i32 %137, -1
  %141 = load ptr, ptr %138, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %139, ptr noundef nonnull align 8 dereferenceable(56) %141, i64 56, i1 false), !tbaa.struct !147
  %142 = getelementptr inbounds %struct.BMFace, ptr %139, i64 -1
  %143 = getelementptr inbounds ptr, ptr %138, i64 -1
  %144 = icmp eq i32 %140, 0
  br i1 %144, label %145, label %136, !llvm.loop !149

145:                                              ; preds = %136
  br i1 %135, label %163, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds i32, ptr %3, i64 %128
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi ptr [ %153, %148 ], [ %147, %146 ]
  %150 = phi i32 [ %154, %148 ], [ %123, %146 ]
  %151 = phi ptr [ %161, %148 ], [ %134, %146 ]
  %152 = phi ptr [ %160, %148 ], [ %132, %146 ]
  %153 = getelementptr inbounds i32, ptr %149, i64 -1
  %154 = add nsw i32 %150, -1
  %155 = load i32, ptr %153, align 4, !tbaa !141
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %126, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %158, ptr noundef nonnull align 8 dereferenceable(56) %152, i64 56, i1 false), !tbaa.struct !147
  %159 = load ptr, ptr %151, align 8, !tbaa !61
  tail call void @BLI_ghash_insert(ptr noundef %124, ptr noundef %159, ptr noundef %158) #16
  %160 = getelementptr inbounds %struct.BMFace, ptr %152, i64 -1
  %161 = getelementptr inbounds ptr, ptr %151, i64 -1
  %162 = icmp eq i32 %154, 0
  br i1 %162, label %163, label %148, !llvm.loop !150

163:                                              ; preds = %148, %121, %145
  %164 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %165 = load i8, ptr %164, align 4, !tbaa !90
  %166 = or i8 %165, 12
  store i8 %166, ptr %164, align 4, !tbaa !90
  %167 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 8
  %168 = load i8, ptr %167, align 1, !tbaa !136
  %169 = or i8 %168, 8
  store i8 %169, ptr %167, align 1, !tbaa !136
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %170(ptr noundef %130) #16
  br label %171

171:                                              ; preds = %163, %119
  %172 = phi ptr [ %124, %163 ], [ null, %119 ]
  %173 = icmp ne ptr %120, null
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #18
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = icmp ne ptr %68, null
  br label %189

179:                                              ; preds = %174, %179
  %180 = phi ptr [ %184, %179 ], [ %175, %174 ]
  %181 = getelementptr inbounds %struct.BMVert, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !151
  %183 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %120, ptr noundef %182) #16
  store ptr %183, ptr %181, align 8, !tbaa !151
  %184 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %179, !llvm.loop !153

186:                                              ; preds = %179, %171
  %187 = icmp ne ptr %68, null
  %188 = or i1 %187, %173
  br i1 %188, label %189, label %219

189:                                              ; preds = %177, %186
  %190 = phi i1 [ %178, %177 ], [ %187, %186 ]
  %191 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %192 = icmp eq ptr %191, null
  br i1 %192, label %219, label %193

193:                                              ; preds = %189, %216
  %194 = phi ptr [ %217, %216 ], [ %191, %189 ]
  br i1 %190, label %195, label %202

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.BMEdge, ptr %194, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !101
  %198 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %68, ptr noundef %197) #16
  store ptr %198, ptr %196, align 8, !tbaa !101
  %199 = getelementptr inbounds %struct.BMEdge, ptr %194, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !102
  %201 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %68, ptr noundef %200) #16
  store ptr %201, ptr %199, align 8, !tbaa !102
  br label %202

202:                                              ; preds = %195, %193
  br i1 %173, label %203, label %216

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.BMEdge, ptr %194, i64 0, i32 5
  %205 = getelementptr inbounds %struct.BMEdge, ptr %194, i64 0, i32 5, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !154
  %207 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %120, ptr noundef %206) #16
  store ptr %207, ptr %205, align 8, !tbaa !154
  %208 = load ptr, ptr %204, align 8, !tbaa !155
  %209 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %120, ptr noundef %208) #16
  store ptr %209, ptr %204, align 8, !tbaa !155
  %210 = getelementptr inbounds %struct.BMEdge, ptr %194, i64 0, i32 6
  %211 = getelementptr inbounds %struct.BMEdge, ptr %194, i64 0, i32 6, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !156
  %213 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %120, ptr noundef %212) #16
  store ptr %213, ptr %211, align 8, !tbaa !156
  %214 = load ptr, ptr %210, align 8, !tbaa !157
  %215 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %120, ptr noundef %214) #16
  store ptr %215, ptr %210, align 8, !tbaa !157
  br label %216

216:                                              ; preds = %202, %203
  %217 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %193, !llvm.loop !158

219:                                              ; preds = %216, %189, %186
  %220 = phi i1 [ %190, %189 ], [ %187, %186 ], [ %190, %216 ]
  %221 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #18
  %222 = icmp eq ptr %221, null
  br i1 %222, label %251, label %223

223:                                              ; preds = %219
  %224 = icmp eq ptr %172, null
  br label %225

225:                                              ; preds = %223, %248
  %226 = phi ptr [ %221, %223 ], [ %249, %248 ]
  %227 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %226) #18
  %228 = icmp eq ptr %227, null
  br i1 %228, label %248, label %229

229:                                              ; preds = %225, %245
  %230 = phi ptr [ %246, %245 ], [ %227, %225 ]
  br i1 %220, label %231, label %235

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.BMLoop, ptr %230, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !107
  %234 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %68, ptr noundef %233) #16
  store ptr %234, ptr %232, align 8, !tbaa !107
  br label %235

235:                                              ; preds = %231, %229
  br i1 %173, label %236, label %240

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.BMLoop, ptr %230, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !110
  %239 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %120, ptr noundef %238) #16
  store ptr %239, ptr %237, align 8, !tbaa !110
  br label %240

240:                                              ; preds = %236, %235
  br i1 %224, label %245, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.BMLoop, ptr %230, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !116
  %244 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %172, ptr noundef %243) #16
  store ptr %244, ptr %242, align 8, !tbaa !116
  br label %245

245:                                              ; preds = %240, %241
  %246 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #18
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %229, !llvm.loop !159

248:                                              ; preds = %245, %225
  %249 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %225, !llvm.loop !160

251:                                              ; preds = %248, %219
  br i1 %220, label %252, label %253

252:                                              ; preds = %251
  call void @BLI_ghash_free(ptr noundef nonnull %68, ptr noundef null, ptr noundef null) #16
  br label %253

253:                                              ; preds = %252, %251
  br i1 %173, label %254, label %255

254:                                              ; preds = %253
  call void @BLI_ghash_free(ptr noundef nonnull %120, ptr noundef null, ptr noundef null) #16
  br label %255

255:                                              ; preds = %254, %253
  %256 = icmp eq ptr %172, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %255
  call void @BLI_ghash_free(ptr noundef nonnull %172, ptr noundef null, ptr noundef null) #16
  br label %258

258:                                              ; preds = %255, %257, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !161 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !162
  switch i8 %2, label %54 [
    i8 1, label %6
    i8 2, label %11
    i8 3, label %16
    i8 4, label %21
    i8 5, label %24
    i8 6, label %27
    i8 7, label %30
    i8 8, label %33
    i8 9, label %36
    i8 10, label %39
    i8 11, label %42
    i8 13, label %45
    i8 14, label %48
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !163
  %8 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  br label %51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !163
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  br label %51

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !163
  %18 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  br label %51

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !163
  %23 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !59
  br label %51

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %25, align 8, !tbaa !163
  %26 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %26, align 8, !tbaa !59
  br label %51

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %28, align 8, !tbaa !163
  %29 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %29, align 8, !tbaa !59
  br label %51

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %31, align 8, !tbaa !163
  %32 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %32, align 8, !tbaa !59
  br label %51

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %34, align 8, !tbaa !163
  %35 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %35, align 8, !tbaa !59
  br label %51

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %37, align 8, !tbaa !163
  %38 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %38, align 8, !tbaa !59
  br label %51

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %40, align 8, !tbaa !163
  %41 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %41, align 8, !tbaa !59
  br label %51

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %43, align 8, !tbaa !163
  %44 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %44, align 8, !tbaa !59
  br label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %46, align 8, !tbaa !163
  %47 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %47, align 8, !tbaa !59
  br label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %49, align 8, !tbaa !163
  %50 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %50, align 8, !tbaa !59
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %16, %11, %6
  %52 = phi ptr [ %3, %48 ], [ %3, %45 ], [ %3, %42 ], [ %3, %39 ], [ %3, %36 ], [ %3, %33 ], [ %3, %30 ], [ %3, %27 ], [ %3, %24 ], [ %3, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  %53 = phi ptr [ @bmiter__loop_of_edge_begin, %48 ], [ @bmiter__loop_of_loop_begin, %45 ], [ @bmiter__loop_of_face_begin, %42 ], [ @bmiter__edge_of_face_begin, %39 ], [ @bmiter__vert_of_face_begin, %36 ], [ @bmiter__face_of_edge_begin, %33 ], [ @bmiter__vert_of_edge_begin, %30 ], [ @bmiter__loop_of_vert_begin, %27 ], [ @bmiter__face_of_vert_begin, %24 ], [ @bmiter__edge_of_vert_begin, %21 ], [ @bmiter__elem_of_mesh_begin, %16 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %6 ]
  store ptr %52, ptr %0, align 8, !tbaa !132
  tail call void %53(ptr noundef nonnull %0) #16
  br label %54

54:                                               ; preds = %4, %51
  %55 = phi i8 [ 1, %51 ], [ 0, %4 ]
  ret i8 %55
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !164 {
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = load float, ptr %2, align 4, !tbaa !95
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !95
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !95
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !165 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !166 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !167 {
  %3 = load float, ptr %0, align 4, !tbaa !95
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !95
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !168 {
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !95
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !95
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #14 !PGOFuncName !169 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #16
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !170 {
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = load float, ptr %0, align 4, !tbaa !95
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !95
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !95
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !95
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !172
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #7 !PGOFuncName !173 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !172
  %5 = and i8 %4, %1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !174 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !172
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !175 {
  %3 = load float, ptr %1, align 4, !tbaa !95
  store float %3, ptr %0, align 4, !tbaa !95
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #7 !PGOFuncName !176 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BM_vert_step_fan_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { cold optsize }

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
!48 = !{!49, !39, i64 16}
!49 = !{!"BMElemF", !50, i64 0, !39, i64 16}
!50 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = !{!35, !36, i64 956}
!56 = !{!"bmesh_mesh.c:BM_iter_new"}
!57 = !{i8 0, i8 2}
!58 = !{!"bmesh_mesh.c:BM_iter_step"}
!59 = !{!60, !39, i64 48}
!60 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!61 = !{!39, !39, i64 0}
!62 = !{!35, !36, i64 128}
!63 = !{!"bmesh_mesh.c:bm_mempool_init"}
!64 = !{!65, !36, i64 0}
!65 = !{!"BMAllocTemplate", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!66 = !{!35, !39, i64 32}
!67 = !{!65, !36, i64 4}
!68 = !{!35, !39, i64 40}
!69 = !{!65, !36, i64 8}
!70 = !{!35, !39, i64 48}
!71 = !{!65, !36, i64 12}
!72 = !{!35, !39, i64 56}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !52}
!75 = distinct !{!75, !52}
!76 = distinct !{!76, !52}
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
!89 = distinct !{!89, !52}
!90 = !{!35, !37, i64 28}
!91 = distinct !{!91, !52}
!92 = !{!"bmesh_mesh.c:_bm_elem_index_set"}
!93 = !{!50, !36, i64 8}
!94 = !{!"bmesh_mesh.c:zero_v3"}
!95 = !{!96, !96, i64 0}
!96 = !{!"float", !37, i64 0}
!97 = !{!"bmesh_mesh.c:bm_mesh_edges_calc_vectors"}
!98 = !{!99, !39, i64 40}
!99 = !{!"BMEdge", !50, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !100, i64 48, !100, i64 64}
!100 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!101 = !{!99, !39, i64 24}
!102 = !{!99, !39, i64 32}
!103 = distinct !{!103, !52}
!104 = !{!"bmesh_mesh.c:bm_mesh_verts_calc_normals"}
!105 = !{!106, !39, i64 24}
!106 = !{!"BMFace", !50, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!107 = !{!108, !39, i64 16}
!108 = !{!"BMLoop", !50, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!109 = !{!108, !39, i64 64}
!110 = !{!108, !39, i64 24}
!111 = !{!108, !39, i64 56}
!112 = distinct !{!112, !52}
!113 = distinct !{!113, !52}
!114 = distinct !{!114, !52}
!115 = !{!"bmesh_mesh.c:bm_mesh_edges_sharp_tag"}
!116 = !{!108, !39, i64 32}
!117 = distinct !{!117, !52}
!118 = !{!"bmesh_mesh.c:bm_mesh_loops_calc_normals"}
!119 = !{!120, !39, i64 0}
!120 = !{!"LinkNode", !39, i64 0, !39, i64 8}
!121 = !{!120, !39, i64 8}
!122 = distinct !{!122, !52}
!123 = distinct !{!123, !52}
!124 = distinct !{!124, !52}
!125 = distinct !{!125, !52}
!126 = !{i64 0, i64 8, !61, i64 8, i64 8, !61}
!127 = !{!"bmesh_mesh.c:BLI_listbase_clear"}
!128 = distinct !{!128, !52}
!129 = distinct !{!129, !52}
!130 = distinct !{!130, !52}
!131 = distinct !{!131, !52}
!132 = !{!37, !37, i64 0}
!133 = distinct !{!133, !52}
!134 = distinct !{!134, !52}
!135 = !{!"bmesh_mesh.c:_bm_elem_index_get"}
!136 = !{!35, !37, i64 29}
!137 = !{!35, !36, i64 88}
!138 = !{!35, !36, i64 92}
!139 = !{!35, !36, i64 96}
!140 = !{i64 0, i64 8, !61, i64 8, i64 4, !141, i64 12, i64 1, !132, i64 13, i64 1, !132, i64 14, i64 1, !132, i64 16, i64 8, !61, i64 24, i64 12, !132, i64 36, i64 12, !132, i64 48, i64 8, !61}
!141 = !{!36, !36, i64 0}
!142 = distinct !{!142, !52}
!143 = distinct !{!143, !52}
!144 = !{i64 0, i64 8, !61, i64 8, i64 4, !141, i64 12, i64 1, !132, i64 13, i64 1, !132, i64 14, i64 1, !132, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 8, !61, i64 56, i64 8, !61, i64 64, i64 8, !61, i64 72, i64 8, !61}
!145 = distinct !{!145, !52}
!146 = distinct !{!146, !52}
!147 = !{i64 0, i64 8, !61, i64 8, i64 4, !141, i64 12, i64 1, !132, i64 13, i64 1, !132, i64 14, i64 1, !132, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 4, !141, i64 36, i64 12, !132, i64 48, i64 2, !148}
!148 = !{!41, !41, i64 0}
!149 = distinct !{!149, !52}
!150 = distinct !{!150, !52}
!151 = !{!152, !39, i64 48}
!152 = !{!"BMVert", !50, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!153 = distinct !{!153, !52}
!154 = !{!99, !39, i64 56}
!155 = !{!99, !39, i64 48}
!156 = !{!99, !39, i64 72}
!157 = !{!99, !39, i64 64}
!158 = distinct !{!158, !52}
!159 = distinct !{!159, !52}
!160 = distinct !{!160, !52}
!161 = !{!"bmesh_mesh.c:BM_iter_init"}
!162 = !{!60, !37, i64 60}
!163 = !{!60, !39, i64 40}
!164 = !{!"bmesh_mesh.c:sub_v3_v3v3"}
!165 = !{!"bmesh_mesh.c:normalize_v3"}
!166 = !{!"bmesh_mesh.c:normalize_v3_v3"}
!167 = !{!"bmesh_mesh.c:dot_v3v3"}
!168 = !{!"bmesh_mesh.c:mul_v3_v3fl"}
!169 = !{!"bmesh_mesh.c:saacos"}
!170 = !{!"bmesh_mesh.c:madd_v3_v3fl"}
!171 = !{!"bmesh_mesh.c:_bm_elem_flag_disable"}
!172 = !{!50, !37, i64 13}
!173 = !{!"bmesh_mesh.c:_bm_elem_flag_test_bool"}
!174 = !{!"bmesh_mesh.c:_bm_elem_flag_enable"}
!175 = !{!"bmesh_mesh.c:copy_v3_v3"}
!176 = !{!"bmesh_mesh.c:BM_edge_other_vert"}
