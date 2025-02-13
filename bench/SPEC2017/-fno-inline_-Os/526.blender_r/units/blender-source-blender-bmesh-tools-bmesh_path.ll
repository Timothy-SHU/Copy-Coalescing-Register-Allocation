; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_path.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_calc_path_vert = private unnamed_addr constant [23 x i8] c"BM_mesh_calc_path_vert\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"SeamPathPrevious\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SeamPathCost\00", align 1
@__func__.BM_mesh_calc_path_face = private unnamed_addr constant [23 x i8] c"BM_mesh_calc_path_face\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_mesh_calc_path_vert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %6 ]
  %13 = phi i32 [ %20, %18 ], [ 0, %6 ]
  %14 = call zeroext i8 %5(ptr noundef nonnull %12, ptr noundef %4) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %12) #12
  br label %18

17:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %12) #12
  br label %18

18:                                               ; preds = %17, %16
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %12, i32 noundef %13) #12
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #12
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %11, !llvm.loop !38

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %24 = load i8, ptr %23, align 4, !tbaa !40
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4, !tbaa !40
  %26 = load i32, ptr %0, align 8, !tbaa !46
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = sext i32 %26 to i64
  %29 = shl nsw i64 %28, 3
  %30 = call ptr %27(i64 noundef %29, ptr noundef nonnull @__func__.BM_mesh_calc_path_vert) #13
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %32 = shl nsw i64 %28, 2
  %33 = call ptr %31(i64 noundef %32, ptr noundef nonnull @__func__.BM_mesh_calc_path_vert) #13
  call void @fill_vn_fl(ptr noundef %33, i32 noundef %26, float noundef 0x4415AF1D80000000) #13
  %34 = call ptr @BLI_heap_new() #13
  %35 = call ptr @BLI_heap_insert(ptr noundef %34, float noundef 0.000000e+00, ptr noundef %1) #13
  %36 = call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #12
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %33, i64 %37
  store float 0.000000e+00, ptr %38, align 4, !tbaa !47
  %39 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %34) #13
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %22, %48
  %42 = call ptr @BLI_heap_popmin(ptr noundef %34) #13
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %42) #12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call fastcc void @_bm_elem_flag_enable(ptr noundef %42) #12
  call fastcc void @verttag_add_adjacent(ptr noundef %34, ptr noundef %42, ptr noundef %30, ptr noundef %33, i8 noundef zeroext %3) #12
  br label %48

48:                                               ; preds = %47, %44
  %49 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %34) #13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %41, label %51, !llvm.loop !49

51:                                               ; preds = %48, %22
  %52 = phi ptr [ null, %22 ], [ %42, %48 ]
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %62

54:                                               ; preds = %41, %51
  br label %55

55:                                               ; preds = %54, %55
  %56 = phi ptr [ %60, %55 ], [ %2, %54 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %7, ptr noundef %56) #13
  %57 = call fastcc i32 @_bm_elem_index_get(ptr noundef %56) #12
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %30, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %55, !llvm.loop !50

62:                                               ; preds = %55, %51
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %63(ptr noundef %30) #13
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %64(ptr noundef %33) #13
  call void @BLI_heap_free(ptr noundef %34, ptr noundef null) #13
  %65 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret ptr %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !51 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #12
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !52 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !55 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_heap_new() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !57
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verttag_add_adjacent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !63 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #12
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef %1) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %5
  %11 = icmp eq i8 %4, 0
  %12 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds float, ptr %3, i64 %13
  br label %15

15:                                               ; preds = %10, %36
  %16 = phi ptr [ %8, %10 ], [ %37, %36 ]
  %17 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %16, ptr noundef %1) #12
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %17) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = call fastcc i32 @_bm_elem_index_get(ptr noundef %17) #12
  br i1 %11, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %24 = call fastcc float @len_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %23) #12
  br label %25

25:                                               ; preds = %20, %22
  %26 = phi float [ %24, %22 ], [ 1.000000e+00, %20 ]
  %27 = load float, ptr %14, align 4, !tbaa !47
  %28 = fadd float %26, %27
  %29 = sext i32 %21 to i64
  %30 = getelementptr inbounds float, ptr %3, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !47
  %32 = fcmp ogt float %31, %28
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  store float %28, ptr %30, align 4, !tbaa !47
  %34 = getelementptr inbounds ptr, ptr %2, i64 %29
  store ptr %1, ptr %34, align 8, !tbaa !34
  %35 = call ptr @BLI_heap_insert(ptr noundef %0, float noundef %28, ptr noundef %17) #13
  br label %36

36:                                               ; preds = %25, %33, %15
  %37 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %15, !llvm.loop !64

39:                                               ; preds = %36, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_mesh_calc_path_edge(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #13
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %6 ]
  %13 = phi i32 [ %20, %18 ], [ 0, %6 ]
  %14 = call zeroext i8 %5(ptr noundef nonnull %12, ptr noundef %4) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %12) #12
  br label %18

17:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %12) #12
  br label %18

18:                                               ; preds = %17, %16
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %12, i32 noundef %13) #12
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #12
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %11, !llvm.loop !65

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %24 = load i8, ptr %23, align 4, !tbaa !40
  %25 = and i8 %24, -3
  store i8 %25, ptr %23, align 4, !tbaa !40
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = sext i32 %27 to i64
  %30 = shl nsw i64 %29, 3
  %31 = call ptr %28(i64 noundef %30, ptr noundef nonnull @.str) #13
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %33 = shl nsw i64 %29, 2
  %34 = call ptr %32(i64 noundef %33, ptr noundef nonnull @.str.1) #13
  call void @fill_vn_fl(ptr noundef %34, i32 noundef %27, float noundef 0x4415AF1D80000000) #13
  %35 = call ptr @BLI_heap_new() #13
  %36 = call ptr @BLI_heap_insert(ptr noundef %35, float noundef 0.000000e+00, ptr noundef %1) #13
  %37 = call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #12
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, ptr %34, i64 %38
  store float 0.000000e+00, ptr %39, align 4, !tbaa !47
  %40 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %35) #13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %22, %49
  %43 = call ptr @BLI_heap_popmin(ptr noundef %35) #13
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %43) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call fastcc void @_bm_elem_flag_enable(ptr noundef %43) #12
  call fastcc void @edgetag_add_adjacent(ptr noundef %35, ptr noundef %43, ptr noundef %31, ptr noundef %34, i8 noundef zeroext %3) #12
  br label %49

49:                                               ; preds = %48, %45
  %50 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %35) #13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %42, label %52, !llvm.loop !67

52:                                               ; preds = %49, %22
  %53 = phi ptr [ null, %22 ], [ %43, %49 ]
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %63

55:                                               ; preds = %42, %52
  br label %56

56:                                               ; preds = %55, %56
  %57 = phi ptr [ %61, %56 ], [ %2, %55 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %7, ptr noundef %57) #13
  %58 = call fastcc i32 @_bm_elem_index_get(ptr noundef %57) #12
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %31, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %56, !llvm.loop !68

63:                                               ; preds = %56, %52
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %64(ptr noundef %31) #13
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %65(ptr noundef %34) #13
  call void @BLI_heap_free(ptr noundef %35, ptr noundef null) #13
  %66 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret ptr %66
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgetag_add_adjacent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !69 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %8 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #12
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 7, ptr noundef %1) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %5
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = icmp eq i8 %4, 0
  %15 = getelementptr inbounds float, ptr %3, i64 %12
  br label %16

16:                                               ; preds = %11, %48
  %17 = phi ptr [ %9, %11 ], [ %49, %48 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef nonnull %18, ptr noundef nonnull %17) #12, !range !70
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20, %16
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %17) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %23, %45
  %27 = phi ptr [ %46, %45 ], [ %24, %23 ]
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27) #12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %27) #12
  br i1 %14, label %34, label %32

32:                                               ; preds = %30
  %33 = call fastcc float @edgetag_cut_cost(ptr noundef %1, ptr noundef nonnull %27, ptr noundef nonnull %17) #12
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi float [ %33, %32 ], [ 1.000000e+00, %30 ]
  %36 = load float, ptr %15, align 4, !tbaa !47
  %37 = fadd float %35, %36
  %38 = sext i32 %31 to i64
  %39 = getelementptr inbounds float, ptr %3, i64 %38
  %40 = load float, ptr %39, align 4, !tbaa !47
  %41 = fcmp ogt float %40, %37
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  store float %37, ptr %39, align 4, !tbaa !47
  %43 = getelementptr inbounds ptr, ptr %2, i64 %38
  store ptr %1, ptr %43, align 8, !tbaa !34
  %44 = call ptr @BLI_heap_insert(ptr noundef %0, float noundef %37, ptr noundef nonnull %27) #13
  br label %45

45:                                               ; preds = %34, %42, %26
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %26, !llvm.loop !71

48:                                               ; preds = %45, %23, %20
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %16, !llvm.loop !72

51:                                               ; preds = %48, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_mesh_calc_path_face(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %6 ]
  %13 = phi i32 [ %20, %18 ], [ 0, %6 ]
  %14 = call zeroext i8 %5(ptr noundef nonnull %12, ptr noundef %4) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %12) #12
  br label %18

17:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %12) #12
  br label %18

18:                                               ; preds = %17, %16
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %12, i32 noundef %13) #12
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #12
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %11, !llvm.loop !73

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %24 = load i8, ptr %23, align 4, !tbaa !40
  %25 = and i8 %24, -9
  store i8 %25, ptr %23, align 4, !tbaa !40
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = sext i32 %27 to i64
  %30 = shl nsw i64 %29, 3
  %31 = call ptr %28(i64 noundef %30, ptr noundef nonnull @__func__.BM_mesh_calc_path_face) #13
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %33 = shl nsw i64 %29, 2
  %34 = call ptr %32(i64 noundef %33, ptr noundef nonnull @__func__.BM_mesh_calc_path_face) #13
  call void @fill_vn_fl(ptr noundef %34, i32 noundef %27, float noundef 0x4415AF1D80000000) #13
  %35 = call ptr @BLI_heap_new() #13
  %36 = call ptr @BLI_heap_insert(ptr noundef %35, float noundef 0.000000e+00, ptr noundef %1) #13
  %37 = call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #12
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, ptr %34, i64 %38
  store float 0.000000e+00, ptr %39, align 4, !tbaa !47
  %40 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %35) #13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %22, %49
  %43 = call ptr @BLI_heap_popmin(ptr noundef %35) #13
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %43) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call fastcc void @_bm_elem_flag_enable(ptr noundef %43) #12
  call fastcc void @facetag_add_adjacent(ptr noundef %35, ptr noundef %43, ptr noundef %31, ptr noundef %34, i8 noundef zeroext %3) #12
  br label %49

49:                                               ; preds = %48, %45
  %50 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %35) #13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %42, label %52, !llvm.loop !75

52:                                               ; preds = %49, %22
  %53 = phi ptr [ null, %22 ], [ %43, %49 ]
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %63

55:                                               ; preds = %42, %52
  br label %56

56:                                               ; preds = %55, %56
  %57 = phi ptr [ %61, %56 ], [ %2, %55 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %7, ptr noundef %57) #13
  %58 = call fastcc i32 @_bm_elem_index_get(ptr noundef %57) #12
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %31, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %56, !llvm.loop !76

63:                                               ; preds = %56, %52
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %64(ptr noundef %31) #13
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %65(ptr noundef %34) #13
  call void @BLI_heap_free(ptr noundef %35, ptr noundef null) #13
  %66 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @facetag_add_adjacent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !77 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #12
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = icmp eq i8 %4, 0
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds float, ptr %3, i64 %12
  br label %14

14:                                               ; preds = %10, %43
  %15 = phi ptr [ %8, %10 ], [ %44, %43 ]
  br label %16

16:                                               ; preds = %14, %39
  %17 = phi ptr [ %41, %39 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %19) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = call fastcc i32 @_bm_elem_index_get(ptr noundef %19) #12
  br i1 %11, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = call fastcc float @facetag_cut_cost(ptr noundef %1, ptr noundef %19, ptr noundef %26) #12
  br label %28

28:                                               ; preds = %22, %24
  %29 = phi float [ %27, %24 ], [ 1.000000e+00, %22 ]
  %30 = load float, ptr %13, align 4, !tbaa !47
  %31 = fadd float %29, %30
  %32 = sext i32 %23 to i64
  %33 = getelementptr inbounds float, ptr %3, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !47
  %35 = fcmp ogt float %34, %31
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  store float %31, ptr %33, align 4, !tbaa !47
  %37 = getelementptr inbounds ptr, ptr %2, i64 %32
  store ptr %1, ptr %37, align 8, !tbaa !34
  %38 = call ptr @BLI_heap_insert(ptr noundef %0, float noundef %31, ptr noundef %19) #13
  br label %39

39:                                               ; preds = %28, %36, %16
  %40 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = icmp eq ptr %41, %15
  br i1 %42, label %43, label %16, !llvm.loop !82

43:                                               ; preds = %39
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %14, !llvm.loop !83

46:                                               ; preds = %43, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !84 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !85
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !59
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !59
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !59
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !59
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !59
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !59
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !59
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !86
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !59
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !90
  tail call void %28(ptr noundef nonnull %0) #13
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

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !91 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !96 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !97 {
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = load float, ptr %2, align 4, !tbaa !47
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !98 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #12
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !99 {
  %3 = load float, ptr %0, align 4, !tbaa !47
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @edgetag_cut_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #9 !PGOFuncName !101 {
  %4 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %0, ptr noundef %2) #12
  %5 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %1, ptr noundef %2) #12
  %6 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %9 = tail call fastcc float @step_cost_3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @step_cost_3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !102 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1) #12
  %6 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #12
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #12
  %8 = fadd float %6, %7
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = tail call float @llvm.sqrt.f32(float %10)
  %12 = fsub float 2.000000e+00, %11
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 5.000000e-01, float 1.000000e+00)
  %14 = fmul float %8, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret float %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !103 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !104 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !105 {
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !47
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !106 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !47
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @facetag_cut_cost(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !107 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @BM_face_calc_center_mean(ptr noundef %0, ptr noundef nonnull %4) #13
  call void @BM_face_calc_center_mean(ptr noundef %1, ptr noundef nonnull %5) #13
  %7 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %12) #13
  %13 = call fastcc float @step_cost_3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret float %13
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }

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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !36, i64 28}
!41 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !42, i64 128, !35, i64 136, !43, i64 144, !43, i64 344, !43, i64 544, !43, i64 744, !44, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !45, i64 960, !35, i64 976, !45, i64 984, !35, i64 1000}
!42 = !{!"int", !36, i64 0}
!43 = !{!"CustomData", !35, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!44 = !{!"short", !36, i64 0}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{!41, !42, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !36, i64 0}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = !{!"bmesh_path.c:BM_iter_new"}
!52 = !{!"bmesh_path.c:_bm_elem_flag_disable"}
!53 = !{!54, !36, i64 13}
!54 = !{!"BMHeader", !35, i64 0, !42, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!55 = !{!"bmesh_path.c:_bm_elem_flag_enable"}
!56 = !{!"bmesh_path.c:_bm_elem_index_set"}
!57 = !{!54, !42, i64 8}
!58 = !{!"bmesh_path.c:BM_iter_step"}
!59 = !{!60, !35, i64 48}
!60 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !42, i64 56, !36, i64 60}
!61 = !{!"bmesh_path.c:_bm_elem_index_get"}
!62 = !{!"bmesh_path.c:_bm_elem_flag_test"}
!63 = !{!"bmesh_path.c:verttag_add_adjacent"}
!64 = distinct !{!64, !39}
!65 = distinct !{!65, !39}
!66 = !{!41, !42, i64 4}
!67 = distinct !{!67, !39}
!68 = distinct !{!68, !39}
!69 = !{!"bmesh_path.c:edgetag_add_adjacent"}
!70 = !{i8 0, i8 2}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = !{!41, !42, i64 12}
!75 = distinct !{!75, !39}
!76 = distinct !{!76, !39}
!77 = !{!"bmesh_path.c:facetag_add_adjacent"}
!78 = !{!79, !35, i64 32}
!79 = !{!"BMLoop", !54, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!80 = !{!79, !35, i64 24}
!81 = !{!79, !35, i64 40}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = !{!"bmesh_path.c:BM_iter_init"}
!85 = !{!60, !36, i64 60}
!86 = !{!60, !35, i64 40}
!87 = !{!41, !35, i64 32}
!88 = !{!41, !35, i64 40}
!89 = !{!41, !35, i64 56}
!90 = !{!36, !36, i64 0}
!91 = !{!"bmesh_path.c:BM_edge_other_vert"}
!92 = !{!93, !35, i64 24}
!93 = !{!"BMEdge", !54, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !94, i64 48, !94, i64 64}
!94 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!95 = !{!93, !35, i64 32}
!96 = !{!"bmesh_path.c:len_v3v3"}
!97 = !{!"bmesh_path.c:sub_v3_v3v3"}
!98 = !{!"bmesh_path.c:len_v3"}
!99 = !{!"bmesh_path.c:dot_v3v3"}
!100 = !{!"bmesh_path.c:BM_vert_in_edge"}
!101 = !{!"bmesh_path.c:edgetag_cut_cost"}
!102 = !{!"bmesh_path.c:step_cost_3_v3"}
!103 = !{!"bmesh_path.c:normalize_v3"}
!104 = !{!"bmesh_path.c:normalize_v3_v3"}
!105 = !{!"bmesh_path.c:mul_v3_v3fl"}
!106 = !{!"bmesh_path.c:zero_v3"}
!107 = !{!"bmesh_path.c:facetag_cut_cost"}
