; ModuleID = 'blender/source/blender/blenkernel/intern/seqcache.c'
source_filename = "blender/source/blender/blenkernel/intern/seqcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SeqCacheKey = type { ptr, %struct.SeqRenderData, float, i32 }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.SeqPreprocessCache = type { i32, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.SeqPreprocessCacheElem = type { ptr, ptr, ptr, %struct.SeqRenderData, i32, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }

@moviecache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"seqcache\00", align 1
@preprocess_cache = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"sequencer preprocessed cache\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sequencer preprocessed cache element\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_cache_destruct() local_unnamed_addr #0 {
  %1 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @IMB_moviecache_free(ptr noundef nonnull %1) #7
  br label %4

4:                                                ; preds = %3, %0
  tail call fastcc void @preprocessed_cache_destruct() #8
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @preprocessed_cache_destruct() unnamed_addr #0 !PGOFuncName !38 {
  %1 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #8
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  tail call void %4(ptr noundef %5) #7
  store ptr null, ptr @preprocess_cache, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_cache_cleanup() local_unnamed_addr #0 {
  %1 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @IMB_moviecache_free(ptr noundef nonnull %1) #7
  %4 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @seqcache_hashhash, ptr noundef nonnull @seqcache_hashcmp) #7
  store ptr %4, ptr @moviecache, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #8
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @seqcache_hashhash(ptr nocapture noundef readonly %0) #2 !PGOFuncName !39 {
  %2 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1
  %3 = tail call fastcc i32 @seq_hash_render_data(ptr noundef nonnull %2) #8
  %4 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = xor i32 %5, %3
  %7 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = add i32 %6, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = ptrtoint ptr %10 to i64
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 6
  %14 = xor i32 %13, %9
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @seqcache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !48
  %11 = fcmp une float %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !42
  %15 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1
  %21 = tail call fastcc zeroext i8 @seq_cmp_render_data(ptr noundef nonnull %19, ptr noundef nonnull %20) #8, !range !49
  br label %22

22:                                               ; preds = %18, %12, %6, %2
  %23 = phi i8 [ 1, %12 ], [ 1, %6 ], [ 1, %2 ], [ %21, %18 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_preprocessed_cache_cleanup() local_unnamed_addr #0 {
  %1 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  tail call void @IMB_freeImBuf(ptr noundef %10) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !52

13:                                               ; preds = %7
  %14 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %1, %3 ]
  %17 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %16, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %17) #7
  %18 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %18, i64 0, i32 1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %19) #8
  br label %20

20:                                               ; preds = %0, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_cache_cleanup_sequence(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @IMB_moviecache_cleanup(ptr noundef nonnull %2, ptr noundef nonnull @seqcache_key_check_seq, ptr noundef %0) #7
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @seqcache_key_check_seq(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #2 !PGOFuncName !54 {
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_cache_get(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SeqCacheKey, align 8
  %6 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  store ptr %1, ptr %5, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.SeqCacheKey, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !55
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !58
  %14 = sitofp i32 %13 to float
  %15 = fsub float %2, %14
  %16 = getelementptr inbounds %struct.SeqCacheKey, ptr %5, i64 0, i32 2
  store float %15, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.SeqCacheKey, ptr %5, i64 0, i32 3
  store i32 %3, ptr %17, align 4, !tbaa !42
  %18 = call ptr @IMB_moviecache_get(ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %19

19:                                               ; preds = %4, %10
  %20 = phi ptr [ %18, %10 ], [ null, %4 ]
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_cache_put(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SeqCacheKey, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %7 = icmp eq ptr %4, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !62
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @seqcache_hashhash, ptr noundef nonnull @seqcache_hashcmp) #7
  store ptr %16, ptr @moviecache, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ %13, %12 ]
  store ptr %1, ptr %6, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.SeqCacheKey, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !55
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !58
  %22 = sitofp i32 %21 to float
  %23 = fsub float %2, %22
  %24 = getelementptr inbounds %struct.SeqCacheKey, ptr %6, i64 0, i32 2
  store float %23, ptr %24, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.SeqCacheKey, ptr %6, i64 0, i32 3
  store i32 %3, ptr %25, align 4, !tbaa !42
  call void @IMB_moviecache_put(ptr noundef %18, ptr noundef nonnull %6, ptr noundef nonnull %4) #7
  br label %26

26:                                               ; preds = %5, %8, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_preprocessed_cache_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !64
  %9 = sitofp i32 %8 to float
  %10 = fcmp une float %9, %2
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %33, %32 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %16, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %16, i64 0, i32 3
  %26 = tail call fastcc zeroext i8 @seq_cmp_render_data(ptr noundef nonnull %25, ptr noundef %0) #8, !range !49
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %16, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  tail call void @IMB_refImBuf(ptr noundef %30) #7
  %31 = load ptr, ptr %29, align 8, !tbaa !50
  br label %35

32:                                               ; preds = %24, %20, %15
  %33 = load ptr, ptr %16, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !68

35:                                               ; preds = %32, %11, %7, %4, %28
  %36 = phi ptr [ %31, %28 ], [ null, %4 ], [ null, %7 ], [ null, %11 ], [ null, %32 ]
  ret ptr %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @seq_cmp_render_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !70
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !72
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 7
  %36 = load float, ptr %35, align 8, !tbaa !75
  %37 = fcmp une float %34, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !76
  %41 = getelementptr inbounds %struct.SeqRenderData, ptr %1, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = icmp ne i32 %40, %42
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %38, %32, %26, %20, %14, %8, %2
  %46 = phi i8 [ 1, %32 ], [ 1, %26 ], [ 1, %20 ], [ 1, %14 ], [ 1, %8 ], [ 1, %2 ], [ %44, %38 ]
  ret i8 %46
}

; Function Attrs: optsize
declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_preprocessed_cache_put(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 24, ptr noundef nonnull @.str.1) #7
  store ptr %10, ptr @preprocess_cache, align 8, !tbaa !34
  br label %16

11:                                               ; preds = %5
  %12 = load i32, ptr %6, align 8, !tbaa !64
  %13 = sitofp i32 %12 to float
  %14 = fcmp une float %13, %2
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #8
  br label %16

16:                                               ; preds = %11, %15, %8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 88, ptr noundef nonnull @.str.2) #7
  %19 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %18, i64 0, i32 2
  store ptr %1, ptr %19, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %18, i64 0, i32 4
  store i32 %3, ptr %20, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %18, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !55
  %22 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %18, i64 0, i32 5
  store ptr %4, ptr %22, align 8, !tbaa !50
  %23 = fptosi float %2 to i32
  %24 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  store i32 %23, ptr %24, align 8, !tbaa !64
  tail call void @IMB_refImBuf(ptr noundef %4) #7
  %25 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %25, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %18) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %19
  %9 = phi ptr [ %10, %19 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %9, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  tail call void @IMB_freeImBuf(ptr noundef %16) #7
  %17 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %17, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %18, ptr noundef nonnull %9) #7
  br label %19

19:                                               ; preds = %8, %14
  %20 = icmp eq ptr %10, null
  br i1 %20, label %21, label %8, !llvm.loop !79

21:                                               ; preds = %19, %4, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @seq_hash_render_data(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !70
  %9 = xor i32 %6, %8
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = ptrtoint ptr %11 to i64
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = ptrtoint ptr %14 to i64
  %16 = xor i64 %15, %12
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 6
  %19 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 7
  %20 = load float, ptr %19, align 8, !tbaa !75
  %21 = fmul float %20, 1.000000e+02
  %22 = fptosi float %21 to i32
  %23 = shl i32 %22, 10
  %24 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !76
  %26 = shl i32 %25, 24
  %27 = xor i32 %9, %26
  %28 = xor i32 %27, %18
  %29 = xor i32 %28, %23
  ret i32 %29
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!38 = !{!"seqcache.c:preprocessed_cache_destruct"}
!39 = !{!"seqcache.c:seqcache_hashhash"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 60}
!43 = !{!"SeqCacheKey", !35, i64 0, !44, i64 8, !45, i64 56, !41, i64 60}
!44 = !{!"SeqRenderData", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !45, i64 40, !36, i64 44, !36, i64 45}
!45 = !{!"float", !36, i64 0}
!46 = !{!43, !35, i64 0}
!47 = !{!"seqcache.c:seqcache_hashcmp"}
!48 = !{!43, !45, i64 56}
!49 = !{i8 0, i8 2}
!50 = !{!51, !35, i64 80}
!51 = !{!"SeqPreprocessCacheElem", !35, i64 0, !35, i64 8, !35, i64 16, !44, i64 24, !41, i64 72, !35, i64 80}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"seqcache.c:seqcache_key_check_seq"}
!55 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !40, i64 28, i64 4, !40, i64 32, i64 4, !40, i64 36, i64 4, !40, i64 40, i64 4, !56, i64 44, i64 1, !57, i64 45, i64 1, !57}
!56 = !{!45, !45, i64 0}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !41, i64 108}
!59 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !60, i64 156, !60, i64 158, !41, i64 160, !41, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !45, i64 224, !45, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !61, i64 256, !35, i64 272, !35, i64 280, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !35, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !45, i64 324, !41, i64 328, !36, i64 332, !36, i64 333, !61, i64 336}
!60 = !{!"short", !36, i64 0}
!61 = !{!"ListBase", !35, i64 0, !35, i64 8}
!62 = !{!44, !36, i64 44}
!63 = !{!"seqcache.c:BLI_listbase_clear"}
!64 = !{!65, !41, i64 0}
!65 = !{!"SeqPreprocessCache", !41, i64 0, !61, i64 8}
!66 = !{!51, !35, i64 16}
!67 = !{!51, !41, i64 72}
!68 = distinct !{!68, !53}
!69 = !{!"seqcache.c:seq_cmp_render_data"}
!70 = !{!44, !41, i64 32}
!71 = !{!44, !41, i64 24}
!72 = !{!44, !41, i64 28}
!73 = !{!44, !35, i64 8}
!74 = !{!44, !35, i64 16}
!75 = !{!44, !45, i64 40}
!76 = !{!44, !41, i64 36}
!77 = !{!65, !35, i64 8}
!78 = !{!51, !35, i64 0}
!79 = distinct !{!79, !53}
!80 = !{!"seqcache.c:seq_hash_render_data"}
