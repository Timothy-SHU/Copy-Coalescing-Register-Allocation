; ModuleID = 'bitmap.c'
source_filename = "bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }

@bitmap_zero_bits = dso_local global %struct.bitmap_element_def zeroinitializer, align 8
@bitmap_default_obstack = dso_local global %struct.bitmap_obstack zeroinitializer, align 8
@bitmap_ggc_free = internal global ptr null, align 8
@bitmap_default_obstack_depth = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@.str.2 = private unnamed_addr constant [36 x i8] c"\0Afirst = %p current = %p indx = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09%p next = %p prev = %p indx = %u\0A\09\09bits = {\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A\09\09\09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@gt_ggc_rd_gt_bitmap_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @bitmap_ggc_free, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_elt_clear_from(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = icmp eq ptr %1, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  store ptr %8, ptr %11, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %16, ptr %19, align 8, !tbaa !18
  br label %21

20:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %21

21:                                               ; preds = %10, %18, %20
  %22 = icmp eq ptr %4, null
  %23 = select i1 %22, ptr @bitmap_ggc_free, ptr %4
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  store ptr %24, ptr %7, align 8, !tbaa !13
  store ptr %1, ptr %23, align 8, !tbaa !19
  br label %25

25:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_obstack_initialize(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = load i32, ptr @bitmap_default_obstack_depth, align 4, !tbaa !20
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @bitmap_default_obstack_depth, align 4, !tbaa !20
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3, %1
  %8 = phi ptr [ %0, %1 ], [ @bitmap_default_obstack, %3 ]
  %9 = getelementptr inbounds %struct.bitmap_obstack, ptr %8, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = tail call i32 @_obstack_begin(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  br label %11

11:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_obstack_release(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load i32, ptr @bitmap_default_obstack_depth, align 4, !tbaa !20
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr @bitmap_default_obstack_depth, align 4, !tbaa !20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %4, 1
  br i1 %8, label %31, label %9

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #20
  br label %31

10:                                               ; preds = %3, %1
  %11 = phi ptr [ %0, %1 ], [ @bitmap_default_obstack, %3 ]
  %12 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 5
  store i64 %16, ptr %17, align 8, !tbaa !25
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %15
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %14, i64 %16
  %27 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !27
  %28 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 3
  store ptr %26, ptr %28, align 8, !tbaa !28
  br label %31

29:                                               ; preds = %19, %10
  %30 = getelementptr inbounds i8, ptr %14, i64 %16
  tail call void @obstack_free(ptr noundef nonnull %12, ptr noundef %30) #20
  br label %31

31:                                               ; preds = %9, %7, %25, %29
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bitmap_obstack_alloc_stat(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @bitmap_default_obstack, ptr %0
  %4 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !6
  store ptr %8, ptr %4, align 8, !tbaa !29
  br label %56

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 5
  store i64 32, ptr %10, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = ptrtoint ptr %12 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 32
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %20, i32 noundef 32) #20
  %21 = load i64, ptr %10, align 8, !tbaa !25
  %22 = load ptr, ptr %13, align 8, !tbaa !28
  br label %23

23:                                               ; preds = %9, %19
  %24 = phi ptr [ %14, %9 ], [ %22, %19 ]
  %25 = phi i64 [ 32, %9 ], [ %21, %19 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 10
  %32 = load i8, ptr %31, align 8
  %33 = or i8 %32, 2
  store i8 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %23, %30
  %35 = ptrtoint ptr %28 to i64
  store i64 %35, ptr %10, align 8, !tbaa !25
  %36 = ptrtoint ptr %26 to i64
  %37 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !30
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %36
  %41 = xor i32 %38, -1
  %42 = sext i32 %41 to i64
  %43 = and i64 %40, %42
  %44 = inttoptr i64 %43 to ptr
  store ptr %44, ptr %13, align 8, !tbaa !28
  %45 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %43, %47
  %49 = load ptr, ptr %11, align 8, !tbaa !26
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %50, %47
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  store ptr %49, ptr %13, align 8, !tbaa !28
  br label %54

54:                                               ; preds = %34, %53
  %55 = phi ptr [ %44, %34 ], [ %49, %53 ]
  store ptr %55, ptr %27, align 8, !tbaa !27
  br label %56

56:                                               ; preds = %54, %7
  %57 = phi ptr [ %5, %7 ], [ %28, %54 ]
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %57, ptr noundef nonnull %3) #19
  ret ptr %57
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bitmap_gc_alloc_stat() local_unnamed_addr #2 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #20
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %1, ptr noundef null) #19
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_obstack_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  store ptr %7, ptr %0, align 8, !tbaa !6
  store ptr %0, ptr %6, align 8, !tbaa !29
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @bitmap_clear(ptr noundef %0) #19
  %3 = load ptr, ptr %1, align 8, !tbaa !19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %5, %21
  %9 = phi ptr [ %3, %5 ], [ %23, %21 ]
  %10 = phi ptr [ null, %5 ], [ %11, %21 ]
  %11 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false)
  %17 = icmp eq ptr %10, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  store ptr %11, ptr %6, align 8, !tbaa !16
  store ptr %11, ptr %0, align 8, !tbaa !6
  %19 = load i32, ptr %12, align 8, !tbaa !17
  store i32 %19, ptr %7, align 8, !tbaa !18
  store ptr null, ptr %11, align 8, !tbaa !15
  br label %21

20:                                               ; preds = %8
  store ptr null, ptr %11, align 8, !tbaa !15
  store ptr %11, ptr %10, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %20, %18
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 1
  store ptr %10, ptr %22, align 8
  %23 = load ptr, ptr %9, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !31

25:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_element_allocate(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !33
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  store ptr %9, ptr %3, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !13
  br label %80

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  store ptr %17, ptr %3, align 8, !tbaa !33
  br label %80

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 5
  store i64 40, ptr %19, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = ptrtoint ptr %21 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 40
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %29, i32 noundef 40) #20
  %30 = load i64, ptr %19, align 8, !tbaa !25
  %31 = load ptr, ptr %22, align 8, !tbaa !28
  br label %32

32:                                               ; preds = %18, %28
  %33 = phi ptr [ %23, %18 ], [ %31, %28 ]
  %34 = phi i64 [ 40, %18 ], [ %30, %28 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !27
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 10
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %32, %39
  %44 = ptrtoint ptr %37 to i64
  store i64 %44, ptr %19, align 8, !tbaa !25
  %45 = ptrtoint ptr %35 to i64
  %46 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !30
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = xor i32 %47, -1
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = inttoptr i64 %52 to ptr
  store ptr %53, ptr %22, align 8, !tbaa !28
  %54 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %52, %56
  %58 = load ptr, ptr %20, align 8, !tbaa !26
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %59, %56
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  store ptr %58, ptr %22, align 8, !tbaa !28
  br label %63

63:                                               ; preds = %43, %62
  %64 = phi ptr [ %53, %43 ], [ %58, %62 ]
  store ptr %64, ptr %36, align 8, !tbaa !27
  br label %80

65:                                               ; preds = %1
  %66 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  store ptr %69, ptr @bitmap_ggc_free, align 8, !tbaa !19
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !13
  br label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !13
  store ptr %77, ptr @bitmap_ggc_free, align 8, !tbaa !19
  br label %80

78:                                               ; preds = %65
  %79 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #20
  br label %80

80:                                               ; preds = %78, %75, %71, %63, %15, %11
  %81 = phi ptr [ %6, %11 ], [ %6, %15 ], [ %37, %63 ], [ %66, %71 ], [ %66, %75 ], [ %79, %78 ]
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %81, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 0, i64 16, i1 false)
  ret ptr %81
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bitmap_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 1
  %9 = zext nneg i32 %6 to i64
  %10 = shl nuw i64 1, %9
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !34
  %14 = and i64 %13, %10
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = xor i64 %10, -1
  %18 = and i64 %13, %17
  store i64 %18, ptr %12, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %16, %5
  %20 = tail call fastcc i32 @bitmap_element_zerop(ptr noundef nonnull %3) #19, !range !35
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @bitmap_element_free(ptr noundef %0, ptr noundef nonnull %3) #19
  br label %23

23:                                               ; preds = %2, %19, %22
  %24 = phi i1 [ %15, %22 ], [ %15, %19 ], [ false, %2 ]
  %25 = zext i1 %24 to i8
  ret i8 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @bitmap_find_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = lshr i32 %1, 7
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = icmp ult i32 %9, %3
  br i1 %12, label %13, label %21

13:                                               ; preds = %11, %17
  %14 = phi ptr [ %15, %17 ], [ %5, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !17
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %43, !llvm.loop !36

21:                                               ; preds = %11
  %22 = lshr i32 %9, 1
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %33

24:                                               ; preds = %21, %29
  %25 = phi ptr [ %27, %29 ], [ %5, %21 ]
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !17
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %24, label %43, !llvm.loop !37

33:                                               ; preds = %21
  %34 = load ptr, ptr %0, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !17
  %42 = icmp ult i32 %41, %3
  br i1 %42, label %35, label %43, !llvm.loop !38

43:                                               ; preds = %35, %39, %24, %29, %17, %13
  %44 = phi ptr [ %14, %13 ], [ %14, %17 ], [ %25, %29 ], [ %25, %24 ], [ %36, %39 ], [ %36, %35 ]
  store ptr %44, ptr %4, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !17
  store i32 %46, ptr %8, align 8, !tbaa !18
  %47 = icmp eq i32 %46, %3
  %48 = select i1 %47, ptr %44, ptr null
  br label %49

49:                                               ; preds = %2, %7, %43
  %50 = phi ptr [ %48, %43 ], [ %5, %7 ], [ null, %2 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @bitmap_element_zerop(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.bitmap_element_def, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bitmap_element_def, ptr %0, i64 0, i32 3, i64 1
  %5 = load i64, ptr %4, align 8, !tbaa !34
  %6 = or i64 %5, %3
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_element_free(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store ptr %3, ptr %5, align 8, !tbaa !15
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq ptr %3, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  store ptr %5, ptr %11, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %10, %8
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store ptr %3, ptr %0, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = select i1 %9, ptr %5, ptr %3
  store ptr %21, ptr %17, align 8, !tbaa !16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %20 ]
  %28 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !18
  br label %29

29:                                               ; preds = %26, %16
  tail call fastcc void @bitmap_elem_to_freelist(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_elem_to_freelist(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  store ptr null, ptr %1, align 8, !tbaa !15
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @bitmap_ggc_free, ptr %4
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  store ptr %1, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  store ptr %7, ptr %8, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bitmap_set_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %4 = lshr i32 %1, 6
  %5 = and i32 %4, 1
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %12 = lshr i32 %1, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !17
  %14 = zext nneg i32 %5 to i64
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %14
  store i64 %8, ptr %15, align 8, !tbaa !34
  tail call fastcc void @bitmap_element_link(ptr noundef %0, ptr noundef %11) #19
  br label %24

16:                                               ; preds = %2
  %17 = zext nneg i32 %5 to i64
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !34
  %20 = and i64 %19, %8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = or i64 %19, %8
  store i64 %23, ptr %18, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %16, %22, %10
  %25 = phi i8 [ 1, %10 ], [ 1, %22 ], [ 0, %16 ]
  ret i8 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_element_link(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %39

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !18
  %11 = icmp ult i32 %4, %10
  %12 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  br i1 %11, label %14, label %27

14:                                               ; preds = %8, %19
  %15 = phi ptr [ %17, %19 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !17
  %22 = icmp ugt i32 %21, %4
  br i1 %22, label %14, label %23, !llvm.loop !39

23:                                               ; preds = %14, %19
  %24 = phi ptr [ %17, %19 ], [ %0, %14 ]
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 1
  store ptr %1, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  store ptr %17, ptr %26, align 8, !tbaa !13
  store ptr %15, ptr %1, align 8, !tbaa !15
  br label %39

27:                                               ; preds = %8, %31
  %28 = phi ptr [ %29, %31 ], [ %13, %8 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !17
  %34 = icmp ult i32 %33, %4
  br i1 %34, label %27, label %35, !llvm.loop !40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 1
  store ptr %1, ptr %36, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %27, %35
  store ptr %29, ptr %1, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  store ptr %28, ptr %38, align 8, !tbaa !13
  br label %39

39:                                               ; preds = %23, %37, %7
  %40 = phi ptr [ %25, %23 ], [ %28, %37 ], [ %0, %7 ]
  store ptr %1, ptr %40, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %1, ptr %41, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %4, ptr %42, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @bitmap_bit_p(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 1
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !34
  %12 = zext nneg i32 %6 to i64
  %13 = lshr i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 1
  br label %16

16:                                               ; preds = %2, %5
  %17 = phi i32 [ %15, %5 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @bitmap_count_bits(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %7

4:                                                ; preds = %10
  %5 = load ptr, ptr %8, align 8, !tbaa !19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !llvm.loop !41

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = phi i64 [ %16, %4 ], [ 0, %1 ]
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = phi i64 [ %9, %7 ], [ %16, %10 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !34
  %15 = tail call fastcc i64 @bitmap_popcount(i64 noundef %14) #19
  %16 = add i64 %15, %12
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %4, label %10, !llvm.loop !42

19:                                               ; preds = %4, %1
  %20 = phi i64 [ 0, %1 ], [ %16, %4 ]
  ret i64 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @bitmap_popcount(i64 noundef %0) unnamed_addr #12 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi i64 [ 0, %1 ], [ %10, %2 ]
  %5 = lshr i64 %0, %3
  %6 = and i64 %5, 255
  %7 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = zext i8 %8 to i64
  %10 = add i64 %4, %9
  %11 = add nuw nsw i64 %3, 8
  %12 = icmp ult i64 %3, 56
  br i1 %12, label %2, label %13, !llvm.loop !44

13:                                               ; preds = %2
  ret i64 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_single_bit_set_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %21

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %18, label %10, !llvm.loop !45

10:                                               ; preds = %4, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %12 = phi i64 [ %16, %7 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !34
  %15 = tail call fastcc i64 @bitmap_popcount(i64 noundef %14) #19
  %16 = add i64 %15, %12
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %21, label %7

18:                                               ; preds = %7
  %19 = icmp eq i64 %16, 1
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %10, %4, %1, %18
  %22 = phi i8 [ %20, %18 ], [ 0, %1 ], [ 0, %4 ], [ 0, %10 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bitmap_first_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 770, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 1
  %13 = load i64, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 778, ptr noundef nonnull @.str.1) #20
  br label %16

16:                                               ; preds = %5, %11, %15
  %17 = phi i32 [ 128, %15 ], [ 0, %5 ], [ 64, %11 ]
  %18 = phi i64 [ 0, %15 ], [ %9, %5 ], [ %13, %11 ]
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %19, 0
  %21 = lshr exact i64 %18, 32
  %22 = select i1 %20, i64 %21, i64 %18
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 0
  %25 = lshr exact i64 %22, 16
  %26 = select i1 %24, i64 %25, i64 %22
  %27 = and i64 %26, 255
  %28 = icmp eq i64 %27, 0
  %29 = lshr exact i64 %26, 8
  %30 = select i1 %28, i64 %29, i64 %26
  %31 = and i64 %30, 15
  %32 = icmp eq i64 %31, 0
  %33 = lshr exact i64 %30, 4
  %34 = select i1 %32, i64 %33, i64 %30
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = lshr exact i64 %34, 2
  %38 = select i1 %36, i64 %37, i64 %34
  %39 = and i64 %38, 1
  %40 = xor i64 %39, 1
  %41 = shl nuw nsw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %16, %44
  %46 = shl i32 %7, 7
  %47 = add i32 %17, %46
  %48 = or disjoint i32 %47, 32
  %49 = select i1 %20, i32 %48, i32 %47
  %50 = or disjoint i32 %49, 16
  %51 = select i1 %24, i32 %50, i32 %49
  %52 = or disjoint i32 %51, 8
  %53 = select i1 %28, i32 %52, i32 %51
  %54 = add i32 %53, 4
  %55 = select i1 %32, i32 %54, i32 %53
  %56 = add i32 %55, 2
  %57 = select i1 %36, i32 %56, i32 %55
  %58 = trunc i64 %39 to i32
  %59 = xor i32 %58, 1
  %60 = add i32 %59, %57
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 821, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %1, %5, %8
  %10 = phi ptr [ %3, %1 ], [ null, %8 ], [ %6, %5 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %13, %11 ], [ %10, %9 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 0
  %23 = load i64, ptr %22, align 8, !tbaa !34
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 831, ptr noundef nonnull @.str.1) #20
  br label %26

26:                                               ; preds = %15, %21, %25
  %27 = phi i32 [ -64, %25 ], [ 64, %15 ], [ 0, %21 ]
  %28 = phi i64 [ 0, %25 ], [ %19, %15 ], [ %23, %21 ]
  %29 = icmp ult i64 %28, 4294967296
  %30 = lshr i64 %28, 32
  %31 = select i1 %29, i64 %28, i64 %30
  %32 = icmp ult i64 %31, 65536
  %33 = lshr i64 %31, 16
  %34 = select i1 %32, i64 %31, i64 %33
  %35 = and i64 %34, 65280
  %36 = icmp eq i64 %35, 0
  %37 = lshr i64 %34, 8
  %38 = select i1 %36, i64 %37, i64 %34
  %39 = and i64 %38, 240
  %40 = icmp eq i64 %39, 0
  %41 = lshr i64 %38, 4
  %42 = select i1 %40, i64 %41, i64 %38
  %43 = and i64 %42, 12
  %44 = icmp eq i64 %43, 0
  %45 = lshr i64 %42, 2
  %46 = select i1 %44, i64 %45, i64 %42
  %47 = and i64 %46, 2
  %48 = lshr exact i64 %47, 1
  %49 = xor i64 %48, 1
  %50 = shl nuw nsw i64 1, %49
  %51 = and i64 %50, %46
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 859, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %26, %53
  %55 = icmp eq i64 %47, 0
  %56 = shl i32 %17, 7
  %57 = add i32 %27, %56
  %58 = or disjoint i32 %57, 32
  %59 = select i1 %29, i32 %57, i32 %58
  %60 = or disjoint i32 %59, 16
  %61 = select i1 %32, i32 %59, i32 %60
  %62 = or disjoint i32 %61, 8
  %63 = select i1 %36, i32 %62, i32 %61
  %64 = add i32 %63, 4
  %65 = select i1 %40, i32 %64, i32 %63
  %66 = add i32 %65, 2
  %67 = select i1 %44, i32 %66, i32 %65
  %68 = zext i1 %55 to i32
  %69 = add i32 %67, %68
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_and(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 874, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = icmp ne ptr %5, null
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %18, label %71

17:                                               ; preds = %11
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %89

18:                                               ; preds = %13, %63
  %19 = phi ptr [ %67, %63 ], [ %4, %13 ]
  %20 = phi ptr [ %66, %63 ], [ null, %13 ]
  %21 = phi ptr [ %65, %63 ], [ %6, %13 ]
  %22 = phi ptr [ %64, %63 ], [ %5, %13 ]
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !17
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load ptr, ptr %22, align 8, !tbaa !15
  br label %63

30:                                               ; preds = %18
  %31 = icmp ult i32 %26, %24
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = load ptr, ptr %21, align 8, !tbaa !15
  br label %63

34:                                               ; preds = %30
  %35 = icmp eq ptr %19, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %20, i32 noundef %24) #19
  br label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %19, i64 0, i32 2
  store i32 %24, ptr %39, align 8, !tbaa !17
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi ptr [ %19, %38 ], [ %37, %36 ]
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 2, %40 ], [ %45, %42 ]
  %44 = phi i64 [ 0, %40 ], [ %52, %42 ]
  %45 = add nsw i64 %43, -1
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %45
  %49 = load i64, ptr %48, align 8, !tbaa !34
  %50 = and i64 %49, %47
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3, i64 %45
  store i64 %50, ptr %51, align 8, !tbaa !34
  %52 = or i64 %50, %44
  %53 = icmp eq i64 %45, 0
  br i1 %53, label %54, label %42, !llvm.loop !47

54:                                               ; preds = %42
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %41, align 8, !tbaa !15
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %41, %56 ], [ %20, %54 ]
  %60 = phi ptr [ %57, %56 ], [ %41, %54 ]
  %61 = load ptr, ptr %22, align 8, !tbaa !15
  %62 = load ptr, ptr %21, align 8, !tbaa !15
  br label %63

63:                                               ; preds = %32, %58, %28
  %64 = phi ptr [ %29, %28 ], [ %22, %32 ], [ %61, %58 ]
  %65 = phi ptr [ %21, %28 ], [ %33, %32 ], [ %62, %58 ]
  %66 = phi ptr [ %20, %28 ], [ %20, %32 ], [ %59, %58 ]
  %67 = phi ptr [ %19, %28 ], [ %19, %32 ], [ %60, %58 ]
  %68 = icmp ne ptr %64, null
  %69 = icmp ne ptr %65, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %18, label %71, !llvm.loop !48

71:                                               ; preds = %63, %13
  %72 = phi ptr [ %4, %13 ], [ %67, %63 ]
  %73 = load ptr, ptr %0, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !16
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %72) #19
  %75 = load ptr, ptr %74, align 8, !tbaa !16
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr %0, align 8, !tbaa !6
  %78 = icmp ne ptr %77, null
  %79 = xor i1 %76, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.1) #20
  %81 = load ptr, ptr %74, align 8, !tbaa !16
  br label %82

82:                                               ; preds = %71, %80
  %83 = phi ptr [ %75, %71 ], [ %81, %80 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !17
  %88 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %87, ptr %88, align 8, !tbaa !18
  br label %89

89:                                               ; preds = %82, %85, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_elt_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !17
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %16

10:                                               ; preds = %3
  br i1 %9, label %11, label %13

11:                                               ; preds = %10
  store ptr %4, ptr %7, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %11, %10
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  store ptr %14, ptr %4, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %21

16:                                               ; preds = %3
  br i1 %9, label %17, label %18

17:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #20
  br label %18

18:                                               ; preds = %16, %17
  %19 = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %19, ptr %4, align 8, !tbaa !15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %14, %13 ], [ %19, %18 ]
  %23 = phi ptr [ %0, %13 ], [ %1, %18 ]
  %24 = phi ptr [ null, %13 ], [ %1, %18 ]
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 1
  store ptr %4, ptr %25, align 8, !tbaa !13
  br label %26

26:                                               ; preds = %21, %18, %13
  %27 = phi ptr [ %0, %13 ], [ %1, %18 ], [ %23, %21 ]
  %28 = phi ptr [ null, %13 ], [ %1, %18 ], [ %24, %21 ]
  store ptr %4, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %67, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %47

10:                                               ; preds = %4, %41
  %11 = phi ptr [ %43, %41 ], [ %6, %4 ]
  %12 = phi ptr [ %42, %41 ], [ %5, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 8, !tbaa !15
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %11) #19
  br label %41

20:                                               ; preds = %10
  %21 = icmp ult i32 %16, %14
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = load ptr, ptr %12, align 8, !tbaa !15
  br label %41

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %27, %24 ], [ 2, %20 ]
  %26 = phi i64 [ %33, %24 ], [ 0, %20 ]
  %27 = add nsw i64 %25, -1
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %27
  %31 = load i64, ptr %30, align 8, !tbaa !34
  %32 = and i64 %31, %29
  store i64 %32, ptr %28, align 8, !tbaa !34
  %33 = or i64 %32, %26
  %34 = icmp eq i64 %27, 0
  br i1 %34, label %35, label %24, !llvm.loop !49

35:                                               ; preds = %24
  %36 = load ptr, ptr %11, align 8, !tbaa !15
  %37 = icmp eq i64 %33, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %11) #19
  br label %39

39:                                               ; preds = %38, %35
  %40 = load ptr, ptr %12, align 8, !tbaa !15
  br label %41

41:                                               ; preds = %22, %39, %18
  %42 = phi ptr [ %12, %18 ], [ %23, %22 ], [ %40, %39 ]
  %43 = phi ptr [ %19, %18 ], [ %11, %22 ], [ %36, %39 ]
  %44 = icmp ne ptr %43, null
  %45 = icmp ne ptr %42, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %10, label %47, !llvm.loop !50

47:                                               ; preds = %41, %4
  %48 = phi ptr [ %6, %4 ], [ %43, %41 ]
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %48) #19
  %49 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !16
  %51 = icmp eq ptr %50, null
  %52 = load ptr, ptr %0, align 8, !tbaa !6
  %53 = icmp ne ptr %52, null
  %54 = xor i1 %51, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #20
  %56 = load ptr, ptr %49, align 8, !tbaa !16
  br label %57

57:                                               ; preds = %47, %55
  %58 = phi ptr [ %50, %47 ], [ %56, %55 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !18
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %58, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !17
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 966, ptr noundef nonnull @.str.1) #20
  br label %67

67:                                               ; preds = %66, %60, %57, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_and_compl(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1015, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %5, null
  br i1 %14, label %127, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i8
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  br label %152

19:                                               ; preds = %13, %119
  %20 = phi ptr [ %124, %119 ], [ %4, %13 ]
  %21 = phi i8 [ %123, %119 ], [ 0, %13 ]
  %22 = phi ptr [ %122, %119 ], [ %0, %13 ]
  %23 = phi ptr [ %121, %119 ], [ null, %13 ]
  %24 = phi ptr [ %120, %119 ], [ %6, %13 ]
  %25 = phi ptr [ %125, %119 ], [ %5, %13 ]
  %26 = icmp eq ptr %24, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %27, %35
  %31 = phi ptr [ %24, %27 ], [ %36, %35 ]
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !17
  %34 = icmp ult i32 %33, %29
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %30, !llvm.loop !51

38:                                               ; preds = %30
  %39 = icmp ugt i32 %33, %29
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %19, %38
  %41 = phi ptr [ %31, %38 ], [ null, %19 ], [ null, %35 ]
  %42 = tail call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef nonnull %0, ptr noundef %20, ptr noundef %23, ptr noundef nonnull %25, i8 noundef zeroext %21) #19, !range !52
  %43 = load ptr, ptr %22, align 8, !tbaa !19
  %44 = load ptr, ptr %43, align 8, !tbaa !19
  br label %119

45:                                               ; preds = %38
  %46 = icmp eq i8 %21, 0
  %47 = icmp ne ptr %20, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !17
  %52 = icmp eq i32 %51, %29
  br i1 %52, label %53, label %76

53:                                               ; preds = %49, %67
  %54 = phi i64 [ %70, %67 ], [ 1, %49 ]
  %55 = phi i64 [ %69, %67 ], [ 0, %49 ]
  %56 = phi i8 [ %68, %67 ], [ 0, %49 ]
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 3, i64 %54
  %58 = load i64, ptr %57, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 3, i64 %54
  %60 = load i64, ptr %59, align 8, !tbaa !34
  %61 = xor i64 %60, -1
  %62 = and i64 %58, %61
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 3, i64 %54
  %64 = load i64, ptr %63, align 8, !tbaa !34
  %65 = icmp eq i64 %64, %62
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  store i64 %62, ptr %63, align 8, !tbaa !34
  br label %67

67:                                               ; preds = %66, %53
  %68 = phi i8 [ 1, %66 ], [ %56, %53 ]
  %69 = or i64 %62, %55
  %70 = add nsw i64 %54, -1
  %71 = icmp eq i64 %54, 0
  br i1 %71, label %103, label %53, !llvm.loop !53

72:                                               ; preds = %45
  br i1 %47, label %73, label %79

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !17
  br label %76

76:                                               ; preds = %73, %49
  %77 = phi i32 [ %75, %73 ], [ %51, %49 ]
  %78 = icmp ugt i32 %77, %29
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %72
  %80 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %23, i32 noundef %29) #19
  br label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  store i32 %29, ptr %82, align 8, !tbaa !17
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi ptr [ %80, %79 ], [ %20, %81 ]
  %85 = phi i8 [ 0, %79 ], [ 1, %81 ]
  br label %86

86:                                               ; preds = %83, %86
  %87 = phi i64 [ 2, %83 ], [ %89, %86 ]
  %88 = phi i64 [ 0, %83 ], [ %97, %86 ]
  %89 = add nsw i64 %87, -1
  %90 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 3, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 3, i64 %89
  %93 = load i64, ptr %92, align 8, !tbaa !34
  %94 = xor i64 %93, -1
  %95 = and i64 %91, %94
  %96 = getelementptr inbounds %struct.bitmap_element_def, ptr %84, i64 0, i32 3, i64 %89
  store i64 %95, ptr %96, align 8, !tbaa !34
  %97 = or i64 %95, %88
  %98 = icmp eq i64 %89, 0
  br i1 %98, label %99, label %86, !llvm.loop !54

99:                                               ; preds = %86
  %100 = icmp eq i64 %97, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = or i8 %85, %21
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %84) #19
  br label %108

103:                                              ; preds = %67
  %104 = icmp eq i64 %69, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %99, %103
  %106 = phi i8 [ %68, %103 ], [ 1, %99 ]
  %107 = load ptr, ptr %22, align 8, !tbaa !19
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi ptr [ %22, %101 ], [ %107, %105 ]
  %110 = phi i8 [ %102, %101 ], [ %106, %105 ]
  %111 = phi ptr [ %23, %101 ], [ %107, %105 ]
  %112 = load ptr, ptr %109, align 8, !tbaa !19
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i8 [ %68, %103 ], [ %110, %108 ]
  %115 = phi ptr [ %23, %103 ], [ %111, %108 ]
  %116 = phi ptr [ %22, %103 ], [ %109, %108 ]
  %117 = phi ptr [ %20, %103 ], [ %112, %108 ]
  %118 = load ptr, ptr %31, align 8, !tbaa !15
  br label %119

119:                                              ; preds = %113, %40
  %120 = phi ptr [ %41, %40 ], [ %118, %113 ]
  %121 = phi ptr [ %43, %40 ], [ %115, %113 ]
  %122 = phi ptr [ %43, %40 ], [ %116, %113 ]
  %123 = phi i8 [ %42, %40 ], [ %114, %113 ]
  %124 = phi ptr [ %44, %40 ], [ %117, %113 ]
  %125 = load ptr, ptr %25, align 8, !tbaa !15
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %19, !llvm.loop !55

127:                                              ; preds = %119, %13
  %128 = phi i8 [ 0, %13 ], [ %123, %119 ]
  %129 = phi ptr [ %4, %13 ], [ %124, %119 ]
  %130 = load ptr, ptr %0, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !16
  %132 = icmp eq ptr %129, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %129) #19
  %134 = load ptr, ptr %131, align 8, !tbaa !16
  %135 = load ptr, ptr %0, align 8, !tbaa !6
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi ptr [ %135, %133 ], [ %130, %127 ]
  %138 = phi ptr [ %134, %133 ], [ %130, %127 ]
  %139 = phi i8 [ 1, %133 ], [ %128, %127 ]
  %140 = icmp eq ptr %138, null
  %141 = icmp ne ptr %137, null
  %142 = xor i1 %140, %141
  br i1 %142, label %145, label %143

143:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #20
  %144 = load ptr, ptr %131, align 8, !tbaa !16
  br label %145

145:                                              ; preds = %136, %143
  %146 = phi ptr [ %138, %136 ], [ %144, %143 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.bitmap_element_def, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !17
  %151 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %150, ptr %151, align 8, !tbaa !18
  br label %152

152:                                              ; preds = %145, %148, %15
  %153 = phi i8 [ %18, %15 ], [ %139, %148 ], [ %139, %145 ]
  ret i8 %153
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_elt_copy(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = icmp eq i8 %4, 0
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9, %24
  %16 = phi i64 [ %26, %24 ], [ 1, %9 ]
  %17 = phi i8 [ %25, %24 ], [ 0, %9 ]
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %16
  %19 = load i64, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 3, i64 %16
  %21 = load i64, ptr %20, align 8, !tbaa !34
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i64 %19, ptr %20, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i8 [ 1, %23 ], [ %17, %15 ]
  %26 = add nsw i64 %16, -1
  %27 = icmp eq i64 %16, 0
  br i1 %27, label %40, label %15, !llvm.loop !56

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !17
  br i1 %7, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %2, i32 noundef %30) #19
  br label %36

33:                                               ; preds = %28, %9
  %34 = phi i32 [ %13, %9 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  store i32 %34, ptr %35, align 8, !tbaa !17
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %1, %33 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %37, i64 0, i32 3
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false)
  br label %40

40:                                               ; preds = %24, %36
  %41 = phi i8 [ 1, %36 ], [ %25, %24 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_and_compl_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %13, label %59

10:                                               ; preds = %2
  %11 = icmp eq ptr %3, null
  br i1 %11, label %79, label %12

12:                                               ; preds = %10
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  br label %79

13:                                               ; preds = %5, %48
  %14 = phi ptr [ %51, %48 ], [ %3, %5 ]
  %15 = phi i64 [ %50, %48 ], [ 0, %5 ]
  %16 = phi ptr [ %49, %48 ], [ %6, %5 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !17
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr %14, align 8, !tbaa !15
  br label %48

24:                                               ; preds = %13
  %25 = icmp ult i32 %20, %18
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = load ptr, ptr %16, align 8, !tbaa !15
  br label %48

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %32, %28 ], [ 2, %24 ]
  %30 = phi i64 [ %40, %28 ], [ 0, %24 ]
  %31 = phi i64 [ %39, %28 ], [ %15, %24 ]
  %32 = add nsw i64 %29, -1
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 %32
  %36 = load i64, ptr %35, align 8, !tbaa !34
  %37 = and i64 %36, %34
  %38 = xor i64 %37, %34
  store i64 %38, ptr %33, align 8, !tbaa !34
  %39 = or i64 %37, %31
  %40 = or i64 %38, %30
  %41 = icmp eq i64 %32, 0
  br i1 %41, label %42, label %28, !llvm.loop !57

42:                                               ; preds = %28
  %43 = load ptr, ptr %14, align 8, !tbaa !15
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %14) #19
  br label %46

46:                                               ; preds = %45, %42
  %47 = load ptr, ptr %16, align 8, !tbaa !15
  br label %48

48:                                               ; preds = %26, %46, %22
  %49 = phi ptr [ %16, %22 ], [ %27, %26 ], [ %47, %46 ]
  %50 = phi i64 [ %15, %22 ], [ %15, %26 ], [ %39, %46 ]
  %51 = phi ptr [ %23, %22 ], [ %14, %26 ], [ %43, %46 ]
  %52 = icmp ne ptr %51, null
  %53 = icmp ne ptr %49, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %13, label %55, !llvm.loop !58

55:                                               ; preds = %48
  %56 = load ptr, ptr %0, align 8, !tbaa !6
  %57 = icmp ne i64 %50, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %55, %5
  %60 = phi ptr [ %3, %5 ], [ %56, %55 ]
  %61 = phi i8 [ 0, %5 ], [ %58, %55 ]
  %62 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  %64 = icmp eq ptr %63, null
  %65 = icmp ne ptr %60, null
  %66 = xor i1 %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1165, ptr noundef nonnull @.str.1) #20
  %68 = load ptr, ptr %62, align 8, !tbaa !16
  br label %69

69:                                               ; preds = %59, %67
  %70 = phi ptr [ %63, %59 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !18
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !17
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1166, ptr noundef nonnull @.str.1) #20
  br label %79

79:                                               ; preds = %78, %72, %69, %10, %12
  %80 = phi i8 [ 1, %12 ], [ 0, %10 ], [ %61, %69 ], [ %61, %72 ], [ %61, %78 ]
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_set_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %85, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %1, 7
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 7
  %10 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  store i32 %6, ptr %14, align 8, !tbaa !17
  tail call fastcc void @bitmap_element_link(ptr noundef %0, ptr noundef %13) #19
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %10, %5 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %15, %20
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp ugt i32 %6, %9
  br i1 %24, label %76, label %25

25:                                               ; preds = %21
  %26 = and i32 %1, 63
  %27 = zext nneg i32 %26 to i64
  %28 = shl nsw i64 -1, %27
  %29 = and i32 %7, 63
  %30 = zext nneg i32 %29 to i64
  %31 = shl nsw i64 -1, %30
  %32 = xor i64 %31, -1
  br label %33

33:                                               ; preds = %25, %66
  %34 = phi ptr [ %16, %25 ], [ %73, %66 ]
  %35 = phi ptr [ %23, %25 ], [ %47, %66 ]
  %36 = phi i32 [ %6, %25 ], [ %74, %66 ]
  %37 = shl nuw i32 %36, 7
  %38 = add i32 %37, 128
  %39 = icmp eq ptr %34, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %34, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !17
  %43 = icmp eq i32 %42, %36
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %33
  %45 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %35, i32 noundef %36) #19
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi ptr [ %45, %44 ], [ %34, %40 ]
  %48 = icmp ugt i32 %37, %1
  %49 = sub i32 %1, %37
  %50 = lshr i32 %49, 6
  %51 = select i1 %48, i32 0, i32 %50
  %52 = select i1 %48, i64 -1, i64 %28
  %53 = icmp ugt i32 %38, %7
  %54 = sub i32 %7, %37
  %55 = lshr i32 %54, 6
  %56 = select i1 %53, i32 %55, i32 1
  %57 = select i1 %53, i64 %32, i64 -1
  %58 = icmp eq i32 %51, %56
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = and i64 %57, %52
  br label %66

61:                                               ; preds = %46
  %62 = zext nneg i32 %51 to i64
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !34
  %65 = or i64 %64, %52
  store i64 %65, ptr %63, align 8, !tbaa !34
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %56, %61 ], [ %51, %59 ]
  %68 = phi i64 [ %57, %61 ], [ %60, %59 ]
  %69 = zext nneg i32 %67 to i64
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !34
  %72 = or i64 %71, %68
  store i64 %72, ptr %70, align 8, !tbaa !34
  %73 = load ptr, ptr %47, align 8, !tbaa !15
  %74 = add nuw nsw i32 %36, 1
  %75 = icmp eq i32 %36, %9
  br i1 %75, label %76, label %33, !llvm.loop !59

76:                                               ; preds = %66, %21
  %77 = phi ptr [ %23, %21 ], [ %47, %66 ]
  %78 = phi ptr [ %16, %21 ], [ %73, %66 ]
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %77, ptr %78
  %81 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !16
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %80, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !17
  %84 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %83, ptr %84, align 8, !tbaa !18
  br label %85

85:                                               ; preds = %3, %76
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_clear_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %84, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %1, 7
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 7
  %10 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %84, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !18
  %19 = icmp ult i32 %18, %6
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23

23:                                               ; preds = %16, %20, %5
  %24 = phi ptr [ %10, %5 ], [ %21, %20 ], [ %14, %16 ]
  %25 = and i32 %1, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nsw i64 -1, %26
  %28 = and i32 %7, 63
  %29 = zext nneg i32 %28 to i64
  %30 = shl nsw i64 -1, %29
  %31 = xor i64 %30, -1
  br label %32

32:                                               ; preds = %23, %79
  %33 = phi ptr [ %24, %23 ], [ %38, %79 ]
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !17
  %36 = icmp ugt i32 %35, %9
  br i1 %36, label %81, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %33, align 8, !tbaa !15
  %39 = shl nuw i32 %35, 7
  %40 = add i32 %39, 128
  %41 = icmp ult i32 %39, %1
  %42 = icmp ugt i32 %40, %7
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %37
  %45 = icmp ugt i32 %39, %1
  %46 = sub i32 %1, %39
  %47 = lshr i32 %46, 6
  %48 = select i1 %45, i32 0, i32 %47
  %49 = select i1 %45, i64 -1, i64 %27
  %50 = sub i32 %7, %39
  %51 = lshr i32 %50, 6
  %52 = select i1 %42, i32 %51, i32 1
  %53 = select i1 %42, i64 %31, i64 -1
  %54 = icmp eq i32 %48, %52
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = and i64 %53, %49
  br label %63

57:                                               ; preds = %44
  %58 = xor i64 %49, -1
  %59 = zext nneg i32 %48 to i64
  %60 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !34
  %62 = and i64 %61, %58
  store i64 %62, ptr %60, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %57, %55
  %64 = phi i64 [ %53, %57 ], [ %56, %55 ]
  %65 = phi i32 [ %52, %57 ], [ %48, %55 ]
  %66 = xor i64 %64, -1
  %67 = zext nneg i32 %65 to i64
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !34
  %70 = and i64 %69, %66
  store i64 %70, ptr %68, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 0
  %72 = load i64, ptr %71, align 8, !tbaa !34
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 1
  %76 = load i64, ptr %75, align 8, !tbaa !34
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %37
  tail call fastcc void @bitmap_element_free(ptr noundef %0, ptr noundef nonnull %33) #19
  br label %79

79:                                               ; preds = %78, %63, %74
  %80 = icmp eq ptr %38, null
  br i1 %80, label %84, label %32, !llvm.loop !60

81:                                               ; preds = %32
  %82 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %33, ptr %82, align 8, !tbaa !16
  %83 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %35, ptr %83, align 8, !tbaa !18
  br label %84

84:                                               ; preds = %79, %81, %12, %20, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_compl_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1406, ptr noundef nonnull @.str.1) #20
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %3, %2 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %99

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = icmp ne ptr %3, null
  %17 = icmp ne ptr %4, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %85, label %91

23:                                               ; preds = %12
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  br label %99

24:                                               ; preds = %15, %71
  %25 = phi i1 [ %76, %71 ], [ %17, %15 ]
  %26 = phi i1 [ %75, %71 ], [ %16, %15 ]
  %27 = phi ptr [ %74, %71 ], [ %3, %15 ]
  %28 = phi ptr [ %73, %71 ], [ %4, %15 ]
  %29 = phi ptr [ %72, %71 ], [ null, %15 ]
  br i1 %25, label %30, label %40

30:                                               ; preds = %24
  br i1 %26, label %34, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !17
  br label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !17
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %24
  %41 = load ptr, ptr %27, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %27) #19
  br label %71

44:                                               ; preds = %34
  %45 = icmp ult i32 %38, %36
  br i1 %45, label %46, label %52

46:                                               ; preds = %31, %44
  %47 = phi i32 [ %33, %31 ], [ %38, %44 ]
  %48 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %29, i32 noundef %47) #19
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false)
  %51 = load ptr, ptr %28, align 8, !tbaa !15
  br label %71

52:                                               ; preds = %44, %52
  %53 = phi i64 [ %55, %52 ], [ 2, %44 ]
  %54 = phi i64 [ %62, %52 ], [ 0, %44 ]
  %55 = add nsw i64 %53, -1
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %55
  %59 = load i64, ptr %58, align 8, !tbaa !34
  %60 = xor i64 %57, -1
  %61 = and i64 %59, %60
  store i64 %61, ptr %56, align 8, !tbaa !34
  %62 = or i64 %61, %54
  %63 = icmp eq i64 %55, 0
  br i1 %63, label %64, label %52, !llvm.loop !61

64:                                               ; preds = %52
  %65 = load ptr, ptr %27, align 8, !tbaa !15
  %66 = icmp eq i64 %62, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %27) #19
  br label %68

68:                                               ; preds = %64, %67
  %69 = phi ptr [ %29, %67 ], [ %27, %64 ]
  %70 = load ptr, ptr %28, align 8, !tbaa !15
  br label %71

71:                                               ; preds = %46, %68, %40
  %72 = phi ptr [ %43, %40 ], [ %48, %46 ], [ %69, %68 ]
  %73 = phi ptr [ %28, %40 ], [ %51, %46 ], [ %70, %68 ]
  %74 = phi ptr [ %41, %40 ], [ %27, %46 ], [ %65, %68 ]
  %75 = icmp ne ptr %74, null
  %76 = icmp ne ptr %73, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %24, label %78, !llvm.loop !62

78:                                               ; preds = %71
  %79 = load ptr, ptr %0, align 8, !tbaa !6
  %80 = icmp ne ptr %79, null
  %81 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !16
  %83 = icmp eq ptr %82, null
  %84 = xor i1 %83, %80
  br i1 %84, label %88, label %85

85:                                               ; preds = %19, %78
  %86 = phi ptr [ %20, %19 ], [ %81, %78 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1460, ptr noundef nonnull @.str.1) #20
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  br label %88

88:                                               ; preds = %78, %85
  %89 = phi ptr [ %82, %78 ], [ %87, %85 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %19, %88
  %92 = phi ptr [ %89, %88 ], [ %21, %19 ]
  %93 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !18
  %95 = getelementptr inbounds %struct.bitmap_element_def, ptr %92, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !17
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1461, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %98, %91, %88, %23, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1537, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp ne ptr %5, null
  %13 = icmp ne ptr %6, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11, %51
  %16 = phi i1 [ %57, %51 ], [ %13, %11 ]
  %17 = phi i1 [ %56, %51 ], [ %12, %11 ]
  %18 = phi i8 [ %24, %51 ], [ 0, %11 ]
  %19 = phi ptr [ %54, %51 ], [ %0, %11 ]
  %20 = phi ptr [ %54, %51 ], [ null, %11 ]
  %21 = phi ptr [ %53, %51 ], [ %6, %11 ]
  %22 = phi ptr [ %52, %51 ], [ %5, %11 ]
  %23 = phi ptr [ %55, %51 ], [ %4, %11 ]
  %24 = tail call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %20, ptr noundef %22, ptr noundef %21, i8 noundef zeroext %18) #19, !range !52
  %25 = select i1 %17, i1 %16, i1 false
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !17
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load ptr, ptr %22, align 8, !tbaa !15
  %34 = load ptr, ptr %21, align 8, !tbaa !15
  br label %51

35:                                               ; preds = %15
  br i1 %17, label %36, label %48

36:                                               ; preds = %35
  br i1 %16, label %37, label %46

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !17
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !17
  br label %42

42:                                               ; preds = %37, %26
  %43 = phi i32 [ %41, %37 ], [ %30, %26 ]
  %44 = phi i32 [ %39, %37 ], [ %28, %26 ]
  %45 = icmp ugt i32 %44, %43
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %36
  %47 = load ptr, ptr %22, align 8, !tbaa !15
  br label %51

48:                                               ; preds = %35
  br i1 %16, label %49, label %51

49:                                               ; preds = %42, %48
  %50 = load ptr, ptr %21, align 8, !tbaa !15
  br label %51

51:                                               ; preds = %46, %49, %48, %32
  %52 = phi ptr [ %33, %32 ], [ %47, %46 ], [ %22, %49 ], [ null, %48 ]
  %53 = phi ptr [ %34, %32 ], [ %21, %46 ], [ %50, %49 ], [ null, %48 ]
  %54 = load ptr, ptr %19, align 8, !tbaa !19
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = icmp ne ptr %52, null
  %57 = icmp ne ptr %53, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %15, label %59, !llvm.loop !63

59:                                               ; preds = %51, %11
  %60 = phi ptr [ %4, %11 ], [ %55, %51 ]
  %61 = phi i8 [ 0, %11 ], [ %24, %51 ]
  %62 = icmp eq ptr %60, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %60) #19
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8 [ 1, %63 ], [ %61, %59 ]
  %66 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr %0, align 8, !tbaa !6
  %70 = icmp ne ptr %69, null
  %71 = xor i1 %68, %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @.str.1) #20
  %73 = load ptr, ptr %66, align 8, !tbaa !16
  br label %74

74:                                               ; preds = %64, %72
  %75 = phi ptr [ %67, %64 ], [ %73, %72 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bitmap_element_def, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !17
  %80 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %79, ptr %80, align 8, !tbaa !18
  br label %81

81:                                               ; preds = %77, %74
  ret i8 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_elt_ior(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #2 {
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %4, null
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #20
  br label %74

11:                                               ; preds = %6
  %12 = and i1 %7, %8
  br i1 %12, label %13, label %60

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !17
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = icmp eq i8 %5, 0
  %21 = icmp ne ptr %1, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !17
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %46

27:                                               ; preds = %23, %39
  %28 = phi i64 [ %41, %39 ], [ 1, %23 ]
  %29 = phi i8 [ %40, %39 ], [ 0, %23 ]
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %28
  %31 = load i64, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %28
  %33 = load i64, ptr %32, align 8, !tbaa !34
  %34 = or i64 %33, %31
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 3, i64 %28
  %36 = load i64, ptr %35, align 8, !tbaa !34
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i64 %34, ptr %35, align 8, !tbaa !34
  br label %39

39:                                               ; preds = %38, %27
  %40 = phi i8 [ 1, %38 ], [ %29, %27 ]
  %41 = add nsw i64 %28, -1
  %42 = icmp eq i64 %28, 0
  br i1 %42, label %78, label %27, !llvm.loop !64

43:                                               ; preds = %19
  br i1 %21, label %46, label %44

44:                                               ; preds = %43
  %45 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %2, i32 noundef %15) #19
  br label %48

46:                                               ; preds = %23, %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  store i32 %15, ptr %47, align 8, !tbaa !17
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %1, %46 ], [ %45, %44 ]
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 2, %48 ], [ %52, %50 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %52
  %56 = load i64, ptr %55, align 8, !tbaa !34
  %57 = or i64 %56, %54
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 %52
  store i64 %57, ptr %58, align 8, !tbaa !34
  %59 = icmp eq i64 %52, 0
  br i1 %59, label %78, label %50, !llvm.loop !65

60:                                               ; preds = %11
  br i1 %8, label %61, label %72

61:                                               ; preds = %60
  br i1 %7, label %62, label %71

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !17
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !17
  br label %67

67:                                               ; preds = %62, %13
  %68 = phi i32 [ %66, %62 ], [ %17, %13 ]
  %69 = phi i32 [ %64, %62 ], [ %15, %13 ]
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %75, label %71

71:                                               ; preds = %67, %61
  br label %75

72:                                               ; preds = %60
  %73 = icmp eq ptr %3, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %10, %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.1) #20
  br label %75

75:                                               ; preds = %67, %71, %72, %74
  %76 = phi ptr [ %3, %72 ], [ null, %74 ], [ %3, %67 ], [ %4, %71 ]
  %77 = tail call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %76, i8 noundef zeroext %5) #19, !range !52
  br label %78

78:                                               ; preds = %50, %39, %75
  %79 = phi i8 [ %77, %75 ], [ %40, %39 ], [ 1, %50 ]
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %4, %29
  %8 = phi i8 [ %31, %29 ], [ 0, %4 ]
  %9 = phi ptr [ %32, %29 ], [ %0, %4 ]
  %10 = phi ptr [ %32, %29 ], [ null, %4 ]
  %11 = phi ptr [ %30, %29 ], [ %5, %4 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %7
  %21 = tail call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef %0, ptr noundef %12, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %11, i8 noundef zeroext %8) #19, !range !52
  br label %26

22:                                               ; preds = %14
  %23 = icmp ugt i32 %16, %18
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = tail call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef %0, ptr noundef null, ptr noundef %10, ptr noundef nonnull %11, i8 noundef zeroext %8) #19, !range !52
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi i8 [ %25, %24 ], [ %21, %20 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !15
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %11, %22 ], [ %28, %26 ]
  %31 = phi i8 [ %8, %22 ], [ %27, %26 ]
  %32 = load ptr, ptr %9, align 8, !tbaa !19
  %33 = icmp eq ptr %30, null
  br i1 %33, label %34, label %7, !llvm.loop !66

34:                                               ; preds = %29, %4
  %35 = phi i8 [ 0, %4 ], [ %31, %29 ]
  %36 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  %39 = load ptr, ptr %0, align 8, !tbaa !6
  %40 = icmp ne ptr %39, null
  %41 = xor i1 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1605, ptr noundef nonnull @.str.1) #20
  %43 = load ptr, ptr %36, align 8, !tbaa !16
  br label %44

44:                                               ; preds = %34, %42
  %45 = phi ptr [ %37, %34 ], [ %43, %42 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %49, ptr %50, align 8, !tbaa !18
  br label %51

51:                                               ; preds = %44, %47, %2
  %52 = phi i8 [ 0, %2 ], [ %35, %47 ], [ %35, %44 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_xor(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = icmp ne ptr %5, null
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %18, label %99

17:                                               ; preds = %11
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  br label %117

18:                                               ; preds = %13, %91
  %19 = phi i1 [ %97, %91 ], [ %15, %13 ]
  %20 = phi i1 [ %96, %91 ], [ %14, %13 ]
  %21 = phi ptr [ %95, %91 ], [ %4, %13 ]
  %22 = phi ptr [ %94, %91 ], [ null, %13 ]
  %23 = phi ptr [ %93, %91 ], [ %6, %13 ]
  %24 = phi ptr [ %92, %91 ], [ %5, %13 ]
  %25 = select i1 %20, i1 %19, i1 false
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !17
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = icmp eq ptr %21, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %22, i32 noundef %28) #19
  br label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  store i32 %28, ptr %37, align 8, !tbaa !17
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %21, %36 ], [ %35, %34 ]
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 2, %38 ], [ %43, %40 ]
  %42 = phi i64 [ 0, %38 ], [ %49, %40 ]
  %43 = add nsw i64 %41, -1
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 3, i64 %43
  %47 = load i64, ptr %46, align 8, !tbaa !34
  %48 = xor i64 %47, %45
  %49 = or i64 %48, %42
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %39, i64 0, i32 3, i64 %43
  store i64 %48, ptr %50, align 8, !tbaa !34
  %51 = icmp eq i64 %43, 0
  br i1 %51, label %52, label %40, !llvm.loop !67

52:                                               ; preds = %40
  %53 = load ptr, ptr %24, align 8, !tbaa !15
  %54 = load ptr, ptr %23, align 8, !tbaa !15
  %55 = icmp eq i64 %49, 0
  br i1 %55, label %91, label %86

56:                                               ; preds = %18
  br i1 %19, label %57, label %67

57:                                               ; preds = %56
  br i1 %20, label %58, label %69

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !17
  br label %63

63:                                               ; preds = %58, %26
  %64 = phi i32 [ %62, %58 ], [ %30, %26 ]
  %65 = phi i32 [ %60, %58 ], [ %28, %26 ]
  %66 = icmp ult i32 %65, %64
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %56
  %68 = load ptr, ptr %24, align 8, !tbaa !15
  br label %71

69:                                               ; preds = %63, %57
  %70 = load ptr, ptr %23, align 8, !tbaa !15
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %24, %69 ]
  %73 = phi ptr [ %23, %67 ], [ %70, %69 ]
  %74 = phi ptr [ %24, %67 ], [ %23, %69 ]
  %75 = icmp eq ptr %21, null
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !17
  br i1 %75, label %78, label %80

78:                                               ; preds = %71
  %79 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %22, i32 noundef %77) #19
  br label %82

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  store i32 %77, ptr %81, align 8, !tbaa !17
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %21, %80 ], [ %79, %78 ]
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 3
  %85 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %85, i64 16, i1 false)
  br label %86

86:                                               ; preds = %52, %82
  %87 = phi ptr [ %83, %82 ], [ %39, %52 ]
  %88 = phi ptr [ %72, %82 ], [ %53, %52 ]
  %89 = phi ptr [ %73, %82 ], [ %54, %52 ]
  %90 = load ptr, ptr %87, align 8, !tbaa !15
  br label %91

91:                                               ; preds = %86, %52
  %92 = phi ptr [ %53, %52 ], [ %88, %86 ]
  %93 = phi ptr [ %54, %52 ], [ %89, %86 ]
  %94 = phi ptr [ %22, %52 ], [ %87, %86 ]
  %95 = phi ptr [ %39, %52 ], [ %90, %86 ]
  %96 = icmp ne ptr %92, null
  %97 = icmp ne ptr %93, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %18, label %99, !llvm.loop !68

99:                                               ; preds = %91, %13
  %100 = phi ptr [ %4, %13 ], [ %95, %91 ]
  %101 = load ptr, ptr %0, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !16
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %100) #19
  %103 = load ptr, ptr %102, align 8, !tbaa !16
  %104 = icmp eq ptr %103, null
  %105 = load ptr, ptr %0, align 8, !tbaa !6
  %106 = icmp ne ptr %105, null
  %107 = xor i1 %104, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1683, ptr noundef nonnull @.str.1) #20
  %109 = load ptr, ptr %102, align 8, !tbaa !16
  br label %110

110:                                              ; preds = %99, %108
  %111 = phi ptr [ %103, %99 ], [ %109, %108 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %111, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !17
  %116 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !18
  br label %117

117:                                              ; preds = %110, %113, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_xor_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %5, null
  br i1 %7, label %50, label %9

8:                                                ; preds = %2
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  br label %66

9:                                                ; preds = %4, %43
  %10 = phi ptr [ %46, %43 ], [ %6, %4 ]
  %11 = phi ptr [ %45, %43 ], [ %5, %4 ]
  %12 = phi ptr [ %44, %43 ], [ null, %4 ]
  %13 = icmp eq ptr %10, null
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !17
  br i1 %13, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %9, %16
  %21 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %12, i32 noundef %15) #19
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %24 = load ptr, ptr %11, align 8, !tbaa !15
  br label %43

25:                                               ; preds = %16
  %26 = icmp ult i32 %18, %15
  %27 = load ptr, ptr %10, align 8, !tbaa !15
  br i1 %26, label %43, label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %31, %28 ], [ 2, %25 ]
  %30 = phi i64 [ %37, %28 ], [ 0, %25 ]
  %31 = add nsw i64 %29, -1
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %31
  %35 = load i64, ptr %34, align 8, !tbaa !34
  %36 = xor i64 %35, %33
  %37 = or i64 %36, %30
  store i64 %36, ptr %32, align 8, !tbaa !34
  %38 = icmp eq i64 %31, 0
  br i1 %38, label %39, label %28, !llvm.loop !69

39:                                               ; preds = %28
  %40 = load ptr, ptr %11, align 8, !tbaa !15
  %41 = icmp eq i64 %37, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %10) #19
  br label %43

43:                                               ; preds = %25, %42, %39, %20
  %44 = phi ptr [ %21, %20 ], [ %12, %42 ], [ %10, %39 ], [ %10, %25 ]
  %45 = phi ptr [ %24, %20 ], [ %40, %42 ], [ %40, %39 ], [ %11, %25 ]
  %46 = phi ptr [ %10, %20 ], [ %27, %42 ], [ %27, %39 ], [ %27, %25 ]
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %9, !llvm.loop !70

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 8, !tbaa !6
  br label %50

50:                                               ; preds = %48, %4
  %51 = phi ptr [ %49, %48 ], [ %6, %4 ]
  %52 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = icmp eq ptr %53, null
  %55 = icmp ne ptr %51, null
  %56 = xor i1 %54, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1740, ptr noundef nonnull @.str.1) #20
  %58 = load ptr, ptr %52, align 8, !tbaa !16
  br label %59

59:                                               ; preds = %50, %57
  %60 = phi ptr [ %53, %50 ], [ %58, %57 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !17
  %65 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %64, ptr %65, align 8, !tbaa !18
  br label %66

66:                                               ; preds = %59, %62, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr %1, align 8, !tbaa !19
  %4 = load ptr, ptr %0, align 8, !tbaa !19
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %34

8:                                                ; preds = %2, %28
  %9 = phi ptr [ %30, %28 ], [ %4, %2 ]
  %10 = phi ptr [ %29, %28 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 1
  %18 = load i64, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !34
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %40, !llvm.loop !71

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 0
  %24 = load i64, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 0
  %26 = load i64, ptr %25, align 8, !tbaa !34
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %40, !llvm.loop !71

28:                                               ; preds = %22
  %29 = load ptr, ptr %10, align 8, !tbaa !19
  %30 = load ptr, ptr %9, align 8, !tbaa !19
  %31 = icmp ne ptr %30, null
  %32 = icmp ne ptr %29, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %8, label %34, !llvm.loop !72

34:                                               ; preds = %28, %2
  %35 = phi i1 [ %5, %2 ], [ %31, %28 ]
  %36 = phi i1 [ %6, %2 ], [ %32, %28 ]
  %37 = select i1 %35, i1 true, i1 %36
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %8, %16, %22, %34
  %41 = phi i8 [ %39, %34 ], [ 0, %22 ], [ 0, %16 ], [ 0, %8 ]
  ret i8 %41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bitmap_intersect_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %43

8:                                                ; preds = %2, %37
  %9 = phi ptr [ %39, %37 ], [ %4, %2 ]
  %10 = phi ptr [ %38, %37 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %10, align 8, !tbaa !15
  br label %37

18:                                               ; preds = %8
  %19 = icmp ult i32 %14, %12
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !15
  br label %37

22:                                               ; preds = %18, %25
  %23 = phi i64 [ %26, %25 ], [ 2, %18 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = add nsw i64 %23, -1
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 %27
  %31 = load i64, ptr %30, align 8, !tbaa !34
  %32 = and i64 %31, %29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %22, label %43, !llvm.loop !73

34:                                               ; preds = %22
  %35 = load ptr, ptr %10, align 8, !tbaa !15
  %36 = load ptr, ptr %9, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %20, %34, %16
  %38 = phi ptr [ %17, %16 ], [ %10, %20 ], [ %35, %34 ]
  %39 = phi ptr [ %9, %16 ], [ %21, %20 ], [ %36, %34 ]
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %8, label %43, !llvm.loop !74

43:                                               ; preds = %37, %25, %2
  %44 = phi i8 [ 0, %2 ], [ 1, %25 ], [ 0, %37 ]
  ret i8 %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_intersect_compl_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load ptr, ptr %1, align 8, !tbaa !19
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %39

8:                                                ; preds = %2, %33
  %9 = phi ptr [ %35, %33 ], [ %4, %2 ]
  %10 = phi ptr [ %34, %33 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %42, label %16

16:                                               ; preds = %8
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %33, label %18

18:                                               ; preds = %16, %21
  %19 = phi i64 [ %22, %21 ], [ 2, %16 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = add nsw i64 %19, -1
  %23 = and i64 %22, 4294967295
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 %23
  %27 = load i64, ptr %26, align 8, !tbaa !34
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %18, label %42, !llvm.loop !75

31:                                               ; preds = %18
  %32 = load ptr, ptr %10, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %16, %31
  %34 = phi ptr [ %32, %31 ], [ %10, %16 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !19
  %36 = icmp ne ptr %34, null
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %8, label %39, !llvm.loop !76

39:                                               ; preds = %33, %2
  %40 = phi i1 [ %5, %2 ], [ %36, %33 ]
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %8, %21, %39
  %43 = phi i8 [ %41, %39 ], [ 1, %21 ], [ 1, %8 ]
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.bitmap_element_def, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = load ptr, ptr %1, align 8, !tbaa !6
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  %9 = load ptr, ptr %3, align 8, !tbaa !6
  %10 = icmp eq ptr %0, %1
  %11 = icmp eq ptr %0, %2
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %0, %3
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1839, ptr noundef nonnull @.str.1) #20
  br label %16

16:                                               ; preds = %4, %15
  %17 = icmp eq ptr %2, %3
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %16
  %22 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !52
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %190

24:                                               ; preds = %21
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %190

25:                                               ; preds = %18
  %26 = load ptr, ptr %3, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @bitmap_ior(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #19, !range !52
  br label %190

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = icmp ne ptr %7, null
  %35 = icmp ne ptr %8, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %168

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  br label %41

39:                                               ; preds = %30
  %40 = tail call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !52
  br label %190

41:                                               ; preds = %37, %157
  %42 = phi i1 [ %35, %37 ], [ %166, %157 ]
  %43 = phi i1 [ %34, %37 ], [ %165, %157 ]
  %44 = phi ptr [ %0, %37 ], [ %164, %157 ]
  %45 = phi ptr [ null, %37 ], [ %163, %157 ]
  %46 = phi ptr [ %9, %37 ], [ %158, %157 ]
  %47 = phi ptr [ %8, %37 ], [ %159, %157 ]
  %48 = phi ptr [ %7, %37 ], [ %160, %157 ]
  %49 = phi ptr [ %6, %37 ], [ %162, %157 ]
  %50 = phi i8 [ 0, %37 ], [ %161, %157 ]
  %51 = icmp ne ptr %46, null
  %52 = select i1 %42, i1 %51, i1 false
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !17
  br label %56

56:                                               ; preds = %53, %61
  %57 = phi ptr [ %62, %61 ], [ %46, %53 ]
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !17
  %60 = icmp ult i32 %59, %55
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %57, align 8, !tbaa !15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %104, label %56

64:                                               ; preds = %56, %41
  %65 = phi ptr [ %46, %41 ], [ %57, %56 ]
  %66 = icmp ne ptr %65, null
  %67 = select i1 %42, i1 %66, i1 false
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !17
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !17
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %68
  br i1 %43, label %75, label %79

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !17
  %78 = icmp ult i32 %77, %70
  br i1 %78, label %108, label %79

79:                                               ; preds = %75, %74
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  store i32 %70, ptr %38, align 8, !tbaa !17
  br label %80

80:                                               ; preds = %79, %80
  %81 = phi i64 [ 2, %79 ], [ %83, %80 ]
  %82 = phi i64 [ 0, %79 ], [ %90, %80 ]
  %83 = add nsw i64 %81, -1
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !34
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 3, i64 %83
  %87 = load i64, ptr %86, align 8, !tbaa !34
  %88 = xor i64 %87, -1
  %89 = and i64 %85, %88
  %90 = or i64 %89, %82
  %91 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 %83
  store i64 %89, ptr %91, align 8, !tbaa !34
  %92 = icmp eq i64 %83, 0
  br i1 %92, label %93, label %80, !llvm.loop !77

93:                                               ; preds = %80
  %94 = icmp eq i64 %90, 0
  br i1 %94, label %147, label %95

95:                                               ; preds = %93
  %96 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %45, ptr noundef %48, ptr noundef nonnull %5, i8 noundef zeroext %50) #19, !range !52
  br i1 %43, label %97, label %143

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !17
  %100 = load i32, ptr %71, align 8, !tbaa !17
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %97
  %103 = load ptr, ptr %48, align 8, !tbaa !15
  br label %143

104:                                              ; preds = %61, %68, %64
  %105 = phi ptr [ %65, %68 ], [ %65, %64 ], [ null, %61 ]
  %106 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %45, ptr noundef %48, ptr noundef %47, i8 noundef zeroext %50) #19, !range !52
  %107 = and i1 %43, %42
  br i1 %107, label %110, label %121

108:                                              ; preds = %75
  %109 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %45, ptr noundef nonnull %48, ptr noundef nonnull %47, i8 noundef zeroext %50) #19, !range !52
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i8 [ %109, %108 ], [ %106, %104 ]
  %112 = phi ptr [ %65, %108 ], [ %105, %104 ]
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !17
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %110
  %119 = load ptr, ptr %48, align 8, !tbaa !15
  %120 = load ptr, ptr %47, align 8, !tbaa !15
  br label %150

121:                                              ; preds = %104
  br i1 %43, label %122, label %138

122:                                              ; preds = %121
  br i1 %42, label %123, label %134

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !17
  %126 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !17
  br label %128

128:                                              ; preds = %123, %110
  %129 = phi i32 [ %127, %123 ], [ %116, %110 ]
  %130 = phi i32 [ %125, %123 ], [ %114, %110 ]
  %131 = phi ptr [ %105, %123 ], [ %112, %110 ]
  %132 = phi i8 [ %106, %123 ], [ %111, %110 ]
  %133 = icmp ugt i32 %130, %129
  br i1 %133, label %139, label %134

134:                                              ; preds = %128, %122
  %135 = phi ptr [ %131, %128 ], [ %105, %122 ]
  %136 = phi i8 [ %132, %128 ], [ %106, %122 ]
  %137 = load ptr, ptr %48, align 8, !tbaa !15
  br label %150

138:                                              ; preds = %121
  br i1 %42, label %139, label %150

139:                                              ; preds = %128, %138
  %140 = phi i8 [ %106, %138 ], [ %132, %128 ]
  %141 = phi ptr [ %105, %138 ], [ %131, %128 ]
  %142 = load ptr, ptr %47, align 8, !tbaa !15
  br label %150

143:                                              ; preds = %102, %97, %95
  %144 = phi ptr [ null, %95 ], [ %48, %97 ], [ %103, %102 ]
  %145 = load ptr, ptr %47, align 8, !tbaa !15
  %146 = load ptr, ptr %65, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  br label %150

147:                                              ; preds = %93
  %148 = load ptr, ptr %47, align 8, !tbaa !15
  %149 = load ptr, ptr %65, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  br label %157

150:                                              ; preds = %138, %139, %134, %118, %143
  %151 = phi ptr [ %146, %143 ], [ %105, %138 ], [ %141, %139 ], [ %135, %134 ], [ %112, %118 ]
  %152 = phi ptr [ %145, %143 ], [ null, %138 ], [ %142, %139 ], [ %47, %134 ], [ %120, %118 ]
  %153 = phi ptr [ %144, %143 ], [ null, %138 ], [ %48, %139 ], [ %137, %134 ], [ %119, %118 ]
  %154 = phi i8 [ %96, %143 ], [ %106, %138 ], [ %140, %139 ], [ %136, %134 ], [ %111, %118 ]
  %155 = load ptr, ptr %44, align 8, !tbaa !19
  %156 = load ptr, ptr %155, align 8, !tbaa !19
  br label %157

157:                                              ; preds = %147, %150
  %158 = phi ptr [ %151, %150 ], [ %149, %147 ]
  %159 = phi ptr [ %152, %150 ], [ %148, %147 ]
  %160 = phi ptr [ %153, %150 ], [ %48, %147 ]
  %161 = phi i8 [ %154, %150 ], [ %50, %147 ]
  %162 = phi ptr [ %156, %150 ], [ %49, %147 ]
  %163 = phi ptr [ %155, %150 ], [ %45, %147 ]
  %164 = phi ptr [ %155, %150 ], [ %44, %147 ]
  %165 = icmp ne ptr %160, null
  %166 = icmp ne ptr %159, null
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %41, label %168, !llvm.loop !78

168:                                              ; preds = %157, %33
  %169 = phi i8 [ 0, %33 ], [ %161, %157 ]
  %170 = phi ptr [ %6, %33 ], [ %162, %157 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %170) #19
  br label %173

173:                                              ; preds = %172, %168
  %174 = phi i8 [ 1, %172 ], [ %169, %168 ]
  %175 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !16
  %177 = icmp eq ptr %176, null
  %178 = load ptr, ptr %0, align 8, !tbaa !6
  %179 = icmp ne ptr %178, null
  %180 = xor i1 %177, %179
  br i1 %180, label %183, label %181

181:                                              ; preds = %173
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1922, ptr noundef nonnull @.str.1) #20
  %182 = load ptr, ptr %175, align 8, !tbaa !16
  br label %183

183:                                              ; preds = %173, %181
  %184 = phi ptr [ %176, %173 ], [ %182, %181 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.bitmap_element_def, ptr %184, i64 0, i32 2
  %188 = load i32, ptr %187, align 8, !tbaa !17
  %189 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %188, ptr %189, align 8, !tbaa !18
  br label %190

190:                                              ; preds = %183, %186, %21, %24, %39, %28
  %191 = phi i8 [ %40, %39 ], [ %29, %28 ], [ 1, %24 ], [ 0, %21 ], [ %174, %186 ], [ %174, %183 ]
  ret i8 %191
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.bitmap_head_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %4, ptr noundef nonnull @bitmap_default_obstack) #19
  %5 = call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #19, !range !52
  %6 = call zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef nonnull %4) #19, !range !52
  call void @bitmap_clear(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_and_into(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.bitmap_element_def, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = load ptr, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !52
  br label %119

11:                                               ; preds = %3
  %12 = icmp eq ptr %6, null
  %13 = icmp eq ptr %7, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %119, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  store i32 -1, ptr %16, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %15, %94
  %18 = phi i8 [ 0, %15 ], [ %98, %94 ]
  %19 = phi ptr [ %0, %15 ], [ %97, %94 ]
  %20 = phi ptr [ null, %15 ], [ %96, %94 ]
  %21 = phi ptr [ %7, %15 ], [ %67, %94 ]
  %22 = phi ptr [ %6, %15 ], [ %66, %94 ]
  %23 = phi ptr [ %5, %15 ], [ %95, %94 ]
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %17, %41
  %30 = phi i32 [ %47, %41 ], [ %27, %17 ]
  %31 = phi i32 [ %45, %41 ], [ %25, %17 ]
  %32 = phi ptr [ %43, %41 ], [ %21, %17 ]
  %33 = phi ptr [ %42, %41 ], [ %22, %17 ]
  %34 = icmp ult i32 %31, %30
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 8, !tbaa !15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %102, label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr %32, align 8, !tbaa !15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %102, label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %36, %35 ], [ %33, %38 ]
  %43 = phi ptr [ %32, %35 ], [ %39, %38 ]
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %42, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !17
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %29, !llvm.loop !79

49:                                               ; preds = %41, %17
  %50 = phi ptr [ %22, %17 ], [ %42, %41 ]
  %51 = phi ptr [ %21, %17 ], [ %43, %41 ]
  %52 = phi i32 [ %25, %17 ], [ %45, %41 ]
  store i32 %52, ptr %16, align 8, !tbaa !17
  br label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 2, %49 ], [ %56, %53 ]
  %55 = phi i64 [ 0, %49 ], [ %63, %53 ]
  %56 = add nsw i64 %54, -1
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %51, i64 0, i32 3, i64 %56
  %60 = load i64, ptr %59, align 8, !tbaa !34
  %61 = and i64 %60, %58
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %56
  store i64 %61, ptr %62, align 8, !tbaa !34
  %63 = or i64 %61, %55
  %64 = icmp eq i64 %56, 0
  br i1 %64, label %65, label %53, !llvm.loop !80

65:                                               ; preds = %53
  %66 = load ptr, ptr %50, align 8, !tbaa !15
  %67 = load ptr, ptr %51, align 8, !tbaa !15
  %68 = icmp eq i64 %63, 0
  br i1 %68, label %94, label %69, !llvm.loop !81

69:                                               ; preds = %65, %87
  %70 = phi i32 [ %92, %87 ], [ %52, %65 ]
  %71 = phi ptr [ %91, %87 ], [ %23, %65 ]
  %72 = phi ptr [ %90, %87 ], [ %20, %65 ]
  %73 = phi ptr [ %90, %87 ], [ %19, %65 ]
  %74 = phi i8 [ %89, %87 ], [ %18, %65 ]
  %75 = icmp eq ptr %71, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !17
  %79 = icmp eq i32 %78, %70
  br i1 %79, label %80, label %83

80:                                               ; preds = %69, %76
  %81 = phi i32 [ %78, %76 ], [ %70, %69 ]
  %82 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %71, ptr noundef %72, ptr noundef %71, ptr noundef nonnull %4, i8 noundef zeroext %74) #19, !range !52
  br label %87

83:                                               ; preds = %76
  %84 = icmp ugt i32 %78, %70
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef nonnull %0, ptr noundef null, ptr noundef %72, ptr noundef nonnull %4, i8 noundef zeroext %74) #19, !range !52
  br label %87

87:                                               ; preds = %83, %85, %80
  %88 = phi i32 [ %81, %80 ], [ %78, %85 ], [ %78, %83 ]
  %89 = phi i8 [ %82, %80 ], [ %86, %85 ], [ %74, %83 ]
  %90 = load ptr, ptr %73, align 8, !tbaa !19
  %91 = load ptr, ptr %90, align 8, !tbaa !19
  %92 = load i32, ptr %16, align 8, !tbaa !17
  %93 = icmp ult i32 %88, %92
  br i1 %93, label %69, label %94, !llvm.loop !82

94:                                               ; preds = %87, %65
  %95 = phi ptr [ %23, %65 ], [ %91, %87 ]
  %96 = phi ptr [ %20, %65 ], [ %90, %87 ]
  %97 = phi ptr [ %19, %65 ], [ %90, %87 ]
  %98 = phi i8 [ %18, %65 ], [ %89, %87 ]
  %99 = icmp ne ptr %66, null
  %100 = icmp ne ptr %67, null
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %17, label %102

102:                                              ; preds = %94, %38, %35
  %103 = phi i8 [ %18, %35 ], [ %18, %38 ], [ %98, %94 ]
  %104 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !16
  %106 = icmp eq ptr %105, null
  %107 = load ptr, ptr %0, align 8, !tbaa !6
  %108 = icmp ne ptr %107, null
  %109 = xor i1 %106, %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2018, ptr noundef nonnull @.str.1) #20
  %111 = load ptr, ptr %104, align 8, !tbaa !16
  br label %112

112:                                              ; preds = %102, %110
  %113 = phi ptr [ %105, %102 ], [ %111, %110 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.bitmap_element_def, ptr %113, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !17
  %118 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %117, ptr %118, align 8, !tbaa !18
  br label %119

119:                                              ; preds = %112, %115, %11, %9
  %120 = phi i8 [ %10, %9 ], [ 0, %11 ], [ %103, %115 ], [ %103, %112 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  ret i8 %120
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_bitmap_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !18
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %5, i32 noundef %7) #19
  %9 = load ptr, ptr %1, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2, %51
  %12 = phi ptr [ %53, %51 ], [ %9, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !17
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %12, ptr noundef %13, ptr noundef %15, i32 noundef %17) #19
  br label %19

19:                                               ; preds = %11, %50
  %20 = phi i1 [ true, %11 ], [ false, %50 ]
  %21 = phi i64 [ 0, %11 ], [ 1, %50 ]
  %22 = phi i32 [ 26, %11 ], [ %47, %50 ]
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %21
  %24 = trunc i64 %21 to i32
  %25 = shl nuw nsw i32 %24, 6
  br label %26

26:                                               ; preds = %19, %46
  %27 = phi i64 [ 0, %19 ], [ %48, %46 ]
  %28 = phi i32 [ %22, %19 ], [ %47, %46 ]
  %29 = load i64, ptr %23, align 8, !tbaa !34
  %30 = shl nuw i64 1, %27
  %31 = and i64 %29, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = icmp ugt i32 %28, 70
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 4, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ 24, %35 ], [ %28, %33 ]
  %39 = load i32, ptr %16, align 8, !tbaa !17
  %40 = shl i32 %39, 7
  %41 = or disjoint i32 %40, %25
  %42 = trunc i64 %27 to i32
  %43 = add nuw nsw i32 %41, %42
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %43) #19
  %45 = add nuw nsw i32 %38, 4
  br label %46

46:                                               ; preds = %26, %37
  %47 = phi i32 [ %45, %37 ], [ %28, %26 ]
  %48 = add nuw nsw i64 %27, 1
  %49 = icmp eq i64 %48, 64
  br i1 %49, label %50, label %26, !llvm.loop !83

50:                                               ; preds = %46
  br i1 %20, label %19, label %51, !llvm.loop !84

51:                                               ; preds = %50
  %52 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr %0)
  %53 = load ptr, ptr %12, align 8, !tbaa !19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %11, !llvm.loop !85

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_bitmap(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !19
  tail call void @debug_bitmap_file(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @bitmap_print(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %7 = tail call i32 @fputs(ptr noundef %2, ptr noundef %0) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5) #19
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !52
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ @.str.9, %10 ], [ @.str.7, %4 ]
  %12 = load i32, ptr %5, align 4, !tbaa !20
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %11, i32 noundef %12) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !52
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !86

16:                                               ; preds = %10, %4
  %17 = tail call i32 @fputs(ptr noundef %3, ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !89
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !17
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !91
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !20
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !92

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !20
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !20
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !87
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !90
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !34
  store i64 %35, ptr %3, align 8, !tbaa !91
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !20
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !20
  %40 = load i32, ptr %23, align 8, !tbaa !90
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !90
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !93

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !15
  store ptr %44, ptr %0, align 8, !tbaa !87
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !17
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !20
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !91
  store i32 %16, ptr %1, align 4, !tbaa !20
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !91
  %6 = load i32, ptr %1, align 4, !tbaa !20
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_bitmap_statistics() local_unnamed_addr #17 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bitmap_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %17, %4 ], [ %2, %1 ]
  %6 = phi i64 [ %16, %4 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = zext i32 %8 to i64
  %10 = xor i64 %6, %9
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 0
  %12 = load i64, ptr %11, align 8, !tbaa !34
  %13 = xor i64 %12, %10
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 1
  %15 = load i64, ptr %14, align 8, !tbaa !34
  %16 = xor i64 %15, %13
  %17 = load ptr, ptr %5, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !94

19:                                               ; preds = %4
  %20 = trunc i64 %16 to i32
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"bitmap_head_def", !8, i64 0, !8, i64 8, !11, i64 16, !8, i64 24}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!7, !8, i64 24}
!13 = !{!14, !8, i64 8}
!14 = !{!"bitmap_element_def", !8, i64 0, !8, i64 8, !11, i64 16, !9, i64 24}
!15 = !{!14, !8, i64 0}
!16 = !{!7, !8, i64 8}
!17 = !{!14, !11, i64 16}
!18 = !{!7, !11, i64 16}
!19 = !{!8, !8, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !8, i64 24}
!22 = !{!"bitmap_obstack", !8, i64 0, !8, i64 8, !23, i64 16}
!23 = !{!"obstack", !24, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !24, i64 40, !11, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!24 = !{!"long", !9, i64 0}
!25 = !{!22, !24, i64 56}
!26 = !{!22, !8, i64 48}
!27 = !{!22, !8, i64 32}
!28 = !{!22, !8, i64 40}
!29 = !{!22, !8, i64 8}
!30 = !{!22, !11, i64 64}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!22, !8, i64 0}
!34 = !{!24, !24, i64 0}
!35 = !{i32 0, i32 2}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !32}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !32}
!40 = distinct !{!40, !32}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !32}
!43 = !{!9, !9, i64 0}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = distinct !{!47, !32}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !32}
!52 = !{i8 0, i8 2}
!53 = distinct !{!53, !32}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !32}
!59 = distinct !{!59, !32}
!60 = distinct !{!60, !32}
!61 = distinct !{!61, !32}
!62 = distinct !{!62, !32}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !32}
!71 = distinct !{!71, !32}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = !{!88, !8, i64 0}
!88 = !{!"", !8, i64 0, !8, i64 8, !11, i64 16, !24, i64 24}
!89 = !{!88, !8, i64 8}
!90 = !{!88, !11, i64 16}
!91 = !{!88, !24, i64 24}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
