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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_tile_cache_tile_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ImGlobalTile, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  tail call void @BLI_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  %5 = getelementptr inbounds %struct.ImGlobalTile, ptr %4, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ImGlobalTile, ptr %4, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.ImGlobalTile, ptr %4, i64 0, i32 4
  store i32 %2, ptr %7, align 4, !tbaa !41
  %8 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %9 = call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef nonnull %4) #7
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
  %18 = call zeroext i8 @BLI_ghash_remove(ptr noundef %17, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #7
  call void @BLI_remlink(ptr noundef nonnull @GLOBAL_CACHE, ptr noundef nonnull %9) #7
  call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 1), ptr noundef nonnull %9) #7
  br label %19

19:                                               ; preds = %16, %3
  call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_tile_cache_init() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @GLOBAL_CACHE, i8 0, i64 160, i1 false)
  tail call void @BLI_mutex_init(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  tail call void @IMB_tile_cache_params(i32 noundef 0, i32 noundef 0) #8
  store i32 1, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 9), align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BLI_mutex_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_tile_cache_params(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, 1
  %4 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !50
  %5 = icmp eq i32 %4, %3
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 5), align 8, !tbaa !51
  %8 = sext i32 %1 to i64
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %2
  tail call void @imb_tile_cache_exit() #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @GLOBAL_CACHE, i8 0, i64 160, i1 false)
  %11 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @imb_global_tile_hash, ptr noundef nonnull @imb_global_tile_cmp, ptr noundef nonnull @.str) #7
  store ptr %11, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %12 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.1) #7
  store ptr %12, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !52
  tail call void @BLI_memarena_use_calloc(ptr noundef %12) #7
  %13 = shl nsw i32 %1, 20
  %14 = sext i32 %13 to i64
  store i64 %14, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 5), align 8, !tbaa !51
  store i32 %3, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !50
  %15 = icmp slt i32 %0, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = zext i32 %3 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  %20 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %19
  tail call fastcc void @imb_thread_cache_init(ptr noundef nonnull %20) #8
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, %17
  br i1 %22, label %23, label %18, !llvm.loop !53

23:                                               ; preds = %18, %10
  tail call void @BLI_mutex_init(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  br label %24

24:                                               ; preds = %6, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_tile_cache_exit() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 9), align 8, !tbaa !49
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %29, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @GLOBAL_CACHE, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %9, %3
  %7 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !50
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %13, label %20

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %11, %9 ], [ %4, %3 ]
  tail call fastcc void @imb_global_cache_tile_unload(ptr noundef nonnull %10) #8
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %6, label %9, !llvm.loop !55

13:                                               ; preds = %6, %13
  %14 = phi i64 [ %16, %13 ], [ 0, %6 ]
  %15 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %14
  tail call fastcc void @imb_thread_cache_exit(ptr noundef nonnull %15) #8
  %16 = add nuw nsw i64 %14, 1
  %17 = load i32, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 7), align 8, !tbaa !50
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %13, label %20, !llvm.loop !56

20:                                               ; preds = %13, %6
  %21 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @BLI_memarena_free(ptr noundef nonnull %21) #7
  br label %24

24:                                               ; preds = %23, %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @BLI_ghash_free(ptr noundef nonnull %25, ptr noundef null, ptr noundef null) #7
  br label %28

28:                                               ; preds = %27, %24
  tail call void @BLI_mutex_end(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @GLOBAL_CACHE, i8 0, i64 160, i1 false)
  br label %29

29:                                               ; preds = %28, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_global_cache_tile_unload(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !57 {
  %2 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = mul nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = add nsw i32 %8, %10
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  tail call void %12(ptr noundef %17) #7
  %18 = load ptr, ptr %13, align 8, !tbaa !63
  %19 = getelementptr inbounds ptr, ptr %18, i64 %15
  store ptr null, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !64
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 12
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = sext i32 %25 to i64
  %27 = mul i64 %23, %26
  %28 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !66
  %29 = sub i64 %28, %27
  store i64 %29, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_thread_cache_exit(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mutex_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @imb_global_tile_hash(ptr nocapture noundef readonly %0) #4 !PGOFuncName !70 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imb_global_tile_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !71 {
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

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_thread_cache_init(ptr noundef %0) unnamed_addr #0 !PGOFuncName !72 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %2 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @imb_thread_tile_hash, ptr noundef nonnull @imb_thread_tile_cmp, ptr noundef nonnull @.str.3) #7
  %3 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 2
  store ptr %2, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %9, %5 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !52
  %8 = tail call ptr @BLI_memarena_alloc(ptr noundef %7, i64 noundef 40) #7
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %8) #7
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 100
  br i1 %10, label %11, label %5, !llvm.loop !73

11:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_gettile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 6, i64 %6
  %8 = tail call fastcc ptr @imb_thread_cache_get_tile(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @imb_thread_cache_get_tile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !74 {
  %5 = alloca %struct.ImThreadTile, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = load ptr, ptr %0, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ImThreadTile, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ImThreadTile, ptr %8, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !78
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImThreadTile, ptr %8, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !79
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %58, label %22

22:                                               ; preds = %18, %14, %10
  %23 = getelementptr inbounds %struct.ImThreadTile, ptr %5, i64 0, i32 2
  store ptr %1, ptr %23, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.ImThreadTile, ptr %5, i64 0, i32 3
  store i32 %2, ptr %24, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.ImThreadTile, ptr %5, i64 0, i32 4
  store i32 %3, ptr %25, align 4, !tbaa !79
  %26 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = call ptr @BLI_ghash_lookup(ptr noundef %27, ptr noundef nonnull %5) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %28) #7
  call void @BLI_addhead(ptr noundef nonnull %0, ptr noundef nonnull %28) #7
  br label %58

31:                                               ; preds = %22, %4
  %32 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 1
  %33 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %32) #8, !range !80
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = getelementptr inbounds %struct.ImThreadTile, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef %37) #7
  %40 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = call zeroext i8 @BLI_ghash_remove(ptr noundef %41, ptr noundef %37, ptr noundef null, ptr noundef null) #7
  br label %45

43:                                               ; preds = %31
  %44 = load ptr, ptr %32, align 8, !tbaa !83
  call void @BLI_remlink(ptr noundef nonnull %32, ptr noundef %44) #7
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %37, %35 ], [ %44, %43 ]
  %47 = phi ptr [ %39, %35 ], [ null, %43 ]
  call void @BLI_addhead(ptr noundef nonnull %0, ptr noundef %46) #7
  %48 = getelementptr inbounds %struct.ImThreadTileCache, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !68
  call void @BLI_ghash_insert(ptr noundef %49, ptr noundef %46, ptr noundef %46) #7
  %50 = call fastcc ptr @imb_global_cache_get_tile(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %47) #8
  %51 = getelementptr inbounds %struct.ImGlobalTile, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.ImThreadTile, ptr %46, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !76
  %54 = getelementptr inbounds %struct.ImGlobalTile, ptr %50, i64 0, i32 3
  %55 = getelementptr inbounds %struct.ImThreadTile, ptr %46, i64 0, i32 3
  %56 = load <2 x i32>, ptr %54, align 8, !tbaa !84
  store <2 x i32> %56, ptr %55, align 8, !tbaa !84
  %57 = getelementptr inbounds %struct.ImThreadTile, ptr %46, i64 0, i32 5
  store ptr %50, ptr %57, align 8, !tbaa !82
  br label %58

58:                                               ; preds = %18, %45, %30
  %59 = mul nsw i32 %7, %3
  %60 = add nsw i32 %59, %2
  %61 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_tiles_to_rect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 8, !tbaa !85
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %111

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %107
  %9 = phi i32 [ 0, %5 ], [ %108, %107 ]
  %10 = tail call ptr @IMB_getmipmap(ptr noundef nonnull %0, i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !54
  %16 = load i32, ptr %6, align 8, !tbaa !87
  %17 = load i32, ptr %7, align 4, !tbaa !88
  %18 = mul nsw i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %15(i64 noundef %20, ptr noundef nonnull @.str.2) #7
  store ptr %21, ptr %11, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %111, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 6
  %25 = load <2 x i32>, ptr %24, align 8, !tbaa !84
  %26 = or <2 x i32> %25, <i32 1, i32 1>
  store <2 x i32> %26, ptr %24, align 8, !tbaa !84
  br label %27

27:                                               ; preds = %23, %8
  %28 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 14
  %29 = load i32, ptr %28, align 4, !tbaa !89
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %107

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 13
  %33 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 15
  %34 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %35 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 12
  %36 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 11
  %37 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 3
  %38 = load i32, ptr %32, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %31, %102
  %40 = phi i32 [ %29, %31 ], [ %103, %102 ]
  %41 = phi i32 [ %38, %31 ], [ %104, %102 ]
  %42 = phi i32 [ 0, %31 ], [ %105, %102 ]
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %39, %93
  %45 = phi i32 [ %97, %93 ], [ 0, %39 ]
  %46 = tail call fastcc ptr @imb_global_cache_get_tile(ptr noundef nonnull %10, i32 noundef %45, i32 noundef %42, ptr noundef null) #8
  %47 = load ptr, ptr %33, align 8, !tbaa !63
  %48 = load i32, ptr %32, align 8, !tbaa !58
  %49 = mul nsw i32 %48, %42
  %50 = add nsw i32 %49, %45
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %47, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = load ptr, ptr %11, align 8, !tbaa !86
  %55 = load i32, ptr %34, align 8, !tbaa !87
  %56 = load i32, ptr %35, align 4, !tbaa !65
  %57 = mul i32 %56, %42
  %58 = mul i32 %57, %55
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %54, i64 %59
  %61 = load i32, ptr %36, align 8, !tbaa !64
  %62 = mul nsw i32 %61, %45
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  %65 = add nsw i32 %48, -1
  %66 = icmp eq i32 %45, %65
  %67 = sub nsw i32 %55, %62
  %68 = select i1 %66, i32 %67, i32 %61
  %69 = load i32, ptr %28, align 4, !tbaa !89
  %70 = add nsw i32 %69, -1
  %71 = icmp eq i32 %42, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %44
  %73 = load i32, ptr %37, align 4, !tbaa !88
  %74 = sub nsw i32 %73, %57
  br label %75

75:                                               ; preds = %44, %72
  %76 = phi i32 [ %74, %72 ], [ %56, %44 ]
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = sext i32 %68 to i64
  %80 = shl nsw i64 %79, 2
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %64, %78 ], [ %90, %81 ]
  %83 = phi ptr [ %53, %78 ], [ %87, %81 ]
  %84 = phi i32 [ 0, %78 ], [ %91, %81 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %82, ptr align 4 %83, i64 %80, i1 false)
  %85 = load i32, ptr %36, align 8, !tbaa !64
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  %88 = load i32, ptr %34, align 8, !tbaa !87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %82, i64 %89
  %91 = add nuw nsw i32 %84, 1
  %92 = icmp eq i32 %91, %76
  br i1 %92, label %93, label %81, !llvm.loop !90

93:                                               ; preds = %81, %75
  tail call void @BLI_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  %94 = getelementptr inbounds %struct.ImGlobalTile, ptr %46, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !91
  %96 = add nsw i32 %95, -1
  store i32 %96, ptr %94, align 8, !tbaa !91
  tail call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  %97 = add nuw nsw i32 %45, 1
  %98 = load i32, ptr %32, align 8, !tbaa !58
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %44, label %100, !llvm.loop !92

100:                                              ; preds = %93
  %101 = load i32, ptr %28, align 4, !tbaa !89
  br label %102

102:                                              ; preds = %100, %39
  %103 = phi i32 [ %101, %100 ], [ %40, %39 ]
  %104 = phi i32 [ %98, %100 ], [ %41, %39 ]
  %105 = add nuw nsw i32 %42, 1
  %106 = icmp slt i32 %105, %103
  br i1 %106, label %39, label %107, !llvm.loop !93

107:                                              ; preds = %102, %27
  %108 = add nuw nsw i32 %9, 1
  %109 = load i32, ptr %2, align 8, !tbaa !85
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %8, label %111, !llvm.loop !94

111:                                              ; preds = %107, %14, %1
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_getmipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @imb_global_cache_get_tile(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !95 {
  %5 = alloca %struct.ImGlobalTile, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  tail call void @BLI_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  %6 = icmp eq ptr %3, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ImGlobalTile, ptr %3, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 8, !tbaa !91
  br label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.ImGlobalTile, ptr %5, i64 0, i32 2
  store ptr %0, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ImGlobalTile, ptr %5, i64 0, i32 3
  store i32 %1, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.ImGlobalTile, ptr %5, i64 0, i32 4
  store i32 %2, ptr %14, align 4, !tbaa !41
  %15 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %16 = call ptr @BLI_ghash_lookup(ptr noundef %15, ptr noundef nonnull %5) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ImGlobalTile, ptr %16, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !91
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !91
  call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  %22 = getelementptr inbounds %struct.ImGlobalTile, ptr %16, i64 0, i32 6
  br label %23

23:                                               ; preds = %23, %18
  %24 = load volatile i32, ptr %22, align 4, !tbaa !46
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %76, label %23, !llvm.loop !96

26:                                               ; preds = %11
  %27 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 5), align 8, !tbaa !51
  %28 = icmp eq i64 %27, 0
  %29 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8
  %30 = icmp ule i64 %29, %27
  %31 = select i1 %28, i1 true, i1 %30
  %32 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 0, i32 1), align 8
  %33 = icmp eq ptr %32, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %26, %44
  %36 = phi ptr [ %46, %44 ], [ %32, %26 ]
  %37 = getelementptr inbounds %struct.ImGlobalTile, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !91
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ImGlobalTile, ptr %36, i64 0, i32 6
  %42 = load volatile i32, ptr %41, align 4, !tbaa !46
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.ImGlobalTile, ptr %36, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %35, !llvm.loop !97

48:                                               ; preds = %40
  call fastcc void @imb_global_cache_tile_unload(ptr noundef nonnull %36) #8
  %49 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  %50 = call zeroext i8 @BLI_ghash_remove(ptr noundef %49, ptr noundef nonnull %36, ptr noundef null, ptr noundef null) #7
  call void @BLI_remlink(ptr noundef nonnull @GLOBAL_CACHE, ptr noundef nonnull %36) #7
  br label %58

51:                                               ; preds = %44, %26
  %52 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 1), align 8, !tbaa !98
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @BLI_remlink(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 1), ptr noundef nonnull %52) #7
  br label %58

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 3), align 8, !tbaa !52
  %57 = call ptr @BLI_memarena_alloc(ptr noundef %56, i64 noundef 40) #7
  br label %58

58:                                               ; preds = %54, %55, %48
  %59 = phi ptr [ %36, %48 ], [ %52, %54 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.ImGlobalTile, ptr %59, i64 0, i32 2
  store ptr %0, ptr %60, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.ImGlobalTile, ptr %59, i64 0, i32 3
  store i32 %1, ptr %61, align 8, !tbaa !40
  %62 = getelementptr inbounds %struct.ImGlobalTile, ptr %59, i64 0, i32 4
  store i32 %2, ptr %62, align 4, !tbaa !41
  %63 = getelementptr inbounds %struct.ImGlobalTile, ptr %59, i64 0, i32 5
  store i32 1, ptr %63, align 8, !tbaa !91
  %64 = getelementptr inbounds %struct.ImGlobalTile, ptr %59, i64 0, i32 6
  store volatile i32 1, ptr %64, align 4, !tbaa !46
  %65 = load ptr, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 2), align 8, !tbaa !42
  call void @BLI_ghash_insert(ptr noundef %65, ptr noundef %59, ptr noundef %59) #7
  call void @BLI_addhead(ptr noundef nonnull @GLOBAL_CACHE, ptr noundef %59) #7
  %66 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 11
  %67 = load i32, ptr %66, align 8, !tbaa !64
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 2
  %70 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 12
  %71 = load i32, ptr %70, align 4, !tbaa !65
  %72 = sext i32 %71 to i64
  %73 = mul i64 %69, %72
  %74 = load i64, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !66
  %75 = add i64 %73, %74
  store i64 %75, ptr getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 4), align 8, !tbaa !66
  call void @BLI_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.ImGlobalTileCache, ptr @GLOBAL_CACHE, i64 0, i32 8)) #7
  call fastcc void @imb_global_cache_tile_load(ptr noundef %59) #8
  store volatile i32 0, ptr %64, align 4, !tbaa !46
  br label %76

76:                                               ; preds = %23, %58
  %77 = phi ptr [ %59, %58 ], [ %16, %23 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  ret ptr %77
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @imb_thread_tile_hash(ptr nocapture noundef readonly %0) #4 !PGOFuncName !99 {
  %2 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = mul i32 %5, 769
  %7 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !78
  %9 = mul nsw i32 %8, 53
  %10 = add i32 %6, %9
  %11 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !79
  %13 = mul nsw i32 %12, 97
  %14 = add i32 %10, %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imb_thread_tile_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.ImThreadTile, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.ImThreadTile, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !78
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ImThreadTile, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = getelementptr inbounds %struct.ImThreadTile, ptr %1, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = icmp ne i32 %16, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %14, %8, %2
  %22 = phi i8 [ 1, %8 ], [ 1, %2 ], [ %20, %14 ]
  ret i8 %22
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_global_cache_tile_load(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = mul nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.ImGlobalTile, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = add nsw i32 %8, %10
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !64
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 12
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = sext i32 %18 to i64
  %20 = mul i64 %16, %19
  %21 = tail call ptr %12(i64 noundef %20, ptr noundef nonnull @.str.4) #7
  %22 = load i32, ptr %9, align 8, !tbaa !40
  %23 = load i32, ptr %6, align 4, !tbaa !41
  tail call void @imb_loadtile(ptr noundef %3, i32 noundef %22, i32 noundef %23, ptr noundef %21) #7
  %24 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = sext i32 %11 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  store ptr %21, ptr %27, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @imb_loadtile(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!43, !39, i64 152}
!50 = !{!43, !39, i64 144}
!51 = !{!43, !45, i64 56}
!52 = !{!43, !36, i64 40}
!53 = distinct !{!53, !48}
!54 = !{!36, !36, i64 0}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = !{!"cache.c:imb_global_cache_tile_unload"}
!58 = !{!59, !39, i64 80}
!59 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !60, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !61, i64 2436, !62, i64 2456}
!60 = !{!"float", !37, i64 0}
!61 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!62 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!63 = !{!59, !36, i64 88}
!64 = !{!59, !39, i64 72}
!65 = !{!59, !39, i64 76}
!66 = !{!43, !45, i64 48}
!67 = !{!"cache.c:imb_thread_cache_exit"}
!68 = !{!69, !36, i64 32}
!69 = !{!"ImThreadTileCache", !44, i64 0, !44, i64 16, !36, i64 32}
!70 = !{!"cache.c:imb_global_tile_hash"}
!71 = !{!"cache.c:imb_global_tile_cmp"}
!72 = !{!"cache.c:imb_thread_cache_init"}
!73 = distinct !{!73, !48}
!74 = !{!"cache.c:imb_thread_cache_get_tile"}
!75 = !{!69, !36, i64 0}
!76 = !{!77, !36, i64 16}
!77 = !{!"ImThreadTile", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !36, i64 32}
!78 = !{!77, !39, i64 24}
!79 = !{!77, !39, i64 28}
!80 = !{i8 0, i8 2}
!81 = !{!69, !36, i64 8}
!82 = !{!77, !36, i64 32}
!83 = !{!69, !36, i64 16}
!84 = !{!39, !39, i64 0}
!85 = !{!59, !39, i64 280}
!86 = !{!59, !36, i64 40}
!87 = !{!59, !39, i64 16}
!88 = !{!59, !39, i64 20}
!89 = !{!59, !39, i64 84}
!90 = distinct !{!90, !48}
!91 = !{!35, !39, i64 32}
!92 = distinct !{!92, !48}
!93 = distinct !{!93, !48}
!94 = distinct !{!94, !48}
!95 = !{!"cache.c:imb_global_cache_get_tile"}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !48}
!98 = !{!43, !36, i64 16}
!99 = !{!"cache.c:imb_thread_tile_hash"}
!100 = !{!"cache.c:imb_thread_tile_cmp"}
!101 = !{!"cache.c:BLI_listbase_is_empty"}
!102 = !{!44, !36, i64 0}
!103 = !{!"cache.c:imb_global_cache_tile_load"}
