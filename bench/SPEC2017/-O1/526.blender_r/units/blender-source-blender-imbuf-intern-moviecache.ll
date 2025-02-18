; ModuleID = 'blender/source/blender/imbuf/intern/moviecache.c'
source_filename = "blender/source/blender/imbuf/intern/moviecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MovieCacheItem = type { ptr, ptr, ptr, ptr }
%struct.MovieCache = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.MovieCacheKey = type { ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@limitor = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"MovieCache\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MovieClip ImBuf cache hash\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"movie cache last user key\00", align 1
@limitor_lock = internal global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"movieclip cache frames\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"movieclip cache segments\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_init() local_unnamed_addr #0 {
  %1 = tail call ptr @new_MEM_CacheLimiter(ptr noundef nonnull @IMB_moviecache_destructor, ptr noundef nonnull @get_item_size) #10
  store ptr %1, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_ItemPriority_Func_set(ptr noundef %1, ptr noundef nonnull @get_item_priority) #10
  %2 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr noundef %2, ptr noundef nonnull @get_item_destroyable) #10
  ret void
}

declare ptr @new_MEM_CacheLimiter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @IMB_moviecache_destructor(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !40
  tail call void @IMB_freeImBuf(ptr noundef nonnull %5) #10
  %9 = getelementptr inbounds %struct.MovieCache, ptr %8, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #10
  store ptr null, ptr %9, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %7, %12, %3, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @get_item_size(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i64 @IMB_get_size_in_memory(ptr noundef nonnull %3)
  %7 = add i64 %6, 32
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i64 [ %7, %5 ], [ 32, %1 ]
  ret i64 %9
}

declare void @MEM_CacheLimiter_ItemPriority_Func_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @get_item_priority(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.MovieCache, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieCache, ptr %3, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call i32 %5(ptr noundef %9, ptr noundef %11) #10
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ %1, %2 ]
  ret i32 %14
}

declare void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @get_item_destroyable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = and i32 %5, 34
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_destruct() local_unnamed_addr #0 {
  %1 = load ptr, ptr @limitor, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @delete_MEM_CacheLimiter(ptr noundef nonnull %1) #10
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare void @delete_MEM_CacheLimiter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IMB_moviecache_create(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 192, ptr noundef nonnull @.str) #10
  %7 = tail call ptr @BLI_strncpy(ptr noundef %6, ptr noundef %0, i64 noundef 64) #10
  %8 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 8
  store ptr %8, ptr %9, align 8, !tbaa !52
  %10 = tail call ptr @BLI_mempool_create(i32 noundef 32, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 9
  store ptr %10, ptr %11, align 8, !tbaa !53
  %12 = tail call ptr @BLI_mempool_create(i32 noundef %1, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 10
  store ptr %12, ptr %13, align 8, !tbaa !54
  %14 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @moviecache_hashhash, ptr noundef nonnull @moviecache_hashcmp, ptr noundef nonnull @.str.1) #10
  %15 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 11
  store i32 %1, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 2
  store ptr %2, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 3
  store ptr %3, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 15
  store i32 -1, ptr %19, align 8, !tbaa !59
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @moviecache_hashhash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.MovieCache, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.MovieCacheKey, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 %4(ptr noundef %6) #10
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @moviecache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.MovieCache, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.MovieCacheKey, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.MovieCacheKey, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = tail call zeroext i8 %5(ptr noundef %7, ptr noundef %9) #10
  ret i8 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMB_moviecache_set_getdata_callback(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_set_priority_callback(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = sext i32 %7 to i64
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @.str.2) #10
  %10 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 12
  store ptr %9, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 5
  store ptr %1, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 6
  store ptr %2, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 7
  store ptr %3, ptr %13, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @do_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @limitor, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call ptr @new_MEM_CacheLimiter(ptr noundef nonnull @IMB_moviecache_destructor, ptr noundef nonnull @get_item_size) #10
  store ptr %8, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_ItemPriority_Func_set(ptr noundef %8, ptr noundef nonnull @get_item_priority) #10
  %9 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr noundef %9, ptr noundef nonnull @get_item_destroyable) #10
  br label %10

10:                                               ; preds = %7, %4
  tail call void @IMB_refImBuf(ptr noundef %2) #10
  %11 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = tail call ptr @BLI_mempool_alloc(ptr noundef %12) #10
  store ptr %0, ptr %13, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = tail call ptr @BLI_mempool_alloc(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.MovieCacheKey, ptr %13, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = sext i32 %19 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %1, i64 %20, i1 false)
  %21 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = tail call ptr @BLI_mempool_alloc(ptr noundef %22) #10
  %24 = getelementptr inbounds %struct.MovieCacheItem, ptr %23, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !38
  store ptr %0, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.MovieCacheItem, ptr %23, i64 0, i32 2
  %26 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.MovieCacheItem, ptr %23, i64 0, i32 3
  %31 = tail call ptr %27(ptr noundef %1) #10
  store ptr %31, ptr %30, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %29, %10
  %33 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %34, ptr noundef nonnull %13, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  %36 = load ptr, ptr %33, align 8, !tbaa !55
  tail call void @BLI_ghash_insert(ptr noundef %36, ptr noundef nonnull %13, ptr noundef nonnull %23) #10
  %37 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, ptr %18, align 8, !tbaa !56
  %42 = sext i32 %41 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr align 1 %1, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %40, %32
  %44 = icmp eq i8 %3, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  tail call void @BLI_mutex_lock(ptr noundef nonnull @limitor_lock) #10
  %46 = load ptr, ptr @limitor, align 8, !tbaa !34
  %47 = tail call ptr @MEM_CacheLimiter_insert(ptr noundef %46, ptr noundef nonnull %23) #10
  store ptr %47, ptr %25, align 8, !tbaa !66
  tail call void @MEM_CacheLimiter_ref(ptr noundef %47) #10
  %48 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_enforce_limits(ptr noundef %48) #10
  %49 = load ptr, ptr %25, align 8, !tbaa !66
  tail call void @MEM_CacheLimiter_unref(ptr noundef %49) #10
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @limitor_lock) #10
  br label %55

50:                                               ; preds = %43
  %51 = load ptr, ptr @limitor, align 8, !tbaa !34
  %52 = tail call ptr @MEM_CacheLimiter_insert(ptr noundef %51, ptr noundef nonnull %23) #10
  store ptr %52, ptr %25, align 8, !tbaa !66
  tail call void @MEM_CacheLimiter_ref(ptr noundef %52) #10
  %53 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_enforce_limits(ptr noundef %53) #10
  %54 = load ptr, ptr %25, align 8, !tbaa !66
  tail call void @MEM_CacheLimiter_unref(ptr noundef %54) #10
  br label %55

55:                                               ; preds = %50, %45
  %56 = load ptr, ptr %33, align 8, !tbaa !55
  %57 = tail call ptr @BLI_ghashIterator_new(ptr noundef %56) #10
  %58 = getelementptr inbounds %struct.GHashIterator, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !67
  %60 = icmp eq ptr %59, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %55, %73
  %62 = phi ptr [ %74, %73 ], [ %59, %55 ]
  %63 = getelementptr inbounds %struct._gh_Entry, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = getelementptr inbounds %struct._gh_Entry, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  tail call void @BLI_ghashIterator_step(ptr noundef %57) #10
  %67 = getelementptr inbounds %struct.MovieCacheItem, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load ptr, ptr %33, align 8, !tbaa !55
  %72 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %71, ptr noundef %64, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  br label %73

73:                                               ; preds = %70, %61
  %74 = load ptr, ptr %58, align 8, !tbaa !67
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %61, !llvm.loop !72

76:                                               ; preds = %73, %55
  tail call void @BLI_ghashIterator_free(ptr noundef %57) #10
  %77 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %78 = load ptr, ptr %77, align 8, !tbaa !41
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %81(ptr noundef nonnull %78) #10
  store ptr null, ptr %77, align 8, !tbaa !41
  br label %82

82:                                               ; preds = %80, %76
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @IMB_moviecache_put_if_possible(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i64 @IMB_get_size_in_memory(ptr noundef %2)
  %5 = tail call i64 @MEM_CacheLimiter_get_maximum() #10
  tail call void @BLI_mutex_lock(ptr noundef nonnull @limitor_lock) #10
  %6 = load ptr, ptr @limitor, align 8, !tbaa !34
  %7 = tail call i64 @MEM_CacheLimiter_get_memory_in_use(ptr noundef %6) #10
  %8 = add i64 %7, %4
  %9 = icmp ugt i64 %8, %5
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @do_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i8 [ 1, %10 ], [ 0, %3 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @limitor_lock) #10
  ret i8 %12
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @IMB_get_size_in_memory(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %3 = load i32, ptr %2, align 4, !tbaa !47
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  %14 = or disjoint i64 %10, 4
  %15 = select i1 %13, i64 %10, i64 %14
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !77
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %15, %18
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !78
  %22 = sext i32 %21 to i64
  %23 = mul i64 %19, %22
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !79
  %26 = sext i32 %25 to i64
  %27 = mul i64 %23, %26
  %28 = add i64 %27, 2480
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %30 = load i32, ptr %29, align 8, !tbaa !80
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %6
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i64 [ 0, %32 ], [ %45, %43 ]
  %36 = phi i64 [ %28, %32 ], [ %44, %43 ]
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = tail call fastcc i64 @IMB_get_size_in_memory(ptr noundef nonnull %38)
  %42 = add i64 %41, %36
  br label %43

43:                                               ; preds = %34, %40
  %44 = phi i64 [ %42, %40 ], [ %36, %34 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = icmp eq i64 %45, %33
  br i1 %46, label %47, label %34, !llvm.loop !81

47:                                               ; preds = %43, %6
  %48 = phi i64 [ %28, %6 ], [ %44, %43 ]
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 14
  %54 = load i32, ptr %53, align 4, !tbaa !83
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !84
  %59 = sext i32 %58 to i64
  %60 = mul i64 %56, %59
  %61 = add i64 %60, %48
  br label %62

62:                                               ; preds = %47, %52, %1
  %63 = phi i64 [ 0, %1 ], [ %61, %52 ], [ %48, %47 ]
  ret i64 %63
}

declare i64 @MEM_CacheLimiter_get_maximum() local_unnamed_addr #1

declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #1

declare i64 @MEM_CacheLimiter_get_memory_in_use(ptr noundef) local_unnamed_addr #1

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_moviecache_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieCacheKey, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr %0, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.MovieCacheKey, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %3) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MovieCacheItem, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  call void @BLI_mutex_lock(ptr noundef nonnull @limitor_lock) #10
  %14 = getelementptr inbounds %struct.MovieCacheItem, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  call void @MEM_CacheLimiter_touch(ptr noundef %15) #10
  call void @BLI_mutex_unlock(ptr noundef nonnull @limitor_lock) #10
  %16 = load ptr, ptr %10, align 8, !tbaa !38
  call void @IMB_refImBuf(ptr noundef %16) #10
  %17 = load ptr, ptr %10, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %2, %9, %13
  %19 = phi ptr [ %17, %13 ], [ null, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret ptr %19
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @MEM_CacheLimiter_touch(ptr noundef) local_unnamed_addr #1

declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IMB_moviecache_has_frame(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieCacheKey, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr %0, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.MovieCacheKey, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %3) #10
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  %4 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @BLI_mempool_destroy(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @BLI_mempool_destroy(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @BLI_mempool_destroy(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef %0) #10
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @moviecache_keyfree(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.MovieCache, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.MovieCacheKey, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  tail call void @BLI_mempool_free(ptr noundef %4, ptr noundef %6) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.MovieCache, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void @BLI_mempool_free(ptr noundef %9, ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @moviecache_valfree(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  tail call void @MEM_CacheLimiter_unmanage(ptr noundef %8) #10
  %9 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @IMB_freeImBuf(ptr noundef %9) #10
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MovieCache, ptr %2, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef nonnull %12) #10
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = load ptr, ptr %0, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.MovieCache, ptr %20, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  tail call void @BLI_mempool_free(ptr noundef %22, ptr noundef nonnull %0) #10
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_cleanup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = tail call ptr @BLI_ghashIterator_new(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3, %22
  %11 = phi ptr [ %23, %22 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct._gh_Entry, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  tail call void @BLI_ghashIterator_step(ptr noundef %6) #10
  %16 = getelementptr inbounds %struct.MovieCacheItem, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load ptr, ptr %4, align 8, !tbaa !55
  %21 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %20, ptr noundef %13, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  br label %22

22:                                               ; preds = %19, %10
  %23 = load ptr, ptr %7, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !72

25:                                               ; preds = %22, %3
  tail call void @BLI_ghashIterator_free(ptr noundef %6) #10
  %26 = load ptr, ptr %4, align 8, !tbaa !55
  %27 = tail call ptr @BLI_ghashIterator_new(ptr noundef %26) #10
  %28 = getelementptr inbounds %struct.GHashIterator, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25, %46
  %32 = phi ptr [ %47, %46 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  tail call void @BLI_ghashIterator_step(ptr noundef %27) #10
  %37 = getelementptr inbounds %struct.MovieCacheItem, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.MovieCacheKey, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = tail call zeroext i8 %1(ptr noundef %38, ptr noundef %40, ptr noundef %2) #10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load ptr, ptr %4, align 8, !tbaa !55
  %45 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %44, ptr noundef %34, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  br label %46

46:                                               ; preds = %43, %31
  %47 = load ptr, ptr %28, align 8, !tbaa !67
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %31, !llvm.loop !85

49:                                               ; preds = %46, %25
  tail call void @BLI_ghashIterator_free(ptr noundef %27) #10
  ret void
}

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #1

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecache_get_cache_segments(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, ptr %3, align 4, !tbaa !86
  store ptr null, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %156, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 16
  %18 = load i32, ptr %17, align 4, !tbaa !87
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %27, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %22) #10
  br label %26

26:                                               ; preds = %24, %20
  store ptr null, ptr %21, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !88
  store i32 %33, ptr %3, align 4, !tbaa !86
  store ptr %29, ptr %4, align 8, !tbaa !34
  br label %156

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = tail call i32 @BLI_ghash_size(ptr noundef %36) #10
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = sext i32 %37 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.3) #10
  %42 = load ptr, ptr %35, align 8, !tbaa !55
  %43 = tail call ptr @BLI_ghashIterator_new(ptr noundef %42) #10
  %44 = getelementptr inbounds %struct.GHashIterator, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = icmp eq ptr %45, null
  br i1 %46, label %75, label %47

47:                                               ; preds = %34, %71
  %48 = phi ptr [ %73, %71 ], [ %45, %34 ]
  %49 = phi i32 [ %72, %71 ], [ 0, %34 ]
  %50 = getelementptr inbounds %struct._gh_Entry, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = getelementptr inbounds %struct._gh_Entry, ptr %48, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %54 = getelementptr inbounds %struct.MovieCacheItem, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %47
  %58 = load ptr, ptr %9, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct.MovieCacheKey, ptr %51, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  call void %58(ptr noundef %60, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %61 = load i32, ptr %7, align 4, !tbaa !86
  %62 = icmp eq i32 %61, %1
  %63 = load i32, ptr %8, align 4
  %64 = icmp eq i32 %63, %2
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i32, ptr %6, align 4, !tbaa !86
  %68 = add nsw i32 %49, 1
  %69 = sext i32 %49 to i64
  %70 = getelementptr inbounds i32, ptr %41, i64 %69
  store i32 %67, ptr %70, align 4, !tbaa !86
  br label %71

71:                                               ; preds = %57, %66, %47
  %72 = phi i32 [ %68, %66 ], [ %49, %57 ], [ %49, %47 ]
  call void @BLI_ghashIterator_step(ptr noundef %43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %73 = load ptr, ptr %44, align 8, !tbaa !67
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %47, !llvm.loop !89

75:                                               ; preds = %71, %34
  call void @BLI_ghashIterator_free(ptr noundef %43) #10
  call void @qsort(ptr noundef %41, i64 noundef %39, i64 noundef 4, ptr noundef nonnull @compare_int) #10
  %76 = icmp sgt i32 %37, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %75
  %78 = add nsw i32 %37, -1
  %79 = zext i32 %78 to i64
  %80 = zext nneg i32 %37 to i64
  br label %81

81:                                               ; preds = %77, %94
  %82 = phi i64 [ 0, %77 ], [ %99, %94 ]
  %83 = phi i32 [ 0, %77 ], [ %98, %94 ]
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds i32, ptr %41, i64 %82
  %87 = load i32, ptr %86, align 4, !tbaa !86
  %88 = getelementptr i32, ptr %86, i64 -1
  %89 = load i32, ptr %88, align 4, !tbaa !86
  %90 = sub nsw i32 %87, %89
  %91 = icmp ne i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = add nsw i32 %83, %92
  br label %94

94:                                               ; preds = %85, %81
  %95 = phi i32 [ %83, %81 ], [ %93, %85 ]
  %96 = icmp eq i64 %82, %79
  %97 = zext i1 %96 to i32
  %98 = add nsw i32 %95, %97
  %99 = add nuw nsw i64 %82, 1
  %100 = icmp eq i64 %99, %80
  br i1 %100, label %101, label %81, !llvm.loop !90

101:                                              ; preds = %94, %75
  %102 = phi i32 [ 0, %75 ], [ %98, %94 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %154, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %106 = sext i32 %102 to i64
  %107 = shl nsw i64 %106, 3
  %108 = call ptr %105(i64 noundef %107, ptr noundef nonnull @.str.4) #10
  %109 = icmp sgt i32 %37, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %104
  %111 = add nsw i32 %37, -1
  %112 = zext i32 %111 to i64
  %113 = zext nneg i32 %37 to i64
  br label %114

114:                                              ; preds = %110, %147
  %115 = phi i64 [ 0, %110 ], [ %149, %147 ]
  %116 = phi i32 [ 0, %110 ], [ %148, %147 ]
  %117 = icmp eq i64 %115, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, ptr %41, align 4, !tbaa !86
  %120 = add nsw i32 %116, 1
  %121 = sext i32 %116 to i64
  %122 = getelementptr inbounds i32, ptr %108, i64 %121
  store i32 %119, ptr %122, align 4, !tbaa !86
  br label %123

123:                                              ; preds = %118, %114
  %124 = phi i32 [ %120, %118 ], [ %116, %114 ]
  br i1 %117, label %138, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds i32, ptr %41, i64 %115
  %127 = load i32, ptr %126, align 4, !tbaa !86
  %128 = getelementptr i32, ptr %126, i64 -1
  %129 = load i32, ptr %128, align 4, !tbaa !86
  %130 = sub nsw i32 %127, %129
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = sext i32 %124 to i64
  %134 = getelementptr inbounds i32, ptr %108, i64 %133
  store i32 %129, ptr %134, align 4, !tbaa !86
  %135 = load i32, ptr %126, align 4, !tbaa !86
  %136 = add nsw i32 %124, 2
  %137 = getelementptr i32, ptr %134, i64 1
  store i32 %135, ptr %137, align 4, !tbaa !86
  br label %138

138:                                              ; preds = %132, %125, %123
  %139 = phi i32 [ %136, %132 ], [ %124, %125 ], [ %124, %123 ]
  %140 = icmp eq i64 %115, %112
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = getelementptr inbounds i32, ptr %41, i64 %115
  %143 = load i32, ptr %142, align 4, !tbaa !86
  %144 = add nsw i32 %139, 1
  %145 = sext i32 %139 to i64
  %146 = getelementptr inbounds i32, ptr %108, i64 %145
  store i32 %143, ptr %146, align 4, !tbaa !86
  br label %147

147:                                              ; preds = %138, %141
  %148 = phi i32 [ %144, %141 ], [ %139, %138 ]
  %149 = add nuw nsw i64 %115, 1
  %150 = icmp eq i64 %149, %113
  br i1 %150, label %151, label %114, !llvm.loop !91

151:                                              ; preds = %147, %104
  store i32 %102, ptr %3, align 4, !tbaa !86
  store ptr %108, ptr %4, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 13
  store i32 %102, ptr %152, align 8, !tbaa !88
  store ptr %108, ptr %28, align 8, !tbaa !41
  store i32 %1, ptr %13, align 8, !tbaa !59
  %153 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 16
  store i32 %2, ptr %153, align 4, !tbaa !87
  br label %154

154:                                              ; preds = %151, %101
  %155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %155(ptr noundef %41) #10
  br label %156

156:                                              ; preds = %5, %154, %31
  ret void
}

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !86
  %4 = load i32, ptr %1, align 4, !tbaa !86
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_moviecacheIter_new(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call ptr @BLI_ghashIterator_new(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1, %20
  %9 = phi ptr [ %21, %20 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct._gh_Entry, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #10
  %14 = getelementptr inbounds %struct.MovieCacheItem, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load ptr, ptr %2, align 8, !tbaa !55
  %19 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %18, ptr noundef %11, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  br label %20

20:                                               ; preds = %17, %8
  %21 = load ptr, ptr %5, align 8, !tbaa !67
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !72

23:                                               ; preds = %20, %1
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #10
  %24 = load ptr, ptr %2, align 8, !tbaa !55
  %25 = tail call ptr @BLI_ghashIterator_new(ptr noundef %24) #10
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecacheIter_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_ghashIterator_free(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @IMB_moviecacheIter_done(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_moviecacheIter_step(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @IMB_moviecacheIter_getImBuf(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.MovieCacheItem, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @IMB_moviecacheIter_getUserKey(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.MovieCacheKey, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  ret ptr %7
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @MEM_CacheLimiter_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @MEM_CacheLimiter_ref(ptr noundef) local_unnamed_addr #1

declare void @MEM_CacheLimiter_enforce_limits(ptr noundef) local_unnamed_addr #1

declare void @MEM_CacheLimiter_unref(ptr noundef) local_unnamed_addr #1

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @MEM_CacheLimiter_unmanage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"MovieCacheItem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!40 = !{!39, !35, i64 0}
!41 = !{!42, !35, i64 168}
!42 = !{!"MovieCache", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !43, i64 144, !35, i64 152, !43, i64 160, !35, i64 168, !43, i64 176, !43, i64 180, !43, i64 184}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !35, i64 104}
!45 = !{!42, !35, i64 152}
!46 = !{!39, !35, i64 24}
!47 = !{!48, !43, i64 292}
!48 = !{!"ImBuf", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !49, i64 112, !36, i64 120, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !35, i64 296, !35, i64 304, !43, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !43, i64 2376, !35, i64 2384, !43, i64 2392, !43, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !43, i64 2432, !50, i64 2436, !51, i64 2456}
!49 = !{!"float", !36, i64 0}
!50 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!51 = !{!"DDSData", !43, i64 0, !43, i64 4, !35, i64 8, !43, i64 16}
!52 = !{!42, !35, i64 120}
!53 = !{!42, !35, i64 128}
!54 = !{!42, !35, i64 136}
!55 = !{!42, !35, i64 64}
!56 = !{!42, !43, i64 144}
!57 = !{!42, !35, i64 72}
!58 = !{!42, !35, i64 80}
!59 = !{!42, !43, i64 176}
!60 = !{!61, !35, i64 0}
!61 = !{!"MovieCacheKey", !35, i64 0, !35, i64 8}
!62 = !{!61, !35, i64 8}
!63 = !{!42, !35, i64 88}
!64 = !{!42, !35, i64 96}
!65 = !{!42, !35, i64 112}
!66 = !{!39, !35, i64 16}
!67 = !{!68, !35, i64 8}
!68 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !43, i64 16}
!69 = !{!70, !35, i64 8}
!70 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!71 = !{!70, !35, i64 16}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!48, !35, i64 40}
!76 = !{!48, !35, i64 48}
!77 = !{!48, !43, i64 16}
!78 = !{!48, !43, i64 20}
!79 = !{!48, !43, i64 28}
!80 = !{!48, !43, i64 280}
!81 = distinct !{!81, !73, !74}
!82 = !{!48, !35, i64 88}
!83 = !{!48, !43, i64 84}
!84 = !{!48, !43, i64 80}
!85 = distinct !{!85, !73, !74}
!86 = !{!43, !43, i64 0}
!87 = !{!42, !43, i64 180}
!88 = !{!42, !43, i64 160}
!89 = distinct !{!89, !73, !74}
!90 = distinct !{!90, !73, !74}
!91 = distinct !{!91, !73, !74}
