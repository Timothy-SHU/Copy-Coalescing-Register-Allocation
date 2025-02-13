; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_edgenet.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_edgenet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.VertNetInfo = type { ptr, i32, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_edgenet = private unnamed_addr constant [16 x i8] c"BM_mesh_edgenet\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_edgenet(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = load i32, ptr %0, align 8, !tbaa !38
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 24
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.BM_mesh_edgenet) #7
  %14 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #7
  %15 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr null, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !44
  %16 = icmp eq i8 %1, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %24, %20 ], [ %18, %17 ]
  %22 = call fastcc zeroext i8 @bm_edge_step_ok(ptr noundef nonnull %21) #9, !range !45
  %23 = zext nneg i8 %22 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %21, i32 noundef %23) #9
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %20, !llvm.loop !46

26:                                               ; preds = %20, %17, %3
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %0, i8 noundef zeroext 9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %27 = call fastcc ptr @bm_edgenet_edge_get_next(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %14) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %60, label %29

29:                                               ; preds = %26
  %30 = icmp eq i8 %2, 0
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  br label %32

32:                                               ; preds = %29, %57
  %33 = phi ptr [ %27, %29 ], [ %58, %57 ]
  %34 = call fastcc ptr @bm_edgenet_path_calc_best(ptr noundef nonnull %33, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %13, ptr noundef %15) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %7, align 4, !tbaa !44
  %38 = call fastcc ptr @bm_edgenet_face_from_path(ptr noundef nonnull %0, ptr noundef nonnull %34, i32 noundef %37) #9
  %39 = getelementptr inbounds %struct.BMFace, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  br label %41

41:                                               ; preds = %48, %36
  %42 = phi ptr [ %40, %36 ], [ %50, %48 ]
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = call fastcc zeroext i8 @bm_edge_step_ok(ptr noundef %44) #9, !range !45
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef %44, ptr noundef %14) #7
  br label %48

48:                                               ; preds = %41, %47
  %49 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = icmp eq ptr %50, %40
  br i1 %51, label %52, label %41, !llvm.loop !54

52:                                               ; preds = %48
  br i1 %30, label %54, label %53

53:                                               ; preds = %52
  call fastcc void @_bm_elem_flag_enable(ptr noundef %38) #9
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, ptr %31, align 4, !tbaa !55
  %56 = add nsw i32 %55, -1
  call fastcc void @_bm_elem_index_set(ptr noundef %38, i32 noundef %56) #9
  br label %57

57:                                               ; preds = %32, %54
  call void @BLI_linklist_free_pool(ptr noundef %34, ptr noundef null, ptr noundef %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %58 = call fastcc ptr @bm_edgenet_edge_get_next(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %14) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %32

60:                                               ; preds = %57, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %61 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %62 = load i8, ptr %61, align 4, !tbaa !56
  %63 = or i8 %62, 12
  store i8 %63, ptr %61, align 4, !tbaa !56
  call void @BLI_mempool_destroy(ptr noundef %14) #7
  call void @BLI_mempool_destroy(ptr noundef %15) #7
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %64(ptr noundef %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !57 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #9
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !58 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #9
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bm_edge_step_ok(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !59 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, %6
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %4, %8, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_edgenet_edge_get_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !67 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  br label %5

5:                                                ; preds = %8, %3
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %1, ptr noundef %2) #7
  %10 = tail call fastcc zeroext i8 @bm_edge_step_ok(ptr noundef %9) #9, !range !45
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %22, !llvm.loop !68

12:                                               ; preds = %5
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %19
  %16 = phi ptr [ %20, %19 ], [ %13, %12 ]
  %17 = call fastcc zeroext i8 @bm_edge_step_ok(ptr noundef nonnull %16) #9, !range !45
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !69

22:                                               ; preds = %8, %15, %19, %12
  %23 = phi ptr [ null, %12 ], [ %16, %15 ], [ null, %19 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_edgenet_path_calc_best(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !70 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %10 = load i32, ptr %1, align 4, !tbaa !44
  %11 = call fastcc ptr @bm_edgenet_path_calc(ptr noundef %0, i32 noundef %10, i32 noundef -1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5) #9
  %12 = load i32, ptr %1, align 4, !tbaa !44
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4, !tbaa !44
  %14 = icmp eq ptr %11, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr %7, align 4, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4, !tbaa !44
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = alloca i8, i64 %21, align 16
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %11, %18 ], [ %30, %23 ]
  %25 = phi i32 [ 0, %18 ], [ %31, %23 ]
  %26 = getelementptr inbounds %struct.LinkNode, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %22, i64 %28
  store ptr %27, ptr %29, align 8, !tbaa !34
  %30 = load ptr, ptr %24, align 8, !tbaa !73
  %31 = add i32 %25, 1
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %23, !llvm.loop !74

33:                                               ; preds = %23
  %34 = icmp eq i32 %19, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %33
  %36 = add i32 %19, -1
  br label %37

37:                                               ; preds = %35, %61
  %38 = phi i64 [ 0, %35 ], [ %64, %61 ]
  %39 = phi ptr [ %11, %35 ], [ %63, %61 ]
  %40 = phi i32 [ %36, %35 ], [ %65, %61 ]
  %41 = phi i32 [ %16, %35 ], [ %62, %61 ]
  %42 = getelementptr inbounds ptr, ptr %22, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = zext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %22, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = tail call ptr @BM_edge_exists(ptr noundef %43, ptr noundef %46) #7
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %50 = load i32, ptr %1, align 4, !tbaa !44
  %51 = call fastcc ptr @bm_edgenet_path_calc(ptr noundef %47, i32 noundef %50, i32 noundef %41, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %5) #9
  %52 = load i32, ptr %1, align 4, !tbaa !44
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %1, align 4, !tbaa !44
  %54 = icmp eq ptr %51, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  tail call void @BLI_linklist_free_pool(ptr noundef %39, ptr noundef null, ptr noundef %5) #7
  %56 = load i32, ptr %8, align 4, !tbaa !44
  store i32 %56, ptr %2, align 4, !tbaa !44
  %57 = load i32, ptr %9, align 4, !tbaa !44
  store i32 %57, ptr %3, align 4, !tbaa !44
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i32 [ %57, %55 ], [ %41, %49 ]
  %60 = phi ptr [ %51, %55 ], [ %39, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %61

61:                                               ; preds = %58, %37
  %62 = phi i32 [ %59, %58 ], [ %41, %37 ]
  %63 = phi ptr [ %60, %58 ], [ %39, %37 ]
  %64 = add nuw nsw i64 %38, 1
  %65 = trunc i64 %38 to i32
  %66 = icmp eq i64 %64, %20
  br i1 %66, label %67, label %37, !llvm.loop !75

67:                                               ; preds = %61, %33, %15, %6
  %68 = phi ptr [ null, %6 ], [ %11, %15 ], [ %11, %33 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_edgenet_face_from_path(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !76 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = alloca i8, i64 %5, align 16
  %7 = alloca i8, i64 %5, align 16
  %8 = icmp eq ptr %1, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %16, %9 ], [ %1, %3 ]
  %11 = phi i32 [ %17, %9 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.LinkNode, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %6, i64 %14
  store ptr %13, ptr %15, align 8, !tbaa !34
  %16 = load ptr, ptr %10, align 8, !tbaa !73
  %17 = add i32 %11, 1
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %9, !llvm.loop !77

19:                                               ; preds = %9, %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %19
  %22 = add i32 %2, -1
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %33, %23 ]
  %25 = phi i32 [ %22, %21 ], [ %34, %23 ]
  %26 = getelementptr inbounds ptr, ptr %6, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %6, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = tail call ptr @BM_edge_exists(ptr noundef %27, ptr noundef %30) #7
  %32 = getelementptr inbounds ptr, ptr %7, i64 %28
  store ptr %31, ptr %32, align 8, !tbaa !34
  %33 = add nuw nsw i64 %24, 1
  %34 = trunc i64 %24 to i32
  %35 = icmp eq i64 %33, %4
  br i1 %35, label %36, label %23, !llvm.loop !78

36:                                               ; preds = %23, %19
  %37 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, ptr noundef null, i32 noundef 0) #7
  ret ptr %37
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !80
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_linklist_free_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !84
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %15 [
    i8 4, label %14
    i8 2, label %8
    i8 3, label %11
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  br label %16

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  br label %16

14:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !85
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !65
  br label %16

15:                                               ; preds = %4
  unreachable

16:                                               ; preds = %14, %11, %8
  %17 = phi ptr [ %3, %14 ], [ %13, %11 ], [ %10, %8 ]
  %18 = phi ptr [ @bmiter__edge_of_vert_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %17, ptr %0, align 8, !tbaa !88
  tail call void %18(ptr noundef nonnull %0) #7
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !80
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !80
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_edgenet_path_calc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !91 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call fastcc i32 @bm_edge_face(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store ptr null, ptr %9, align 8, !tbaa !34
  store i32 0, ptr %3, align 4, !tbaa !44
  store i32 0, ptr %4, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %13) #9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %15
  %17 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %18) #9
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %20
  %22 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %15, i32 1
  store i32 %1, ptr %22, align 8, !tbaa !94
  %23 = sub nsw i32 0, %1
  %24 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %20, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !94
  store ptr %18, ptr %16, align 8, !tbaa !96
  store ptr %13, ptr %21, align 8, !tbaa !96
  %25 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %20, i32 2
  store i32 %11, ptr %25, align 4, !tbaa !97
  %26 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %15, i32 2
  store i32 %11, ptr %26, align 4, !tbaa !97
  %27 = icmp eq i32 %11, -1
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %20, i32 3
  store i32 %28, ptr %29, align 8, !tbaa !98
  %30 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %15, i32 3
  store i32 %28, ptr %30, align 8, !tbaa !98
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %8, ptr noundef %13, ptr noundef %6) #7
  %31 = load ptr, ptr %17, align 8, !tbaa !93
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %8, ptr noundef %31, ptr noundef %6) #7
  br label %32

32:                                               ; preds = %63, %7
  %33 = phi i32 [ 0, %7 ], [ %64, %63 ]
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %8, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %40

38:                                               ; preds = %32
  call void @BLI_linklist_free_pool(ptr noundef null, ptr noundef null, ptr noundef %6) #7
  %39 = load ptr, ptr %8, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %39, ptr noundef null, ptr noundef %6) #7
  br label %67

40:                                               ; preds = %35, %57
  %41 = phi ptr [ %58, %57 ], [ null, %35 ]
  %42 = phi i8 [ %60, %57 ], [ 0, %35 ]
  %43 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %8, ptr noundef %6) #7
  %44 = call fastcc ptr @bm_edgenet_path_step(ptr noundef %43, ptr noundef nonnull %9, ptr noundef %5, ptr noundef %6) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store ptr null, ptr %10, align 8, !tbaa !34
  %47 = load ptr, ptr %9, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %47, ptr noundef null, ptr noundef %6) #7
  %48 = load ptr, ptr %8, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %48, ptr noundef null, ptr noundef %6) #7
  %49 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  %51 = call fastcc i32 @bm_edgenet_path_from_pass(ptr noundef %50, ptr noundef nonnull %10, ptr noundef %5, ptr noundef %6) #9
  call void @BLI_linklist_reverse(ptr noundef nonnull %10) #7
  %52 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = call fastcc i32 @bm_edgenet_path_from_pass(ptr noundef %53, ptr noundef nonnull %10, ptr noundef %5, ptr noundef %6) #9
  %55 = add i32 %54, %51
  store i32 %55, ptr %3, align 4, !tbaa !44
  store i32 %33, ptr %4, align 4, !tbaa !44
  %56 = load ptr, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %67

57:                                               ; preds = %40
  %58 = load ptr, ptr %9, align 8, !tbaa !34
  %59 = icmp eq ptr %41, %58
  %60 = select i1 %59, i8 %42, i8 1
  %61 = load ptr, ptr %8, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %40, !llvm.loop !99

63:                                               ; preds = %57
  %64 = add i32 %33, 1
  store ptr %58, ptr %8, align 8, !tbaa !34
  store ptr null, ptr %9, align 8, !tbaa !34
  %65 = icmp eq i8 %60, 0
  br i1 %65, label %66, label %32, !llvm.loop !100

66:                                               ; preds = %63, %35
  call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #9
  br label %67

67:                                               ; preds = %46, %66, %38
  %68 = phi ptr [ null, %38 ], [ null, %66 ], [ %56, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @bm_edge_face(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !101 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %7) #9
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ -1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !82
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_edgenet_path_step(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !104 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %6 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #9
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %86, label %9

9:                                                ; preds = %4, %81
  %10 = phi ptr [ %84, %81 ], [ %7, %4 ]
  %11 = phi i32 [ %83, %81 ], [ %6, %4 ]
  %12 = phi ptr [ %82, %81 ], [ %0, %4 ]
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %13
  %15 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %13, i32 1
  %16 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %13, i32 3
  %17 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %13, i32 2
  br label %18

18:                                               ; preds = %9, %72
  %19 = phi i32 [ 0, %9 ], [ %74, %72 ]
  %20 = phi i32 [ 0, %9 ], [ %73, %72 ]
  %21 = phi ptr [ %10, %9 ], [ %75, %72 ]
  %22 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %21, ptr noundef %12) #9
  %23 = load ptr, ptr %14, align 8, !tbaa !96
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %72, label %25

25:                                               ; preds = %18
  %26 = call fastcc zeroext i8 @bm_edge_step_ok(ptr noundef nonnull %21) #9, !range !45
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = call fastcc i32 @_bm_elem_index_get(ptr noundef %22) #9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %30
  %32 = load i32, ptr %15, align 8, !tbaa !94
  %33 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %30, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !94
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %69, label %36

36:                                               ; preds = %28
  %37 = sub nsw i32 0, %34
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, ptr %16, align 8, !tbaa !98
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %30, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !98
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %66

48:                                               ; preds = %36
  %49 = call fastcc i32 @bm_edge_face(ptr noundef nonnull %21) #9
  %50 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %30, i32 2
  store i32 %49, ptr %50, align 4, !tbaa !97
  store i32 %32, ptr %33, align 8, !tbaa !94
  store ptr %12, ptr %31, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %30, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !98
  %53 = and i32 %52, -2
  store i32 %53, ptr %51, align 8, !tbaa !98
  %54 = load i32, ptr %16, align 8, !tbaa !98
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = icmp eq i32 %49, -1
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, ptr %17, align 4, !tbaa !97
  %61 = icmp eq i32 %49, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %59, %48
  %63 = or i32 %52, 1
  store i32 %63, ptr %51, align 8, !tbaa !98
  br label %64

64:                                               ; preds = %62, %59
  call void @BLI_linklist_prepend_pool(ptr noundef %1, ptr noundef %22, ptr noundef %3) #7
  %65 = add i32 %19, 1
  br label %69

66:                                               ; preds = %39, %43
  %67 = call fastcc zeroext i8 @bm_edgenet_path_check_overlap(ptr noundef %12, ptr noundef %22, ptr noundef nonnull %2) #9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %28, %43, %64, %66, %25
  %70 = phi i32 [ %19, %66 ], [ %19, %25 ], [ %19, %28 ], [ %65, %64 ], [ %19, %43 ]
  %71 = add i32 %20, 1
  br label %72

72:                                               ; preds = %69, %18
  %73 = phi i32 [ %20, %18 ], [ %71, %69 ]
  %74 = phi i32 [ %19, %18 ], [ %70, %69 ]
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %18, !llvm.loop !105

77:                                               ; preds = %72
  %78 = icmp eq i32 %74, 1
  %79 = icmp eq i32 %73, 1
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = call ptr @BLI_linklist_pop_pool(ptr noundef %1, ptr noundef %3) #7
  %83 = call fastcc i32 @_bm_elem_index_get(ptr noundef %82) #9
  %84 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 4, ptr noundef %82) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %9

86:                                               ; preds = %77, %81, %66, %4
  %87 = phi ptr [ null, %4 ], [ %21, %66 ], [ null, %81 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_edgenet_path_from_pass(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !106 {
  %5 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #9
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %6, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi i64 [ %6, %4 ], [ %17, %9 ]
  %11 = phi ptr [ %0, %4 ], [ %15, %9 ]
  %12 = phi i32 [ 0, %4 ], [ %14, %9 ]
  %13 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %10
  tail call void @BLI_linklist_prepend_pool(ptr noundef %1, ptr noundef %11, ptr noundef %3) #7
  %14 = add i32 %12, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !96
  %16 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %15) #9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %17, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !94
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %9, label %21, !llvm.loop !107

21:                                               ; preds = %9
  ret i32 %14
}

; Function Attrs: optsize
declare void @BLI_linklist_reverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_edgenet_path_check_overlap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !109 {
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr null, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 16, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %1, ptr %6, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %3, %32
  %8 = phi i1 [ true, %3 ], [ false, %32 ]
  %9 = phi i64 [ 0, %3 ], [ 1, %32 ]
  %10 = phi i32 [ 0, %3 ], [ %25, %32 ]
  %11 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #9
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %14, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !94
  br label %17

17:                                               ; preds = %17, %7
  %18 = phi i32 [ %22, %17 ], [ %10, %7 ]
  %19 = phi ptr [ %26, %17 ], [ %12, %7 ]
  %20 = phi i64 [ %28, %17 ], [ %14, %7 ]
  %21 = phi i32 [ %25, %17 ], [ %10, %7 ]
  %22 = add i32 %18, 1
  %23 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %20
  %24 = alloca [16 x i8], align 16
  call void @BLI_linklist_prepend_nlink(ptr noundef nonnull %4, ptr noundef %19, ptr noundef nonnull %24) #7
  %25 = add i32 %21, 1
  %26 = load ptr, ptr %23, align 8, !tbaa !96
  %27 = call fastcc i32 @_bm_elem_index_get(ptr noundef %26) #9
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %28, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !94
  %31 = icmp eq i32 %30, %16
  br i1 %31, label %17, label %32, !llvm.loop !110

32:                                               ; preds = %17
  br i1 %8, label %7, label %33, !llvm.loop !111

33:                                               ; preds = %32
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %33
  %36 = zext i32 %25 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = alloca i8, i64 %37, align 16
  %39 = zext i32 %22 to i64
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %47, %40 ]
  %42 = phi ptr [ %4, %35 ], [ %43, %40 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.LinkNode, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds ptr, ptr %38, i64 %41
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %39
  br i1 %48, label %49, label %40, !llvm.loop !112

49:                                               ; preds = %40
  %50 = call zeroext i8 @BM_face_exists_overlap_subset(ptr noundef nonnull %38, i32 noundef %25) #7
  br label %51

51:                                               ; preds = %33, %49
  %52 = phi i8 [ %50, %49 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i8 %52
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_nlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists_overlap_subset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!40, !40, i64 0}
!45 = !{i8 0, i8 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!49, !35, i64 24}
!49 = !{!"BMFace", !50, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!50 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!52, !35, i64 24}
!52 = !{!"BMLoop", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!53 = !{!52, !35, i64 56}
!54 = distinct !{!54, !47}
!55 = !{!39, !40, i64 12}
!56 = !{!39, !36, i64 28}
!57 = !{!"bmesh_edgenet.c:BM_iter_new"}
!58 = !{!"bmesh_edgenet.c:_bm_elem_flag_set"}
!59 = !{!"bmesh_edgenet.c:bm_edge_step_ok"}
!60 = !{!61, !35, i64 40}
!61 = !{!"BMEdge", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !62, i64 48, !62, i64 64}
!62 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!63 = !{!52, !35, i64 40}
!64 = !{!"bmesh_edgenet.c:BM_iter_step"}
!65 = !{!66, !35, i64 48}
!66 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!67 = !{!"bmesh_edgenet.c:bm_edgenet_edge_get_next"}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = !{!"bmesh_edgenet.c:bm_edgenet_path_calc_best"}
!71 = !{!72, !35, i64 8}
!72 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!73 = !{!72, !35, i64 0}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47}
!76 = !{!"bmesh_edgenet.c:bm_edgenet_face_from_path"}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = !{!"bmesh_edgenet.c:_bm_elem_flag_enable"}
!80 = !{!50, !36, i64 13}
!81 = !{!"bmesh_edgenet.c:_bm_elem_index_set"}
!82 = !{!50, !40, i64 8}
!83 = !{!"bmesh_edgenet.c:BM_iter_init"}
!84 = !{!66, !36, i64 60}
!85 = !{!66, !35, i64 40}
!86 = !{!39, !35, i64 40}
!87 = !{!39, !35, i64 56}
!88 = !{!36, !36, i64 0}
!89 = !{!"bmesh_edgenet.c:_bm_elem_flag_disable"}
!90 = !{!"bmesh_edgenet.c:_bm_elem_flag_test"}
!91 = !{!"bmesh_edgenet.c:bm_edgenet_path_calc"}
!92 = !{!61, !35, i64 24}
!93 = !{!61, !35, i64 32}
!94 = !{!95, !40, i64 8}
!95 = !{!"VertNetInfo", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!96 = !{!95, !35, i64 0}
!97 = !{!95, !40, i64 12}
!98 = !{!95, !40, i64 16}
!99 = distinct !{!99, !47}
!100 = distinct !{!100, !47}
!101 = !{!"bmesh_edgenet.c:bm_edge_face"}
!102 = !{!52, !35, i64 32}
!103 = !{!"bmesh_edgenet.c:_bm_elem_index_get"}
!104 = !{!"bmesh_edgenet.c:bm_edgenet_path_step"}
!105 = distinct !{!105, !47}
!106 = !{!"bmesh_edgenet.c:bm_edgenet_path_from_pass"}
!107 = distinct !{!107, !47}
!108 = !{!"bmesh_edgenet.c:BM_edge_other_vert"}
!109 = !{!"bmesh_edgenet.c:bm_edgenet_path_check_overlap"}
!110 = distinct !{!110, !47}
!111 = distinct !{!111, !47}
!112 = distinct !{!112, !47}
