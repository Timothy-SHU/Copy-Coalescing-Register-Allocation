; ModuleID = 'blender/source/blender/blenlib/intern/BLI_heap.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Heap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.HeapNode = type { ptr, float, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_heap_new_ex = private unnamed_addr constant [16 x i8] c"BLI_heap_new_ex\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"BLIHeapTree\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"heap arena\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BLI_heap_insert = private unnamed_addr constant [16 x i8] c"BLI_heap_insert\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_heap_new_ex(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 40, ptr noundef nonnull @__func__.BLI_heap_new_ex) #7
  %4 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %5 = getelementptr inbounds %struct.Heap, ptr %3, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !38
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.Heap, ptr %3, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !41
  %11 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.1) #7
  %12 = getelementptr inbounds %struct.Heap, ptr %3, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_heap_new() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_heap_new_ex(i32 noundef 1) #8
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_heap_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !43
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !41
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void %1(ptr noundef %14) #7
  %15 = add nuw nsw i64 %10, 1
  %16 = load i32, ptr %0, align 8, !tbaa !43
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %9, label %19, !llvm.loop !47

19:                                               ; preds = %9, %4, %2
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  tail call void %20(ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  tail call void @BLI_memarena_free(ptr noundef %24) #7
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %0) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_heap_insert(ptr nocapture noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = shl i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !38
  %10 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = zext i32 %9 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call ptr %10(ptr noundef %12, i64 noundef %14, ptr noundef nonnull @__func__.BLI_heap_insert) #7
  store ptr %15, ptr %11, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %8, %3
  %17 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !44
  store ptr %21, ptr %17, align 8, !tbaa !49
  br label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @BLI_memarena_alloc(ptr noundef %24, i64 noundef 16) #7
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %18, %20 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.HeapNode, ptr %27, i64 0, i32 1
  store float %1, ptr %28, align 8, !tbaa !50
  store ptr %2, ptr %27, align 8, !tbaa !44
  %29 = load i32, ptr %0, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.HeapNode, ptr %27, i64 0, i32 2
  store i32 %29, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = zext i32 %29 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr %27, ptr %34, align 8, !tbaa !34
  %35 = add i32 %29, 1
  store i32 %35, ptr %0, align 8, !tbaa !43
  tail call fastcc void @heap_up(ptr noundef nonnull %0, i32 noundef %29) #8
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @heap_up(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !52 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  br label %6

6:                                                ; preds = %4, %22
  %7 = phi i32 [ %1, %4 ], [ %9, %22 ]
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 1
  %10 = load ptr, ptr %5, align 8, !tbaa !41
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.HeapNode, ptr %13, i64 0, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !50
  %16 = zext i32 %7 to i64
  %17 = getelementptr inbounds ptr, ptr %10, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.HeapNode, ptr %18, i64 0, i32 1
  %20 = load float, ptr %19, align 8, !tbaa !50
  %21 = fcmp olt float %15, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  tail call fastcc void @heap_swap(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %7) #8
  %23 = icmp ult i32 %8, 2
  br i1 %23, label %24, label %6

24:                                               ; preds = %22, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_heap_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !43
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_heap_size(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !43
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_heap_top(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_heap_popmin(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  store ptr %7, ptr %4, align 8, !tbaa !44
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %8, ptr %6, align 8, !tbaa !49
  %9 = load i32, ptr %0, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !43
  br label %16

12:                                               ; preds = %1
  %13 = add i32 %9, -1
  tail call fastcc void @heap_swap(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %13) #8
  %14 = load i32, ptr %0, align 8, !tbaa !43
  %15 = add i32 %14, -1
  store i32 %15, ptr %0, align 8, !tbaa !43
  tail call fastcc void @heap_down(ptr noundef nonnull %0) #8
  br label %16

16:                                               ; preds = %12, %11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @heap_swap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.HeapNode, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %5, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.HeapNode, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !51
  store i32 %15, ptr %9, align 4, !tbaa !51
  store i32 %10, ptr %14, align 4, !tbaa !51
  store ptr %13, ptr %7, align 8, !tbaa !34
  store ptr %8, ptr %12, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @heap_down(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !54 {
  %2 = load i32, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  br label %4

4:                                                ; preds = %44, %1
  %5 = phi i32 [ 0, %1 ], [ %42, %44 ]
  %6 = shl i32 %5, 1
  %7 = or disjoint i32 %6, 1
  %8 = add i32 %6, 2
  %9 = icmp ult i32 %7, %2
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load ptr, ptr %3, align 8, !tbaa !41
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.HeapNode, ptr %14, i64 0, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !50
  %17 = zext i32 %5 to i64
  %18 = getelementptr inbounds ptr, ptr %11, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.HeapNode, ptr %19, i64 0, i32 1
  %21 = load float, ptr %20, align 8, !tbaa !50
  %22 = fcmp olt float %16, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %10, %4
  br label %24

24:                                               ; preds = %10, %23
  %25 = phi i32 [ %5, %23 ], [ %7, %10 ]
  %26 = icmp ult i32 %8, %2
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !tbaa !41
  %29 = zext i32 %8 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.HeapNode, ptr %31, i64 0, i32 1
  %33 = load float, ptr %32, align 8, !tbaa !50
  %34 = zext i32 %25 to i64
  %35 = getelementptr inbounds ptr, ptr %28, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.HeapNode, ptr %36, i64 0, i32 1
  %38 = load float, ptr %37, align 8, !tbaa !50
  %39 = fcmp olt float %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %27, %24
  %42 = phi i32 [ %8, %40 ], [ %25, %27 ], [ %25, %24 ]
  %43 = icmp eq i32 %42, %5
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call fastcc void @heap_swap(ptr noundef nonnull %0, i32 noundef %5, i32 noundef %42) #8
  br label %4

45:                                               ; preds = %41
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_heap_remove(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.HeapNode, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !51
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ %4, %2 ]
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 1
  tail call fastcc void @heap_swap(ptr noundef %0, i32 noundef %9, i32 noundef %7) #8
  %10 = icmp ult i32 %8, 2
  br i1 %10, label %11, label %6, !llvm.loop !55

11:                                               ; preds = %6, %2
  %12 = tail call ptr @BLI_heap_popmin(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BLI_heap_node_value(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.HeapNode, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !50
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_heap_node_ptr(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!38 = !{!39, !40, i64 4}
!39 = !{!"Heap", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 32}
!42 = !{!39, !35, i64 8}
!43 = !{!39, !40, i64 0}
!44 = !{!45, !35, i64 0}
!45 = !{!"HeapNode", !35, i64 0, !46, i64 8, !40, i64 12}
!46 = !{!"float", !36, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!39, !35, i64 16}
!50 = !{!45, !46, i64 8}
!51 = !{!45, !40, i64 12}
!52 = !{!"BLI_heap.c:heap_up"}
!53 = !{!"BLI_heap.c:heap_swap"}
!54 = !{!"BLI_heap.c:heap_down"}
!55 = distinct !{!55, !48}
