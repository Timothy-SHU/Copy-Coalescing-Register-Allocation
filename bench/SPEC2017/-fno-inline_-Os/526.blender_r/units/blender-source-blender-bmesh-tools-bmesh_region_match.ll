; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_region_match.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_region_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.UUIDWalk = type { %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i8, i64, %struct.anon }
%struct.ListBase = type { ptr, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.UUIDFaceStep = type { ptr, ptr, ptr, %struct.ListBase }
%struct.UUIDFaceStepItem = type { ptr, ptr, i64, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }

@__func__.bm_face_region_pivot_edge_find = private unnamed_addr constant [31 x i8] c"bm_face_region_pivot_edge_find\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_vert_fasthash_create = private unnamed_addr constant [24 x i8] c"bm_vert_fasthash_create\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.bm_uuidwalk_init = private unnamed_addr constant [17 x i8] c"bm_uuidwalk_init\00", align 1
@__func__.bm_mesh_region_match_pair = private unnamed_addr constant [26 x i8] c"bm_mesh_region_match_pair\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.bm_uuidwalk_rehash_reserve = private unnamed_addr constant [27 x i8] c"bm_uuidwalk_rehash_reserve\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_mesh_region_match(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.UUIDWalk, align 8
  %9 = alloca %struct.UUIDWalk, align 8
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #15
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #16
  call fastcc void @bm_face_array_visit(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 9) #16
  %11 = load i32, ptr %6, align 4, !tbaa !34
  %12 = call fastcc ptr @bm_face_region_pivot_edge_find(ptr noundef %1, i32 noundef %2, i32 noundef %11, ptr noundef nonnull %7) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %4
  call fastcc void @BLI_listbase_clear(ptr noundef %3) #17
  %15 = load i32, ptr %7, align 4, !tbaa !34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call fastcc ptr @bm_vert_fasthash_create(ptr noundef %0, i32 noundef %15) #17
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = load i32, ptr %6, align 4, !tbaa !34
  call fastcc void @bm_uuidwalk_init(ptr noundef nonnull %8, i32 noundef %2, i32 noundef %21) #17
  %22 = load i32, ptr %6, align 4, !tbaa !34
  call fastcc void @bm_uuidwalk_init(ptr noundef nonnull %9, i32 noundef %2, i32 noundef %22) #17
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = icmp eq ptr %20, null
  br label %27

27:                                               ; preds = %25, %44
  %28 = phi ptr [ %23, %25 ], [ %46, %44 ]
  %29 = phi i32 [ 0, %25 ], [ %45, %44 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %28) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  br i1 %26, label %36, label %33

33:                                               ; preds = %32
  %34 = call fastcc zeroext i8 @bm_vert_fasthash_edge_is_match(ptr noundef nonnull %20, ptr noundef nonnull %12, ptr noundef nonnull %28) #17, !range !38
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33, %32
  %37 = load i32, ptr %6, align 4, !tbaa !34
  %38 = call fastcc ptr @bm_mesh_region_match_pair(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %28, i32 noundef %2, i32 noundef %37, ptr noundef nonnull %10) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %10, align 4, !tbaa !34
  call fastcc void @bm_face_array_visit(ptr noundef nonnull %38, i32 noundef %41, ptr noundef null, i8 noundef zeroext 0) #17
  %42 = call ptr @BLI_genericNodeN(ptr noundef nonnull %38) #16
  call void @BLI_addtail(ptr noundef %3, ptr noundef %42) #16
  %43 = add i32 %29, 1
  br label %44

44:                                               ; preds = %36, %40, %33, %27
  %45 = phi i32 [ %29, %27 ], [ %29, %33 ], [ %43, %40 ], [ %29, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %27, !llvm.loop !39

48:                                               ; preds = %44, %19
  %49 = phi i32 [ 0, %19 ], [ %45, %44 ]
  call fastcc void @bm_uuidwalk_free(ptr noundef nonnull %8) #17
  call fastcc void @bm_uuidwalk_free(ptr noundef nonnull %9) #17
  %50 = icmp eq ptr %20, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call fastcc void @bm_vert_fasthash_destroy(ptr noundef nonnull %20) #17
  br label %52

52:                                               ; preds = %48, %51, %4
  %53 = phi i32 [ 0, %4 ], [ %49, %51 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_face_array_visit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, i8 noundef zeroext %3) unnamed_addr #3 !PGOFuncName !41 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  %8 = icmp eq i8 %3, 0
  %9 = zext i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %38
  %11 = phi i64 [ 0, %6 ], [ %39, %38 ]
  %12 = phi i32 [ 0, %6 ], [ %28, %38 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  br label %17

17:                                               ; preds = %27, %10
  %18 = phi ptr [ %16, %10 ], [ %34, %27 ]
  %19 = phi i32 [ %12, %10 ], [ %28, %27 ]
  br i1 %7, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %22) #17
  %24 = icmp eq i8 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add i32 %19, %25
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %26, %20 ]
  %29 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %30) #17
  %31 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %32) #17
  %33 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = icmp eq ptr %34, %16
  br i1 %35, label %36, label %17, !llvm.loop !52

36:                                               ; preds = %27
  br i1 %8, label %38, label %37

37:                                               ; preds = %36
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %14) #17
  br label %38

38:                                               ; preds = %37, %36
  %39 = add nuw nsw i64 %11, 1
  %40 = icmp eq i64 %39, %9
  br i1 %40, label %41, label %10, !llvm.loop !53

41:                                               ; preds = %38, %4
  %42 = phi i32 [ 0, %4 ], [ %28, %38 ]
  %43 = icmp eq ptr %2, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 %42, ptr %2, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_face_region_pivot_edge_find(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !54 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %14 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_face_region_pivot_edge_find) #16
  store ptr null, ptr %5, align 8, !tbaa !42
  %15 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #16
  store ptr null, ptr %6, align 8, !tbaa !42
  %16 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #16
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = zext i32 %1 to i64
  br label %23

20:                                               ; preds = %64, %4
  %21 = phi i32 [ 0, %4 ], [ %59, %64 ]
  %22 = phi ptr [ null, %4 ], [ %60, %64 ]
  br label %67

23:                                               ; preds = %18, %64
  %24 = phi i64 [ 0, %18 ], [ %65, %64 ]
  %25 = phi ptr [ null, %18 ], [ %60, %64 ]
  %26 = phi i32 [ 0, %18 ], [ %59, %64 ]
  %27 = getelementptr inbounds ptr, ptr %0, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  br label %31

31:                                               ; preds = %58, %23
  %32 = phi ptr [ %30, %23 ], [ %62, %58 ]
  %33 = phi i32 [ %26, %23 ], [ %59, %58 ]
  %34 = phi ptr [ %25, %23 ], [ %60, %58 ]
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = call fastcc zeroext i8 @bm_edge_is_region_boundary(ptr noundef %36) #17, !range !38
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 2
  br label %41

41:                                               ; preds = %39, %56
  %42 = phi i1 [ true, %39 ], [ false, %56 ]
  %43 = phi i64 [ 0, %39 ], [ 1, %56 ]
  %44 = phi i32 [ %33, %39 ], [ %57, %56 ]
  %45 = getelementptr inbounds ptr, ptr %40, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %14, ptr noundef %46) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load ptr, ptr %45, align 8, !tbaa !55
  %51 = call fastcc i64 @bm_face_region_vert_boundary_id(ptr noundef %50) #17, !range !58
  %52 = load ptr, ptr %45, align 8, !tbaa !55
  %53 = inttoptr i64 %51 to ptr
  call void @BLI_ghash_insert(ptr noundef %14, ptr noundef %52, ptr noundef nonnull %53) #16
  %54 = load ptr, ptr %45, align 8, !tbaa !55
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %5, ptr noundef %54, ptr noundef %15) #16
  %55 = add i32 %44, 1
  br label %56

56:                                               ; preds = %41, %49
  %57 = phi i32 [ %44, %41 ], [ %55, %49 ]
  br i1 %42, label %41, label %58, !llvm.loop !59

58:                                               ; preds = %56, %31
  %59 = phi i32 [ %33, %31 ], [ %57, %56 ]
  %60 = phi ptr [ %36, %31 ], [ %34, %56 ]
  %61 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !51
  %63 = icmp eq ptr %62, %30
  br i1 %63, label %64, label %31, !llvm.loop !60

64:                                               ; preds = %58
  %65 = add nuw nsw i64 %24, 1
  %66 = icmp eq i64 %65, %19
  br i1 %66, label %20, label %23, !llvm.loop !61

67:                                               ; preds = %20, %124
  %68 = phi i32 [ %82, %124 ], [ %21, %20 ]
  %69 = phi i32 [ %127, %124 ], [ 0, %20 ]
  %70 = phi ptr [ %71, %124 ], [ %16, %20 ]
  %71 = phi ptr [ %70, %124 ], [ %15, %20 ]
  %72 = call i32 @BLI_mempool_count(ptr noundef %71) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %129, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 8, !tbaa !42
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74, %109
  %78 = phi i32 [ %110, %109 ], [ %68, %74 ]
  %79 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %5, ptr noundef %71) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %109, %74
  %82 = phi i32 [ %68, %74 ], [ %78, %77 ], [ %110, %109 ]
  %83 = load ptr, ptr %6, align 8, !tbaa !42
  %84 = icmp eq ptr %83, null
  br i1 %84, label %124, label %113

85:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %86 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %79) #17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %109, label %88

88:                                               ; preds = %85, %105
  %89 = phi i32 [ %106, %105 ], [ %78, %85 ]
  %90 = phi ptr [ %107, %105 ], [ %86, %85 ]
  %91 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %90) #17
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %90, ptr noundef nonnull %79) #17
  %95 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %94) #17
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %14, ptr noundef %94) #16
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = call fastcc i64 @bm_face_region_vert_pass_id(ptr noundef %14, ptr noundef %94) #17, !range !58
  %102 = sub nsw i64 0, %101
  %103 = inttoptr i64 %102 to ptr
  call void @BLI_ghash_insert(ptr noundef %14, ptr noundef %94, ptr noundef nonnull %103) #16
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %6, ptr noundef %94, ptr noundef %70) #16
  %104 = add i32 %89, 1
  br label %105

105:                                              ; preds = %93, %100, %97, %88
  %106 = phi i32 [ %89, %88 ], [ %89, %97 ], [ %104, %100 ], [ %89, %93 ]
  %107 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #17
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %88, !llvm.loop !62

109:                                              ; preds = %105, %85
  %110 = phi i32 [ %78, %85 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  %111 = load ptr, ptr %5, align 8, !tbaa !42
  %112 = icmp eq ptr %111, null
  br i1 %112, label %81, label %77, !llvm.loop !63

113:                                              ; preds = %81, %113
  %114 = phi ptr [ %120, %113 ], [ %83, %81 ]
  %115 = getelementptr inbounds %struct.LinkNode, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !64
  %117 = call ptr @BLI_ghash_lookup_p(ptr noundef %14, ptr noundef %116) #16
  %118 = load i64, ptr %117, align 8, !tbaa !66
  %119 = sub nsw i64 0, %118
  store i64 %119, ptr %117, align 8, !tbaa !66
  %120 = load ptr, ptr %114, align 8, !tbaa !42
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %113, !llvm.loop !68

122:                                              ; preds = %113
  %123 = load ptr, ptr %6, align 8, !tbaa !42
  br label %124

124:                                              ; preds = %122, %81
  %125 = phi ptr [ %123, %122 ], [ null, %81 ]
  %126 = load ptr, ptr %5, align 8, !tbaa !42
  store ptr %125, ptr %5, align 8, !tbaa !42
  store ptr %126, ptr %6, align 8, !tbaa !42
  %127 = add i32 %69, 1
  %128 = icmp eq i32 %82, %2
  br i1 %128, label %129, label %67

129:                                              ; preds = %124, %67
  %130 = phi i32 [ %127, %124 ], [ %69, %67 ]
  %131 = phi ptr [ %71, %124 ], [ %70, %67 ]
  %132 = phi ptr [ %70, %124 ], [ %71, %67 ]
  %133 = call i32 @BLI_mempool_count(ptr noundef %132) #16
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %172

135:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store ptr null, ptr %8, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %136 = load ptr, ptr %5, align 8, !tbaa !42
  %137 = icmp eq ptr %136, null
  br i1 %137, label %168, label %141

138:                                              ; preds = %141
  %139 = load ptr, ptr %5, align 8, !tbaa !42
  %140 = icmp eq ptr %139, null
  br i1 %140, label %168, label %147

141:                                              ; preds = %135, %141
  %142 = phi ptr [ %145, %141 ], [ %136, %135 ]
  %143 = getelementptr inbounds %struct.LinkNode, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !64
  call fastcc void @_bm_elem_flag_disable(ptr noundef %144) #17
  %145 = load ptr, ptr %142, align 8, !tbaa !42
  %146 = icmp eq ptr %145, null
  br i1 %146, label %138, label %141, !llvm.loop !69

147:                                              ; preds = %138, %165
  %148 = phi ptr [ %166, %165 ], [ %139, %138 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #15
  %149 = getelementptr inbounds %struct.LinkNode, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !64
  call fastcc void @_bm_elem_flag_enable(ptr noundef %150) #17
  %151 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 4, ptr noundef %150) #17
  %152 = icmp eq ptr %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %147, %162
  %154 = phi ptr [ %163, %162 ], [ %151, %147 ]
  %155 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %154) #17
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %154, ptr noundef %150) #17
  %159 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %158) #17
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  call fastcc void @bm_face_region_pivot_edge_use_best(ptr noundef %14, ptr noundef nonnull %154, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  br label %162

162:                                              ; preds = %157, %161, %153
  %163 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #17
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %153, !llvm.loop !70

165:                                              ; preds = %162, %147
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #15
  %166 = load ptr, ptr %148, align 8, !tbaa !42
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %147, !llvm.loop !71

168:                                              ; preds = %138, %135
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %172

169:                                              ; preds = %165
  %170 = load ptr, ptr %8, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %204

172:                                              ; preds = %168, %129, %169
  %173 = call i32 @BLI_mempool_count(ptr noundef %132) #16
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %204, label %175

175:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store ptr null, ptr %11, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %176 = add i32 %130, -1
  %177 = load ptr, ptr %5, align 8, !tbaa !42
  %178 = icmp eq ptr %177, null
  br i1 %178, label %202, label %179

179:                                              ; preds = %175, %197
  %180 = phi ptr [ %198, %197 ], [ %177, %175 ]
  %181 = getelementptr inbounds %struct.LinkNode, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #15
  %183 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 4, ptr noundef %182) #17
  %184 = icmp eq ptr %183, null
  br i1 %184, label %197, label %185

185:                                              ; preds = %179, %194
  %186 = phi ptr [ %195, %194 ], [ %183, %179 ]
  %187 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %186) #17
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %186, ptr noundef %182) #17
  %191 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %190) #17
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  call fastcc void @bm_face_region_pivot_edge_use_best(ptr noundef %14, ptr noundef nonnull %186, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  br label %194

194:                                              ; preds = %189, %193, %185
  %195 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %13) #17
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %185, !llvm.loop !72

197:                                              ; preds = %194, %179
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #15
  %198 = load ptr, ptr %180, align 8, !tbaa !42
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %179, !llvm.loop !73

200:                                              ; preds = %197
  %201 = load ptr, ptr %11, align 8, !tbaa !42
  br label %202

202:                                              ; preds = %200, %175
  %203 = phi ptr [ %201, %200 ], [ null, %175 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  br label %204

204:                                              ; preds = %202, %172, %169
  %205 = phi i32 [ %176, %202 ], [ %130, %172 ], [ %130, %169 ]
  %206 = phi ptr [ %203, %202 ], [ null, %172 ], [ %170, %169 ]
  call void @BLI_mempool_destroy(ptr noundef %132) #16
  store ptr null, ptr %5, align 8, !tbaa !42
  call void @BLI_mempool_destroy(ptr noundef %131) #16
  store ptr null, ptr %6, align 8, !tbaa !42
  call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #16
  %207 = icmp eq ptr %206, null
  %208 = select i1 %207, ptr %22, ptr %206
  %209 = select i1 %207, i32 0, i32 %205
  store i32 %209, ptr %3, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret ptr %208
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !74 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_vert_fasthash_create(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !75 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %5 = load i32, ptr %0, align 8, !tbaa !76
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call ptr %4(i64 noundef %7, ptr noundef nonnull @__func__.bm_vert_fasthash_create) #16
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %10 = load i32, ptr %0, align 8, !tbaa !76
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.bm_vert_fasthash_create) #16
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %18, %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %63, label %27

18:                                               ; preds = %2, %18
  %19 = phi i32 [ %25, %18 ], [ 0, %2 ]
  %20 = phi ptr [ %24, %18 ], [ %14, %2 ]
  %21 = call fastcc i64 @bm_vert_fasthash_single(ptr noundef nonnull %20) #17
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds i64, ptr %8, i64 %22
  store i64 %21, ptr %23, align 8, !tbaa !66
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %25 = add i32 %19, 1
  %26 = icmp eq ptr %24, null
  br i1 %26, label %16, label %18, !llvm.loop !80

27:                                               ; preds = %16, %60
  %28 = phi i32 [ %61, %60 ], [ 0, %16 ]
  %29 = load i32, ptr %0, align 8, !tbaa !76
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %8, i64 %31, i1 false)
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %27, %57
  %35 = phi ptr [ %58, %57 ], [ %32, %27 ]
  %36 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %35) #17, !range !38
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = call fastcc i32 @_bm_elem_index_get(ptr noundef %40) #17
  %42 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !81
  %44 = call fastcc i32 @_bm_elem_index_get(ptr noundef %43) #17
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %8, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds i64, ptr %13, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !66
  %51 = add i64 %50, %47
  store i64 %51, ptr %49, align 8, !tbaa !66
  %52 = getelementptr inbounds i64, ptr %8, i64 %48
  %53 = load i64, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds i64, ptr %13, i64 %45
  %55 = load i64, ptr %54, align 8, !tbaa !66
  %56 = add i64 %55, %53
  store i64 %56, ptr %54, align 8, !tbaa !66
  br label %57

57:                                               ; preds = %34, %38
  %58 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %34, !llvm.loop !82

60:                                               ; preds = %57, %27
  %61 = add nuw i32 %28, 1
  %62 = icmp eq i32 %61, %1
  br i1 %62, label %63, label %27, !llvm.loop !83

63:                                               ; preds = %60, %16
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %64(ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !84 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #17
  %4 = tail call fastcc ptr @ghash_bmelem_new_ex(i32 noundef %2) #17
  %5 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !85
  %6 = tail call fastcc ptr @ghash_bmelem_new_ex(i32 noundef %1) #17
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !88
  %8 = tail call fastcc ptr @ghash_bmelem_new() #17
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !89
  %10 = tail call fastcc ptr @gset_bmelem_new() #17
  %11 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !90
  %12 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @__func__.bm_uuidwalk_init) #16
  %13 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  store ptr null, ptr %14, align 8, !tbaa !92
  %15 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 4
  store i32 0, ptr %15, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  store i8 0, ptr %16, align 8, !tbaa !94
  %17 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #16
  %18 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !95
  %19 = tail call ptr @BLI_mempool_create(i32 noundef 40, i32 noundef 64, i32 noundef 64, i32 noundef 0) #16
  %20 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !96
  %21 = tail call ptr @BLI_mempool_create(i32 noundef 40, i32 noundef 64, i32 noundef 64, i32 noundef 0) #16
  %22 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !97
  %23 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  store i64 1, ptr %23, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !99 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #17
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !101
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bm_vert_fasthash_edge_is_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !102 {
  %4 = alloca [2 x i64], align 16
  %5 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call fastcc void @bm_vert_fasthash_edge_order(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #17
  call fastcc void @bm_vert_fasthash_edge_order(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5) #17
  %6 = load i64, ptr %4, align 16, !tbaa !66
  %7 = load i64, ptr %5, align 16, !tbaa !66
  %8 = icmp eq i64 %6, %7
  %9 = getelementptr inbounds [2 x i64], ptr %4, i64 0, i64 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %10, %12
  %14 = select i1 %8, i1 %13, i1 false
  %15 = zext i1 %14 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_mesh_region_match_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !103 {
  %8 = alloca %struct.GHashIterator, align 8
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  store i8 1, ptr %9, align 8, !tbaa !94
  %10 = tail call fastcc i32 @bm_uuidwalk_init_from_edge(ptr noundef %0, ptr noundef %2) #17
  %11 = tail call fastcc i32 @bm_uuidwalk_init_from_edge(ptr noundef %1, ptr noundef %3) #17
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %131

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.umax.i32(i32 %4, i32 %5)
  tail call fastcc void @bm_uuidwalk_rehash_reserve(ptr noundef nonnull %0, i32 noundef %14) #17
  tail call fastcc void @bm_uuidwalk_rehash_reserve(ptr noundef %1, i32 noundef %14) #17
  %15 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.UUIDWalk, ptr %1, i64 0, i32 3
  %17 = getelementptr inbounds %struct.UUIDWalk, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %0, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %130, label %20

20:                                               ; preds = %13, %94
  %21 = phi i8 [ %95, %94 ], [ 0, %13 ]
  %22 = phi ptr [ %96, %94 ], [ %18, %13 ]
  %23 = phi ptr [ %97, %94 ], [ %1, %13 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  br label %25

25:                                               ; preds = %20, %31
  %26 = phi ptr [ %22, %20 ], [ %32, %31 ]
  %27 = phi ptr [ %24, %20 ], [ %33, %31 ]
  %28 = getelementptr inbounds %struct.UUIDFaceStep, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load ptr, ptr %26, align 8, !tbaa !107
  %33 = load ptr, ptr %27, align 8, !tbaa !107
  tail call fastcc void @bm_uuidwalk_facestep_free(ptr noundef nonnull %0, ptr noundef nonnull %26) #17
  tail call fastcc void @bm_uuidwalk_facestep_free(ptr noundef nonnull %1, ptr noundef nonnull %27) #17
  %34 = icmp eq ptr %32, null
  br i1 %34, label %98, label %25

35:                                               ; preds = %25
  %36 = tail call fastcc zeroext i8 @bm_uuidwalk_facestep_begin(ptr noundef nonnull %0, ptr noundef nonnull %26) #17, !range !38
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @bm_uuidwalk_facestep_begin(ptr noundef nonnull %1, ptr noundef %27) #17, !range !38
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.UUIDFaceStep, ptr %26, i64 0, i32 3
  %43 = getelementptr inbounds %struct.UUIDFaceStep, ptr %27, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = load ptr, ptr %42, align 8, !tbaa !42
  %46 = icmp ne ptr %45, null
  %47 = icmp ne ptr %44, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %90

49:                                               ; preds = %41, %83
  %50 = phi ptr [ %86, %83 ], [ %45, %41 ]
  %51 = phi ptr [ %85, %83 ], [ %44, %41 ]
  %52 = phi i8 [ %84, %83 ], [ %21, %41 ]
  %53 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %50, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !108
  br label %55

55:                                               ; preds = %49, %60
  %56 = phi ptr [ %51, %49 ], [ %61, %60 ]
  %57 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !108
  %59 = icmp ult i64 %58, %54
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !110
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %55, !llvm.loop !111

63:                                               ; preds = %55
  %64 = icmp eq i64 %54, %58
  br i1 %64, label %65, label %90

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %50, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !112
  %68 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %56, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !112
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %90, label %71

71:                                               ; preds = %65
  %72 = icmp eq i32 %67, %69
  br i1 %72, label %73, label %83

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %50, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !113
  tail call fastcc void @bm_uuidwalk_pass_add(ptr noundef nonnull %0, ptr noundef %75, i32 noundef %67) #17
  %76 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %56, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !113
  %78 = load i32, ptr %68, align 8, !tbaa !112
  tail call fastcc void @bm_uuidwalk_pass_add(ptr noundef nonnull %1, ptr noundef %77, i32 noundef %78) #17
  %79 = load ptr, ptr %74, align 8, !tbaa !113
  %80 = load ptr, ptr %15, align 8, !tbaa !95
  tail call void @BLI_linklist_free_pool(ptr noundef %79, ptr noundef null, ptr noundef %80) #16
  %81 = load ptr, ptr %76, align 8, !tbaa !113
  %82 = load ptr, ptr %16, align 8, !tbaa !95
  tail call void @BLI_linklist_free_pool(ptr noundef %81, ptr noundef null, ptr noundef %82) #16
  store ptr null, ptr %74, align 8, !tbaa !113
  store i32 0, ptr %66, align 8, !tbaa !112
  store ptr null, ptr %76, align 8, !tbaa !113
  store i32 0, ptr %68, align 8, !tbaa !112
  br label %83

83:                                               ; preds = %71, %73
  %84 = phi i8 [ 1, %73 ], [ %52, %71 ]
  %85 = load ptr, ptr %56, align 8, !tbaa !42
  %86 = load ptr, ptr %50, align 8, !tbaa !42
  %87 = icmp ne ptr %86, null
  %88 = icmp ne ptr %85, null
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %49, label %90, !llvm.loop !114

90:                                               ; preds = %63, %65, %83, %60, %41, %38, %35
  %91 = phi i8 [ %21, %38 ], [ %21, %35 ], [ %21, %41 ], [ 0, %60 ], [ 0, %63 ], [ 0, %65 ], [ %84, %83 ]
  tail call fastcc void @bm_uuidwalk_facestep_end(ptr noundef nonnull %0, ptr noundef nonnull %26) #17
  tail call fastcc void @bm_uuidwalk_facestep_end(ptr noundef nonnull %1, ptr noundef %27) #17
  %92 = load ptr, ptr %26, align 8, !tbaa !107
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90, %105
  %95 = phi i8 [ %91, %90 ], [ 0, %105 ]
  %96 = phi ptr [ %92, %90 ], [ %106, %105 ]
  %97 = phi ptr [ %27, %90 ], [ %1, %105 ]
  br label %20, !llvm.loop !115

98:                                               ; preds = %31, %90
  %99 = phi i8 [ %91, %90 ], [ %21, %31 ]
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %130, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %17, align 8, !tbaa !88
  %103 = tail call i32 @BLI_ghash_size(ptr noundef %102) #16
  %104 = icmp eq i32 %103, %4
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  tail call fastcc void @bm_uuidwalk_rehash(ptr noundef nonnull %0) #17
  tail call fastcc void @bm_uuidwalk_rehash(ptr noundef nonnull %1) #17
  %106 = load ptr, ptr %0, align 8, !tbaa !104
  %107 = icmp eq ptr %106, null
  br i1 %107, label %130, label %94

108:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  %109 = load ptr, ptr %17, align 8, !tbaa !88
  %110 = tail call i32 @BLI_ghash_size(ptr noundef %109) #16
  %111 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %112 = add i32 %110, 1
  %113 = zext i32 %112 to i64
  %114 = shl nuw nsw i64 %113, 3
  %115 = tail call ptr %111(i64 noundef %114, ptr noundef nonnull @__func__.bm_mesh_region_match_pair) #16
  %116 = load ptr, ptr %17, align 8, !tbaa !88
  call void @BLI_ghashIterator_init(ptr noundef nonnull %8, ptr noundef %116) #16
  %117 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %8) #17, !range !38
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %108, %119
  %120 = phi i32 [ %124, %119 ], [ 0, %108 ]
  %121 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %8) #17
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds ptr, ptr %115, i64 %122
  store ptr %121, ptr %123, align 8, !tbaa !42
  call void @BLI_ghashIterator_step(ptr noundef nonnull %8) #16
  %124 = add i32 %120, 1
  %125 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %8) #17, !range !38
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %119, label %127, !llvm.loop !116

127:                                              ; preds = %119, %108
  %128 = zext i32 %110 to i64
  %129 = getelementptr inbounds ptr, ptr %115, i64 %128
  store ptr null, ptr %129, align 8, !tbaa !42
  store i32 %110, ptr %6, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  br label %131

130:                                              ; preds = %98, %105, %13
  store i32 0, ptr %6, align 4, !tbaa !34
  br label %131

131:                                              ; preds = %127, %130, %7
  %132 = phi ptr [ null, %7 ], [ %115, %127 ], [ null, %130 ]
  call fastcc void @bm_uuidwalk_clear(ptr noundef %0) #17
  call fastcc void @bm_uuidwalk_clear(ptr noundef %1) #17
  ret ptr %132
}

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = tail call ptr %3(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #16
  %4 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  tail call void @BLI_ghash_free(ptr noundef %5, ptr noundef null, ptr noundef null) #16
  %6 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  tail call void @BLI_ghash_free(ptr noundef %7, ptr noundef null, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  tail call void @BLI_gset_free(ptr noundef %9, ptr noundef null) #16
  %10 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  tail call void @BLI_ghash_free(ptr noundef %11, ptr noundef null, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %16(ptr noundef nonnull %13) #16
  store ptr null, ptr %12, align 8, !tbaa !92
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  tail call void @BLI_mempool_destroy(ptr noundef %19) #16
  %20 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  tail call void @BLI_mempool_destroy(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  tail call void @BLI_mempool_destroy(ptr noundef %23) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_vert_fasthash_destroy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !121 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %2(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !101
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bm_edge_is_region_boundary(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !123 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !125
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %17, label %7

7:                                                ; preds = %1, %13
  %8 = phi ptr [ %15, %13 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %7, !llvm.loop !127

17:                                               ; preds = %7, %13, %1
  %18 = phi i8 [ 1, %1 ], [ 0, %13 ], [ 1, %7 ]
  ret i8 %18
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bm_face_region_vert_boundary_id(ptr noundef %0) unnamed_addr #0 !PGOFuncName !128 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 6, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1, %21
  %6 = phi i32 [ %30, %21 ], [ 0, %1 ]
  %7 = phi i64 [ %29, %21 ], [ 103, %1 ]
  %8 = phi ptr [ %31, %21 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = call fastcc zeroext i8 @bm_edge_is_region_boundary(ptr noundef %10) #17, !range !38
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = call fastcc zeroext i8 @bm_edge_is_region_boundary(ptr noundef %17) #17, !range !38
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 13, i32 7
  br label %21

21:                                               ; preds = %5, %13
  %22 = phi i32 [ %20, %13 ], [ 7, %5 ]
  %23 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !126
  %25 = getelementptr inbounds %struct.BMFace, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !130
  %27 = mul nsw i32 %26, %22
  %28 = sext i32 %27 to i64
  %29 = xor i64 %7, %28
  %30 = add nuw nsw i32 %6, 1
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5, !llvm.loop !131

33:                                               ; preds = %21
  %34 = mul nsw i32 %30, 131
  %35 = zext nneg i32 %34 to i64
  %36 = xor i64 %29, %35
  %37 = freeze i64 %36
  %38 = icmp eq i64 %37, 0
  %39 = call i64 @llvm.abs.i64(i64 %37, i1 true)
  %40 = select i1 %38, i64 1, i64 %39
  br label %41

41:                                               ; preds = %33, %1
  %42 = phi i64 [ 103, %1 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  ret i64 %42
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bm_face_region_vert_pass_id(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !133 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %2, %44
  %7 = phi ptr [ %48, %44 ], [ %4, %2 ]
  %8 = phi i64 [ %47, %44 ], [ 0, %2 ]
  %9 = phi i64 [ %46, %44 ], [ 0, %2 ]
  %10 = phi i64 [ %45, %44 ], [ 0, %2 ]
  %11 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %6
  %14 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %7, ptr noundef %1) #17
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %14) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %14) #16
  %19 = icmp sgt ptr %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = ptrtoint ptr %18 to i64
  %22 = add nsw i64 %10, %21
  %23 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  br label %25

25:                                               ; preds = %37, %20
  %26 = phi i64 [ %9, %20 ], [ %38, %37 ]
  %27 = phi ptr [ %24, %20 ], [ %40, %37 ]
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %29) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !130
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %26, %35
  br label %37

37:                                               ; preds = %25, %32
  %38 = phi i64 [ %36, %32 ], [ %26, %25 ]
  %39 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  %41 = icmp eq ptr %40, %24
  br i1 %41, label %42, label %25, !llvm.loop !134

42:                                               ; preds = %37
  %43 = add nsw i64 %8, 1
  br label %44

44:                                               ; preds = %42, %13, %17, %6
  %45 = phi i64 [ %10, %6 ], [ %10, %13 ], [ %10, %17 ], [ %22, %42 ]
  %46 = phi i64 [ %9, %6 ], [ %9, %13 ], [ %9, %17 ], [ %38, %42 ]
  %47 = phi i64 [ %8, %6 ], [ %8, %13 ], [ %8, %17 ], [ %43, %42 ]
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !135

50:                                               ; preds = %44
  %51 = mul nsw i64 %47, 23
  %52 = mul nsw i64 %46, 31
  %53 = xor i64 %52, %51
  %54 = xor i64 %53, %45
  %55 = freeze i64 %54
  %56 = icmp eq i64 %55, 0
  %57 = call i64 @llvm.smax.i64(i64 %55, i64 -9223372036854775807)
  br i1 %56, label %58, label %59

58:                                               ; preds = %2, %50
  br label %59

59:                                               ; preds = %50, %58
  %60 = phi i64 [ 1, %58 ], [ %57, %50 ]
  %61 = call i64 @llvm.abs.i64(i64 %60, i1 true)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i64 %61
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !101
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_region_pivot_edge_use_best(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !137 {
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %6) #16
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %9) #16
  %11 = icmp sgt ptr %7, %10
  %12 = icmp slt ptr %7, %10
  %13 = select i1 %12, ptr %7, ptr %10
  %14 = ptrtoint ptr %13 to i64
  %15 = select i1 %11, ptr %7, ptr %10
  %16 = ptrtoint ptr %15 to i64
  %17 = load ptr, ptr %2, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load i64, ptr %3, align 8, !tbaa !66
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = icmp slt i64 %20, %14
  br i1 %23, label %28, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds i64, ptr %3, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !66
  %27 = icmp slt i64 %26, %16
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %22, %4
  store i64 %14, ptr %3, align 8, !tbaa !66
  %29 = getelementptr inbounds i64, ptr %3, i64 1
  store i64 %16, ptr %29, align 8, !tbaa !66
  store ptr %1, ptr %2, align 8, !tbaa !42
  br label %30

30:                                               ; preds = %28, %24, %22
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bm_vert_fasthash_single(ptr noundef %0) unnamed_addr #0 !PGOFuncName !138 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %1, %31
  %6 = phi i64 [ %34, %31 ], [ 0, %1 ]
  %7 = phi i64 [ %33, %31 ], [ 0, %1 ]
  %8 = phi i64 [ %32, %31 ], [ 0, %1 ]
  %9 = phi ptr [ %35, %31 ], [ %3, %1 ]
  %10 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %9) #17, !range !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ %7, %12 ], [ %19, %15 ]
  %17 = phi i64 [ %6, %12 ], [ %25, %15 ]
  %18 = phi ptr [ %14, %12 ], [ %27, %15 ]
  %19 = add i64 %16, 1
  %20 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !126
  %22 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !130
  %24 = zext i32 %23 to i64
  %25 = add i64 %17, %24
  %26 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %29, label %15, !llvm.loop !139

29:                                               ; preds = %15
  %30 = add i64 %8, 1
  br label %31

31:                                               ; preds = %29, %5
  %32 = phi i64 [ %8, %5 ], [ %30, %29 ]
  %33 = phi i64 [ %7, %5 ], [ %19, %29 ]
  %34 = phi i64 [ %6, %5 ], [ %25, %29 ]
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %5, !llvm.loop !140

37:                                               ; preds = %31
  %38 = mul i64 %32, 7
  %39 = mul i64 %33, 1891
  %40 = mul i64 %39, %34
  %41 = xor i64 %40, %38
  br label %42

42:                                               ; preds = %37, %1
  %43 = phi i64 [ 0, %1 ], [ %41, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  ret i64 %43
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !143
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ghash_bmelem_new_ex(i32 noundef %0) unnamed_addr #0 !PGOFuncName !144 {
  %2 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @ghashutil_bmelem_indexhash, ptr noundef nonnull @ghashutil_bmelem_indexcmp, ptr noundef nonnull @__func__.bm_uuidwalk_init, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ghash_bmelem_new() unnamed_addr #0 !PGOFuncName !145 {
  %1 = tail call fastcc ptr @ghash_bmelem_new_ex(i32 noundef 0) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gset_bmelem_new() unnamed_addr #0 !PGOFuncName !146 {
  %1 = tail call fastcc ptr @gset_bmelem_new_ex() #17
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ghashutil_bmelem_indexhash(ptr nocapture noundef readonly %0) #5 !PGOFuncName !147 {
  %2 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #17
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @ghashutil_bmelem_indexcmp(ptr noundef readnone %0, ptr noundef readnone %1) #11 !PGOFuncName !148 {
  %3 = icmp ne ptr %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gset_bmelem_new_ex() unnamed_addr #0 !PGOFuncName !149 {
  %1 = tail call ptr @BLI_gset_new_ex(ptr noundef nonnull @ghashutil_bmelem_indexhash, ptr noundef nonnull @ghashutil_bmelem_indexcmp, ptr noundef nonnull @__func__.bm_uuidwalk_init, i32 noundef 0) #16
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @BLI_gset_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !150 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !151
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %20 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !152
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  br label %21

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !152
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  br label %21

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !152
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !118
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  br label %21

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !152
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !118
  br label %21

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !152
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !118
  br label %21

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !152
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !118
  br label %21

20:                                               ; preds = %4
  unreachable

21:                                               ; preds = %19, %18, %17, %14, %11, %8
  %22 = phi ptr [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %23 = phi ptr [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %22, ptr %0, align 8, !tbaa !156
  tail call void %23(ptr noundef nonnull %0) #16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_vert_fasthash_edge_order(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %5) #17
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, ptr %0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !66
  store i64 %9, ptr %2, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %11) #17
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, ptr %0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 %15, ptr %16, align 8, !tbaa !66
  %17 = icmp ugt i64 %9, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 %15, ptr %2, align 8, !tbaa !66
  store i64 %9, ptr %16, align 8, !tbaa !66
  br label %19

19:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_uuidwalk_init_from_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !158 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = tail call i32 @BM_edge_face_count(ptr noundef %1) #16
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = load ptr, ptr %4, align 8, !tbaa !124
  br label %11

11:                                               ; preds = %22, %2
  %12 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %13 = phi ptr [ %5, %2 ], [ %25, %22 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = tail call fastcc zeroext i8 @bm_uuidwalk_face_test(ptr noundef %0, ptr noundef %15) #17, !range !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = add i32 %12, 1
  %20 = zext i32 %12 to i64
  %21 = getelementptr inbounds ptr, ptr %9, i64 %20
  store ptr %15, ptr %21, align 8, !tbaa !42
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %19, %18 ], [ %12, %11 ]
  %24 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !125
  %26 = icmp eq ptr %25, %10
  br i1 %26, label %27, label %11, !llvm.loop !159

27:                                               ; preds = %22
  %28 = zext i32 %23 to i64
  call void @qsort(ptr noundef nonnull %9, i64 noundef %28, i64 noundef 8, ptr noundef nonnull @bm_face_len_cmp) #16
  %29 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  call void @BLI_ghash_insert(ptr noundef %30, ptr noundef %32, ptr noundef nonnull inttoptr (i64 100003 to ptr)) #16
  %33 = load ptr, ptr %29, align 8, !tbaa !85
  %34 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !81
  call void @BLI_ghash_insert(ptr noundef %33, ptr noundef %35, ptr noundef nonnull inttoptr (i64 100003 to ptr)) #16
  %36 = icmp eq i32 %23, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %65
  %40 = phi i32 [ 0, %37 ], [ %71, %65 ]
  %41 = phi i32 [ 0, %37 ], [ %72, %65 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !42
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %9, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = getelementptr inbounds %struct.BMFace, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !130
  %47 = add nuw i32 %41, 1
  %48 = call i32 @llvm.umax.i32(i32 %23, i32 %47)
  %49 = add i32 %48, -1
  br label %50

50:                                               ; preds = %56, %39
  %51 = phi ptr [ %58, %56 ], [ %44, %39 ]
  %52 = phi i64 [ %53, %56 ], [ %42, %39 ]
  %53 = add nuw nsw i64 %52, 1
  %54 = load ptr, ptr %38, align 8, !tbaa !95
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef nonnull %51, ptr noundef %54) #16
  %55 = icmp ult i64 %53, %28
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = getelementptr inbounds ptr, ptr %9, i64 %53
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  %59 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !130
  %61 = icmp eq i32 %46, %60
  br i1 %61, label %50, label %62, !llvm.loop !160

62:                                               ; preds = %56
  %63 = trunc i64 %52 to i32
  %64 = trunc i64 %53 to i32
  br label %65

65:                                               ; preds = %50, %62
  %66 = phi i32 [ %63, %62 ], [ %49, %50 ]
  %67 = phi i32 [ %64, %62 ], [ %48, %50 ]
  %68 = load ptr, ptr %3, align 8, !tbaa !42
  call fastcc void @bm_uuidwalk_pass_add(ptr noundef %0, ptr noundef %68, i32 noundef %67) #17
  %69 = load ptr, ptr %3, align 8, !tbaa !42
  %70 = load ptr, ptr %38, align 8, !tbaa !95
  call void @BLI_linklist_free_pool(ptr noundef %69, ptr noundef null, ptr noundef %70) #16
  %71 = add i32 %40, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %72 = add i32 %66, 2
  %73 = icmp ult i32 %72, %23
  br i1 %73, label %39, label %74, !llvm.loop !161

74:                                               ; preds = %65, %27
  %75 = phi i32 [ 0, %27 ], [ %71, %65 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_rehash_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !162 {
  %3 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = shl i32 %1, 1
  %8 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = zext i32 %7 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr %8(ptr noundef %10, i64 noundef %12, ptr noundef nonnull @__func__.bm_uuidwalk_rehash_reserve) #16
  store ptr %13, ptr %9, align 8, !tbaa !92
  store i32 %7, ptr %3, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_facestep_free(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %4, %6 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = load ptr, ptr %7, align 8, !tbaa !95
  tail call void @BLI_mempool_free(ptr noundef %11, ptr noundef nonnull %9) #16
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %8, !llvm.loop !165

13:                                               ; preds = %8, %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #16
  %14 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  tail call void @BLI_mempool_free(ptr noundef %15, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_uuidwalk_facestep_begin(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !166 {
  %3 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %10 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 3
  br label %12

12:                                               ; preds = %6, %45
  %13 = phi ptr [ %4, %6 ], [ %18, %45 ]
  %14 = phi ptr [ %3, %6 ], [ %47, %45 ]
  %15 = phi i8 [ 0, %6 ], [ %46, %45 ]
  %16 = getelementptr inbounds %struct.LinkNode, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = load ptr, ptr %13, align 8, !tbaa !164
  %19 = load ptr, ptr %7, align 8, !tbaa !88
  %20 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %19, ptr noundef %17) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %12
  %23 = tail call fastcc i64 @bm_uuidwalk_calc_face_uuid(ptr noundef nonnull %0, ptr noundef %17) #17
  %24 = load ptr, ptr %9, align 8, !tbaa !91
  %25 = inttoptr i64 %23 to ptr
  %26 = tail call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef %25) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load ptr, ptr %10, align 8, !tbaa !97
  %30 = tail call ptr @BLI_mempool_alloc(ptr noundef %29) #16
  %31 = load ptr, ptr %9, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %31, ptr noundef %25, ptr noundef %30) #16
  tail call void @BLI_addhead(ptr noundef nonnull %11, ptr noundef %30) #16
  %32 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %30, i64 0, i32 2
  store i64 %23, ptr %32, align 8, !tbaa !108
  %33 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %30, i64 0, i32 3
  store ptr null, ptr %33, align 8, !tbaa !113
  %34 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %30, i64 0, i32 4
  store i32 0, ptr %34, align 8, !tbaa !112
  br label %35

35:                                               ; preds = %28, %22
  %36 = phi ptr [ %30, %28 ], [ %26, %22 ]
  %37 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %8, align 8, !tbaa !95
  tail call void @BLI_linklist_prepend_pool(ptr noundef nonnull %37, ptr noundef %17, ptr noundef %38) #16
  %39 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %36, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !112
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !112
  br label %45

42:                                               ; preds = %12
  %43 = load ptr, ptr %13, align 8, !tbaa !164
  store ptr %43, ptr %14, align 8, !tbaa !42
  %44 = load ptr, ptr %8, align 8, !tbaa !95
  tail call void @BLI_mempool_free(ptr noundef %44, ptr noundef nonnull %13) #16
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i8 [ %15, %42 ], [ 1, %35 ]
  %47 = phi ptr [ %14, %42 ], [ %13, %35 ]
  %48 = icmp eq ptr %18, null
  br i1 %48, label %49, label %12, !llvm.loop !167

49:                                               ; preds = %45, %2
  %50 = phi i8 [ 0, %2 ], [ %46, %45 ]
  %51 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  tail call void @BLI_ghash_clear(ptr noundef %52, ptr noundef null, ptr noundef null) #16
  %53 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 3
  tail call void @BLI_sortlist(ptr noundef nonnull %53, ptr noundef nonnull @facestep_sort) #16
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_pass_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !168 {
  %4 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  tail call fastcc void @bm_uuidwalk_rehash_facelinks(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 1) #17
  %5 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = tail call ptr @BLI_mempool_alloc(ptr noundef %10) #16
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.UUIDFaceStep, ptr %11, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !105
  %13 = getelementptr inbounds %struct.UUIDFaceStep, ptr %11, i64 0, i32 3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %13) #17
  %14 = icmp eq ptr %1, null
  br i1 %14, label %78, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %15, %75
  %20 = phi ptr [ %1, %15 ], [ %76, %75 ]
  %21 = getelementptr inbounds %struct.LinkNode, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  br label %25

25:                                               ; preds = %71, %19
  %26 = phi ptr [ %24, %19 ], [ %73, %71 ]
  %27 = load ptr, ptr %16, align 8, !tbaa !85
  %28 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %27, ptr noundef %29) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load ptr, ptr %28, align 8, !tbaa !48
  %34 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %33) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load ptr, ptr %28, align 8, !tbaa !48
  %38 = tail call fastcc zeroext i8 @bm_vert_is_uuid_connect(ptr noundef nonnull %0, ptr noundef %37) #17
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load ptr, ptr %28, align 8, !tbaa !48
  %42 = tail call fastcc i64 @bm_uuidwalk_calc_vert_uuid(ptr noundef nonnull %0, ptr noundef %41) #17
  %43 = load ptr, ptr %28, align 8, !tbaa !48
  %44 = inttoptr i64 %42 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %43, ptr noundef %44) #16
  br label %45

45:                                               ; preds = %40, %36, %32, %25
  %46 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !125
  %48 = icmp eq ptr %47, %26
  br i1 %48, label %71, label %49

49:                                               ; preds = %45, %67
  %50 = phi ptr [ %69, %67 ], [ %47, %45 ]
  %51 = load ptr, ptr %17, align 8, !tbaa !88
  %52 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !126
  %54 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %51, ptr noundef %53) #16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load ptr, ptr %52, align 8, !tbaa !126
  %58 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %8, ptr noundef %57) #16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load ptr, ptr %52, align 8, !tbaa !126
  %62 = tail call fastcc zeroext i8 @bm_uuidwalk_face_test(ptr noundef nonnull %0, ptr noundef %61) #17, !range !38
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  tail call void @BLI_gset_insert(ptr noundef %8, ptr noundef %61) #16
  %65 = load ptr, ptr %52, align 8, !tbaa !126
  %66 = load ptr, ptr %18, align 8, !tbaa !95
  tail call void @BLI_linklist_prepend_pool(ptr noundef nonnull %12, ptr noundef %65, ptr noundef %66) #16
  br label %67

67:                                               ; preds = %49, %56, %60, %64
  %68 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !125
  %70 = icmp eq ptr %69, %26
  br i1 %70, label %71, label %49, !llvm.loop !169

71:                                               ; preds = %67, %45
  %72 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !51
  %74 = icmp eq ptr %73, %24
  br i1 %74, label %75, label %25, !llvm.loop !170

75:                                               ; preds = %71
  %76 = load ptr, ptr %20, align 8, !tbaa !164
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %19, !llvm.loop !171

78:                                               ; preds = %75, %3
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %6) #16
  %79 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #17, !range !38
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  br label %83

83:                                               ; preds = %81, %83
  %84 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %4) #17
  %85 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %4) #17
  %86 = load ptr, ptr %82, align 8, !tbaa !85
  call void @BLI_ghash_insert(ptr noundef %86, ptr noundef %84, ptr noundef %85) #16
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #16
  %87 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #17, !range !38
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %83, label %89, !llvm.loop !172

89:                                               ; preds = %83, %78
  call fastcc void @bm_uuidwalk_rehash_facelinks(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 0) #17
  %90 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !98
  %92 = add i64 %91, 1
  store i64 %92, ptr %90, align 8, !tbaa !98
  %93 = load ptr, ptr %5, align 8, !tbaa !89
  call void @BLI_ghash_clear(ptr noundef %93, ptr noundef null, ptr noundef null) #16
  %94 = load ptr, ptr %7, align 8, !tbaa !90
  call void @BLI_gset_clear(ptr noundef %94, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_free_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_facestep_end(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !173 {
  %3 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 3
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %4, %6 ], [ %11, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !97
  tail call void @BLI_mempool_free(ptr noundef %10, ptr noundef nonnull %9) #16
  %11 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !174

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_rehash(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !175 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call i32 @BLI_ghash_size(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = tail call i32 @BLI_ghash_size(ptr noundef %7) #16
  %9 = icmp sgt i32 %5, %8
  %10 = select i1 %9, ptr %3, ptr %6
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = tail call i32 @BLI_ghash_size(ptr noundef %11) #16
  tail call fastcc void @bm_uuidwalk_rehash_reserve(ptr noundef nonnull %0, i32 noundef %12) #17
  %13 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = load ptr, ptr %3, align 8, !tbaa !85
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %15) #16
  %16 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1, %18
  %19 = phi i32 [ %22, %18 ], [ 0, %1 ]
  %20 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %2) #17
  %21 = call fastcc i64 @bm_uuidwalk_calc_vert_uuid(ptr noundef %0, ptr noundef %20) #17
  %22 = add i32 %19, 1
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds i64, ptr %14, i64 %23
  store i64 %21, ptr %24, align 8, !tbaa !66
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #16
  %25 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %18, label %27, !llvm.loop !176

27:                                               ; preds = %18, %1
  %28 = load ptr, ptr %3, align 8, !tbaa !85
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %28) #16
  %29 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27, %31
  %32 = phi i32 [ %34, %31 ], [ 0, %27 ]
  %33 = call fastcc ptr @BLI_ghashIterator_getValue_p(ptr noundef nonnull %2) #17
  %34 = add i32 %32, 1
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds i64, ptr %14, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !66
  store i64 %37, ptr %33, align 8, !tbaa !66
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #16
  %38 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %31, label %40, !llvm.loop !177

40:                                               ; preds = %31, %27
  %41 = load ptr, ptr %6, align 8, !tbaa !88
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %41) #16
  %42 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40, %44
  %45 = phi i32 [ %48, %44 ], [ 0, %40 ]
  %46 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %2) #17
  %47 = call fastcc i64 @bm_uuidwalk_calc_face_uuid(ptr noundef %0, ptr noundef %46) #17
  %48 = add i32 %45, 1
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds i64, ptr %14, i64 %49
  store i64 %47, ptr %50, align 8, !tbaa !66
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #16
  %51 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %44, label %53, !llvm.loop !178

53:                                               ; preds = %44, %40
  %54 = load ptr, ptr %6, align 8, !tbaa !88
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %54) #16
  %55 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %57
  %58 = phi i32 [ %60, %57 ], [ 0, %53 ]
  %59 = call fastcc ptr @BLI_ghashIterator_getValue_p(ptr noundef nonnull %2) #17
  %60 = add i32 %58, 1
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds i64, ptr %14, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !66
  store i64 %63, ptr %59, align 8, !tbaa !66
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #16
  %64 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #17, !range !38
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %57, label %66, !llvm.loop !179

66:                                               ; preds = %57, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_clear(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !186 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  tail call void @BLI_ghash_clear(ptr noundef %3, ptr noundef null, ptr noundef null) #16
  %4 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  tail call void @BLI_ghash_clear(ptr noundef %5, ptr noundef null, ptr noundef null) #16
  %6 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  tail call void @BLI_ghash_clear(ptr noundef %7, ptr noundef null, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  tail call void @BLI_gset_clear(ptr noundef %9, ptr noundef null) #16
  %10 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  tail call void @BLI_ghash_clear(ptr noundef %11, ptr noundef null, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  store i8 0, ptr %12, align 8, !tbaa !94
  %13 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  tail call void @BLI_mempool_clear(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  tail call void @BLI_mempool_clear(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  tail call void @BLI_mempool_clear(ptr noundef %18) #16
  %19 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  store i64 1, ptr %19, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @bm_uuidwalk_face_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !94
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %1) #17
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i8 [ %7, %6 ], [ 1, %2 ]
  ret i8 %9
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bm_face_len_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !130
  %7 = icmp sgt i32 %4, %6
  %8 = icmp slt i32 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !189 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !101
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bm_uuidwalk_calc_face_uuid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !190 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !130
  %9 = zext i32 %8 to i64
  %10 = mul i64 %6, 1013
  %11 = mul i64 %10, %9
  %12 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %14, %2
  %15 = phi ptr [ %13, %2 ], [ %26, %14 ]
  %16 = phi i64 [ %11, %2 ], [ %24, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %17 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = call fastcc zeroext i8 @bm_uuidwalk_vert_lookup(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %3) #17, !range !38
  %20 = icmp eq i8 %19, 0
  %21 = load i64, ptr %3, align 8
  %22 = mul i64 %21, 11
  %23 = select i1 %20, i64 0, i64 %22
  %24 = xor i64 %23, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %25 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, %13
  br i1 %27, label %28, label %14, !llvm.loop !191

28:                                               ; preds = %14
  %29 = load ptr, ptr %12, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %50, %28
  %31 = phi ptr [ %29, %28 ], [ %53, %50 ]
  %32 = phi i64 [ %24, %28 ], [ %51, %50 ]
  %33 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !125
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %50, label %36

36:                                               ; preds = %30, %36
  %37 = phi i64 [ %46, %36 ], [ %32, %30 ]
  %38 = phi ptr [ %48, %36 ], [ %34, %30 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !126
  %41 = call fastcc zeroext i8 @bm_uuidwalk_face_lookup(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %4) #17, !range !38
  %42 = icmp eq i8 %41, 0
  %43 = load i64, ptr %4, align 8
  %44 = mul i64 %43, 17
  %45 = select i1 %42, i64 0, i64 %44
  %46 = xor i64 %45, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %47 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !125
  %49 = icmp eq ptr %48, %31
  br i1 %49, label %50, label %36, !llvm.loop !192

50:                                               ; preds = %36, %30
  %51 = phi i64 [ %32, %30 ], [ %46, %36 ]
  %52 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = icmp eq ptr %53, %29
  br i1 %54, label %55, label %30, !llvm.loop !193

55:                                               ; preds = %50
  ret i64 %51
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @facestep_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !108
  %7 = icmp ugt i64 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_uuidwalk_vert_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !195 {
  %4 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %5, ptr noundef %1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = ptrtoint ptr %9 to i64
  store i64 %10, ptr %2, align 8, !tbaa !66
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_uuidwalk_face_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !196 {
  %4 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %5, ptr noundef %1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = ptrtoint ptr %9 to i64
  store i64 %10, ptr %2, align 8, !tbaa !66
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_uuidwalk_rehash_facelinks(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !197 {
  tail call fastcc void @bm_uuidwalk_rehash_reserve(ptr noundef %0, i32 noundef %2) #17
  %5 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %1, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %17, %8 ], [ %1, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.LinkNode, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = tail call fastcc i64 @bm_uuidwalk_calc_face_uuid(ptr noundef %0, ptr noundef %12) #17
  %14 = add i32 %10, 1
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds i64, ptr %6, i64 %15
  store i64 %13, ptr %16, align 8, !tbaa !66
  %17 = load ptr, ptr %9, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !198

19:                                               ; preds = %8
  %20 = icmp eq i8 %3, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  br i1 %7, label %53, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %27

24:                                               ; preds = %19
  br i1 %7, label %53, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %40

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %1, %22 ], [ %38, %27 ]
  %29 = phi i32 [ 0, %22 ], [ %33, %27 ]
  %30 = getelementptr inbounds %struct.LinkNode, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = load ptr, ptr %23, align 8, !tbaa !88
  %33 = add i32 %29, 1
  %34 = zext i32 %29 to i64
  %35 = getelementptr inbounds i64, ptr %6, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !66
  %37 = inttoptr i64 %36 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %32, ptr noundef %31, ptr noundef %37) #16
  %38 = load ptr, ptr %28, align 8, !tbaa !164
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %27, !llvm.loop !199

40:                                               ; preds = %25, %40
  %41 = phi ptr [ %1, %25 ], [ %51, %40 ]
  %42 = phi i32 [ 0, %25 ], [ %47, %40 ]
  %43 = getelementptr inbounds %struct.LinkNode, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = load ptr, ptr %26, align 8, !tbaa !88
  %46 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %45, ptr noundef %44) #16
  %47 = add i32 %42, 1
  %48 = zext i32 %42 to i64
  %49 = getelementptr inbounds i64, ptr %6, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !66
  store i64 %50, ptr %46, align 8, !tbaa !66
  %51 = load ptr, ptr %41, align 8, !tbaa !164
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %40, !llvm.loop !200

53:                                               ; preds = %27, %40, %4, %21, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_vert_is_uuid_connect(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !201 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %14
  %9 = phi ptr [ %4, %6 ], [ %15, %14 ]
  %10 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %9, ptr noundef %1) #17
  %11 = load ptr, ptr %7, align 8, !tbaa !85
  %12 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %11, ptr noundef %10) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !202

17:                                               ; preds = %8, %14, %2
  %18 = phi i8 [ 0, %2 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bm_uuidwalk_calc_vert_uuid(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !203 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !98
  %9 = mul i64 %8, 1031
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %1) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2, %24
  %13 = phi i64 [ %26, %24 ], [ %9, %2 ]
  %14 = phi ptr [ %27, %24 ], [ %10, %2 ]
  %15 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %16 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %14, ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %17 = call fastcc zeroext i8 @bm_uuidwalk_vert_lookup(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %4) #17, !range !38
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load i64, ptr %4, align 8, !tbaa !66
  %21 = mul i64 %20, 7
  %22 = xor i64 %21, %13
  %23 = add i32 %15, 1
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i32 [ %23, %19 ], [ %15, %12 ]
  %26 = phi i64 [ %22, %19 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !204

29:                                               ; preds = %24
  %30 = mul i32 %25, 43
  %31 = zext i32 %30 to i64
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi i64 [ 0, %2 ], [ %31, %29 ]
  %34 = phi i64 [ %9, %2 ], [ %26, %29 ]
  %35 = xor i64 %34, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 5, ptr noundef %1) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %32, %49
  %39 = phi ptr [ %52, %49 ], [ %36, %32 ]
  %40 = phi i32 [ %51, %49 ], [ 0, %32 ]
  %41 = phi i64 [ %50, %49 ], [ %35, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %42 = call fastcc zeroext i8 @bm_uuidwalk_face_lookup(ptr noundef %0, ptr noundef nonnull %39, ptr noundef nonnull %6) #17, !range !38
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i64, ptr %6, align 8, !tbaa !66
  %46 = mul i64 %45, 13
  %47 = xor i64 %46, %41
  %48 = add i32 %40, 1
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i64 [ %47, %44 ], [ %41, %38 ]
  %51 = phi i32 [ %48, %44 ], [ %40, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %38, !llvm.loop !205

54:                                               ; preds = %49
  %55 = mul i32 %51, 53
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %54, %32
  %58 = phi i64 [ %35, %32 ], [ %50, %54 ]
  %59 = phi i64 [ 0, %32 ], [ %56, %54 ]
  %60 = xor i64 %58, %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i64 %60
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !206 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !207
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_gset_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @BLI_ghashIterator_getValue_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !208 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_mempool_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i8 0, i8 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"bmesh_region_match.c:bm_face_array_visit"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!45, !43, i64 24}
!45 = !{!"BMFace", !46, i64 0, !43, i64 16, !43, i64 24, !35, i64 32, !36, i64 36, !47, i64 48}
!46 = !{!"BMHeader", !43, i64 0, !35, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!47 = !{!"short", !36, i64 0}
!48 = !{!49, !43, i64 16}
!49 = !{!"BMLoop", !46, i64 0, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64}
!50 = !{!49, !43, i64 24}
!51 = !{!49, !43, i64 56}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = !{!"bmesh_region_match.c:bm_face_region_pivot_edge_find"}
!55 = !{!56, !43, i64 24}
!56 = !{!"BMEdge", !46, i64 0, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !57, i64 48, !57, i64 64}
!57 = !{!"BMDiskLink", !43, i64 0, !43, i64 8}
!58 = !{i64 1, i64 0}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = !{!65, !43, i64 8}
!65 = !{!"LinkNode", !43, i64 0, !43, i64 8}
!66 = !{!67, !67, i64 0}
!67 = !{!"long", !36, i64 0}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = !{!"bmesh_region_match.c:BLI_listbase_clear"}
!75 = !{!"bmesh_region_match.c:bm_vert_fasthash_create"}
!76 = !{!77, !35, i64 0}
!77 = !{!"BMesh", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28, !36, i64 29, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !35, i64 88, !35, i64 92, !35, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !35, i64 128, !43, i64 136, !78, i64 144, !78, i64 344, !78, i64 544, !78, i64 744, !47, i64 944, !35, i64 948, !35, i64 952, !35, i64 956, !79, i64 960, !43, i64 976, !79, i64 984, !43, i64 1000}
!78 = !{!"CustomData", !43, i64 0, !36, i64 8, !35, i64 172, !35, i64 176, !35, i64 180, !43, i64 184, !43, i64 192}
!79 = !{!"ListBase", !43, i64 0, !43, i64 8}
!80 = distinct !{!80, !40}
!81 = !{!56, !43, i64 32}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = !{!"bmesh_region_match.c:bm_uuidwalk_init"}
!85 = !{!86, !43, i64 16}
!86 = !{!"UUIDWalk", !79, i64 0, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !36, i64 64, !67, i64 72, !87, i64 80}
!87 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !35, i64 32}
!88 = !{!86, !43, i64 24}
!89 = !{!86, !43, i64 80}
!90 = !{!86, !43, i64 88}
!91 = !{!86, !43, i64 96}
!92 = !{!86, !43, i64 104}
!93 = !{!86, !35, i64 112}
!94 = !{!86, !36, i64 64}
!95 = !{!86, !43, i64 32}
!96 = !{!86, !43, i64 48}
!97 = !{!86, !43, i64 56}
!98 = !{!86, !67, i64 72}
!99 = !{!"bmesh_region_match.c:BM_iter_new"}
!100 = !{!"bmesh_region_match.c:_bm_elem_flag_test"}
!101 = !{!46, !36, i64 13}
!102 = !{!"bmesh_region_match.c:bm_vert_fasthash_edge_is_match"}
!103 = !{!"bmesh_region_match.c:bm_mesh_region_match_pair"}
!104 = !{!86, !43, i64 0}
!105 = !{!106, !43, i64 16}
!106 = !{!"UUIDFaceStep", !43, i64 0, !43, i64 8, !43, i64 16, !79, i64 24}
!107 = !{!106, !43, i64 0}
!108 = !{!109, !67, i64 16}
!109 = !{!"UUIDFaceStepItem", !43, i64 0, !43, i64 8, !67, i64 16, !43, i64 24, !35, i64 32}
!110 = !{!109, !43, i64 0}
!111 = distinct !{!111, !40}
!112 = !{!109, !35, i64 32}
!113 = !{!109, !43, i64 24}
!114 = distinct !{!114, !40}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = !{!"bmesh_region_match.c:BM_iter_step"}
!118 = !{!119, !43, i64 48}
!119 = !{!"BMIter", !36, i64 0, !43, i64 40, !43, i64 48, !35, i64 56, !36, i64 60}
!120 = !{!"bmesh_region_match.c:bm_uuidwalk_free"}
!121 = !{!"bmesh_region_match.c:bm_vert_fasthash_destroy"}
!122 = !{!"bmesh_region_match.c:_bm_elem_flag_enable"}
!123 = !{!"bmesh_region_match.c:bm_edge_is_region_boundary"}
!124 = !{!56, !43, i64 40}
!125 = !{!49, !43, i64 40}
!126 = !{!49, !43, i64 32}
!127 = distinct !{!127, !40}
!128 = !{!"bmesh_region_match.c:bm_face_region_vert_boundary_id"}
!129 = !{!49, !43, i64 64}
!130 = !{!45, !35, i64 32}
!131 = distinct !{!131, !40}
!132 = !{!"bmesh_region_match.c:BM_edge_other_vert"}
!133 = !{!"bmesh_region_match.c:bm_face_region_vert_pass_id"}
!134 = distinct !{!134, !40}
!135 = distinct !{!135, !40}
!136 = !{!"bmesh_region_match.c:_bm_elem_flag_disable"}
!137 = !{!"bmesh_region_match.c:bm_face_region_pivot_edge_use_best"}
!138 = !{!"bmesh_region_match.c:bm_vert_fasthash_single"}
!139 = distinct !{!139, !40}
!140 = distinct !{!140, !40}
!141 = !{!"bmesh_region_match.c:BM_edge_is_wire"}
!142 = !{!"bmesh_region_match.c:_bm_elem_index_get"}
!143 = !{!46, !35, i64 8}
!144 = !{!"bmesh_region_match.c:ghash_bmelem_new_ex"}
!145 = !{!"bmesh_region_match.c:ghash_bmelem_new"}
!146 = !{!"bmesh_region_match.c:gset_bmelem_new"}
!147 = !{!"bmesh_region_match.c:ghashutil_bmelem_indexhash"}
!148 = !{!"bmesh_region_match.c:ghashutil_bmelem_indexcmp"}
!149 = !{!"bmesh_region_match.c:gset_bmelem_new_ex"}
!150 = !{!"bmesh_region_match.c:BM_iter_init"}
!151 = !{!119, !36, i64 60}
!152 = !{!119, !43, i64 40}
!153 = !{!77, !43, i64 32}
!154 = !{!77, !43, i64 40}
!155 = !{!77, !43, i64 56}
!156 = !{!36, !36, i64 0}
!157 = !{!"bmesh_region_match.c:bm_vert_fasthash_edge_order"}
!158 = !{!"bmesh_region_match.c:bm_uuidwalk_init_from_edge"}
!159 = distinct !{!159, !40}
!160 = distinct !{!160, !40}
!161 = distinct !{!161, !40}
!162 = !{!"bmesh_region_match.c:bm_uuidwalk_rehash_reserve"}
!163 = !{!"bmesh_region_match.c:bm_uuidwalk_facestep_free"}
!164 = !{!65, !43, i64 0}
!165 = distinct !{!165, !40}
!166 = !{!"bmesh_region_match.c:bm_uuidwalk_facestep_begin"}
!167 = distinct !{!167, !40}
!168 = !{!"bmesh_region_match.c:bm_uuidwalk_pass_add"}
!169 = distinct !{!169, !40}
!170 = distinct !{!170, !40}
!171 = distinct !{!171, !40}
!172 = distinct !{!172, !40}
!173 = !{!"bmesh_region_match.c:bm_uuidwalk_facestep_end"}
!174 = distinct !{!174, !40}
!175 = !{!"bmesh_region_match.c:bm_uuidwalk_rehash"}
!176 = distinct !{!176, !40}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !40}
!179 = distinct !{!179, !40}
!180 = !{!"bmesh_region_match.c:BLI_ghashIterator_done"}
!181 = !{!182, !43, i64 8}
!182 = !{!"GHashIterator", !43, i64 0, !43, i64 8, !35, i64 16}
!183 = !{!"bmesh_region_match.c:BLI_ghashIterator_getKey"}
!184 = !{!185, !43, i64 8}
!185 = !{!"_gh_Entry", !43, i64 0, !43, i64 8, !43, i64 16}
!186 = !{!"bmesh_region_match.c:bm_uuidwalk_clear"}
!187 = !{!"bmesh_region_match.c:bm_uuidwalk_face_test"}
!188 = !{!"bmesh_region_match.c:bm_face_len_cmp"}
!189 = !{!"bmesh_region_match.c:_bm_elem_flag_test_bool"}
!190 = !{!"bmesh_region_match.c:bm_uuidwalk_calc_face_uuid"}
!191 = distinct !{!191, !40}
!192 = distinct !{!192, !40}
!193 = distinct !{!193, !40}
!194 = !{!"bmesh_region_match.c:facestep_sort"}
!195 = !{!"bmesh_region_match.c:bm_uuidwalk_vert_lookup"}
!196 = !{!"bmesh_region_match.c:bm_uuidwalk_face_lookup"}
!197 = !{!"bmesh_region_match.c:bm_uuidwalk_rehash_facelinks"}
!198 = distinct !{!198, !40}
!199 = distinct !{!199, !40}
!200 = distinct !{!200, !40}
!201 = !{!"bmesh_region_match.c:bm_vert_is_uuid_connect"}
!202 = distinct !{!202, !40}
!203 = !{!"bmesh_region_match.c:bm_uuidwalk_calc_vert_uuid"}
!204 = distinct !{!204, !40}
!205 = distinct !{!205, !40}
!206 = !{!"bmesh_region_match.c:BLI_ghashIterator_getValue"}
!207 = !{!185, !43, i64 16}
!208 = !{!"bmesh_region_match.c:BLI_ghashIterator_getValue_p"}
