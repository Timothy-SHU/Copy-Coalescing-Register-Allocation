; ModuleID = 'sparseset.c'
source_filename = "sparseset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }

@.str = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sparseset.c\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sparseset_alloc(i32 noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = shl i32 %0, 3
  %3 = add i32 %2, 32
  %4 = zext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %4) #9
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 7
  store ptr %6, ptr %5, align 8, !tbaa !43
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 7, i64 %7
  %9 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 3
  store i32 %0, ptr %10, align 4, !tbaa !50
  tail call fastcc void @sparseset_clear(ptr noundef nonnull %5) #10
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_clear(ptr nocapture noundef writeonly %0) unnamed_addr #2 !prof !42 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 1, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sparseset_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !54 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #10, !range !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %33, label %5, !prof !56

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = add i32 %14, -1
  %16 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !53
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19, !prof !59

19:                                               ; preds = %5
  %20 = icmp ugt i32 %10, %12
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %10, %12
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call fastcc void @sparseset_swap(ptr noundef nonnull %0, i32 noundef %10, i32 noundef %12) #10
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %12, %23 ], [ %10, %21 ]
  %26 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 0, ptr %26, align 4, !tbaa !60
  br label %27

27:                                               ; preds = %24, %19, %5
  %28 = phi i32 [ %25, %24 ], [ %10, %19 ], [ %10, %5 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !43
  %30 = zext i32 %15 to i64
  %31 = getelementptr inbounds i32, ptr %29, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !57
  tail call fastcc void @sparseset_insert_bit(ptr noundef nonnull %0, i32 noundef %32, i32 noundef %28) #10
  store i32 %15, ptr %13, align 8, !tbaa !52
  br label %33

33:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !61 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !59

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 85, ptr noundef nonnull @.str.1) #9
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23, !prof !59

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !43
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !57
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_swap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !prof !62 !PGOFuncName !63 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !57
  tail call fastcc void @sparseset_insert_bit(ptr noundef nonnull %0, i32 noundef %10, i32 noundef %2) #10
  tail call fastcc void @sparseset_insert_bit(ptr noundef nonnull %0, i32 noundef %7, i32 noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !54 !PGOFuncName !64 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !57
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sparseset_copy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #5 !prof !62 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  tail call fastcc void @sparseset_clear(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %14, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !43
  %11 = getelementptr inbounds i32, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = trunc i64 %9 to i32
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %12, i32 noundef %13) #10
  %14 = add nuw nsw i64 %9, 1
  %15 = load i32, ptr %5, align 8, !tbaa !52
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %8, label %18, !llvm.loop !65

18:                                               ; preds = %8, %4
  %19 = phi i32 [ 0, %4 ], [ %15, %8 ]
  %20 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sparseset_and(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = icmp eq ptr %1, %2
  %5 = icmp eq ptr %0, %1
  br i1 %4, label %6, label %8

6:                                                ; preds = %3
  br i1 %5, label %39, label %7

7:                                                ; preds = %6
  tail call void @sparseset_copy(ptr noundef %0, ptr noundef %1) #10
  br label %39

8:                                                ; preds = %3
  br i1 %5, label %11, label %9

9:                                                ; preds = %8
  %10 = icmp eq ptr %0, %2
  br i1 %10, label %11, label %23

11:                                               ; preds = %9, %8
  %12 = phi ptr [ %1, %9 ], [ %2, %8 ]
  tail call fastcc void @sparseset_iter_init(ptr noundef %0) #10
  %13 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %0) #10, !range !55
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %11, %20
  %16 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %0) #10
  %17 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %12, i32 noundef %16) #10, !range !55
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @sparseset_clear_bit(ptr noundef %0, i32 noundef %16) #10
  br label %20

20:                                               ; preds = %15, %19
  tail call fastcc void @sparseset_iter_next(ptr noundef %0) #10
  %21 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %0) #10, !range !55
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %15, !llvm.loop !67

23:                                               ; preds = %9
  %24 = tail call fastcc i32 @sparseset_cardinality(ptr noundef %1) #10
  %25 = tail call fastcc i32 @sparseset_cardinality(ptr noundef %2) #10
  %26 = icmp ult i32 %24, %25
  %27 = select i1 %26, ptr %1, ptr %2
  %28 = select i1 %26, ptr %2, ptr %1
  tail call fastcc void @sparseset_clear(ptr noundef %0) #10
  tail call fastcc void @sparseset_iter_init(ptr noundef %27) #10
  %29 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %27) #10, !range !55
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23, %36
  %32 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %27) #10
  %33 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %28, i32 noundef %32) #10, !range !55
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call fastcc void @sparseset_set_bit(ptr noundef %0, i32 noundef %32) #10
  br label %36

36:                                               ; preds = %31, %35
  tail call fastcc void @sparseset_iter_next(ptr noundef %27) #10
  %37 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %27) #10, !range !55
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %31, !llvm.loop !68

39:                                               ; preds = %36, %20, %23, %11, %6, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #2 !prof !62 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !60
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #6 !prof !62 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !52
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !53
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !62 !PGOFuncName !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !57
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !62 !PGOFuncName !72 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !60
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !58
  store i8 1, ptr %2, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @sparseset_cardinality(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !62 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !52
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !62 !PGOFuncName !74 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #10, !range !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !52
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #10
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sparseset_and_compl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @sparseset_clear(ptr noundef %0) #10
  br label %44

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 168, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %11, label %33

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @sparseset_cardinality(ptr noundef %1) #10
  %13 = tail call fastcc i32 @sparseset_cardinality(ptr noundef %2) #10
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  tail call fastcc void @sparseset_iter_init(ptr noundef %1) #10
  %16 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %1) #10, !range !55
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %15, %23
  %19 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %1) #10
  %20 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %2, i32 noundef %19) #10, !range !55
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @sparseset_clear_bit(ptr noundef %1, i32 noundef %19) #10
  br label %23

23:                                               ; preds = %18, %22
  tail call fastcc void @sparseset_iter_next(ptr noundef %1) #10
  %24 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %1) #10, !range !55
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %18, !llvm.loop !75

26:                                               ; preds = %11
  tail call fastcc void @sparseset_iter_init(ptr noundef %2) #10
  %27 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %2) #10, !range !55
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26, %29
  %30 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %2) #10
  tail call void @sparseset_clear_bit(ptr noundef %1, i32 noundef %30) #10
  tail call fastcc void @sparseset_iter_next(ptr noundef %2) #10
  %31 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %2) #10, !range !55
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %29, !llvm.loop !76

33:                                               ; preds = %9
  tail call fastcc void @sparseset_clear(ptr noundef %0) #10
  tail call fastcc void @sparseset_iter_init(ptr noundef %1) #10
  %34 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %1) #10, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33, %41
  %37 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %1) #10
  %38 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %2, i32 noundef %37) #10, !range !55
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call fastcc void @sparseset_set_bit(ptr noundef %0, i32 noundef %37) #10
  br label %41

41:                                               ; preds = %36, %40
  tail call fastcc void @sparseset_iter_next(ptr noundef %1) #10
  %42 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %1) #10, !range !55
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %36, !llvm.loop !77

44:                                               ; preds = %41, %29, %23, %33, %26, %15, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sparseset_ior(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @sparseset_copy(ptr noundef %0, ptr noundef %1) #10
  br label %25

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, %2
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  tail call fastcc void @sparseset_iter_init(ptr noundef %1) #10
  %9 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %1) #10, !range !55
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8, %11
  %12 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %1) #10
  tail call fastcc void @sparseset_set_bit(ptr noundef %2, i32 noundef %12) #10
  tail call fastcc void @sparseset_iter_next(ptr noundef %1) #10
  %13 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %1) #10, !range !55
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %11, !llvm.loop !78

15:                                               ; preds = %6
  %16 = icmp eq ptr %0, %1
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @sparseset_copy(ptr noundef %0, ptr noundef %1) #10
  br label %18

18:                                               ; preds = %17, %15
  tail call fastcc void @sparseset_iter_init(ptr noundef %2) #10
  %19 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %2) #10, !range !55
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %21
  %22 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %2) #10
  tail call fastcc void @sparseset_set_bit(ptr noundef %0, i32 noundef %22) #10
  tail call fastcc void @sparseset_iter_next(ptr noundef %2) #10
  %23 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %2) #10, !range !55
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %21, !llvm.loop !79

25:                                               ; preds = %21, %11, %18, %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sparseset_equal_p(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !62 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @sparseset_cardinality(ptr noundef %0) #10
  %6 = tail call fastcc i32 @sparseset_cardinality(ptr noundef %1) #10
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  tail call fastcc void @sparseset_iter_init(ptr noundef %0) #10
  %9 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %0) #10, !range !55
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8, %15
  %12 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %0) #10
  %13 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %1, i32 noundef %12) #10, !range !55
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  tail call fastcc void @sparseset_iter_next(ptr noundef %0) #10
  %16 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %0) #10, !range !55
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %11, !llvm.loop !80

18:                                               ; preds = %11, %15, %8, %4, %2
  %19 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 1, %8 ], [ 0, %11 ], [ 1, %15 ]
  ret i8 %19
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

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
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @sparseset_alloc, ptr @xcalloc, i64 14779}
!37 = !{ptr @sparseset_alloc, ptr @sparseset_clear, i64 14779}
!38 = !{ptr @sparseset_clear_bit, ptr @sparseset_bit_p, i64 1440662}
!39 = !{ptr @sparseset_clear_bit, ptr @sparseset_insert_bit, i64 1440661}
!40 = !{ptr @sparseset_bit_p, ptr @fancy_abort, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 14779}
!43 = !{!44, !45, i64 0}
!44 = !{!"sparseset_def", !45, i64 0, !45, i64 8, !48, i64 16, !48, i64 20, !48, i64 24, !46, i64 28, !46, i64 29, !46, i64 32}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!"int", !46, i64 0}
!49 = !{!44, !45, i64 8}
!50 = !{!44, !48, i64 20}
!51 = !{!"sparseset.c:sparseset_clear"}
!52 = !{!44, !48, i64 16}
!53 = !{!44, !46, i64 29}
!54 = !{!"function_entry_count", i64 1440662}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 1, i32 1440663}
!57 = !{!48, !48, i64 0}
!58 = !{!44, !48, i64 24}
!59 = !{!"branch_weights", i32 1440663, i32 1}
!60 = !{!44, !46, i64 28}
!61 = !{!"sparseset.c:sparseset_bit_p"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!"sparseset.c:sparseset_swap"}
!64 = !{!"sparseset.c:sparseset_insert_bit"}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = !{!"sparseset.c:sparseset_iter_init"}
!70 = !{!"sparseset.c:sparseset_iter_p"}
!71 = !{!"sparseset.c:sparseset_iter_elm"}
!72 = !{!"sparseset.c:sparseset_iter_next"}
!73 = !{!"sparseset.c:sparseset_cardinality"}
!74 = !{!"sparseset.c:sparseset_set_bit"}
!75 = distinct !{!75, !66}
!76 = distinct !{!76, !66}
!77 = distinct !{!77, !66}
!78 = distinct !{!78, !66}
!79 = distinct !{!79, !66}
!80 = distinct !{!80, !66}
