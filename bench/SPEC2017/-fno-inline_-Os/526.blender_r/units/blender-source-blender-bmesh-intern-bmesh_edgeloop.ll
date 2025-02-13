; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_edgeloop.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_edgeloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMEdgeLoopStore = type { ptr, ptr, %struct.ListBase, i32, i32, [3 x float], [3 x float] }
%struct.ListBase = type { ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.VertStep = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_edgeloops_find = private unnamed_addr constant [23 x i8] c"BM_mesh_edgeloops_find\00", align 1
@__func__.BM_mesh_edgeloops_find_path = private unnamed_addr constant [28 x i8] c"BM_mesh_edgeloops_find_path\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_edgeloop_copy = private unnamed_addr constant [17 x i8] c"BM_edgeloop_copy\00", align 1
@__func__.BM_edgeloop_from_verts = private unnamed_addr constant [23 x i8] c"BM_edgeloop_from_verts\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_loop_build = private unnamed_addr constant [14 x i8] c"bm_loop_build\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_mesh_edgeloops_find(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %9) #16
  %10 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !34

12:                                               ; preds = %8, %4
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %25
  %16 = phi ptr [ %26, %25 ], [ %13, %12 ]
  %17 = call zeroext i8 %2(ptr noundef nonnull %16, ptr noundef %3) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %16) #16
  %20 = getelementptr inbounds %struct.BMEdge, ptr %16, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  call fastcc void @_bm_elem_flag_enable(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.BMEdge, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  call fastcc void @_bm_elem_flag_enable(ptr noundef %23) #16
  br label %25

24:                                               ; preds = %15
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %16) #16
  br label %25

25:                                               ; preds = %19, %24
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !45

28:                                               ; preds = %25, %12
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %28, %57
  %32 = phi ptr [ %59, %57 ], [ %29, %28 ]
  %33 = phi i32 [ %58, %57 ], [ 0, %28 ]
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %32) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %38 = call ptr %37(i64 noundef 64, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find) #17
  %39 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  %41 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = call fastcc zeroext i8 @bm_loop_build(ptr noundef %38, ptr noundef %40, ptr noundef %42, i32 noundef 1) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr %41, align 8, !tbaa !44
  %47 = load ptr, ptr %39, align 8, !tbaa !36
  %48 = call fastcc zeroext i8 @bm_loop_build(ptr noundef %38, ptr noundef %46, ptr noundef %47, i32 noundef -1) #16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %38, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !47
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %38) #17
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %32) #16
  %55 = add nsw i32 %33, 1
  br label %57

56:                                               ; preds = %50, %45, %36
  call void @BM_edgeloop_free(ptr noundef %38) #16
  br label %57

57:                                               ; preds = %54, %56, %31
  %58 = phi i32 [ %33, %31 ], [ %55, %54 ], [ %33, %56 ]
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %31, !llvm.loop !50

61:                                               ; preds = %57, %28
  %62 = phi i32 [ 0, %28 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i32 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !51 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #16
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !52 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = and i8 %3, 127
  store i8 %4, ptr %2, align 1, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !57 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = or i8 %3, -128
  store i8 %4, ptr %2, align 1, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = and i8 %3, -128
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_loop_build(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !59 {
  %5 = alloca ptr, align 8
  %6 = icmp eq i32 %3, 1
  %7 = select i1 %6, ptr @BLI_addhead, ptr @BLI_addtail
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %2) #16
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = or i1 %9, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %12, %32
  %17 = phi ptr [ %1, %12 ], [ %18, %32 ]
  %18 = phi ptr [ %2, %12 ], [ %27, %32 ]
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %20 = tail call ptr %19(i64 noundef 24, ptr noundef nonnull @__func__.bm_loop_build) #17
  %21 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !60
  tail call void %7(ptr noundef nonnull %13, ptr noundef %20) #17, !callees !62
  %22 = load i32, ptr %14, align 4, !tbaa !47
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %14, align 4, !tbaa !47
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %18) #16
  %24 = call fastcc i32 @bm_vert_other_tag(ptr noundef nonnull %18, ptr noundef %17, ptr noundef nonnull %5) #16
  switch i32 %24, label %34 [
    i32 1, label %25
    i32 0, label %35
  ]

25:                                               ; preds = %16
  %26 = load ptr, ptr %5, align 8, !tbaa !46
  %27 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %26, ptr noundef nonnull %18) #16
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %26) #16
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, ptr %15, align 8, !tbaa !63
  %31 = or i32 %30, 1
  store i32 %31, ptr %15, align 8, !tbaa !63
  br label %35

32:                                               ; preds = %25
  %33 = icmp eq ptr %27, null
  br i1 %33, label %35, label %16, !llvm.loop !64

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %32, %16, %34, %29, %4
  %36 = phi i8 [ 1, %4 ], [ 1, %29 ], [ 0, %34 ], [ 1, %16 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i8 %36
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edgeloop_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #17
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %3(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_mesh_edgeloops_find_path(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x ptr], align 16
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %6 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %14, i32 noundef 0) #16
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !65

17:                                               ; preds = %13, %6
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !66
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 4, !tbaa !66
  %21 = icmp eq ptr %2, null
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #16
  %23 = icmp eq ptr %22, null
  br i1 %21, label %38, label %24

24:                                               ; preds = %17
  br i1 %23, label %47, label %25

25:                                               ; preds = %24, %35
  %26 = phi ptr [ %36, %35 ], [ %22, %24 ]
  %27 = call zeroext i8 %2(ptr noundef nonnull %26, ptr noundef %3) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %26) #16
  %30 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  call fastcc void @_bm_elem_flag_enable(ptr noundef %31) #16
  %32 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  call fastcc void @_bm_elem_flag_enable(ptr noundef %33) #16
  br label %35

34:                                               ; preds = %25
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %26) #16
  br label %35

35:                                               ; preds = %29, %34
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %25, !llvm.loop !70

38:                                               ; preds = %17
  br i1 %23, label %47, label %39

39:                                               ; preds = %38, %39
  %40 = phi ptr [ %45, %39 ], [ %22, %38 ]
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %40) #16
  %41 = getelementptr inbounds %struct.BMEdge, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  call fastcc void @_bm_elem_flag_enable(ptr noundef %42) #16
  %43 = getelementptr inbounds %struct.BMEdge, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  call fastcc void @_bm_elem_flag_enable(ptr noundef %44) #16
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39, !llvm.loop !71

47:                                               ; preds = %35, %39, %24, %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %48 = call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 512, i32 noundef 0) #17
  %49 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  call fastcc void @vs_add(ptr noundef %48, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %50, i32 noundef 1) #16
  %51 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  call fastcc void @vs_add(ptr noundef %48, ptr noundef nonnull %10, ptr noundef %5, ptr noundef %52, i32 noundef -1) #16
  %53 = load i8, ptr %18, align 4, !tbaa !66
  %54 = or i8 %53, 1
  store i8 %54, ptr %18, align 4, !tbaa !66
  br label %55

55:                                               ; preds = %61, %47
  %56 = call fastcc zeroext i8 @bm_loop_path_build_step(ptr noundef %48, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %8) #16
  %57 = icmp eq i8 %56, 0
  %58 = load ptr, ptr %8, align 16
  %59 = icmp ne ptr %58, null
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = call fastcc zeroext i8 @bm_loop_path_build_step(ptr noundef %48, ptr noundef nonnull %10, i32 noundef -1, ptr noundef nonnull %8) #16
  %63 = icmp eq i8 %62, 0
  %64 = load ptr, ptr %8, align 16
  %65 = icmp ne ptr %64, null
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %55

67:                                               ; preds = %61, %55
  %68 = phi ptr [ %64, %61 ], [ %58, %55 ]
  call void @BLI_mempool_destroy(ptr noundef %48) #17
  %69 = icmp ne ptr %68, null
  br i1 %69, label %70, label %113

70:                                               ; preds = %67
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %72 = call ptr %71(i64 noundef 64, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #17
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %74 = call ptr %73(i64 noundef 24, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #17
  %75 = getelementptr inbounds %struct.LinkData, ptr %74, i64 0, i32 2
  store ptr %68, ptr %75, align 8, !tbaa !60
  %76 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %72, i64 0, i32 2
  call void @BLI_addhead(ptr noundef nonnull %76, ptr noundef %74) #17
  %77 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %72, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !47
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %77, align 4, !tbaa !47
  %80 = icmp eq ptr %68, %4
  br i1 %80, label %92, label %81

81:                                               ; preds = %70, %81
  %82 = phi ptr [ %85, %81 ], [ %68, %70 ]
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !72
  %85 = call fastcc ptr @BM_edge_other_vert(ptr noundef %84, ptr noundef %82) #16
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %87 = call ptr %86(i64 noundef 24, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #17
  %88 = getelementptr inbounds %struct.LinkData, ptr %87, i64 0, i32 2
  store ptr %85, ptr %88, align 8, !tbaa !60
  call void @BLI_addhead(ptr noundef nonnull %76, ptr noundef %87) #17
  %89 = load i32, ptr %77, align 4, !tbaa !47
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %77, align 4, !tbaa !47
  %91 = icmp eq ptr %85, %4
  br i1 %91, label %92, label %81

92:                                               ; preds = %81, %70
  %93 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %96 = call ptr %95(i64 noundef 24, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #17
  %97 = getelementptr inbounds %struct.LinkData, ptr %96, i64 0, i32 2
  store ptr %94, ptr %97, align 8, !tbaa !60
  call void @BLI_addtail(ptr noundef nonnull %76, ptr noundef %96) #17
  %98 = load i32, ptr %77, align 4, !tbaa !47
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %77, align 4, !tbaa !47
  %100 = icmp eq ptr %94, %5
  br i1 %100, label %112, label %101

101:                                              ; preds = %92, %101
  %102 = phi ptr [ %105, %101 ], [ %94, %92 ]
  %103 = getelementptr inbounds %struct.BMVert, ptr %102, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !72
  %105 = call fastcc ptr @BM_edge_other_vert(ptr noundef %104, ptr noundef %102) #16
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %107 = call ptr %106(i64 noundef 24, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #17
  %108 = getelementptr inbounds %struct.LinkData, ptr %107, i64 0, i32 2
  store ptr %105, ptr %108, align 8, !tbaa !60
  call void @BLI_addtail(ptr noundef nonnull %76, ptr noundef %107) #17
  %109 = load i32, ptr %77, align 4, !tbaa !47
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %77, align 4, !tbaa !47
  %111 = icmp eq ptr %105, %5
  br i1 %111, label %112, label %101

112:                                              ; preds = %101, %92
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %72) #17
  br label %113

113:                                              ; preds = %67, %112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  %114 = zext i1 %69 to i8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret i8 %114
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vs_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !76 {
  %6 = tail call ptr @BLI_mempool_alloc(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.VertStep, ptr %6, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !77
  tail call fastcc void @_bm_elem_index_set(ptr noundef %2, i32 noundef %4) #16
  %8 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  store ptr %3, ptr %8, align 8, !tbaa !72
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_loop_path_build_step(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !79 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %1, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %4, %43
  %10 = phi ptr [ %15, %43 ], [ %7, %4 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %11 = getelementptr inbounds %struct.VertStep, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #16
  %14 = add nsw i32 %13, %2
  %15 = load ptr, ptr %10, align 8, !tbaa !81
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef %12) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %9, %37
  %19 = phi ptr [ %38, %37 ], [ %16, %9 ]
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %19) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %11, align 8, !tbaa !77
  %24 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %19, ptr noundef %23) #16
  %25 = call fastcc i32 @_bm_elem_index_get(ptr noundef %24) #16
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %19) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call fastcc void @vs_add(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %24, ptr noundef nonnull %19, i32 noundef %14) #16
  br label %37

28:                                               ; preds = %22
  %29 = xor i32 %25, %2
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = icmp eq i32 %2, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = load ptr, ptr %11, align 8, !tbaa !77
  store ptr %34, ptr %3, align 8, !tbaa !46
  br label %40

35:                                               ; preds = %31
  store ptr %24, ptr %3, align 8, !tbaa !46
  %36 = load ptr, ptr %11, align 8, !tbaa !77
  br label %40

37:                                               ; preds = %28, %27, %18
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %18, !llvm.loop !82

40:                                               ; preds = %35, %33
  %41 = phi ptr [ %24, %33 ], [ %36, %35 ]
  %42 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr %41, ptr %42, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  br label %48

43:                                               ; preds = %37, %9
  call void @BLI_mempool_free(ptr noundef %0, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  %44 = icmp eq ptr %15, null
  br i1 %44, label %45, label %9, !llvm.loop !83

45:                                               ; preds = %43, %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !84
  %46 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %1) #16, !range !85
  %47 = xor i8 %46, 1
  br label %48

48:                                               ; preds = %40, %45
  %49 = phi i8 [ %47, %45 ], [ 1, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i8 %49
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_edgeloops_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BM_edgeloop_free(ptr noundef nonnull %5) #16
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !87

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_mesh_edgeloops_calc_center(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @BM_edgeloop_calc_center(ptr poison, ptr noundef nonnull %6) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !88

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_edgeloop_calc_center(ptr nocapture readnone %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = load ptr, ptr %3, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 5
  tail call fastcc void @zero_v3(ptr noundef nonnull %17) #16
  %18 = tail call fastcc float @len_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14) #16
  %19 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %20 = tail call fastcc float @len_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %19) #16
  %21 = fadd float %18, %20
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %17, ptr noundef nonnull %14, float noundef %21) #16
  %22 = fadd float %21, 0.000000e+00
  %23 = load ptr, ptr %8, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %2, %25
  %26 = phi ptr [ %36, %25 ], [ %23, %2 ]
  %27 = phi float [ %35, %25 ], [ %22, %2 ]
  %28 = phi float [ %33, %25 ], [ %20, %2 ]
  %29 = phi ptr [ %32, %25 ], [ %19, %2 ]
  %30 = getelementptr inbounds %struct.LinkData, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = tail call fastcc float @len_v3v3(ptr noundef nonnull %29, ptr noundef nonnull %32) #16
  %34 = fadd float %28, %33
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %17, ptr noundef nonnull %29, float noundef %34) #16
  %35 = fadd float %27, %34
  %36 = load ptr, ptr %26, align 8, !tbaa !92
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25

38:                                               ; preds = %25, %2
  %39 = phi float [ %22, %2 ], [ %35, %25 ]
  %40 = fcmp une float %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = fdiv float 1.000000e+00, %39
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %17, float noundef %42) #16
  br label %43

43:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_mesh_edgeloops_calc_normal(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call zeroext i8 @BM_edgeloop_calc_normal(ptr poison, ptr noundef nonnull %6) #16, !range !85
  %8 = load ptr, ptr %6, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !93

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef zeroext i8 @BM_edgeloop_calc_normal(ptr nocapture readnone %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.LinkData, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6
  tail call fastcc void @zero_v3(ptr noundef nonnull %12) #16
  %13 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %13) #16
  %14 = load ptr, ptr %4, align 8, !tbaa !92
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %22, %16 ], [ %14, %2 ]
  %18 = phi ptr [ %21, %16 ], [ %13, %2 ]
  %19 = getelementptr inbounds %struct.LinkData, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %18, ptr noundef nonnull %21) #16
  %22 = load ptr, ptr %17, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16

24:                                               ; preds = %16, %2
  %25 = tail call fastcc float @normalize_v3(ptr noundef nonnull %12) #16
  %26 = fcmp olt float %25, 0x3EE4F8B580000000
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 2
  store float 1.000000e+00, ptr %28, align 4, !tbaa !94
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi i8 [ 0, %27 ], [ 1, %24 ]
  ret i8 %30
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_mesh_edgeloops_calc_normal_aligned(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = tail call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr poison, ptr noundef nonnull %7, ptr noundef %2) #16, !range !85
  %9 = load ptr, ptr %7, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !96

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.LinkData, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6
  tail call fastcc void @zero_v3(ptr noundef nonnull %16) #16
  br label %17

17:                                               ; preds = %24, %3
  %18 = phi ptr [ %8, %3 ], [ %22, %24 ]
  %19 = phi ptr [ %13, %3 ], [ %21, %24 ]
  %20 = phi ptr [ %15, %3 ], [ %26, %24 ]
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %21, ptr noundef nonnull %19) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %6) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #16
  call fastcc void @add_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %5) #16
  %22 = load ptr, ptr %18, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.LinkData, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  br label %17

27:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  %28 = tail call fastcc float @normalize_v3(ptr noundef nonnull %16) #16
  %29 = fcmp olt float %28, 0x3EE4F8B580000000
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 2
  store float 1.000000e+00, ptr %31, align 4, !tbaa !94
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi i8 [ 0, %30 ], [ 1, %27 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_edgeloops_calc_order(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call fastcc void @zero_v3(ptr noundef nonnull %5) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef 0x7FF0000000000000) #16
  br label %31

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %15, %10 ], [ %7, %3 ]
  %12 = phi i32 [ %14, %10 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %11, i64 0, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %13) #16
  %14 = add nuw nsw i32 %12, 1
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !97

17:                                               ; preds = %10
  %18 = sitofp i32 %14 to float
  %19 = fdiv float 1.000000e+00, %18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %19) #16
  br i1 %8, label %31, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %29, %20 ], [ %7, %17 ]
  %22 = phi ptr [ %28, %20 ], [ null, %17 ]
  %23 = phi float [ %27, %20 ], [ -1.000000e+00, %17 ]
  %24 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %21, i64 0, i32 5
  %25 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %24) #16
  %26 = fcmp ogt float %25, %23
  %27 = select i1 %26, float %25, float %23
  %28 = select i1 %26, ptr %21, ptr %22
  %29 = load ptr, ptr %21, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !98

31:                                               ; preds = %20, %9, %17
  %32 = phi ptr [ null, %17 ], [ null, %9 ], [ %28, %20 ]
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef %32) #17
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %32) #17
  %33 = load ptr, ptr %1, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %74, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %37 = icmp eq i8 %2, 0
  br label %38

38:                                               ; preds = %71, %35
  %39 = phi ptr [ %33, %35 ], [ %72, %71 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !99
  %41 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %40, i64 0, i32 5
  %42 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %40, i64 0, i32 6
  br label %43

43:                                               ; preds = %38, %64
  %44 = phi ptr [ %69, %64 ], [ %39, %38 ]
  %45 = phi float [ %68, %64 ], [ 0x47EFFFFFE0000000, %38 ]
  %46 = phi ptr [ %67, %64 ], [ null, %38 ]
  br i1 %37, label %61, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %48 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %44, i64 0, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %41, ptr noundef nonnull %48) #16
  %49 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #16
  %50 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %42) #16
  %51 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %44, i64 0, i32 6
  %52 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %51) #16
  %53 = insertelement <2 x float> poison, float %50, i64 0
  %54 = insertelement <2 x float> %53, float %52, i64 1
  %55 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %54)
  %56 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %55
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %58 = fadd <2 x float> %56, %57
  %59 = extractelement <2 x float> %58, i64 0
  %60 = fmul float %49, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %64

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %44, i64 0, i32 5
  %63 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %41, ptr noundef nonnull %62) #16
  br label %64

64:                                               ; preds = %61, %47
  %65 = phi float [ %60, %47 ], [ %63, %61 ]
  %66 = fcmp olt float %65, %45
  %67 = select i1 %66, ptr %44, ptr %46
  %68 = select i1 %66, float %65, float %45
  %69 = load ptr, ptr %44, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %43, !llvm.loop !100

71:                                               ; preds = %64
  call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef %67) #17
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %67) #17
  %72 = load ptr, ptr %1, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %38, !llvm.loop !101

74:                                               ; preds = %71, %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !102 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !94
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !103 {
  %3 = load float, ptr %1, align 4, !tbaa !94
  %4 = load float, ptr %0, align 4, !tbaa !94
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !94
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !94
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !104 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !94
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !105 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !106 {
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = load float, ptr %2, align 4, !tbaa !94
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !94
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !94
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !94
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !107 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !108 {
  %3 = load float, ptr %0, align 4, !tbaa !94
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BM_edgeloop_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @__func__.BM_edgeloop_copy) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !109
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_edgeloop_from_verts(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 64, ptr noundef nonnull @__func__.BM_edgeloop_from_verts) #17
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 2
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %13 = tail call ptr %12(i64 noundef 24, ptr noundef nonnull @__func__.BM_edgeloop_from_verts) #17
  %14 = getelementptr inbounds ptr, ptr %0, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !60
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %13) #17
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !112

19:                                               ; preds = %10, %3
  %20 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 4
  store i32 %1, ptr %20, align 4, !tbaa !47
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %22, %19
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_edgeloop_is_closed(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @BM_edgeloop_verts_get(ptr noundef readnone %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BM_edgeloop_length_get(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !47
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @BM_edgeloop_normal_get(ptr noundef readnone %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @BM_edgeloop_center_get(ptr noundef readnone %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edgeloop_edges_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %11
  %7 = phi i64 [ %17, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %19, %11 ], [ %4, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = tail call ptr @BM_edge_exists(ptr noundef %13, ptr noundef %15) #17
  %17 = add nuw i64 %7, 1
  %18 = getelementptr inbounds ptr, ptr %1, i64 %7
  store ptr %16, ptr %18, align 8, !tbaa !46
  %19 = load ptr, ptr %8, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !113

21:                                               ; preds = %11, %6
  %22 = phi i64 [ %7, %6 ], [ %17, %11 ]
  %23 = and i64 %22, 4294967295
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i64 [ 0, %2 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.LinkData, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !89
  %36 = getelementptr inbounds %struct.LinkData, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = tail call ptr @BM_edge_exists(ptr noundef %33, ptr noundef %37) #17
  %39 = getelementptr inbounds ptr, ptr %1, i64 %25
  store ptr %38, ptr %39, align 8, !tbaa !46
  br label %40

40:                                               ; preds = %30, %24
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !114 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !115 {
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = load float, ptr %0, align 4, !tbaa !94
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !94
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !94
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !94
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !94
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_newell_cross_v3_v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !116 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !94
  %13 = fadd float %10, %12
  %14 = load float, ptr %0, align 4, !tbaa !94
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %14)
  store float %15, ptr %0, align 4, !tbaa !94
  %16 = load float, ptr %9, align 4, !tbaa !94
  %17 = load float, ptr %11, align 4, !tbaa !94
  %18 = fsub float %16, %17
  %19 = load float, ptr %1, align 4, !tbaa !94
  %20 = load float, ptr %2, align 4, !tbaa !94
  %21 = fadd float %19, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !94
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !94
  %25 = load float, ptr %1, align 4, !tbaa !94
  %26 = load float, ptr %2, align 4, !tbaa !94
  %27 = fsub float %25, %26
  %28 = load float, ptr %4, align 4, !tbaa !94
  %29 = load float, ptr %6, align 4, !tbaa !94
  %30 = fadd float %28, %29
  %31 = getelementptr inbounds float, ptr %0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !94
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %32)
  store float %33, ptr %31, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !117 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !94
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !94
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !94
  %15 = load float, ptr %8, align 4, !tbaa !94
  %16 = load float, ptr %2, align 4, !tbaa !94
  %17 = load float, ptr %1, align 4, !tbaa !94
  %18 = load float, ptr %6, align 4, !tbaa !94
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !94
  %23 = load float, ptr %1, align 4, !tbaa !94
  %24 = load float, ptr %10, align 4, !tbaa !94
  %25 = load float, ptr %4, align 4, !tbaa !94
  %26 = load float, ptr %2, align 4, !tbaa !94
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edgeloop_flip(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6
  tail call fastcc void @negate_v3(ptr noundef nonnull %3) #16
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  tail call void @BLI_listbase_reverse(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !118 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !94
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !94
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !94
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !94
  ret void
}

; Function Attrs: optsize
declare void @BLI_listbase_reverse(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edgeloop_expand(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = shl nsw i32 %5, 1
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  br label %14

10:                                               ; preds = %18, %14
  %11 = phi i32 [ %15, %14 ], [ %23, %18 ]
  %12 = shl nsw i32 %11, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %26, !llvm.loop !119

14:                                               ; preds = %8, %10
  %15 = phi i32 [ %5, %8 ], [ %11, %10 ]
  %16 = load ptr, ptr %9, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %14 ]
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %21 = tail call ptr %20(ptr noundef nonnull %19) #17
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %9, ptr noundef nonnull %19, ptr noundef %21) #17
  %22 = load i32, ptr %4, align 4, !tbaa !47
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %4, align 4, !tbaa !47
  %24 = load ptr, ptr %21, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %10, label %18, !llvm.loop !120

26:                                               ; preds = %10, %3
  %27 = phi i32 [ %5, %3 ], [ %11, %10 ]
  %28 = icmp slt i32 %27, %2
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = srem i32 %27, %2
  %31 = sdiv i32 %27, %30
  %32 = tail call fastcc i32 @max_ii(i32 noundef %31) #16
  %33 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %34 = icmp sgt i32 %32, 0
  br label %35

35:                                               ; preds = %50, %29
  %36 = phi ptr [ %33, %29 ], [ %53, %50 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load ptr, ptr %33, align 8, !tbaa !91
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = icmp eq ptr %37, null
  %42 = select i1 %41, ptr %38, ptr %37
  br label %43

43:                                               ; preds = %45, %40
  %44 = phi ptr [ %42, %40 ], [ %48, %45 ]
  br i1 %34, label %50, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %44, align 8, !tbaa !92
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr %38, ptr %46
  %49 = icmp eq ptr %48, %42
  br i1 %49, label %50, label %43, !llvm.loop !121

50:                                               ; preds = %45, %43, %35
  %51 = phi ptr [ %37, %35 ], [ %42, %45 ], [ %44, %43 ]
  %52 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %53 = tail call ptr %52(ptr noundef %51) #17
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %33, ptr noundef %51, ptr noundef %53) #17
  %54 = load i32, ptr %4, align 4, !tbaa !47
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %4, align 4, !tbaa !47
  %56 = icmp slt i32 %55, %2
  br i1 %56, label %35, label %57, !llvm.loop !122

57:                                               ; preds = %50, %26
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #10 !PGOFuncName !123 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edgeloop_overlap_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %9) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !124

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.LinkData, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %19) #16
  %20 = load ptr, ptr %17, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !125

22:                                               ; preds = %16, %12
  br label %23

23:                                               ; preds = %22, %27
  %24 = phi ptr [ %25, %27 ], [ %3, %22 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.LinkData, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %29) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %23, label %32, !llvm.loop !126

32:                                               ; preds = %23, %27
  %33 = phi i8 [ 1, %27 ], [ 0, %23 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !127 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !128
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %18 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !129
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  br label %19

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !129
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  br label %19

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !129
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  br label %19

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !129
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !55
  br label %19

18:                                               ; preds = %4
  unreachable

19:                                               ; preds = %17, %14, %11, %8
  %20 = phi ptr [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %21 = phi ptr [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %20, ptr %0, align 8, !tbaa !111
  tail call void %21(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_vert_other_tag(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !133 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3, %19
  %8 = phi ptr [ %22, %19 ], [ %5, %3 ]
  %9 = phi i32 [ %21, %19 ], [ 0, %3 ]
  %10 = phi ptr [ %20, %19 ], [ null, %3 ]
  %11 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %8) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %8, ptr noundef %0) #16
  %15 = icmp ne ptr %14, %1
  %16 = select i1 %15, ptr %8, ptr %10
  %17 = zext i1 %15 to i32
  %18 = add i32 %9, %17
  br label %19

19:                                               ; preds = %7, %13
  %20 = phi ptr [ %16, %13 ], [ %10, %7 ]
  %21 = phi i32 [ %18, %13 ], [ %9, %7 ]
  %22 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !134

24:                                               ; preds = %19, %3
  %25 = phi ptr [ null, %3 ], [ %20, %19 ]
  %26 = phi i32 [ 0, %3 ], [ %21, %19 ]
  store ptr %25, ptr %2, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !75
  ret i32 %3
}

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !136 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !137 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !138 {
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !94
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !94
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !139 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #17
  ret float %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !39, i64 24}
!37 = !{!"BMEdge", !38, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !43, i64 48, !43, i64 64}
!38 = !{!"BMHeader", !39, i64 0, !42, i64 8, !40, i64 12, !40, i64 13, !40, i64 14}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!44 = !{!37, !39, i64 32}
!45 = distinct !{!45, !35}
!46 = !{!39, !39, i64 0}
!47 = !{!48, !42, i64 36}
!48 = !{!"BMEdgeLoopStore", !39, i64 0, !39, i64 8, !49, i64 16, !42, i64 32, !42, i64 36, !40, i64 40, !40, i64 52}
!49 = !{!"ListBase", !39, i64 0, !39, i64 8}
!50 = distinct !{!50, !35}
!51 = !{!"bmesh_edgeloop.c:BM_iter_new"}
!52 = !{!"bmesh_edgeloop.c:_bm_elem_flag_disable"}
!53 = !{!38, !40, i64 13}
!54 = !{!"bmesh_edgeloop.c:BM_iter_step"}
!55 = !{!56, !39, i64 48}
!56 = !{!"BMIter", !40, i64 0, !39, i64 40, !39, i64 48, !42, i64 56, !40, i64 60}
!57 = !{!"bmesh_edgeloop.c:_bm_elem_flag_enable"}
!58 = !{!"bmesh_edgeloop.c:_bm_elem_flag_test"}
!59 = !{!"bmesh_edgeloop.c:bm_loop_build"}
!60 = !{!61, !39, i64 16}
!61 = !{!"LinkData", !39, i64 0, !39, i64 8, !39, i64 16}
!62 = !{ptr @BLI_addhead, ptr @BLI_addtail}
!63 = !{!48, !42, i64 32}
!64 = distinct !{!64, !35}
!65 = distinct !{!65, !35}
!66 = !{!67, !40, i64 28}
!67 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !40, i64 28, !40, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 136, !68, i64 144, !68, i64 344, !68, i64 544, !68, i64 744, !69, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !49, i64 960, !39, i64 976, !49, i64 984, !39, i64 1000}
!68 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!69 = !{!"short", !40, i64 0}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = !{!73, !39, i64 48}
!73 = !{!"BMVert", !38, i64 0, !39, i64 16, !40, i64 24, !40, i64 36, !39, i64 48}
!74 = !{!"bmesh_edgeloop.c:_bm_elem_index_set"}
!75 = !{!38, !42, i64 8}
!76 = !{!"bmesh_edgeloop.c:vs_add"}
!77 = !{!78, !39, i64 16}
!78 = !{!"VertStep", !39, i64 0, !39, i64 8, !39, i64 16}
!79 = !{!"bmesh_edgeloop.c:bm_loop_path_build_step"}
!80 = !{!49, !39, i64 0}
!81 = !{!78, !39, i64 0}
!82 = distinct !{!82, !35}
!83 = distinct !{!83, !35}
!84 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!85 = !{i8 0, i8 2}
!86 = !{!"bmesh_edgeloop.c:BM_edge_other_vert"}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !35}
!89 = !{!48, !39, i64 24}
!90 = !{!61, !39, i64 8}
!91 = !{!48, !39, i64 16}
!92 = !{!61, !39, i64 0}
!93 = distinct !{!93, !35}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !40, i64 0}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35}
!98 = distinct !{!98, !35}
!99 = !{!49, !39, i64 8}
!100 = distinct !{!100, !35}
!101 = distinct !{!101, !35}
!102 = !{!"bmesh_edgeloop.c:zero_v3"}
!103 = !{!"bmesh_edgeloop.c:add_v3_v3"}
!104 = !{!"bmesh_edgeloop.c:mul_v3_fl"}
!105 = !{!"bmesh_edgeloop.c:len_squared_v3v3"}
!106 = !{!"bmesh_edgeloop.c:sub_v3_v3v3"}
!107 = !{!"bmesh_edgeloop.c:normalize_v3"}
!108 = !{!"bmesh_edgeloop.c:dot_v3v3"}
!109 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46, i64 32, i64 4, !110, i64 36, i64 4, !110, i64 40, i64 12, !111, i64 52, i64 12, !111}
!110 = !{!42, !42, i64 0}
!111 = !{!40, !40, i64 0}
!112 = distinct !{!112, !35}
!113 = distinct !{!113, !35}
!114 = !{!"bmesh_edgeloop.c:len_v3v3"}
!115 = !{!"bmesh_edgeloop.c:madd_v3_v3fl"}
!116 = !{!"bmesh_edgeloop.c:add_newell_cross_v3_v3v3"}
!117 = !{!"bmesh_edgeloop.c:cross_v3_v3v3"}
!118 = !{!"bmesh_edgeloop.c:negate_v3"}
!119 = distinct !{!119, !35}
!120 = distinct !{!120, !35}
!121 = distinct !{!121, !35}
!122 = distinct !{!122, !35}
!123 = !{!"bmesh_edgeloop.c:max_ii"}
!124 = distinct !{!124, !35}
!125 = distinct !{!125, !35}
!126 = distinct !{!126, !35}
!127 = !{!"bmesh_edgeloop.c:BM_iter_init"}
!128 = !{!56, !40, i64 60}
!129 = !{!56, !39, i64 40}
!130 = !{!67, !39, i64 32}
!131 = !{!67, !39, i64 40}
!132 = !{!67, !39, i64 56}
!133 = !{!"bmesh_edgeloop.c:bm_vert_other_tag"}
!134 = distinct !{!134, !35}
!135 = !{!"bmesh_edgeloop.c:_bm_elem_index_get"}
!136 = !{!"bmesh_edgeloop.c:BLI_listbase_is_empty"}
!137 = !{!"bmesh_edgeloop.c:normalize_v3_v3"}
!138 = !{!"bmesh_edgeloop.c:mul_v3_v3fl"}
!139 = !{!"bmesh_edgeloop.c:len_v3"}
