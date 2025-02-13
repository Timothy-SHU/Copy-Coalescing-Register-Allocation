; ModuleID = 'blender/source/blender/blenlib/intern/smallhash.c'
source_filename = "blender/source/blender/blenlib/intern/smallhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SmallHash = type { i32, i32, i32, ptr, [131 x %struct.SmallHashEntry] }
%struct.SmallHashEntry = type { i64, ptr }
%struct.SmallHashIter = type { ptr, i32 }

@hashsizes = external local_unnamed_addr constant [0 x i32], align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_smallhash_init_ex = private unnamed_addr constant [22 x i8] c"BLI_smallhash_init_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.smallhash_resize_buckets = private unnamed_addr constant [25 x i8] c"smallhash_resize_buckets\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_smallhash_init_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 2
  store i32 2, ptr %4, align 8, !tbaa !40
  %5 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @hashsizes, i64 0, i64 2), align 4, !tbaa !41
  store i32 %5, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !43
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  tail call fastcc void @smallhash_buckets_reserve(ptr noundef nonnull %0, i32 noundef %1) #8
  %10 = load i32, ptr %0, align 8, !tbaa !42
  %11 = icmp ugt i32 %10, 131
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %14 = zext i32 %10 to i64
  %15 = shl nuw nsw i64 %14, 4
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @__func__.BLI_smallhash_init_ex) #9
  store ptr %16, ptr %7, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %9, %12, %2
  tail call fastcc void @smallhash_init_empty(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @smallhash_buckets_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !45 {
  %3 = load i32, ptr %0, align 8, !tbaa !42
  %4 = tail call fastcc zeroext i8 @smallhash_test_expand_buckets(i32 noundef %1, i32 noundef %3) #8, !range !46
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !40
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %8, %6 ], [ %11, %9 ]
  %11 = add i32 %10, 1
  store i32 %11, ptr %7, align 8, !tbaa !40
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @hashsizes, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !41
  store i32 %14, ptr %0, align 8, !tbaa !42
  %15 = tail call fastcc zeroext i8 @smallhash_test_expand_buckets(i32 noundef %1, i32 noundef %14) #8, !range !46
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %9, !llvm.loop !47

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @smallhash_init_empty(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !49 {
  %2 = load i32, ptr %0, align 8, !tbaa !42
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %12, %8 ]
  %10 = getelementptr inbounds %struct.SmallHashEntry, ptr %6, i64 %9
  store i64 -1, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.SmallHashEntry, ptr %6, i64 %9, i32 1
  store ptr inttoptr (i64 -2 to ptr), ptr %11, align 8, !tbaa !53
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, %7
  br i1 %13, label %14, label %8, !llvm.loop !54

14:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_smallhash_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_smallhash_init_ex(ptr noundef %0, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_smallhash_release(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %7(ptr noundef %3) #9
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_smallhash_insert(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !34
  %7 = load i32, ptr %0, align 8, !tbaa !42
  %8 = tail call fastcc zeroext i8 @smallhash_test_expand_buckets(i32 noundef %6, i32 noundef %7) #8, !range !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !40
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !41
  tail call fastcc void @smallhash_resize_buckets(ptr noundef nonnull %0, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %10, %3
  %18 = tail call fastcc ptr @smallhash_lookup_first_free(ptr noundef nonnull %0, i64 noundef %1) #8
  store i64 %1, ptr %18, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.SmallHashEntry, ptr %18, i64 0, i32 1
  store ptr %2, ptr %19, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @smallhash_test_expand_buckets(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !55 {
  %3 = lshr i32 %0, 1
  %4 = add i32 %3, %0
  %5 = icmp ugt i32 %4, %1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smallhash_resize_buckets(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load i32, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %7 = icmp eq ptr %4, %6
  %8 = icmp ult i32 %1, 132
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = zext i32 %5 to i64
  %11 = shl nuw nsw i64 %10, 4
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %12, ptr align 8 %4, i64 %11, i1 false)
  br label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %15 = zext i32 %1 to i64
  %16 = shl nuw nsw i64 %15, 4
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @__func__.smallhash_resize_buckets) #9
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %17, %13 ], [ %6, %9 ]
  %20 = phi ptr [ %4, %13 ], [ %12, %9 ]
  store ptr %19, ptr %3, align 8, !tbaa !43
  store i32 %1, ptr %0, align 8, !tbaa !42
  tail call fastcc void @smallhash_init_empty(ptr noundef nonnull %0) #8
  %21 = icmp eq i32 %5, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = zext i32 %5 to i64
  br label %24

24:                                               ; preds = %22, %35
  %25 = phi i64 [ 0, %22 ], [ %36, %35 ]
  %26 = getelementptr inbounds %struct.SmallHashEntry, ptr %20, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = tail call fastcc zeroext i8 @smallhash_val_is_used(ptr noundef %27) #8, !range !46
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.SmallHashEntry, ptr %20, i64 %25
  %32 = load i64, ptr %31, align 8, !tbaa !50
  %33 = tail call fastcc ptr @smallhash_lookup_first_free(ptr noundef nonnull %0, i64 noundef %32) #8
  store i64 %32, ptr %33, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.SmallHashEntry, ptr %33, i64 0, i32 1
  store ptr %27, ptr %34, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %24, %30
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %38, label %24, !llvm.loop !57

38:                                               ; preds = %35, %18
  br i1 %7, label %41, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %40(ptr noundef %20) #9
  br label %41

41:                                               ; preds = %39, %38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @smallhash_lookup_first_free(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !PGOFuncName !58 {
  %3 = tail call fastcc i32 @smallhash_key(i64 noundef %1) #8
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load i32, ptr %0, align 8, !tbaa !42
  %7 = urem i32 %3, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = tail call fastcc zeroext i8 @smallhash_val_is_used(ptr noundef %10) #8, !range !46
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %2, %13
  %14 = phi i32 [ %17, %13 ], [ 1, %2 ]
  %15 = phi i32 [ %18, %13 ], [ %3, %2 ]
  %16 = shl i32 %14, 1
  %17 = or disjoint i32 %16, 1
  %18 = add i32 %17, %15
  %19 = urem i32 %18, %6
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %20, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = tail call fastcc zeroext i8 @smallhash_val_is_used(ptr noundef %22) #8, !range !46
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !59

25:                                               ; preds = %13, %2
  %26 = phi i64 [ %8, %2 ], [ %20, %13 ]
  %27 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %26
  ret ptr %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_smallhash_lookup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call fastcc ptr @smallhash_lookup(ptr noundef %0, i64 noundef %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SmallHashEntry, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @smallhash_lookup(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !PGOFuncName !60 {
  %3 = tail call fastcc i32 @smallhash_key(i64 noundef %1) #8
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load i32, ptr %0, align 8, !tbaa !42
  %7 = urem i32 %3, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, inttoptr (i64 -2 to ptr)
  br i1 %11, label %28, label %12

12:                                               ; preds = %2, %19
  %13 = phi i64 [ %24, %19 ], [ %8, %2 ]
  %14 = phi i32 [ %21, %19 ], [ 1, %2 ]
  %15 = phi i32 [ %22, %19 ], [ %3, %2 ]
  %16 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = shl i32 %14, 1
  %21 = or disjoint i32 %20, 1
  %22 = add i32 %21, %15
  %23 = urem i32 %22, %6
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %24, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = icmp eq ptr %26, inttoptr (i64 -2 to ptr)
  br i1 %27, label %28, label %12, !llvm.loop !61

28:                                               ; preds = %12, %19, %2
  %29 = phi ptr [ null, %2 ], [ null, %19 ], [ %16, %12 ]
  ret ptr %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_smallhash_lookup_p(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call fastcc ptr @smallhash_lookup(ptr noundef %0, i64 noundef %1) #8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.SmallHashEntry, ptr %3, i64 0, i32 1
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_smallhash_haskey(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call fastcc ptr @smallhash_lookup(ptr noundef %0, i64 noundef %1) #8
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_smallhash_count(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !34
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_smallhash_iternext(ptr nocapture noundef %0, ptr noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.SmallHashIter, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = load i32, ptr %3, align 8, !tbaa !64
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SmallHash, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = zext i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi i64 [ %11, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.SmallHashEntry, ptr %10, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = tail call fastcc zeroext i8 @smallhash_val_is_used(ptr noundef %15) #8, !range !46
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = trunc i64 %13 to i32
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.SmallHashEntry, ptr %10, i64 %13
  %23 = load i64, ptr %22, align 8, !tbaa !50
  store i64 %23, ptr %1, align 8, !tbaa !65
  br label %24

24:                                               ; preds = %21, %18
  %25 = add nuw i32 %19, 1
  store i32 %25, ptr %3, align 8, !tbaa !64
  br label %30

26:                                               ; preds = %12
  %27 = add nuw nsw i64 %13, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %3, align 8, !tbaa !64
  %29 = icmp eq i32 %5, %28
  br i1 %29, label %30, label %12, !llvm.loop !66

30:                                               ; preds = %26, %2, %24
  %31 = phi ptr [ %15, %24 ], [ null, %2 ], [ null, %26 ]
  ret ptr %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @smallhash_val_is_used(ptr noundef readnone %0) unnamed_addr #3 !PGOFuncName !67 {
  %2 = icmp ne ptr %0, inttoptr (i64 -2 to ptr)
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_smallhash_iternew(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  store ptr %0, ptr %1, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.SmallHashIter, ptr %1, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !64
  %5 = tail call ptr @BLI_smallhash_iternext(ptr noundef nonnull %1, ptr noundef %2) #8
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @smallhash_key(i64 noundef %0) unnamed_addr #3 !PGOFuncName !68 {
  %2 = trunc i64 %0 to i32
  ret i32 %2
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

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
!34 = !{!35, !36, i64 4}
!35 = !{!"SmallHash", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !37, i64 24}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !36, i64 8}
!41 = !{!36, !36, i64 0}
!42 = !{!35, !36, i64 0}
!43 = !{!35, !39, i64 16}
!44 = !{!39, !39, i64 0}
!45 = !{!"smallhash.c:smallhash_buckets_reserve"}
!46 = !{i8 0, i8 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"smallhash.c:smallhash_init_empty"}
!50 = !{!51, !52, i64 0}
!51 = !{!"", !52, i64 0, !39, i64 8}
!52 = !{!"long", !37, i64 0}
!53 = !{!51, !39, i64 8}
!54 = distinct !{!54, !48}
!55 = !{!"smallhash.c:smallhash_test_expand_buckets"}
!56 = !{!"smallhash.c:smallhash_resize_buckets"}
!57 = distinct !{!57, !48}
!58 = !{!"smallhash.c:smallhash_lookup_first_free"}
!59 = distinct !{!59, !48}
!60 = !{!"smallhash.c:smallhash_lookup"}
!61 = distinct !{!61, !48}
!62 = !{!63, !39, i64 0}
!63 = !{!"", !39, i64 0, !36, i64 8}
!64 = !{!63, !36, i64 8}
!65 = !{!52, !52, i64 0}
!66 = distinct !{!66, !48}
!67 = !{!"smallhash.c:smallhash_val_is_used"}
!68 = !{!"smallhash.c:smallhash_key"}
