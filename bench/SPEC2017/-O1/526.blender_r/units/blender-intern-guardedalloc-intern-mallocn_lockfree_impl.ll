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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local void @MEM_lockfree_freeN(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8, !tbaa !34
  %6 = and i64 %5, -4
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %6, %4 ], [ 0, %1 ]
  %9 = load i32, ptr @totblock, align 4, !tbaa !39
  %10 = add i32 %9, -1
  store i32 %10, ptr @totblock, align 4, !tbaa !39
  %11 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %12 = sub i64 %11, %8
  store i64 %12, ptr @mem_in_use, align 8, !tbaa !41
  %13 = load i64, ptr %2, align 8, !tbaa !34
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = load i64, ptr @mmap_in_use, align 8, !tbaa !41
  %18 = sub i64 %17, %8
  store i64 %18, ptr @mmap_in_use, align 8, !tbaa !41
  %19 = add i64 %8, 8
  %20 = tail call i32 @munmap(ptr noundef nonnull %2, i64 noundef %19) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %40

24:                                               ; preds = %7
  %25 = load i1, ptr @malloc_debug_memset, align 1
  %26 = icmp ne i64 %8, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !42

28:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 -1, i64 %8, i1 false)
  br label %29

29:                                               ; preds = %28, %24
  %30 = and i64 %13, 2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %39, label %32, !prof !43

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %34 = load i16, ptr %33, align 8, !tbaa !44
  %35 = sext i16 %34 to i64
  %36 = urem i64 16, %35
  %37 = sub nsw i64 %36, %35
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  tail call void @aligned_free(ptr noundef nonnull %38) #18
  br label %40

39:                                               ; preds = %29
  tail call void @free(ptr noundef %2) #18
  br label %40

40:                                               ; preds = %32, %39, %16, %22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @aligned_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_lockfree_dupallocN(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %87, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %5 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !47
  %6 = tail call i64 %5(ptr noundef nonnull %0) #18
  %7 = load i64, ptr %4, align 8, !tbaa !34
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %27, label %10, !prof !43

10:                                               ; preds = %3
  %11 = add i64 %6, 3
  %12 = and i64 %11, -4
  %13 = add i64 %12, 8
  %14 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %13) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16, !prof !42

16:                                               ; preds = %10
  store i64 %12, ptr %14, align 8, !tbaa !34
  %17 = load i32, ptr @totblock, align 4, !tbaa !39
  %18 = add i32 %17, 1
  store i32 %18, ptr @totblock, align 4, !tbaa !39
  %19 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %20 = add i64 %19, %12
  store i64 %20, ptr @mem_in_use, align 8, !tbaa !41
  %21 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 %20)
  store i64 %22, ptr @peak_mem, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.MemHead, ptr %14, i64 1
  br label %85

24:                                               ; preds = %10
  %25 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %26 = trunc i64 %25 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.5, i64 noundef %12, ptr noundef nonnull @.str.1, i32 noundef %26)
  br label %85

27:                                               ; preds = %3
  %28 = and i64 %7, 2
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %62, label %30, !prof !43

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %32 = load i16, ptr %31, align 8, !tbaa !44
  %33 = sext i16 %32 to i64
  %34 = urem i64 16, %33
  %35 = sub nsw i64 %33, %34
  %36 = add i64 %6, 3
  %37 = and i64 %36, -4
  %38 = add i64 %37, 16
  %39 = add i64 %38, %35
  %40 = tail call ptr @aligned_malloc(i64 noundef %39, i64 noundef %33) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42, !prof !42

42:                                               ; preds = %30
  %43 = getelementptr inbounds i8, ptr %40, i64 %35
  %44 = load i1, ptr @malloc_debug_memset, align 1
  %45 = icmp ne i64 %37, 0
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %49, !prof !42

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.MemHeadAligned, ptr %43, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %48, i8 -1, i64 %37, i1 false)
  br label %49

49:                                               ; preds = %47, %42
  %50 = or disjoint i64 %37, 2
  %51 = getelementptr inbounds %struct.MemHeadAligned, ptr %43, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !49
  store i16 %32, ptr %43, align 8, !tbaa !44
  %52 = load i32, ptr @totblock, align 4, !tbaa !39
  %53 = add i32 %52, 1
  store i32 %53, ptr @totblock, align 4, !tbaa !39
  %54 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %55 = add i64 %54, %37
  store i64 %55, ptr @mem_in_use, align 8, !tbaa !41
  %56 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %57 = tail call i64 @llvm.umax.i64(i64 %56, i64 %55)
  store i64 %57, ptr @peak_mem, align 8, !tbaa !41
  %58 = getelementptr inbounds %struct.MemHeadAligned, ptr %43, i64 1
  br label %85

59:                                               ; preds = %30
  %60 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %61 = trunc i64 %60 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %37, ptr noundef nonnull @.str.2, i32 noundef %61)
  br label %85

62:                                               ; preds = %27
  %63 = add i64 %6, 3
  %64 = and i64 %63, -4
  %65 = add i64 %64, 8
  %66 = tail call noalias ptr @malloc(i64 noundef %65) #20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %82, label %68, !prof !42

68:                                               ; preds = %62
  %69 = load i1, ptr @malloc_debug_memset, align 1
  %70 = icmp ne i64 %64, 0
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %74, !prof !42

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.MemHead, ptr %66, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %73, i8 -1, i64 %64, i1 false)
  br label %74

74:                                               ; preds = %72, %68
  store i64 %64, ptr %66, align 8, !tbaa !34
  %75 = load i32, ptr @totblock, align 4, !tbaa !39
  %76 = add i32 %75, 1
  store i32 %76, ptr @totblock, align 4, !tbaa !39
  %77 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %78 = add i64 %77, %64
  store i64 %78, ptr @mem_in_use, align 8, !tbaa !41
  %79 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %80 = tail call i64 @llvm.umax.i64(i64 %79, i64 %78)
  store i64 %80, ptr @peak_mem, align 8, !tbaa !41
  %81 = getelementptr inbounds %struct.MemHead, ptr %66, i64 1
  br label %85

82:                                               ; preds = %62
  %83 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %84 = trunc i64 %83 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %64, ptr noundef nonnull @.str.2, i32 noundef %84)
  br label %85

85:                                               ; preds = %82, %74, %59, %49, %24, %16
  %86 = phi ptr [ %23, %16 ], [ null, %24 ], [ %58, %49 ], [ null, %59 ], [ %81, %74 ], [ null, %82 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr nonnull align 1 %0, i64 %6, i1 false)
  br label %87

87:                                               ; preds = %85, %1
  %88 = phi ptr [ %86, %85 ], [ null, %1 ]
  ret ptr %88
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @MEM_lockfree_mapallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !42

8:                                                ; preds = %2
  store i64 %4, ptr %6, align 8, !tbaa !34
  %9 = load i32, ptr @totblock, align 4, !tbaa !39
  %10 = add i32 %9, 1
  store i32 %10, ptr @totblock, align 4, !tbaa !39
  %11 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %12 = add i64 %11, %4
  store i64 %12, ptr @mem_in_use, align 8, !tbaa !41
  %13 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 %12)
  store i64 %14, ptr @peak_mem, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %19

16:                                               ; preds = %2
  %17 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %18 = trunc i64 %17 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.5, i64 noundef %4, ptr noundef %1, i32 noundef %18)
  br label %19

19:                                               ; preds = %8, %16
  %20 = phi ptr [ %15, %8 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_lockfree_mallocN_aligned(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = urem i64 16, %1
  %5 = sub i64 %1, %4
  %6 = add i64 %0, 3
  %7 = and i64 %6, -4
  %8 = add i64 %7, 16
  %9 = add i64 %8, %5
  %10 = tail call ptr @aligned_malloc(i64 noundef %9, i64 noundef %1) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12, !prof !42

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %10, i64 %5
  %14 = load i1, ptr @malloc_debug_memset, align 1
  %15 = icmp ne i64 %7, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %19, !prof !42

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.MemHeadAligned, ptr %13, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %18, i8 -1, i64 %7, i1 false)
  br label %19

19:                                               ; preds = %17, %12
  %20 = or disjoint i64 %7, 2
  %21 = getelementptr inbounds %struct.MemHeadAligned, ptr %13, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !49
  %22 = trunc i64 %1 to i16
  store i16 %22, ptr %13, align 8, !tbaa !44
  %23 = load i32, ptr @totblock, align 4, !tbaa !39
  %24 = add i32 %23, 1
  store i32 %24, ptr @totblock, align 4, !tbaa !39
  %25 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %26 = add i64 %25, %7
  store i64 %26, ptr @mem_in_use, align 8, !tbaa !41
  %27 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %28 = tail call i64 @llvm.umax.i64(i64 %27, i64 %26)
  store i64 %28, ptr @peak_mem, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct.MemHeadAligned, ptr %13, i64 1
  br label %33

30:                                               ; preds = %3
  %31 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %32 = trunc i64 %31 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %7, ptr noundef %2, i32 noundef %32)
  br label %33

33:                                               ; preds = %30, %19
  %34 = phi ptr [ %29, %19 ], [ null, %30 ]
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @MEM_lockfree_mallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !42

8:                                                ; preds = %2
  %9 = load i1, ptr @malloc_debug_memset, align 1
  %10 = icmp ne i64 %4, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14, !prof !42

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %13, i8 -1, i64 %4, i1 false)
  br label %14

14:                                               ; preds = %12, %8
  store i64 %4, ptr %6, align 8, !tbaa !34
  %15 = load i32, ptr @totblock, align 4, !tbaa !39
  %16 = add i32 %15, 1
  store i32 %16, ptr @totblock, align 4, !tbaa !39
  %17 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %18 = add i64 %17, %4
  store i64 %18, ptr @mem_in_use, align 8, !tbaa !41
  %19 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %20 = tail call i64 @llvm.umax.i64(i64 %19, i64 %18)
  store i64 %20, ptr @peak_mem, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %25

22:                                               ; preds = %2
  %23 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %24 = trunc i64 %23 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %4, ptr noundef %1, i32 noundef %24)
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi ptr [ %21, %14 ], [ null, %22 ]
  ret ptr %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_lockfree_reallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %7 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !47
  %8 = tail call i64 %7(ptr noundef nonnull %0) #18
  %9 = load i64, ptr %6, align 8, !tbaa !34
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %35, !prof !43

12:                                               ; preds = %5
  %13 = add i64 %1, 3
  %14 = and i64 %13, -4
  %15 = add i64 %14, 8
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18, !prof !42

18:                                               ; preds = %12
  %19 = load i1, ptr @malloc_debug_memset, align 1
  %20 = icmp ne i64 %14, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24, !prof !42

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MemHead, ptr %16, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %23, i8 -1, i64 %14, i1 false)
  br label %24

24:                                               ; preds = %22, %18
  store i64 %14, ptr %16, align 8, !tbaa !34
  %25 = load i32, ptr @totblock, align 4, !tbaa !39
  %26 = add i32 %25, 1
  store i32 %26, ptr @totblock, align 4, !tbaa !39
  %27 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %28 = add i64 %27, %14
  store i64 %28, ptr @mem_in_use, align 8, !tbaa !41
  %29 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %30 = tail call i64 @llvm.umax.i64(i64 %29, i64 %28)
  store i64 %30, ptr @peak_mem, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.MemHead, ptr %16, i64 1
  br label %67

32:                                               ; preds = %12
  %33 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %34 = trunc i64 %33 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %14, ptr noundef nonnull @.str.3, i32 noundef %34)
  br label %67

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %37 = load i16, ptr %36, align 8, !tbaa !44
  %38 = sext i16 %37 to i64
  %39 = urem i64 16, %38
  %40 = sub nsw i64 %38, %39
  %41 = add i64 %8, 3
  %42 = and i64 %41, -4
  %43 = add i64 %42, 16
  %44 = add i64 %43, %40
  %45 = tail call ptr @aligned_malloc(i64 noundef %44, i64 noundef %38) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47, !prof !42

47:                                               ; preds = %35
  %48 = getelementptr inbounds i8, ptr %45, i64 %40
  %49 = load i1, ptr @malloc_debug_memset, align 1
  %50 = icmp ne i64 %42, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %54, !prof !42

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.MemHeadAligned, ptr %48, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %53, i8 -1, i64 %42, i1 false)
  br label %54

54:                                               ; preds = %52, %47
  %55 = or disjoint i64 %42, 2
  %56 = getelementptr inbounds %struct.MemHeadAligned, ptr %48, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !49
  store i16 %37, ptr %48, align 8, !tbaa !44
  %57 = load i32, ptr @totblock, align 4, !tbaa !39
  %58 = add i32 %57, 1
  store i32 %58, ptr @totblock, align 4, !tbaa !39
  %59 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %60 = add i64 %59, %42
  store i64 %60, ptr @mem_in_use, align 8, !tbaa !41
  %61 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %62 = tail call i64 @llvm.umax.i64(i64 %61, i64 %60)
  store i64 %62, ptr @peak_mem, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct.MemHeadAligned, ptr %48, i64 1
  br label %67

64:                                               ; preds = %35
  %65 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %66 = trunc i64 %65 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %42, ptr noundef nonnull @.str.3, i32 noundef %66)
  br label %67

67:                                               ; preds = %64, %54, %32, %24
  %68 = phi ptr [ %31, %24 ], [ null, %32 ], [ %63, %54 ], [ null, %64 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @llvm.umin.i64(i64 %8, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %68, ptr nonnull align 1 %0, i64 %71, i1 false)
  br label %72

72:                                               ; preds = %70, %67
  tail call void @MEM_lockfree_freeN(ptr noundef nonnull %0)
  br label %96

73:                                               ; preds = %3
  %74 = add i64 %1, 3
  %75 = and i64 %74, -4
  %76 = add i64 %75, 8
  %77 = tail call noalias ptr @malloc(i64 noundef %76) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79, !prof !42

79:                                               ; preds = %73
  %80 = load i1, ptr @malloc_debug_memset, align 1
  %81 = icmp ne i64 %75, 0
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %85, !prof !42

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.MemHead, ptr %77, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %84, i8 -1, i64 %75, i1 false)
  br label %85

85:                                               ; preds = %83, %79
  store i64 %75, ptr %77, align 8, !tbaa !34
  %86 = load i32, ptr @totblock, align 4, !tbaa !39
  %87 = add i32 %86, 1
  store i32 %87, ptr @totblock, align 4, !tbaa !39
  %88 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %89 = add i64 %88, %75
  store i64 %89, ptr @mem_in_use, align 8, !tbaa !41
  %90 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %91 = tail call i64 @llvm.umax.i64(i64 %90, i64 %89)
  store i64 %91, ptr @peak_mem, align 8, !tbaa !41
  %92 = getelementptr inbounds %struct.MemHead, ptr %77, i64 1
  br label %96

93:                                               ; preds = %73
  %94 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %95 = trunc i64 %94 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %75, ptr noundef %2, i32 noundef %95)
  br label %96

96:                                               ; preds = %93, %85, %72
  %97 = phi ptr [ %68, %72 ], [ %92, %85 ], [ null, %93 ]
  ret ptr %97
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_lockfree_recallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %7 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !47
  %8 = tail call i64 %7(ptr noundef nonnull %0) #18
  %9 = load i64, ptr %6, align 8, !tbaa !34
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %35, !prof !43

12:                                               ; preds = %5
  %13 = add i64 %1, 3
  %14 = and i64 %13, -4
  %15 = add i64 %14, 8
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18, !prof !42

18:                                               ; preds = %12
  %19 = load i1, ptr @malloc_debug_memset, align 1
  %20 = icmp ne i64 %14, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24, !prof !42

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MemHead, ptr %16, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %23, i8 -1, i64 %14, i1 false)
  br label %24

24:                                               ; preds = %22, %18
  store i64 %14, ptr %16, align 8, !tbaa !34
  %25 = load i32, ptr @totblock, align 4, !tbaa !39
  %26 = add i32 %25, 1
  store i32 %26, ptr @totblock, align 4, !tbaa !39
  %27 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %28 = add i64 %27, %14
  store i64 %28, ptr @mem_in_use, align 8, !tbaa !41
  %29 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %30 = tail call i64 @llvm.umax.i64(i64 %29, i64 %28)
  store i64 %30, ptr @peak_mem, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.MemHead, ptr %16, i64 1
  br label %67

32:                                               ; preds = %12
  %33 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %34 = trunc i64 %33 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %14, ptr noundef nonnull @.str.4, i32 noundef %34)
  br label %67

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.MemHeadAligned, ptr %0, i64 -1
  %37 = load i16, ptr %36, align 8, !tbaa !44
  %38 = sext i16 %37 to i64
  %39 = urem i64 16, %38
  %40 = sub nsw i64 %38, %39
  %41 = add i64 %8, 3
  %42 = and i64 %41, -4
  %43 = add i64 %42, 16
  %44 = add i64 %43, %40
  %45 = tail call ptr @aligned_malloc(i64 noundef %44, i64 noundef %38) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47, !prof !42

47:                                               ; preds = %35
  %48 = getelementptr inbounds i8, ptr %45, i64 %40
  %49 = load i1, ptr @malloc_debug_memset, align 1
  %50 = icmp ne i64 %42, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %54, !prof !42

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.MemHeadAligned, ptr %48, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %53, i8 -1, i64 %42, i1 false)
  br label %54

54:                                               ; preds = %52, %47
  %55 = or disjoint i64 %42, 2
  %56 = getelementptr inbounds %struct.MemHeadAligned, ptr %48, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !49
  store i16 %37, ptr %48, align 8, !tbaa !44
  %57 = load i32, ptr @totblock, align 4, !tbaa !39
  %58 = add i32 %57, 1
  store i32 %58, ptr @totblock, align 4, !tbaa !39
  %59 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %60 = add i64 %59, %42
  store i64 %60, ptr @mem_in_use, align 8, !tbaa !41
  %61 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %62 = tail call i64 @llvm.umax.i64(i64 %61, i64 %60)
  store i64 %62, ptr @peak_mem, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct.MemHeadAligned, ptr %48, i64 1
  br label %67

64:                                               ; preds = %35
  %65 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %66 = trunc i64 %65 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.6, i64 noundef %42, ptr noundef nonnull @.str.4, i32 noundef %66)
  br label %67

67:                                               ; preds = %64, %54, %32, %24
  %68 = phi ptr [ %31, %24 ], [ null, %32 ], [ %63, %54 ], [ null, %64 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = icmp ugt i64 %8, %1
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %68, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %78

73:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %68, ptr nonnull align 1 %0, i64 %8, i1 false)
  %74 = icmp ult i64 %8, %1
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, ptr %68, i64 %8
  %77 = sub i64 %1, %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %76, i8 0, i64 %77, i1 false)
  br label %78

78:                                               ; preds = %72, %75, %73, %67
  tail call void @MEM_lockfree_freeN(ptr noundef nonnull %0)
  br label %96

79:                                               ; preds = %3
  %80 = add i64 %1, 3
  %81 = and i64 %80, -4
  %82 = add i64 %81, 8
  %83 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %82) #19
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85, !prof !42

85:                                               ; preds = %79
  store i64 %81, ptr %83, align 8, !tbaa !34
  %86 = load i32, ptr @totblock, align 4, !tbaa !39
  %87 = add i32 %86, 1
  store i32 %87, ptr @totblock, align 4, !tbaa !39
  %88 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %89 = add i64 %88, %81
  store i64 %89, ptr @mem_in_use, align 8, !tbaa !41
  %90 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %91 = tail call i64 @llvm.umax.i64(i64 %90, i64 %89)
  store i64 %91, ptr @peak_mem, align 8, !tbaa !41
  %92 = getelementptr inbounds %struct.MemHead, ptr %83, i64 1
  br label %96

93:                                               ; preds = %79
  %94 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %95 = trunc i64 %94 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.5, i64 noundef %81, ptr noundef %2, i32 noundef %95)
  br label %96

96:                                               ; preds = %93, %85, %78
  %97 = phi ptr [ %68, %78 ], [ %92, %85 ], [ null, %93 ]
  ret ptr %97
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @MEM_lockfree_callocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !42

8:                                                ; preds = %2
  store i64 %4, ptr %6, align 8, !tbaa !34
  %9 = load i32, ptr @totblock, align 4, !tbaa !39
  %10 = add i32 %9, 1
  store i32 %10, ptr @totblock, align 4, !tbaa !39
  %11 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %12 = add i64 %11, %4
  store i64 %12, ptr @mem_in_use, align 8, !tbaa !41
  %13 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 %12)
  store i64 %14, ptr @peak_mem, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %19

16:                                               ; preds = %2
  %17 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %18 = trunc i64 %17 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.5, i64 noundef %4, ptr noundef %1, i32 noundef %18)
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %15, %8 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @print_error(ptr nocapture noundef readonly %0, ...) unnamed_addr #1 {
  %2 = alloca [512 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vsnprintf(ptr noundef nonnull %2, i64 noundef 512, ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.va_end(ptr %3)
  %5 = getelementptr inbounds [512 x i8], ptr %2, i64 0, i64 511
  store i8 0, ptr %5, align 1, !tbaa !50
  %6 = load ptr, ptr @error_callback, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void %6(ptr noundef nonnull %2) #18
  br label %9

9:                                                ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare ptr @aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @MEM_lockfree_printmemlist_pydict() local_unnamed_addr #11 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @MEM_lockfree_printmemlist() local_unnamed_addr #11 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @MEM_lockfree_callbackmemlist(ptr nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @MEM_lockfree_printmemlist_stats() local_unnamed_addr #12 {
  %1 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  %2 = uitofp i64 %1 to double
  %3 = fmul double %2, 0x3EB0000000000000
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %3)
  %5 = load i64, ptr @peak_mem, align 8, !tbaa !41
  %6 = uitofp i64 %5 to double
  %7 = fmul double %6, 0x3EB0000000000000
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %7)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_set_error_callback(ptr noundef %0) local_unnamed_addr #13 {
  store ptr %0, ptr @error_callback, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @MEM_lockfree_check_memory_integrity() local_unnamed_addr #11 {
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_set_lock_callback(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_set_memory_debug() local_unnamed_addr #13 {
  store i1 true, ptr @malloc_debug_memset, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_lockfree_get_memory_in_use() local_unnamed_addr #14 {
  %1 = load i64, ptr @mem_in_use, align 8, !tbaa !41
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_lockfree_get_mapped_memory_in_use() local_unnamed_addr #14 {
  %1 = load i64, ptr @mmap_in_use, align 8, !tbaa !41
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @MEM_lockfree_get_memory_blocks_in_use() local_unnamed_addr #14 {
  %1 = load i32, ptr @totblock, align 4, !tbaa !39
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_lockfree_reset_peak_memory() local_unnamed_addr #13 {
  store i64 0, ptr @peak_mem, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_lockfree_get_peak_memory() local_unnamed_addr #14 {
  %1 = load i64, ptr @peak_mem, align 8, !tbaa !41
  ret i64 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind allocsize(0) }

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
!35 = !{!"MemHead", !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!45, !46, i64 0}
!45 = !{!"MemHeadAligned", !46, i64 0, !36, i64 8}
!46 = !{!"short", !37, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !37, i64 0}
!49 = !{!45, !36, i64 8}
!50 = !{!37, !37, i64 0}
