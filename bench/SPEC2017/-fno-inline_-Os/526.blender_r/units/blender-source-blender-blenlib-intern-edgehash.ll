; ModuleID = 'blender/source/blender/blenlib/intern/edgehash.c'
source_filename = "blender/source/blender/blenlib/intern/edgehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EdgeHash = type { ptr, ptr, i32, i32, i32, i32 }
%struct.EdgeEntry = type { ptr, i32, i32, ptr }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }

@_ehash_hashsizes = internal unnamed_addr constant [29 x i32] [i32 1, i32 3, i32 5, i32 11, i32 17, i32 37, i32 67, i32 131, i32 257, i32 521, i32 1031, i32 2053, i32 4099, i32 8209, i32 16411, i32 32771, i32 65537, i32 131101, i32 262147, i32 524309, i32 1048583, i32 2097169, i32 4194319, i32 8388617, i32 16777259, i32 33554467, i32 67108879, i32 134217757, i32 268435459], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"eh buckets\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"eh iter\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_edgehash_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @edgehash_new(ptr noundef %0, i32 noundef %1, i32 noundef 24) #9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edgehash_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !34 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %5, i64 0, i32 2
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %6, align 8, !tbaa !39
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  tail call fastcc void @edgehash_buckets_reserve(ptr noundef nonnull %5, i32 noundef %1) #9
  %9 = load i32, ptr %6, align 8, !tbaa !41
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i64 [ %11, %8 ], [ 8, %3 ]
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %15 = tail call ptr %14(i64 noundef %13, ptr noundef nonnull @.str) #10
  store ptr %15, ptr %5, align 8, !tbaa !43
  %16 = tail call ptr @BLI_mempool_create(i32 noundef %2, i32 noundef %1, i32 noundef 512, i32 noundef 0) #10
  %17 = getelementptr inbounds %struct.EdgeHash, ptr %5, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !44
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_edgehash_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_edgehash_new_ex(ptr noundef %0, i32 noundef 0) #9
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_edgehash_insert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @edgehash_insert(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgehash_insert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !45 {
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %7 = tail call fastcc i32 @edgehash_keyhash(ptr noundef %0, i32 noundef %6, i32 noundef %5) #9
  tail call fastcc void @edgehash_insert_ex(ptr noundef %0, i32 noundef %6, i32 noundef %5, ptr noundef %3, i32 noundef %7) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_edgehash_reinsert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %7 = tail call fastcc i32 @edgehash_keyhash(ptr noundef %0, i32 noundef %6, i32 noundef %5) #9
  %8 = tail call fastcc ptr @edgehash_lookup_entry_ex(ptr noundef %0, i32 noundef %6, i32 noundef %5, i32 noundef %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.EdgeEntry, ptr %8, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !46
  br label %13

12:                                               ; preds = %4
  tail call fastcc void @edgehash_insert_ex(ptr noundef %0, i32 noundef %6, i32 noundef %5, ptr noundef %3, i32 noundef %7) #9
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i8 [ 0, %10 ], [ 1, %12 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @edgehash_keyhash(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !48 {
  %4 = mul i32 %1, 65
  %5 = mul i32 %2, 31
  %6 = xor i32 %5, %4
  %7 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = urem i32 %6, %8
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @edgehash_lookup_entry_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !49 {
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4, %19
  %11 = phi ptr [ %20, %19 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.EdgeEntry, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !50
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.EdgeEntry, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %22, label %19

19:                                               ; preds = %10, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !52

22:                                               ; preds = %15, %19, %4
  %23 = phi ptr [ null, %4 ], [ null, %19 ], [ %11, %15 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgehash_insert_ex(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !54 {
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call ptr @BLI_mempool_alloc(ptr noundef %7) #10
  %9 = load ptr, ptr %0, align 8, !tbaa !43
  %10 = zext i32 %4 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  store ptr %12, ptr %8, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.EdgeEntry, ptr %8, i64 0, i32 1
  store i32 %1, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.EdgeEntry, ptr %8, i64 0, i32 2
  store i32 %2, ptr %14, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.EdgeEntry, ptr %8, i64 0, i32 3
  store ptr %3, ptr %15, align 8, !tbaa !46
  store ptr %8, ptr %11, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !56
  %19 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !41
  %21 = tail call fastcc zeroext i8 @edgehash_test_expand_buckets(i32 noundef %18, i32 noundef %20) #9, !range !57
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !58
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !39
  tail call fastcc void @edgehash_resize_buckets(ptr noundef nonnull %0, i32 noundef %29) #9
  br label %30

30:                                               ; preds = %23, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_edgehash_lookup_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @edgehash_lookup_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.EdgeEntry, ptr %4, i64 0, i32 3
  %7 = select i1 %5, ptr null, ptr %6
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @edgehash_lookup_entry(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !59 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = tail call fastcc i32 @edgehash_keyhash(ptr noundef %0, i32 noundef %5, i32 noundef %4) #9
  %7 = tail call fastcc ptr @edgehash_lookup_entry_ex(ptr noundef %0, i32 noundef %5, i32 noundef %4, i32 noundef %6) #9
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_edgehash_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @edgehash_lookup_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.EdgeEntry, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_edgehash_lookup_default(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef readnone %3) local_unnamed_addr #2 {
  %5 = tail call fastcc ptr @edgehash_lookup_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.EdgeEntry, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi ptr [ %9, %7 ], [ %3, %4 ]
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BLI_edgehash_haskey(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @edgehash_lookup_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_edgehash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !56
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_edgehash_clear_ex(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @edgehash_free_cb(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  store i32 1, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !56
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 8, !tbaa !58
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @edgehash_buckets_reserve(ptr noundef nonnull %0, i32 noundef %2) #9
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i32 [ %2, %11 ], [ -1, %6 ]
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void %14(ptr noundef %15) #10
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = load i32, ptr %7, align 8, !tbaa !41
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call ptr %16(i64 noundef %19, ptr noundef nonnull @.str) #10
  store ptr %20, ptr %0, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @BLI_mempool_clear_ex(ptr noundef %22, i32 noundef %13) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgehash_free_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2, %21
  %7 = phi i32 [ %22, %21 ], [ %4, %2 ]
  %8 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %6 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.EdgeEntry, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call void %1(ptr noundef %17) #10
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %13, !llvm.loop !61

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i32 [ %20, %19 ], [ %7, %6 ]
  %23 = add nuw nsw i64 %8, 1
  %24 = zext i32 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %6, label %26, !llvm.loop !62

26:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @edgehash_buckets_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !63 {
  %3 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = tail call fastcc zeroext i8 @edgehash_test_expand_buckets(i32 noundef %1, i32 noundef %4) #9, !range !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !58
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !39
  %16 = tail call fastcc zeroext i8 @edgehash_test_expand_buckets(i32 noundef %1, i32 noundef %15) #9, !range !57
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %10, !llvm.loop !64

18:                                               ; preds = %10
  store i32 %12, ptr %8, align 8, !tbaa !58
  store i32 %15, ptr %3, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_clear_ex(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_edgehash_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @edgehash_free_cb(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @BLI_mempool_destroy(ptr noundef %7) #10
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %9 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void %8(ptr noundef %9) #10
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %10(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgehash_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !65
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgehash_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_edgehashIterator_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str.1) #10
  tail call void @BLI_edgehashIterator_init(ptr noundef %3, ptr noundef %0) #9
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_edgehashIterator_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #6 {
  store ptr %1, ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 2
  store i32 -1, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !41
  br label %11

11:                                               ; preds = %8, %15
  %12 = phi i32 [ -1, %8 ], [ %13, %15 ]
  %13 = add i32 %12, 1
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %1, align 8, !tbaa !43
  %17 = zext i32 %13 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  store ptr %19, ptr %3, align 8, !tbaa !68
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %21, !llvm.loop !70

21:                                               ; preds = %11, %15
  %22 = phi i32 [ %10, %11 ], [ %13, %15 ]
  store i32 %22, ptr %4, align 8, !tbaa !69
  br label %23

23:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_edgehashIterator_step(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %7, ptr %2, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.EdgeHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = load i32, ptr %6, align 8, !tbaa !69
  br label %14

14:                                               ; preds = %9, %18
  %15 = phi i32 [ %13, %9 ], [ %16, %18 ]
  %16 = add i32 %15, 1
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !43
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  store ptr %22, ptr %2, align 8, !tbaa !68
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24, !llvm.loop !71

24:                                               ; preds = %18, %14
  %25 = phi i32 [ %12, %14 ], [ %16, %18 ]
  store i32 %25, ptr %6, align 8, !tbaa !69
  br label %26

26:                                               ; preds = %24, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_edgehashIterator_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %2(ptr noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_edgeset_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @edgehash_new(ptr noundef %0, i32 noundef %1, i32 noundef 16) #9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_edgeset_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_edgeset_new_ex(ptr noundef %0, i32 noundef 0) #9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_edgeset_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !56
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_edgeset_insert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = tail call fastcc i32 @edgehash_keyhash(ptr noundef %0, i32 noundef %5, i32 noundef %4) #9
  tail call fastcc void @edgehash_insert_ex_keyonly(ptr noundef %0, i32 noundef %5, i32 noundef %4, i32 noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgehash_insert_ex_keyonly(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !72 {
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call ptr @BLI_mempool_alloc(ptr noundef %6) #10
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %11, ptr %7, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.EdgeEntry, ptr %7, i64 0, i32 1
  store i32 %1, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.EdgeEntry, ptr %7, i64 0, i32 2
  store i32 %2, ptr %13, align 4, !tbaa !51
  store ptr %7, ptr %10, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !56
  %17 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !41
  %19 = tail call fastcc zeroext i8 @edgehash_test_expand_buckets(i32 noundef %16, i32 noundef %18) #9, !range !57
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !58
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !58
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !39
  tail call fastcc void @edgehash_resize_buckets(ptr noundef nonnull %0, i32 noundef %27) #9
  br label %28

28:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_edgeset_add(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = tail call fastcc i32 @edgehash_keyhash(ptr noundef %0, i32 noundef %5, i32 noundef %4) #9
  %7 = tail call fastcc ptr @edgehash_lookup_entry_ex(ptr noundef %0, i32 noundef %5, i32 noundef %4, i32 noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @edgehash_insert_ex_keyonly(ptr noundef %0, i32 noundef %5, i32 noundef %4, i32 noundef %6) #9
  br label %10

10:                                               ; preds = %3, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BLI_edgeset_haskey(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @edgehash_lookup_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_edgeset_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_edgehash_free(ptr noundef %0, ptr noundef null) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgeset_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !65
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgeset_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @edgehash_test_expand_buckets(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !73 {
  %3 = mul i32 %1, 3
  %4 = icmp ult i32 %3, %0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgehash_resize_buckets(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !41
  store i32 %1, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %7 = zext i32 %1 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str) #10
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = zext i32 %5 to i64
  br label %13

13:                                               ; preds = %11, %30
  %14 = phi i64 [ 0, %11 ], [ %31, %30 ]
  %15 = getelementptr inbounds ptr, ptr %3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %25, %18 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !51
  %24 = tail call fastcc i32 @edgehash_keyhash(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %23) #9
  %25 = load ptr, ptr %19, align 8, !tbaa !55
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  store ptr %28, ptr %19, align 8, !tbaa !55
  store ptr %19, ptr %27, align 8, !tbaa !35
  %29 = icmp eq ptr %25, null
  br i1 %29, label %30, label %18, !llvm.loop !75

30:                                               ; preds = %18, %13
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %13, !llvm.loop !76

33:                                               ; preds = %30, %2
  store ptr %9, ptr %0, align 8, !tbaa !43
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %34(ptr noundef %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

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
!34 = !{!"edgehash.c:edgehash_new"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !40, i64 16}
!42 = !{!"EdgeHash", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!43 = !{!42, !36, i64 0}
!44 = !{!42, !36, i64 8}
!45 = !{!"edgehash.c:edgehash_insert"}
!46 = !{!47, !36, i64 16}
!47 = !{!"EdgeEntry", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16}
!48 = !{!"edgehash.c:edgehash_keyhash"}
!49 = !{!"edgehash.c:edgehash_lookup_entry_ex"}
!50 = !{!47, !40, i64 8}
!51 = !{!47, !40, i64 12}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"edgehash.c:edgehash_insert_ex"}
!55 = !{!47, !36, i64 0}
!56 = !{!42, !40, i64 20}
!57 = !{i8 0, i8 2}
!58 = !{!42, !40, i64 24}
!59 = !{!"edgehash.c:edgehash_lookup_entry"}
!60 = !{!"edgehash.c:edgehash_free_cb"}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53}
!63 = !{!"edgehash.c:edgehash_buckets_reserve"}
!64 = distinct !{!64, !53}
!65 = !{!42, !40, i64 28}
!66 = !{!67, !36, i64 0}
!67 = !{!"EdgeHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!68 = !{!67, !36, i64 8}
!69 = !{!67, !40, i64 16}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = !{!"edgehash.c:edgehash_insert_ex_keyonly"}
!73 = !{!"edgehash.c:edgehash_test_expand_buckets"}
!74 = !{!"edgehash.c:edgehash_resize_buckets"}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !53}
