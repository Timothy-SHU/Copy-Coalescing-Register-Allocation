; ModuleID = 'bitmap.c'
source_filename = "bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }

@bitmap_default_obstack_depth = internal unnamed_addr global i32 0, align 4
@bitmap_default_obstack = dso_local global %struct.bitmap_obstack zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0Afirst = %p current = %p indx = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09%p next = %p prev = %p indx = %u\0A\09\09bits = {\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A\09\09\09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@bitmap_ggc_free = internal global ptr null, align 8
@gt_ggc_rd_gt_bitmap_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @bitmap_ggc_free, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@bitmap_zero_bits = dso_local global %struct.bitmap_element_def zeroinitializer, align 8
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_clear(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !104 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !111

4:                                                ; preds = %1
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_elt_clear_from(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !112 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %1, null
  br i1 %5, label %25, label %6, !prof !115

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !118

10:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %21, !prof !122

18:                                               ; preds = %10
  store ptr %8, ptr %11, align 8, !tbaa !120
  %19 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %16, ptr %19, align 8, !tbaa !123
  br label %21

20:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %21

21:                                               ; preds = %10, %18, %20
  %22 = icmp eq ptr %4, null
  %23 = select i1 %22, ptr @bitmap_ggc_free, ptr %4, !prof !124
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  store ptr %24, ptr %7, align 8, !tbaa !116
  store ptr %1, ptr %23, align 8, !tbaa !125
  br label %25

25:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_obstack_initialize(ptr noundef %0) local_unnamed_addr #1 !prof !126 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %7, !prof !127

3:                                                ; preds = %1
  %4 = load i32, ptr @bitmap_default_obstack_depth, align 4, !tbaa !128
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @bitmap_default_obstack_depth, align 4, !tbaa !128
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %11, !prof !129

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
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_obstack_release(ptr noundef %0) local_unnamed_addr #1 !prof !130 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %10, !prof !131

3:                                                ; preds = %1
  %4 = load i32, ptr @bitmap_default_obstack_depth, align 4, !tbaa !128
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr @bitmap_default_obstack_depth, align 4, !tbaa !128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !129

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
  %14 = load ptr, ptr %13, align 8, !tbaa !132
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 5
  store i64 %16, ptr %17, align 8, !tbaa !136
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %29, !prof !137

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %15
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %14, i64 %16
  %27 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !139
  %28 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 3
  store ptr %26, ptr %28, align 8, !tbaa !140
  br label %31

29:                                               ; preds = %19, %10
  %30 = getelementptr inbounds i8, ptr %14, i64 %16
  tail call void @obstack_free(ptr noundef nonnull %12, ptr noundef %30) #20
  br label %31

31:                                               ; preds = %9, %7, %25, %29
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bitmap_obstack_alloc_stat(ptr noundef %0) local_unnamed_addr #1 !prof !141 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @bitmap_default_obstack, ptr %0, !prof !142
  %4 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !144

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !105
  store ptr %8, ptr %4, align 8, !tbaa !143
  br label %56

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 5
  store i64 32, ptr %10, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = ptrtoint ptr %12 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 32
  br i1 %18, label %19, label %23, !prof !145

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %20, i32 noundef 32) #20
  %21 = load i64, ptr %10, align 8, !tbaa !136
  %22 = load ptr, ptr %13, align 8, !tbaa !140
  br label %23

23:                                               ; preds = %9, %19
  %24 = phi ptr [ %14, %9 ], [ %22, %19 ]
  %25 = phi i64 [ 32, %9 ], [ %21, %19 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %34, !prof !146

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 10
  %32 = load i8, ptr %31, align 8
  %33 = or i8 %32, 2
  store i8 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %23, %30
  %35 = ptrtoint ptr %28 to i64
  store i64 %35, ptr %10, align 8, !tbaa !136
  %36 = ptrtoint ptr %26 to i64
  %37 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !147
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %36
  %41 = xor i32 %38, -1
  %42 = sext i32 %41 to i64
  %43 = and i64 %40, %42
  %44 = inttoptr i64 %43 to ptr
  store ptr %44, ptr %13, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !132
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %43, %47
  %49 = load ptr, ptr %11, align 8, !tbaa !138
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %50, %47
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54, !prof !146

53:                                               ; preds = %34
  store ptr %49, ptr %13, align 8, !tbaa !140
  br label %54

54:                                               ; preds = %34, %53
  %55 = phi ptr [ %44, %34 ], [ %49, %53 ]
  store ptr %55, ptr %27, align 8, !tbaa !139
  br label %56

56:                                               ; preds = %54, %7
  %57 = phi ptr [ %5, %7 ], [ %28, %54 ]
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %57, ptr noundef nonnull %3) #19
  ret ptr %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !148 !PGOFuncName !149 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bitmap_gc_alloc_stat() local_unnamed_addr #1 !prof !150 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #20
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %1, ptr noundef null) #19
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_obstack_free(ptr noundef %0) local_unnamed_addr #0 !prof !151 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !152

3:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %0) #19
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  store ptr %7, ptr %0, align 8, !tbaa !105
  store ptr %0, ptr %6, align 8, !tbaa !143
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !153 {
  tail call void @bitmap_clear(ptr noundef %0) #19
  %3 = load ptr, ptr %1, align 8, !tbaa !125
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !154

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %22, %20 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %20 ], [ null, %2 ]
  %8 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !121
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %19, !prof !155

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %8, ptr %16, align 8, !tbaa !120
  store ptr %8, ptr %0, align 8, !tbaa !105
  %18 = load i32, ptr %9, align 8, !tbaa !121
  store i32 %18, ptr %17, align 8, !tbaa !123
  store ptr null, ptr %8, align 8, !tbaa !119
  br label %20

19:                                               ; preds = %5
  store ptr null, ptr %8, align 8, !tbaa !119
  store ptr %8, ptr %7, align 8, !tbaa !119
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 1
  store ptr %7, ptr %21, align 8
  %22 = load ptr, ptr %6, align 8, !tbaa !125
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !prof !156, !llvm.loop !157

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_element_allocate(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !159 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5, !prof !161

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !163

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !119
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !164

11:                                               ; preds = %8
  store ptr %9, ptr %3, align 8, !tbaa !162
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !116
  br label %80

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  store ptr %17, ptr %3, align 8, !tbaa !162
  br label %80

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 5
  store i64 40, ptr %19, align 8, !tbaa !136
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !140
  %24 = ptrtoint ptr %21 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 40
  br i1 %27, label %28, label %32, !prof !165

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %29, i32 noundef 40) #20
  %30 = load i64, ptr %19, align 8, !tbaa !136
  %31 = load ptr, ptr %22, align 8, !tbaa !140
  br label %32

32:                                               ; preds = %18, %28
  %33 = phi ptr [ %23, %18 ], [ %31, %28 ]
  %34 = phi i64 [ 40, %18 ], [ %30, %28 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !139
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %39, label %43, !prof !166

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 10
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %32, %39
  %44 = ptrtoint ptr %37 to i64
  store i64 %44, ptr %19, align 8, !tbaa !136
  %45 = ptrtoint ptr %35 to i64
  %46 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !147
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = xor i32 %47, -1
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = inttoptr i64 %52 to ptr
  store ptr %53, ptr %22, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !132
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %52, %56
  %58 = load ptr, ptr %20, align 8, !tbaa !138
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %59, %56
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %63, !prof !166

62:                                               ; preds = %43
  store ptr %58, ptr %22, align 8, !tbaa !140
  br label %63

63:                                               ; preds = %43, %62
  %64 = phi ptr [ %53, %43 ], [ %58, %62 ]
  store ptr %64, ptr %36, align 8, !tbaa !139
  br label %80

65:                                               ; preds = %1
  %66 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !125
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68, !prof !167

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !119
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71, !prof !168

71:                                               ; preds = %68
  store ptr %69, ptr @bitmap_ggc_free, align 8, !tbaa !125
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !116
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !116
  br label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !116
  store ptr %77, ptr @bitmap_ggc_free, align 8, !tbaa !125
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bitmap_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !169 {
  %3 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !170

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 1
  %9 = zext nneg i32 %6 to i64
  %10 = shl nuw i64 1, %9
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !171
  %14 = and i64 %13, %10
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19, !prof !172

16:                                               ; preds = %5
  %17 = xor i64 %10, -1
  %18 = and i64 %13, %17
  store i64 %18, ptr %12, align 8, !tbaa !171
  br label %19

19:                                               ; preds = %16, %5
  %20 = tail call fastcc i32 @bitmap_element_zerop(ptr noundef nonnull %3) #19, !range !173
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !174

22:                                               ; preds = %19
  tail call fastcc void @bitmap_element_free(ptr noundef %0, ptr noundef nonnull %3) #19
  br label %23

23:                                               ; preds = %2, %19, %22
  %24 = phi i1 [ %15, %22 ], [ %15, %19 ], [ false, %2 ]
  %25 = zext i1 %24 to i8
  ret i8 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @bitmap_find_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !175 !PGOFuncName !176 {
  %3 = lshr i32 %1, 7
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7, !prof !177

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %49, label %11, !prof !178

11:                                               ; preds = %7
  %12 = icmp ult i32 %9, %3
  br i1 %12, label %13, label %21, !prof !179

13:                                               ; preds = %11, %17
  %14 = phi ptr [ %15, %17 ], [ %5, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !prof !180

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !121
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %43, !prof !181, !llvm.loop !182

21:                                               ; preds = %11
  %22 = lshr i32 %9, 1
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %33, !prof !183

24:                                               ; preds = %21, %29
  %25 = phi ptr [ %27, %29 ], [ %5, %21 ]
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29, !prof !184

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !121
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %24, label %43, !prof !185, !llvm.loop !186

33:                                               ; preds = %21
  %34 = load ptr, ptr %0, align 8, !tbaa !105
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !187

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !121
  %42 = icmp ult i32 %41, %3
  br i1 %42, label %35, label %43, !prof !188, !llvm.loop !189

43:                                               ; preds = %35, %39, %24, %29, %17, %13
  %44 = phi ptr [ %14, %13 ], [ %14, %17 ], [ %25, %29 ], [ %25, %24 ], [ %36, %39 ], [ %36, %35 ]
  store ptr %44, ptr %4, align 8, !tbaa !120
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !121
  store i32 %46, ptr %8, align 8, !tbaa !123
  %47 = icmp eq i32 %46, %3
  %48 = select i1 %47, ptr %44, ptr null, !prof !190
  br label %49

49:                                               ; preds = %2, %7, %43
  %50 = phi ptr [ %48, %43 ], [ %5, %7 ], [ null, %2 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @bitmap_element_zerop(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !191 !PGOFuncName !192 {
  %2 = getelementptr inbounds %struct.bitmap_element_def, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !171
  %4 = getelementptr inbounds %struct.bitmap_element_def, ptr %0, i64 0, i32 3, i64 1
  %5 = load i64, ptr %4, align 8, !tbaa !171
  %6 = or i64 %5, %3
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_element_free(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !193 !PGOFuncName !194 {
  %3 = load ptr, ptr %1, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !195

7:                                                ; preds = %2
  store ptr %3, ptr %5, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq ptr %3, null
  br i1 %9, label %12, label %10, !prof !196

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  store ptr %5, ptr %11, align 8, !tbaa !116
  br label %12

12:                                               ; preds = %10, %8
  %13 = load ptr, ptr %0, align 8, !tbaa !105
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16, !prof !195

15:                                               ; preds = %12
  store ptr %3, ptr %0, align 8, !tbaa !105
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %29, !prof !197

20:                                               ; preds = %16
  %21 = select i1 %9, ptr %5, ptr %3, !prof !198
  store ptr %21, ptr %17, align 8, !tbaa !120
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !199

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !121
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %20 ]
  %28 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !123
  br label %29

29:                                               ; preds = %26, %16
  tail call fastcc void @bitmap_elem_to_freelist(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bitmap_set_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !200 {
  %3 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %4 = lshr i32 %1, 6
  %5 = and i32 %4, 1
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %16, !prof !201

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %12 = lshr i32 %1, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !121
  %14 = zext nneg i32 %5 to i64
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %14
  store i64 %8, ptr %15, align 8, !tbaa !171
  tail call fastcc void @bitmap_element_link(ptr noundef %0, ptr noundef %11) #19
  br label %24

16:                                               ; preds = %2
  %17 = zext nneg i32 %5 to i64
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !171
  %20 = and i64 %19, %8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24, !prof !202

22:                                               ; preds = %16
  %23 = or i64 %19, %8
  store i64 %23, ptr %18, align 8, !tbaa !171
  br label %24

24:                                               ; preds = %16, %22, %10
  %25 = phi i8 [ 1, %10 ], [ 1, %22 ], [ 0, %16 ]
  ret i8 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_element_link(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 !prof !203 !PGOFuncName !204 {
  %3 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !121
  %5 = load ptr, ptr %0, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !205

7:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %39

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !123
  %11 = icmp ult i32 %4, %10
  %12 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  br i1 %11, label %14, label %27, !prof !206

14:                                               ; preds = %8, %19
  %15 = phi ptr [ %17, %19 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !207

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !121
  %22 = icmp ugt i32 %21, %4
  br i1 %22, label %14, label %23, !prof !208, !llvm.loop !209

23:                                               ; preds = %14, %19
  %24 = phi ptr [ %17, %19 ], [ %0, %14 ]
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 1
  store ptr %1, ptr %24, align 8, !tbaa !125
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  store ptr %17, ptr %26, align 8, !tbaa !116
  store ptr %15, ptr %1, align 8, !tbaa !119
  br label %39

27:                                               ; preds = %8, %31
  %28 = phi ptr [ %29, %31 ], [ %13, %8 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31, !prof !210

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !121
  %34 = icmp ult i32 %33, %4
  br i1 %34, label %27, label %35, !prof !211, !llvm.loop !212

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 1
  store ptr %1, ptr %36, align 8, !tbaa !116
  br label %37

37:                                               ; preds = %27, %35
  store ptr %29, ptr %1, align 8, !tbaa !119
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  store ptr %28, ptr %38, align 8, !tbaa !116
  br label %39

39:                                               ; preds = %23, %37, %7
  %40 = phi ptr [ %25, %23 ], [ %28, %37 ], [ %0, %7 ]
  store ptr %1, ptr %40, align 8, !tbaa !125
  %41 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %1, ptr %41, align 8, !tbaa !120
  %42 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %4, ptr %42, align 8, !tbaa !123
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @bitmap_bit_p(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !213 {
  %3 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !214

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 1
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !171
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
define dso_local i64 @bitmap_count_bits(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !215 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %7, !prof !216

4:                                                ; preds = %10
  %5 = load ptr, ptr %8, align 8, !tbaa !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !217, !llvm.loop !218

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = phi i64 [ %16, %4 ], [ 0, %1 ]
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = phi i64 [ %9, %7 ], [ %16, %10 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !171
  %15 = tail call fastcc i64 @bitmap_popcount(i64 noundef %14) #19
  %16 = add i64 %15, %12
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %4, label %10, !prof !219, !llvm.loop !220

19:                                               ; preds = %4, %1
  %20 = phi i64 [ 0, %1 ], [ %16, %4 ]
  ret i64 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @bitmap_popcount(i64 noundef %0) unnamed_addr #11 !prof !221 !PGOFuncName !222 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi i64 [ 0, %1 ], [ %10, %2 ]
  %5 = lshr i64 %0, %3
  %6 = and i64 %5, 255
  %7 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !223
  %9 = zext i8 %8 to i64
  %10 = add i64 %4, %9
  %11 = add nuw nsw i64 %3, 8
  %12 = icmp ult i64 %3, 56
  br i1 %12, label %2, label %13, !prof !224, !llvm.loop !225

13:                                               ; preds = %2
  ret i64 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_single_bit_set_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !119
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %21

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %18, label %10, !llvm.loop !227

10:                                               ; preds = %4, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %12 = phi i64 [ %16, %7 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !171
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
define dso_local i32 @bitmap_first_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !228 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !229

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 770, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !171
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16, !prof !230

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 1
  %13 = load i64, ptr %12, align 8, !tbaa !171
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16, !prof !230

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 778, ptr noundef nonnull @.str.1) #20
  br label %16

16:                                               ; preds = %5, %11, %15
  %17 = phi i32 [ 128, %15 ], [ 0, %5 ], [ 64, %11 ]
  %18 = phi i64 [ 0, %15 ], [ %9, %5 ], [ %13, %11 ]
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %19, 0
  %21 = lshr exact i64 %18, 32
  %22 = select i1 %20, i64 %21, i64 %18, !prof !231
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 0
  %25 = lshr exact i64 %22, 16
  %26 = select i1 %24, i64 %25, i64 %22, !prof !232
  %27 = and i64 %26, 255
  %28 = icmp eq i64 %27, 0
  %29 = lshr exact i64 %26, 8
  %30 = select i1 %28, i64 %29, i64 %26, !prof !233
  %31 = and i64 %30, 15
  %32 = icmp eq i64 %31, 0
  %33 = lshr exact i64 %30, 4
  %34 = select i1 %32, i64 %33, i64 %30, !prof !234
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = lshr exact i64 %34, 2
  %38 = select i1 %36, i64 %37, i64 %34, !prof !235
  %39 = and i64 %38, 1
  %40 = xor i64 %39, 1
  %41 = shl nuw nsw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45, !prof !229

44:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %16, %44
  %46 = shl i32 %7, 7
  %47 = add i32 %17, %46
  %48 = or disjoint i32 %47, 32
  %49 = select i1 %20, i32 %48, i32 %47, !prof !231
  %50 = or disjoint i32 %49, 16
  %51 = select i1 %24, i32 %50, i32 %49, !prof !232
  %52 = or disjoint i32 %51, 8
  %53 = select i1 %28, i32 %52, i32 %51, !prof !233
  %54 = add i32 %53, 4
  %55 = select i1 %32, i32 %54, i32 %53, !prof !234
  %56 = add i32 %55, 2
  %57 = select i1 %36, i32 %56, i32 %55, !prof !235
  %58 = trunc i64 %39 to i32
  %59 = xor i32 %58, 1
  %60 = add i32 %59, %57
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !226 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !105
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
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !236

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !121
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !171
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 0
  %23 = load i64, ptr %22, align 8, !tbaa !171
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
define dso_local void @bitmap_and(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #1 !prof !237 {
  %4 = load ptr, ptr %0, align 8, !tbaa !105
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = load ptr, ptr %2, align 8, !tbaa !105
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !238

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 874, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %17, label %13, !prof !239

13:                                               ; preds = %11
  %14 = icmp ne ptr %5, null
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 %15, i1 false, !prof !240
  br i1 %16, label %18, label %71, !prof !241

17:                                               ; preds = %11
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %89

18:                                               ; preds = %13, %63
  %19 = phi ptr [ %67, %63 ], [ %4, %13 ]
  %20 = phi ptr [ %66, %63 ], [ null, %13 ]
  %21 = phi ptr [ %65, %63 ], [ %6, %13 ]
  %22 = phi ptr [ %64, %63 ], [ %5, %13 ]
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !121
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %30, !prof !242

28:                                               ; preds = %18
  %29 = load ptr, ptr %22, align 8, !tbaa !119
  br label %63

30:                                               ; preds = %18
  %31 = icmp ult i32 %26, %24
  br i1 %31, label %32, label %34, !prof !243

32:                                               ; preds = %30
  %33 = load ptr, ptr %21, align 8, !tbaa !119
  br label %63

34:                                               ; preds = %30
  %35 = icmp eq ptr %19, null
  br i1 %35, label %36, label %38, !prof !244

36:                                               ; preds = %34
  %37 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %20, i32 noundef %24) #19
  br label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %19, i64 0, i32 2
  store i32 %24, ptr %39, align 8, !tbaa !121
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi ptr [ %19, %38 ], [ %37, %36 ]
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 2, %40 ], [ %45, %42 ]
  %44 = phi i64 [ 0, %40 ], [ %52, %42 ]
  %45 = add nsw i64 %43, -1
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !171
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %45
  %49 = load i64, ptr %48, align 8, !tbaa !171
  %50 = and i64 %49, %47
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3, i64 %45
  store i64 %50, ptr %51, align 8, !tbaa !171
  %52 = or i64 %50, %44
  %53 = icmp eq i64 %45, 0
  br i1 %53, label %54, label %42, !prof !245, !llvm.loop !246

54:                                               ; preds = %42
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %58, label %56, !prof !247

56:                                               ; preds = %54
  %57 = load ptr, ptr %41, align 8, !tbaa !119
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %41, %56 ], [ %20, %54 ]
  %60 = phi ptr [ %57, %56 ], [ %41, %54 ]
  %61 = load ptr, ptr %22, align 8, !tbaa !119
  %62 = load ptr, ptr %21, align 8, !tbaa !119
  br label %63

63:                                               ; preds = %32, %58, %28
  %64 = phi ptr [ %29, %28 ], [ %22, %32 ], [ %61, %58 ]
  %65 = phi ptr [ %21, %28 ], [ %33, %32 ], [ %62, %58 ]
  %66 = phi ptr [ %20, %28 ], [ %20, %32 ], [ %59, %58 ]
  %67 = phi ptr [ %19, %28 ], [ %19, %32 ], [ %60, %58 ]
  %68 = icmp ne ptr %64, null
  %69 = icmp ne ptr %65, null
  %70 = select i1 %68, i1 %69, i1 false, !prof !240
  br i1 %70, label %18, label %71, !prof !248, !llvm.loop !249

71:                                               ; preds = %63, %13
  %72 = phi ptr [ %4, %13 ], [ %67, %63 ]
  %73 = load ptr, ptr %0, align 8, !tbaa !105
  %74 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !120
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %72) #19
  %75 = load ptr, ptr %74, align 8, !tbaa !120
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr %0, align 8, !tbaa !105
  %78 = icmp ne ptr %77, null
  %79 = xor i1 %76, %78
  br i1 %79, label %82, label %80, !prof !250

80:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.1) #20
  %81 = load ptr, ptr %74, align 8, !tbaa !120
  br label %82

82:                                               ; preds = %71, %80
  %83 = phi ptr [ %75, %71 ], [ %81, %80 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85, !prof !251

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !121
  %88 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %87, ptr %88, align 8, !tbaa !123
  br label %89

89:                                               ; preds = %82, %85, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_elt_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !252 !PGOFuncName !253 {
  %4 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !121
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %16, !prof !254

10:                                               ; preds = %3
  br i1 %9, label %11, label %13, !prof !255

11:                                               ; preds = %10
  store ptr %4, ptr %7, align 8, !tbaa !120
  %12 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !123
  br label %13

13:                                               ; preds = %11, %10
  %14 = load ptr, ptr %0, align 8, !tbaa !105
  store ptr %14, ptr %4, align 8, !tbaa !119
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %21, !prof !255

16:                                               ; preds = %3
  br i1 %9, label %17, label %18, !prof !256

17:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #20
  br label %18

18:                                               ; preds = %16, %17
  %19 = load ptr, ptr %1, align 8, !tbaa !119
  store ptr %19, ptr %4, align 8, !tbaa !119
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !257

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %14, %13 ], [ %19, %18 ]
  %23 = phi ptr [ %0, %13 ], [ %1, %18 ]
  %24 = phi ptr [ null, %13 ], [ %1, %18 ]
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 1
  store ptr %4, ptr %25, align 8, !tbaa !116
  br label %26

26:                                               ; preds = %21, %18, %13
  %27 = phi ptr [ %0, %13 ], [ %1, %18 ], [ %23, %21 ]
  %28 = phi ptr [ null, %13 ], [ %1, %18 ], [ %24, %21 ]
  store ptr %4, ptr %27, align 8, !tbaa !125
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !116
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !258 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %67, label %4, !prof !259

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = load ptr, ptr %0, align 8, !tbaa !105
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false, !prof !260
  br i1 %9, label %10, label %47, !prof !261

10:                                               ; preds = %4, %41
  %11 = phi ptr [ %43, %41 ], [ %6, %4 ]
  %12 = phi ptr [ %42, %41 ], [ %5, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %20, !prof !262

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 8, !tbaa !119
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %11) #19
  br label %41

20:                                               ; preds = %10
  %21 = icmp ult i32 %16, %14
  br i1 %21, label %22, label %24, !prof !263

22:                                               ; preds = %20
  %23 = load ptr, ptr %12, align 8, !tbaa !119
  br label %41

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %27, %24 ], [ 2, %20 ]
  %26 = phi i64 [ %33, %24 ], [ 0, %20 ]
  %27 = add nsw i64 %25, -1
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !171
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %27
  %31 = load i64, ptr %30, align 8, !tbaa !171
  %32 = and i64 %31, %29
  store i64 %32, ptr %28, align 8, !tbaa !171
  %33 = or i64 %32, %26
  %34 = icmp eq i64 %27, 0
  br i1 %34, label %35, label %24, !prof !264, !llvm.loop !265

35:                                               ; preds = %24
  %36 = load ptr, ptr %11, align 8, !tbaa !119
  %37 = icmp eq i64 %33, 0
  br i1 %37, label %38, label %39, !prof !266

38:                                               ; preds = %35
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %11) #19
  br label %39

39:                                               ; preds = %38, %35
  %40 = load ptr, ptr %12, align 8, !tbaa !119
  br label %41

41:                                               ; preds = %22, %39, %18
  %42 = phi ptr [ %12, %18 ], [ %23, %22 ], [ %40, %39 ]
  %43 = phi ptr [ %19, %18 ], [ %11, %22 ], [ %36, %39 ]
  %44 = icmp ne ptr %43, null
  %45 = icmp ne ptr %42, null
  %46 = select i1 %44, i1 %45, i1 false, !prof !260
  br i1 %46, label %10, label %47, !prof !267, !llvm.loop !268

47:                                               ; preds = %41, %4
  %48 = phi ptr [ %6, %4 ], [ %43, %41 ]
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %48) #19
  %49 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !120
  %51 = icmp eq ptr %50, null
  %52 = load ptr, ptr %0, align 8, !tbaa !105
  %53 = icmp ne ptr %52, null
  %54 = xor i1 %51, %53
  br i1 %54, label %57, label %55, !prof !269

55:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #20
  %56 = load ptr, ptr %49, align 8, !tbaa !120
  br label %57

57:                                               ; preds = %47, %55
  %58 = phi ptr [ %50, %47 ], [ %56, %55 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60, !prof !270

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !123
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %58, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !121
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %67, label %66, !prof !271

66:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 966, ptr noundef nonnull @.str.1) #20
  br label %67

67:                                               ; preds = %66, %60, %57, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_and_compl(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #1 !prof !272 {
  %4 = load ptr, ptr %0, align 8, !tbaa !105
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = load ptr, ptr %2, align 8, !tbaa !105
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !273

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1015, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %15, label %13, !prof !274

13:                                               ; preds = %11
  %14 = icmp eq ptr %5, null
  br i1 %14, label %127, label %19, !prof !275

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !105
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
  br i1 %26, label %40, label %27, !prof !276

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !121
  br label %30

30:                                               ; preds = %27, %35
  %31 = phi ptr [ %24, %27 ], [ %36, %35 ]
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !121
  %34 = icmp ult i32 %33, %29
  br i1 %34, label %35, label %38, !prof !277

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !119
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %30, !prof !278, !llvm.loop !279

38:                                               ; preds = %30
  %39 = icmp ugt i32 %33, %29
  br i1 %39, label %40, label %45, !prof !280

40:                                               ; preds = %35, %19, %38
  %41 = phi ptr [ %31, %38 ], [ null, %19 ], [ null, %35 ]
  %42 = tail call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef nonnull %0, ptr noundef %20, ptr noundef %23, ptr noundef nonnull %25, i8 noundef zeroext %21) #19, !range !281
  %43 = load ptr, ptr %22, align 8, !tbaa !125
  %44 = load ptr, ptr %43, align 8, !tbaa !125
  br label %119

45:                                               ; preds = %38
  %46 = icmp eq i8 %21, 0
  %47 = icmp ne ptr %20, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %72, !prof !282

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !121
  %52 = icmp eq i32 %51, %29
  br i1 %52, label %53, label %76, !prof !283

53:                                               ; preds = %49, %67
  %54 = phi i64 [ %70, %67 ], [ 1, %49 ]
  %55 = phi i64 [ %69, %67 ], [ 0, %49 ]
  %56 = phi i8 [ %68, %67 ], [ 0, %49 ]
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 3, i64 %54
  %58 = load i64, ptr %57, align 8, !tbaa !171
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 3, i64 %54
  %60 = load i64, ptr %59, align 8, !tbaa !171
  %61 = xor i64 %60, -1
  %62 = and i64 %58, %61
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 3, i64 %54
  %64 = load i64, ptr %63, align 8, !tbaa !171
  %65 = icmp eq i64 %64, %62
  br i1 %65, label %67, label %66, !prof !284

66:                                               ; preds = %53
  store i64 %62, ptr %63, align 8, !tbaa !171
  br label %67

67:                                               ; preds = %66, %53
  %68 = phi i8 [ 1, %66 ], [ %56, %53 ]
  %69 = or i64 %62, %55
  %70 = add nsw i64 %54, -1
  %71 = icmp eq i64 %54, 0
  br i1 %71, label %103, label %53, !prof !285, !llvm.loop !286

72:                                               ; preds = %45
  br i1 %47, label %73, label %79, !prof !287

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !121
  br label %76

76:                                               ; preds = %73, %49
  %77 = phi i32 [ %75, %73 ], [ %51, %49 ]
  %78 = icmp ugt i32 %77, %29
  br i1 %78, label %79, label %81, !prof !288

79:                                               ; preds = %76, %72
  %80 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %23, i32 noundef %29) #19
  br label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  store i32 %29, ptr %82, align 8, !tbaa !121
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
  %91 = load i64, ptr %90, align 8, !tbaa !171
  %92 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 3, i64 %89
  %93 = load i64, ptr %92, align 8, !tbaa !171
  %94 = xor i64 %93, -1
  %95 = and i64 %91, %94
  %96 = getelementptr inbounds %struct.bitmap_element_def, ptr %84, i64 0, i32 3, i64 %89
  store i64 %95, ptr %96, align 8, !tbaa !171
  %97 = or i64 %95, %88
  %98 = icmp eq i64 %89, 0
  br i1 %98, label %99, label %86, !prof !289, !llvm.loop !290

99:                                               ; preds = %86
  %100 = icmp eq i64 %97, 0
  br i1 %100, label %101, label %105, !prof !291

101:                                              ; preds = %99
  %102 = or i8 %85, %21
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %84) #19
  br label %108

103:                                              ; preds = %67
  %104 = icmp eq i64 %69, 0
  br i1 %104, label %113, label %105, !prof !292

105:                                              ; preds = %99, %103
  %106 = phi i8 [ %68, %103 ], [ 1, %99 ]
  %107 = load ptr, ptr %22, align 8, !tbaa !125
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi ptr [ %22, %101 ], [ %107, %105 ]
  %110 = phi i8 [ %102, %101 ], [ %106, %105 ]
  %111 = phi ptr [ %23, %101 ], [ %107, %105 ]
  %112 = load ptr, ptr %109, align 8, !tbaa !125
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i8 [ %68, %103 ], [ %110, %108 ]
  %115 = phi ptr [ %23, %103 ], [ %111, %108 ]
  %116 = phi ptr [ %22, %103 ], [ %109, %108 ]
  %117 = phi ptr [ %20, %103 ], [ %112, %108 ]
  %118 = load ptr, ptr %31, align 8, !tbaa !119
  br label %119

119:                                              ; preds = %113, %40
  %120 = phi ptr [ %41, %40 ], [ %118, %113 ]
  %121 = phi ptr [ %43, %40 ], [ %115, %113 ]
  %122 = phi ptr [ %43, %40 ], [ %116, %113 ]
  %123 = phi i8 [ %42, %40 ], [ %114, %113 ]
  %124 = phi ptr [ %44, %40 ], [ %117, %113 ]
  %125 = load ptr, ptr %25, align 8, !tbaa !119
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %19, !prof !293, !llvm.loop !294

127:                                              ; preds = %119, %13
  %128 = phi i8 [ 0, %13 ], [ %123, %119 ]
  %129 = phi ptr [ %4, %13 ], [ %124, %119 ]
  %130 = load ptr, ptr %0, align 8, !tbaa !105
  %131 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !120
  %132 = icmp eq ptr %129, null
  br i1 %132, label %136, label %133, !prof !295

133:                                              ; preds = %127
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %129) #19
  %134 = load ptr, ptr %131, align 8, !tbaa !120
  %135 = load ptr, ptr %0, align 8, !tbaa !105
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi ptr [ %135, %133 ], [ %130, %127 ]
  %138 = phi ptr [ %134, %133 ], [ %130, %127 ]
  %139 = phi i8 [ 1, %133 ], [ %128, %127 ]
  %140 = icmp eq ptr %138, null
  %141 = icmp ne ptr %137, null
  %142 = xor i1 %140, %141
  br i1 %142, label %145, label %143, !prof !296

143:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #20
  %144 = load ptr, ptr %131, align 8, !tbaa !120
  br label %145

145:                                              ; preds = %136, %143
  %146 = phi ptr [ %138, %136 ], [ %144, %143 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148, !prof !297

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.bitmap_element_def, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !121
  %151 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %150, ptr %151, align 8, !tbaa !123
  br label %152

152:                                              ; preds = %145, %148, %15
  %153 = phi i8 [ %18, %15 ], [ %139, %148 ], [ %139, %145 ]
  ret i8 %153
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_elt_copy(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !298 !PGOFuncName !299 {
  %6 = icmp eq i8 %4, 0
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %28, !prof !300

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !121
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !121
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %33, !prof !301

15:                                               ; preds = %9, %24
  %16 = phi i64 [ %26, %24 ], [ 1, %9 ]
  %17 = phi i8 [ %25, %24 ], [ 0, %9 ]
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %16
  %19 = load i64, ptr %18, align 8, !tbaa !171
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 3, i64 %16
  %21 = load i64, ptr %20, align 8, !tbaa !171
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %24, label %23, !prof !302

23:                                               ; preds = %15
  store i64 %19, ptr %20, align 8, !tbaa !171
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i8 [ 1, %23 ], [ %17, %15 ]
  %26 = add nsw i64 %16, -1
  %27 = icmp eq i64 %16, 0
  br i1 %27, label %40, label %15, !prof !303, !llvm.loop !304

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !121
  br i1 %7, label %33, label %31, !prof !305

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %2, i32 noundef %30) #19
  br label %36

33:                                               ; preds = %28, %9
  %34 = phi i32 [ %13, %9 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  store i32 %34, ptr %35, align 8, !tbaa !121
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
define dso_local zeroext i8 @bitmap_and_compl_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !306 {
  %3 = load ptr, ptr %0, align 8, !tbaa !105
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !307

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !105
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false, !prof !308
  br i1 %9, label %13, label %59, !prof !309

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
  %18 = load i32, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !121
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %24, !prof !310

22:                                               ; preds = %13
  %23 = load ptr, ptr %14, align 8, !tbaa !119
  br label %48

24:                                               ; preds = %13
  %25 = icmp ult i32 %20, %18
  br i1 %25, label %26, label %28, !prof !311

26:                                               ; preds = %24
  %27 = load ptr, ptr %16, align 8, !tbaa !119
  br label %48

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %32, %28 ], [ 2, %24 ]
  %30 = phi i64 [ %40, %28 ], [ 0, %24 ]
  %31 = phi i64 [ %39, %28 ], [ %15, %24 ]
  %32 = add nsw i64 %29, -1
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !171
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 %32
  %36 = load i64, ptr %35, align 8, !tbaa !171
  %37 = and i64 %36, %34
  %38 = xor i64 %37, %34
  store i64 %38, ptr %33, align 8, !tbaa !171
  %39 = or i64 %37, %31
  %40 = or i64 %38, %30
  %41 = icmp eq i64 %32, 0
  br i1 %41, label %42, label %28, !prof !312, !llvm.loop !313

42:                                               ; preds = %28
  %43 = load ptr, ptr %14, align 8, !tbaa !119
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %45, label %46, !prof !314

45:                                               ; preds = %42
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %14) #19
  br label %46

46:                                               ; preds = %45, %42
  %47 = load ptr, ptr %16, align 8, !tbaa !119
  br label %48

48:                                               ; preds = %26, %46, %22
  %49 = phi ptr [ %16, %22 ], [ %27, %26 ], [ %47, %46 ]
  %50 = phi i64 [ %15, %22 ], [ %15, %26 ], [ %39, %46 ]
  %51 = phi ptr [ %23, %22 ], [ %14, %26 ], [ %43, %46 ]
  %52 = icmp ne ptr %51, null
  %53 = icmp ne ptr %49, null
  %54 = select i1 %52, i1 %53, i1 false, !prof !308
  br i1 %54, label %13, label %55, !prof !315, !llvm.loop !316

55:                                               ; preds = %48
  %56 = load ptr, ptr %0, align 8, !tbaa !105
  %57 = icmp ne i64 %50, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %55, %5
  %60 = phi ptr [ %3, %5 ], [ %56, %55 ]
  %61 = phi i8 [ 0, %5 ], [ %58, %55 ]
  %62 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !120
  %64 = icmp eq ptr %63, null
  %65 = icmp ne ptr %60, null
  %66 = xor i1 %64, %65
  br i1 %66, label %69, label %67, !prof !317

67:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1165, ptr noundef nonnull @.str.1) #20
  %68 = load ptr, ptr %62, align 8, !tbaa !120
  br label %69

69:                                               ; preds = %59, %67
  %70 = phi ptr [ %63, %59 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72, !prof !318

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !123
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !121
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %79, label %78, !prof !319

78:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1166, ptr noundef nonnull @.str.1) #20
  br label %79

79:                                               ; preds = %78, %72, %69, %10, %12
  %80 = phi i8 [ 1, %12 ], [ 0, %10 ], [ %61, %69 ], [ %61, %72 ], [ %61, %78 ]
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_set_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !320 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %85, label %5, !prof !321

5:                                                ; preds = %3
  %6 = lshr i32 %1, 7
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 7
  %10 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15, !prof !322

12:                                               ; preds = %5
  %13 = tail call fastcc ptr @bitmap_element_allocate(ptr noundef %0) #19
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  store i32 %6, ptr %14, align 8, !tbaa !121
  tail call fastcc void @bitmap_element_link(ptr noundef %0, ptr noundef %13) #19
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %10, %5 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !121
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %21, label %20, !prof !323

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %15, %20
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp ugt i32 %6, %9
  br i1 %24, label %76, label %25, !prof !324

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
  br i1 %39, label %44, label %40, !prof !325

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %34, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !121
  %43 = icmp eq i32 %42, %36
  br i1 %43, label %46, label %44, !prof !326

44:                                               ; preds = %40, %33
  %45 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %35, i32 noundef %36) #19
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi ptr [ %45, %44 ], [ %34, %40 ]
  %48 = icmp ugt i32 %37, %1
  %49 = sub i32 %1, %37
  %50 = lshr i32 %49, 6
  %51 = select i1 %48, i32 0, i32 %50, !prof !327
  %52 = select i1 %48, i64 -1, i64 %28, !prof !327
  %53 = icmp ugt i32 %38, %7
  %54 = sub i32 %7, %37
  %55 = lshr i32 %54, 6
  %56 = select i1 %53, i32 %55, i32 1, !prof !328
  %57 = select i1 %53, i64 %32, i64 -1, !prof !328
  %58 = icmp eq i32 %51, %56
  br i1 %58, label %59, label %61, !prof !329

59:                                               ; preds = %46
  %60 = and i64 %57, %52
  br label %66

61:                                               ; preds = %46
  %62 = zext nneg i32 %51 to i64
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !171
  %65 = or i64 %64, %52
  store i64 %65, ptr %63, align 8, !tbaa !171
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %56, %61 ], [ %51, %59 ]
  %68 = phi i64 [ %57, %61 ], [ %60, %59 ]
  %69 = zext nneg i32 %67 to i64
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !171
  %72 = or i64 %71, %68
  store i64 %72, ptr %70, align 8, !tbaa !171
  %73 = load ptr, ptr %47, align 8, !tbaa !119
  %74 = add nuw nsw i32 %36, 1
  %75 = icmp eq i32 %36, %9
  br i1 %75, label %76, label %33, !prof !330, !llvm.loop !331

76:                                               ; preds = %66, %21
  %77 = phi ptr [ %23, %21 ], [ %47, %66 ]
  %78 = phi ptr [ %16, %21 ], [ %73, %66 ]
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %77, ptr %78, !prof !332
  %81 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !120
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %80, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !121
  %84 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %83, ptr %84, align 8, !tbaa !123
  br label %85

85:                                               ; preds = %3, %76
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_clear_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !333 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %84, label %5, !prof !334

5:                                                ; preds = %3
  %6 = lshr i32 %1, 7
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 7
  %10 = tail call fastcc ptr @bitmap_find_bit(ptr noundef %0, i32 noundef %1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23, !prof !335

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = icmp eq ptr %14, null
  br i1 %15, label %84, label %16, !prof !336

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = icmp ult i32 %18, %6
  br i1 %19, label %20, label %23, !prof !337

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !119
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23, !prof !338

23:                                               ; preds = %16, %20, %5
  %24 = phi ptr [ %10, %5 ], [ %21, %20 ], [ %14, %16 ]
  br label %25

25:                                               ; preds = %23, %79
  %26 = phi ptr [ %24, %23 ], [ %31, %79 ]
  %27 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !121
  %29 = icmp ugt i32 %28, %9
  br i1 %29, label %81, label %30, !prof !339

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !119
  %32 = shl nuw i32 %28, 7
  %33 = add i32 %32, 128
  %34 = icmp ult i32 %32, %1
  %35 = icmp ugt i32 %33, %7
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %78, !prof !340

37:                                               ; preds = %30
  %38 = and i32 %1, 63
  %39 = zext nneg i32 %38 to i64
  %40 = shl nsw i64 -1, %39
  %41 = and i32 %7, 63
  %42 = zext nneg i32 %41 to i64
  %43 = shl nsw i64 -1, %42
  %44 = xor i64 %43, -1
  %45 = icmp ugt i32 %32, %1
  %46 = sub i32 %1, %32
  %47 = lshr i32 %46, 6
  %48 = select i1 %45, i32 0, i32 %47, !prof !341
  %49 = select i1 %45, i64 -1, i64 %40, !prof !341
  %50 = sub i32 %7, %32
  %51 = lshr i32 %50, 6
  %52 = select i1 %35, i32 %51, i32 1, !prof !342
  %53 = select i1 %35, i64 %44, i64 -1, !prof !342
  %54 = icmp eq i32 %48, %52
  br i1 %54, label %55, label %57, !prof !343

55:                                               ; preds = %37
  %56 = and i64 %53, %49
  br label %63

57:                                               ; preds = %37
  %58 = xor i64 %49, -1
  %59 = zext nneg i32 %48 to i64
  %60 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !171
  %62 = and i64 %61, %58
  store i64 %62, ptr %60, align 8, !tbaa !171
  br label %63

63:                                               ; preds = %57, %55
  %64 = phi i64 [ %53, %57 ], [ %56, %55 ]
  %65 = phi i32 [ %52, %57 ], [ %48, %55 ]
  %66 = xor i64 %64, -1
  %67 = zext nneg i32 %65 to i64
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 3, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !171
  %70 = and i64 %69, %66
  store i64 %70, ptr %68, align 8, !tbaa !171
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 3, i64 0
  %72 = load i64, ptr %71, align 8, !tbaa !171
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79, !prof !344

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 3, i64 1
  %76 = load i64, ptr %75, align 8, !tbaa !171
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79, !prof !344

78:                                               ; preds = %74, %30
  tail call fastcc void @bitmap_element_free(ptr noundef %0, ptr noundef nonnull %26) #19
  br label %79

79:                                               ; preds = %78, %63, %74
  %80 = icmp eq ptr %31, null
  br i1 %80, label %84, label %25, !prof !345, !llvm.loop !346

81:                                               ; preds = %25
  %82 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %26, ptr %82, align 8, !tbaa !120
  %83 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %28, ptr %83, align 8, !tbaa !123
  br label %84

84:                                               ; preds = %79, %81, %12, %20, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_compl_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !226 {
  %3 = load ptr, ptr %0, align 8, !tbaa !105
  %4 = load ptr, ptr %1, align 8, !tbaa !105
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1406, ptr noundef nonnull @.str.1) #20
  %7 = load ptr, ptr %0, align 8, !tbaa !105
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %3, %2 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %99

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !105
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = icmp ne ptr %3, null
  %17 = icmp ne ptr %4, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !120
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
  %33 = load i32, ptr %32, align 8, !tbaa !121
  br label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !121
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !121
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %24
  %41 = load ptr, ptr %27, align 8, !tbaa !119
  %42 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !116
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
  %51 = load ptr, ptr %28, align 8, !tbaa !119
  br label %71

52:                                               ; preds = %44, %52
  %53 = phi i64 [ %55, %52 ], [ 2, %44 ]
  %54 = phi i64 [ %62, %52 ], [ 0, %44 ]
  %55 = add nsw i64 %53, -1
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !171
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %55
  %59 = load i64, ptr %58, align 8, !tbaa !171
  %60 = xor i64 %57, -1
  %61 = and i64 %59, %60
  store i64 %61, ptr %56, align 8, !tbaa !171
  %62 = or i64 %61, %54
  %63 = icmp eq i64 %55, 0
  br i1 %63, label %64, label %52, !llvm.loop !347

64:                                               ; preds = %52
  %65 = load ptr, ptr %27, align 8, !tbaa !119
  %66 = icmp eq i64 %62, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call fastcc void @bitmap_element_free(ptr noundef nonnull %0, ptr noundef nonnull %27) #19
  br label %68

68:                                               ; preds = %64, %67
  %69 = phi ptr [ %29, %67 ], [ %27, %64 ]
  %70 = load ptr, ptr %28, align 8, !tbaa !119
  br label %71

71:                                               ; preds = %46, %68, %40
  %72 = phi ptr [ %43, %40 ], [ %48, %46 ], [ %69, %68 ]
  %73 = phi ptr [ %28, %40 ], [ %51, %46 ], [ %70, %68 ]
  %74 = phi ptr [ %41, %40 ], [ %27, %46 ], [ %65, %68 ]
  %75 = icmp ne ptr %74, null
  %76 = icmp ne ptr %73, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %24, label %78, !llvm.loop !348

78:                                               ; preds = %71
  %79 = load ptr, ptr %0, align 8, !tbaa !105
  %80 = icmp ne ptr %79, null
  %81 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !120
  %83 = icmp eq ptr %82, null
  %84 = xor i1 %83, %80
  br i1 %84, label %88, label %85

85:                                               ; preds = %19, %78
  %86 = phi ptr [ %20, %19 ], [ %81, %78 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1460, ptr noundef nonnull @.str.1) #20
  %87 = load ptr, ptr %86, align 8, !tbaa !120
  br label %88

88:                                               ; preds = %78, %85
  %89 = phi ptr [ %82, %78 ], [ %87, %85 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %19, %88
  %92 = phi ptr [ %89, %88 ], [ %21, %19 ]
  %93 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !123
  %95 = getelementptr inbounds %struct.bitmap_element_def, ptr %92, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !121
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1461, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %98, %91, %88, %23, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #1 !prof !349 {
  %4 = load ptr, ptr %0, align 8, !tbaa !105
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = load ptr, ptr %2, align 8, !tbaa !105
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !350

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1537, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp ne ptr %5, null
  %13 = icmp ne ptr %6, null
  %14 = select i1 %12, i1 true, i1 %13, !prof !351
  br i1 %14, label %15, label %59, !prof !352

15:                                               ; preds = %11, %51
  %16 = phi i1 [ %57, %51 ], [ %13, %11 ]
  %17 = phi i1 [ %56, %51 ], [ %12, %11 ]
  %18 = phi i8 [ %24, %51 ], [ 0, %11 ]
  %19 = phi ptr [ %54, %51 ], [ %0, %11 ]
  %20 = phi ptr [ %54, %51 ], [ null, %11 ]
  %21 = phi ptr [ %53, %51 ], [ %6, %11 ]
  %22 = phi ptr [ %52, %51 ], [ %5, %11 ]
  %23 = phi ptr [ %55, %51 ], [ %4, %11 ]
  %24 = tail call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %20, ptr noundef %22, ptr noundef %21, i8 noundef zeroext %18) #19, !range !281
  %25 = select i1 %17, i1 %16, i1 false
  br i1 %25, label %26, label %35, !prof !353

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !121
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !121
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %42, !prof !354

32:                                               ; preds = %26
  %33 = load ptr, ptr %22, align 8, !tbaa !119
  %34 = load ptr, ptr %21, align 8, !tbaa !119
  br label %51

35:                                               ; preds = %15
  br i1 %17, label %36, label %48, !prof !355

36:                                               ; preds = %35
  br i1 %16, label %37, label %46, !prof !356

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !121
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !121
  br label %42

42:                                               ; preds = %37, %26
  %43 = phi i32 [ %41, %37 ], [ %30, %26 ]
  %44 = phi i32 [ %39, %37 ], [ %28, %26 ]
  %45 = icmp ugt i32 %44, %43
  br i1 %45, label %49, label %46, !prof !357

46:                                               ; preds = %42, %36
  %47 = load ptr, ptr %22, align 8, !tbaa !119
  br label %51

48:                                               ; preds = %35
  br i1 %16, label %49, label %51, !prof !358

49:                                               ; preds = %42, %48
  %50 = load ptr, ptr %21, align 8, !tbaa !119
  br label %51

51:                                               ; preds = %46, %49, %48, %32
  %52 = phi ptr [ %33, %32 ], [ %47, %46 ], [ %22, %49 ], [ null, %48 ]
  %53 = phi ptr [ %34, %32 ], [ %21, %46 ], [ %50, %49 ], [ null, %48 ]
  %54 = load ptr, ptr %19, align 8, !tbaa !125
  %55 = load ptr, ptr %54, align 8, !tbaa !125
  %56 = icmp ne ptr %52, null
  %57 = icmp ne ptr %53, null
  %58 = select i1 %56, i1 true, i1 %57, !prof !351
  br i1 %58, label %15, label %59, !prof !359, !llvm.loop !360

59:                                               ; preds = %51, %11
  %60 = phi ptr [ %4, %11 ], [ %55, %51 ]
  %61 = phi i8 [ 0, %11 ], [ %24, %51 ]
  %62 = icmp eq ptr %60, null
  br i1 %62, label %64, label %63, !prof !361

63:                                               ; preds = %59
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %60) #19
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8 [ 1, %63 ], [ %61, %59 ]
  %66 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !120
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr %0, align 8, !tbaa !105
  %70 = icmp ne ptr %69, null
  %71 = xor i1 %68, %70
  br i1 %71, label %74, label %72, !prof !361

72:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @.str.1) #20
  %73 = load ptr, ptr %66, align 8, !tbaa !120
  br label %74

74:                                               ; preds = %64, %72
  %75 = phi ptr [ %67, %64 ], [ %73, %72 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77, !prof !362

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bitmap_element_def, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !121
  %80 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %79, ptr %80, align 8, !tbaa !123
  br label %81

81:                                               ; preds = %77, %74
  ret i8 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_elt_ior(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #1 !prof !363 !PGOFuncName !364 {
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %4, null
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10, !prof !365

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #20
  br label %74

11:                                               ; preds = %6
  %12 = and i1 %7, %8
  br i1 %12, label %13, label %60, !prof !366

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !121
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !121
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %67, !prof !367

19:                                               ; preds = %13
  %20 = icmp eq i8 %5, 0
  %21 = icmp ne ptr %1, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %43, !prof !368

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !121
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %46, !prof !369

27:                                               ; preds = %23, %39
  %28 = phi i64 [ %41, %39 ], [ 1, %23 ]
  %29 = phi i8 [ %40, %39 ], [ 0, %23 ]
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %28
  %31 = load i64, ptr %30, align 8, !tbaa !171
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %28
  %33 = load i64, ptr %32, align 8, !tbaa !171
  %34 = or i64 %33, %31
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 3, i64 %28
  %36 = load i64, ptr %35, align 8, !tbaa !171
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %39, label %38, !prof !370

38:                                               ; preds = %27
  store i64 %34, ptr %35, align 8, !tbaa !171
  br label %39

39:                                               ; preds = %38, %27
  %40 = phi i8 [ 1, %38 ], [ %29, %27 ]
  %41 = add nsw i64 %28, -1
  %42 = icmp eq i64 %28, 0
  br i1 %42, label %78, label %27, !prof !371, !llvm.loop !372

43:                                               ; preds = %19
  br i1 %21, label %46, label %44, !prof !373

44:                                               ; preds = %43
  %45 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %2, i32 noundef %15) #19
  br label %48

46:                                               ; preds = %23, %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 2
  store i32 %15, ptr %47, align 8, !tbaa !121
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %1, %46 ], [ %45, %44 ]
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 2, %48 ], [ %52, %50 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !171
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %52
  %56 = load i64, ptr %55, align 8, !tbaa !171
  %57 = or i64 %56, %54
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 %52
  store i64 %57, ptr %58, align 8, !tbaa !171
  %59 = icmp eq i64 %52, 0
  br i1 %59, label %78, label %50, !prof !374, !llvm.loop !375

60:                                               ; preds = %11
  br i1 %8, label %61, label %72, !prof !376

61:                                               ; preds = %60
  br i1 %7, label %62, label %71, !prof !377

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !121
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !121
  br label %67

67:                                               ; preds = %62, %13
  %68 = phi i32 [ %66, %62 ], [ %17, %13 ]
  %69 = phi i32 [ %64, %62 ], [ %15, %13 ]
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %75, label %71, !prof !378

71:                                               ; preds = %67, %61
  br label %75

72:                                               ; preds = %60
  %73 = icmp eq ptr %3, null
  br i1 %73, label %74, label %75, !prof !379

74:                                               ; preds = %10, %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.1) #20
  br label %75

75:                                               ; preds = %67, %71, %72, %74
  %76 = phi ptr [ %3, %72 ], [ null, %74 ], [ %3, %67 ], [ %4, %71 ]
  %77 = tail call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %76, i8 noundef zeroext %5) #19, !range !281
  br label %78

78:                                               ; preds = %50, %39, %75
  %79 = phi i8 [ %77, %75 ], [ %40, %39 ], [ 1, %50 ]
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !380 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %51, label %4, !prof !381

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7, !prof !382

7:                                                ; preds = %4, %29
  %8 = phi i8 [ %31, %29 ], [ 0, %4 ]
  %9 = phi ptr [ %32, %29 ], [ %0, %4 ]
  %10 = phi ptr [ %32, %29 ], [ null, %4 ]
  %11 = phi ptr [ %30, %29 ], [ %5, %4 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !125
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !383

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !121
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22, !prof !384

20:                                               ; preds = %14, %7
  %21 = tail call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef %0, ptr noundef %12, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %11, i8 noundef zeroext %8) #19, !range !281
  br label %26

22:                                               ; preds = %14
  %23 = icmp ugt i32 %16, %18
  br i1 %23, label %24, label %29, !prof !385

24:                                               ; preds = %22
  %25 = tail call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef %0, ptr noundef null, ptr noundef %10, ptr noundef nonnull %11, i8 noundef zeroext %8) #19, !range !281
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi i8 [ %25, %24 ], [ %21, %20 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !119
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %11, %22 ], [ %28, %26 ]
  %31 = phi i8 [ %8, %22 ], [ %27, %26 ]
  %32 = load ptr, ptr %9, align 8, !tbaa !125
  %33 = icmp eq ptr %30, null
  br i1 %33, label %34, label %7, !prof !386, !llvm.loop !387

34:                                               ; preds = %29, %4
  %35 = phi i8 [ 0, %4 ], [ %31, %29 ]
  %36 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  %38 = icmp eq ptr %37, null
  %39 = load ptr, ptr %0, align 8, !tbaa !105
  %40 = icmp ne ptr %39, null
  %41 = xor i1 %38, %40
  br i1 %41, label %44, label %42, !prof !388

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1605, ptr noundef nonnull @.str.1) #20
  %43 = load ptr, ptr %36, align 8, !tbaa !120
  br label %44

44:                                               ; preds = %34, %42
  %45 = phi ptr [ %37, %34 ], [ %43, %42 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47, !prof !389

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !121
  %50 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %49, ptr %50, align 8, !tbaa !123
  br label %51

51:                                               ; preds = %44, %47, %2
  %52 = phi i8 [ 0, %2 ], [ %35, %47 ], [ %35, %44 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_xor(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #1 !prof !226 {
  %4 = load ptr, ptr %0, align 8, !tbaa !105
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = load ptr, ptr %2, align 8, !tbaa !105
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
  %28 = load i32, ptr %27, align 8, !tbaa !121
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !121
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
  store i32 %28, ptr %37, align 8, !tbaa !121
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %21, %36 ], [ %35, %34 ]
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 2, %38 ], [ %43, %40 ]
  %42 = phi i64 [ 0, %38 ], [ %49, %40 ]
  %43 = add nsw i64 %41, -1
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !171
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 3, i64 %43
  %47 = load i64, ptr %46, align 8, !tbaa !171
  %48 = xor i64 %47, %45
  %49 = or i64 %48, %42
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %39, i64 0, i32 3, i64 %43
  store i64 %48, ptr %50, align 8, !tbaa !171
  %51 = icmp eq i64 %43, 0
  br i1 %51, label %52, label %40, !llvm.loop !390

52:                                               ; preds = %40
  %53 = load ptr, ptr %24, align 8, !tbaa !119
  %54 = load ptr, ptr %23, align 8, !tbaa !119
  %55 = icmp eq i64 %49, 0
  br i1 %55, label %91, label %86

56:                                               ; preds = %18
  br i1 %19, label %57, label %67

57:                                               ; preds = %56
  br i1 %20, label %58, label %69

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !121
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !121
  br label %63

63:                                               ; preds = %58, %26
  %64 = phi i32 [ %62, %58 ], [ %30, %26 ]
  %65 = phi i32 [ %60, %58 ], [ %28, %26 ]
  %66 = icmp ult i32 %65, %64
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %56
  %68 = load ptr, ptr %24, align 8, !tbaa !119
  br label %71

69:                                               ; preds = %63, %57
  %70 = load ptr, ptr %23, align 8, !tbaa !119
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %24, %69 ]
  %73 = phi ptr [ %23, %67 ], [ %70, %69 ]
  %74 = phi ptr [ %24, %67 ], [ %23, %69 ]
  %75 = icmp eq ptr %21, null
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !121
  br i1 %75, label %78, label %80

78:                                               ; preds = %71
  %79 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %22, i32 noundef %77) #19
  br label %82

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  store i32 %77, ptr %81, align 8, !tbaa !121
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
  %90 = load ptr, ptr %87, align 8, !tbaa !119
  br label %91

91:                                               ; preds = %86, %52
  %92 = phi ptr [ %53, %52 ], [ %88, %86 ]
  %93 = phi ptr [ %54, %52 ], [ %89, %86 ]
  %94 = phi ptr [ %22, %52 ], [ %87, %86 ]
  %95 = phi ptr [ %39, %52 ], [ %90, %86 ]
  %96 = icmp ne ptr %92, null
  %97 = icmp ne ptr %93, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %18, label %99, !llvm.loop !391

99:                                               ; preds = %91, %13
  %100 = phi ptr [ %4, %13 ], [ %95, %91 ]
  %101 = load ptr, ptr %0, align 8, !tbaa !105
  %102 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !120
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %100) #19
  %103 = load ptr, ptr %102, align 8, !tbaa !120
  %104 = icmp eq ptr %103, null
  %105 = load ptr, ptr %0, align 8, !tbaa !105
  %106 = icmp ne ptr %105, null
  %107 = xor i1 %104, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1683, ptr noundef nonnull @.str.1) #20
  %109 = load ptr, ptr %102, align 8, !tbaa !120
  br label %110

110:                                              ; preds = %99, %108
  %111 = phi ptr [ %103, %99 ], [ %109, %108 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %111, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !121
  %116 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !123
  br label %117

117:                                              ; preds = %110, %113, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bitmap_xor_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !226 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !105
  %6 = load ptr, ptr %0, align 8, !tbaa !105
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
  %15 = load i32, ptr %14, align 8, !tbaa !121
  br i1 %13, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !121
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %9, %16
  %21 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %12, i32 noundef %15) #19
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %24 = load ptr, ptr %11, align 8, !tbaa !119
  br label %43

25:                                               ; preds = %16
  %26 = icmp ult i32 %18, %15
  %27 = load ptr, ptr %10, align 8, !tbaa !119
  br i1 %26, label %43, label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %31, %28 ], [ 2, %25 ]
  %30 = phi i64 [ %37, %28 ], [ 0, %25 ]
  %31 = add nsw i64 %29, -1
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !171
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %31
  %35 = load i64, ptr %34, align 8, !tbaa !171
  %36 = xor i64 %35, %33
  %37 = or i64 %36, %30
  store i64 %36, ptr %32, align 8, !tbaa !171
  %38 = icmp eq i64 %31, 0
  br i1 %38, label %39, label %28, !llvm.loop !392

39:                                               ; preds = %28
  %40 = load ptr, ptr %11, align 8, !tbaa !119
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
  br i1 %47, label %48, label %9, !llvm.loop !393

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 8, !tbaa !105
  br label %50

50:                                               ; preds = %48, %4
  %51 = phi ptr [ %49, %48 ], [ %6, %4 ]
  %52 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !120
  %54 = icmp eq ptr %53, null
  %55 = icmp ne ptr %51, null
  %56 = xor i1 %54, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1740, ptr noundef nonnull @.str.1) #20
  %58 = load ptr, ptr %52, align 8, !tbaa !120
  br label %59

59:                                               ; preds = %50, %57
  %60 = phi ptr [ %53, %50 ], [ %58, %57 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !121
  %65 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %64, ptr %65, align 8, !tbaa !123
  br label %66

66:                                               ; preds = %59, %62, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !394 {
  %3 = load ptr, ptr %1, align 8, !tbaa !125
  %4 = load ptr, ptr %0, align 8, !tbaa !125
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false, !prof !395
  br i1 %7, label %8, label %34, !prof !396

8:                                                ; preds = %2, %28
  %9 = phi ptr [ %30, %28 ], [ %4, %2 ]
  %10 = phi ptr [ %29, %28 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !121
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %40, !prof !397

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 1
  %18 = load i64, ptr %17, align 8, !tbaa !171
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !171
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %40, !prof !398, !llvm.loop !399

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 0
  %24 = load i64, ptr %23, align 8, !tbaa !171
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 0
  %26 = load i64, ptr %25, align 8, !tbaa !171
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %40, !prof !398, !llvm.loop !399

28:                                               ; preds = %22
  %29 = load ptr, ptr %10, align 8, !tbaa !125
  %30 = load ptr, ptr %9, align 8, !tbaa !125
  %31 = icmp ne ptr %30, null
  %32 = icmp ne ptr %29, null
  %33 = select i1 %31, i1 %32, i1 false, !prof !395
  br i1 %33, label %8, label %34, !prof !400, !llvm.loop !401

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
define dso_local noundef zeroext i8 @bitmap_intersect_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !402 {
  %3 = load ptr, ptr %0, align 8, !tbaa !105
  %4 = load ptr, ptr %1, align 8, !tbaa !105
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false, !prof !403
  br i1 %7, label %8, label %43, !prof !404

8:                                                ; preds = %2, %37
  %9 = phi ptr [ %39, %37 ], [ %4, %2 ]
  %10 = phi ptr [ %38, %37 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !121
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %18, !prof !405

16:                                               ; preds = %8
  %17 = load ptr, ptr %10, align 8, !tbaa !119
  br label %37

18:                                               ; preds = %8
  %19 = icmp ult i32 %14, %12
  br i1 %19, label %20, label %22, !prof !406

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !119
  br label %37

22:                                               ; preds = %18, %25
  %23 = phi i64 [ %26, %25 ], [ 2, %18 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !407

25:                                               ; preds = %22
  %26 = add nsw i64 %23, -1
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !171
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 %27
  %31 = load i64, ptr %30, align 8, !tbaa !171
  %32 = and i64 %31, %29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %22, label %43, !prof !408, !llvm.loop !409

34:                                               ; preds = %22
  %35 = load ptr, ptr %10, align 8, !tbaa !119
  %36 = load ptr, ptr %9, align 8, !tbaa !119
  br label %37

37:                                               ; preds = %20, %34, %16
  %38 = phi ptr [ %17, %16 ], [ %10, %20 ], [ %35, %34 ]
  %39 = phi ptr [ %9, %16 ], [ %21, %20 ], [ %36, %34 ]
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false, !prof !403
  br i1 %42, label %8, label %43, !prof !410, !llvm.loop !411

43:                                               ; preds = %37, %25, %2
  %44 = phi i8 [ 0, %2 ], [ 1, %25 ], [ 0, %37 ]
  ret i8 %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_intersect_compl_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !226 {
  %3 = load ptr, ptr %0, align 8, !tbaa !105
  %4 = load ptr, ptr %1, align 8, !tbaa !125
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %39

8:                                                ; preds = %2, %33
  %9 = phi ptr [ %35, %33 ], [ %4, %2 ]
  %10 = phi ptr [ %34, %33 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !121
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
  %25 = load i64, ptr %24, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 %23
  %27 = load i64, ptr %26, align 8, !tbaa !171
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %18, label %42, !llvm.loop !412

31:                                               ; preds = %18
  %32 = load ptr, ptr %10, align 8, !tbaa !119
  br label %33

33:                                               ; preds = %16, %31
  %34 = phi ptr [ %32, %31 ], [ %10, %16 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !125
  %36 = icmp ne ptr %34, null
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %8, label %39, !llvm.loop !413

39:                                               ; preds = %33, %2
  %40 = phi i1 [ %5, %2 ], [ %36, %33 ]
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %8, %21, %39
  %43 = phi i8 [ %41, %39 ], [ 1, %21 ], [ 1, %8 ]
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 !prof !414 {
  %5 = alloca %struct.bitmap_element_def, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !105
  %7 = load ptr, ptr %1, align 8, !tbaa !105
  %8 = load ptr, ptr %2, align 8, !tbaa !105
  %9 = load ptr, ptr %3, align 8, !tbaa !105
  %10 = icmp eq ptr %0, %1
  %11 = icmp eq ptr %0, %2
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %0, %3
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %16, !prof !415

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1839, ptr noundef nonnull @.str.1) #20
  br label %16

16:                                               ; preds = %4, %15
  %17 = icmp eq ptr %2, %3
  br i1 %17, label %21, label %18, !prof !416

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8, !tbaa !105
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25, !prof !417

21:                                               ; preds = %18, %16
  %22 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !281
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %190, !prof !418

24:                                               ; preds = %21
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %190

25:                                               ; preds = %18
  %26 = load ptr, ptr %3, align 8, !tbaa !105
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30, !prof !419

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @bitmap_ior(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #19, !range !281
  br label %190

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8, !tbaa !105
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !420

33:                                               ; preds = %30
  %34 = icmp ne ptr %7, null
  %35 = icmp ne ptr %8, null
  %36 = select i1 %34, i1 true, i1 %35, !prof !421
  br i1 %36, label %37, label %168, !prof !422

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  br label %41

39:                                               ; preds = %30
  %40 = tail call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !281
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
  br i1 %52, label %53, label %64, !prof !423

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !121
  br label %56

56:                                               ; preds = %53, %61
  %57 = phi ptr [ %62, %61 ], [ %46, %53 ]
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !121
  %60 = icmp ult i32 %59, %55
  br i1 %60, label %61, label %64, !prof !424

61:                                               ; preds = %56
  %62 = load ptr, ptr %57, align 8, !tbaa !119
  %63 = icmp eq ptr %62, null
  br i1 %63, label %104, label %56, !prof !425

64:                                               ; preds = %56, %41
  %65 = phi ptr [ %46, %41 ], [ %57, %56 ]
  %66 = icmp ne ptr %65, null
  %67 = select i1 %42, i1 %66, i1 false
  br i1 %67, label %68, label %104, !prof !426

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !121
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !121
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %104, !prof !427

74:                                               ; preds = %68
  br i1 %43, label %75, label %79, !prof !428

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !121
  %78 = icmp ult i32 %77, %70
  br i1 %78, label %108, label %79, !prof !429

79:                                               ; preds = %75, %74
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  store i32 %70, ptr %38, align 8, !tbaa !121
  br label %80

80:                                               ; preds = %79, %80
  %81 = phi i64 [ 2, %79 ], [ %83, %80 ]
  %82 = phi i64 [ 0, %79 ], [ %90, %80 ]
  %83 = add nsw i64 %81, -1
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !171
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 3, i64 %83
  %87 = load i64, ptr %86, align 8, !tbaa !171
  %88 = xor i64 %87, -1
  %89 = and i64 %85, %88
  %90 = or i64 %89, %82
  %91 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 %83
  store i64 %89, ptr %91, align 8, !tbaa !171
  %92 = icmp eq i64 %83, 0
  br i1 %92, label %93, label %80, !prof !430, !llvm.loop !431

93:                                               ; preds = %80
  %94 = icmp eq i64 %90, 0
  br i1 %94, label %147, label %95, !prof !432

95:                                               ; preds = %93
  %96 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %45, ptr noundef %48, ptr noundef nonnull %5, i8 noundef zeroext %50) #19, !range !281
  br i1 %43, label %97, label %143, !prof !433

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !121
  %100 = load i32, ptr %71, align 8, !tbaa !121
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %143, !prof !434

102:                                              ; preds = %97
  %103 = load ptr, ptr %48, align 8, !tbaa !119
  br label %143

104:                                              ; preds = %61, %68, %64
  %105 = phi ptr [ %65, %68 ], [ %65, %64 ], [ null, %61 ]
  %106 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %45, ptr noundef %48, ptr noundef %47, i8 noundef zeroext %50) #19, !range !281
  %107 = and i1 %43, %42
  br i1 %107, label %110, label %121, !prof !435

108:                                              ; preds = %75
  %109 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %45, ptr noundef nonnull %48, ptr noundef nonnull %47, i8 noundef zeroext %50) #19, !range !281
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i8 [ %109, %108 ], [ %106, %104 ]
  %112 = phi ptr [ %65, %108 ], [ %105, %104 ]
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !121
  %115 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !121
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %128, !prof !436

118:                                              ; preds = %110
  %119 = load ptr, ptr %48, align 8, !tbaa !119
  %120 = load ptr, ptr %47, align 8, !tbaa !119
  br label %150

121:                                              ; preds = %104
  br i1 %43, label %122, label %138, !prof !437

122:                                              ; preds = %121
  br i1 %42, label %123, label %134, !prof !356

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !121
  %126 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !121
  br label %128

128:                                              ; preds = %123, %110
  %129 = phi i32 [ %127, %123 ], [ %116, %110 ]
  %130 = phi i32 [ %125, %123 ], [ %114, %110 ]
  %131 = phi ptr [ %105, %123 ], [ %112, %110 ]
  %132 = phi i8 [ %106, %123 ], [ %111, %110 ]
  %133 = icmp ugt i32 %130, %129
  br i1 %133, label %139, label %134, !prof !438

134:                                              ; preds = %128, %122
  %135 = phi ptr [ %131, %128 ], [ %105, %122 ]
  %136 = phi i8 [ %132, %128 ], [ %106, %122 ]
  %137 = load ptr, ptr %48, align 8, !tbaa !119
  br label %150

138:                                              ; preds = %121
  br i1 %42, label %139, label %150, !prof !439

139:                                              ; preds = %128, %138
  %140 = phi i8 [ %106, %138 ], [ %132, %128 ]
  %141 = phi ptr [ %105, %138 ], [ %131, %128 ]
  %142 = load ptr, ptr %47, align 8, !tbaa !119
  br label %150

143:                                              ; preds = %102, %97, %95
  %144 = phi ptr [ null, %95 ], [ %48, %97 ], [ %103, %102 ]
  %145 = load ptr, ptr %47, align 8, !tbaa !119
  %146 = load ptr, ptr %65, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  br label %150

147:                                              ; preds = %93
  %148 = load ptr, ptr %47, align 8, !tbaa !119
  %149 = load ptr, ptr %65, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  br label %157

150:                                              ; preds = %138, %139, %134, %118, %143
  %151 = phi ptr [ %146, %143 ], [ %105, %138 ], [ %141, %139 ], [ %135, %134 ], [ %112, %118 ]
  %152 = phi ptr [ %145, %143 ], [ null, %138 ], [ %142, %139 ], [ %47, %134 ], [ %120, %118 ]
  %153 = phi ptr [ %144, %143 ], [ null, %138 ], [ %48, %139 ], [ %137, %134 ], [ %119, %118 ]
  %154 = phi i8 [ %96, %143 ], [ %106, %138 ], [ %140, %139 ], [ %136, %134 ], [ %111, %118 ]
  %155 = load ptr, ptr %44, align 8, !tbaa !125
  %156 = load ptr, ptr %155, align 8, !tbaa !125
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
  %167 = select i1 %165, i1 true, i1 %166, !prof !421
  br i1 %167, label %41, label %168, !prof !440, !llvm.loop !441

168:                                              ; preds = %157, %33
  %169 = phi i8 [ 0, %33 ], [ %161, %157 ]
  %170 = phi ptr [ %6, %33 ], [ %162, %157 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172, !prof !442

172:                                              ; preds = %168
  call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %170) #19
  br label %173

173:                                              ; preds = %172, %168
  %174 = phi i8 [ 1, %172 ], [ %169, %168 ]
  %175 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !120
  %177 = icmp eq ptr %176, null
  %178 = load ptr, ptr %0, align 8, !tbaa !105
  %179 = icmp ne ptr %178, null
  %180 = xor i1 %177, %179
  br i1 %180, label %183, label %181, !prof !442

181:                                              ; preds = %173
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1922, ptr noundef nonnull @.str.1) #20
  %182 = load ptr, ptr %175, align 8, !tbaa !120
  br label %183

183:                                              ; preds = %173, %181
  %184 = phi ptr [ %176, %173 ], [ %182, %181 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186, !prof !443

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.bitmap_element_def, ptr %184, i64 0, i32 2
  %188 = load i32, ptr %187, align 8, !tbaa !121
  %189 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %188, ptr %189, align 8, !tbaa !123
  br label %190

190:                                              ; preds = %183, %186, %21, %24, %39, %28
  %191 = phi i8 [ %40, %39 ], [ %29, %28 ], [ 1, %24 ], [ 0, %21 ], [ %174, %186 ], [ %174, %183 ]
  ret i8 %191
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !226 {
  %4 = alloca %struct.bitmap_head_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %4, ptr noundef nonnull @bitmap_default_obstack) #19
  %5 = call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #19, !range !281
  %6 = call zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef nonnull %4) #19, !range !281
  call void @bitmap_clear(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bitmap_ior_and_into(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #1 !prof !444 {
  %4 = alloca %struct.bitmap_element_def, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !105
  %6 = load ptr, ptr %1, align 8, !tbaa !105
  %7 = load ptr, ptr %2, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %9, label %11, !prof !445

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !281
  br label %119

11:                                               ; preds = %3
  %12 = icmp eq ptr %6, null
  %13 = icmp eq ptr %7, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %119, label %15, !prof !446

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  store i32 -1, ptr %16, align 8, !tbaa !121
  br label %17

17:                                               ; preds = %15, %94
  %18 = phi i8 [ 0, %15 ], [ %98, %94 ]
  %19 = phi ptr [ %0, %15 ], [ %97, %94 ]
  %20 = phi ptr [ null, %15 ], [ %96, %94 ]
  %21 = phi ptr [ %7, %15 ], [ %67, %94 ]
  %22 = phi ptr [ %6, %15 ], [ %66, %94 ]
  %23 = phi ptr [ %5, %15 ], [ %95, %94 ]
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !121
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !121
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %49, label %29, !prof !447

29:                                               ; preds = %17, %41
  %30 = phi i32 [ %47, %41 ], [ %27, %17 ]
  %31 = phi i32 [ %45, %41 ], [ %25, %17 ]
  %32 = phi ptr [ %43, %41 ], [ %21, %17 ]
  %33 = phi ptr [ %42, %41 ], [ %22, %17 ]
  %34 = icmp ult i32 %31, %30
  br i1 %34, label %35, label %38, !prof !448

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 8, !tbaa !119
  %37 = icmp eq ptr %36, null
  br i1 %37, label %102, label %41, !prof !449

38:                                               ; preds = %29
  %39 = load ptr, ptr %32, align 8, !tbaa !119
  %40 = icmp eq ptr %39, null
  br i1 %40, label %102, label %41, !prof !450

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %36, %35 ], [ %33, %38 ]
  %43 = phi ptr [ %32, %35 ], [ %39, %38 ]
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %42, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !121
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !121
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %29, !prof !451, !llvm.loop !452

49:                                               ; preds = %41, %17
  %50 = phi ptr [ %22, %17 ], [ %42, %41 ]
  %51 = phi ptr [ %21, %17 ], [ %43, %41 ]
  %52 = phi i32 [ %25, %17 ], [ %45, %41 ]
  store i32 %52, ptr %16, align 8, !tbaa !121
  br label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 2, %49 ], [ %56, %53 ]
  %55 = phi i64 [ 0, %49 ], [ %63, %53 ]
  %56 = add nsw i64 %54, -1
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !171
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %51, i64 0, i32 3, i64 %56
  %60 = load i64, ptr %59, align 8, !tbaa !171
  %61 = and i64 %60, %58
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %56
  store i64 %61, ptr %62, align 8, !tbaa !171
  %63 = or i64 %61, %55
  %64 = icmp eq i64 %56, 0
  br i1 %64, label %65, label %53, !prof !453, !llvm.loop !454

65:                                               ; preds = %53
  %66 = load ptr, ptr %50, align 8, !tbaa !119
  %67 = load ptr, ptr %51, align 8, !tbaa !119
  %68 = icmp eq i64 %63, 0
  br i1 %68, label %94, label %69, !prof !455, !llvm.loop !456

69:                                               ; preds = %65, %87
  %70 = phi i32 [ %92, %87 ], [ %52, %65 ]
  %71 = phi ptr [ %91, %87 ], [ %23, %65 ]
  %72 = phi ptr [ %90, %87 ], [ %20, %65 ]
  %73 = phi ptr [ %90, %87 ], [ %19, %65 ]
  %74 = phi i8 [ %89, %87 ], [ %18, %65 ]
  %75 = icmp eq ptr %71, null
  br i1 %75, label %80, label %76, !prof !457

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !121
  %79 = icmp eq i32 %78, %70
  br i1 %79, label %80, label %83, !prof !458

80:                                               ; preds = %69, %76
  %81 = phi i32 [ %78, %76 ], [ %70, %69 ]
  %82 = call fastcc zeroext i8 @bitmap_elt_ior(ptr noundef nonnull %0, ptr noundef %71, ptr noundef %72, ptr noundef %71, ptr noundef nonnull %4, i8 noundef zeroext %74) #19, !range !281
  br label %87

83:                                               ; preds = %76
  %84 = icmp ugt i32 %78, %70
  br i1 %84, label %85, label %87, !prof !459

85:                                               ; preds = %83
  %86 = call fastcc zeroext i8 @bitmap_elt_copy(ptr noundef nonnull %0, ptr noundef null, ptr noundef %72, ptr noundef nonnull %4, i8 noundef zeroext %74) #19, !range !281
  br label %87

87:                                               ; preds = %83, %85, %80
  %88 = phi i32 [ %81, %80 ], [ %78, %85 ], [ %78, %83 ]
  %89 = phi i8 [ %82, %80 ], [ %86, %85 ], [ %74, %83 ]
  %90 = load ptr, ptr %73, align 8, !tbaa !125
  %91 = load ptr, ptr %90, align 8, !tbaa !125
  %92 = load i32, ptr %16, align 8, !tbaa !121
  %93 = icmp ult i32 %88, %92
  br i1 %93, label %69, label %94, !prof !460, !llvm.loop !461

94:                                               ; preds = %87, %65
  %95 = phi ptr [ %23, %65 ], [ %91, %87 ]
  %96 = phi ptr [ %20, %65 ], [ %90, %87 ]
  %97 = phi ptr [ %19, %65 ], [ %90, %87 ]
  %98 = phi i8 [ %18, %65 ], [ %89, %87 ]
  %99 = icmp ne ptr %66, null
  %100 = icmp ne ptr %67, null
  %101 = select i1 %99, i1 %100, i1 false, !prof !462
  br i1 %101, label %17, label %102, !prof !463

102:                                              ; preds = %94, %38, %35
  %103 = phi i8 [ %18, %35 ], [ %18, %38 ], [ %98, %94 ]
  %104 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !120
  %106 = icmp eq ptr %105, null
  %107 = load ptr, ptr %0, align 8, !tbaa !105
  %108 = icmp ne ptr %107, null
  %109 = xor i1 %106, %108
  br i1 %109, label %112, label %110, !prof !464

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2018, ptr noundef nonnull @.str.1) #20
  %111 = load ptr, ptr %104, align 8, !tbaa !120
  br label %112

112:                                              ; preds = %102, %110
  %113 = phi ptr [ %105, %102 ], [ %111, %110 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115, !prof !465

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.bitmap_element_def, ptr %113, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !121
  %118 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %117, ptr %118, align 8, !tbaa !123
  br label %119

119:                                              ; preds = %112, %115, %11, %9
  %120 = phi i8 [ %10, %9 ], [ 0, %11 ], [ %103, %115 ], [ %103, %112 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  ret i8 %120
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_bitmap_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !226 {
  %3 = load ptr, ptr %1, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %5, i32 noundef %7) #19
  %9 = load ptr, ptr %1, align 8, !tbaa !125
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2, %51
  %12 = phi ptr [ %53, %51 ], [ %9, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !121
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
  %29 = load i64, ptr %23, align 8, !tbaa !171
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
  %39 = load i32, ptr %16, align 8, !tbaa !121
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
  br i1 %49, label %50, label %26, !llvm.loop !466

50:                                               ; preds = %46
  br i1 %20, label %19, label %51, !llvm.loop !467

51:                                               ; preds = %50
  %52 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr %0)
  %53 = load ptr, ptr %12, align 8, !tbaa !125
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %11, !llvm.loop !468

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_bitmap(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !226 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !125
  tail call void @debug_bitmap_file(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @bitmap_print(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 !prof !226 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %7 = tail call i32 @fputs(ptr noundef %2, ptr noundef %0) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5) #19
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !281
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ @.str.9, %10 ], [ @.str.7, %4 ]
  %12 = load i32, ptr %5, align 4, !tbaa !128
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %11, i32 noundef %12) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !281
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !469

16:                                               ; preds = %10, %4
  %17 = tail call i32 @fputs(ptr noundef %3, ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !226 !PGOFuncName !470 {
  %4 = load ptr, ptr %1, align 8, !tbaa !105
  store ptr %4, ptr %0, align 8, !tbaa !471
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !473
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !471
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !121
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !474
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !171
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !475
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !128
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !226 !PGOFuncName !476 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !475
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !128
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !477

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !128
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !128
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !474
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !471
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !474
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !171
  store i64 %35, ptr %3, align 8, !tbaa !475
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !128
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !128
  %40 = load i32, ptr %23, align 8, !tbaa !474
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !474
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !478

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !119
  store ptr %44, ptr %0, align 8, !tbaa !471
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !121
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !128
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !475
  store i32 %16, ptr %1, align 4, !tbaa !128
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !226 !PGOFuncName !479 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !475
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !475
  %6 = load i32, ptr %1, align 4, !tbaa !128
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_bitmap_statistics() local_unnamed_addr #16 !prof !226 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bitmap_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !480 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4, !prof !481

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %17, %4 ], [ %2, %1 ]
  %6 = phi i64 [ %16, %4 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !121
  %9 = zext i32 %8 to i64
  %10 = xor i64 %6, %9
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 0
  %12 = load i64, ptr %11, align 8, !tbaa !171
  %13 = xor i64 %12, %10
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 1
  %15 = load i64, ptr %14, align 8, !tbaa !171
  %16 = xor i64 %15, %13
  %17 = load ptr, ptr %5, align 8, !tbaa !125
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !prof !482, !llvm.loop !483

19:                                               ; preds = %4
  %20 = trunc i64 %16 to i32
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_elem_to_freelist(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !193 !PGOFuncName !484 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  store ptr null, ptr %1, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @bitmap_ggc_free, ptr %4, !prof !485
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  store ptr %1, ptr %6, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  store ptr %7, ptr %8, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!103}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!35 = !{ptr @bitmap_clear, ptr @bitmap_elt_clear_from, i64 40551954}
!36 = !{ptr @bitmap_obstack_initialize, ptr @_obstack_begin, i64 1662}
!37 = !{ptr @bitmap_obstack_release, ptr @obstack_free, i64 1659}
!38 = !{ptr @bitmap_obstack_alloc_stat, ptr @_obstack_newchunk, i64 72820}
!39 = !{ptr @bitmap_obstack_alloc_stat, ptr @bitmap_initialize_stat, i64 19278775}
!40 = !{ptr @bitmap_gc_alloc_stat, ptr @ggc_alloc_stat, i64 43950}
!41 = !{ptr @bitmap_gc_alloc_stat, ptr @bitmap_initialize_stat, i64 43950}
!42 = !{ptr @bitmap_obstack_free, ptr @bitmap_clear, i64 13659647}
!43 = !{ptr @bitmap_copy, ptr @bitmap_clear, i64 12425566}
!44 = !{ptr @bitmap_copy, ptr @bitmap_element_allocate, i64 23835529}
!45 = !{ptr @bitmap_element_allocate, ptr @_obstack_newchunk, i64 144714}
!46 = !{ptr @bitmap_element_allocate, ptr @ggc_alloc_stat, i64 1057}
!47 = !{ptr @bitmap_clear_bit, ptr @bitmap_find_bit, i64 125491430}
!48 = !{ptr @bitmap_clear_bit, ptr @bitmap_element_zerop, i64 109006699}
!49 = !{ptr @bitmap_clear_bit, ptr @bitmap_element_free, i64 3548325}
!50 = !{ptr @bitmap_element_free, ptr @bitmap_elem_to_freelist, i64 5139469}
!51 = !{ptr @bitmap_set_bit, ptr @bitmap_find_bit, i64 178091693}
!52 = !{ptr @bitmap_set_bit, ptr @bitmap_element_allocate, i64 32718464}
!53 = !{ptr @bitmap_set_bit, ptr @bitmap_element_link, i64 32718464}
!54 = !{ptr @bitmap_bit_p, ptr @bitmap_find_bit, i64 178942441}
!55 = !{ptr @bitmap_count_bits, ptr @bitmap_popcount, i64 190534}
!56 = !{ptr @bitmap_first_set_bit, ptr @fancy_abort, i64 1325655}
!57 = !{ptr @bitmap_and, ptr @fancy_abort, i64 3}
!58 = !{ptr @bitmap_and, ptr @bitmap_copy, i64 1}
!59 = !{ptr @bitmap_and, ptr @bitmap_elt_insert_after, i64 3828751}
!60 = !{ptr @bitmap_and, ptr @bitmap_elt_clear_from, i64 9345878}
!61 = !{ptr @bitmap_elt_insert_after, ptr @bitmap_element_allocate, i64 23034227}
!62 = !{ptr @bitmap_elt_insert_after, ptr @fancy_abort, i64 1}
!63 = !{ptr @bitmap_and_into, ptr @bitmap_element_free, i64 543292}
!64 = !{ptr @bitmap_and_into, ptr @bitmap_elt_clear_from, i64 12232199}
!65 = !{ptr @bitmap_and_into, ptr @fancy_abort, i64 2}
!66 = !{ptr @bitmap_and_compl, ptr @fancy_abort, i64 3}
!67 = !{ptr @bitmap_and_compl, ptr @bitmap_clear, i64 1}
!68 = !{ptr @bitmap_and_compl, ptr @bitmap_elt_copy, i64 320866}
!69 = !{ptr @bitmap_and_compl, ptr @bitmap_elt_insert_after, i64 196264}
!70 = !{ptr @bitmap_and_compl, ptr @bitmap_element_free, i64 6934}
!71 = !{ptr @bitmap_and_compl, ptr @bitmap_elt_clear_from, i64 3231}
!72 = !{ptr @bitmap_elt_copy, ptr @bitmap_elt_insert_after, i64 19071424}
!73 = !{ptr @bitmap_and_compl_into, ptr @bitmap_clear, i64 1}
!74 = !{ptr @bitmap_and_compl_into, ptr @bitmap_element_free, i64 29486}
!75 = !{ptr @bitmap_and_compl_into, ptr @fancy_abort, i64 2}
!76 = !{ptr @bitmap_set_range, ptr @bitmap_find_bit, i64 147070}
!77 = !{ptr @bitmap_set_range, ptr @bitmap_element_allocate, i64 121796}
!78 = !{ptr @bitmap_set_range, ptr @bitmap_element_link, i64 121796}
!79 = !{ptr @bitmap_set_range, ptr @fancy_abort, i64 1}
!80 = !{ptr @bitmap_set_range, ptr @bitmap_elt_insert_after, i64 75}
!81 = !{ptr @bitmap_clear_range, ptr @bitmap_find_bit, i64 4528535}
!82 = !{ptr @bitmap_clear_range, ptr @bitmap_element_free, i64 1136574}
!83 = !{ptr @bitmap_ior, ptr @fancy_abort, i64 3}
!84 = !{ptr @bitmap_ior, ptr @bitmap_elt_ior, i64 9149200}
!85 = !{ptr @bitmap_ior, ptr @bitmap_elt_clear_from, i64 1}
!86 = !{ptr @bitmap_elt_ior, ptr @fancy_abort, i64 2}
!87 = !{ptr @bitmap_elt_ior, ptr @bitmap_elt_insert_after, i64 9698}
!88 = !{ptr @bitmap_elt_ior, ptr @bitmap_elt_copy, i64 22841665}
!89 = !{ptr @bitmap_ior_into, ptr @bitmap_elt_ior, i64 59415441}
!90 = !{ptr @bitmap_ior_into, ptr @bitmap_elt_copy, i64 1072518}
!91 = !{ptr @bitmap_ior_into, ptr @fancy_abort, i64 1}
!92 = !{ptr @bitmap_ior_and_compl, ptr @fancy_abort, i64 4}
!93 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_equal_p, i64 737870}
!94 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_copy, i64 1}
!95 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_ior, i64 5469696}
!96 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_and_compl, i64 169031}
!97 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_elt_ior, i64 8953358}
!98 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_elt_clear_from, i64 1}
!99 = !{ptr @bitmap_ior_and_into, ptr @bitmap_ior_into, i64 1}
!100 = !{ptr @bitmap_ior_and_into, ptr @bitmap_elt_ior, i64 127119}
!101 = !{ptr @bitmap_ior_and_into, ptr @bitmap_elt_copy, i64 23}
!102 = !{ptr @bitmap_ior_and_into, ptr @fancy_abort, i64 1}
!103 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!104 = !{!"function_entry_count", i64 68959523}
!105 = !{!106, !107, i64 0}
!106 = !{!"bitmap_head_def", !107, i64 0, !107, i64 8, !110, i64 16, !107, i64 24}
!107 = !{!"any pointer", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!"int", !108, i64 0}
!111 = !{!"branch_weights", i32 28407570, i32 40551955}
!112 = !{!"function_entry_count", i64 62133263}
!113 = !{!"bitmap.c:bitmap_elt_clear_from"}
!114 = !{!106, !107, i64 24}
!115 = !{!"branch_weights", i32 15239790, i32 46893475}
!116 = !{!117, !107, i64 8}
!117 = !{!"bitmap_element_def", !107, i64 0, !107, i64 8, !110, i64 16, !108, i64 24}
!118 = !{!"branch_weights", i32 45789239, i32 1104237}
!119 = !{!117, !107, i64 0}
!120 = !{!106, !107, i64 8}
!121 = !{!117, !110, i64 16}
!122 = !{!"branch_weights", i32 1, i32 1104237}
!123 = !{!106, !110, i64 16}
!124 = !{!"branch_weights", i32 92826, i32 46800650}
!125 = !{!107, !107, i64 0}
!126 = !{!"function_entry_count", i64 1663}
!127 = !{!"branch_weights", i32 80, i32 1585}
!128 = !{!110, !110, i64 0}
!129 = !{!"branch_weights", i32 80, i32 1}
!130 = !{!"function_entry_count", i64 1660}
!131 = !{!"branch_weights", i32 80, i32 1582}
!132 = !{!133, !107, i64 24}
!133 = !{!"bitmap_obstack", !107, i64 0, !107, i64 8, !134, i64 16}
!134 = !{!"obstack", !135, i64 0, !107, i64 8, !107, i64 16, !107, i64 24, !107, i64 32, !135, i64 40, !110, i64 48, !107, i64 56, !107, i64 64, !107, i64 72, !110, i64 80, !110, i64 80, !110, i64 80}
!135 = !{!"long", !108, i64 0}
!136 = !{!133, !135, i64 56}
!137 = !{!"branch_weights", i32 1, i32 1661}
!138 = !{!133, !107, i64 48}
!139 = !{!133, !107, i64 32}
!140 = !{!133, !107, i64 40}
!141 = !{!"function_entry_count", i64 19278775}
!142 = !{!"branch_weights", i32 10152470, i32 9126307}
!143 = !{!133, !107, i64 8}
!144 = !{!"branch_weights", i32 9015698, i32 10263079}
!145 = !{!"branch_weights", i32 72820, i32 8942879}
!146 = !{!"branch_weights", i32 1, i32 9015698}
!147 = !{!133, !110, i64 64}
!148 = !{!"function_entry_count", i64 19322725}
!149 = !{!"bitmap.c:bitmap_initialize_stat"}
!150 = !{!"function_entry_count", i64 43950}
!151 = !{!"function_entry_count", i64 14239009}
!152 = !{!"branch_weights", i32 579362, i32 13659649}
!153 = !{!"function_entry_count", i64 12425566}
!154 = !{!"branch_weights", i32 1, i32 12425566}
!155 = !{!"branch_weights", i32 11646553, i32 12188979}
!156 = !{!"branch_weights", i32 12425566, i32 11409965}
!157 = distinct !{!157, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !{!"function_entry_count", i64 79710017}
!160 = !{!"bitmap.c:bitmap_element_allocate"}
!161 = !{!"branch_weights", i32 93919, i32 79616100}
!162 = !{!133, !107, i64 0}
!163 = !{!"branch_weights", i32 14768291, i32 64847810}
!164 = !{!"branch_weights", i32 49170599, i32 15677212}
!165 = !{!"branch_weights", i32 144714, i32 14623578}
!166 = !{!"branch_weights", i32 1, i32 14768291}
!167 = !{!"branch_weights", i32 1057, i32 92863}
!168 = !{!"branch_weights", i32 92826, i32 38}
!169 = !{!"function_entry_count", i64 125491430}
!170 = !{!"branch_weights", i32 16484731, i32 109006701}
!171 = !{!135, !135, i64 0}
!172 = !{!"branch_weights", i32 27136982, i32 81869720}
!173 = !{i32 0, i32 2}
!174 = !{!"branch_weights", i32 105458377, i32 3548325}
!175 = !{!"function_entry_count", i64 487201171}
!176 = !{!"bitmap.c:bitmap_find_bit"}
!177 = !{!"branch_weights", i32 73752226, i32 413448947}
!178 = !{!"branch_weights", i32 365256009, i32 48192939}
!179 = !{!"branch_weights", i32 23630529, i32 24562411}
!180 = !{!"branch_weights", i32 17231825, i32 394573988}
!181 = !{!"branch_weights", i32 388175284, i32 23630529}
!182 = distinct !{!182, !158}
!183 = !{!"branch_weights", i32 9222634, i32 15339778}
!184 = !{!"branch_weights", i32 3499524, i32 104182549}
!185 = !{!"branch_weights", i32 98459439, i32 9222634}
!186 = distinct !{!186, !158}
!187 = !{!"branch_weights", i32 5604063, i32 110295876}
!188 = !{!"branch_weights", i32 100560161, i32 15339778}
!189 = distinct !{!189, !158}
!190 = !{!"branch_weights", i32 21080584, i32 27112356}
!191 = !{!"function_entry_count", i64 109006700}
!192 = !{!"bitmap.c:bitmap_element_zerop"}
!193 = !{!"function_entry_count", i64 5139469}
!194 = !{!"bitmap.c:bitmap_element_free"}
!195 = !{!"branch_weights", i32 1317625, i32 3821846}
!196 = !{!"branch_weights", i32 2102992, i32 3036479}
!197 = !{!"branch_weights", i32 4054821, i32 1084650}
!198 = !{!"branch_weights", i32 2100798, i32 1954024}
!199 = !{!"branch_weights", i32 884895, i32 3169927}
!200 = !{!"function_entry_count", i64 178091693}
!201 = !{!"branch_weights", i32 32718464, i32 145373231}
!202 = !{!"branch_weights", i32 115538383, i32 29834849}
!203 = !{!"function_entry_count", i64 32840260}
!204 = !{!"bitmap.c:bitmap_element_link"}
!205 = !{!"branch_weights", i32 26104903, i32 6735359}
!206 = !{!"branch_weights", i32 1964809, i32 4770551}
!207 = !{!"branch_weights", i32 765871, i32 1198939}
!208 = !{!"branch_weights", i32 1, i32 1964809}
!209 = distinct !{!209, !158}
!210 = !{!"branch_weights", i32 4066044, i32 704508}
!211 = !{!"branch_weights", i32 1, i32 4770551}
!212 = distinct !{!212, !158}
!213 = !{!"function_entry_count", i64 178942441}
!214 = !{!"branch_weights", i32 47915721, i32 131026722}
!215 = !{!"function_entry_count", i64 63554}
!216 = !{!"branch_weights", i32 1, i32 63554}
!217 = !{!"branch_weights", i32 63554, i32 31715}
!218 = distinct !{!218, !158}
!219 = !{!"branch_weights", i32 95269, i32 95268}
!220 = distinct !{!220, !158}
!221 = !{!"function_entry_count", i64 190536}
!222 = !{!"bitmap.c:bitmap_popcount"}
!223 = !{!108, !108, i64 0}
!224 = !{!"branch_weights", i32 1333752, i32 190537}
!225 = distinct !{!225, !158}
!226 = !{!"function_entry_count", i64 0}
!227 = distinct !{!227, !158}
!228 = !{!"function_entry_count", i64 12027698}
!229 = !{!"branch_weights", i32 1, i32 12027699}
!230 = !{!"branch_weights", i32 5977542, i32 12027699}
!231 = !{!"branch_weights", i32 5996922, i32 6030778}
!232 = !{!"branch_weights", i32 6004666, i32 6023034}
!233 = !{!"branch_weights", i32 6011905, i32 6015795}
!234 = !{!"branch_weights", i32 6012857, i32 6014843}
!235 = !{!"branch_weights", i32 6013496, i32 6014204}
!236 = distinct !{!236, !158}
!237 = !{!"function_entry_count", i64 9345879}
!238 = !{!"branch_weights", i32 570, i32 -1629395001}
!239 = !{!"branch_weights", i32 1, i32 9345880}
!240 = !{!"branch_weights", i32 13671031, i32 8077843}
!241 = !{!"branch_weights", i32 9345879, i32 1}
!242 = !{!"branch_weights", i32 1982284, i32 10420711}
!243 = !{!"branch_weights", i32 1286836, i32 9133876}
!244 = !{!"branch_weights", i32 3828753, i32 5305124}
!245 = !{!"branch_weights", i32 9133876, i32 9133875}
!246 = distinct !{!246, !158}
!247 = !{!"branch_weights", i32 5551270, i32 3582607}
!248 = !{!"branch_weights", i32 3057115, i32 9345879}
!249 = distinct !{!249, !158}
!250 = !{!"branch_weights", i32 9345880, i32 1}
!251 = !{!"branch_weights", i32 5803625, i32 3542256}
!252 = !{!"function_entry_count", i64 23034227}
!253 = !{!"bitmap.c:bitmap_elt_insert_after"}
!254 = !{!"branch_weights", i32 13167032, i32 9867197}
!255 = !{!"branch_weights", i32 13001616, i32 165417}
!256 = !{!"branch_weights", i32 1, i32 9867197}
!257 = !{!"branch_weights", i32 8960072, i32 907126}
!258 = !{!"function_entry_count", i64 12232200}
!259 = !{!"branch_weights", i32 1, i32 12232201}
!260 = !{!"branch_weights", i32 19883505, i32 11684178}
!261 = !{!"branch_weights", i32 12232200, i32 1}
!262 = !{!"branch_weights", i32 539347, i32 18796136}
!263 = !{!"branch_weights", i32 24797, i32 18771340}
!264 = !{!"branch_weights", i32 18771340, i32 18771339}
!265 = distinct !{!265, !158}
!266 = !{!"branch_weights", i32 3945, i32 18767396}
!267 = !{!"branch_weights", i32 7103282, i32 12232200}
!268 = distinct !{!268, !158}
!269 = !{!"branch_weights", i32 12232201, i32 1}
!270 = !{!"branch_weights", i32 754331, i32 11477871}
!271 = !{!"branch_weights", i32 11477871, i32 1}
!272 = !{!"function_entry_count", i64 543016}
!273 = !{!"branch_weights", i32 8484, i32 -1991315247}
!274 = !{!"branch_weights", i32 1, i32 543017}
!275 = !{!"branch_weights", i32 1, i32 543016}
!276 = !{!"branch_weights", i32 191104, i32 233838}
!277 = !{!"branch_weights", i32 13795, i32 644985}
!278 = !{!"branch_weights", i32 233838, i32 0}
!279 = distinct !{!279, !158}
!280 = !{!"branch_weights", i32 14801, i32 205244}
!281 = !{i8 0, i8 2}
!282 = !{!"branch_weights", i32 2046005791, i32 -1154354971}
!283 = !{!"branch_weights", i32 80954, i32 12}
!284 = !{!"branch_weights", i32 161497, i32 411}
!285 = !{!"branch_weights", i32 80954, i32 80953}
!286 = distinct !{!286, !158}
!287 = !{!"branch_weights", i32 5, i32 2147483643}
!288 = !{!"branch_weights", i32 3, i32 10}
!289 = !{!"branch_weights", i32 124291, i32 124290}
!290 = distinct !{!290, !158}
!291 = !{!"branch_weights", i32 4391, i32 119901}
!292 = !{!"branch_weights", i32 7878339, i32 2139605309}
!293 = !{!"branch_weights", i32 543016, i32 101969}
!294 = distinct !{!294, !158}
!295 = !{!"branch_weights", i32 539787, i32 3231}
!296 = !{!"branch_weights", i32 543017, i32 1}
!297 = !{!"branch_weights", i32 120981, i32 422037}
!298 = !{!"function_entry_count", i64 24353943}
!299 = !{!"bitmap.c:bitmap_elt_copy"}
!300 = !{!"branch_weights", i32 681954114, i32 -1811553493}
!301 = !{!"branch_weights", i32 5108386, i32 138485}
!302 = !{!"branch_weights", i32 10216227, i32 545}
!303 = !{!"branch_weights", i32 5108386, i32 5108385}
!304 = distinct !{!304, !158}
!305 = !{!"branch_weights", i32 4006781, i32 2143476867}
!306 = !{!"function_entry_count", i64 2395518}
!307 = !{!"branch_weights", i32 1, i32 2395519}
!308 = !{!"branch_weights", i32 5889349, i32 1083120}
!309 = !{!"branch_weights", i32 2395518, i32 1}
!310 = !{!"branch_weights", i32 2199437, i32 2377514}
!311 = !{!"branch_weights", i32 306093, i32 2071422}
!312 = !{!"branch_weights", i32 2071422, i32 2071421}
!313 = distinct !{!313, !158}
!314 = !{!"branch_weights", i32 29486, i32 2041937}
!315 = !{!"branch_weights", i32 2181432, i32 2395518}
!316 = distinct !{!316, !158}
!317 = !{!"branch_weights", i32 2395519, i32 1}
!318 = !{!"branch_weights", i32 215, i32 2395305}
!319 = !{!"branch_weights", i32 2395305, i32 1}
!320 = !{!"function_entry_count", i64 147071}
!321 = !{!"branch_weights", i32 1, i32 147072}
!322 = !{!"branch_weights", i32 121798, i32 25275}
!323 = !{!"branch_weights", i32 147072, i32 1}
!324 = !{!"branch_weights", i32 1, i32 147071}
!325 = !{!"branch_weights", i32 74, i32 147078}
!326 = !{!"branch_weights", i32 147078, i32 1}
!327 = !{!"branch_weights", i32 80, i32 147072}
!328 = !{!"branch_weights", i32 145951, i32 1201}
!329 = !{!"branch_weights", i32 145927, i32 1225}
!330 = !{!"branch_weights", i32 147071, i32 80}
!331 = distinct !{!331, !158}
!332 = !{!"branch_weights", i32 140821, i32 6252}
!333 = !{!"function_entry_count", i64 4528536}
!334 = !{!"branch_weights", i32 1, i32 4528537}
!335 = !{!"branch_weights", i32 3623871, i32 904667}
!336 = !{!"branch_weights", i32 155925, i32 3467947}
!337 = !{!"branch_weights", i32 2407804, i32 1060144}
!338 = !{!"branch_weights", i32 167763, i32 2240042}
!339 = !{!"branch_weights", i32 4204851, i32 2125646}
!340 = !{!"branch_weights", i32 -1261981480, i32 2063003766}
!341 = !{!"branch_weights", i32 364770, i32 900354}
!342 = !{!"branch_weights", i32 534730, i32 730394}
!343 = !{!"branch_weights", i32 954940, i32 310184}
!344 = !{!"branch_weights", i32 1001326, i32 1111666}
!345 = !{!"branch_weights", i32 87560, i32 6155377}
!346 = distinct !{!346, !158}
!347 = distinct !{!347, !158}
!348 = distinct !{!348, !158}
!349 = !{!"function_entry_count", i64 5502819}
!350 = !{!"branch_weights", i32 1343, i32 -598552752}
!351 = !{!"branch_weights", i32 2569486, i32 12082536}
!352 = !{!"branch_weights", i32 5502819, i32 1}
!353 = !{!"branch_weights", i32 1584572406, i32 -140096791}
!354 = !{!"branch_weights", i32 2091016, i32 434941}
!355 = !{!"branch_weights", i32 14114041, i32 2133369607}
!356 = !{!"branch_weights", i32 0, i32 -2147483648}
!357 = !{!"branch_weights", i32 224394, i32 210548}
!358 = !{!"branch_weights", i32 2147483322, i32 326}
!359 = !{!"branch_weights", i32 3646383, i32 5502819}
!360 = distinct !{!360, !158}
!361 = !{!"branch_weights", i32 5502820, i32 1}
!362 = !{!"branch_weights", i32 1, i32 5502820}
!363 = !{!"function_entry_count", i64 77643366}
!364 = !{!"bitmap.c:bitmap_elt_ior"}
!365 = !{!"branch_weights", i32 -1039872563, i32 41}
!366 = !{!"branch_weights", i32 1536838165, i32 610645483}
!367 = !{!"branch_weights", i32 54801704, i32 763466}
!368 = !{!"branch_weights", i32 -1697679309, i32 130146799}
!369 = !{!"branch_weights", i32 52186696, i32 2}
!370 = !{!"branch_weights", i32 99314371, i32 5059021}
!371 = !{!"branch_weights", i32 52186696, i32 52186695}
!372 = distinct !{!372, !158}
!373 = !{!"branch_weights", i32 2139519507, i32 7964141}
!374 = !{!"branch_weights", i32 2615009, i32 2615008}
!375 = distinct !{!375, !158}
!376 = !{!"branch_weights", i32 2137939404, i32 9544244}
!377 = !{!"branch_weights", i32 2, i32 2147483646}
!378 = !{!"branch_weights", i32 465157, i32 298310}
!379 = !{!"branch_weights", i32 517, i32 2147483131}
!380 = !{!"function_entry_count", i64 45585784}
!381 = !{!"branch_weights", i32 1, i32 45585785}
!382 = !{!"branch_weights", i32 1, i32 45585784}
!383 = !{!"branch_weights", i32 13388644, i32 198959769}
!384 = !{!"branch_weights", i32 46026800, i32 152932970}
!385 = !{!"branch_weights", i32 1072518, i32 151860453}
!386 = !{!"branch_weights", i32 45585784, i32 166762628}
!387 = distinct !{!387, !158}
!388 = !{!"branch_weights", i32 45585785, i32 1}
!389 = !{!"branch_weights", i32 2146148, i32 43439638}
!390 = distinct !{!390, !158}
!391 = distinct !{!391, !158}
!392 = distinct !{!392, !158}
!393 = distinct !{!393, !158}
!394 = !{!"function_entry_count", i64 2548517}
!395 = !{!"branch_weights", i32 4095173, i32 2393787}
!396 = !{!"branch_weights", i32 2394052, i32 1}
!397 = !{!"branch_weights", i32 3942211, i32 152697}
!398 = !{!"branch_weights", i32 7881980, i32 1770}
!399 = distinct !{!399, !158}
!400 = !{!"branch_weights", i32 1700855, i32 2394052}
!401 = distinct !{!401, !158}
!402 = !{!"function_entry_count", i64 780758}
!403 = !{!"branch_weights", i32 553975, i32 576274}
!404 = !{!"branch_weights", i32 349758, i32 430733}
!405 = !{!"branch_weights", i32 561, i32 349198}
!406 = !{!"branch_weights", i32 254, i32 348945}
!407 = !{!"branch_weights", i32 348677, i32 697889}
!408 = !{!"branch_weights", i32 697621, i32 269}
!409 = distinct !{!409, !158}
!410 = !{!"branch_weights", i32 0, i32 349758}
!411 = distinct !{!411, !158}
!412 = distinct !{!412, !158}
!413 = distinct !{!413, !158}
!414 = !{!"function_entry_count", i64 11714459}
!415 = !{!"branch_weights", i32 748, i32 -1370835183}
!416 = !{!"branch_weights", i32 1, i32 11714460}
!417 = !{!"branch_weights", i32 737869, i32 10976592}
!418 = !{!"branch_weights", i32 1, i32 737869}
!419 = !{!"branch_weights", i32 5469698, i32 5506895}
!420 = !{!"branch_weights", i32 169031, i32 5337865}
!421 = !{!"branch_weights", i32 6951274, i32 7606887}
!422 = !{!"branch_weights", i32 5337864, i32 1}
!423 = !{!"branch_weights", i32 -2105458204, i32 738719695}
!424 = !{!"branch_weights", i32 1240926, i32 9165702}
!425 = !{!"branch_weights", i32 2578986, i32 7827642}
!426 = !{!"branch_weights", i32 1572264884, i32 575218764}
!427 = !{!"branch_weights", i32 5613423, i32 973295}
!428 = !{!"branch_weights", i32 5334305, i32 279119}
!429 = !{!"branch_weights", i32 613, i32 5333693}
!430 = !{!"branch_weights", i32 5612811, i32 5612810}
!431 = distinct !{!431, !158}
!432 = !{!"branch_weights", i32 266933, i32 5345879}
!433 = !{!"branch_weights", i32 5327817, i32 18063}
!434 = !{!"branch_weights", i32 5279080, i32 48738}
!435 = !{!"branch_weights", i32 -1825962165, i32 -1065330198}
!436 = !{!"branch_weights", i32 1283200, i32 279789}
!437 = !{!"branch_weights", i32 56989196, i32 2090494452}
!438 = !{!"branch_weights", i32 25180, i32 254610}
!439 = !{!"branch_weights", i32 2147482569, i32 1079}
!440 = !{!"branch_weights", i32 3882432, i32 5337864}
!441 = distinct !{!441, !158}
!442 = !{!"branch_weights", i32 5337865, i32 1}
!443 = !{!"branch_weights", i32 1, i32 5337865}
!444 = !{!"function_entry_count", i64 662925}
!445 = !{!"branch_weights", i32 1, i32 662926}
!446 = !{!"branch_weights", i32 1128679, i32 -863838046}
!447 = !{!"branch_weights", i32 419414, i32 251939}
!448 = !{!"branch_weights", i32 137866, i32 114074}
!449 = !{!"branch_weights", i32 109208, i32 28659}
!450 = !{!"branch_weights", i32 103958, i32 10117}
!451 = !{!"branch_weights", i32 251939, i32 0}
!452 = distinct !{!452, !158}
!453 = !{!"branch_weights", i32 671353, i32 671352}
!454 = distinct !{!454, !158}
!455 = !{!"branch_weights", i32 545971, i32 125383}
!456 = distinct !{!456, !158}
!457 = !{!"branch_weights", i32 3750, i32 121650}
!458 = !{!"branch_weights", i32 2146795183, i32 688465}
!459 = !{!"branch_weights", i32 23, i32 17}
!460 = !{!"branch_weights", i32 17, i32 125383}
!461 = distinct !{!461, !158}
!462 = !{!"branch_weights", i32 1068455, i32 265608}
!463 = !{!"branch_weights", i32 434971, i32 449546}
!464 = !{!"branch_weights", i32 662710, i32 1}
!465 = !{!"branch_weights", i32 329066, i32 333645}
!466 = distinct !{!466, !158}
!467 = distinct !{!467, !158}
!468 = distinct !{!468, !158}
!469 = distinct !{!469, !158}
!470 = !{!"bitmap.c:bmp_iter_set_init"}
!471 = !{!472, !107, i64 0}
!472 = !{!"", !107, i64 0, !107, i64 8, !110, i64 16, !135, i64 24}
!473 = !{!472, !107, i64 8}
!474 = !{!472, !110, i64 16}
!475 = !{!472, !135, i64 24}
!476 = !{!"bitmap.c:bmp_iter_set"}
!477 = distinct !{!477, !158}
!478 = distinct !{!478, !158}
!479 = !{!"bitmap.c:bmp_iter_next"}
!480 = !{!"function_entry_count", i64 89963}
!481 = !{!"branch_weights", i32 1030, i32 88934}
!482 = !{!"branch_weights", i32 88934, i32 0}
!483 = distinct !{!483, !158}
!484 = !{!"bitmap.c:bitmap_elem_to_freelist"}
!485 = !{!"branch_weights", i32 1, i32 5139470}
