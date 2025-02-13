; ModuleID = 'pointer-set.c'
source_filename = "pointer-set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pointer_set_t = type { i64, i64, i64, ptr }
%struct.pointer_map_t = type { i64, i64, i64, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @pointer_set_create() local_unnamed_addr #0 {
  %1 = tail call ptr @xmalloc(i64 noundef 32) #7
  %2 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !6
  store i64 8, ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 1
  store i64 256, ptr %3, align 8, !tbaa !13
  %4 = tail call ptr @xcalloc(i64 noundef 256, i64 noundef 8) #7
  %5 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !14
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pointer_set_destroy(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @pointer_set_contains(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !13
  %5 = load i64, ptr %0, align 8, !tbaa !12
  %6 = tail call fastcc i64 @hash1(ptr noundef %1, i64 noundef %4, i64 noundef %5) #8
  %7 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds ptr, ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %23, label %12

12:                                               ; preds = %2, %16
  %13 = phi ptr [ %21, %16 ], [ %10, %2 ]
  %14 = phi i64 [ %19, %16 ], [ %6, %2 ]
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = add i64 %14, 1
  %18 = icmp eq i64 %17, %4
  %19 = select i1 %18, i64 0, i64 %17
  %20 = getelementptr inbounds ptr, ptr %8, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %12

23:                                               ; preds = %16, %12, %2
  %24 = phi i32 [ 1, %2 ], [ 0, %12 ], [ 1, %16 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @hash1(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 {
  %4 = sub i64 64, %2
  %5 = ptrtoint ptr %0 to i64
  %6 = mul i64 %5, -7046029254386353130
  %7 = lshr i64 %6, %4
  %8 = add i64 %1, -1
  %9 = and i64 %7, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @pointer_set_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = lshr i64 %6, 2
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = load i64, ptr %0, align 8, !tbaa !12
  br label %34

13:                                               ; preds = %2
  %14 = load i64, ptr %0, align 8, !tbaa !12
  %15 = add i64 %14, 1
  %16 = shl i64 %6, 1
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #7
  %18 = load i64, ptr %5, align 8, !tbaa !13
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %29, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !14
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = tail call fastcc i64 @insert_aux(ptr noundef %26, ptr noundef %17, i64 noundef %16, i64 noundef %15) #8
  %28 = getelementptr inbounds ptr, ptr %17, i64 %27
  store ptr %26, ptr %28, align 8, !tbaa !15
  %29 = add nuw i64 %23, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %22, !llvm.loop !16

31:                                               ; preds = %22, %13
  %32 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void @free(ptr noundef %33) #8
  store i64 %16, ptr %5, align 8, !tbaa !13
  store i64 %15, ptr %0, align 8, !tbaa !12
  store ptr %17, ptr %32, align 8, !tbaa !14
  br label %34

34:                                               ; preds = %9, %31
  %35 = phi i64 [ %12, %9 ], [ %15, %31 ]
  %36 = phi i64 [ %6, %9 ], [ %16, %31 ]
  %37 = phi ptr [ %11, %9 ], [ %17, %31 ]
  %38 = tail call fastcc i64 @insert_aux(ptr noundef %1, ptr noundef %37, i64 noundef %36, i64 noundef %35) #8
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  store ptr %1, ptr %39, align 8, !tbaa !15
  %43 = load i64, ptr %3, align 8, !tbaa !6
  %44 = add i64 %43, 1
  store i64 %44, ptr %3, align 8, !tbaa !6
  br label %45

45:                                               ; preds = %34, %42
  %46 = phi i32 [ 0, %42 ], [ 1, %34 ]
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @insert_aux(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 {
  %5 = tail call fastcc i64 @hash1(ptr noundef %0, i64 noundef %2, i64 noundef %3) #8
  %6 = getelementptr inbounds ptr, ptr %1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, %0
  %9 = icmp eq ptr %7, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %13, %4
  %12 = phi i64 [ %5, %4 ], [ %17, %13 ]
  ret i64 %12

13:                                               ; preds = %4, %13
  %14 = phi i64 [ %17, %13 ], [ %5, %4 ]
  %15 = add i64 %14, 1
  %16 = icmp eq i64 %15, %2
  %17 = select i1 %16, i64 0, i64 %15
  %18 = getelementptr inbounds ptr, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = icmp eq ptr %19, %0
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %11, label %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pointer_set_traverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %21
  %10 = phi i64 [ %5, %7 ], [ %22, %21 ]
  %11 = phi i64 [ 0, %7 ], [ %23, %21 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call zeroext i8 %1(ptr noundef nonnull %14, ptr noundef %2) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %4, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i64 [ %20, %19 ], [ %10, %9 ]
  %23 = add nuw i64 %11, 1
  %24 = icmp ult i64 %23, %22
  br i1 %24, label %9, label %25, !llvm.loop !18

25:                                               ; preds = %21, %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @pointer_map_create() local_unnamed_addr #0 {
  %1 = tail call ptr @xmalloc(i64 noundef 40) #7
  %2 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !19
  store i64 8, ptr %1, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 1
  store i64 256, ptr %3, align 8, !tbaa !22
  %4 = tail call ptr @xcalloc(i64 noundef 256, i64 noundef 8) #7
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !23
  %6 = load i64, ptr %3, align 8, !tbaa !22
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #7
  %8 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !24
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pointer_map_destroy(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  tail call void @free(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pointer_map_contains(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !22
  %5 = load i64, ptr %0, align 8, !tbaa !21
  %6 = tail call fastcc i64 @hash1(ptr noundef %1, i64 noundef %4, i64 noundef %5) #8
  %7 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds ptr, ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %21, %2
  %13 = phi i64 [ %6, %2 ], [ %24, %21 ]
  %14 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  br label %28

17:                                               ; preds = %2, %21
  %18 = phi ptr [ %26, %21 ], [ %10, %2 ]
  %19 = phi i64 [ %24, %21 ], [ %6, %2 ]
  %20 = icmp eq ptr %18, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = add i64 %19, 1
  %23 = icmp eq i64 %22, %4
  %24 = select i1 %23, i64 0, i64 %22
  %25 = getelementptr inbounds ptr, ptr %8, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %12, label %17

28:                                               ; preds = %17, %12
  %29 = phi ptr [ %16, %12 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pointer_map_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !22
  %7 = lshr i64 %6, 2
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = load i64, ptr %0, align 8, !tbaa !21
  br label %45

13:                                               ; preds = %2
  %14 = load i64, ptr %0, align 8, !tbaa !21
  %15 = add i64 %14, 1
  %16 = shl i64 %6, 1
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #7
  %18 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8, !tbaa !22
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %21, %37
  %25 = phi i64 [ 0, %21 ], [ %38, %37 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !23
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = tail call fastcc i64 @insert_aux(ptr noundef nonnull %28, ptr noundef %17, i64 noundef %16, i64 noundef %15) #8
  %32 = getelementptr inbounds ptr, ptr %17, i64 %31
  store ptr %28, ptr %32, align 8, !tbaa !15
  %33 = load ptr, ptr %23, align 8, !tbaa !24
  %34 = getelementptr inbounds ptr, ptr %33, i64 %25
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  %36 = getelementptr inbounds ptr, ptr %18, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %24, %30
  %38 = add nuw i64 %25, 1
  %39 = icmp eq i64 %38, %19
  br i1 %39, label %40, label %24, !llvm.loop !25

40:                                               ; preds = %37, %13
  %41 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  tail call void @free(ptr noundef %42) #8
  %43 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  tail call void @free(ptr noundef %44) #8
  store i64 %16, ptr %5, align 8, !tbaa !22
  store i64 %15, ptr %0, align 8, !tbaa !21
  store ptr %17, ptr %41, align 8, !tbaa !23
  store ptr %18, ptr %43, align 8, !tbaa !24
  br label %45

45:                                               ; preds = %9, %40
  %46 = phi i64 [ %12, %9 ], [ %15, %40 ]
  %47 = phi i64 [ %6, %9 ], [ %16, %40 ]
  %48 = phi ptr [ %11, %9 ], [ %17, %40 ]
  %49 = tail call fastcc i64 @insert_aux(ptr noundef %1, ptr noundef %48, i64 noundef %47, i64 noundef %46) #8
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, ptr %3, align 8, !tbaa !19
  %55 = add i64 %54, 1
  store i64 %55, ptr %3, align 8, !tbaa !19
  store ptr %1, ptr %50, align 8, !tbaa !15
  br label %56

56:                                               ; preds = %53, %45
  %57 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !24
  %59 = getelementptr inbounds ptr, ptr %58, i64 %49
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pointer_map_traverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %24
  %11 = phi i64 [ %6, %8 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %8 ], [ %26, %24 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !23
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %4, align 8, !tbaa !24
  %19 = getelementptr inbounds ptr, ptr %18, i64 %12
  %20 = tail call zeroext i8 %1(ptr noundef nonnull %15, ptr noundef %19, ptr noundef %2) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i64, ptr %5, align 8, !tbaa !22
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i64 [ %23, %22 ], [ %11, %10 ]
  %26 = add nuw i64 %12, 1
  %27 = icmp ult i64 %26, %25
  br i1 %27, label %10, label %28, !llvm.loop !26

28:                                               ; preds = %24, %17, %3
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 16}
!7 = !{!"pointer_set_t", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!7, !8, i64 8}
!14 = !{!7, !11, i64 24}
!15 = !{!11, !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !8, i64 16}
!20 = !{!"pointer_map_t", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 32}
!21 = !{!20, !8, i64 0}
!22 = !{!20, !8, i64 8}
!23 = !{!20, !11, i64 24}
!24 = !{!20, !11, i64 32}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
