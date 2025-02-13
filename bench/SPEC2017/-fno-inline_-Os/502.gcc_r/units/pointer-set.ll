; ModuleID = 'pointer-set.c'
source_filename = "pointer-set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pointer_set_t = type { i64, i64, i64, ptr }
%struct.pointer_map_t = type { i64, i64, i64, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @pointer_set_create() local_unnamed_addr #0 !prof !51 {
  %1 = tail call ptr @xmalloc(i64 noundef 32) #7
  %2 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !52
  store i64 8, ptr %1, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 1
  store i64 256, ptr %3, align 8, !tbaa !59
  %4 = tail call ptr @xcalloc(i64 noundef 256, i64 noundef 8) #7
  %5 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !60
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pointer_set_destroy(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @pointer_set_contains(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !61 {
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !59
  %5 = load i64, ptr %0, align 8, !tbaa !58
  %6 = tail call fastcc i64 @hash1(ptr noundef %1, i64 noundef %4, i64 noundef %5) #8
  %7 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %23, label %12, !prof !63

12:                                               ; preds = %2, %16
  %13 = phi ptr [ %21, %16 ], [ %10, %2 ]
  %14 = phi i64 [ %19, %16 ], [ %6, %2 ]
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16, !prof !64

16:                                               ; preds = %12
  %17 = add i64 %14, 1
  %18 = icmp eq i64 %17, %4
  %19 = select i1 %18, i64 0, i64 %17, !prof !65
  %20 = getelementptr inbounds ptr, ptr %8, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %12, !prof !66

23:                                               ; preds = %16, %12, %2
  %24 = phi i32 [ 1, %2 ], [ 0, %12 ], [ 1, %16 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @hash1(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 !prof !67 !PGOFuncName !68 {
  %4 = sub i64 64, %2
  %5 = ptrtoint ptr %0 to i64
  %6 = mul i64 %5, -7046029254386353130
  %7 = lshr i64 %6, %4
  %8 = add i64 %1, -1
  %9 = and i64 %7, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @pointer_set_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !69 {
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !59
  %7 = lshr i64 %6, 2
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %13, label %9, !prof !70

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = load i64, ptr %0, align 8, !tbaa !58
  br label %34

13:                                               ; preds = %2
  %14 = load i64, ptr %0, align 8, !tbaa !58
  %15 = add i64 %14, 1
  %16 = shl i64 %6, 1
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #7
  %18 = load i64, ptr %5, align 8, !tbaa !59
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20, !prof !71

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %29, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = tail call fastcc i64 @insert_aux(ptr noundef %26, ptr noundef %17, i64 noundef %16, i64 noundef %15) #8
  %28 = getelementptr inbounds ptr, ptr %17, i64 %27
  store ptr %26, ptr %28, align 8, !tbaa !62
  %29 = add nuw i64 %23, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %22, !prof !72, !llvm.loop !73

31:                                               ; preds = %22, %13
  %32 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  tail call void @free(ptr noundef %33) #8
  store i64 %16, ptr %5, align 8, !tbaa !59
  store i64 %15, ptr %0, align 8, !tbaa !58
  store ptr %17, ptr %32, align 8, !tbaa !60
  br label %34

34:                                               ; preds = %9, %31
  %35 = phi i64 [ %12, %9 ], [ %15, %31 ]
  %36 = phi i64 [ %6, %9 ], [ %16, %31 ]
  %37 = phi ptr [ %11, %9 ], [ %17, %31 ]
  %38 = tail call fastcc i64 @insert_aux(ptr noundef %1, ptr noundef %37, i64 noundef %36, i64 noundef %35) #8
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45, !prof !75

42:                                               ; preds = %34
  store ptr %1, ptr %39, align 8, !tbaa !62
  %43 = load i64, ptr %3, align 8, !tbaa !52
  %44 = add i64 %43, 1
  store i64 %44, ptr %3, align 8, !tbaa !52
  br label %45

45:                                               ; preds = %34, %42
  %46 = phi i32 [ 0, %42 ], [ 1, %34 ]
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @insert_aux(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 !prof !76 !PGOFuncName !77 {
  %5 = tail call fastcc i64 @hash1(ptr noundef %0, i64 noundef %2, i64 noundef %3) #8
  %6 = getelementptr inbounds ptr, ptr %1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, %0
  %9 = icmp eq ptr %7, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %13, !prof !78

11:                                               ; preds = %18, %4
  %12 = phi i64 [ %5, %4 ], [ %19, %18 ]
  ret i64 %12

13:                                               ; preds = %4, %18
  %14 = phi i64 [ %19, %18 ], [ %5, %4 ]
  %15 = add i64 %14, 1
  %16 = icmp eq i64 %15, %2
  br i1 %16, label %17, label %18, !prof !79

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %13, %17
  %19 = phi i64 [ 0, %17 ], [ %15, %13 ]
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, %0
  %23 = icmp eq ptr %21, null
  %24 = or i1 %22, %23
  br i1 %24, label %11, label %13, !prof !80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pointer_set_traverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !81 {
  %4 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %21
  %10 = phi i64 [ %5, %7 ], [ %22, %21 ]
  %11 = phi i64 [ 0, %7 ], [ %23, %21 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !60
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call zeroext i8 %1(ptr noundef nonnull %14, ptr noundef %2) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %4, align 8, !tbaa !59
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i64 [ %20, %19 ], [ %10, %9 ]
  %23 = add nuw i64 %11, 1
  %24 = icmp ult i64 %23, %22
  br i1 %24, label %9, label %25, !llvm.loop !82

25:                                               ; preds = %21, %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @pointer_map_create() local_unnamed_addr #0 !prof !83 {
  %1 = tail call ptr @xmalloc(i64 noundef 40) #7
  %2 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !84
  store i64 8, ptr %1, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 1
  store i64 256, ptr %3, align 8, !tbaa !87
  %4 = tail call ptr @xcalloc(i64 noundef 256, i64 noundef 8) #7
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !88
  %6 = load i64, ptr %3, align 8, !tbaa !87
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #7
  %8 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !89
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pointer_map_destroy(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !83 {
  %2 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  tail call void @free(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pointer_map_contains(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !90 {
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !87
  %5 = load i64, ptr %0, align 8, !tbaa !86
  %6 = tail call fastcc i64 @hash1(ptr noundef %1, i64 noundef %4, i64 noundef %5) #8
  %7 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = getelementptr inbounds ptr, ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17, !prof !91

12:                                               ; preds = %25, %2
  %13 = phi i64 [ %6, %2 ], [ %26, %25 ]
  %14 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  br label %30

17:                                               ; preds = %2, %25
  %18 = phi ptr [ %28, %25 ], [ %10, %2 ]
  %19 = phi i64 [ %26, %25 ], [ %6, %2 ]
  %20 = icmp eq ptr %18, null
  br i1 %20, label %30, label %21, !prof !92

21:                                               ; preds = %17
  %22 = add i64 %19, 1
  %23 = icmp eq i64 %22, %4
  br i1 %23, label %24, label %25, !prof !93

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ 0, %24 ], [ %22, %21 ]
  %27 = getelementptr inbounds ptr, ptr %8, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %12, label %17, !prof !94

30:                                               ; preds = %17, %12
  %31 = phi ptr [ %16, %12 ], [ null, %17 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pointer_map_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !95 {
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !87
  %7 = lshr i64 %6, 2
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %13, label %9, !prof !96

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = load i64, ptr %0, align 8, !tbaa !86
  br label %45

13:                                               ; preds = %2
  %14 = load i64, ptr %0, align 8, !tbaa !86
  %15 = add i64 %14, 1
  %16 = shl i64 %6, 1
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #7
  %18 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8, !tbaa !87
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %40, label %21, !prof !97

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %21, %37
  %25 = phi i64 [ 0, %21 ], [ %38, %37 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !88
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30, !prof !98

30:                                               ; preds = %24
  %31 = tail call fastcc i64 @insert_aux(ptr noundef nonnull %28, ptr noundef %17, i64 noundef %16, i64 noundef %15) #8
  %32 = getelementptr inbounds ptr, ptr %17, i64 %31
  store ptr %28, ptr %32, align 8, !tbaa !62
  %33 = load ptr, ptr %23, align 8, !tbaa !89
  %34 = getelementptr inbounds ptr, ptr %33, i64 %25
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds ptr, ptr %18, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !62
  br label %37

37:                                               ; preds = %24, %30
  %38 = add nuw i64 %25, 1
  %39 = icmp eq i64 %38, %19
  br i1 %39, label %40, label %24, !prof !99, !llvm.loop !100

40:                                               ; preds = %37, %13
  %41 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  tail call void @free(ptr noundef %42) #8
  %43 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !89
  tail call void @free(ptr noundef %44) #8
  store i64 %16, ptr %5, align 8, !tbaa !87
  store i64 %15, ptr %0, align 8, !tbaa !86
  store ptr %17, ptr %41, align 8, !tbaa !88
  store ptr %18, ptr %43, align 8, !tbaa !89
  br label %45

45:                                               ; preds = %9, %40
  %46 = phi i64 [ %12, %9 ], [ %15, %40 ]
  %47 = phi i64 [ %6, %9 ], [ %16, %40 ]
  %48 = phi ptr [ %11, %9 ], [ %17, %40 ]
  %49 = tail call fastcc i64 @insert_aux(ptr noundef %1, ptr noundef %48, i64 noundef %47, i64 noundef %46) #8
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56, !prof !101

53:                                               ; preds = %45
  %54 = load i64, ptr %3, align 8, !tbaa !84
  %55 = add i64 %54, 1
  store i64 %55, ptr %3, align 8, !tbaa !84
  store ptr %1, ptr %50, align 8, !tbaa !62
  br label %56

56:                                               ; preds = %53, %45
  %57 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = getelementptr inbounds ptr, ptr %58, i64 %49
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pointer_map_traverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !102 {
  %4 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !87
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %28, label %8, !prof !103

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %24
  %11 = phi i64 [ %6, %8 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %8 ], [ %26, %24 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !104

17:                                               ; preds = %10
  %18 = load ptr, ptr %4, align 8, !tbaa !89
  %19 = getelementptr inbounds ptr, ptr %18, i64 %12
  %20 = tail call zeroext i8 %1(ptr noundef nonnull %15, ptr noundef %19, ptr noundef %2) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22, !prof !105

22:                                               ; preds = %17
  %23 = load i64, ptr %5, align 8, !tbaa !87
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i64 [ %23, %22 ], [ %11, %10 ]
  %26 = add nuw i64 %12, 1
  %27 = icmp ult i64 %26, %25
  br i1 %27, label %10, label %28, !prof !106, !llvm.loop !107

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @pointer_set_create, ptr @xmalloc, i64 50977}
!36 = !{ptr @pointer_set_create, ptr @xcalloc, i64 50977}
!37 = !{ptr @pointer_set_destroy, ptr @free, i64 101954}
!38 = !{ptr @pointer_set_contains, ptr @hash1, i64 429}
!39 = !{ptr @pointer_set_insert, ptr @xcalloc, i64 152}
!40 = !{ptr @pointer_set_insert, ptr @insert_aux, i64 2013355}
!41 = !{ptr @pointer_set_insert, ptr @free, i64 152}
!42 = !{ptr @insert_aux, ptr @hash1, i64 3413098}
!43 = !{ptr @pointer_map_create, ptr @xmalloc, i64 52132}
!44 = !{ptr @pointer_map_create, ptr @xcalloc, i64 104264}
!45 = !{ptr @pointer_map_destroy, ptr @free, i64 156396}
!46 = !{ptr @pointer_map_contains, ptr @hash1, i64 3324850}
!47 = !{ptr @pointer_map_insert, ptr @xcalloc, i64 942}
!48 = !{ptr @pointer_map_insert, ptr @insert_aux, i64 1399738}
!49 = !{ptr @pointer_map_insert, ptr @free, i64 942}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 50977}
!52 = !{!53, !54, i64 16}
!53 = !{!"pointer_set_t", !54, i64 0, !54, i64 8, !54, i64 16, !57, i64 24}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"any pointer", !55, i64 0}
!58 = !{!53, !54, i64 0}
!59 = !{!53, !54, i64 8}
!60 = !{!53, !57, i64 24}
!61 = !{!"function_entry_count", i64 429}
!62 = !{!57, !57, i64 0}
!63 = !{!"branch_weights", i32 215, i32 111}
!64 = !{!"branch_weights", i32 105, i32 7}
!65 = !{!"branch_weights", i32 1, i32 7}
!66 = !{!"branch_weights", i32 111, i32 0}
!67 = !{!"function_entry_count", i64 6738377}
!68 = !{!"pointer-set.c:hash1"}
!69 = !{!"function_entry_count", i64 1001646}
!70 = !{!"branch_weights", i32 152, i32 1001496}
!71 = !{!"branch_weights", i32 1, i32 151}
!72 = !{!"branch_weights", i32 151, i32 1011562}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"branch_weights", i32 217950, i32 783698}
!76 = !{!"function_entry_count", i64 3413098}
!77 = !{!"pointer-set.c:insert_aux"}
!78 = !{!"branch_weights", i32 -1328790792, i32 200887827}
!79 = !{!"branch_weights", i32 14, i32 216481}
!80 = !{!"branch_weights", i32 200887827, i32 0}
!81 = !{!"function_entry_count", i64 0}
!82 = distinct !{!82, !74}
!83 = !{!"function_entry_count", i64 52132}
!84 = !{!85, !54, i64 16}
!85 = !{!"pointer_map_t", !54, i64 0, !54, i64 8, !54, i64 16, !57, i64 24, !57, i64 32}
!86 = !{!85, !54, i64 0}
!87 = !{!85, !54, i64 8}
!88 = !{!85, !57, i64 24}
!89 = !{!85, !57, i64 32}
!90 = !{!"function_entry_count", i64 3324850}
!91 = !{!"branch_weights", i32 632479, i32 1500079}
!92 = !{!"branch_weights", i32 1192294, i32 307786}
!93 = !{!"branch_weights", i32 51, i32 307736}
!94 = !{!"branch_weights", i32 1500079, i32 0}
!95 = !{!"function_entry_count", i64 696422}
!96 = !{!"branch_weights", i32 471, i32 695953}
!97 = !{!"branch_weights", i32 1, i32 470}
!98 = !{!"branch_weights", i32 2108075, i32 703319}
!99 = !{!"branch_weights", i32 470, i32 2810923}
!100 = distinct !{!100, !74}
!101 = !{!"branch_weights", i32 509529, i32 186895}
!102 = !{!"function_entry_count", i64 945}
!103 = !{!"branch_weights", i32 1, i32 856}
!104 = !{!"branch_weights", i32 962030, i32 183920}
!105 = !{!"branch_weights", i32 90, i32 183831}
!106 = !{!"branch_weights", i32 1145093, i32 856}
!107 = distinct !{!107, !74}
