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
define dso_local ptr @vec_gc_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @calculate_allocation(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  tail call void @ggc_free(ptr noundef nonnull %0) #9
  br label %19

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = mul i64 %12, %3
  %14 = add i64 %13, %2
  %15 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %14) #9
  %16 = getelementptr inbounds %struct.vec_prefix, ptr %15, i64 0, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !6
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, ptr %15, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %11, %18, %8, %10
  %20 = phi ptr [ null, %10 ], [ null, %8 ], [ %15, %18 ], [ %15, %11 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_allocation(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #9
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = load i32, ptr %0, align 8, !tbaa !11
  br label %14

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %10, %8 ], [ 0, %12 ]
  %16 = phi i32 [ %11, %8 ], [ 0, %12 ]
  %17 = sub i32 %15, %16
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #9
  br label %20

20:                                               ; preds = %14, %19
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = add i32 %16, %1
  br label %37

24:                                               ; preds = %20
  %25 = icmp eq i32 %15, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = icmp ult i32 %15, 16
  br i1 %27, label %28, label %30

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
  %36 = tail call i32 @llvm.umax.i32(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %22, %12
  %38 = phi i32 [ 0, %12 ], [ %23, %22 ], [ %36, %33 ]
  ret i32 %38
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_gc_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @calculate_allocation(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %0) #8
  br label %19

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = mul i64 %12, %3
  %14 = add i64 %13, %2
  %15 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %14) #9
  %16 = getelementptr inbounds %struct.vec_prefix, ptr %15, i64 0, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !6
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, ptr %15, align 8, !tbaa !11
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
define dso_local ptr @vec_heap_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_heap_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef returned %1) local_unnamed_addr #0 {
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef %1) #8
  store i32 0, ptr %1, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.vec_prefix, ptr %1, i64 0, i32 1
  store i32 %0, ptr %3, align 4, !tbaa !6
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_void_p_heap_reserve() #8
  %2 = load ptr, ptr @stack_vecs, align 8, !tbaa !12
  tail call fastcc void @VEC_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @stack_vecs, align 8, !tbaa !12
  %2 = tail call fastcc i32 @VEC_void_p_base_space(ptr noundef %1) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #8
  store ptr %5, ptr @stack_vecs, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !14
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !14
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = load i32, ptr %0, align 8, !tbaa !14
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = load ptr, ptr @stack_vecs, align 8
  %7 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %6) #8
  br label %8

8:                                                ; preds = %11, %5
  %9 = phi i32 [ %7, %5 ], [ %12, %11 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = add i32 %9, -1
  %13 = tail call fastcc ptr @VEC_void_p_base_index(ptr noundef %6, i32 noundef %12) #8
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %17, label %8, !llvm.loop !17

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) #8
  br label %28

17:                                               ; preds = %11
  tail call fastcc void @VEC_void_p_base_unordered_remove(ptr noundef %6, i32 noundef %12) #8
  %18 = load i32, ptr %0, align 8, !tbaa !11
  %19 = add i32 %18, %1
  %20 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef null, i32 noundef %19, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %0, align 8, !tbaa !11
  store i32 %23, ptr %20, align 8, !tbaa !11
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
define internal fastcc i32 @VEC_void_p_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !14
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !14
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  store ptr %9, ptr %5, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0) #8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vec_stack_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1) #8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vec_stack_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stack_vecs, align 8
  %3 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %2) #8
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %3, %1 ], [ %8, %7 ]
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  %9 = tail call fastcc ptr @VEC_void_p_base_index(ptr noundef %2, i32 noundef %8) #8
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %4, !llvm.loop !19

11:                                               ; preds = %7
  tail call fastcc void @VEC_void_p_base_unordered_remove(ptr noundef %2, i32 noundef %8) #8
  br label %13

12:                                               ; preds = %4
  tail call void @free(ptr noundef %0) #8
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_vec_loc_statistics() local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 4}
!7 = !{!"vec_prefix", !8, i64 0, !8, i64 4, !9, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"VEC_void_p_base", !8, i64 0, !8, i64 4, !9, i64 8}
!16 = !{!15, !8, i64 4}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
