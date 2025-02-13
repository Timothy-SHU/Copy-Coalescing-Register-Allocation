; ModuleID = 'blender/source/blender/blenkernel/intern/bvhutils.c'
source_filename = "blender/source/blender/blenkernel/intern/bvhutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BVHTreeRay = type { [3 x float], [3 x float], float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHCacheItem = type { i32, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }

@cache_rwlock = internal global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"BVHCacheItem\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @bvhtree_ray_tri_intersection(ptr noundef %0, float %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.BVHTreeRay, ptr %0, i64 0, i32 1
  %8 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef null, float noundef 0x3E80000000000000) #11
  %9 = icmp eq i8 %8, 0
  %10 = load float, ptr %6, align 4
  %11 = select i1 %9, float 0x47EFFFFFE0000000, float %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret float %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bvhtree_from_mesh_verts(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 1) #11
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 12
  %8 = tail call ptr @bvhcache_find(ptr noundef nonnull %7, i32 noundef 1) #12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #11
  %9 = call ptr @DM_get_vert_array(ptr noundef %1, ptr noundef nonnull %6) #11
  %10 = icmp eq ptr %8, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %12, i8 0, i64 40, i1 false)
  store ptr %8, ptr %0, align 8, !tbaa !34
  br label %41

13:                                               ; preds = %5
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 2) #11
  %14 = call ptr @bvhcache_find(ptr noundef nonnull %7, i32 noundef 1) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = call i32 %18(ptr noundef %1) #11
  %20 = icmp eq ptr %9, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = trunc i32 %3 to i8
  %23 = trunc i32 %4 to i8
  %24 = call ptr @BLI_bvhtree_new(i32 noundef %19, float noundef %2, i8 noundef zeroext %22, i8 noundef zeroext %23) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = icmp sgt i32 %19, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = zext nneg i32 %19 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %32 = getelementptr inbounds %struct.MVert, ptr %9, i64 %31
  %33 = trunc i64 %31 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %24, i32 noundef %33, ptr noundef nonnull %32, i32 noundef 1) #11
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %29
  br i1 %35, label %36, label %30, !llvm.loop !44

36:                                               ; preds = %30, %26
  call void @BLI_bvhtree_balance(ptr noundef nonnull %24) #11
  call void @bvhcache_insert(ptr noundef nonnull %7, ptr noundef nonnull %24, i32 noundef 1) #12
  br label %37

37:                                               ; preds = %13, %21, %36, %16
  %38 = phi ptr [ %14, %13 ], [ %24, %36 ], [ null, %21 ], [ null, %16 ]
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #11
  %39 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %39, i8 0, i64 64, i1 false)
  store ptr %38, ptr %0, align 8, !tbaa !34
  %40 = icmp eq ptr %38, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %11, %37
  %42 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  store i8 1, ptr %42, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store ptr %9, ptr %44, align 8, !tbaa !47
  %45 = load i8, ptr %6, align 1, !tbaa !48
  %46 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  store i8 %45, ptr %46, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 7
  %48 = call ptr @DM_get_tessface_array(ptr noundef %1, ptr noundef nonnull %47) #11
  %49 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  store float %2, ptr %50, align 4, !tbaa !51
  br label %56

51:                                               ; preds = %37
  %52 = load i8, ptr %6, align 1, !tbaa !48
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %55(ptr noundef %9) #11
  br label %56

56:                                               ; preds = %51, %54, %41
  %57 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret ptr %57
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bvhcache_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BVHCacheItem, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store i32 %1, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.BVHCacheItem, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !55
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  call void @BLI_linklist_apply(ptr noundef %5, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %3) #11
  %6 = load ptr, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret ptr %6
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_vert_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bvhcache_insert(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @.str) #11
  store i32 %2, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.BVHCacheItem, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !55
  tail call void @BLI_linklist_prepend(ptr noundef %0, ptr noundef nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @DM_get_tessface_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bvhtree_from_mesh_faces(ptr nocapture noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [4 x [3 x float]], align 16
  %10 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !tbaa !48
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 1) #11
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 12
  %15 = tail call ptr @bvhcache_find(ptr noundef nonnull %14, i32 noundef %13) #12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #11
  br i1 %12, label %16, label %19

16:                                               ; preds = %5
  %17 = call ptr @DM_get_vert_array(ptr noundef %1, ptr noundef nonnull %6) #11
  %18 = call ptr @DM_get_tessface_array(ptr noundef %1, ptr noundef nonnull %7) #11
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi ptr [ %18, %16 ], [ undef, %5 ]
  %21 = phi ptr [ %17, %16 ], [ undef, %5 ]
  %22 = icmp eq ptr %15, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, i8 0, i64 48, i1 false)
  store ptr %15, ptr %0, align 8, !tbaa !34
  store ptr %11, ptr %10, align 8, !tbaa !56
  br label %151

25:                                               ; preds = %19
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 2) #11
  %26 = call ptr @bvhcache_find(ptr noundef nonnull %14, i32 noundef %13) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %147

28:                                               ; preds = %25
  br i1 %12, label %32, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !57
  br label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = call i32 %34(ptr noundef %1) #11
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %31, %29 ], [ %35, %32 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %147, label %39

39:                                               ; preds = %36
  %40 = trunc i32 %3 to i8
  %41 = trunc i32 %4 to i8
  %42 = call ptr @BLI_bvhtree_new(i32 noundef %37, float noundef %2, i8 noundef zeroext %40, i8 noundef zeroext %41) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %147, label %44

44:                                               ; preds = %39
  br i1 %12, label %110, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  %48 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !57
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %146

51:                                               ; preds = %45
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  br label %54

54:                                               ; preds = %51, %103
  %55 = phi i32 [ %49, %51 ], [ %104, %103 ]
  %56 = phi i64 [ 0, %51 ], [ %107, %103 ]
  %57 = phi ptr [ null, %51 ], [ %106, %103 ]
  %58 = phi i8 [ 0, %51 ], [ %105, %103 ]
  %59 = getelementptr inbounds [3 x ptr], ptr %47, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = icmp eq ptr %62, %57
  br i1 %63, label %83, label %64

64:                                               ; preds = %54
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %62, i8 noundef zeroext 1) #12, !range !66
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %62, i8 noundef zeroext 2) #12, !range !66
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.BMFace, ptr %62, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !67
  br label %73

73:                                               ; preds = %79, %70
  %74 = phi ptr [ %72, %70 ], [ %81, %79 ]
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !69
  %77 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %76, i8 noundef zeroext 1) #12, !range !66
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !70
  %82 = icmp eq ptr %81, %72
  br i1 %82, label %85, label %73, !llvm.loop !71

83:                                               ; preds = %54
  %84 = icmp eq i8 %58, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %79, %83
  %86 = phi i8 [ %58, %83 ], [ 1, %79 ]
  %87 = phi ptr [ %57, %83 ], [ %62, %79 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #10
  %88 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !69
  %90 = getelementptr inbounds %struct.BMVert, ptr %89, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %90) #12
  %91 = getelementptr inbounds ptr, ptr %59, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !52
  %93 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !69
  %95 = getelementptr inbounds %struct.BMVert, ptr %94, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %95) #12
  %96 = getelementptr inbounds ptr, ptr %59, i64 2
  %97 = load ptr, ptr %96, align 8, !tbaa !52
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !69
  %100 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %100) #12
  %101 = trunc i64 %56 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %42, i32 noundef %101, ptr noundef nonnull %8, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #10
  %102 = load i32, ptr %48, align 8, !tbaa !57
  br label %103

103:                                              ; preds = %73, %64, %67, %85, %83
  %104 = phi i32 [ %102, %85 ], [ %55, %83 ], [ %55, %67 ], [ %55, %64 ], [ %55, %73 ]
  %105 = phi i8 [ %86, %85 ], [ 0, %83 ], [ 0, %67 ], [ 0, %64 ], [ 0, %73 ]
  %106 = phi ptr [ %87, %85 ], [ %57, %83 ], [ %62, %67 ], [ %62, %64 ], [ %62, %73 ]
  %107 = add nuw nsw i64 %56, 1
  %108 = sext i32 %104 to i64
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %54, label %146, !llvm.loop !72

110:                                              ; preds = %44
  %111 = icmp ne ptr %21, null
  %112 = icmp ne ptr %20, null
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp sgt i32 %37, 0
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %146

116:                                              ; preds = %110
  %117 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 1
  %118 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 2
  %119 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 3
  %120 = zext nneg i32 %37 to i64
  br label %121

121:                                              ; preds = %116, %141
  %122 = phi i64 [ 0, %116 ], [ %144, %141 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #10
  %123 = getelementptr inbounds %struct.MFace, ptr %20, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !73
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.MVert, ptr %21, i64 %125
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %126) #12
  %127 = getelementptr inbounds %struct.MFace, ptr %20, i64 %122, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !75
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MVert, ptr %21, i64 %129
  call fastcc void @copy_v3_v3(ptr noundef nonnull %117, ptr noundef nonnull %130) #12
  %131 = getelementptr inbounds %struct.MFace, ptr %20, i64 %122, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !76
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.MVert, ptr %21, i64 %133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %118, ptr noundef nonnull %134) #12
  %135 = getelementptr inbounds %struct.MFace, ptr %20, i64 %122, i32 3
  %136 = load i32, ptr %135, align 4, !tbaa !77
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %121
  %139 = zext i32 %136 to i64
  %140 = getelementptr inbounds %struct.MVert, ptr %21, i64 %139
  call fastcc void @copy_v3_v3(ptr noundef nonnull %119, ptr noundef nonnull %140) #12
  br label %141

141:                                              ; preds = %138, %121
  %142 = phi i32 [ 4, %138 ], [ 3, %121 ]
  %143 = trunc i64 %122 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %42, i32 noundef %143, ptr noundef nonnull %9, i32 noundef %142) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #10
  %144 = add nuw nsw i64 %122, 1
  %145 = icmp eq i64 %144, %120
  br i1 %145, label %146, label %121, !llvm.loop !78

146:                                              ; preds = %103, %141, %45, %110
  call void @BLI_bvhtree_balance(ptr noundef nonnull %42) #11
  call void @bvhcache_insert(ptr noundef nonnull %14, ptr noundef nonnull %42, i32 noundef %13) #12
  br label %147

147:                                              ; preds = %25, %39, %146, %36
  %148 = phi ptr [ %26, %25 ], [ %42, %146 ], [ null, %39 ], [ null, %36 ]
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #11
  %149 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %149, i8 0, i64 64, i1 false)
  store ptr %148, ptr %0, align 8, !tbaa !34
  store ptr %11, ptr %10, align 8, !tbaa !56
  %150 = icmp eq ptr %148, null
  br i1 %150, label %166, label %151

151:                                              ; preds = %23, %147
  %152 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  store i8 1, ptr %152, align 8, !tbaa !46
  br i1 %12, label %153, label %160

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  store ptr %21, ptr %154, align 8, !tbaa !47
  %155 = load i8, ptr %6, align 1, !tbaa !48
  %156 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  store i8 %155, ptr %156, align 8, !tbaa !49
  %157 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  store ptr %20, ptr %157, align 8, !tbaa !50
  %158 = load i8, ptr %7, align 1, !tbaa !48
  %159 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 7
  store i8 %158, ptr %159, align 1, !tbaa !79
  br label %160

160:                                              ; preds = %151, %153
  %161 = phi ptr [ @mesh_faces_nearest_point, %153 ], [ @editmesh_faces_nearest_point, %151 ]
  %162 = phi ptr [ @mesh_faces_spherecast, %153 ], [ @editmesh_faces_spherecast, %151 ]
  %163 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 1
  store ptr %161, ptr %163, align 8
  %164 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 2
  store ptr %162, ptr %164, align 8
  %165 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  store float %2, ptr %165, align 4, !tbaa !51
  br label %176

166:                                              ; preds = %147
  %167 = load i8, ptr %6, align 1, !tbaa !48
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %170(ptr noundef %21) #11
  br label %171

171:                                              ; preds = %169, %166
  %172 = load i8, ptr %7, align 1, !tbaa !48
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %175(ptr noundef %20) #11
  br label %176

176:                                              ; preds = %171, %174, %160
  %177 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret ptr %177
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !81
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !82 {
  %3 = load float, ptr %1, align 4, !tbaa !83
  store float %3, ptr %0, align 4, !tbaa !83
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !83
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !83
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !83
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @editmesh_faces_nearest_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !84 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [3 x ptr], ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds ptr, ptr %11, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %21 = getelementptr inbounds ptr, ptr %11, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %25) #11
  %26 = call fastcc float @len_squared_v3v3(ptr noundef %2, ptr noundef nonnull %5) #12
  %27 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !85
  %29 = fcmp olt float %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  store i32 %1, ptr %3, align 4, !tbaa !87
  store float %26, ptr %27, align 4, !tbaa !85
  %31 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %5) #12
  %32 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %33 = call float @normal_tri_v3(ptr noundef nonnull %32, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %25) #11
  br label %34

34:                                               ; preds = %30, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @editmesh_faces_spherecast(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !88 {
  %5 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [3 x ptr], ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %20 = getelementptr inbounds ptr, ptr %10, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = tail call float @bvhtree_ray_tri_intersection(ptr noundef %2, float poison, ptr noundef nonnull %14, ptr noundef nonnull %19, ptr noundef nonnull %24) #12
  br label %34

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !89
  %33 = tail call fastcc float @sphereray_tri_intersection(ptr noundef %2, float noundef %26, float noundef %32, ptr noundef nonnull %14, ptr noundef nonnull %19, ptr noundef nonnull %24) #12
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi float [ %29, %28 ], [ %33, %30 ]
  %36 = fcmp ult float %35, 0.000000e+00
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !89
  %40 = fcmp olt float %35, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  store i32 %1, ptr %3, align 4, !tbaa !91
  store float %35, ptr %38, align 4, !tbaa !89
  %42 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %42, ptr noundef %2, ptr noundef nonnull %43, float noundef %35) #12
  %44 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %45 = tail call float @normal_tri_v3(ptr noundef nonnull %44, ptr noundef nonnull %14, ptr noundef nonnull %19, ptr noundef nonnull %24) #11
  br label %46

46:                                               ; preds = %41, %37, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_faces_nearest_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !92 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !73
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !75
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %7, i64 %17
  %19 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %7, i64 %21
  %23 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !77
  %25 = icmp eq i32 %24, 0
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %7, i64 %26
  %28 = select i1 %25, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %30 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 4
  br label %33

33:                                               ; preds = %49, %4
  %34 = phi ptr [ %22, %4 ], [ %35, %49 ]
  %35 = phi ptr [ %28, %4 ], [ null, %49 ]
  %36 = phi ptr [ %18, %4 ], [ %34, %49 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %14, ptr noundef %36, ptr noundef %34) #11
  %37 = call fastcc float @len_squared_v3v3(ptr noundef %2, ptr noundef nonnull %5) #12
  %38 = load float, ptr %29, align 4, !tbaa !85
  %39 = fcmp olt float %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  store i32 %1, ptr %3, align 4, !tbaa !87
  store float %37, ptr %29, align 4, !tbaa !85
  call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %5) #12
  %41 = call float @normal_tri_v3(ptr noundef nonnull %31, ptr noundef %14, ptr noundef %36, ptr noundef %34) #11
  %42 = load i32, ptr %19, align 4, !tbaa !76
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.MVert, ptr %7, i64 %43
  %45 = icmp eq ptr %36, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, ptr %32, align 4, !tbaa !93
  %48 = or i32 %47, 1
  store i32 %48, ptr %32, align 4, !tbaa !93
  br label %49

49:                                               ; preds = %40, %46, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %50 = icmp eq ptr %35, null
  br i1 %50, label %51, label %33, !llvm.loop !94

51:                                               ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_faces_spherecast(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !95 {
  %5 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !73
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %6, i64 %12
  %14 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !75
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %6, i64 %16
  %18 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %6, i64 %20
  %22 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !77
  %24 = icmp eq i32 %23, 0
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %6, i64 %25
  %27 = select i1 %24, ptr null, ptr %26
  %28 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  %29 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %30 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 4
  br label %34

34:                                               ; preds = %60, %4
  %35 = phi ptr [ %17, %4 ], [ %36, %60 ]
  %36 = phi ptr [ %21, %4 ], [ %37, %60 ]
  %37 = phi ptr [ %27, %4 ], [ null, %60 ]
  %38 = load float, ptr %28, align 4, !tbaa !51
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = tail call float @bvhtree_ray_tri_intersection(ptr noundef %2, float poison, ptr noundef %13, ptr noundef %35, ptr noundef %36) #12
  br label %45

42:                                               ; preds = %34
  %43 = load float, ptr %29, align 4, !tbaa !89
  %44 = tail call fastcc float @sphereray_tri_intersection(ptr noundef %2, float noundef %38, float noundef %43, ptr noundef %13, ptr noundef %35, ptr noundef %36) #12
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi float [ %41, %40 ], [ %44, %42 ]
  %47 = fcmp ult float %46, 0.000000e+00
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load float, ptr %29, align 4, !tbaa !89
  %50 = fcmp olt float %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  store i32 %1, ptr %3, align 4, !tbaa !91
  store float %46, ptr %29, align 4, !tbaa !89
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %30, ptr noundef %2, ptr noundef nonnull %31, float noundef %46) #12
  %52 = tail call float @normal_tri_v3(ptr noundef nonnull %32, ptr noundef %13, ptr noundef %35, ptr noundef %36) #11
  %53 = load i32, ptr %18, align 4, !tbaa !76
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MVert, ptr %6, i64 %54
  %56 = icmp eq ptr %35, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, ptr %33, align 4, !tbaa !96
  %59 = or i32 %58, 1
  store i32 %59, ptr %33, align 4, !tbaa !96
  br label %60

60:                                               ; preds = %51, %57, %48, %45
  %61 = icmp eq ptr %37, null
  br i1 %61, label %62, label %34, !llvm.loop !97

62:                                               ; preds = %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bvhtree_from_mesh_edges(ptr nocapture noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [4 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 1) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 12
  %10 = tail call ptr @bvhcache_find(ptr noundef nonnull %9, i32 noundef 2) #12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #11
  %11 = call ptr @DM_get_vert_array(ptr noundef %1, ptr noundef nonnull %6) #11
  %12 = call ptr @DM_get_edge_array(ptr noundef %1, ptr noundef nonnull %7) #11
  %13 = icmp eq ptr %10, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, i8 0, i64 32, i1 false)
  store ptr %10, ptr %0, align 8, !tbaa !34
  br label %54

16:                                               ; preds = %5
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 2) #11
  %17 = call ptr @bvhcache_find(ptr noundef nonnull %9, i32 noundef 2) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = call i32 %21(ptr noundef %1) #11
  %23 = icmp ne ptr %11, null
  %24 = icmp ne ptr %12, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = trunc i32 %3 to i8
  %28 = trunc i32 %4 to i8
  %29 = call ptr @BLI_bvhtree_new(i32 noundef %22, float noundef %2, i8 noundef zeroext %27, i8 noundef zeroext %28) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = icmp sgt i32 %22, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  %35 = zext nneg i32 %22 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %47, %36 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #10
  %38 = getelementptr inbounds %struct.MEdge, ptr %12, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !99
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MVert, ptr %11, i64 %40
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %41) #12
  %42 = getelementptr inbounds %struct.MEdge, ptr %12, i64 %37, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !101
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %11, i64 %44
  call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %45) #12
  %46 = trunc i64 %37 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %29, i32 noundef %46, ptr noundef nonnull %8, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #10
  %47 = add nuw nsw i64 %37, 1
  %48 = icmp eq i64 %47, %35
  br i1 %48, label %49, label %36, !llvm.loop !102

49:                                               ; preds = %36, %31
  call void @BLI_bvhtree_balance(ptr noundef nonnull %29) #11
  call void @bvhcache_insert(ptr noundef nonnull %9, ptr noundef nonnull %29, i32 noundef 2) #12
  br label %50

50:                                               ; preds = %16, %26, %49, %19
  %51 = phi ptr [ %17, %16 ], [ %29, %49 ], [ null, %26 ], [ null, %19 ]
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #11
  %52 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %52, i8 0, i64 64, i1 false)
  store ptr %51, ptr %0, align 8, !tbaa !34
  %53 = icmp eq ptr %51, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %14, %50
  %55 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  store i8 1, ptr %55, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 1
  store ptr @mesh_edges_nearest_point, ptr %56, align 8, !tbaa !103
  %57 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 2
  store ptr null, ptr %57, align 8, !tbaa !104
  %58 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  store ptr %11, ptr %58, align 8, !tbaa !47
  %59 = load i8, ptr %6, align 1, !tbaa !48
  %60 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  store i8 %59, ptr %60, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 4
  store ptr %12, ptr %61, align 8, !tbaa !105
  %62 = load i8, ptr %7, align 1, !tbaa !48
  %63 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 8
  store i8 %62, ptr %63, align 2, !tbaa !106
  %64 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  store float %2, ptr %64, align 4, !tbaa !51
  br label %75

65:                                               ; preds = %50
  %66 = load i8, ptr %6, align 1, !tbaa !48
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %69(ptr noundef %11) #11
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i8, ptr %7, align 1, !tbaa !48
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %74(ptr noundef %12) #11
  br label %75

75:                                               ; preds = %70, %73, %54
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret ptr %76
}

; Function Attrs: optsize
declare ptr @DM_get_edge_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_edges_nearest_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 !PGOFuncName !107 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MEdge, ptr %9, i64 %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %12 = load i32, ptr %11, align 4, !tbaa !99
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.MEdge, ptr %9, i64 %10, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %7, i64 %17
  call void @closest_to_line_segment_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %14, ptr noundef %18) #11
  %19 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %5, ptr noundef %2) #12
  %20 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !85
  %22 = fcmp olt float %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  store i32 %1, ptr %3, align 4, !tbaa !87
  store float %19, ptr %20, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %5) #12
  %25 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %25, ptr noundef %14, ptr noundef %18) #12
  call fastcc void @normalize_v3(ptr noundef nonnull %25) #12
  br label %26

26:                                               ; preds = %23, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_bvhtree_from_mesh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %2) #11
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  tail call void %14(ptr noundef %16) #11
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 2, !tbaa !106
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  tail call void %22(ptr noundef %24) #11
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 1, !tbaa !79
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  tail call void %30(ptr noundef %32) #11
  br label %33

33:                                               ; preds = %29, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @bvhcacheitem_set_if_match(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 !PGOFuncName !108 {
  %3 = load i32, ptr %1, align 8, !tbaa !53
  %4 = load i32, ptr %0, align 8, !tbaa !53
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BVHCacheItem, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BVHCacheItem, ptr %1, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @bvhcache_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr null, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bvhcache_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void @BLI_linklist_free(ptr noundef %2, ptr noundef nonnull @bvhcacheitem_free) #11
  store ptr null, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bvhcacheitem_free(ptr noundef %0) #0 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.BVHCacheItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BLI_bvhtree_free(ptr noundef %3) #11
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %4(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @closest_on_tri_to_point_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !110 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !111 {
  %4 = load float, ptr %1, align 4, !tbaa !83
  %5 = load float, ptr %2, align 4, !tbaa !83
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !83
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !83
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !83
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !83
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !83
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !83
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !112 {
  %3 = load float, ptr %0, align 4, !tbaa !83
  %4 = load float, ptr %1, align 4, !tbaa !83
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !83
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !83
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !83
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !83
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @sphereray_tri_intersection(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !113 {
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %11 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4, ptr noundef %5) #11
  %12 = getelementptr inbounds %struct.BVHTreeRay, ptr %0, i64 0, i32 1
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %12, float noundef %2) #12
  %13 = call zeroext i8 @isect_sweeping_sphere_tri_v3(ptr noundef %0, ptr noundef nonnull %8, float noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %10) #11
  %14 = icmp eq i8 %13, 0
  %15 = load float, ptr %7, align 4
  %16 = fmul float %15, %2
  %17 = select i1 %14, float 0x47EFFFFFE0000000, float %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret float %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #5 !PGOFuncName !114 {
  %5 = load float, ptr %1, align 4, !tbaa !83
  %6 = load float, ptr %2, align 4, !tbaa !83
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !83
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !83
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !83
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !83
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !83
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !83
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_sweeping_sphere_tri_v3(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @closest_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !115 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !116 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !117 {
  %4 = load float, ptr %1, align 4, !tbaa !83
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !83
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !83
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !83
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !83
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !118 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !83
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !83
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BVHTreeFromMesh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !39, i64 52, !36, i64 56, !37, i64 64}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!41, !36, i64 1104}
!41 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !36, i64 1032, !36, i64 1040, !43, i64 1048, !39, i64 1052, !43, i64 1056, !43, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!42 = !{!"CustomData", !36, i64 0, !37, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !36, i64 192}
!43 = !{!"int", !37, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!35, !37, i64 64}
!47 = !{!35, !36, i64 24}
!48 = !{!37, !37, i64 0}
!49 = !{!35, !37, i64 48}
!50 = !{!35, !36, i64 40}
!51 = !{!35, !39, i64 52}
!52 = !{!36, !36, i64 0}
!53 = !{!54, !43, i64 0}
!54 = !{!"BVHCacheItem", !43, i64 0, !36, i64 8}
!55 = !{!54, !36, i64 8}
!56 = !{!35, !36, i64 56}
!57 = !{!58, !43, i64 32}
!58 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !43, i64 16, !36, i64 24, !43, i64 32, !36, i64 40, !36, i64 48, !59, i64 56, !36, i64 64, !43, i64 72, !36, i64 80, !43, i64 88, !60, i64 92, !60, i64 94, !36, i64 96, !43, i64 104}
!59 = !{!"long", !37, i64 0}
!60 = !{!"short", !37, i64 0}
!61 = !{!41, !36, i64 1120}
!62 = !{!58, !36, i64 24}
!63 = !{!64, !36, i64 32}
!64 = !{!"BMLoop", !65, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!65 = !{!"BMHeader", !36, i64 0, !43, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!66 = !{i8 0, i8 3}
!67 = !{!68, !36, i64 24}
!68 = !{!"BMFace", !65, i64 0, !36, i64 16, !36, i64 24, !43, i64 32, !37, i64 36, !60, i64 48}
!69 = !{!64, !36, i64 16}
!70 = !{!64, !36, i64 56}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !45}
!73 = !{!74, !43, i64 0}
!74 = !{!"MFace", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !60, i64 16, !37, i64 18, !37, i64 19}
!75 = !{!74, !43, i64 4}
!76 = !{!74, !43, i64 8}
!77 = !{!74, !43, i64 12}
!78 = distinct !{!78, !45}
!79 = !{!35, !37, i64 49}
!80 = !{!"bvhutils.c:_bm_elem_flag_test"}
!81 = !{!65, !37, i64 13}
!82 = !{!"bvhutils.c:copy_v3_v3"}
!83 = !{!39, !39, i64 0}
!84 = !{!"bvhutils.c:editmesh_faces_nearest_point"}
!85 = !{!86, !39, i64 28}
!86 = !{!"BVHTreeNearest", !43, i64 0, !37, i64 4, !37, i64 16, !39, i64 28, !43, i64 32}
!87 = !{!86, !43, i64 0}
!88 = !{!"bvhutils.c:editmesh_faces_spherecast"}
!89 = !{!90, !39, i64 28}
!90 = !{!"BVHTreeRayHit", !43, i64 0, !37, i64 4, !37, i64 16, !39, i64 28, !43, i64 32}
!91 = !{!90, !43, i64 0}
!92 = !{!"bvhutils.c:mesh_faces_nearest_point"}
!93 = !{!86, !43, i64 32}
!94 = distinct !{!94, !45}
!95 = !{!"bvhutils.c:mesh_faces_spherecast"}
!96 = !{!90, !43, i64 32}
!97 = distinct !{!97, !45}
!98 = !{!41, !36, i64 1112}
!99 = !{!100, !43, i64 0}
!100 = !{!"MEdge", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 9, !60, i64 10}
!101 = !{!100, !43, i64 4}
!102 = distinct !{!102, !45}
!103 = !{!35, !36, i64 8}
!104 = !{!35, !36, i64 16}
!105 = !{!35, !36, i64 32}
!106 = !{!35, !37, i64 50}
!107 = !{!"bvhutils.c:mesh_edges_nearest_point"}
!108 = !{!"bvhutils.c:bvhcacheitem_set_if_match"}
!109 = !{!"bvhutils.c:bvhcacheitem_free"}
!110 = !{!"bvhutils.c:len_squared_v3v3"}
!111 = !{!"bvhutils.c:sub_v3_v3v3"}
!112 = !{!"bvhutils.c:dot_v3v3"}
!113 = !{!"bvhutils.c:sphereray_tri_intersection"}
!114 = !{!"bvhutils.c:madd_v3_v3v3fl"}
!115 = !{!"bvhutils.c:normalize_v3"}
!116 = !{!"bvhutils.c:normalize_v3_v3"}
!117 = !{!"bvhutils.c:mul_v3_v3fl"}
!118 = !{!"bvhutils.c:zero_v3"}
