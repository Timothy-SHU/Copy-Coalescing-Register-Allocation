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

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_heap_new_ex(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 40, ptr noundef nonnull @__func__.BLI_heap_new_ex) #6
  %4 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %5 = getelementptr inbounds %struct.Heap, ptr %3, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !38
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str) #6
  %10 = getelementptr inbounds %struct.Heap, ptr %3, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !41
  %11 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.1) #6
  %12 = getelementptr inbounds %struct.Heap, ptr %3, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !42
  ret ptr %3
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_heap_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 40, ptr noundef nonnull @__func__.BLI_heap_new_ex) #6
  %3 = getelementptr inbounds %struct.Heap, ptr %2, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !38
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 8, ptr noundef nonnull @.str) #6
  %6 = getelementptr inbounds %struct.Heap, ptr %2, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !41
  %7 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.1) #6
  %8 = getelementptr inbounds %struct.Heap, ptr %2, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !42
  ret ptr %2
}

; Function Attrs: nounwind uwtable
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
  tail call void %1(ptr noundef %14) #6
  %15 = add nuw nsw i64 %10, 1
  %16 = load i32, ptr %0, align 8, !tbaa !43
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %9, label %19, !llvm.loop !47

19:                                               ; preds = %9, %4, %2
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  tail call void %20(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  tail call void @BLI_memarena_free(ptr noundef %24) #6
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %0) #6
  ret void
}

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %15 = tail call ptr %10(ptr noundef %12, i64 noundef %14, ptr noundef nonnull @__func__.BLI_heap_insert) #6
  store ptr %15, ptr %11, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %8, %3
  %17 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !44
  store ptr %21, ptr %17, align 8, !tbaa !50
  br label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @BLI_memarena_alloc(ptr noundef %24, i64 noundef 16) #6
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %18, %20 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.HeapNode, ptr %27, i64 0, i32 1
  store float %1, ptr %28, align 8, !tbaa !51
  store ptr %2, ptr %27, align 8, !tbaa !44
  %29 = load i32, ptr %0, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.HeapNode, ptr %27, i64 0, i32 2
  store i32 %29, ptr %30, align 4, !tbaa !52
  %31 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = zext i32 %29 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr %27, ptr %34, align 8, !tbaa !34
  %35 = add i32 %29, 1
  store i32 %35, ptr %0, align 8, !tbaa !43
  br label %36

36:                                               ; preds = %59, %26
  %37 = phi i32 [ %29, %26 ], [ %60, %59 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %36
  %40 = add i32 %37, -1
  %41 = lshr i32 %40, 1
  %42 = load ptr, ptr %31, align 8, !tbaa !41
  %43 = zext nneg i32 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.HeapNode, ptr %45, i64 0, i32 1
  %47 = load float, ptr %46, align 8, !tbaa !51
  %48 = zext i32 %37 to i64
  %49 = getelementptr inbounds ptr, ptr %42, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.HeapNode, ptr %50, i64 0, i32 1
  %52 = load float, ptr %51, align 8, !tbaa !51
  %53 = fcmp uge float %47, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.HeapNode, ptr %45, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = getelementptr inbounds %struct.HeapNode, ptr %50, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !52
  store i32 %58, ptr %55, align 4, !tbaa !52
  store i32 %56, ptr %57, align 4, !tbaa !52
  store ptr %50, ptr %44, align 8, !tbaa !34
  store ptr %45, ptr %49, align 8, !tbaa !34
  br label %59

59:                                               ; preds = %54, %39
  %60 = phi i32 [ %41, %54 ], [ %37, %39 ]
  br i1 %53, label %36, label %61

61:                                               ; preds = %36, %59
  ret ptr %27
}

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_heap_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !43
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_heap_size(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !43
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_heap_top(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_heap_popmin(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  store ptr %7, ptr %4, align 8, !tbaa !44
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %8, ptr %6, align 8, !tbaa !50
  %9 = load i32, ptr %0, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !43
  br label %76

12:                                               ; preds = %1
  %13 = add i32 %9, -1
  %14 = load ptr, ptr %3, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.HeapNode, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = zext i32 %13 to i64
  %18 = getelementptr inbounds ptr, ptr %3, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.HeapNode, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !52
  store i32 %21, ptr %15, align 4, !tbaa !52
  store i32 %16, ptr %20, align 4, !tbaa !52
  store ptr %19, ptr %3, align 8, !tbaa !34
  store ptr %14, ptr %18, align 8, !tbaa !34
  store i32 %13, ptr %0, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %74, %12
  %23 = phi i32 [ 0, %12 ], [ %75, %74 ]
  %24 = shl i32 %23, 1
  %25 = or disjoint i32 %24, 1
  %26 = add i32 %24, 2
  %27 = icmp ult i32 %25, %13
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 8, !tbaa !41
  %30 = zext i32 %25 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.HeapNode, ptr %32, i64 0, i32 1
  %34 = load float, ptr %33, align 8, !tbaa !51
  %35 = zext i32 %23 to i64
  %36 = getelementptr inbounds ptr, ptr %29, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.HeapNode, ptr %37, i64 0, i32 1
  %39 = load float, ptr %38, align 8, !tbaa !51
  %40 = fcmp olt float %34, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %28, %22
  br label %42

42:                                               ; preds = %41, %28
  %43 = phi i32 [ %23, %41 ], [ %25, %28 ]
  %44 = icmp ult i32 %26, %13
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load ptr, ptr %2, align 8, !tbaa !41
  %47 = zext i32 %26 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.HeapNode, ptr %49, i64 0, i32 1
  %51 = load float, ptr %50, align 8, !tbaa !51
  %52 = zext i32 %43 to i64
  %53 = getelementptr inbounds ptr, ptr %46, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.HeapNode, ptr %54, i64 0, i32 1
  %56 = load float, ptr %55, align 8, !tbaa !51
  %57 = fcmp olt float %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %45, %42
  %60 = phi i32 [ %26, %58 ], [ %43, %45 ], [ %43, %42 ]
  %61 = icmp eq i32 %60, %23
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %2, align 8, !tbaa !41
  %64 = zext i32 %23 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.HeapNode, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !52
  %69 = zext i32 %60 to i64
  %70 = getelementptr inbounds ptr, ptr %63, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.HeapNode, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !52
  store i32 %73, ptr %67, align 4, !tbaa !52
  store i32 %68, ptr %72, align 4, !tbaa !52
  store ptr %71, ptr %65, align 8, !tbaa !34
  store ptr %66, ptr %70, align 8, !tbaa !34
  br label %74

74:                                               ; preds = %62, %59
  %75 = phi i32 [ %60, %62 ], [ %23, %59 ]
  br i1 %61, label %76, label %22

76:                                               ; preds = %74, %11
  ret ptr %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_heap_remove(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.HeapNode, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Heap, ptr %0, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %4, %6 ], [ %11, %8 ]
  %10 = add i32 %9, -1
  %11 = lshr i32 %10, 1
  %12 = load ptr, ptr %7, align 8, !tbaa !41
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.HeapNode, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = zext i32 %9 to i64
  %19 = getelementptr inbounds ptr, ptr %12, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.HeapNode, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !52
  store i32 %22, ptr %16, align 4, !tbaa !52
  store i32 %17, ptr %21, align 4, !tbaa !52
  store ptr %20, ptr %14, align 8, !tbaa !34
  store ptr %15, ptr %19, align 8, !tbaa !34
  %23 = icmp ult i32 %10, 2
  br i1 %23, label %24, label %8, !llvm.loop !53

24:                                               ; preds = %8, %2
  %25 = tail call ptr @BLI_heap_popmin(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BLI_heap_node_value(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.HeapNode, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !51
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_heap_node_ptr(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!38 = !{!39, !40, i64 4}
!39 = !{!"Heap", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 32}
!42 = !{!39, !35, i64 8}
!43 = !{!39, !40, i64 0}
!44 = !{!45, !35, i64 0}
!45 = !{!"HeapNode", !35, i64 0, !46, i64 8, !40, i64 12}
!46 = !{!"float", !36, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!39, !35, i64 16}
!51 = !{!45, !46, i64 8}
!52 = !{!45, !40, i64 12}
!53 = distinct !{!53, !48, !49}
