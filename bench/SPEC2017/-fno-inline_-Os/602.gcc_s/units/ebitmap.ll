; ModuleID = 'ebitmap.c'
source_filename = "ebitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ebitmap_iterator = type { ptr, i32, i32, i32, i64, %struct.sbitmap_iterator }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.ebitmap_def = type { i32, ptr, i32, i32, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@.str = private unnamed_addr constant [10 x i8] c"ebitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"n_words = %d, set = {\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ebitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ebitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call fastcc void @ebitmap_iter_init(ptr noundef nonnull %3, ptr noundef %0) #14
  %4 = call fastcc zeroext i8 @ebitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #14, !range !40
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1, %6
  call fastcc void @ebitmap_iter_next(ptr noundef nonnull %3) #14
  %7 = call fastcc zeroext i8 @ebitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #14, !range !40
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %6, !llvm.loop !41

9:                                                ; preds = %6, %1
  %10 = load i32, ptr %2, align 4
  %11 = select i1 %5, i32 -1, i32 %10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ebitmap_iter_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !43 {
  %3 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  tail call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !48
  %9 = icmp eq i32 %7, 0
  %10 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 3
  br i1 %9, label %11, label %14

11:                                               ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !53
  store i32 0, ptr %10, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 4
  store i64 0, ptr %13, align 8, !tbaa !55
  br label %44

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  store ptr %16, ptr %0, align 8, !tbaa !52
  store i32 0, ptr %10, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %17, align 8, !tbaa !53
  %18 = load ptr, ptr %4, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 4
  store i64 0, ptr %23, align 8, !tbaa !55
  br label %44

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !59
  %27 = and i64 %26, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 4
  store i64 0, ptr %30, align 8, !tbaa !55
  br label %44

31:                                               ; preds = %24
  %32 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %18, i64 noundef 0) #15
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %0, align 8, !tbaa !52
  %35 = and i64 %32, 4294967295
  %36 = getelementptr inbounds i64, ptr %34, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !59
  %38 = load i32, ptr %10, align 8, !tbaa !54
  %39 = and i32 %38, 63
  %40 = zext nneg i32 %39 to i64
  %41 = lshr i64 %37, %40
  %42 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %41, ptr %42, align 8, !tbaa !55
  %43 = add i32 %33, 1
  store i32 %43, ptr %17, align 8, !tbaa !53
  br label %44

44:                                               ; preds = %29, %31, %11, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ebitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !35 !PGOFuncName !60 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !tbaa !36
  %4 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 5
  tail call fastcc void @sbitmap_iter_next(ptr noundef nonnull %12) #14
  %13 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %12, ptr noundef nonnull %3) #14, !range !40
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4, !tbaa !36
  %17 = shl i32 %16, 6
  %18 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !54
  %19 = load ptr, ptr %0, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !53
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i64, ptr %19, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !59
  store i64 %25, ptr %8, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %15, %7
  %27 = phi i64 [ %25, %15 ], [ %9, %7 ]
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  %30 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !54
  br i1 %29, label %32, label %40

32:                                               ; preds = %26, %32
  %33 = phi i32 [ %35, %32 ], [ %31, %26 ]
  %34 = phi i64 [ %36, %32 ], [ %27, %26 ]
  %35 = add i32 %33, 1
  %36 = lshr exact i64 %34, 1
  %37 = and i64 %34, 2
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %32, label %39, !llvm.loop !61

39:                                               ; preds = %32
  store i32 %35, ptr %30, align 8, !tbaa !54
  store i64 %36, ptr %8, align 8, !tbaa !55
  br label %40

40:                                               ; preds = %26, %39
  %41 = phi i32 [ %35, %39 ], [ %31, %26 ]
  store i32 %41, ptr %1, align 4, !tbaa !36
  br label %42

42:                                               ; preds = %11, %2, %40
  %43 = phi i8 [ 1, %40 ], [ 0, %2 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i8 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ebitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !35 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !55
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.ebitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !63 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !64
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !68
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: optsize
declare i64 @sbitmap_popcount(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !35 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !70
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !35 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !64
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !64
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !65
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !65
  %25 = load ptr, ptr %0, align 8, !tbaa !68
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !59
  store i64 %28, ptr %3, align 8, !tbaa !70
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !72

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !73

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !65
  store i64 %34, ptr %3, align 8, !tbaa !70
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !36
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !64
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebitmap_clear(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @ebitmap_array_clear(ptr noundef %0) #14
  %2 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @sbitmap_zero(ptr noundef %3) #15
  %4 = load ptr, ptr %2, align 8, !tbaa !44
  %5 = tail call ptr @sbitmap_resize(ptr noundef %4, i32 noundef 1, i32 noundef 0) #15
  store ptr %5, ptr %2, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @ebitmap_array_clear(ptr nocapture noundef %0) unnamed_addr #5 !prof !35 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #14
  store ptr null, ptr %2, align 8, !tbaa !56
  br label %6

6:                                                ; preds = %5, %1
  store i32 0, ptr %0, align 8, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ebitmap_alloc(i32 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call ptr @xmalloc(i64 noundef 40) #15
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 64, i32 %0
  %5 = add i32 %4, 63
  %6 = lshr i32 %5, 6
  tail call fastcc void @ebitmap_array_init(ptr noundef %2, i32 noundef %6) #14
  %7 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %4) #15
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !44
  tail call void @sbitmap_zero(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 3
  store i32 0, ptr %11, align 4, !tbaa !75
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ebitmap_array_init(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !78 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = tail call ptr @xmalloc(i64 noundef %6) #15
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  store i32 %1, ptr %0, align 8
  %10 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  store ptr %9, ptr %10, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc_with_popcount(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebitmap_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = lshr i32 %1, 6
  %4 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %85, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = icmp ult i32 %3, %11
  br i1 %12, label %13, label %85

13:                                               ; preds = %7
  %14 = lshr i32 %1, 12
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !59
  %18 = and i32 %3, 63
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = and i64 %17, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %85, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !75
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %39, label %31

31:                                               ; preds = %27, %23
  %32 = zext nneg i32 %3 to i64
  %33 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %9, i64 noundef %32) #15
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = and i64 %33, 4294967295
  %38 = getelementptr inbounds i64, ptr %36, i64 %37
  br label %39

39:                                               ; preds = %27, %31
  %40 = phi i32 [ %34, %31 ], [ 0, %27 ]
  %41 = phi i1 [ false, %31 ], [ true, %27 ]
  %42 = phi ptr [ %38, %31 ], [ %25, %27 ]
  %43 = and i32 %1, 63
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = xor i64 %45, -1
  %47 = load i64, ptr %42, align 8, !tbaa !59
  %48 = and i64 %47, %46
  store i64 %48, ptr %42, align 8, !tbaa !59
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %39
  br i1 %41, label %51, label %56

51:                                               ; preds = %50
  %52 = load ptr, ptr %8, align 8, !tbaa !44
  %53 = zext nneg i32 %3 to i64
  %54 = tail call i64 @sbitmap_popcount(ptr noundef %52, i64 noundef %53) #15
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i32 [ %40, %50 ], [ %55, %51 ]
  %58 = load ptr, ptr %24, align 8, !tbaa !74
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !75
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = icmp ugt i32 %62, %3
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = getelementptr inbounds i64, ptr %58, i64 -1
  br label %68

68:                                               ; preds = %60, %66
  %69 = phi ptr [ %67, %66 ], [ null, %60 ]
  store ptr %69, ptr %24, align 8, !tbaa !74
  br label %70

70:                                               ; preds = %68, %64, %56
  %71 = load ptr, ptr %8, align 8, !tbaa !44
  tail call fastcc void @RESET_BIT(ptr noundef %71, i32 noundef %3) #14
  %72 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = zext i32 %57 to i64
  %75 = getelementptr inbounds i64, ptr %73, i64 %74
  %76 = add i32 %57, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %73, i64 %77
  %79 = load i32, ptr %4, align 8, !tbaa !47
  %80 = sub i32 %79, %57
  %81 = zext i32 %80 to i64
  %82 = shl nuw nsw i64 %81, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %75, ptr align 8 %78, i64 %82, i1 false)
  %83 = load i32, ptr %4, align 8, !tbaa !47
  %84 = add i32 %83, -1
  store i32 %84, ptr %4, align 8, !tbaa !47
  br label %85

85:                                               ; preds = %39, %70, %7, %13, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !79 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !81
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !81
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !59
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebitmap_set_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = lshr i32 %1, 6
  %4 = and i32 %1, 63
  %5 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !75
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = zext nneg i32 %4 to i64
  %14 = shl nuw i64 1, %13
  %15 = load i64, ptr %6, align 8, !tbaa !59
  %16 = or i64 %15, %14
  store i64 %16, ptr %6, align 8, !tbaa !59
  br label %85

17:                                               ; preds = %8, %2
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = icmp ult i32 %3, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i32 %3, 1
  %25 = tail call ptr @sbitmap_resize(ptr noundef nonnull %19, i32 noundef %24, i32 noundef 0) #15
  store ptr %25, ptr %18, align 8, !tbaa !44
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ %25, %23 ], [ %19, %17 ]
  %28 = lshr i32 %1, 12
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %27, i64 0, i32 3, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !59
  %32 = and i32 %3, 63
  %33 = zext nneg i32 %32 to i64
  %34 = shl nuw i64 1, %33
  %35 = and i64 %31, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %26
  tail call fastcc void @SET_BIT(ptr noundef nonnull %27, i32 noundef %3) #14
  %38 = load ptr, ptr %18, align 8, !tbaa !44
  %39 = zext nneg i32 %3 to i64
  %40 = tail call i64 @sbitmap_popcount(ptr noundef %38, i64 noundef %39) #15
  %41 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !47
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #15
  %46 = load i32, ptr %41, align 8, !tbaa !47
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %37, %45
  %49 = phi i64 [ %43, %37 ], [ %47, %45 ]
  %50 = phi i32 [ %42, %37 ], [ %46, %45 ]
  %51 = icmp ult i64 %40, %49
  %52 = trunc i64 %40 to i32
  br i1 %51, label %53, label %61

53:                                               ; preds = %48, %53
  %54 = phi i32 [ %56, %53 ], [ %50, %48 ]
  %55 = tail call fastcc ptr @ebitmap_array_grow_get(ptr noundef %0, i32 noundef %54) #14
  %56 = add i32 %54, -1
  %57 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %0, i32 noundef %56) #14
  store i64 %57, ptr %55, align 8, !tbaa !59
  %58 = icmp ugt i32 %56, %52
  br i1 %58, label %53, label %59, !llvm.loop !82

59:                                               ; preds = %53
  %60 = load i32, ptr %41, align 8, !tbaa !47
  br label %61

61:                                               ; preds = %48, %59
  %62 = phi i32 [ %60, %59 ], [ %50, %48 ]
  %63 = add i32 %62, 1
  store i32 %63, ptr %41, align 8, !tbaa !47
  tail call fastcc void @ebitmap_array_maybe_grow(ptr noundef nonnull %0, i32 noundef %52) #14
  %64 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  %66 = and i64 %40, 4294967295
  %67 = getelementptr inbounds i64, ptr %65, i64 %66
  store i64 0, ptr %67, align 8, !tbaa !59
  br label %76

68:                                               ; preds = %26
  %69 = zext nneg i32 %3 to i64
  %70 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %27, i64 noundef %69) #15
  %71 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  %73 = and i64 %70, 4294967295
  %74 = getelementptr inbounds i64, ptr %72, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !59
  br label %76

76:                                               ; preds = %68, %61
  %77 = phi i64 [ %75, %68 ], [ 0, %61 ]
  %78 = phi i64 [ %73, %68 ], [ %66, %61 ]
  %79 = phi ptr [ %72, %68 ], [ %65, %61 ]
  %80 = zext nneg i32 %4 to i64
  %81 = shl nuw i64 1, %80
  %82 = getelementptr inbounds i64, ptr %79, i64 %78
  %83 = or i64 %77, %81
  store i64 %83, ptr %82, align 8, !tbaa !59
  store ptr %82, ptr %5, align 8, !tbaa !74
  %84 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  store i32 %3, ptr %84, align 4, !tbaa !75
  br label %85

85:                                               ; preds = %76, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !83 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !81
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !81
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !59
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ebitmap_array_grow_get(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !84 {
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = add i32 %1, 1
  tail call fastcc void @ebitmap_array_grow(ptr noundef nonnull %0, i32 noundef %6) #14
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ebitmap_array_get(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !85 {
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds i64, ptr %8, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !59
  ret i64 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ebitmap_array_maybe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !86 {
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = add i32 %1, 1
  tail call fastcc void @ebitmap_array_grow(ptr noundef nonnull %0, i32 noundef %6) #14
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ebitmap_array_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !87 {
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = icmp ult i32 %3, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !77
  br label %14

6:                                                ; preds = %2
  %7 = lshr i32 %1, 2
  %8 = add i32 %7, %1
  store i32 %8, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = zext i32 %8 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr @xrealloc(ptr noundef %10, i64 noundef %12) #15
  store ptr %13, ptr %9, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ebitmap_bit_p(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = lshr i32 %1, 6
  %4 = and i32 %1, 63
  %5 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !75
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %40, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = icmp ult i32 %3, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = lshr i32 %1, 12
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !59
  %27 = and i32 %3, 63
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %26, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  store i32 %3, ptr %33, align 4, !tbaa !75
  %34 = zext nneg i32 %3 to i64
  %35 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %18, i64 noundef %34) #15
  %36 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = and i64 %35, 4294967295
  %39 = getelementptr inbounds i64, ptr %37, i64 %38
  store ptr %39, ptr %9, align 8, !tbaa !74
  br label %40

40:                                               ; preds = %12, %32
  %41 = phi ptr [ %39, %32 ], [ %10, %12 ]
  %42 = load i64, ptr %41, align 8, !tbaa !59
  %43 = zext nneg i32 %4 to i64
  %44 = lshr i64 %42, %43
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  br label %47

47:                                               ; preds = %40, %16, %22, %2
  %48 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 0, %16 ], [ %46, %40 ]
  ret i8 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  tail call void @free(ptr noundef %5) #14
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @free(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %10) #15
  store ptr %11, ptr %3, align 8, !tbaa !44
  %12 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @sbitmap_copy(ptr noundef %11, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !47
  tail call fastcc void @ebitmap_array_grow(ptr noundef %0, i32 noundef %14) #14
  %15 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = load i32, ptr %13, align 8, !tbaa !47
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %18, i64 %21, i1 false)
  %22 = load i32, ptr %13, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %22, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %24, align 8, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_ebitmap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = tail call i32 @sbitmap_last_set_bit(ptr noundef %4) #15
  %6 = shl i32 %5, 6
  %7 = add i32 %6, 64
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !47
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %9) #14
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2, %25
  %13 = phi i32 [ %26, %25 ], [ 30, %2 ]
  %14 = phi i32 [ %27, %25 ], [ 0, %2 ]
  %15 = tail call zeroext i8 @ebitmap_bit_p(ptr noundef %1, i32 noundef %14) #14, !range !40
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = icmp ugt i32 %13, 70
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ 0, %19 ], [ %13, %17 ]
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %14) #14
  %24 = add i32 %23, %22
  br label %25

25:                                               ; preds = %12, %21
  %26 = phi i32 [ %24, %21 ], [ %13, %12 ]
  %27 = add nuw i32 %14, 1
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %29, label %12, !llvm.loop !88

29:                                               ; preds = %25, %2
  %30 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: optsize
declare i32 @sbitmap_last_set_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ebitmap(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !89
  tail call void @dump_ebitmap(ptr noundef %2, ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebitmap_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca %struct.sbitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %7
  tail call void @ebitmap_clear(ptr noundef nonnull %0) #14
  br label %45

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  tail call void @sbitmap_a_and_b(ptr noundef %19, ptr noundef %19, ptr noundef %21) #15
  %22 = load ptr, ptr %18, align 8, !tbaa !44
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %22) #14
  %23 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #14, !range !40
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %17, %39
  %26 = phi i32 [ %40, %39 ], [ 0, %17 ]
  %27 = phi i32 [ %28, %39 ], [ 0, %17 ]
  %28 = add i32 %27, 1
  %29 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %1, i32 noundef %27) #14
  %30 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %0, i32 noundef %27) #14
  %31 = and i64 %30, %29
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = add i32 %26, 1
  %35 = tail call fastcc ptr @ebitmap_array_grow_get(ptr noundef %0, i32 noundef %26) #14
  store i64 %31, ptr %35, align 8, !tbaa !59
  br label %39

36:                                               ; preds = %25
  %37 = load ptr, ptr %18, align 8, !tbaa !44
  %38 = load i32, ptr %4, align 4, !tbaa !36
  tail call fastcc void @RESET_BIT(ptr noundef %37, i32 noundef %38) #14
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %34, %33 ], [ %26, %36 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %3) #14
  %41 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #14, !range !40
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %25, !llvm.loop !90

43:                                               ; preds = %39, %17
  %44 = phi i32 [ 0, %17 ], [ %40, %39 ]
  store i32 %44, ptr %13, align 8, !tbaa !47
  br label %45

45:                                               ; preds = %43, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebitmap_and(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca %struct.sbitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  tail call void @ebitmap_clear(ptr noundef nonnull %0) #14
  br label %83

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = tail call i32 @llvm.umin.i32(i32 %21, i32 %25)
  %27 = tail call ptr @sbitmap_resize(ptr noundef %17, i32 noundef %26, i32 noundef 0) #15
  store ptr %27, ptr %16, align 8, !tbaa !44
  %28 = load ptr, ptr %18, align 8, !tbaa !44
  %29 = load ptr, ptr %22, align 8, !tbaa !44
  tail call void @sbitmap_a_and_b(ptr noundef %27, ptr noundef %28, ptr noundef %29) #15
  %30 = load ptr, ptr %16, align 8, !tbaa !44
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %30) #14
  %31 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #14, !range !40
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %15, %74
  %34 = phi i32 [ %77, %74 ], [ 0, %15 ]
  %35 = phi i32 [ %76, %74 ], [ 0, %15 ]
  %36 = phi i32 [ %75, %74 ], [ 0, %15 ]
  %37 = load ptr, ptr %18, align 8, !tbaa !44
  %38 = load i32, ptr %5, align 4, !tbaa !36
  %39 = lshr i32 %38, 6
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !59
  %43 = and i32 %38, 63
  %44 = zext nneg i32 %43 to i64
  %45 = lshr i64 %42, %44
  %46 = trunc i64 %45 to i8
  %47 = and i8 %46, 1
  %48 = load ptr, ptr %22, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %40
  %50 = load i64, ptr %49, align 8, !tbaa !59
  %51 = icmp ne i8 %47, 0
  %52 = shl nuw i64 1, %44
  %53 = and i64 %50, %52
  %54 = icmp ne i64 %53, 0
  %55 = select i1 %51, i1 %54, i1 false
  br i1 %55, label %56, label %68

56:                                               ; preds = %33
  %57 = add i32 %35, 1
  %58 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %1, i32 noundef %35) #14
  %59 = add i32 %36, 1
  %60 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %2, i32 noundef %36) #14
  %61 = and i64 %60, %58
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = add i32 %34, 1
  %65 = tail call fastcc ptr @ebitmap_array_grow_get(ptr noundef %0, i32 noundef %34) #14
  store i64 %61, ptr %65, align 8, !tbaa !59
  br label %74

66:                                               ; preds = %56
  %67 = load ptr, ptr %16, align 8, !tbaa !44
  tail call fastcc void @RESET_BIT(ptr noundef %67, i32 noundef %38) #14
  br label %74

68:                                               ; preds = %33
  %69 = icmp eq i8 %47, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = add i32 %35, 1
  br label %74

72:                                               ; preds = %68
  %73 = add i32 %36, 1
  br label %74

74:                                               ; preds = %63, %66, %70, %72
  %75 = phi i32 [ %36, %70 ], [ %73, %72 ], [ %59, %66 ], [ %59, %63 ]
  %76 = phi i32 [ %71, %70 ], [ %35, %72 ], [ %57, %66 ], [ %57, %63 ]
  %77 = phi i32 [ %34, %70 ], [ %34, %72 ], [ %34, %66 ], [ %64, %63 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #14
  %78 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #14, !range !40
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %33, !llvm.loop !91

80:                                               ; preds = %74, %15
  %81 = phi i32 [ 0, %15 ], [ %77, %74 ]
  %82 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %81, ptr %82, align 8, !tbaa !47
  br label %83

83:                                               ; preds = %80, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ebitmap_ior_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca %struct.sbitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !74
  %14 = icmp eq ptr %0, %1
  br i1 %14, label %138, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = icmp eq i32 %20, 0
  br i1 %18, label %22, label %24

22:                                               ; preds = %15
  br i1 %21, label %138, label %23

23:                                               ; preds = %22
  tail call void @ebitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  br label %138

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  br i1 %21, label %138, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @llvm.umax.i32(i32 %12, i32 %8)
  %28 = tail call ptr @sbitmap_alloc(i32 noundef %27) #15
  tail call void @sbitmap_zero(ptr noundef %28) #15
  %29 = icmp eq i32 %12, %8
  %30 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %29, label %41, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @sbitmap_resize(ptr noundef %30, i32 noundef %27, i32 noundef 0) #15
  store ptr %32, ptr %5, align 8, !tbaa !44
  %33 = icmp ult i32 %12, %8
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %9, align 8, !tbaa !44
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ %32, %31 ]
  %38 = phi ptr [ %5, %34 ], [ %9, %31 ]
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !66
  tail call void @sbitmap_copy_n(ptr noundef %28, ptr noundef %37, i32 noundef %40) #15
  br label %41

41:                                               ; preds = %36, %26
  %42 = phi ptr [ %9, %26 ], [ %38, %36 ]
  %43 = phi ptr [ %30, %26 ], [ %28, %36 ]
  %44 = load ptr, ptr %42, align 8, !tbaa !44
  tail call void @sbitmap_a_or_b(ptr noundef %28, ptr noundef %43, ptr noundef %44) #15
  %45 = load i32, ptr %25, align 8, !tbaa !47
  %46 = load i32, ptr %16, align 8, !tbaa !47
  %47 = add i32 %46, %45
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = tail call ptr @xmalloc(i64 noundef %49) #15
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %28) #14
  %51 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #14, !range !40
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %129, label %53

53:                                               ; preds = %41, %122
  %54 = phi i32 [ %126, %122 ], [ 0, %41 ]
  %55 = phi i32 [ %125, %122 ], [ 0, %41 ]
  %56 = phi i32 [ %124, %122 ], [ 0, %41 ]
  %57 = phi i8 [ %123, %122 ], [ 0, %41 ]
  %58 = load i32, ptr %4, align 4, !tbaa !36
  %59 = load ptr, ptr %5, align 8, !tbaa !44
  %60 = getelementptr inbounds %struct.simple_bitmap_def, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !57
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = lshr i32 %58, 6
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.simple_bitmap_def, ptr %59, i64 0, i32 3, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !59
  %68 = and i32 %58, 63
  %69 = zext nneg i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = and i64 %67, %70
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %63, %53
  %74 = phi i1 [ false, %53 ], [ %72, %63 ]
  %75 = load ptr, ptr %9, align 8, !tbaa !44
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !57
  %78 = icmp ult i32 %58, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = lshr i32 %58, 6
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 3, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !59
  %84 = and i32 %58, 63
  %85 = zext nneg i32 %84 to i64
  %86 = shl nuw i64 1, %85
  %87 = and i64 %83, %86
  %88 = icmp ne i64 %87, 0
  %89 = select i1 %74, i1 %88, i1 false
  br i1 %89, label %90, label %105

90:                                               ; preds = %79
  %91 = add i32 %56, 1
  %92 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %1, i32 noundef %56) #14
  %93 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %0, i32 noundef %55) #14
  %94 = or i64 %93, %92
  %95 = icmp eq i8 %57, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %0, i32 noundef %55) #14
  %98 = icmp ne i64 %94, %97
  %99 = zext i1 %98 to i8
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi i8 [ 1, %90 ], [ %99, %96 ]
  %102 = add i32 %55, 1
  %103 = zext i32 %54 to i64
  %104 = getelementptr inbounds i64, ptr %50, i64 %103
  store i64 %94, ptr %104, align 8, !tbaa !59
  br label %122

105:                                              ; preds = %73, %79
  %106 = zext i32 %54 to i64
  %107 = getelementptr inbounds i64, ptr %50, i64 %106
  br i1 %74, label %108, label %111

108:                                              ; preds = %105
  %109 = add i32 %55, 1
  %110 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %0, i32 noundef %55) #14
  store i64 %110, ptr %107, align 8, !tbaa !59
  br label %122

111:                                              ; preds = %105
  %112 = add i32 %56, 1
  %113 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %1, i32 noundef %56) #14
  store i64 %113, ptr %107, align 8, !tbaa !59
  %114 = load ptr, ptr %5, align 8, !tbaa !44
  %115 = getelementptr inbounds %struct.simple_bitmap_def, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !57
  %117 = icmp ult i32 %58, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 630, ptr noundef nonnull @.str.1) #15
  %119 = load ptr, ptr %5, align 8, !tbaa !44
  br label %120

120:                                              ; preds = %111, %118
  %121 = phi ptr [ %114, %111 ], [ %119, %118 ]
  tail call fastcc void @SET_BIT(ptr noundef %121, i32 noundef %58) #14
  br label %122

122:                                              ; preds = %108, %120, %100
  %123 = phi i8 [ %101, %100 ], [ %57, %108 ], [ 1, %120 ]
  %124 = phi i32 [ %91, %100 ], [ %56, %108 ], [ %112, %120 ]
  %125 = phi i32 [ %102, %100 ], [ %109, %108 ], [ %55, %120 ]
  %126 = add i32 %54, 1
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %3) #14
  %127 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #14, !range !40
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %53, !llvm.loop !92

129:                                              ; preds = %122, %41
  %130 = phi i8 [ 0, %41 ], [ %123, %122 ]
  %131 = phi i32 [ 0, %41 ], [ %126, %122 ]
  %132 = load ptr, ptr %28, align 8, !tbaa !80
  tail call void @free(ptr noundef %132) #14
  tail call void @free(ptr noundef %28) #14
  %133 = icmp eq i8 %130, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  store i32 %131, ptr %16, align 8, !tbaa !47
  %135 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !56
  tail call void @free(ptr noundef %136) #14
  store ptr %50, ptr %135, align 8, !tbaa !56
  store i32 %47, ptr %0, align 8, !tbaa !77
  br label %138

137:                                              ; preds = %129
  tail call void @free(ptr noundef %50) #14
  br label %138

138:                                              ; preds = %22, %134, %137, %24, %2, %23
  %139 = phi i8 [ 1, %23 ], [ 0, %2 ], [ 0, %24 ], [ 0, %137 ], [ %130, %134 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i8 %139
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_copy_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ebitmap_ior(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca %struct.sbitmap_iterator, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %14 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !74
  %15 = tail call i32 @llvm.umax.i32(i32 %9, i32 %13)
  %16 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %15) #15
  tail call void @sbitmap_zero(ptr noundef %16) #15
  %17 = icmp eq i32 %9, %13
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8, !tbaa !44
  br label %30

20:                                               ; preds = %3
  %21 = icmp ult i32 %9, %13
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %10, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !66
  tail call void @sbitmap_copy_n(ptr noundef %16, ptr noundef %23, i32 noundef %25) #15
  br label %30

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !66
  tail call void @sbitmap_copy_n(ptr noundef %16, ptr noundef %27, i32 noundef %29) #15
  br label %30

30:                                               ; preds = %22, %26, %18
  %31 = phi ptr [ %6, %22 ], [ %10, %26 ], [ %10, %18 ]
  %32 = phi ptr [ %16, %22 ], [ %16, %26 ], [ %19, %18 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !44
  tail call void @sbitmap_a_or_b(ptr noundef %16, ptr noundef %32, ptr noundef %33) #15
  %34 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !47
  %38 = add i32 %37, %35
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = tail call ptr @xmalloc(i64 noundef %40) #15
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %16) #14
  %42 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #14, !range !40
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %142, label %44

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  br label %46

46:                                               ; preds = %44, %128
  %47 = phi i32 [ 0, %44 ], [ %104, %128 ]
  %48 = phi i32 [ 0, %44 ], [ %102, %128 ]
  %49 = phi i32 [ 0, %44 ], [ %101, %128 ]
  %50 = phi i8 [ 0, %44 ], [ %129, %128 ]
  %51 = load i32, ptr %5, align 4, !tbaa !36
  %52 = load ptr, ptr %6, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !57
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = lshr i32 %51, 6
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %52, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !59
  %61 = and i32 %51, 63
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = and i64 %60, %63
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %56, %46
  %67 = phi i1 [ false, %46 ], [ %65, %56 ]
  %68 = load ptr, ptr %10, align 8, !tbaa !44
  %69 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !57
  %71 = icmp ult i32 %51, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = lshr i32 %51, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !59
  %77 = and i32 %51, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %76, %79
  %81 = icmp ne i64 %80, 0
  %82 = select i1 %67, i1 %81, i1 false
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = add i32 %48, 1
  %85 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %1, i32 noundef %48) #14
  %86 = add i32 %49, 1
  %87 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %2, i32 noundef %49) #14
  %88 = or i64 %87, %85
  %89 = zext i32 %47 to i64
  %90 = getelementptr inbounds i64, ptr %41, i64 %89
  store i64 %88, ptr %90, align 8, !tbaa !59
  br label %100

91:                                               ; preds = %66, %72
  %92 = zext i32 %47 to i64
  %93 = getelementptr inbounds i64, ptr %41, i64 %92
  br i1 %67, label %94, label %97

94:                                               ; preds = %91
  %95 = add i32 %48, 1
  %96 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %1, i32 noundef %48) #14
  store i64 %96, ptr %93, align 8, !tbaa !59
  br label %100

97:                                               ; preds = %91
  %98 = add i32 %49, 1
  %99 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %2, i32 noundef %49) #14
  store i64 %99, ptr %93, align 8, !tbaa !59
  br label %100

100:                                              ; preds = %94, %97, %83
  %101 = phi i32 [ %86, %83 ], [ %49, %94 ], [ %98, %97 ]
  %102 = phi i32 [ %84, %83 ], [ %95, %94 ], [ %48, %97 ]
  %103 = phi i64 [ %88, %83 ], [ %96, %94 ], [ %99, %97 ]
  %104 = add i32 %47, 1
  %105 = load ptr, ptr %45, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !57
  %108 = icmp ult i32 %51, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %100
  %110 = lshr i32 %51, 6
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds %struct.simple_bitmap_def, ptr %105, i64 0, i32 3, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !59
  %114 = and i32 %51, 63
  %115 = zext nneg i32 %114 to i64
  %116 = shl nuw i64 1, %115
  %117 = and i64 %113, %116
  %118 = icmp ne i64 %117, 0
  %119 = icmp eq i8 %50, 0
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = zext i32 %51 to i64
  %123 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %105, i64 noundef %122) #15
  %124 = trunc i64 %123 to i32
  %125 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %0, i32 noundef %124) #14
  %126 = icmp ne i64 %125, %103
  %127 = zext i1 %126 to i8
  br label %128

128:                                              ; preds = %100, %109, %121
  %129 = phi i8 [ %127, %121 ], [ 1, %109 ], [ 1, %100 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #14
  %130 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #14, !range !40
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %46, !llvm.loop !93

132:                                              ; preds = %128
  %133 = icmp eq i8 %129, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !44
  %137 = load ptr, ptr %136, align 8, !tbaa !80
  tail call void @free(ptr noundef %137) #14
  %138 = load ptr, ptr %135, align 8, !tbaa !44
  tail call void @free(ptr noundef %138) #14
  store ptr %16, ptr %135, align 8, !tbaa !44
  %139 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %104, ptr %139, align 8, !tbaa !47
  %140 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !56
  tail call void @free(ptr noundef %141) #14
  store ptr %41, ptr %140, align 8, !tbaa !56
  store i32 %38, ptr %0, align 8, !tbaa !77
  br label %144

142:                                              ; preds = %30, %132
  %143 = load ptr, ptr %16, align 8, !tbaa !80
  tail call void @free(ptr noundef %143) #14
  tail call void @free(ptr noundef %16) #14
  tail call void @free(ptr noundef %41) #14
  br label %144

144:                                              ; preds = %142, %134
  %145 = phi i8 [ 0, %142 ], [ 1, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret i8 %145
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ebitmap_and_compl_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %71, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %14) #14
  %15 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !40
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %61
  %20 = phi i8 [ 0, %17 ], [ %63, %61 ]
  %21 = phi i32 [ 0, %17 ], [ %62, %61 ]
  %22 = phi i32 [ 0, %17 ], [ %64, %61 ]
  %23 = load i32, ptr %3, align 4, !tbaa !36
  %24 = load ptr, ptr %18, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.simple_bitmap_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %19
  %29 = lshr i32 %23, 6
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %24, i64 0, i32 3, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !59
  %33 = and i32 %23, 63
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = and i64 %32, %35
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %28
  %39 = zext i32 %23 to i64
  %40 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %24, i64 noundef %39) #15
  %41 = trunc i64 %40 to i32
  %42 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %0, i32 noundef %22) #14
  %43 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %1, i32 noundef %41) #14
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = icmp eq i8 %20, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %0, i32 noundef %22) #14
  %49 = icmp ne i64 %48, %45
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi i8 [ 1, %38 ], [ %50, %47 ]
  %53 = icmp eq i64 %45, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = add i32 %21, 1
  %56 = tail call fastcc ptr @ebitmap_array_grow_get(ptr noundef %0, i32 noundef %21) #14
  store i64 %45, ptr %56, align 8, !tbaa !59
  br label %61

57:                                               ; preds = %51
  %58 = load ptr, ptr %13, align 8, !tbaa !44
  tail call fastcc void @RESET_BIT(ptr noundef %58, i32 noundef %23) #14
  br label %61

59:                                               ; preds = %19, %28
  %60 = add i32 %21, 1
  br label %61

61:                                               ; preds = %54, %57, %59
  %62 = phi i32 [ %60, %59 ], [ %55, %54 ], [ %21, %57 ]
  %63 = phi i8 [ %20, %59 ], [ %52, %54 ], [ %52, %57 ]
  %64 = add i32 %22, 1
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #14
  %65 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !40
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %19, !llvm.loop !94

67:                                               ; preds = %61, %12
  %68 = phi i32 [ 0, %12 ], [ %62, %61 ]
  %69 = phi i8 [ 0, %12 ], [ %63, %61 ]
  %70 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %68, ptr %70, align 8, !tbaa !47
  br label %71

71:                                               ; preds = %7, %67
  %72 = phi i8 [ %69, %67 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i8 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ebitmap_and_compl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca %struct.sbitmap_iterator, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %10 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !74
  %11 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %9) #15
  tail call void @sbitmap_zero(ptr noundef %11) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @sbitmap_copy(ptr noundef %11, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xmalloc(i64 noundef %16) #15
  %18 = load ptr, ptr %6, align 8, !tbaa !44
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %18) #14
  %19 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #14, !range !40
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %106, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  %23 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  br label %24

24:                                               ; preds = %21, %92
  %25 = phi i32 [ 0, %21 ], [ %67, %92 ]
  %26 = phi i32 [ 0, %21 ], [ %68, %92 ]
  %27 = phi i8 [ 0, %21 ], [ %93, %92 ]
  %28 = load i32, ptr %5, align 4, !tbaa !36
  %29 = load ptr, ptr %22, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !57
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %24
  %34 = lshr i32 %28, 6
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !59
  %38 = and i32 %28, 63
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = and i64 %37, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %33
  %44 = zext i32 %28 to i64
  %45 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %29, i64 noundef %44) #15
  %46 = trunc i64 %45 to i32
  %47 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %1, i32 noundef %26) #14
  %48 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %2, i32 noundef %46) #14
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = add i32 %25, 1
  %54 = zext i32 %25 to i64
  %55 = getelementptr inbounds i64, ptr %17, i64 %54
  store i64 %50, ptr %55, align 8, !tbaa !59
  br label %65

56:                                               ; preds = %43
  tail call fastcc void @RESET_BIT(ptr noundef %11, i32 noundef %28) #14
  br label %65

57:                                               ; preds = %24, %33
  %58 = tail call fastcc i64 @ebitmap_array_get(ptr noundef %1, i32 noundef %26) #14
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.1) #15
  br label %61

61:                                               ; preds = %57, %60
  %62 = add i32 %25, 1
  %63 = zext i32 %25 to i64
  %64 = getelementptr inbounds i64, ptr %17, i64 %63
  store i64 %58, ptr %64, align 8, !tbaa !59
  br label %65

65:                                               ; preds = %52, %56, %61
  %66 = phi i64 [ %58, %61 ], [ 0, %56 ], [ %50, %52 ]
  %67 = phi i32 [ %62, %61 ], [ %25, %56 ], [ %53, %52 ]
  %68 = add i32 %26, 1
  %69 = load ptr, ptr %23, align 8, !tbaa !44
  %70 = getelementptr inbounds %struct.simple_bitmap_def, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !57
  %72 = icmp ult i32 %28, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %65
  %74 = lshr i32 %28, 6
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %69, i64 0, i32 3, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !59
  %78 = and i32 %28, 63
  %79 = zext nneg i32 %78 to i64
  %80 = shl nuw i64 1, %79
  %81 = and i64 %77, %80
  %82 = icmp ne i64 %81, 0
  %83 = icmp eq i8 %27, 0
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = zext i32 %28 to i64
  %87 = tail call i64 @sbitmap_popcount(ptr noundef nonnull %69, i64 noundef %86) #15
  %88 = trunc i64 %87 to i32
  %89 = tail call fastcc i64 @ebitmap_array_get(ptr noundef nonnull %0, i32 noundef %88) #14
  %90 = icmp ne i64 %89, %66
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %65, %73, %85
  %93 = phi i8 [ %91, %85 ], [ 1, %73 ], [ 1, %65 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #14
  %94 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #14, !range !40
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %24, !llvm.loop !95

96:                                               ; preds = %92
  %97 = icmp eq i8 %93, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = load ptr, ptr %100, align 8, !tbaa !80
  tail call void @free(ptr noundef %101) #14
  %102 = load ptr, ptr %99, align 8, !tbaa !44
  tail call void @free(ptr noundef %102) #14
  store ptr %11, ptr %99, align 8, !tbaa !44
  %103 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %67, ptr %103, align 8, !tbaa !47
  %104 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  tail call void @free(ptr noundef %105) #14
  store ptr %17, ptr %104, align 8, !tbaa !56
  store i32 %14, ptr %0, align 8, !tbaa !77
  br label %107

106:                                              ; preds = %3, %96
  tail call void @free(ptr noundef %11) #14
  tail call void @free(ptr noundef %17) #14
  br label %107

107:                                              ; preds = %106, %98
  %108 = phi i8 [ 0, %106 ], [ 1, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret i8 %108
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ebitmap_ior_and_compl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !35 {
  %5 = tail call ptr @ebitmap_alloc(i32 noundef 1) #14
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !74
  %7 = tail call zeroext i8 @ebitmap_and_compl(ptr noundef %5, ptr noundef %2, ptr noundef %3) #14, !range !40
  %8 = tail call zeroext i8 @ebitmap_ior(ptr noundef %0, ptr noundef %1, ptr noundef %5) #14, !range !40
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  tail call void @free(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  tail call void @free(ptr noundef %13) #14
  %14 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void @free(ptr noundef %14) #14
  tail call void @free(ptr noundef %5) #14
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ebitmap_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !66
  %11 = tail call i32 @llvm.umin.i32(i32 %6, i32 %10)
  %12 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = icmp ugt i32 %6, %10
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = tail call i32 @sbitmap_equal(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !66
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %25, %22 ], [ %10, %17 ]
  %28 = phi ptr [ %23, %22 ], [ %8, %17 ]
  %29 = icmp eq i32 %11, %27
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 8, !tbaa !44
  %32 = tail call i32 @sbitmap_equal(ptr noundef nonnull %28, ptr noundef %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %26, %30
  %35 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = load i32, ptr %12, align 8, !tbaa !47
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 3
  %42 = tail call i32 @bcmp(ptr %36, ptr %38, i64 %41)
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %30, %19, %2, %34
  %46 = phi i8 [ %44, %34 ], [ 0, %2 ], [ 0, %19 ], [ 0, %30 ]
  ret i8 %46
}

; Function Attrs: optsize
declare i32 @sbitmap_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{i8 0, i8 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"ebitmap.c:ebitmap_iter_init"}
!44 = !{!45, !46, i64 8}
!45 = !{!"ebitmap_def", !37, i64 0, !46, i64 8, !37, i64 16, !37, i64 20, !46, i64 24, !46, i64 32}
!46 = !{!"any pointer", !38, i64 0}
!47 = !{!45, !37, i64 16}
!48 = !{!49, !37, i64 12}
!49 = !{!"", !46, i64 0, !37, i64 8, !37, i64 12, !37, i64 16, !50, i64 24, !51, i64 32}
!50 = !{!"long", !38, i64 0}
!51 = !{!"", !46, i64 0, !37, i64 8, !37, i64 12, !37, i64 16, !50, i64 24}
!52 = !{!49, !46, i64 0}
!53 = !{!49, !37, i64 8}
!54 = !{!49, !37, i64 16}
!55 = !{!49, !50, i64 24}
!56 = !{!45, !46, i64 24}
!57 = !{!58, !37, i64 8}
!58 = !{!"simple_bitmap_def", !46, i64 0, !37, i64 8, !37, i64 12, !38, i64 16}
!59 = !{!50, !50, i64 0}
!60 = !{!"ebitmap.c:ebitmap_iter_cond"}
!61 = distinct !{!61, !42}
!62 = !{!"ebitmap.c:ebitmap_iter_next"}
!63 = !{!"ebitmap.c:sbitmap_iter_init"}
!64 = !{!51, !37, i64 12}
!65 = !{!51, !37, i64 16}
!66 = !{!58, !37, i64 12}
!67 = !{!51, !37, i64 8}
!68 = !{!51, !46, i64 0}
!69 = !{!"ebitmap.c:sbitmap_iter_next"}
!70 = !{!51, !50, i64 24}
!71 = !{!"ebitmap.c:sbitmap_iter_cond"}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = !{!45, !46, i64 32}
!75 = !{!45, !37, i64 20}
!76 = !{!"ebitmap.c:ebitmap_array_clear"}
!77 = !{!45, !37, i64 0}
!78 = !{!"ebitmap.c:ebitmap_array_init"}
!79 = !{!"ebitmap.c:RESET_BIT"}
!80 = !{!58, !46, i64 0}
!81 = !{!38, !38, i64 0}
!82 = distinct !{!82, !42}
!83 = !{!"ebitmap.c:SET_BIT"}
!84 = !{!"ebitmap.c:ebitmap_array_grow_get"}
!85 = !{!"ebitmap.c:ebitmap_array_get"}
!86 = !{!"ebitmap.c:ebitmap_array_maybe_grow"}
!87 = !{!"ebitmap.c:ebitmap_array_grow"}
!88 = distinct !{!88, !42}
!89 = !{!46, !46, i64 0}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !42}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
