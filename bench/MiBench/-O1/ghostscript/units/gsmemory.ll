; ModuleID = 'gsmemory.c'
source_filename = "gsmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.malloc_block_s = type { ptr, ptr, i32, ptr, ptr, [8 x i8] }
%struct.gs_memory_status_s = type { i64, i64 }

@gs_alloc_fill_alloc = dso_local local_unnamed_addr global i8 -95, align 1
@gs_alloc_fill_block = dso_local local_unnamed_addr global i8 -79, align 1
@gs_alloc_fill_collected = dso_local local_unnamed_addr global i8 -63, align 1
@gs_alloc_fill_deleted = dso_local local_unnamed_addr global i8 -47, align 1
@gs_alloc_fill_free = dso_local local_unnamed_addr global i8 -15, align 1
@.str = private unnamed_addr constant [7 x i8] c"(free)\00", align 1
@st_free = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 1, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@st_bytes = dso_local constant %struct.gs_memory_struct_type_s { i32 1, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@gs_memory_default = dso_local local_unnamed_addr global %struct.gs_memory_s { %struct.gs_memory_procs_s { ptr @gs_heap_alloc_bytes, ptr @gs_heap_alloc_bytes, ptr @gs_heap_alloc_struct, ptr @gs_heap_alloc_struct, ptr @gs_heap_alloc_byte_array, ptr @gs_heap_alloc_byte_array, ptr @gs_heap_alloc_struct_array, ptr @gs_heap_alloc_struct_array, ptr @gs_heap_resize_object, ptr @gs_heap_object_size, ptr @gs_heap_object_type, ptr @gs_heap_free_object, ptr @gs_heap_alloc_string, ptr @gs_heap_alloc_string, ptr @gs_heap_resize_string, ptr @gs_heap_free_string, ptr @gs_heap_register_root, ptr @gs_heap_unregister_root, ptr @gs_heap_status, ptr @gs_heap_enable_free } }, align 8
@gs_malloc_max = dso_local local_unnamed_addr global i64 0, align 8
@gs_malloc_limit = dso_local local_unnamed_addr global i64 9223372036854775807, align 8
@malloc_list = internal unnamed_addr global ptr null, align 8
@malloc_used = internal unnamed_addr global i64 0, align 8
@gs_debug = external local_unnamed_addr global [128 x i8], align 16
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"[a]gs_malloc_release(%s) 0x%lx(%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"[a-]gs_free(%s) 0x%lx(%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gsmemory.c\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: free 0x%lx not found!\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: resizing non-string 0x%lx!\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @gs_alloc_memset(ptr nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = trunc i32 %1 to i8
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %2, %5 ], [ %11, %7 ]
  %9 = phi ptr [ %0, %5 ], [ %12, %7 ]
  %10 = tail call i64 @llvm.umin.i64(i64 %8, i64 2147483647)
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 %6, i64 %10, i1 false)
  %11 = sub i64 %8, %10
  %12 = getelementptr inbounds i8, ptr %9, i64 %10
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %14, label %7, !llvm.loop !5

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write) uwtable
define internal ptr @gs_heap_alloc_bytes(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = zext i32 %1 to i64
  %5 = load i64, ptr @gs_malloc_limit, align 8, !tbaa !7
  %6 = add i64 %5, -48
  %7 = icmp ult i64 %6, %4
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 48
  %10 = and i64 %9, 4294967295
  %11 = sub nsw i64 %5, %10
  %12 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = tail call noalias ptr @malloc(i64 noundef %10) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.malloc_block_s, ptr %18, i64 0, i32 1
  store ptr %15, ptr %21, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %20, %17
  store ptr %18, ptr %15, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 2
  store i32 %1, ptr %24, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 3
  store ptr @st_bytes, ptr %25, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 4
  store ptr %2, ptr %26, align 8, !tbaa !19
  store ptr %15, ptr @malloc_list, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 1
  %28 = add i64 %12, %9
  store i64 %28, ptr @malloc_used, align 8, !tbaa !7
  %29 = load i64, ptr @gs_malloc_max, align 8, !tbaa !7
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i64 %28, ptr @gs_malloc_max, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %8, %14, %31, %22, %3
  %33 = phi ptr [ null, %3 ], [ null, %8 ], [ null, %14 ], [ %27, %31 ], [ %27, %22 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal ptr @gs_heap_alloc_struct(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = load i32, ptr %1, align 8, !tbaa !20
  %5 = zext i32 %4 to i64
  %6 = load i64, ptr @gs_malloc_limit, align 8, !tbaa !7
  %7 = add i64 %6, -48
  %8 = icmp ult i64 %7, %5
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i64 %5, 48
  %11 = and i64 %10, 4294967295
  %12 = sub nsw i64 %6, %11
  %13 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = tail call noalias ptr @malloc(i64 noundef %11) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.malloc_block_s, ptr %19, i64 0, i32 1
  store ptr %16, ptr %22, align 8, !tbaa !13
  br label %23

23:                                               ; preds = %21, %18
  store ptr %19, ptr %16, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.malloc_block_s, ptr %16, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.malloc_block_s, ptr %16, i64 0, i32 2
  store i32 %4, ptr %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.malloc_block_s, ptr %16, i64 0, i32 3
  store ptr @st_bytes, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.malloc_block_s, ptr %16, i64 0, i32 4
  store ptr %2, ptr %27, align 8, !tbaa !19
  store ptr %16, ptr @malloc_list, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.malloc_block_s, ptr %16, i64 1
  %29 = add i64 %13, %10
  store i64 %29, ptr @malloc_used, align 8, !tbaa !7
  %30 = load i64, ptr @gs_malloc_max, align 8, !tbaa !7
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i64 %29, ptr @gs_malloc_max, align 8, !tbaa !7
  br label %33

33:                                               ; preds = %3, %9, %15, %23, %32
  %34 = phi ptr [ null, %3 ], [ null, %9 ], [ null, %15 ], [ %28, %32 ], [ %28, %23 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr %struct.malloc_block_s, ptr %34, i64 -1, i32 3
  store ptr %1, ptr %37, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi ptr [ %34, %36 ], [ null, %33 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write) uwtable
define internal ptr @gs_heap_alloc_byte_array(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 %2)
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %37, label %7

7:                                                ; preds = %4
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = zext i32 %8 to i64
  %10 = load i64, ptr @gs_malloc_limit, align 8, !tbaa !7
  %11 = add i64 %10, -48
  %12 = icmp ult i64 %11, %9
  br i1 %12, label %37, label %13

13:                                               ; preds = %7
  %14 = add nuw nsw i64 %9, 48
  %15 = and i64 %14, 4294967295
  %16 = sub nsw i64 %10, %15
  %17 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = tail call noalias ptr @malloc(i64 noundef %15) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.malloc_block_s, ptr %23, i64 0, i32 1
  store ptr %20, ptr %26, align 8, !tbaa !13
  br label %27

27:                                               ; preds = %25, %22
  store ptr %23, ptr %20, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.malloc_block_s, ptr %20, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.malloc_block_s, ptr %20, i64 0, i32 2
  store i32 %8, ptr %29, align 8, !tbaa !17
  %30 = getelementptr inbounds %struct.malloc_block_s, ptr %20, i64 0, i32 3
  store ptr @st_bytes, ptr %30, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.malloc_block_s, ptr %20, i64 0, i32 4
  store ptr %3, ptr %31, align 8, !tbaa !19
  store ptr %20, ptr @malloc_list, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.malloc_block_s, ptr %20, i64 1
  %33 = add i64 %17, %14
  store i64 %33, ptr @malloc_used, align 8, !tbaa !7
  %34 = load i64, ptr @gs_malloc_max, align 8, !tbaa !7
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i64 %33, ptr @gs_malloc_max, align 8, !tbaa !7
  br label %37

37:                                               ; preds = %36, %27, %19, %13, %7, %4
  %38 = phi ptr [ null, %4 ], [ null, %7 ], [ null, %13 ], [ null, %19 ], [ %32, %36 ], [ %32, %27 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal ptr @gs_heap_alloc_struct_array(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = load i32, ptr %2, align 8, !tbaa !20
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 %5)
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = extractvalue { i32, i1 } %6, 0
  %10 = zext i32 %9 to i64
  %11 = load i64, ptr @gs_malloc_limit, align 8, !tbaa !7
  %12 = add i64 %11, -48
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i64 %10, 48
  %16 = and i64 %15, 4294967295
  %17 = sub nsw i64 %11, %16
  %18 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = tail call noalias ptr @malloc(i64 noundef %16) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.malloc_block_s, ptr %24, i64 0, i32 1
  store ptr %21, ptr %27, align 8, !tbaa !13
  br label %28

28:                                               ; preds = %26, %23
  store ptr %24, ptr %21, align 8, !tbaa !16
  %29 = getelementptr inbounds %struct.malloc_block_s, ptr %21, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.malloc_block_s, ptr %21, i64 0, i32 2
  store i32 %9, ptr %30, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.malloc_block_s, ptr %21, i64 0, i32 3
  store ptr @st_bytes, ptr %31, align 8, !tbaa !18
  %32 = getelementptr inbounds %struct.malloc_block_s, ptr %21, i64 0, i32 4
  store ptr %3, ptr %32, align 8, !tbaa !19
  store ptr %21, ptr @malloc_list, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.malloc_block_s, ptr %21, i64 1
  %34 = add i64 %18, %15
  store i64 %34, ptr @malloc_used, align 8, !tbaa !7
  %35 = load i64, ptr @gs_malloc_max, align 8, !tbaa !7
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i64 %34, ptr @gs_malloc_max, align 8, !tbaa !7
  br label %38

38:                                               ; preds = %4, %8, %14, %20, %28, %37
  %39 = phi ptr [ null, %4 ], [ null, %8 ], [ null, %14 ], [ null, %20 ], [ %33, %37 ], [ %33, %28 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr %struct.malloc_block_s, ptr %39, i64 -1, i32 3
  store ptr %2, ptr %42, align 8, !tbaa !18
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi ptr [ %39, %41 ], [ null, %38 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define internal ptr @gs_heap_resize_object(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) #5 {
  %5 = getelementptr inbounds %struct.malloc_block_s, ptr %1, i64 -1
  %6 = getelementptr %struct.malloc_block_s, ptr %1, i64 -1, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #16
  %11 = add i32 %10, 48
  %12 = load i32, ptr %7, align 8, !tbaa !20
  %13 = mul i32 %12, %2
  %14 = add i32 %13, 48
  %15 = zext i32 %11 to i64
  %16 = zext i32 %14 to i64
  %17 = tail call ptr @gs_realloc(ptr noundef nonnull %5, i64 noundef %15, i64 noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.malloc_block_s, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @malloc_list, ptr %21
  store ptr %17, ptr %23, align 8, !tbaa !11
  %24 = load ptr, ptr %17, align 8, !tbaa !16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.malloc_block_s, ptr %24, i64 0, i32 1
  store ptr %17, ptr %27, align 8, !tbaa !13
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.malloc_block_s, ptr %17, i64 0, i32 2
  store i32 %13, ptr %29, align 8, !tbaa !17
  %30 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %31 = sub nsw i64 %16, %15
  %32 = add i64 %31, %30
  store i64 %32, ptr @malloc_used, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.malloc_block_s, ptr %17, i64 1
  br label %34

34:                                               ; preds = %4, %28
  %35 = phi ptr [ %33, %28 ], [ null, %4 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @gs_heap_object_size(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr %struct.malloc_block_s, ptr %1, i64 -1, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @gs_heap_object_type(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr %struct.malloc_block_s, ptr %1, i64 -1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_free_object(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %5 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 97), align 1, !tbaa !25
  %6 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 65), align 1, !tbaa !25
  %7 = or i8 %6, %5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @gs_stderr, align 8, !tbaa !11
  %11 = ptrtoint ptr %1 to i64
  %12 = icmp eq ptr %1, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.malloc_block_s, ptr %1, i64 -1, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %9 ]
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %2, i64 noundef %11, i32 noundef %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = icmp eq ptr %1, null
  br i1 %20, label %55, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.malloc_block_s, ptr %4, i64 1
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8, !tbaa !16
  store ptr %25, ptr @malloc_list, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.malloc_block_s, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = zext i32 %27 to i64
  %29 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %30 = sub i64 %29, %28
  %31 = add i64 %30, -48
  store i64 %31, ptr @malloc_used, align 8, !tbaa !7
  br label %53

32:                                               ; preds = %21, %36
  %33 = phi ptr [ %34, %36 ], [ %4, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.malloc_block_s, ptr %34, i64 1
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %32, !llvm.loop !26

39:                                               ; preds = %36
  %40 = load ptr, ptr %34, align 8, !tbaa !16
  store ptr %40, ptr %33, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.malloc_block_s, ptr %34, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !17
  %43 = zext i32 %42 to i64
  %44 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %45 = sub i64 %44, %43
  %46 = add i64 %45, -48
  store i64 %46, ptr @malloc_used, align 8, !tbaa !7
  br label %53

47:                                               ; preds = %32
  %48 = load ptr, ptr @gs_stderr, align 8, !tbaa !11
  tail call void @lprintf_file_and_line(ptr noundef %48, ptr noundef nonnull @.str.7, i32 noundef 290) #16
  %49 = load ptr, ptr @gs_stderr, align 8, !tbaa !11
  %50 = ptrtoint ptr %1 to i64
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef %2, i64 noundef %50)
  %52 = getelementptr inbounds %struct.malloc_block_s, ptr %1, i64 -1
  br label %53

53:                                               ; preds = %24, %47, %39
  %54 = phi ptr [ %34, %39 ], [ %52, %47 ], [ %4, %24 ]
  tail call void @free(ptr noundef %54) #16
  br label %55

55:                                               ; preds = %53, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write) uwtable
define internal ptr @gs_heap_alloc_string(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = zext i32 %1 to i64
  %5 = load i64, ptr @gs_malloc_limit, align 8, !tbaa !7
  %6 = add i64 %5, -48
  %7 = icmp ult i64 %6, %4
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 48
  %10 = and i64 %9, 4294967295
  %11 = sub nsw i64 %5, %10
  %12 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = tail call noalias ptr @malloc(i64 noundef %10) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.malloc_block_s, ptr %18, i64 0, i32 1
  store ptr %15, ptr %21, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %20, %17
  store ptr %18, ptr %15, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 2
  store i32 %1, ptr %24, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 3
  store ptr @st_bytes, ptr %25, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 0, i32 4
  store ptr %2, ptr %26, align 8, !tbaa !19
  store ptr %15, ptr @malloc_list, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.malloc_block_s, ptr %15, i64 1
  %28 = add i64 %12, %9
  store i64 %28, ptr @malloc_used, align 8, !tbaa !7
  %29 = load i64, ptr @gs_malloc_max, align 8, !tbaa !7
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i64 %28, ptr @gs_malloc_max, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %3, %8, %14, %22, %31
  %33 = phi ptr [ null, %3 ], [ null, %8 ], [ null, %14 ], [ %27, %31 ], [ %27, %22 ]
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define internal ptr @gs_heap_resize_string(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, ptr noundef %4) #5 {
  %6 = getelementptr %struct.malloc_block_s, ptr %1, i64 -1, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, @st_bytes
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @gs_stderr, align 8, !tbaa !11
  tail call void @lprintf_file_and_line(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef 303) #16
  %11 = load ptr, ptr @gs_stderr, align 8, !tbaa !11
  %12 = ptrtoint ptr %1 to i64
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef %4, i64 noundef %12)
  br label %14

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.malloc_block_s, ptr %1, i64 -1
  %16 = load ptr, ptr %6, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %1) #16
  %20 = add i32 %19, 48
  %21 = load i32, ptr %16, align 8, !tbaa !20
  %22 = mul i32 %21, %3
  %23 = add i32 %22, 48
  %24 = zext i32 %20 to i64
  %25 = zext i32 %23 to i64
  %26 = tail call ptr @gs_realloc(ptr noundef nonnull %15, i64 noundef %24, i64 noundef %25) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.malloc_block_s, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @malloc_list, ptr %30
  store ptr %26, ptr %32, align 8, !tbaa !11
  %33 = load ptr, ptr %26, align 8, !tbaa !16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.malloc_block_s, ptr %33, i64 0, i32 1
  store ptr %26, ptr %36, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %35, %28
  %38 = getelementptr inbounds %struct.malloc_block_s, ptr %26, i64 0, i32 2
  store i32 %22, ptr %38, align 8, !tbaa !17
  %39 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %40 = sub nsw i64 %25, %24
  %41 = add i64 %40, %39
  store i64 %41, ptr @malloc_used, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.malloc_block_s, ptr %26, i64 1
  br label %43

43:                                               ; preds = %14, %37
  %44 = phi ptr [ %42, %37 ], [ null, %14 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_free_string(ptr nocapture readnone %0, ptr noundef %1, i32 %2, ptr noundef %3) #5 {
  tail call void @gs_heap_free_object(ptr poison, ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @gs_heap_register_root(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @gs_heap_unregister_root(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #7 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_status(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = alloca [20 x ptr], align 16
  %4 = load i64, ptr @malloc_used, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #16
  br label %5

5:                                                ; preds = %11, %2
  %6 = phi i64 [ 0, %2 ], [ %13, %11 ]
  %7 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %8 = tail call noalias dereferenceable_or_null(64000) ptr @malloc(i64 noundef 64000) #15
  %9 = getelementptr inbounds [20 x ptr], ptr %3, i64 0, i64 %6
  store ptr %8, ptr %9, align 8, !tbaa !11
  %10 = icmp eq ptr %8, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = add nuw nsw i64 %7, 64000
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %17, label %5, !llvm.loop !27

15:                                               ; preds = %5
  %16 = trunc i64 %6 to i32
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i64 [ %7, %15 ], [ 1280000, %11 ]
  %19 = phi i32 [ %16, %15 ], [ 20, %11 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ %22, %21 ], [ %25, %23 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds [20 x ptr], ptr %3, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  tail call void @free(ptr noundef %27) #16
  %28 = icmp eq i64 %25, 0
  br i1 %28, label %29, label %23, !llvm.loop !28

29:                                               ; preds = %23, %17
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #16
  %30 = add nsw i64 %18, %4
  store i64 %30, ptr %1, align 8, !tbaa !29
  %31 = load i64, ptr @malloc_used, align 8, !tbaa !7
  %32 = getelementptr inbounds %struct.gs_memory_status_s, ptr %1, i64 0, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @gs_heap_enable_free(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 15
  %6 = select i1 %3, ptr @gs_ignore_free_object, ptr @gs_heap_free_object
  %7 = select i1 %3, ptr @gs_ignore_free_string, ptr @gs_heap_free_string
  store ptr %6, ptr %4, align 8, !tbaa !32
  store ptr %7, ptr %5, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_malloc_init() local_unnamed_addr #9 {
  store ptr null, ptr @malloc_list, align 8, !tbaa !11
  store i64 0, ptr @malloc_used, align 8, !tbaa !7
  store i64 0, ptr @gs_malloc_max, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_malloc_release() local_unnamed_addr #5 {
  %1 = load ptr, ptr @malloc_list, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0, %19
  %4 = phi ptr [ %5, %19 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 97), align 1, !tbaa !25
  %7 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 65), align 1, !tbaa !25
  %8 = or i8 %7, %6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @gs_stderr, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.malloc_block_s, ptr %4, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.malloc_block_s, ptr %4, i64 1
  %15 = ptrtoint ptr %14 to i64
  %16 = getelementptr inbounds %struct.malloc_block_s, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !17
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef %13, i64 noundef %15, i32 noundef %17)
  br label %19

19:                                               ; preds = %3, %10
  tail call void @free(ptr noundef %4) #16
  %20 = icmp eq ptr %5, null
  br i1 %20, label %21, label %3, !llvm.loop !34

21:                                               ; preds = %19, %0
  store ptr null, ptr @malloc_list, align 8, !tbaa !11
  store i64 0, ptr @malloc_used, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gs_ignore_free_object(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gs_ignore_free_string(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, ptr nocapture readnone %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @gs_no_struct_enum_ptrs(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #7 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gs_no_struct_reloc_ptrs(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_struct_type_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !20
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_struct_type_name(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @rc_free_struct_only(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  tail call void %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

declare ptr @gs_realloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !12, i64 8}
!14 = !{!"malloc_block_s", !12, i64 0, !12, i64 8, !15, i64 16, !12, i64 24, !12, i64 32, !9, i64 40}
!15 = !{!"int", !9, i64 0}
!16 = !{!14, !12, i64 0}
!17 = !{!14, !15, i64 16}
!18 = !{!14, !12, i64 24}
!19 = !{!14, !12, i64 32}
!20 = !{!21, !15, i64 0}
!21 = !{!"gs_memory_struct_type_s", !15, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!22 = !{!23, !12, i64 72}
!23 = !{!"gs_memory_s", !24, i64 0}
!24 = !{!"gs_memory_procs_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!25 = !{!9, !9, i64 0}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = !{!30, !8, i64 0}
!30 = !{!"gs_memory_status_s", !8, i64 0, !8, i64 8}
!31 = !{!30, !8, i64 8}
!32 = !{!23, !12, i64 88}
!33 = !{!23, !12, i64 120}
!34 = distinct !{!34, !6}
!35 = !{!21, !12, i64 8}
