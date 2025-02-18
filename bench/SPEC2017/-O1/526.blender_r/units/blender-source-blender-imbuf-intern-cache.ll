; ModuleID = 'blender/source/blender/imbuf/intern/cache.c'
source_filename = "blender/source/blender/imbuf/intern/cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImGlobalTileCache = type { %struct.ListBase, %struct.ListBase, ptr, ptr, i64, i64, [2 x %struct.ImThreadTileCache], i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ImThreadTileCache = type { %struct.ListBase, %struct.ListBase, ptr }
%struct.ImGlobalTile = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ImThreadTile = type { ptr, ptr, ptr, i32, i32, ptr }

@GLOBAL_CACHE = internal global %struct.ImGlobalTileCache zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"tile_cache_params gh\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ImTileCache arena\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"imb_addrectImBuf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"imb_thread_cache_init gh\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"imb_tile\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @imb_tile_cache_tile_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ImGlobalTile, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  tail call void @BLI_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  %5 = getelementptr inbounds %struct.ImGlobalTile, ptr %4, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ImGlobalTile, ptr %4, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.ImGlobalTile, ptr %4, i64 0, i32 4
  store i32 %2, ptr %7, align 4, !tbaa !41
  %8 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %9 = call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef nonnull %4) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ImGlobalTile, ptr %9, i64 0, i32 6
  br label %13

13:                                               ; preds = %11, %13
  %14 = load volatile i32, ptr %12, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %13, !llvm.loop !47

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %18 = call zeroext i8 @BLI_ghash_remove(ptr noundef %17, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #6
  call void @BLI_remlink(ptr noundef nonnull @GLOBAL_CACHE, ptr noundef nonnull %9) #6
  call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 1), ptr noundef nonnull %9) #6
  br label %19

19:                                               ; preds = %16, %3
  call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @imb_tile_cache_init() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @GLOBAL_CACHE, i8 0, i64 160, i1 false)
  tail call void @BLI_mutex_init(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  tail call void @IMB_tile_cache_params(i32 noundef 0, i32 noundef 0)
  store i32 1, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 9), align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @BLI_mutex_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_tile_cache_params(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 1
  %4 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !51
  %5 = icmp eq i32 %4, %3
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 5), align 8, !tbaa !52
  %8 = sext i32 %1 to i64
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %6, %2
  tail call void @imb_tile_cache_exit()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @GLOBAL_CACHE, i8 0, i64 160, i1 false)
  %11 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @imb_global_tile_hash, ptr noundef nonnull @imb_global_tile_cmp, ptr noundef nonnull @.str) #6
  store ptr %11, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %12 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.1) #6
  store ptr %12, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !53
  tail call void @BLI_memarena_use_calloc(ptr noundef %12) #6
  %13 = shl nsw i32 %1, 20
  %14 = sext i32 %13 to i64
  store i64 %14, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 5), align 8, !tbaa !52
  store i32 %3, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !51
  %15 = icmp slt i32 %0, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = add nuw i32 %0, 1
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %16, %31
  %20 = phi i64 [ 0, %16 ], [ %32, %31 ]
  %21 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, i8 0, i64 40, i1 false)
  %22 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @imb_thread_tile_hash, ptr noundef nonnull @imb_thread_tile_cmp, ptr noundef nonnull @.str.3) #6
  %23 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %20, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %20, i32 1
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi i32 [ 0, %19 ], [ %29, %25 ]
  %27 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !53
  %28 = tail call ptr @BLI_memarena_alloc(ptr noundef %27, i64 noundef 40) #6
  tail call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %28) #6
  %29 = add nuw nsw i32 %26, 1
  %30 = icmp eq i32 %29, 100
  br i1 %30, label %31, label %25, !llvm.loop !56

31:                                               ; preds = %25
  %32 = add nuw nsw i64 %20, 1
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %34, label %19, !llvm.loop !57

34:                                               ; preds = %31, %10
  tail call void @BLI_mutex_init(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  br label %35

35:                                               ; preds = %6, %34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @imb_tile_cache_exit() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 9), align 8, !tbaa !50
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %58, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @GLOBAL_CACHE, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %9, %3
  %7 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !51
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %41, label %49

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %39, %9 ], [ %4, %3 ]
  %11 = getelementptr inbounds %struct.ImGlobalTile, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.ImGlobalTile, ptr %10, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = mul nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.ImGlobalTile, ptr %10, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = add nsw i32 %17, %19
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void %21(ptr noundef %26) #6
  %27 = load ptr, ptr %22, align 8, !tbaa !64
  %28 = getelementptr inbounds ptr, ptr %27, i64 %24
  store ptr null, ptr %28, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !65
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !66
  %35 = sext i32 %34 to i64
  %36 = mul i64 %32, %35
  %37 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !67
  %38 = sub i64 %37, %36
  store i64 %38, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !67
  %39 = load ptr, ptr %10, align 8, !tbaa !58
  %40 = icmp eq ptr %39, null
  br i1 %40, label %6, label %9, !llvm.loop !68

41:                                               ; preds = %6, %41
  %42 = phi i64 [ %45, %41 ], [ 0, %6 ]
  %43 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %42, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  tail call void @BLI_ghash_free(ptr noundef %44, ptr noundef null, ptr noundef null) #6
  %45 = add nuw nsw i64 %42, 1
  %46 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !51
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %41, label %49, !llvm.loop !69

49:                                               ; preds = %41, %6
  %50 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !53
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @BLI_memarena_free(ptr noundef nonnull %50) #6
  br label %53

53:                                               ; preds = %52, %49
  %54 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @BLI_ghash_free(ptr noundef nonnull %54, ptr noundef null, ptr noundef null) #6
  br label %57

57:                                               ; preds = %56, %53
  tail call void @BLI_mutex_end(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @GLOBAL_CACHE, i8 0, i64 160, i1 false)
  br label %58

58:                                               ; preds = %57, %0
  ret void
}

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mutex_end(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @imb_global_tile_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = mul i32 %5, 769
  %7 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = mul nsw i32 %8, 53
  %10 = add i32 %6, %9
  %11 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = mul nsw i32 %12, 97
  %14 = add i32 %10, %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imb_global_tile_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ImGlobalTile, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ImGlobalTile, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = getelementptr inbounds %struct.ImGlobalTile, ptr %1, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = icmp ne i32 %16, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %14, %8, %2
  %22 = phi i8 [ 1, %8 ], [ 1, %2 ], [ %20, %14 ]
  ret i8 %22
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_gettile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ImThreadTile, align 8
  %6 = add nsw i32 %3, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = load ptr, ptr %8, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ImThreadTile, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImThreadTile, ptr %11, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !73
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ImThreadTile, ptr %11, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %63, label %25

25:                                               ; preds = %21, %17, %13
  %26 = getelementptr inbounds %struct.ImThreadTile, ptr %5, i64 0, i32 2
  store ptr %0, ptr %26, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.ImThreadTile, ptr %5, i64 0, i32 3
  store i32 %1, ptr %27, align 8, !tbaa !73
  %28 = getelementptr inbounds %struct.ImThreadTile, ptr %5, i64 0, i32 4
  store i32 %2, ptr %28, align 4, !tbaa !74
  %29 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %7, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = call ptr @BLI_ghash_lookup(ptr noundef %30, ptr noundef nonnull %5) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %31) #6
  call void @BLI_addhead(ptr noundef nonnull %8, ptr noundef nonnull %31) #6
  br label %63

34:                                               ; preds = %25, %4
  %35 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %7, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ListBase, ptr %8, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.ImThreadTile, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef %40) #6
  %43 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %7, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = call zeroext i8 @BLI_ghash_remove(ptr noundef %44, ptr noundef %40, ptr noundef null, ptr noundef null) #6
  br label %47

46:                                               ; preds = %34
  call void @BLI_remlink(ptr noundef nonnull %35, ptr noundef nonnull %36) #6
  br label %47

47:                                               ; preds = %46, %38
  %48 = phi ptr [ %40, %38 ], [ %36, %46 ]
  %49 = phi ptr [ %42, %38 ], [ null, %46 ]
  call void @BLI_addhead(ptr noundef nonnull %8, ptr noundef %48) #6
  %50 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %7, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  call void @BLI_ghash_insert(ptr noundef %51, ptr noundef %48, ptr noundef %48) #6
  %52 = call fastcc ptr @imb_global_cache_get_tile(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %49)
  %53 = getelementptr inbounds %struct.ImGlobalTile, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.ImThreadTile, ptr %48, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.ImGlobalTile, ptr %52, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct.ImThreadTile, ptr %48, i64 0, i32 3
  store i32 %57, ptr %58, align 8, !tbaa !73
  %59 = getelementptr inbounds %struct.ImGlobalTile, ptr %52, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !41
  %61 = getelementptr inbounds %struct.ImThreadTile, ptr %48, i64 0, i32 4
  store i32 %60, ptr %61, align 4, !tbaa !74
  %62 = getelementptr inbounds %struct.ImThreadTile, ptr %48, i64 0, i32 5
  store ptr %52, ptr %62, align 8, !tbaa !77
  br label %63

63:                                               ; preds = %21, %33, %47
  %64 = mul nsw i32 %10, %2
  %65 = add nsw i32 %64, %1
  %66 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  ret ptr %70
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_tiles_to_rect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %110

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %106
  %9 = phi i32 [ 0, %5 ], [ %107, %106 ]
  %10 = tail call ptr @IMB_getmipmap(ptr noundef %0, i32 noundef %9) #6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !58
  %16 = load i32, ptr %6, align 8, !tbaa !80
  %17 = load i32, ptr %7, align 4, !tbaa !81
  %18 = mul nsw i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %15(i64 noundef %20, ptr noundef nonnull @.str.2) #6
  store ptr %21, ptr %11, align 8, !tbaa !79
  %22 = icmp eq ptr %21, null
  br i1 %22, label %110, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !82
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !82
  %27 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !83
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !83
  br label %30

30:                                               ; preds = %23, %8
  %31 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 14
  %32 = load i32, ptr %31, align 4, !tbaa !84
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %106

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 13
  %36 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 15
  %37 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %38 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 12
  %39 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 11
  %40 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 3
  br label %41

41:                                               ; preds = %34, %102
  %42 = phi i32 [ 0, %34 ], [ %103, %102 ]
  %43 = load i32, ptr %35, align 8, !tbaa !59
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %102

45:                                               ; preds = %41, %95
  %46 = phi i32 [ %99, %95 ], [ 0, %41 ]
  %47 = tail call fastcc ptr @imb_global_cache_get_tile(ptr noundef %10, i32 noundef %46, i32 noundef %42, ptr noundef null)
  %48 = load ptr, ptr %36, align 8, !tbaa !64
  %49 = load i32, ptr %35, align 8, !tbaa !59
  %50 = mul nsw i32 %49, %42
  %51 = add nsw i32 %50, %46
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %48, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = load ptr, ptr %11, align 8, !tbaa !79
  %56 = load i32, ptr %37, align 8, !tbaa !80
  %57 = load i32, ptr %38, align 4, !tbaa !66
  %58 = mul i32 %57, %42
  %59 = mul i32 %58, %56
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %55, i64 %60
  %62 = load i32, ptr %39, align 8, !tbaa !65
  %63 = mul nsw i32 %62, %46
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %61, i64 %64
  %66 = add nsw i32 %49, -1
  %67 = icmp eq i32 %46, %66
  %68 = sub nsw i32 %56, %63
  %69 = select i1 %67, i32 %68, i32 %62
  %70 = load i32, ptr %31, align 4, !tbaa !84
  %71 = add nsw i32 %70, -1
  %72 = icmp eq i32 %42, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %45
  %74 = load i32, ptr %40, align 4, !tbaa !81
  %75 = mul nsw i32 %57, %42
  %76 = sub nsw i32 %74, %75
  br label %77

77:                                               ; preds = %45, %73
  %78 = phi i32 [ %76, %73 ], [ %57, %45 ]
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = sext i32 %69 to i64
  %82 = shl nsw i64 %81, 2
  br label %83

83:                                               ; preds = %80, %83
  %84 = phi ptr [ %65, %80 ], [ %92, %83 ]
  %85 = phi ptr [ %54, %80 ], [ %89, %83 ]
  %86 = phi i32 [ 0, %80 ], [ %93, %83 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %85, i64 %82, i1 false)
  %87 = load i32, ptr %39, align 8, !tbaa !65
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %85, i64 %88
  %90 = load i32, ptr %37, align 8, !tbaa !80
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %84, i64 %91
  %93 = add nuw nsw i32 %86, 1
  %94 = icmp eq i32 %93, %78
  br i1 %94, label %95, label %83, !llvm.loop !85

95:                                               ; preds = %83, %77
  tail call void @BLI_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  %96 = getelementptr inbounds %struct.ImGlobalTile, ptr %47, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !86
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %96, align 8, !tbaa !86
  tail call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  %99 = add nuw nsw i32 %46, 1
  %100 = load i32, ptr %35, align 8, !tbaa !59
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %45, label %102, !llvm.loop !87

102:                                              ; preds = %95, %41
  %103 = add nuw nsw i32 %42, 1
  %104 = load i32, ptr %31, align 4, !tbaa !84
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %41, label %106, !llvm.loop !88

106:                                              ; preds = %102, %30
  %107 = add nuw nsw i32 %9, 1
  %108 = load i32, ptr %2, align 8, !tbaa !78
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %8, label %110, !llvm.loop !89

110:                                              ; preds = %106, %14, %1
  ret void
}

declare ptr @IMB_getmipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @imb_global_cache_get_tile(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ImGlobalTile, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  tail call void @BLI_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  %6 = icmp eq ptr %3, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ImGlobalTile, ptr %3, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !86
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 8, !tbaa !86
  br label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.ImGlobalTile, ptr %5, i64 0, i32 2
  store ptr %0, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ImGlobalTile, ptr %5, i64 0, i32 3
  store i32 %1, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.ImGlobalTile, ptr %5, i64 0, i32 4
  store i32 %2, ptr %14, align 4, !tbaa !41
  %15 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %16 = call ptr @BLI_ghash_lookup(ptr noundef %15, ptr noundef nonnull %5) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ImGlobalTile, ptr %16, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !86
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !86
  call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  %22 = getelementptr inbounds %struct.ImGlobalTile, ptr %16, i64 0, i32 6
  br label %23

23:                                               ; preds = %23, %18
  %24 = load volatile i32, ptr %22, align 4, !tbaa !46
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %130, label %23, !llvm.loop !90

26:                                               ; preds = %11
  %27 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 5), align 8, !tbaa !52
  %28 = icmp eq i64 %27, 0
  %29 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8
  %30 = icmp ule i64 %29, %27
  %31 = select i1 %28, i1 true, i1 %30
  %32 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 0, i32 1), align 8
  %33 = icmp eq ptr %32, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %26, %44
  %36 = phi ptr [ %46, %44 ], [ %32, %26 ]
  %37 = getelementptr inbounds %struct.ImGlobalTile, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !86
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ImGlobalTile, ptr %36, i64 0, i32 6
  %42 = load volatile i32, ptr %41, align 4, !tbaa !46
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.ImGlobalTile, ptr %36, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !91

48:                                               ; preds = %40, %44, %26
  %49 = phi ptr [ null, %26 ], [ null, %44 ], [ %36, %40 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ImGlobalTile, ptr %49, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.ImGlobalTile, ptr %49, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !41
  %58 = mul nsw i32 %57, %55
  %59 = getelementptr inbounds %struct.ImGlobalTile, ptr %49, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !40
  %61 = add nsw i32 %58, %60
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 15
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  call void %62(ptr noundef %67) #6
  %68 = load ptr, ptr %63, align 8, !tbaa !64
  %69 = getelementptr inbounds ptr, ptr %68, i64 %65
  store ptr null, ptr %69, align 8, !tbaa !58
  %70 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 11
  %71 = load i32, ptr %70, align 8, !tbaa !65
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 2
  %74 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !66
  %76 = sext i32 %75 to i64
  %77 = mul i64 %73, %76
  %78 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !67
  %79 = sub i64 %78, %77
  store i64 %79, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !67
  %80 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %81 = call zeroext i8 @BLI_ghash_remove(ptr noundef %80, ptr noundef nonnull %49, ptr noundef null, ptr noundef null) #6
  call void @BLI_remlink(ptr noundef nonnull @GLOBAL_CACHE, ptr noundef nonnull %49) #6
  br label %89

82:                                               ; preds = %48
  %83 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 1), align 8, !tbaa !92
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @BLI_remlink(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 1), ptr noundef nonnull %83) #6
  br label %89

86:                                               ; preds = %82
  %87 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !53
  %88 = call ptr @BLI_memarena_alloc(ptr noundef %87, i64 noundef 40) #6
  br label %89

89:                                               ; preds = %85, %86, %51
  %90 = phi ptr [ %49, %51 ], [ %83, %85 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.ImGlobalTile, ptr %90, i64 0, i32 2
  store ptr %0, ptr %91, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.ImGlobalTile, ptr %90, i64 0, i32 3
  store i32 %1, ptr %92, align 8, !tbaa !40
  %93 = getelementptr inbounds %struct.ImGlobalTile, ptr %90, i64 0, i32 4
  store i32 %2, ptr %93, align 4, !tbaa !41
  %94 = getelementptr inbounds %struct.ImGlobalTile, ptr %90, i64 0, i32 5
  store i32 1, ptr %94, align 8, !tbaa !86
  %95 = getelementptr inbounds %struct.ImGlobalTile, ptr %90, i64 0, i32 6
  store volatile i32 1, ptr %95, align 4, !tbaa !46
  %96 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  call void @BLI_ghash_insert(ptr noundef %96, ptr noundef %90, ptr noundef %90) #6
  call void @BLI_addhead(ptr noundef nonnull @GLOBAL_CACHE, ptr noundef %90) #6
  %97 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !65
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 2
  %101 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 12
  %102 = load i32, ptr %101, align 4, !tbaa !66
  %103 = sext i32 %102 to i64
  %104 = mul i64 %100, %103
  %105 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !67
  %106 = add i64 %104, %105
  store i64 %106, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !67
  call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #6
  %107 = load ptr, ptr %91, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 13
  %109 = load i32, ptr %108, align 8, !tbaa !59
  %110 = load i32, ptr %93, align 4, !tbaa !41
  %111 = mul nsw i32 %110, %109
  %112 = load i32, ptr %92, align 8, !tbaa !40
  %113 = add nsw i32 %111, %112
  %114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %115 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 11
  %116 = load i32, ptr %115, align 8, !tbaa !65
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 2
  %119 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 12
  %120 = load i32, ptr %119, align 4, !tbaa !66
  %121 = sext i32 %120 to i64
  %122 = mul i64 %118, %121
  %123 = call ptr %114(i64 noundef %122, ptr noundef nonnull @.str.4) #6
  %124 = load i32, ptr %92, align 8, !tbaa !40
  %125 = load i32, ptr %93, align 4, !tbaa !41
  call void @imb_loadtile(ptr noundef %107, i32 noundef %124, i32 noundef %125, ptr noundef %123) #6
  %126 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 15
  %127 = load ptr, ptr %126, align 8, !tbaa !64
  %128 = sext i32 %113 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  store ptr %123, ptr %129, align 8, !tbaa !58
  store volatile i32 0, ptr %95, align 4, !tbaa !46
  br label %130

130:                                              ; preds = %23, %89
  %131 = phi ptr [ %90, %89 ], [ %16, %23 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  ret ptr %131
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @imb_thread_tile_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = mul i32 %5, 769
  %7 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !73
  %9 = mul nsw i32 %8, 53
  %10 = add i32 %6, %9
  %11 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = mul nsw i32 %12, 97
  %14 = add i32 %10, %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imb_thread_tile_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.ImThreadTile, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.ImThreadTile, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !73
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = getelementptr inbounds %struct.ImThreadTile, ptr %1, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !74
  %19 = icmp ne i32 %16, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %14, %8, %2
  %22 = phi i8 [ 1, %8 ], [ 1, %2 ], [ %20, %14 ]
  ret i8 %22
}

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @imb_loadtile(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"ImGlobalTile", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 24}
!41 = !{!35, !39, i64 28}
!42 = !{!43, !36, i64 32}
!43 = !{!"ImGlobalTileCache", !44, i64 0, !44, i64 16, !36, i64 32, !36, i64 40, !45, i64 48, !45, i64 56, !37, i64 64, !39, i64 144, !39, i64 148, !39, i64 152}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!"long", !37, i64 0}
!46 = !{!35, !39, i64 36}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!43, !39, i64 152}
!51 = !{!43, !39, i64 144}
!52 = !{!43, !45, i64 56}
!53 = !{!43, !36, i64 40}
!54 = !{!55, !36, i64 32}
!55 = !{!"ImThreadTileCache", !44, i64 0, !44, i64 16, !36, i64 32}
!56 = distinct !{!56, !48, !49}
!57 = distinct !{!57, !48, !49}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !39, i64 80}
!60 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !61, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !62, i64 2436, !63, i64 2456}
!61 = !{!"float", !37, i64 0}
!62 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!63 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!64 = !{!60, !36, i64 88}
!65 = !{!60, !39, i64 72}
!66 = !{!60, !39, i64 76}
!67 = !{!43, !45, i64 48}
!68 = distinct !{!68, !48, !49}
!69 = distinct !{!69, !48, !49}
!70 = !{!55, !36, i64 0}
!71 = !{!72, !36, i64 16}
!72 = !{!"ImThreadTile", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !36, i64 32}
!73 = !{!72, !39, i64 24}
!74 = !{!72, !39, i64 28}
!75 = !{!44, !36, i64 0}
!76 = !{!55, !36, i64 8}
!77 = !{!72, !36, i64 32}
!78 = !{!60, !39, i64 280}
!79 = !{!60, !36, i64 40}
!80 = !{!60, !39, i64 16}
!81 = !{!60, !39, i64 20}
!82 = !{!60, !39, i64 36}
!83 = !{!60, !39, i64 32}
!84 = !{!60, !39, i64 84}
!85 = distinct !{!85, !48, !49}
!86 = !{!35, !39, i64 32}
!87 = distinct !{!87, !48, !49}
!88 = distinct !{!88, !48, !49}
!89 = distinct !{!89, !48, !49}
!90 = distinct !{!90, !48, !49}
!91 = distinct !{!91, !48, !49}
!92 = !{!43, !36, i64 16}
