; ModuleID = 'vec.c'
source_filename = "vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vec_prefix = type { i32, i32, [1 x ptr] }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [6 x i8] c"vec.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stack_vecs = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !62 !PGOFuncName !63 {
  %6 = tail call fastcc i32 @calculate_allocation(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !64

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10, !prof !65

10:                                               ; preds = %8
  tail call void @ggc_free(ptr noundef nonnull %0) #8
  br label %19

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = mul i64 %12, %3
  %14 = add i64 %13, %2
  %15 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %14) #8
  %16 = getelementptr inbounds %struct.vec_prefix, ptr %15, i64 0, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !66
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19, !prof !71

18:                                               ; preds = %11
  store i32 0, ptr %15, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %11, %18, %8, %10
  %20 = phi ptr [ null, %10 ], [ null, %8 ], [ %15, %18 ], [ %15, %11 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_allocation(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !73 !PGOFuncName !74 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %6, label %5, !prof !75

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #8
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %12, label %8, !prof !76

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !66
  %11 = load i32, ptr %0, align 8, !tbaa !72
  br label %14

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %38, label %14, !prof !77

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %10, %8 ], [ 0, %12 ]
  %16 = phi i32 [ %11, %8 ], [ 0, %12 ]
  %17 = sub i32 %15, %16
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %20, label %19, !prof !78

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #8
  br label %20

20:                                               ; preds = %14, %19
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %24, label %22, !prof !79

22:                                               ; preds = %20
  %23 = add i32 %16, %1
  br label %38

24:                                               ; preds = %20
  %25 = icmp eq i32 %15, 0
  br i1 %25, label %33, label %26, !prof !80

26:                                               ; preds = %24
  %27 = icmp ult i32 %15, 16
  br i1 %27, label %28, label %30, !prof !81

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
  br i1 %36, label %37, label %38, !prof !82

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %22, %37, %33, %12
  %39 = phi i32 [ 0, %12 ], [ %23, %22 ], [ %35, %37 ], [ %34, %33 ]
  ret i32 %39
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !84 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !85 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !86 {
  %3 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !87 !PGOFuncName !88 {
  %6 = tail call fastcc i32 @calculate_allocation(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !89

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10, !prof !90

10:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %0) #7
  br label %19

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = mul i64 %12, %3
  %14 = add i64 %13, %2
  %15 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %14) #8
  %16 = getelementptr inbounds %struct.vec_prefix, ptr %15, i64 0, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !66
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19, !prof !91

18:                                               ; preds = %11
  store i32 0, ptr %15, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %11, %18, %8, %10
  %20 = phi ptr [ null, %10 ], [ null, %8 ], [ %15, %18 ], [ %15, %11 ]
  ret ptr %20
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !92 {
  %3 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !93 {
  %5 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !94 {
  %5 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef returned %1) local_unnamed_addr #0 !prof !95 {
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef %1) #7
  store i32 0, ptr %1, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.vec_prefix, ptr %1, i64 0, i32 1
  store i32 %0, ptr %3, align 4, !tbaa !66
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !95 !PGOFuncName !96 {
  tail call fastcc void @VEC_void_p_heap_reserve() #7
  %2 = load ptr, ptr @stack_vecs, align 8, !tbaa !97
  tail call fastcc void @VEC_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_reserve() unnamed_addr #0 !prof !95 !PGOFuncName !99 {
  %1 = load ptr, ptr @stack_vecs, align 8, !tbaa !97
  %2 = tail call fastcc i32 @VEC_void_p_base_space(ptr noundef %1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !100

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #7
  store ptr %5, ptr @stack_vecs, align 8, !tbaa !97
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !95 !PGOFuncName !101 {
  %3 = load i32, ptr %0, align 8, !tbaa !102
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !102
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !95 !PGOFuncName !104 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !100

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !105
  %6 = load i32, ptr %0, align 8, !tbaa !102
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !106 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !106 !PGOFuncName !107 {
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
  br i1 %14, label %17, label %8, !llvm.loop !108

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) #7
  br label %28

17:                                               ; preds = %11
  tail call fastcc void @VEC_void_p_base_unordered_remove(ptr noundef %6, i32 noundef %12) #7
  %18 = load i32, ptr %0, align 8, !tbaa !72
  %19 = add i32 %18, %1
  %20 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef null, i32 noundef %19, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %0, align 8, !tbaa !72
  store i32 %23, ptr %20, align 8, !tbaa !72
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !95 !PGOFuncName !110 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !111

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !102
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !112 !PGOFuncName !113 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !prof !95 !PGOFuncName !114 {
  %3 = load i32, ptr %0, align 8, !tbaa !102
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !102
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  store ptr %9, ptr %5, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !106 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !106 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !106 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vec_stack_free(ptr noundef %0) local_unnamed_addr #0 !prof !95 {
  %2 = load ptr, ptr @stack_vecs, align 8
  %3 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %2) #7
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %3, %1 ], [ %8, %7 ]
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !115

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  %9 = tail call fastcc ptr @VEC_void_p_base_index(ptr noundef %2, i32 noundef %8) #7
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %4, !prof !116, !llvm.loop !117

11:                                               ; preds = %7
  tail call fastcc void @VEC_void_p_base_unordered_remove(ptr noundef %2, i32 noundef %8) #7
  br label %13

12:                                               ; preds = %4
  tail call void @free(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_vec_loc_statistics() local_unnamed_addr #6 !prof !106 {
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!60}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!36 = !{ptr @vec_gc_p_reserve, ptr @vec_gc_o_reserve_1, i64 2418678}
!37 = !{ptr @vec_gc_o_reserve_1, ptr @calculate_allocation, i64 2839341}
!38 = !{ptr @vec_gc_o_reserve_1, ptr @ggc_free, i64 1}
!39 = !{ptr @vec_gc_o_reserve_1, ptr @ggc_realloc_stat, i64 2831290}
!40 = !{ptr @calculate_allocation, ptr @fancy_abort, i64 2}
!41 = !{ptr @vec_gc_p_reserve_exact, ptr @vec_gc_o_reserve_1, i64 371630}
!42 = !{ptr @vec_gc_o_reserve, ptr @vec_gc_o_reserve_1, i64 17484}
!43 = !{ptr @vec_gc_o_reserve_exact, ptr @vec_gc_o_reserve_1, i64 31549}
!44 = !{ptr @vec_heap_p_reserve, ptr @vec_heap_o_reserve_1, i64 4929063}
!45 = !{ptr @vec_heap_o_reserve_1, ptr @calculate_allocation, i64 18198662}
!46 = !{ptr @vec_heap_o_reserve_1, ptr @free, i64 1}
!47 = !{ptr @vec_heap_o_reserve_1, ptr @xrealloc, i64 17725240}
!48 = !{ptr @vec_heap_p_reserve_exact, ptr @vec_heap_o_reserve_1, i64 6170554}
!49 = !{ptr @vec_heap_o_reserve, ptr @vec_heap_o_reserve_1, i64 4450966}
!50 = !{ptr @vec_heap_o_reserve_exact, ptr @vec_heap_o_reserve_1, i64 2648079}
!51 = !{ptr @vec_stack_p_reserve_exact_1, ptr @VEC_void_p_heap_safe_push, i64 9643832}
!52 = !{ptr @VEC_void_p_heap_safe_push, ptr @VEC_void_p_heap_reserve, i64 9643832}
!53 = !{ptr @VEC_void_p_heap_safe_push, ptr @VEC_void_p_base_quick_push, i64 9643832}
!54 = !{ptr @VEC_void_p_heap_reserve, ptr @VEC_void_p_base_space, i64 9643832}
!55 = !{ptr @VEC_void_p_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!56 = !{ptr @vec_stack_free, ptr @VEC_void_p_base_length, i64 9643832}
!57 = !{ptr @vec_stack_free, ptr @VEC_void_p_base_index, i64 18620586}
!58 = !{ptr @vec_stack_free, ptr @VEC_void_p_base_unordered_remove, i64 9643831}
!59 = !{ptr @vec_stack_free, ptr @free, i64 1}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 2418678}
!62 = !{!"function_entry_count", i64 2839341}
!63 = !{!"vec.c:vec_gc_o_reserve_1"}
!64 = !{!"branch_weights", i32 8051, i32 2831292}
!65 = !{!"branch_weights", i32 8051, i32 1}
!66 = !{!67, !68, i64 4}
!67 = !{!"vec_prefix", !68, i64 0, !68, i64 4, !69, i64 8}
!68 = !{!"int", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!"branch_weights", i32 2689987, i32 141306}
!72 = !{!67, !68, i64 0}
!73 = !{!"function_entry_count", i64 21038003}
!74 = !{!"vec.c:calculate_allocation"}
!75 = !{!"branch_weights", i32 21038004, i32 1}
!76 = !{!"branch_weights", i32 18414757, i32 2623248}
!77 = !{!"branch_weights", i32 481472, i32 17933286}
!78 = !{!"branch_weights", i32 20556533, i32 1}
!79 = !{!"branch_weights", i32 11816192, i32 8740342}
!80 = !{!"branch_weights", i32 9971141, i32 1845052}
!81 = !{!"branch_weights", i32 1148799, i32 696254}
!82 = !{!"branch_weights", i32 70271, i32 11745922}
!83 = !{!"function_entry_count", i64 371630}
!84 = !{!"function_entry_count", i64 17484}
!85 = !{!"function_entry_count", i64 31549}
!86 = !{!"function_entry_count", i64 4929063}
!87 = !{!"function_entry_count", i64 18198662}
!88 = !{!"vec.c:vec_heap_o_reserve_1"}
!89 = !{!"branch_weights", i32 473422, i32 17725242}
!90 = !{!"branch_weights", i32 473422, i32 1}
!91 = !{!"branch_weights", i32 15243300, i32 2481943}
!92 = !{!"function_entry_count", i64 6170554}
!93 = !{!"function_entry_count", i64 4450966}
!94 = !{!"function_entry_count", i64 2648079}
!95 = !{!"function_entry_count", i64 9643832}
!96 = !{!"vec.c:VEC_void_p_heap_safe_push"}
!97 = !{!98, !98, i64 0}
!98 = !{!"any pointer", !69, i64 0}
!99 = !{!"vec.c:VEC_void_p_heap_reserve"}
!100 = !{!"branch_weights", i32 2, i32 9643832}
!101 = !{!"vec.c:VEC_void_p_base_quick_push"}
!102 = !{!103, !68, i64 0}
!103 = !{!"VEC_void_p_base", !68, i64 0, !68, i64 4, !69, i64 8}
!104 = !{!"vec.c:VEC_void_p_base_space"}
!105 = !{!103, !68, i64 4}
!106 = !{!"function_entry_count", i64 0}
!107 = !{!"vec.c:vec_stack_o_reserve_1"}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"vec.c:VEC_void_p_base_length"}
!111 = !{!"branch_weights", i32 1, i32 9643833}
!112 = !{!"function_entry_count", i64 18620588}
!113 = !{!"vec.c:VEC_void_p_base_index"}
!114 = !{!"vec.c:VEC_void_p_base_unordered_remove"}
!115 = !{!"branch_weights", i32 1, i32 18620589}
!116 = !{!"branch_weights", i32 9643833, i32 8976757}
!117 = distinct !{!117, !109}
