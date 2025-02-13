; ModuleID = 'vec.c'
source_filename = "vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vec_prefix = type { i32, i32, [1 x ptr] }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }

@stack_vecs = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"vec.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !59 {
  %3 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !60 !PGOFuncName !61 {
  %6 = tail call fastcc i32 @calculate_allocation(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !62

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10, !prof !63

10:                                               ; preds = %8
  tail call void @ggc_free(ptr noundef nonnull %0) #8
  br label %19

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = mul i64 %12, %3
  %14 = add i64 %13, %2
  %15 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %14) #8
  %16 = getelementptr inbounds %struct.vec_prefix, ptr %15, i64 0, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !64
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19, !prof !69

18:                                               ; preds = %11
  store i32 0, ptr %15, align 8, !tbaa !70
  br label %19

19:                                               ; preds = %11, %18, %8, %10
  %20 = phi ptr [ null, %10 ], [ null, %8 ], [ %15, %18 ], [ %15, %11 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !71 {
  %3 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !72 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !73 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !74 {
  %3 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !75 !PGOFuncName !76 {
  %6 = tail call fastcc i32 @calculate_allocation(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !77

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10, !prof !78

10:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %0) #7
  br label %19

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = mul i64 %12, %3
  %14 = add i64 %13, %2
  %15 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %14) #8
  %16 = getelementptr inbounds %struct.vec_prefix, ptr %15, i64 0, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !64
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19, !prof !79

18:                                               ; preds = %11
  store i32 0, ptr %15, align 8, !tbaa !70
  br label %19

19:                                               ; preds = %11, %18, %8, %10
  %20 = phi ptr [ null, %10 ], [ null, %8 ], [ %15, %18 ], [ %15, %11 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !80 {
  %3 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !81 {
  %5 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !82 {
  %5 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef returned %1) local_unnamed_addr #0 !prof !83 {
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef %1) #7
  store i32 0, ptr %1, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.vec_prefix, ptr %1, i64 0, i32 1
  store i32 %0, ptr %3, align 4, !tbaa !64
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !83 !PGOFuncName !84 {
  tail call fastcc void @VEC_void_p_heap_reserve() #7
  %2 = load ptr, ptr @stack_vecs, align 8, !tbaa !85
  tail call fastcc void @VEC_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !72 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !72 !PGOFuncName !87 {
  %6 = load ptr, ptr @stack_vecs, align 8
  %7 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %6) #7
  br label %8

8:                                                ; preds = %11, %5
  %9 = phi i32 [ %7, %5 ], [ %12, %11 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = add i32 %9, -1
  %13 = tail call fastcc ptr @VEC_void_p_base_index(ptr noundef %6, i32 noundef %12) #7
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %17, label %8, !llvm.loop !88

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) #7
  br label %28

17:                                               ; preds = %11
  tail call fastcc void @VEC_void_p_base_unordered_remove(ptr noundef %6, i32 noundef %12) #7
  %18 = load i32, ptr %0, align 8, !tbaa !70
  %19 = add i32 %18, %1
  %20 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef null, i32 noundef %19, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %0, align 8, !tbaa !70
  store i32 %23, ptr %20, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.vec_prefix, ptr %20, i64 0, i32 2
  %25 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 2
  %26 = zext i32 %23 to i64
  %27 = mul i64 %26, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %24, ptr nonnull align 8 %25, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %17, %22, %15
  %29 = phi ptr [ %16, %15 ], [ %20, %22 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !72 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !72 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !72 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vec_stack_free(ptr noundef %0) local_unnamed_addr #0 !prof !83 {
  %2 = load ptr, ptr @stack_vecs, align 8
  %3 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %2) #7
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %3, %1 ], [ %8, %7 ]
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !90

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  %9 = tail call fastcc ptr @VEC_void_p_base_index(ptr noundef %2, i32 noundef %8) #7
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %4, !prof !91, !llvm.loop !92

11:                                               ; preds = %7
  tail call fastcc void @VEC_void_p_base_unordered_remove(ptr noundef %2, i32 noundef %8) #7
  br label %13

12:                                               ; preds = %4
  tail call void @free(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !83 !PGOFuncName !93 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !94

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !95
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !97 !PGOFuncName !98 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !83 !PGOFuncName !99 {
  %3 = load i32, ptr %0, align 8, !tbaa !95
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !95
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  store ptr %9, ptr %5, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_vec_loc_statistics() local_unnamed_addr #4 !prof !72 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_allocation(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !100 !PGOFuncName !101 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %6, label %5, !prof !102

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #8
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %12, label %8, !prof !103

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = load i32, ptr %0, align 8, !tbaa !70
  br label %14

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %38, label %14, !prof !104

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %10, %8 ], [ 0, %12 ]
  %16 = phi i32 [ %11, %8 ], [ 0, %12 ]
  %17 = sub i32 %15, %16
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %20, label %19, !prof !105

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #8
  br label %20

20:                                               ; preds = %14, %19
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %24, label %22, !prof !106

22:                                               ; preds = %20
  %23 = add i32 %16, %1
  br label %38

24:                                               ; preds = %20
  %25 = icmp eq i32 %15, 0
  br i1 %25, label %33, label %26, !prof !107

26:                                               ; preds = %24
  %27 = icmp ult i32 %15, 16
  br i1 %27, label %28, label %30, !prof !108

28:                                               ; preds = %26
  %29 = shl nuw nsw i32 %15, 1
  br label %33

30:                                               ; preds = %26
  %31 = mul i32 %15, 3
  %32 = lshr i32 %31, 1
  br label %33

33:                                               ; preds = %24, %28, %30
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ], [ 4, %24 ]
  %35 = add i32 %16, %1
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %38, !prof !109

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %22, %37, %33, %12
  %39 = phi i32 [ 0, %12 ], [ %23, %22 ], [ %35, %37 ], [ %34, %33 ]
  ret i32 %39
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_reserve() unnamed_addr #0 !prof !83 !PGOFuncName !110 {
  %1 = load ptr, ptr @stack_vecs, align 8, !tbaa !85
  %2 = tail call fastcc i32 @VEC_void_p_base_space(ptr noundef %1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !111

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #7
  store ptr %5, ptr @stack_vecs, align 8, !tbaa !85
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !83 !PGOFuncName !112 {
  %3 = load i32, ptr %0, align 8, !tbaa !95
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !95
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_space(ptr noundef readonly %0) unnamed_addr #1 !prof !83 !PGOFuncName !113 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !111

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = load i32, ptr %0, align 8, !tbaa !95
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @vec_gc_p_reserve, ptr @vec_gc_o_reserve_1, i64 1348832}
!36 = !{ptr @vec_gc_o_reserve_1, ptr @calculate_allocation, i64 1400487}
!37 = !{ptr @vec_gc_o_reserve_1, ptr @ggc_free, i64 1}
!38 = !{ptr @vec_gc_o_reserve_1, ptr @ggc_realloc_stat, i64 1400481}
!39 = !{ptr @vec_gc_p_reserve_exact, ptr @vec_gc_o_reserve_1, i64 51614}
!40 = !{ptr @vec_gc_o_reserve_exact, ptr @vec_gc_o_reserve_1, i64 41}
!41 = !{ptr @vec_heap_p_reserve, ptr @vec_heap_o_reserve_1, i64 1382372}
!42 = !{ptr @vec_heap_o_reserve_1, ptr @calculate_allocation, i64 4627666}
!43 = !{ptr @vec_heap_o_reserve_1, ptr @free, i64 1}
!44 = !{ptr @vec_heap_o_reserve_1, ptr @xrealloc, i64 4551407}
!45 = !{ptr @vec_heap_p_reserve_exact, ptr @vec_heap_o_reserve_1, i64 1249762}
!46 = !{ptr @vec_heap_o_reserve, ptr @vec_heap_o_reserve_1, i64 883803}
!47 = !{ptr @vec_heap_o_reserve_exact, ptr @vec_heap_o_reserve_1, i64 1111729}
!48 = !{ptr @vec_stack_p_reserve_exact_1, ptr @VEC_void_p_heap_safe_push, i64 7152796}
!49 = !{ptr @VEC_void_p_heap_safe_push, ptr @VEC_void_p_heap_reserve, i64 7152796}
!50 = !{ptr @VEC_void_p_heap_safe_push, ptr @VEC_void_p_base_quick_push, i64 7152796}
!51 = !{ptr @vec_stack_free, ptr @VEC_void_p_base_length, i64 7152796}
!52 = !{ptr @vec_stack_free, ptr @VEC_void_p_base_index, i64 14191902}
!53 = !{ptr @vec_stack_free, ptr @VEC_void_p_base_unordered_remove, i64 7152795}
!54 = !{ptr @vec_stack_free, ptr @free, i64 1}
!55 = !{ptr @calculate_allocation, ptr @fancy_abort, i64 2}
!56 = !{ptr @VEC_void_p_heap_reserve, ptr @VEC_void_p_base_space, i64 7152796}
!57 = !{ptr @VEC_void_p_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 1348832}
!60 = !{!"function_entry_count", i64 1400487}
!61 = !{!"vec.c:vec_gc_o_reserve_1"}
!62 = !{!"branch_weights", i32 6, i32 1400483}
!63 = !{!"branch_weights", i32 6, i32 1}
!64 = !{!65, !66, i64 4}
!65 = !{!"vec_prefix", !66, i64 0, !66, i64 4, !67, i64 8}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!"branch_weights", i32 1344468, i32 56016}
!70 = !{!65, !66, i64 0}
!71 = !{!"function_entry_count", i64 51614}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!"function_entry_count", i64 41}
!74 = !{!"function_entry_count", i64 1382372}
!75 = !{!"function_entry_count", i64 4627666}
!76 = !{!"vec.c:vec_heap_o_reserve_1"}
!77 = !{!"branch_weights", i32 76259, i32 4551409}
!78 = !{!"branch_weights", i32 76259, i32 1}
!79 = !{!"branch_weights", i32 4246462, i32 304948}
!80 = !{!"function_entry_count", i64 1249762}
!81 = !{!"function_entry_count", i64 883803}
!82 = !{!"function_entry_count", i64 1111729}
!83 = !{!"function_entry_count", i64 7152796}
!84 = !{!"vec.c:VEC_void_p_heap_safe_push"}
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !67, i64 0}
!87 = !{!"vec.c:vec_stack_o_reserve_1"}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"branch_weights", i32 1, i32 14191905}
!91 = !{!"branch_weights", i32 7152797, i32 7039109}
!92 = distinct !{!92, !89}
!93 = !{!"vec.c:VEC_void_p_base_length"}
!94 = !{!"branch_weights", i32 1, i32 7152797}
!95 = !{!96, !66, i64 0}
!96 = !{!"VEC_void_p_base", !66, i64 0, !66, i64 4, !67, i64 8}
!97 = !{!"function_entry_count", i64 14191904}
!98 = !{!"vec.c:VEC_void_p_base_index"}
!99 = !{!"vec.c:VEC_void_p_base_unordered_remove"}
!100 = !{!"function_entry_count", i64 6028153}
!101 = !{!"vec.c:calculate_allocation"}
!102 = !{!"branch_weights", i32 6028154, i32 1}
!103 = !{!"branch_weights", i32 5667192, i32 360963}
!104 = !{!"branch_weights", i32 76264, i32 5590929}
!105 = !{!"branch_weights", i32 5951891, i32 1}
!106 = !{!"branch_weights", i32 3615008, i32 2336884}
!107 = !{!"branch_weights", i32 3533528, i32 81481}
!108 = !{!"branch_weights", i32 65079, i32 16403}
!109 = !{!"branch_weights", i32 161, i32 3614848}
!110 = !{!"vec.c:VEC_void_p_heap_reserve"}
!111 = !{!"branch_weights", i32 2, i32 7152796}
!112 = !{!"vec.c:VEC_void_p_base_quick_push"}
!113 = !{!"vec.c:VEC_void_p_base_space"}
!114 = !{!96, !66, i64 4}
