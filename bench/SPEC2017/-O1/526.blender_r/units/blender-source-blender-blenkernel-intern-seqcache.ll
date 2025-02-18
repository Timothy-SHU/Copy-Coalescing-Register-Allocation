; ModuleID = 'blender/source/blender/blenkernel/intern/seqcache.c'
source_filename = "blender/source/blender/blenkernel/intern/seqcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SeqPreprocessCache = type { i32, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.SeqPreprocessCacheElem = type { ptr, ptr, ptr, %struct.SeqRenderData, i32, ptr }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.SeqCacheKey = type { ptr, %struct.SeqRenderData, float, i32 }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }

@moviecache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"seqcache\00", align 1
@preprocess_cache = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"sequencer preprocessed cache\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sequencer preprocessed cache element\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_cache_destruct() local_unnamed_addr #0 {
  %1 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @IMB_moviecache_free(ptr noundef nonnull %1) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  tail call void @IMB_freeImBuf(ptr noundef %14) #6
  %15 = load ptr, ptr %12, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11, !llvm.loop !43

17:                                               ; preds = %11, %7
  %18 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %18, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %19) #6
  %20 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %20, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef %20) #6
  store ptr null, ptr @preprocess_cache, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %4, %17
  ret void
}

declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_cache_cleanup() local_unnamed_addr #0 {
  %1 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @IMB_moviecache_free(ptr noundef nonnull %1) #6
  %4 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @seqcache_hashhash, ptr noundef nonnull @seqcache_hashcmp) #6
  store ptr %4, ptr @moviecache, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  tail call void @IMB_freeImBuf(ptr noundef %15) #6
  %16 = load ptr, ptr %13, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %12, !llvm.loop !43

18:                                               ; preds = %12, %8
  %19 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %19, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %20) #6
  %21 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %21, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %5, %18
  ret void
}

declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @seqcache_hashhash(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = xor i32 %6, %8
  %10 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = ptrtoint ptr %11 to i64
  %13 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = ptrtoint ptr %14 to i64
  %16 = xor i64 %15, %12
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 6
  %19 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 7
  %20 = load float, ptr %19, align 8, !tbaa !51
  %21 = fmul float %20, 1.000000e+02
  %22 = fptosi float %21 to i32
  %23 = shl i32 %22, 10
  %24 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = shl i32 %25, 24
  %27 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !53
  %29 = xor i32 %9, %26
  %30 = xor i32 %29, %28
  %31 = xor i32 %30, %18
  %32 = xor i32 %31, %23
  %33 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !54
  %35 = add i32 %32, %34
  %36 = load ptr, ptr %0, align 8, !tbaa !56
  %37 = ptrtoint ptr %36 to i64
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 6
  %40 = xor i32 %35, %39
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @seqcache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = load ptr, ptr %1, align 8, !tbaa !56
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !57
  %11 = fcmp une float %8, %10
  br i1 %11, label %61, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !47
  %33 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !47
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 7
  %50 = load float, ptr %49, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 7
  %52 = load float, ptr %51, align 8, !tbaa !51
  %53 = fcmp une float %50, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.SeqCacheKey, ptr %0, i64 0, i32 1, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = getelementptr inbounds %struct.SeqCacheKey, ptr %1, i64 0, i32 1, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !52
  %59 = icmp ne i32 %56, %58
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %54, %48, %42, %36, %30, %24, %18, %12, %6, %2
  %62 = phi i8 [ 1, %12 ], [ 1, %6 ], [ 1, %2 ], [ 1, %48 ], [ 1, %42 ], [ 1, %36 ], [ 1, %30 ], [ 1, %24 ], [ 1, %18 ], [ %60, %54 ]
  ret i8 %62
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_preprocessed_cache_cleanup() local_unnamed_addr #0 {
  %1 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @IMB_freeImBuf(ptr noundef %10) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !43

13:                                               ; preds = %7, %3
  %14 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %14, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #6
  %16 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %16, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %0, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_cache_cleanup_sequence(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @IMB_moviecache_cleanup(ptr noundef nonnull %2, ptr noundef nonnull @seqcache_key_check_seq, ptr noundef %0) #6
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare void @IMB_moviecache_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @seqcache_key_check_seq(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !56
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_cache_get(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SeqCacheKey, align 8
  %6 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  store ptr %1, ptr %5, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.SeqCacheKey, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !58
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = sitofp i32 %13 to float
  %15 = fsub float %2, %14
  %16 = getelementptr inbounds %struct.SeqCacheKey, ptr %5, i64 0, i32 2
  store float %15, ptr %16, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.SeqCacheKey, ptr %5, i64 0, i32 3
  store i32 %3, ptr %17, align 4, !tbaa !54
  %18 = call ptr @IMB_moviecache_get(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %19

19:                                               ; preds = %4, %10
  %20 = phi ptr [ %18, %10 ], [ null, %4 ]
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_cache_put(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SeqCacheKey, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = icmp eq ptr %4, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !65
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load ptr, ptr @moviecache, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @seqcache_hashhash, ptr noundef nonnull @seqcache_hashcmp) #6
  store ptr %16, ptr @moviecache, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %12
  store ptr %1, ptr %6, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.SeqCacheKey, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !58
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !61
  %21 = sitofp i32 %20 to float
  %22 = fsub float %2, %21
  %23 = getelementptr inbounds %struct.SeqCacheKey, ptr %6, i64 0, i32 2
  store float %22, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.SeqCacheKey, ptr %6, i64 0, i32 3
  store i32 %3, ptr %24, align 4, !tbaa !54
  %25 = load ptr, ptr @moviecache, align 8, !tbaa !34
  call void @IMB_moviecache_put(ptr noundef %25, ptr noundef nonnull %6, ptr noundef nonnull %4) #6
  br label %26

26:                                               ; preds = %5, %8, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  ret void
}

declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_preprocessed_cache_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !66
  %9 = sitofp i32 %8 to float
  %10 = fcmp une float %9, %2
  br i1 %10, label %78, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %78, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 6
  br label %23

23:                                               ; preds = %15, %75
  %24 = phi ptr [ %13, %15 ], [ %76, %75 ]
  %25 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !69
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !48
  %35 = load i32, ptr %16, align 8, !tbaa !48
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !46
  %40 = load i32, ptr %17, align 8, !tbaa !46
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = load i32, ptr %18, align 4, !tbaa !47
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = load ptr, ptr %19, align 8, !tbaa !49
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  %55 = load ptr, ptr %20, align 8, !tbaa !50
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 7
  %59 = load float, ptr %58, align 8, !tbaa !51
  %60 = load float, ptr %21, align 8, !tbaa !51
  %61 = fcmp une float %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 3, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !52
  %65 = load i32, ptr %22, align 4, !tbaa !52
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i8
  br label %68

68:                                               ; preds = %32, %37, %42, %47, %52, %57, %62
  %69 = phi i8 [ 1, %57 ], [ 1, %52 ], [ 1, %47 ], [ 1, %42 ], [ 1, %37 ], [ 1, %32 ], [ %67, %62 ]
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %24, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !38
  tail call void @IMB_refImBuf(ptr noundef %73) #6
  %74 = load ptr, ptr %72, align 8, !tbaa !38
  br label %78

75:                                               ; preds = %68, %28, %23
  %76 = load ptr, ptr %24, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %23, !llvm.loop !70

78:                                               ; preds = %75, %11, %7, %4, %71
  %79 = phi ptr [ %74, %71 ], [ null, %4 ], [ null, %7 ], [ null, %11 ], [ null, %75 ]
  ret ptr %79
}

declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_preprocessed_cache_put(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 24, ptr noundef nonnull @.str.1) #6
  store ptr %10, ptr @preprocess_cache, align 8, !tbaa !34
  br label %30

11:                                               ; preds = %5
  %12 = load i32, ptr %6, align 8, !tbaa !66
  %13 = sitofp i32 %12 to float
  %14 = fcmp une float %13, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %23, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  tail call void @IMB_freeImBuf(ptr noundef %22) #6
  %23 = load ptr, ptr %20, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19, !llvm.loop !43

25:                                               ; preds = %19, %15
  %26 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %26, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %27) #6
  %28 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %28, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  br label %30

30:                                               ; preds = %11, %25, %8
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 88, ptr noundef nonnull @.str.2) #6
  %33 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %32, i64 0, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %32, i64 0, i32 4
  store i32 %3, ptr %34, align 8, !tbaa !69
  %35 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %32, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !58
  %36 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %32, i64 0, i32 5
  store ptr %4, ptr %36, align 8, !tbaa !38
  %37 = fptosi float %2 to i32
  %38 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  store i32 %37, ptr %38, align 8, !tbaa !66
  tail call void @IMB_refImBuf(ptr noundef %4) #6
  %39 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %39, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %32) #6
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %19
  %9 = phi ptr [ %10, %19 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SeqPreprocessCacheElem, ptr %9, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  tail call void @IMB_freeImBuf(ptr noundef %16) #6
  %17 = load ptr, ptr @preprocess_cache, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.SeqPreprocessCache, ptr %17, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %18, ptr noundef nonnull %9) #6
  br label %19

19:                                               ; preds = %8, %14
  %20 = icmp eq ptr %10, null
  br i1 %20, label %21, label %8, !llvm.loop !73

21:                                               ; preds = %19, %4, %1
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 80}
!39 = !{!"SeqPreprocessCacheElem", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !41, i64 72, !35, i64 80}
!40 = !{!"SeqRenderData", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !36, i64 44, !36, i64 45}
!41 = !{!"int", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!40, !41, i64 24}
!47 = !{!40, !41, i64 28}
!48 = !{!40, !41, i64 32}
!49 = !{!40, !35, i64 8}
!50 = !{!40, !35, i64 16}
!51 = !{!40, !42, i64 40}
!52 = !{!40, !41, i64 36}
!53 = !{!41, !41, i64 0}
!54 = !{!55, !41, i64 60}
!55 = !{!"SeqCacheKey", !35, i64 0, !40, i64 8, !42, i64 56, !41, i64 60}
!56 = !{!55, !35, i64 0}
!57 = !{!55, !42, i64 56}
!58 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !53, i64 28, i64 4, !53, i64 32, i64 4, !53, i64 36, i64 4, !53, i64 40, i64 4, !59, i64 44, i64 1, !60, i64 45, i64 1, !60}
!59 = !{!42, !42, i64 0}
!60 = !{!36, !36, i64 0}
!61 = !{!62, !41, i64 108}
!62 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !63, i64 156, !63, i64 158, !41, i64 160, !41, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !42, i64 224, !42, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !64, i64 256, !35, i64 272, !35, i64 280, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !35, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !42, i64 324, !41, i64 328, !36, i64 332, !36, i64 333, !64, i64 336}
!63 = !{!"short", !36, i64 0}
!64 = !{!"ListBase", !35, i64 0, !35, i64 8}
!65 = !{!40, !36, i64 44}
!66 = !{!67, !41, i64 0}
!67 = !{!"SeqPreprocessCache", !41, i64 0, !64, i64 8}
!68 = !{!39, !35, i64 16}
!69 = !{!39, !41, i64 72}
!70 = distinct !{!70, !44, !45}
!71 = !{!67, !35, i64 8}
!72 = !{!39, !35, i64 0}
!73 = distinct !{!73, !44, !45}
