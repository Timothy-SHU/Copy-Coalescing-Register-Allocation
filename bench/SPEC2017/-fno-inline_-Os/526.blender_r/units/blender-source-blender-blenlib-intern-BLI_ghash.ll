; ModuleID = 'blender/source/blender/blenlib/intern/BLI_ghash.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_ghash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GHash = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.Entry = type { ptr, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.GHashPair = type { ptr, ptr }

@hashsizes = dso_local local_unnamed_addr constant [27 x i32] [i32 5, i32 11, i32 17, i32 37, i32 67, i32 131, i32 257, i32 521, i32 1031, i32 2053, i32 4099, i32 8209, i32 16411, i32 32771, i32 65537, i32 131101, i32 262147, i32 524309, i32 1048583, i32 2097169, i32 4194319, i32 8388617, i32 16777259, i32 33554467, i32 67108879, i32 134217757, i32 268435459], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"buckets\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ghash iterator\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GHashPair\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_new_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @ghash_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 24) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ghash_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !34 {
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 48, ptr noundef %2) #12
  store ptr %0, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.GHash, ptr %7, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.GHash, ptr %7, i64 0, i32 4
  store <4 x i32> <i32 5, i32 0, i32 0, i32 0>, ptr %9, align 8, !tbaa !43
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  tail call fastcc void @ghash_buckets_reserve(ptr noundef nonnull %7, i32 noundef %3) #11
  %12 = load i32, ptr %9, align 8, !tbaa !44
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i64 [ %14, %11 ], [ 40, %5 ]
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %18 = tail call ptr %17(i64 noundef %16, ptr noundef nonnull @.str) #12
  %19 = getelementptr inbounds %struct.GHash, ptr %7, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !45
  %20 = tail call ptr @BLI_mempool_create(i32 noundef %4, i32 noundef 64, i32 noundef 64, i32 noundef 0) #12
  %21 = getelementptr inbounds %struct.GHash, ptr %7, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !46
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BLI_ghash_new_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_ghash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !47
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ghash_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ghash_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !48 {
  %4 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  tail call fastcc void @ghash_insert_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_ghash_reinsert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  %7 = tail call fastcc ptr @ghash_lookup_entry_ex(ptr noundef %0, ptr noundef %1, i32 noundef %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Entry, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  tail call void %3(ptr noundef %13) #12
  br label %14

14:                                               ; preds = %11, %9
  %15 = icmp eq ptr %4, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Entry, ptr %7, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  tail call void %4(ptr noundef %18) #12
  br label %19

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.Entry, ptr %7, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.Entry, ptr %7, i64 0, i32 2
  store ptr %2, ptr %21, align 8, !tbaa !51
  br label %23

22:                                               ; preds = %5
  tail call fastcc void @ghash_insert_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %6) #11
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i8 [ 0, %19 ], [ 1, %22 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ghash_keyhash(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !52 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = tail call i32 %3(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = urem i32 %4, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ghash_lookup_entry_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %13, %3
  %10 = phi ptr [ %7, %3 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %8, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.Entry, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call zeroext i8 %14(ptr noundef %1, ptr noundef %16) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !54

19:                                               ; preds = %9, %13
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ghash_insert_ex(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !56 {
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = tail call ptr @BLI_mempool_alloc(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  store ptr %12, ptr %7, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.Entry, ptr %7, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.Entry, ptr %7, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !51
  store ptr %7, ptr %11, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !47
  %18 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = tail call fastcc zeroext i8 @ghash_test_expand_buckets(i32 noundef %17, i32 noundef %19) #11, !range !58
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !59
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !43
  tail call fastcc void @ghash_resize_buckets(ptr noundef nonnull %0, i32 noundef %28) #11
  br label %29

29:                                               ; preds = %22, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_ghash_lookup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ghash_lookup_entry(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Entry, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ghash_lookup_entry(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  %4 = tail call fastcc ptr @ghash_lookup_entry_ex(ptr noundef %0, ptr noundef %1, i32 noundef %3) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_ghash_lookup_default(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @ghash_lookup_entry(ptr noundef %0, ptr noundef %1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Entry, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ %2, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_ghash_lookup_p(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ghash_lookup_entry(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Entry, ptr %3, i64 0, i32 2
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_ghash_remove(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  %6 = tail call fastcc ptr @ghash_remove_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @BLI_mempool_free(ptr noundef %10, ptr noundef nonnull %6) #12
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi i8 [ 1, %8 ], [ 0, %4 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ghash_remove_ex(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !61 {
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %16, %5
  %12 = phi ptr [ %9, %5 ], [ %14, %16 ]
  %13 = phi ptr [ null, %5 ], [ %14, %16 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %10, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.Entry, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = tail call zeroext i8 %17(ptr noundef %1, ptr noundef %19) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11, !llvm.loop !62

22:                                               ; preds = %16
  %23 = load ptr, ptr %14, align 8, !tbaa !57
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Entry, ptr %14, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  tail call void %2(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %25, %22
  %29 = icmp eq ptr %3, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Entry, ptr %14, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  tail call void %3(ptr noundef %32) #12
  br label %33

33:                                               ; preds = %30, %28
  %34 = icmp eq ptr %13, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load ptr, ptr %6, align 8, !tbaa !45
  %37 = getelementptr inbounds ptr, ptr %36, i64 %8
  br label %38

38:                                               ; preds = %33, %35
  %39 = phi ptr [ %37, %35 ], [ %13, %33 ]
  store ptr %23, ptr %39, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !47
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4, !tbaa !47
  br label %43

43:                                               ; preds = %11, %38
  ret ptr %14
}

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_ghash_popkey(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  %5 = tail call fastcc ptr @ghash_remove_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Entry, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @BLI_mempool_free(ptr noundef %11, ptr noundef nonnull %5) #12
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %9, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_ghash_haskey(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ghash_lookup_entry(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ghash_clear_ex(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @ghash_free_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  store i32 5, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  store i32 0, ptr %12, align 8, !tbaa !59
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call fastcc void @ghash_buckets_reserve(ptr noundef nonnull %0, i32 noundef %3) #11
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ %3, %14 ], [ -1, %9 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  tail call void %17(ptr noundef %19) #12
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %21 = load i32, ptr %10, align 8, !tbaa !44
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #12
  store ptr %24, ptr %18, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  tail call void @BLI_mempool_clear_ex(ptr noundef %26, i32 noundef %16) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ghash_free_cb(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !PGOFuncName !63 {
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !44
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  br label %11

11:                                               ; preds = %7, %32
  %12 = phi i32 [ %5, %7 ], [ %33, %32 ]
  %13 = phi i64 [ 0, %7 ], [ %34, %32 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %11, %28
  %19 = phi ptr [ %20, %28 ], [ %16, %11 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  br i1 %9, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Entry, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  tail call void %1(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %21, %18
  br i1 %10, label %28, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.Entry, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  tail call void %2(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %25, %24
  %29 = icmp eq ptr %20, null
  br i1 %29, label %30, label %18, !llvm.loop !64

30:                                               ; preds = %28
  %31 = load i32, ptr %4, align 8, !tbaa !44
  br label %32

32:                                               ; preds = %30, %11
  %33 = phi i32 [ %31, %30 ], [ %12, %11 ]
  %34 = add nuw nsw i64 %13, 1
  %35 = zext i32 %33 to i64
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %11, label %37, !llvm.loop !65

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @ghash_buckets_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = tail call fastcc zeroext i8 @ghash_test_expand_buckets(i32 noundef %1, i32 noundef %4) #11, !range !58
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %12 = add i32 %11, 1
  store i32 %12, ptr %8, align 8, !tbaa !59
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !43
  store i32 %15, ptr %3, align 8, !tbaa !44
  %16 = tail call fastcc zeroext i8 @ghash_test_expand_buckets(i32 noundef %1, i32 noundef %15) #11, !range !58
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %10, !llvm.loop !67

18:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_clear_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ghash_clear(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_ghash_clear_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ghash_free(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @ghash_free_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %8

8:                                                ; preds = %3, %7
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  tail call void %9(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call void @BLI_mempool_destroy(ptr noundef %13) #12
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %14(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ghash_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ghash_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghashIterator_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str.1) #12
  tail call void @BLI_ghashIterator_init(ptr noundef %3, ptr noundef %0) #11
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_ghashIterator_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  store ptr %1, ptr %0, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 2
  store i32 -1, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.GHash, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.GHash, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.GHash, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %8, %16
  %13 = phi i32 [ -1, %8 ], [ %14, %16 ]
  %14 = add i32 %13, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 8, !tbaa !45
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  store ptr %20, ptr %3, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %12, label %22, !llvm.loop !73

22:                                               ; preds = %12, %16
  %23 = phi i32 [ %11, %12 ], [ %14, %16 ]
  store i32 %23, ptr %4, align 8, !tbaa !72
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_ghashIterator_step(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %7, ptr %2, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.GHash, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.GHash, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %6, align 8, !tbaa !72
  br label %15

15:                                               ; preds = %9, %19
  %16 = phi i32 [ %14, %9 ], [ %17, %19 ]
  %17 = add i32 %16, 1
  %18 = icmp eq i32 %17, %12
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !45
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  store ptr %23, ptr %2, align 8, !tbaa !71
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25, !llvm.loop !74

25:                                               ; preds = %19, %15
  %26 = phi i32 [ %12, %15 ], [ %17, %19 ]
  store i32 %26, ptr %6, align 8, !tbaa !72
  br label %27

27:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ghashIterator_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %2(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BLI_ghashutil_ptrhash(ptr noundef %0) #6 {
  %2 = ptrtoint ptr %0 to i64
  %3 = lshr i64 %2, 4
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BLI_ghashutil_ptrcmp(ptr noundef readnone %0, ptr noundef readnone %1) #6 {
  %3 = icmp ne ptr %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_ghashutil_uinthash_v4(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4, !tbaa !43
  %3 = mul i32 %2, 37
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = add i32 %3, %5
  %7 = mul i32 %6, 37
  %8 = getelementptr inbounds i32, ptr %0, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = add i32 %7, %9
  %11 = mul i32 %10, 37
  %12 = getelementptr inbounds i32, ptr %0, i64 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = add i32 %11, %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_ghashutil_uinthash_v4_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) %1, i64 16)
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @BLI_ghashutil_uinthash(i32 noundef %0) local_unnamed_addr #6 {
  %2 = shl i32 %0, 16
  %3 = xor i32 %2, -1
  %4 = add i32 %3, %0
  %5 = lshr i32 %4, 5
  %6 = xor i32 %5, %4
  %7 = mul i32 %6, 9
  %8 = lshr i32 %7, 13
  %9 = xor i32 %8, %7
  %10 = shl i32 %9, 9
  %11 = xor i32 %10, -1
  %12 = add i32 %9, %11
  %13 = lshr i32 %12, 17
  %14 = xor i32 %13, %12
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @BLI_ghashutil_inthash_p(ptr noundef %0) #6 {
  %2 = ptrtoint ptr %0 to i64
  %3 = shl i64 %2, 16
  %4 = xor i64 %3, -1
  %5 = add i64 %4, %2
  %6 = lshr i64 %5, 5
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 9
  %9 = lshr i64 %8, 13
  %10 = xor i64 %9, %8
  %11 = shl i64 %10, 9
  %12 = xor i64 %11, -1
  %13 = add i64 %10, %12
  %14 = lshr i64 %13, 17
  %15 = xor i64 %14, %13
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BLI_ghashutil_intcmp(ptr noundef readnone %0, ptr noundef readnone %1) #6 {
  %3 = icmp ne ptr %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_ghashutil_strhash_n(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %10
  %5 = phi i64 [ %11, %10 ], [ %1, %2 ]
  %6 = phi i32 [ %14, %10 ], [ 5381, %2 ]
  %7 = phi ptr [ %15, %10 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !75
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = add i64 %5, -1
  %12 = sext i8 %8 to i32
  %13 = mul i32 %6, 33
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = icmp eq i64 %11, 0
  br i1 %16, label %17, label %4, !llvm.loop !76

17:                                               ; preds = %4, %10, %2
  %18 = phi i32 [ 5381, %2 ], [ %14, %10 ], [ %6, %4 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_ghashutil_strhash_p(ptr nocapture noundef readonly %0) #8 {
  %2 = load i8, ptr %0, align 1, !tbaa !75
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %10, %4 ], [ 5381, %1 ]
  %7 = phi ptr [ %11, %4 ], [ %0, %1 ]
  %8 = sext i8 %5 to i32
  %9 = mul i32 %6, 33
  %10 = add i32 %9, %8
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !75
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !77

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 5381, %1 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_ghashutil_strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #13
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghashutil_pairalloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str.2) #12
  store ptr %0, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.GHashPair, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !80
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @BLI_ghashutil_pairhash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  %3 = tail call i32 @BLI_ghashutil_ptrhash(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.GHashPair, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = tail call i32 @BLI_ghashutil_ptrhash(ptr noundef %5) #11
  %7 = xor i32 %6, %3
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BLI_ghashutil_paircmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !78
  %4 = load ptr, ptr %1, align 8, !tbaa !78
  %5 = tail call zeroext i8 @BLI_ghashutil_ptrcmp(ptr noundef %3, ptr noundef %4) #11, !range !58
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.GHashPair, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.GHashPair, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call zeroext i8 @BLI_ghashutil_ptrcmp(ptr noundef %9, ptr noundef %11) #11, !range !58
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %7 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ghashutil_pairfree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %2(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_ptr_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @BLI_ghashutil_ptrhash, ptr noundef nonnull @BLI_ghashutil_ptrcmp, ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_ptr_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_str_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @BLI_ghashutil_strhash_p, ptr noundef nonnull @BLI_ghashutil_strcmp, ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_str_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_int_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @BLI_ghashutil_inthash_p, ptr noundef nonnull @BLI_ghashutil_intcmp, ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_int_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_ghash_int_new_ex(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_pair_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @BLI_ghashutil_pairhash, ptr noundef nonnull @BLI_ghashutil_paircmp, ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_ghash_pair_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_ghash_pair_new_ex(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gset_new_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @ghash_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 16) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gset_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BLI_gset_new_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_gset_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !47
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gset_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  tail call fastcc void @ghash_insert_ex_keyonly(ptr noundef %0, ptr noundef %1, i32 noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ghash_insert_ex_keyonly(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !81 {
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @BLI_mempool_alloc(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %11, ptr %6, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.Entry, ptr %6, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !49
  store ptr %6, ptr %10, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !47
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = tail call fastcc zeroext i8 @ghash_test_expand_buckets(i32 noundef %15, i32 noundef %17) #11, !range !58
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !59
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !59
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !43
  tail call fastcc void @ghash_resize_buckets(ptr noundef nonnull %0, i32 noundef %26) #11
  br label %27

27:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_gset_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  %4 = tail call fastcc ptr @ghash_lookup_entry_ex(ptr noundef %0, ptr noundef %1, i32 noundef %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @ghash_insert_ex_keyonly(ptr noundef %0, ptr noundef %1, i32 noundef %3) #11
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_gset_reinsert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %1) #11
  %5 = tail call fastcc ptr @ghash_lookup_entry_ex(ptr noundef %0, ptr noundef %1, i32 noundef %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Entry, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void %2(ptr noundef %11) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = getelementptr inbounds %struct.Entry, ptr %5, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !49
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @ghash_insert_ex_keyonly(ptr noundef %0, ptr noundef %1, i32 noundef %4) #11
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8 [ 0, %12 ], [ 1, %14 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_gset_remove(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #11, !range !58
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_gset_haskey(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ghash_lookup_entry(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gset_clear_ex(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_ghash_clear_ex(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gset_clear(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_ghash_clear(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gset_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_ghash_free(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_gset_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_gset_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gset_ptr_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_gset_new_ex(ptr noundef nonnull @BLI_ghashutil_ptrhash, ptr noundef nonnull @BLI_ghashutil_ptrcmp, ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gset_ptr_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_gset_ptr_new_ex(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gset_pair_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_gset_new_ex(ptr noundef nonnull @BLI_ghashutil_pairhash, ptr noundef nonnull @BLI_ghashutil_paircmp, ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gset_pair_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_gset_pair_new_ex(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ghash_test_expand_buckets(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !82 {
  %3 = mul i32 %1, 3
  %4 = icmp ult i32 %3, %0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ghash_resize_buckets(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !83 {
  %3 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !44
  store i32 %1, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %8 = zext i32 %1 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str) #12
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = zext i32 %6 to i64
  br label %14

14:                                               ; preds = %12, %29
  %15 = phi i64 [ 0, %12 ], [ %30, %29 ]
  %16 = getelementptr inbounds ptr, ptr %4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %24, %19 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.Entry, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = tail call fastcc i32 @ghash_keyhash(ptr noundef %0, ptr noundef %22) #11
  %24 = load ptr, ptr %20, align 8, !tbaa !57
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds ptr, ptr %10, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  store ptr %27, ptr %20, align 8, !tbaa !57
  store ptr %20, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %24, null
  br i1 %28, label %29, label %19, !llvm.loop !84

29:                                               ; preds = %19, %14
  %30 = add nuw nsw i64 %15, 1
  %31 = icmp eq i64 %30, %13
  br i1 %31, label %32, label %14, !llvm.loop !85

32:                                               ; preds = %29, %2
  store ptr %10, ptr %3, align 8, !tbaa !45
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %33(ptr noundef %4) #12
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!"BLI_ghash.c:ghash_new"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 0}
!40 = !{!"GHash", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!41 = !{!"int", !37, i64 0}
!42 = !{!40, !36, i64 8}
!43 = !{!41, !41, i64 0}
!44 = !{!40, !41, i64 32}
!45 = !{!40, !36, i64 16}
!46 = !{!40, !36, i64 24}
!47 = !{!40, !41, i64 36}
!48 = !{!"BLI_ghash.c:ghash_insert"}
!49 = !{!50, !36, i64 8}
!50 = !{!"Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!51 = !{!50, !36, i64 16}
!52 = !{!"BLI_ghash.c:ghash_keyhash"}
!53 = !{!"BLI_ghash.c:ghash_lookup_entry_ex"}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"BLI_ghash.c:ghash_insert_ex"}
!57 = !{!50, !36, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{!40, !41, i64 40}
!60 = !{!"BLI_ghash.c:ghash_lookup_entry"}
!61 = !{!"BLI_ghash.c:ghash_remove_ex"}
!62 = distinct !{!62, !55}
!63 = !{!"BLI_ghash.c:ghash_free_cb"}
!64 = distinct !{!64, !55}
!65 = distinct !{!65, !55}
!66 = !{!"BLI_ghash.c:ghash_buckets_reserve"}
!67 = distinct !{!67, !55}
!68 = !{!40, !41, i64 44}
!69 = !{!70, !36, i64 0}
!70 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !41, i64 16}
!71 = !{!70, !36, i64 8}
!72 = !{!70, !41, i64 16}
!73 = distinct !{!73, !55}
!74 = distinct !{!74, !55}
!75 = !{!37, !37, i64 0}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55}
!78 = !{!79, !36, i64 0}
!79 = !{!"GHashPair", !36, i64 0, !36, i64 8}
!80 = !{!79, !36, i64 8}
!81 = !{!"BLI_ghash.c:ghash_insert_ex_keyonly"}
!82 = !{!"BLI_ghash.c:ghash_test_expand_buckets"}
!83 = !{!"BLI_ghash.c:ghash_resize_buckets"}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55}
