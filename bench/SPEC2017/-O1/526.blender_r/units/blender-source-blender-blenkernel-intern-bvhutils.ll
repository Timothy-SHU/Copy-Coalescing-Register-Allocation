; ModuleID = 'blender/source/blender/blenkernel/intern/bvhutils.c'
source_filename = "blender/source/blender/blenkernel/intern/bvhutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BVHTreeRay = type { [3 x float], [3 x float], float }
%struct.BVHCacheItem = type { i32, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
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

; Function Attrs: nounwind uwtable
define dso_local float @bvhtree_ray_tri_intersection(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.BVHTreeRay, ptr %0, i64 0, i32 1
  %8 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef null, float noundef 0x3E80000000000000) #8
  %9 = icmp eq i8 %8, 0
  %10 = load float, ptr %6, align 4
  %11 = select i1 %9, float 0x47EFFFFFE0000000, float %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret float %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @bvhtree_from_mesh_verts(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BVHCacheItem, align 8
  %7 = alloca %struct.BVHCacheItem, align 8
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 1) #8
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store i32 1, ptr %7, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.BVHCacheItem, ptr %7, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !40
  %11 = load ptr, ptr %9, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %11, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %7) #8
  %12 = load ptr, ptr %10, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #8
  %13 = call ptr @DM_get_vert_array(ptr noundef %1, ptr noundef nonnull %8) #8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %5
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  store i32 1, ptr %6, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BVHCacheItem, ptr %6, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !40
  %17 = load ptr, ptr %9, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %17, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %6) #8
  %18 = load ptr, ptr %16, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = call i32 %22(ptr noundef %1) #8
  %24 = icmp eq ptr %13, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %20
  %26 = trunc i32 %3 to i8
  %27 = trunc i32 %4 to i8
  %28 = call ptr @BLI_bvhtree_new(i32 noundef %23, float noundef %2, i8 noundef zeroext %26, i8 noundef zeroext %27) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %23, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = zext nneg i32 %23 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %38, %34 ]
  %36 = getelementptr inbounds %struct.MVert, ptr %13, i64 %35
  %37 = trunc i64 %35 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %28, i32 noundef %37, ptr noundef nonnull %36, i32 noundef 1) #8
  %38 = add nuw nsw i64 %35, 1
  %39 = icmp eq i64 %38, %33
  br i1 %39, label %40, label %34, !llvm.loop !46

40:                                               ; preds = %34, %30
  call void @BLI_bvhtree_balance(ptr noundef nonnull %28) #8
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %42 = call ptr %41(i64 noundef 16, ptr noundef nonnull @.str) #8
  store i32 1, ptr %42, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.BVHCacheItem, ptr %42, i64 0, i32 1
  store ptr %28, ptr %43, align 8, !tbaa !40
  call void @BLI_linklist_prepend(ptr noundef nonnull %9, ptr noundef nonnull %42) #8
  br label %44

44:                                               ; preds = %20, %40, %25, %15
  %45 = phi ptr [ %18, %15 ], [ %28, %40 ], [ null, %25 ], [ null, %20 ]
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #8
  br label %46

46:                                               ; preds = %5, %44
  %47 = phi ptr [ %45, %44 ], [ %12, %5 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store ptr %47, ptr %0, align 8, !tbaa !49
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  store i8 1, ptr %50, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  store ptr %13, ptr %52, align 8, !tbaa !52
  %53 = load i8, ptr %8, align 1, !tbaa !53
  %54 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  store i8 %53, ptr %54, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 7
  %56 = call ptr @DM_get_tessface_array(ptr noundef %1, ptr noundef nonnull %55) #8
  %57 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  store ptr %56, ptr %57, align 8, !tbaa !55
  %58 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  store float %2, ptr %58, align 4, !tbaa !56
  br label %64

59:                                               ; preds = %46
  %60 = load i8, ptr %8, align 1, !tbaa !53
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %63(ptr noundef %13) #8
  br label %64

64:                                               ; preds = %59, %62, %49
  %65 = load ptr, ptr %0, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  ret ptr %65
}

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @bvhcache_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BVHCacheItem, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  store i32 %1, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BVHCacheItem, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !40
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %5, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %3) #8
  %6 = load ptr, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret ptr %6
}

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @DM_get_vert_array(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bvhcache_insert(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @.str) #8
  store i32 %2, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BVHCacheItem, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !40
  tail call void @BLI_linklist_prepend(ptr noundef %0, ptr noundef nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @DM_get_tessface_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @bvhtree_from_mesh_faces(ptr nocapture noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BVHCacheItem, align 8
  %7 = alloca %struct.BVHCacheItem, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [4 x [3 x float]], align 16
  %12 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !tbaa !53
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 1) #8
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store i32 %15, ptr %7, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BVHCacheItem, ptr %7, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !40
  %18 = load ptr, ptr %16, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %18, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %7) #8
  %19 = load ptr, ptr %17, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #8
  br i1 %14, label %20, label %23

20:                                               ; preds = %5
  %21 = call ptr @DM_get_vert_array(ptr noundef %1, ptr noundef nonnull %8) #8
  %22 = call ptr @DM_get_tessface_array(ptr noundef %1, ptr noundef nonnull %9) #8
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi ptr [ %22, %20 ], [ undef, %5 ]
  %25 = phi ptr [ %21, %20 ], [ undef, %5 ]
  %26 = icmp eq ptr %19, null
  br i1 %26, label %27, label %203

27:                                               ; preds = %23
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  store i32 %15, ptr %6, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.BVHCacheItem, ptr %6, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !40
  %29 = load ptr, ptr %16, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %29, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %6) #8
  %30 = load ptr, ptr %28, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %201

32:                                               ; preds = %27
  br i1 %14, label %36, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !58
  br label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = call i32 %38(ptr noundef %1) #8
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %39, %36 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %201, label %43

43:                                               ; preds = %40
  %44 = trunc i32 %3 to i8
  %45 = trunc i32 %4 to i8
  %46 = call ptr @BLI_bvhtree_new(i32 noundef %41, float noundef %2, i8 noundef zeroext %44, i8 noundef zeroext %45) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %201, label %48

48:                                               ; preds = %43
  br i1 %14, label %133, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !58
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %197

55:                                               ; preds = %49
  %56 = getelementptr inbounds float, ptr %10, i64 1
  %57 = getelementptr inbounds float, ptr %10, i64 2
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  br label %64

64:                                               ; preds = %55, %128
  %65 = phi i64 [ 0, %55 ], [ %129, %128 ]
  %66 = phi ptr [ null, %55 ], [ %94, %128 ]
  %67 = phi i8 [ 0, %55 ], [ %95, %128 ]
  %68 = getelementptr inbounds [3 x ptr], ptr %51, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  %70 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  %72 = icmp eq ptr %71, %66
  br i1 %72, label %93, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !67
  %76 = and i8 %75, 3
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.BMFace, ptr %71, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !68
  br label %81

81:                                               ; preds = %89, %78
  %82 = phi ptr [ %80, %78 ], [ %91, %89 ]
  %83 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !67
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !71
  %92 = icmp eq ptr %91, %80
  br i1 %92, label %93, label %81, !llvm.loop !72

93:                                               ; preds = %81, %89, %73, %64
  %94 = phi ptr [ %66, %64 ], [ %71, %73 ], [ %71, %89 ], [ %71, %81 ]
  %95 = phi i8 [ %67, %64 ], [ 0, %73 ], [ 0, %81 ], [ 1, %89 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %128, label %97

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #8
  %98 = load ptr, ptr %68, align 8, !tbaa !41
  %99 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !70
  %101 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2
  %102 = load float, ptr %101, align 4, !tbaa !73
  store float %102, ptr %10, align 16, !tbaa !73
  %103 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !73
  store float %104, ptr %56, align 4, !tbaa !73
  %105 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !73
  store float %106, ptr %57, align 8, !tbaa !73
  %107 = getelementptr inbounds ptr, ptr %68, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !41
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !70
  %111 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 2
  %112 = load float, ptr %111, align 4, !tbaa !73
  store float %112, ptr %58, align 4, !tbaa !73
  %113 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 2, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !73
  store float %114, ptr %59, align 16, !tbaa !73
  %115 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 2, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !73
  store float %116, ptr %60, align 4, !tbaa !73
  %117 = getelementptr inbounds ptr, ptr %68, i64 2
  %118 = load ptr, ptr %117, align 8, !tbaa !41
  %119 = getelementptr inbounds %struct.BMLoop, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !70
  %121 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 2
  %122 = load float, ptr %121, align 4, !tbaa !73
  store float %122, ptr %61, align 8, !tbaa !73
  %123 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 2, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !73
  store float %124, ptr %62, align 4, !tbaa !73
  %125 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 2, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !73
  store float %126, ptr %63, align 16, !tbaa !73
  %127 = trunc i64 %65 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %46, i32 noundef %127, ptr noundef nonnull %10, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #8
  br label %128

128:                                              ; preds = %97, %93
  %129 = add nuw nsw i64 %65, 1
  %130 = load i32, ptr %52, align 8, !tbaa !58
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %64, label %197, !llvm.loop !74

133:                                              ; preds = %48
  %134 = icmp ne ptr %25, null
  %135 = icmp ne ptr %24, null
  %136 = select i1 %134, i1 %135, i1 false
  %137 = icmp sgt i32 %41, 0
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %197

139:                                              ; preds = %133
  %140 = getelementptr inbounds float, ptr %11, i64 1
  %141 = getelementptr inbounds float, ptr %11, i64 2
  %142 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1
  %143 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %144 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  %145 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2
  %146 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  %147 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2, i64 2
  %148 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3
  %149 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3, i64 1
  %150 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3, i64 2
  %151 = zext i32 %41 to i64
  br label %152

152:                                              ; preds = %139, %192
  %153 = phi i64 [ 0, %139 ], [ %195, %192 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #8
  %154 = getelementptr inbounds %struct.MFace, ptr %24, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !75
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.MVert, ptr %25, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !73
  store float %158, ptr %11, align 16, !tbaa !73
  %159 = getelementptr inbounds float, ptr %157, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !73
  store float %160, ptr %140, align 4, !tbaa !73
  %161 = getelementptr inbounds float, ptr %157, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !73
  store float %162, ptr %141, align 8, !tbaa !73
  %163 = getelementptr inbounds %struct.MFace, ptr %24, i64 %153, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !77
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.MVert, ptr %25, i64 %165
  %167 = load float, ptr %166, align 4, !tbaa !73
  store float %167, ptr %142, align 4, !tbaa !73
  %168 = getelementptr inbounds float, ptr %166, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !73
  store float %169, ptr %143, align 16, !tbaa !73
  %170 = getelementptr inbounds float, ptr %166, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !73
  store float %171, ptr %144, align 4, !tbaa !73
  %172 = getelementptr inbounds %struct.MFace, ptr %24, i64 %153, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !78
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.MVert, ptr %25, i64 %174
  %176 = load float, ptr %175, align 4, !tbaa !73
  store float %176, ptr %145, align 8, !tbaa !73
  %177 = getelementptr inbounds float, ptr %175, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !73
  store float %178, ptr %146, align 4, !tbaa !73
  %179 = getelementptr inbounds float, ptr %175, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !73
  store float %180, ptr %147, align 16, !tbaa !73
  %181 = getelementptr inbounds %struct.MFace, ptr %24, i64 %153, i32 3
  %182 = load i32, ptr %181, align 4, !tbaa !79
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %152
  %185 = zext i32 %182 to i64
  %186 = getelementptr inbounds %struct.MVert, ptr %25, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !73
  store float %187, ptr %148, align 4, !tbaa !73
  %188 = getelementptr inbounds float, ptr %186, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !73
  store float %189, ptr %149, align 8, !tbaa !73
  %190 = getelementptr inbounds float, ptr %186, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !73
  store float %191, ptr %150, align 4, !tbaa !73
  br label %192

192:                                              ; preds = %184, %152
  %193 = phi i32 [ 4, %184 ], [ 3, %152 ]
  %194 = trunc i64 %153 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %46, i32 noundef %194, ptr noundef nonnull %11, i32 noundef %193) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #8
  %195 = add nuw nsw i64 %153, 1
  %196 = icmp eq i64 %195, %151
  br i1 %196, label %197, label %152, !llvm.loop !80

197:                                              ; preds = %128, %192, %49, %133
  call void @BLI_bvhtree_balance(ptr noundef nonnull %46) #8
  %198 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %199 = call ptr %198(i64 noundef 16, ptr noundef nonnull @.str) #8
  store i32 %15, ptr %199, align 8, !tbaa !34
  %200 = getelementptr inbounds %struct.BVHCacheItem, ptr %199, i64 0, i32 1
  store ptr %46, ptr %200, align 8, !tbaa !40
  call void @BLI_linklist_prepend(ptr noundef nonnull %16, ptr noundef nonnull %199) #8
  br label %201

201:                                              ; preds = %40, %197, %43, %27
  %202 = phi ptr [ %30, %27 ], [ %46, %197 ], [ null, %43 ], [ null, %40 ]
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #8
  br label %203

203:                                              ; preds = %23, %201
  %204 = phi ptr [ %202, %201 ], [ %19, %23 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store ptr %204, ptr %0, align 8, !tbaa !49
  store ptr %13, ptr %12, align 8, !tbaa !57
  %205 = icmp eq ptr %204, null
  br i1 %205, label %220, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  store i8 1, ptr %207, align 8, !tbaa !51
  %208 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 1
  %209 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 2
  br i1 %14, label %211, label %210

210:                                              ; preds = %206
  store ptr @editmesh_faces_nearest_point, ptr %208, align 8, !tbaa !81
  store ptr @editmesh_faces_spherecast, ptr %209, align 8, !tbaa !82
  br label %218

211:                                              ; preds = %206
  store ptr @mesh_faces_nearest_point, ptr %208, align 8, !tbaa !81
  store ptr @mesh_faces_spherecast, ptr %209, align 8, !tbaa !82
  %212 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  store ptr %25, ptr %212, align 8, !tbaa !52
  %213 = load i8, ptr %8, align 1, !tbaa !53
  %214 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  store i8 %213, ptr %214, align 8, !tbaa !54
  %215 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  store ptr %24, ptr %215, align 8, !tbaa !55
  %216 = load i8, ptr %9, align 1, !tbaa !53
  %217 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 7
  store i8 %216, ptr %217, align 1, !tbaa !83
  br label %218

218:                                              ; preds = %211, %210
  %219 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  store float %2, ptr %219, align 4, !tbaa !56
  br label %230

220:                                              ; preds = %203
  %221 = load i8, ptr %8, align 1, !tbaa !53
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %224(ptr noundef %25) #8
  br label %225

225:                                              ; preds = %223, %220
  %226 = load i8, ptr %9, align 1, !tbaa !53
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %229(ptr noundef %24) #8
  br label %230

230:                                              ; preds = %225, %228, %218
  %231 = load ptr, ptr %0, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  ret ptr %231
}

; Function Attrs: nounwind uwtable
define internal void @editmesh_faces_nearest_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [3 x ptr], ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds ptr, ptr %11, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %21 = getelementptr inbounds ptr, ptr %11, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %25) #8
  %26 = load float, ptr %5, align 4, !tbaa !73
  %27 = load float, ptr %2, align 4, !tbaa !73
  %28 = fsub float %26, %27
  %29 = getelementptr inbounds float, ptr %5, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = getelementptr inbounds float, ptr %2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !73
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds float, ptr %5, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !73
  %36 = getelementptr inbounds float, ptr %2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !73
  %38 = fsub float %35, %37
  %39 = fmul float %33, %33
  %40 = call float @llvm.fmuladd.f32(float %28, float %28, float %39)
  %41 = call float @llvm.fmuladd.f32(float %38, float %38, float %40)
  %42 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !84
  %44 = fcmp olt float %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %4
  store i32 %1, ptr %3, align 4, !tbaa !86
  store float %41, ptr %42, align 4, !tbaa !84
  %46 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  store float %26, ptr %46, align 4, !tbaa !73
  %47 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 1
  store float %30, ptr %47, align 4, !tbaa !73
  %48 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 2
  store float %35, ptr %48, align 4, !tbaa !73
  %49 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %50 = call float @normal_tri_v3(ptr noundef nonnull %49, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %25) #8
  br label %51

51:                                               ; preds = %45, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @editmesh_faces_spherecast(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds [3 x ptr], ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %20 = getelementptr inbounds ptr, ptr %15, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds ptr, ptr %15, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = fcmp oeq float %31, 0.000000e+00
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %34 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %35 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %19, ptr noundef nonnull %24, ptr noundef nonnull %29, ptr noundef nonnull %9, ptr noundef null, float noundef 0x3E80000000000000) #8
  %36 = icmp eq i8 %35, 0
  %37 = load float, ptr %9, align 4
  %38 = select i1 %36, float 0x47EFFFFFE0000000, float %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  br label %64

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %42 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %19, ptr noundef nonnull %24, ptr noundef nonnull %29) #8
  %43 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %44 = load float, ptr %2, align 4, !tbaa !73
  %45 = load float, ptr %43, align 4, !tbaa !73
  %46 = call float @llvm.fmuladd.f32(float %45, float %41, float %44)
  store float %46, ptr %6, align 4, !tbaa !73
  %47 = getelementptr inbounds float, ptr %2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !73
  %49 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !73
  %51 = call float @llvm.fmuladd.f32(float %50, float %41, float %48)
  %52 = getelementptr inbounds float, ptr %6, i64 1
  store float %51, ptr %52, align 4, !tbaa !73
  %53 = getelementptr inbounds float, ptr %2, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !73
  %55 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !73
  %57 = call float @llvm.fmuladd.f32(float %56, float %41, float %54)
  %58 = getelementptr inbounds float, ptr %6, i64 2
  store float %57, ptr %58, align 4, !tbaa !73
  %59 = call zeroext i8 @isect_sweeping_sphere_tri_v3(ptr noundef nonnull %2, ptr noundef nonnull %6, float noundef %31, ptr noundef nonnull %19, ptr noundef nonnull %24, ptr noundef nonnull %29, ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  %60 = icmp eq i8 %59, 0
  %61 = load float, ptr %5, align 4
  %62 = fmul float %41, %61
  %63 = select i1 %60, float 0x47EFFFFFE0000000, float %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %64

64:                                               ; preds = %39, %33
  %65 = phi float [ %38, %33 ], [ %63, %39 ]
  %66 = fcmp ult float %65, 0.000000e+00
  br i1 %66, label %91, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %69 = load float, ptr %68, align 4, !tbaa !87
  %70 = fcmp olt float %65, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  store i32 %1, ptr %3, align 4, !tbaa !89
  store float %65, ptr %68, align 4, !tbaa !87
  %72 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %73 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %74 = load float, ptr %2, align 4, !tbaa !73
  %75 = load float, ptr %73, align 4, !tbaa !73
  %76 = call float @llvm.fmuladd.f32(float %75, float %65, float %74)
  store float %76, ptr %72, align 4, !tbaa !73
  %77 = getelementptr inbounds float, ptr %2, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !73
  %79 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !73
  %81 = call float @llvm.fmuladd.f32(float %80, float %65, float %78)
  %82 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 1
  store float %81, ptr %82, align 4, !tbaa !73
  %83 = getelementptr inbounds float, ptr %2, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !73
  %85 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !73
  %87 = call float @llvm.fmuladd.f32(float %86, float %65, float %84)
  %88 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 2
  store float %87, ptr %88, align 4, !tbaa !73
  %89 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %90 = call float @normal_tri_v3(ptr noundef nonnull %89, ptr noundef nonnull %19, ptr noundef nonnull %24, ptr noundef nonnull %29) #8
  br label %91

91:                                               ; preds = %71, %67, %64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_faces_nearest_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !75
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %7, i64 %17
  %19 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %7, i64 %21
  %23 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !79
  %25 = icmp eq i32 %24, 0
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %7, i64 %26
  %28 = select i1 %25, ptr null, ptr %27
  %29 = getelementptr inbounds float, ptr %5, i64 1
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = getelementptr inbounds float, ptr %5, i64 2
  %32 = getelementptr inbounds float, ptr %2, i64 2
  %33 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %34 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 1
  %36 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 2
  %37 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 4
  br label %39

39:                                               ; preds = %66, %4
  %40 = phi ptr [ %22, %4 ], [ %41, %66 ]
  %41 = phi ptr [ %28, %4 ], [ null, %66 ]
  %42 = phi ptr [ %18, %4 ], [ %40, %66 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %14, ptr noundef %42, ptr noundef %40) #8
  %43 = load float, ptr %5, align 4, !tbaa !73
  %44 = load float, ptr %2, align 4, !tbaa !73
  %45 = fsub float %43, %44
  %46 = load float, ptr %29, align 4, !tbaa !73
  %47 = load float, ptr %30, align 4, !tbaa !73
  %48 = fsub float %46, %47
  %49 = load float, ptr %31, align 4, !tbaa !73
  %50 = load float, ptr %32, align 4, !tbaa !73
  %51 = fsub float %49, %50
  %52 = fmul float %48, %48
  %53 = call float @llvm.fmuladd.f32(float %45, float %45, float %52)
  %54 = call float @llvm.fmuladd.f32(float %51, float %51, float %53)
  %55 = load float, ptr %33, align 4, !tbaa !84
  %56 = fcmp olt float %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %39
  store i32 %1, ptr %3, align 4, !tbaa !86
  store float %54, ptr %33, align 4, !tbaa !84
  store float %43, ptr %34, align 4, !tbaa !73
  store float %46, ptr %35, align 4, !tbaa !73
  store float %49, ptr %36, align 4, !tbaa !73
  %58 = call float @normal_tri_v3(ptr noundef nonnull %37, ptr noundef %14, ptr noundef %42, ptr noundef %40) #8
  %59 = load i32, ptr %19, align 4, !tbaa !78
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MVert, ptr %7, i64 %60
  %62 = icmp eq ptr %42, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, ptr %38, align 4, !tbaa !90
  %65 = or i32 %64, 1
  store i32 %65, ptr %38, align 4, !tbaa !90
  br label %66

66:                                               ; preds = %57, %63, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %67 = icmp eq ptr %41, null
  br i1 %67, label %68, label %39, !llvm.loop !91

68:                                               ; preds = %66
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_faces_spherecast(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.MFace, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !75
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %11, i64 %17
  %19 = getelementptr inbounds %struct.MFace, ptr %13, i64 %14, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %11, i64 %21
  %23 = getelementptr inbounds %struct.MFace, ptr %13, i64 %14, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !78
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %11, i64 %25
  %27 = getelementptr inbounds %struct.MFace, ptr %13, i64 %14, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !79
  %29 = icmp eq i32 %28, 0
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %11, i64 %30
  %32 = select i1 %29, ptr null, ptr %31
  %33 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  %34 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %35 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %36 = getelementptr inbounds float, ptr %2, i64 1
  %37 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 1
  %38 = getelementptr inbounds float, ptr %6, i64 1
  %39 = getelementptr inbounds float, ptr %2, i64 2
  %40 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 2
  %41 = getelementptr inbounds float, ptr %6, i64 2
  %42 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %43 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %44 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %45 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %46 = getelementptr inbounds float, ptr %2, i64 1
  %47 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 1
  %48 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 1
  %49 = getelementptr inbounds float, ptr %2, i64 2
  %50 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 2
  %51 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 2
  %52 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %53 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 4
  br label %54

54:                                               ; preds = %106, %4
  %55 = phi ptr [ %22, %4 ], [ %56, %106 ]
  %56 = phi ptr [ %26, %4 ], [ %57, %106 ]
  %57 = phi ptr [ %32, %4 ], [ null, %106 ]
  %58 = load float, ptr %33, align 4, !tbaa !56
  %59 = fcmp oeq float %58, 0.000000e+00
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %61 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %2, ptr noundef nonnull %42, ptr noundef %18, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %9, ptr noundef null, float noundef 0x3E80000000000000) #8
  %62 = icmp eq i8 %61, 0
  %63 = load float, ptr %9, align 4
  %64 = select i1 %62, float 0x47EFFFFFE0000000, float %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  br label %82

65:                                               ; preds = %54
  %66 = load float, ptr %34, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %67 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %18, ptr noundef %55, ptr noundef %56) #8
  %68 = load float, ptr %2, align 4, !tbaa !73
  %69 = load float, ptr %35, align 4, !tbaa !73
  %70 = call float @llvm.fmuladd.f32(float %69, float %66, float %68)
  store float %70, ptr %6, align 4, !tbaa !73
  %71 = load float, ptr %36, align 4, !tbaa !73
  %72 = load float, ptr %37, align 4, !tbaa !73
  %73 = call float @llvm.fmuladd.f32(float %72, float %66, float %71)
  store float %73, ptr %38, align 4, !tbaa !73
  %74 = load float, ptr %39, align 4, !tbaa !73
  %75 = load float, ptr %40, align 4, !tbaa !73
  %76 = call float @llvm.fmuladd.f32(float %75, float %66, float %74)
  store float %76, ptr %41, align 4, !tbaa !73
  %77 = call zeroext i8 @isect_sweeping_sphere_tri_v3(ptr noundef nonnull %2, ptr noundef nonnull %6, float noundef %58, ptr noundef %18, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  %78 = icmp eq i8 %77, 0
  %79 = load float, ptr %5, align 4
  %80 = fmul float %66, %79
  %81 = select i1 %78, float 0x47EFFFFFE0000000, float %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %82

82:                                               ; preds = %65, %60
  %83 = phi float [ %64, %60 ], [ %81, %65 ]
  %84 = fcmp ult float %83, 0.000000e+00
  br i1 %84, label %106, label %85

85:                                               ; preds = %82
  %86 = load float, ptr %43, align 4, !tbaa !87
  %87 = fcmp olt float %83, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  store i32 %1, ptr %3, align 4, !tbaa !89
  store float %83, ptr %43, align 4, !tbaa !87
  %89 = load float, ptr %2, align 4, !tbaa !73
  %90 = load float, ptr %45, align 4, !tbaa !73
  %91 = call float @llvm.fmuladd.f32(float %90, float %83, float %89)
  store float %91, ptr %44, align 4, !tbaa !73
  %92 = load float, ptr %46, align 4, !tbaa !73
  %93 = load float, ptr %47, align 4, !tbaa !73
  %94 = call float @llvm.fmuladd.f32(float %93, float %83, float %92)
  store float %94, ptr %48, align 4, !tbaa !73
  %95 = load float, ptr %49, align 4, !tbaa !73
  %96 = load float, ptr %50, align 4, !tbaa !73
  %97 = call float @llvm.fmuladd.f32(float %96, float %83, float %95)
  store float %97, ptr %51, align 4, !tbaa !73
  %98 = call float @normal_tri_v3(ptr noundef nonnull %52, ptr noundef %18, ptr noundef %55, ptr noundef %56) #8
  %99 = load i32, ptr %23, align 4, !tbaa !78
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.MVert, ptr %11, i64 %100
  %102 = icmp eq ptr %55, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load i32, ptr %53, align 4, !tbaa !92
  %105 = or i32 %104, 1
  store i32 %105, ptr %53, align 4, !tbaa !92
  br label %106

106:                                              ; preds = %88, %103, %85, %82
  %107 = icmp eq ptr %57, null
  br i1 %107, label %108, label %54, !llvm.loop !93

108:                                              ; preds = %106
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bvhtree_from_mesh_edges(ptr nocapture noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BVHCacheItem, align 8
  %7 = alloca %struct.BVHCacheItem, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [4 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 1) #8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store i32 2, ptr %7, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.BVHCacheItem, ptr %7, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !40
  %13 = load ptr, ptr %11, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %13, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %7) #8
  %14 = load ptr, ptr %12, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #8
  %15 = call ptr @DM_get_vert_array(ptr noundef %1, ptr noundef nonnull %8) #8
  %16 = call ptr @DM_get_edge_array(ptr noundef %1, ptr noundef nonnull %9) #8
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %73

18:                                               ; preds = %5
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @cache_rwlock, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  store i32 2, ptr %6, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BVHCacheItem, ptr %6, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !40
  %20 = load ptr, ptr %11, align 8, !tbaa !41
  call void @BLI_linklist_apply(ptr noundef %20, ptr noundef nonnull @bvhcacheitem_set_if_match, ptr noundef nonnull %6) #8
  %21 = load ptr, ptr %19, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 24
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = call i32 %25(ptr noundef %1) #8
  %27 = icmp ne ptr %15, null
  %28 = icmp ne ptr %16, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %71

30:                                               ; preds = %23
  %31 = trunc i32 %3 to i8
  %32 = trunc i32 %4 to i8
  %33 = call ptr @BLI_bvhtree_new(i32 noundef %26, float noundef %2, i8 noundef zeroext %31, i8 noundef zeroext %32) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %71, label %35

35:                                               ; preds = %30
  %36 = icmp sgt i32 %26, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %35
  %38 = getelementptr inbounds float, ptr %10, i64 1
  %39 = getelementptr inbounds float, ptr %10, i64 2
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %43 = zext nneg i32 %26 to i64
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi i64 [ 0, %37 ], [ %65, %44 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #8
  %46 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !95
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MVert, ptr %15, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !73
  store float %50, ptr %10, align 16, !tbaa !73
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !73
  store float %52, ptr %38, align 4, !tbaa !73
  %53 = getelementptr inbounds float, ptr %49, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !73
  store float %54, ptr %39, align 8, !tbaa !73
  %55 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %45, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !97
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MVert, ptr %15, i64 %57
  %59 = load float, ptr %58, align 4, !tbaa !73
  store float %59, ptr %40, align 4, !tbaa !73
  %60 = getelementptr inbounds float, ptr %58, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !73
  store float %61, ptr %41, align 16, !tbaa !73
  %62 = getelementptr inbounds float, ptr %58, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !73
  store float %63, ptr %42, align 4, !tbaa !73
  %64 = trunc i64 %45 to i32
  call void @BLI_bvhtree_insert(ptr noundef nonnull %33, i32 noundef %64, ptr noundef nonnull %10, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #8
  %65 = add nuw nsw i64 %45, 1
  %66 = icmp eq i64 %65, %43
  br i1 %66, label %67, label %44, !llvm.loop !98

67:                                               ; preds = %44, %35
  call void @BLI_bvhtree_balance(ptr noundef nonnull %33) #8
  %68 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %69 = call ptr %68(i64 noundef 16, ptr noundef nonnull @.str) #8
  store i32 2, ptr %69, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.BVHCacheItem, ptr %69, i64 0, i32 1
  store ptr %33, ptr %70, align 8, !tbaa !40
  call void @BLI_linklist_prepend(ptr noundef nonnull %11, ptr noundef nonnull %69) #8
  br label %71

71:                                               ; preds = %23, %67, %30, %18
  %72 = phi ptr [ %21, %18 ], [ %33, %67 ], [ null, %30 ], [ null, %23 ]
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @cache_rwlock) #8
  br label %73

73:                                               ; preds = %5, %71
  %74 = phi ptr [ %72, %71 ], [ %14, %5 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store ptr %74, ptr %0, align 8, !tbaa !49
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  store i8 1, ptr %77, align 8, !tbaa !51
  %78 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 1
  store ptr @mesh_edges_nearest_point, ptr %78, align 8, !tbaa !81
  %79 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 2
  store ptr null, ptr %79, align 8, !tbaa !82
  %80 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  store ptr %15, ptr %80, align 8, !tbaa !52
  %81 = load i8, ptr %8, align 1, !tbaa !53
  %82 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  store i8 %81, ptr %82, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 4
  store ptr %16, ptr %83, align 8, !tbaa !99
  %84 = load i8, ptr %9, align 1, !tbaa !53
  %85 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 8
  store i8 %84, ptr %85, align 2, !tbaa !100
  %86 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 9
  store float %2, ptr %86, align 4, !tbaa !56
  br label %97

87:                                               ; preds = %73
  %88 = load i8, ptr %8, align 1, !tbaa !53
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %91(ptr noundef %15) #8
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i8, ptr %9, align 1, !tbaa !53
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %96(ptr noundef %16) #8
  br label %97

97:                                               ; preds = %92, %95, %76
  %98 = load ptr, ptr %0, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  ret ptr %98
}

declare ptr @DM_get_edge_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mesh_edges_nearest_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MEdge, ptr %9, i64 %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %12 = load i32, ptr %11, align 4, !tbaa !95
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.MEdge, ptr %9, i64 %10, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !97
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %7, i64 %17
  call void @closest_to_line_segment_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %14, ptr noundef %18) #8
  %19 = load float, ptr %2, align 4, !tbaa !73
  %20 = load float, ptr %5, align 4, !tbaa !73
  %21 = fsub float %19, %20
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !73
  %24 = getelementptr inbounds float, ptr %5, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !73
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !73
  %29 = getelementptr inbounds float, ptr %5, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = fsub float %28, %30
  %32 = fmul float %26, %26
  %33 = call float @llvm.fmuladd.f32(float %21, float %21, float %32)
  %34 = call float @llvm.fmuladd.f32(float %31, float %31, float %33)
  %35 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !84
  %37 = fcmp olt float %34, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %4
  store i32 %1, ptr %3, align 4, !tbaa !86
  store float %34, ptr %35, align 4, !tbaa !84
  %39 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  store float %20, ptr %39, align 4, !tbaa !73
  %40 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 1
  store float %25, ptr %40, align 4, !tbaa !73
  %41 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 2
  store float %30, ptr %41, align 4, !tbaa !73
  %42 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %43 = load float, ptr %14, align 4, !tbaa !73
  %44 = load float, ptr %18, align 4, !tbaa !73
  %45 = fsub float %43, %44
  store float %45, ptr %42, align 4, !tbaa !73
  %46 = getelementptr inbounds float, ptr %14, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !73
  %48 = getelementptr inbounds float, ptr %18, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !73
  %50 = fsub float %47, %49
  %51 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2, i64 1
  store float %50, ptr %51, align 4, !tbaa !73
  %52 = getelementptr inbounds float, ptr %14, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !73
  %54 = getelementptr inbounds float, ptr %18, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !73
  %56 = fsub float %53, %55
  %57 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2, i64 2
  store float %56, ptr %57, align 4, !tbaa !73
  %58 = fmul float %50, %50
  %59 = call float @llvm.fmuladd.f32(float %45, float %45, float %58)
  %60 = call float @llvm.fmuladd.f32(float %56, float %56, float %59)
  %61 = fcmp ogt float %60, 0x38AA95A5C0000000
  br i1 %61, label %62, label %71

62:                                               ; preds = %38
  %63 = call float @sqrtf(float noundef %60) #8
  %64 = fdiv float 1.000000e+00, %63
  %65 = load float, ptr %42, align 4, !tbaa !73
  %66 = fmul float %65, %64
  store float %66, ptr %42, align 4, !tbaa !73
  %67 = load float, ptr %51, align 4, !tbaa !73
  %68 = fmul float %64, %67
  store float %68, ptr %51, align 4, !tbaa !73
  %69 = load float, ptr %57, align 4, !tbaa !73
  %70 = fmul float %64, %69
  br label %72

71:                                               ; preds = %38
  store float 0.000000e+00, ptr %42, align 4, !tbaa !73
  store float 0.000000e+00, ptr %51, align 4, !tbaa !73
  br label %72

72:                                               ; preds = %62, %71
  %73 = phi float [ 0.000000e+00, %71 ], [ %70, %62 ]
  store float %73, ptr %57, align 4, !tbaa !73
  br label %74

74:                                               ; preds = %72, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_bvhtree_from_mesh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %2) #8
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 8, !tbaa !54
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  tail call void %14(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 2, !tbaa !100
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  tail call void %22(ptr noundef %24) #8
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 1, !tbaa !83
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  tail call void %30(ptr noundef %32) #8
  br label %33

33:                                               ; preds = %29, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @bvhcacheitem_set_if_match(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = load i32, ptr %1, align 8, !tbaa !34
  %4 = load i32, ptr %0, align 8, !tbaa !34
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BVHCacheItem, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.BVHCacheItem, ptr %1, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @bvhcache_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr null, ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bvhcache_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @BLI_linklist_free(ptr noundef %2, ptr noundef nonnull @bvhcacheitem_free) #8
  store ptr null, ptr %0, align 8, !tbaa !41
  ret void
}

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bvhcacheitem_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.BVHCacheItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  tail call void @BLI_bvhtree_free(ptr noundef %3) #8
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %4(ptr noundef %0) #8
  ret void
}

declare void @closest_on_tri_to_point_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare zeroext i8 @isect_sweeping_sphere_tri_v3(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @closest_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BVHCacheItem", !36, i64 0, !39, i64 8}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!39, !39, i64 0}
!42 = !{!43, !39, i64 1104}
!43 = !{!"DerivedMesh", !44, i64 0, !44, i64 200, !44, i64 400, !44, i64 600, !44, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !39, i64 1032, !39, i64 1040, !36, i64 1048, !45, i64 1052, !36, i64 1056, !36, i64 1060, !39, i64 1064, !37, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!44 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!45 = !{!"float", !37, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !39, i64 0}
!50 = !{!"BVHTreeFromMesh", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !45, i64 52, !39, i64 56, !37, i64 64}
!51 = !{!50, !37, i64 64}
!52 = !{!50, !39, i64 24}
!53 = !{!37, !37, i64 0}
!54 = !{!50, !37, i64 48}
!55 = !{!50, !39, i64 40}
!56 = !{!50, !45, i64 52}
!57 = !{!50, !39, i64 56}
!58 = !{!59, !36, i64 32}
!59 = !{!"BMEditMesh", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 24, !36, i64 32, !39, i64 40, !39, i64 48, !60, i64 56, !39, i64 64, !36, i64 72, !39, i64 80, !36, i64 88, !61, i64 92, !61, i64 94, !39, i64 96, !36, i64 104}
!60 = !{!"long", !37, i64 0}
!61 = !{!"short", !37, i64 0}
!62 = !{!43, !39, i64 1120}
!63 = !{!59, !39, i64 24}
!64 = !{!65, !39, i64 32}
!65 = !{!"BMLoop", !66, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!66 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!67 = !{!66, !37, i64 13}
!68 = !{!69, !39, i64 24}
!69 = !{!"BMFace", !66, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !61, i64 48}
!70 = !{!65, !39, i64 16}
!71 = !{!65, !39, i64 56}
!72 = distinct !{!72, !47, !48}
!73 = !{!45, !45, i64 0}
!74 = distinct !{!74, !47, !48}
!75 = !{!76, !36, i64 0}
!76 = !{!"MFace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !61, i64 16, !37, i64 18, !37, i64 19}
!77 = !{!76, !36, i64 4}
!78 = !{!76, !36, i64 8}
!79 = !{!76, !36, i64 12}
!80 = distinct !{!80, !47, !48}
!81 = !{!50, !39, i64 8}
!82 = !{!50, !39, i64 16}
!83 = !{!50, !37, i64 49}
!84 = !{!85, !45, i64 28}
!85 = !{!"BVHTreeNearest", !36, i64 0, !37, i64 4, !37, i64 16, !45, i64 28, !36, i64 32}
!86 = !{!85, !36, i64 0}
!87 = !{!88, !45, i64 28}
!88 = !{!"BVHTreeRayHit", !36, i64 0, !37, i64 4, !37, i64 16, !45, i64 28, !36, i64 32}
!89 = !{!88, !36, i64 0}
!90 = !{!85, !36, i64 32}
!91 = distinct !{!91, !47, !48}
!92 = !{!88, !36, i64 32}
!93 = distinct !{!93, !47, !48}
!94 = !{!43, !39, i64 1112}
!95 = !{!96, !36, i64 0}
!96 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !61, i64 10}
!97 = !{!96, !36, i64 4}
!98 = distinct !{!98, !47, !48}
!99 = !{!50, !39, i64 32}
!100 = !{!50, !37, i64 50}
