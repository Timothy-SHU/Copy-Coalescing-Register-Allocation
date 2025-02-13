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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecache_init() local_unnamed_addr #0 {
  %1 = tail call ptr @new_MEM_CacheLimiter(ptr noundef nonnull @IMB_moviecache_destructor, ptr noundef nonnull @get_item_size) #10
  store ptr %1, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_ItemPriority_Func_set(ptr noundef %1, ptr noundef nonnull @get_item_priority) #10
  %2 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr noundef %2, ptr noundef nonnull @get_item_destroyable) #10
  ret void
}

; Function Attrs: optsize
declare ptr @new_MEM_CacheLimiter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @IMB_moviecache_destructor(ptr noundef %0) #0 !PGOFuncName !38 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @IMB_freeImBuf(ptr noundef nonnull %5) #10
  %9 = getelementptr inbounds %struct.MovieCache, ptr %8, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #10
  store ptr null, ptr %9, align 8, !tbaa !42
  br label %14

14:                                               ; preds = %7, %12, %3, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @get_item_size(ptr nocapture noundef readonly %0) #2 !PGOFuncName !45 {
  %2 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i64 @IMB_get_size_in_memory(ptr noundef nonnull %3) #11
  %7 = add i64 %6, 32
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i64 [ %7, %5 ], [ 32, %1 ]
  ret i64 %9
}

; Function Attrs: optsize
declare void @MEM_CacheLimiter_ItemPriority_Func_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @get_item_priority(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.MovieCache, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieCache, ptr %3, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 %5(ptr noundef %9, ptr noundef %11) #10
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ %1, %2 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @get_item_destroyable(ptr nocapture noundef readonly %0) #3 !PGOFuncName !50 {
  %2 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = and i32 %5, 34
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @delete_MEM_CacheLimiter(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_moviecache_create(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 192, ptr noundef nonnull @.str) #10
  %7 = tail call ptr @BLI_strncpy(ptr noundef %6, ptr noundef %0, i64 noundef 64) #10
  %8 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 8
  store ptr %8, ptr %9, align 8, !tbaa !56
  %10 = tail call ptr @BLI_mempool_create(i32 noundef 32, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 9
  store ptr %10, ptr %11, align 8, !tbaa !57
  %12 = tail call ptr @BLI_mempool_create(i32 noundef %1, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 10
  store ptr %12, ptr %13, align 8, !tbaa !58
  %14 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @moviecache_hashhash, ptr noundef nonnull @moviecache_hashcmp, ptr noundef nonnull @.str.1) #10
  %15 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 11
  store i32 %1, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 2
  store ptr %2, ptr %17, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 3
  store ptr %3, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.MovieCache, ptr %6, i64 0, i32 15
  store i32 -1, ptr %19, align 8, !tbaa !63
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @moviecache_hashhash(ptr nocapture noundef readonly %0) #0 !PGOFuncName !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.MovieCache, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.MovieCacheKey, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call i32 %4(ptr noundef %6) #10
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @moviecache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !68 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.MovieCache, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.MovieCacheKey, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.MovieCacheKey, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call zeroext i8 %5(ptr noundef %7, ptr noundef %9) #10
  ret i8 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @IMB_moviecache_set_getdata_callback(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecache_set_priority_callback(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = sext i32 %7 to i64
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @.str.2) #10
  %10 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 12
  store ptr %9, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 5
  store ptr %1, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 6
  store ptr %2, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 7
  store ptr %3, ptr %13, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @do_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !72 {
  %5 = load ptr, ptr @limitor, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @IMB_moviecache_init() #11
  br label %8

8:                                                ; preds = %7, %4
  tail call void @IMB_refImBuf(ptr noundef %2) #10
  %9 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = tail call ptr @BLI_mempool_alloc(ptr noundef %10) #10
  store ptr %0, ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = tail call ptr @BLI_mempool_alloc(ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.MovieCacheKey, ptr %11, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !60
  %18 = sext i32 %17 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = tail call ptr @BLI_mempool_alloc(ptr noundef %20) #10
  %22 = getelementptr inbounds %struct.MovieCacheItem, ptr %21, i64 0, i32 1
  store ptr %2, ptr %22, align 8, !tbaa !39
  store ptr %0, ptr %21, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.MovieCacheItem, ptr %21, i64 0, i32 2
  %24 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.MovieCacheItem, ptr %21, i64 0, i32 3
  %29 = tail call ptr %25(ptr noundef %1) #10
  store ptr %29, ptr %28, align 8, !tbaa !49
  br label %30

30:                                               ; preds = %27, %8
  %31 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %32, ptr noundef nonnull %11, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  %34 = load ptr, ptr %31, align 8, !tbaa !59
  tail call void @BLI_ghash_insert(ptr noundef %34, ptr noundef nonnull %11, ptr noundef nonnull %21) #10
  %35 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, ptr %16, align 8, !tbaa !60
  %40 = sext i32 %39 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr align 1 %1, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %38, %30
  %42 = icmp eq i8 %3, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  tail call void @BLI_mutex_lock(ptr noundef nonnull @limitor_lock) #10
  %44 = load ptr, ptr @limitor, align 8, !tbaa !34
  %45 = tail call ptr @MEM_CacheLimiter_insert(ptr noundef %44, ptr noundef nonnull %21) #10
  store ptr %45, ptr %23, align 8, !tbaa !73
  tail call void @MEM_CacheLimiter_ref(ptr noundef %45) #10
  %46 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_enforce_limits(ptr noundef %46) #10
  %47 = load ptr, ptr %23, align 8, !tbaa !73
  tail call void @MEM_CacheLimiter_unref(ptr noundef %47) #10
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @limitor_lock) #10
  br label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr @limitor, align 8, !tbaa !34
  %50 = tail call ptr @MEM_CacheLimiter_insert(ptr noundef %49, ptr noundef nonnull %21) #10
  store ptr %50, ptr %23, align 8, !tbaa !73
  tail call void @MEM_CacheLimiter_ref(ptr noundef %50) #10
  %51 = load ptr, ptr @limitor, align 8, !tbaa !34
  tail call void @MEM_CacheLimiter_enforce_limits(ptr noundef %51) #10
  %52 = load ptr, ptr %23, align 8, !tbaa !73
  tail call void @MEM_CacheLimiter_unref(ptr noundef %52) #10
  br label %53

53:                                               ; preds = %48, %43
  tail call fastcc void @check_unused_keys(ptr noundef nonnull %0) #11
  %54 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %58(ptr noundef nonnull %55) #10
  store ptr null, ptr %54, align 8, !tbaa !42
  br label %59

59:                                               ; preds = %57, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IMB_moviecache_put_if_possible(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i64 @IMB_get_size_in_memory(ptr noundef %2) #11
  %5 = tail call i64 @MEM_CacheLimiter_get_maximum() #10
  tail call void @BLI_mutex_lock(ptr noundef nonnull @limitor_lock) #10
  %6 = load ptr, ptr @limitor, align 8, !tbaa !34
  %7 = tail call i64 @MEM_CacheLimiter_get_memory_in_use(ptr noundef %6) #10
  %8 = add i64 %7, %4
  %9 = icmp ugt i64 %8, %5
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @do_moviecache_put(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #11
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i8 [ 1, %10 ], [ 0, %3 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @limitor_lock) #10
  ret i8 %12
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @IMB_get_size_in_memory(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %3 = load i32, ptr %2, align 4, !tbaa !51
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
  %41 = tail call fastcc i64 @IMB_get_size_in_memory(ptr noundef nonnull %38) #11
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
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 14
  %54 = load i32, ptr %53, align 4, !tbaa !84
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !85
  %59 = sext i32 %58 to i64
  %60 = mul i64 %56, %59
  %61 = add i64 %60, %48
  br label %62

62:                                               ; preds = %47, %52, %1
  %63 = phi i64 [ 0, %1 ], [ %61, %52 ], [ %48, %47 ]
  ret i64 %63
}

; Function Attrs: optsize
declare i64 @MEM_CacheLimiter_get_maximum() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @MEM_CacheLimiter_get_memory_in_use(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_moviecache_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieCacheKey, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.MovieCacheKey, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %3) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MovieCacheItem, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  call void @BLI_mutex_lock(ptr noundef nonnull @limitor_lock) #10
  %14 = getelementptr inbounds %struct.MovieCacheItem, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  call void @MEM_CacheLimiter_touch(ptr noundef %15) #10
  call void @BLI_mutex_unlock(ptr noundef nonnull @limitor_lock) #10
  %16 = load ptr, ptr %10, align 8, !tbaa !39
  call void @IMB_refImBuf(ptr noundef %16) #10
  %17 = load ptr, ptr %10, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %2, %9, %13
  %19 = phi ptr [ %17, %13 ], [ null, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MEM_CacheLimiter_touch(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_moviecache_has_frame(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieCacheKey, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.MovieCacheKey, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %3) #10
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecache_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  %4 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  tail call void @BLI_mempool_destroy(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @BLI_mempool_destroy(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @BLI_mempool_destroy(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @moviecache_keyfree(ptr noundef %0) #0 !PGOFuncName !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.MovieCache, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.MovieCacheKey, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  tail call void @BLI_mempool_free(ptr noundef %4, ptr noundef %6) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.MovieCache, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  tail call void @BLI_mempool_free(ptr noundef %9, ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @moviecache_valfree(ptr noundef %0) #0 !PGOFuncName !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  tail call void @MEM_CacheLimiter_unmanage(ptr noundef %8) #10
  %9 = load ptr, ptr %3, align 8, !tbaa !39
  tail call void @IMB_freeImBuf(ptr noundef %9) #10
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.MovieCacheItem, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MovieCache, ptr %2, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef nonnull %12) #10
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = load ptr, ptr %0, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.MovieCache, ptr %20, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  tail call void @BLI_mempool_free(ptr noundef %22, ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecache_cleanup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @check_unused_keys(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = tail call ptr @BLI_ghashIterator_new(ptr noundef %5) #10
  %7 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %6) #11, !range !88
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3, %21
  %10 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %6) #11
  %11 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %6) #11
  tail call void @BLI_ghashIterator_step(ptr noundef %6) #10
  %12 = getelementptr inbounds %struct.MovieCacheItem, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.MovieCacheKey, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call zeroext i8 %1(ptr noundef %13, ptr noundef %15, ptr noundef %2) #10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %4, align 8, !tbaa !59
  %20 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %19, ptr noundef nonnull %10, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  br label %21

21:                                               ; preds = %18, %9
  %22 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %6) #11, !range !88
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %9, label %24, !llvm.loop !89

24:                                               ; preds = %21, %3
  tail call void @BLI_ghashIterator_free(ptr noundef %6) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_unused_keys(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call ptr @BLI_ghashIterator_new(ptr noundef %3) #10
  %5 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #11, !range !88
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1, %16
  %8 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %4) #11
  %9 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %4) #11
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #10
  %10 = getelementptr inbounds %struct.MovieCacheItem, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !tbaa !59
  %15 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %14, ptr noundef %8, ptr noundef nonnull @moviecache_keyfree, ptr noundef nonnull @moviecache_valfree) #10
  br label %16

16:                                               ; preds = %13, %7
  %17 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #11, !range !88
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %7, label %19, !llvm.loop !91

19:                                               ; preds = %16, %1
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #10
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !95 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecache_get_cache_segments(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, ptr %3, align 4, !tbaa !100
  store ptr null, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %149, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 16
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %27, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %22) #10
  br label %26

26:                                               ; preds = %20, %24
  store ptr null, ptr %21, align 8, !tbaa !42
  br label %34

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !102
  store i32 %33, ptr %3, align 4, !tbaa !100
  store ptr %29, ptr %4, align 8, !tbaa !34
  br label %149

34:                                               ; preds = %26, %27
  %35 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 14
  %36 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = tail call i32 @BLI_ghash_size(ptr noundef %37) #10
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = sext i32 %38 to i64
  %41 = shl nsw i64 %40, 2
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.3) #10
  %43 = load ptr, ptr %36, align 8, !tbaa !59
  %44 = tail call ptr @BLI_ghashIterator_new(ptr noundef %43) #10
  %45 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %44) #11, !range !88
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %34, %68
  %48 = phi i32 [ %69, %68 ], [ 0, %34 ]
  %49 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %44) #11
  %50 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %44) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %51 = getelementptr inbounds %struct.MovieCacheItem, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %9, align 8, !tbaa !69
  %56 = getelementptr inbounds %struct.MovieCacheKey, ptr %49, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !67
  call void %55(ptr noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %58 = load i32, ptr %7, align 4, !tbaa !100
  %59 = icmp eq i32 %58, %1
  %60 = load i32, ptr %8, align 4
  %61 = icmp eq i32 %60, %2
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, ptr %6, align 4, !tbaa !100
  %65 = add nsw i32 %48, 1
  %66 = sext i32 %48 to i64
  %67 = getelementptr inbounds i32, ptr %42, i64 %66
  store i32 %64, ptr %67, align 4, !tbaa !100
  br label %68

68:                                               ; preds = %54, %63, %47
  %69 = phi i32 [ %65, %63 ], [ %48, %54 ], [ %48, %47 ]
  call void @BLI_ghashIterator_step(ptr noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %70 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %44) #11, !range !88
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %47, label %72, !llvm.loop !103

72:                                               ; preds = %68, %34
  call void @BLI_ghashIterator_free(ptr noundef %44) #10
  call void @qsort(ptr noundef %42, i64 noundef %40, i64 noundef 4, ptr noundef nonnull @compare_int) #10
  %73 = icmp sgt i32 %38, 0
  br i1 %73, label %74, label %147

74:                                               ; preds = %72
  %75 = add nsw i32 %38, -1
  %76 = zext nneg i32 %75 to i64
  %77 = zext nneg i32 %38 to i64
  br label %78

78:                                               ; preds = %74, %91
  %79 = phi i64 [ 0, %74 ], [ %96, %91 ]
  %80 = phi i32 [ 0, %74 ], [ %95, %91 ]
  %81 = icmp eq i64 %79, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i32, ptr %42, i64 %79
  %84 = load i32, ptr %83, align 4, !tbaa !100
  %85 = getelementptr i32, ptr %83, i64 -1
  %86 = load i32, ptr %85, align 4, !tbaa !100
  %87 = sub nsw i32 %84, %86
  %88 = icmp ne i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = add nsw i32 %80, %89
  br label %91

91:                                               ; preds = %82, %78
  %92 = phi i32 [ %80, %78 ], [ %90, %82 ]
  %93 = icmp eq i64 %79, %76
  %94 = zext i1 %93 to i32
  %95 = add nsw i32 %92, %94
  %96 = add nuw nsw i64 %79, 1
  %97 = icmp eq i64 %96, %77
  br i1 %97, label %98, label %78, !llvm.loop !104

98:                                               ; preds = %91
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %147, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %102 = sext i32 %95 to i64
  %103 = shl nsw i64 %102, 3
  %104 = call ptr %101(i64 noundef %103, ptr noundef nonnull @.str.4) #10
  br i1 %73, label %105, label %144

105:                                              ; preds = %100
  %106 = add nsw i32 %38, -1
  %107 = zext nneg i32 %106 to i64
  %108 = zext nneg i32 %38 to i64
  %109 = getelementptr inbounds i32, ptr %42, i64 %107
  br label %110

110:                                              ; preds = %105, %140
  %111 = phi i64 [ 0, %105 ], [ %142, %140 ]
  %112 = phi i32 [ 0, %105 ], [ %141, %140 ]
  %113 = icmp eq i64 %111, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, ptr %42, align 4, !tbaa !100
  %116 = add nsw i32 %112, 1
  %117 = sext i32 %112 to i64
  %118 = getelementptr inbounds i32, ptr %104, i64 %117
  store i32 %115, ptr %118, align 4, !tbaa !100
  br label %132

119:                                              ; preds = %110
  %120 = getelementptr inbounds i32, ptr %42, i64 %111
  %121 = load i32, ptr %120, align 4, !tbaa !100
  %122 = getelementptr i32, ptr %120, i64 -1
  %123 = load i32, ptr %122, align 4, !tbaa !100
  %124 = sub nsw i32 %121, %123
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = sext i32 %112 to i64
  %128 = getelementptr inbounds i32, ptr %104, i64 %127
  store i32 %123, ptr %128, align 4, !tbaa !100
  %129 = load i32, ptr %120, align 4, !tbaa !100
  %130 = add nsw i32 %112, 2
  %131 = getelementptr i32, ptr %128, i64 1
  store i32 %129, ptr %131, align 4, !tbaa !100
  br label %132

132:                                              ; preds = %114, %126, %119
  %133 = phi i32 [ %130, %126 ], [ %112, %119 ], [ %116, %114 ]
  %134 = icmp eq i64 %111, %107
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, ptr %109, align 4, !tbaa !100
  %137 = add nsw i32 %133, 1
  %138 = sext i32 %133 to i64
  %139 = getelementptr inbounds i32, ptr %104, i64 %138
  store i32 %136, ptr %139, align 4, !tbaa !100
  br label %140

140:                                              ; preds = %132, %135
  %141 = phi i32 [ %137, %135 ], [ %133, %132 ]
  %142 = add nuw nsw i64 %111, 1
  %143 = icmp eq i64 %142, %108
  br i1 %143, label %144, label %110, !llvm.loop !105

144:                                              ; preds = %140, %100
  store i32 %95, ptr %3, align 4, !tbaa !100
  store ptr %104, ptr %4, align 8, !tbaa !34
  %145 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 13
  store i32 %95, ptr %145, align 8, !tbaa !102
  store ptr %104, ptr %35, align 8, !tbaa !42
  store i32 %1, ptr %13, align 8, !tbaa !63
  %146 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 16
  store i32 %2, ptr %146, align 4, !tbaa !101
  br label %147

147:                                              ; preds = %72, %144, %98
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %148(ptr noundef %42) #10
  br label %149

149:                                              ; preds = %5, %147, %31
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @compare_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !106 {
  %3 = load i32, ptr %0, align 4, !tbaa !100
  %4 = load i32, ptr %1, align 4, !tbaa !100
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_moviecacheIter_new(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call fastcc void @check_unused_keys(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.MovieCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call ptr @BLI_ghashIterator_new(ptr noundef %3) #10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecacheIter_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_ghashIterator_free(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @IMB_moviecacheIter_done(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #11, !range !88
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_moviecacheIter_step(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @IMB_moviecacheIter_getImBuf(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.MovieCacheItem, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @IMB_moviecacheIter_getUserKey(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.MovieCacheKey, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  ret ptr %4
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @MEM_CacheLimiter_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MEM_CacheLimiter_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MEM_CacheLimiter_enforce_limits(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MEM_CacheLimiter_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MEM_CacheLimiter_unmanage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!38 = !{!"moviecache.c:IMB_moviecache_destructor"}
!39 = !{!40, !35, i64 8}
!40 = !{!"MovieCacheItem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!41 = !{!40, !35, i64 0}
!42 = !{!43, !35, i64 168}
!43 = !{!"MovieCache", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !44, i64 144, !35, i64 152, !44, i64 160, !35, i64 168, !44, i64 176, !44, i64 180, !44, i64 184}
!44 = !{!"int", !36, i64 0}
!45 = !{!"moviecache.c:get_item_size"}
!46 = !{!"moviecache.c:get_item_priority"}
!47 = !{!43, !35, i64 104}
!48 = !{!43, !35, i64 152}
!49 = !{!40, !35, i64 24}
!50 = !{!"moviecache.c:get_item_destroyable"}
!51 = !{!52, !44, i64 292}
!52 = !{!"ImBuf", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !36, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !53, i64 112, !36, i64 120, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !35, i64 296, !35, i64 304, !44, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !44, i64 2376, !35, i64 2384, !44, i64 2392, !44, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !44, i64 2432, !54, i64 2436, !55, i64 2456}
!53 = !{!"float", !36, i64 0}
!54 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!55 = !{!"DDSData", !44, i64 0, !44, i64 4, !35, i64 8, !44, i64 16}
!56 = !{!43, !35, i64 120}
!57 = !{!43, !35, i64 128}
!58 = !{!43, !35, i64 136}
!59 = !{!43, !35, i64 64}
!60 = !{!43, !44, i64 144}
!61 = !{!43, !35, i64 72}
!62 = !{!43, !35, i64 80}
!63 = !{!43, !44, i64 176}
!64 = !{!"moviecache.c:moviecache_hashhash"}
!65 = !{!66, !35, i64 0}
!66 = !{!"MovieCacheKey", !35, i64 0, !35, i64 8}
!67 = !{!66, !35, i64 8}
!68 = !{!"moviecache.c:moviecache_hashcmp"}
!69 = !{!43, !35, i64 88}
!70 = !{!43, !35, i64 96}
!71 = !{!43, !35, i64 112}
!72 = !{!"moviecache.c:do_moviecache_put"}
!73 = !{!40, !35, i64 16}
!74 = !{!"moviecache.c:IMB_get_size_in_memory"}
!75 = !{!52, !35, i64 40}
!76 = !{!52, !35, i64 48}
!77 = !{!52, !44, i64 16}
!78 = !{!52, !44, i64 20}
!79 = !{!52, !44, i64 28}
!80 = !{!52, !44, i64 280}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!52, !35, i64 88}
!84 = !{!52, !44, i64 84}
!85 = !{!52, !44, i64 80}
!86 = !{!"moviecache.c:moviecache_keyfree"}
!87 = !{!"moviecache.c:moviecache_valfree"}
!88 = !{i8 0, i8 2}
!89 = distinct !{!89, !82}
!90 = !{!"moviecache.c:check_unused_keys"}
!91 = distinct !{!91, !82}
!92 = !{!"moviecache.c:BLI_ghashIterator_done"}
!93 = !{!94, !35, i64 8}
!94 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !44, i64 16}
!95 = !{!"moviecache.c:BLI_ghashIterator_getKey"}
!96 = !{!97, !35, i64 8}
!97 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!98 = !{!"moviecache.c:BLI_ghashIterator_getValue"}
!99 = !{!97, !35, i64 16}
!100 = !{!44, !44, i64 0}
!101 = !{!43, !44, i64 180}
!102 = !{!43, !44, i64 160}
!103 = distinct !{!103, !82}
!104 = distinct !{!104, !82}
!105 = distinct !{!105, !82}
!106 = !{!"moviecache.c:compare_int"}
