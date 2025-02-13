; ModuleID = 'blender/intern/guardedalloc/intern/mallocn_lockfree_impl.c'
source_filename = "blender/intern/guardedalloc/intern/mallocn_lockfree_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MemHead = type { i64 }
%struct.MemHeadAligned = type { i16, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@totblock = internal unnamed_addr global i32 0, align 4
@mem_in_use = internal unnamed_addr global i64 0, align 8
@mmap_in_use = internal unnamed_addr global i64 0, align 8
@malloc_debug_memset = internal unnamed_addr global i1 false, align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"dupli_mapalloc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dupli_malloc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"recalloc\00", align 1
@peak_mem = internal unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Calloc returns null: len=%lu in %s, total %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Malloc returns null: len=%lu in %s, total %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\0Atotal memory len: %.3f MB\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"peak memory len: %.3f MB\0A\00", align 1
@error_callback = internal unnamed_addr global ptr null, align 8
@str = private unnamed_addr constant [22 x i8] c"Couldn't unmap memory\00", align 1
@str.10 = private unnamed_addr constant [97 x i8] c"\0AFor more detailed per-block statistics run Blender with memory debugging command line argument.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @MEM_lockfree_allocN_len(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %5 = load i64, ptr %4, align 8, !tbaa !34
  %6 = and i64 %5, -4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_lockfree_freeN(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %3 = tail call i64 @MEM_lockfree_allocN_len(ptr noundef %0) #19, !range !39
  %4 = load i32, ptr @totblock, align 4, !tbaa !40
  %5 = add i32 %4, -1
  store i32 %5, ptr @totblock, align 4, !tbaa !40
  %6 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %7 = sub i64 %6, %3
  store i64 %7, ptr @mem_in_use, align 8, !tbaa !42
  %8 = load i64, ptr %2, align 8, !tbaa !34
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i64, ptr @mmap_in_use, align 8, !tbaa !42
  %13 = sub i64 %12, %3
  store i64 %13, ptr @mmap_in_use, align 8, !tbaa !42
  %14 = add i64 %3, 8
  %15 = tail call i32 @munmap(ptr noundef nonnull %2, i64 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %35

19:                                               ; preds = %1
  %20 = load i1, ptr @malloc_debug_memset, align 1
  %21 = icmp ne i64 %3, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !43

23:                                               ; preds = %19
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 -1, i64 %3, i1 false)
  br label %24

24:                                               ; preds = %23, %19
  %25 = and i64 %8, 2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %27, !prof !44

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %29 = load i16, ptr %28, align 8, !tbaa !45
  %30 = sext i16 %29 to i64
  %31 = urem i64 16, %30
  %32 = sub nsw i64 %31, %30
  %33 = getelementptr inbounds i8, ptr %28, i64 %32
  tail call void @aligned_free(ptr noundef nonnull %33) #20
  br label %35

34:                                               ; preds = %24
  tail call void @free(ptr noundef nonnull %2) #20
  br label %35

35:                                               ; preds = %27, %34, %11, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @aligned_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_lockfree_dupallocN(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %5 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !48
  %6 = tail call i64 %5(ptr noundef nonnull %0) #20
  %7 = load i64, ptr %4, align 8, !tbaa !34
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %12, label %10, !prof !44

10:                                               ; preds = %3
  %11 = tail call ptr @MEM_lockfree_mapallocN(i64 noundef %6, ptr noundef nonnull @.str.1) #19
  br label %22

12:                                               ; preds = %3
  %13 = and i64 %7, 2
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !44

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %17 = load i16, ptr %16, align 8, !tbaa !45
  %18 = sext i16 %17 to i64
  %19 = tail call ptr @MEM_lockfree_mallocN_aligned(i64 noundef %6, i64 noundef %18, ptr noundef nonnull @.str.2) #19
  br label %22

20:                                               ; preds = %12
  %21 = tail call ptr @MEM_lockfree_mallocN(i64 noundef %6, ptr noundef nonnull @.str.2) #19
  br label %22

22:                                               ; preds = %15, %20, %10
  %23 = phi ptr [ %11, %10 ], [ %19, %15 ], [ %21, %20 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr nonnull align 1 %0, i64 %6, i1 false)
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ null, %1 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @MEM_lockfree_mapallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @MEM_lockfree_callocN(i64 noundef %0, ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_lockfree_mallocN_aligned(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = urem i64 16, %1
  %5 = sub i64 %1, %4
  %6 = add i64 %0, 3
  %7 = and i64 %6, -4
  %8 = add i64 %7, 16
  %9 = add i64 %8, %5
  %10 = tail call ptr @aligned_malloc(i64 noundef %9, i64 noundef %1) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !prof !43

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %10, i64 %5
  %14 = load i1, ptr @malloc_debug_memset, align 1
  %15 = icmp ne i64 %7, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %19, !prof !43

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.MemHeadAligned, ptr %13, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %18, i8 -1, i64 %7, i1 false)
  br label %19

19:                                               ; preds = %17, %12
  %20 = or disjoint i64 %7, 2
  %21 = getelementptr inbounds %struct.MemHeadAligned, ptr %13, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !50
  %22 = trunc i64 %1 to i16
  store i16 %22, ptr %13, align 8, !tbaa !45
  %23 = load i32, ptr @totblock, align 4, !tbaa !40
  %24 = add i32 %23, 1
  store i32 %24, ptr @totblock, align 4, !tbaa !40
  %25 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %26 = add i64 %25, %7
  store i64 %26, ptr @mem_in_use, align 8, !tbaa !42
  tail call fastcc void @update_maximum(i64 noundef %26) #19
  %27 = getelementptr inbounds %struct.MemHeadAligned, ptr %13, i64 1
  br label %31

28:                                               ; preds = %3
  %29 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %30 = trunc i64 %29 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %7, ptr noundef %2, i32 noundef %30) #19
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi ptr [ %27, %19 ], [ null, %28 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @MEM_lockfree_mallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !43

8:                                                ; preds = %2
  %9 = load i1, ptr @malloc_debug_memset, align 1
  %10 = icmp ne i64 %4, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14, !prof !43

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %13, i8 -1, i64 %4, i1 false)
  br label %14

14:                                               ; preds = %12, %8
  store i64 %4, ptr %6, align 8, !tbaa !34
  %15 = load i32, ptr @totblock, align 4, !tbaa !40
  %16 = add i32 %15, 1
  store i32 %16, ptr @totblock, align 4, !tbaa !40
  %17 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %18 = add i64 %17, %4
  store i64 %18, ptr @mem_in_use, align 8, !tbaa !42
  tail call fastcc void @update_maximum(i64 noundef %18) #19
  %19 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %23

20:                                               ; preds = %2
  %21 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %22 = trunc i64 %21 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %4, ptr noundef %1, i32 noundef %22) #19
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi ptr [ %19, %14 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_lockfree_reallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %7 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !48
  %8 = tail call i64 %7(ptr noundef nonnull %0) #20
  %9 = load i64, ptr %6, align 8, !tbaa !34
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14, !prof !44

12:                                               ; preds = %5
  %13 = tail call ptr @MEM_lockfree_mallocN(i64 noundef %1, ptr noundef nonnull @.str.3) #19
  br label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %16 = load i16, ptr %15, align 8, !tbaa !45
  %17 = sext i16 %16 to i64
  %18 = tail call ptr @MEM_lockfree_mallocN_aligned(i64 noundef %8, i64 noundef %17, ptr noundef nonnull @.str.3) #19
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi ptr [ %13, %12 ], [ %18, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @llvm.umin.i64(i64 %8, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %22, %19
  tail call void @MEM_lockfree_freeN(ptr noundef nonnull %0) #19
  br label %27

25:                                               ; preds = %3
  %26 = tail call ptr @MEM_lockfree_mallocN(i64 noundef %1, ptr noundef %2) #19
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi ptr [ %20, %24 ], [ %26, %25 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_lockfree_recallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %7 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !48
  %8 = tail call i64 %7(ptr noundef nonnull %0) #20
  %9 = load i64, ptr %6, align 8, !tbaa !34
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14, !prof !44

12:                                               ; preds = %5
  %13 = tail call ptr @MEM_lockfree_mallocN(i64 noundef %1, ptr noundef nonnull @.str.4) #19
  br label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %16 = load i16, ptr %15, align 8, !tbaa !45
  %17 = sext i16 %16 to i64
  %18 = tail call ptr @MEM_lockfree_mallocN_aligned(i64 noundef %8, i64 noundef %17, ptr noundef nonnull @.str.4) #19
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi ptr [ %13, %12 ], [ %18, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = icmp ugt i64 %8, %1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %30

25:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %8, i1 false)
  %26 = icmp ult i64 %8, %1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %20, i64 %8
  %29 = sub i64 %1, %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %28, i8 0, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %24, %27, %25, %19
  tail call void @MEM_lockfree_freeN(ptr noundef nonnull %0) #19
  br label %33

31:                                               ; preds = %3
  %32 = tail call ptr @MEM_lockfree_callocN(i64 noundef %1, ptr noundef %2) #19
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi ptr [ %20, %30 ], [ %32, %31 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @MEM_lockfree_callocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %5) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !43

8:                                                ; preds = %2
  store i64 %4, ptr %6, align 8, !tbaa !34
  %9 = load i32, ptr @totblock, align 4, !tbaa !40
  %10 = add i32 %9, 1
  store i32 %10, ptr @totblock, align 4, !tbaa !40
  %11 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %12 = add i64 %11, %4
  store i64 %12, ptr @mem_in_use, align 8, !tbaa !42
  tail call fastcc void @update_maximum(i64 noundef %12) #19
  %13 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %17

14:                                               ; preds = %2
  %15 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %16 = trunc i64 %15 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.5, i64 noundef %4, ptr noundef %1, i32 noundef %16) #19
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %13, %8 ], [ null, %14 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @update_maximum(i64 noundef %0) unnamed_addr #10 !PGOFuncName !51 {
  %2 = load i64, ptr @peak_mem, align 8, !tbaa !42
  %3 = tail call i64 @llvm.umax.i64(i64 %2, i64 %0)
  store i64 %3, ptr @peak_mem, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @print_error(ptr nocapture noundef readonly %0, ...) unnamed_addr #1 !PGOFuncName !52 {
  %2 = alloca [512 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vsnprintf(ptr noundef nonnull %2, i64 noundef 512, ptr noundef %0, ptr noundef nonnull %3) #20
  call void @llvm.va_end(ptr nonnull %3)
  %5 = getelementptr inbounds [512 x i8], ptr %2, i64 0, i64 511
  store i8 0, ptr %5, align 1, !tbaa !53
  %6 = load ptr, ptr @error_callback, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void %6(ptr noundef nonnull %2) #20
  br label %9

9:                                                ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @MEM_lockfree_printmemlist_pydict() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @MEM_lockfree_printmemlist() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @MEM_lockfree_callbackmemlist(ptr nocapture noundef readnone %0) local_unnamed_addr #12 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @MEM_lockfree_printmemlist_stats() local_unnamed_addr #13 {
  %1 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3EB0000000000000
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %3) #19
  %5 = load i64, ptr @peak_mem, align 8, !tbaa !42
  %6 = uitofp i64 %5 to double
  %7 = fmul double %6, 0x3EB0000000000000
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %7) #19
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_set_error_callback(ptr noundef %0) local_unnamed_addr #14 {
  store ptr %0, ptr @error_callback, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @MEM_lockfree_check_memory_integrity() local_unnamed_addr #12 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_set_lock_callback(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_set_memory_debug() local_unnamed_addr #14 {
  store i1 true, ptr @malloc_debug_memset, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_lockfree_get_memory_in_use() local_unnamed_addr #15 {
  %1 = load i64, ptr @mem_in_use, align 8, !tbaa !42
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_lockfree_get_mapped_memory_in_use() local_unnamed_addr #15 {
  %1 = load i64, ptr @mmap_in_use, align 8, !tbaa !42
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @MEM_lockfree_get_memory_blocks_in_use() local_unnamed_addr #15 {
  %1 = load i32, ptr @totblock, align 4, !tbaa !40
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_reset_peak_memory() local_unnamed_addr #14 {
  store i64 0, ptr @peak_mem, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_lockfree_get_peak_memory() local_unnamed_addr #15 {
  %1 = load i64, ptr @peak_mem, align 8, !tbaa !42
  ret i64 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0) }
attributes #22 = { nounwind optsize allocsize(0,1) }
attributes #23 = { nounwind }

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
!35 = !{!"MemHead", !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{i64 0, i64 -3}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!36, !36, i64 0}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!46, !47, i64 0}
!46 = !{!"MemHeadAligned", !47, i64 0, !36, i64 8}
!47 = !{!"short", !37, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !37, i64 0}
!50 = !{!46, !36, i64 8}
!51 = !{!"mallocn_lockfree_impl.c:update_maximum"}
!52 = !{!"mallocn_lockfree_impl.c:print_error"}
!53 = !{!37, !37, i64 0}
