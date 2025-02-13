; ModuleID = 'liblzma/common/index.c'
source_filename = "liblzma/common/index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_index_s = type { %struct.index_tree, i64, i64, i64, i64, i64, i32 }
%struct.index_tree = type { ptr, ptr, ptr, i32 }
%struct.index_tree_node_s = type { i64, i64, ptr, ptr, ptr }
%struct.index_stream = type { %struct.index_tree_node_s, i32, i64, %struct.index_tree, i64, i64, %struct.lzma_stream_flags, i64 }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.index_group = type { %struct.index_tree_node_s, i64, i64, i64, [0 x %struct.index_record] }
%struct.index_record = type { i64, i64 }
%struct.index_cat_info = type { i64, i64, i64, i32, ptr }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lzma_index_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @index_init_plain(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @index_stream_init(i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 0, ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @lzma_free(ptr noundef nonnull %2, ptr noundef %0) #14
  br label %9

8:                                                ; preds = %4
  tail call fastcc void @index_tree_append(ptr noundef nonnull %2, ptr noundef nonnull %5) #13
  br label %9

9:                                                ; preds = %7, %8, %1
  %10 = phi ptr [ null, %1 ], [ null, %7 ], [ %2, %8 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_init_plain(ptr noundef %0) unnamed_addr #0 !PGOFuncName !35 {
  %2 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  tail call fastcc void @index_tree_init(ptr noundef nonnull %2) #13
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i64 512, ptr %6, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  br label %8

8:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_stream_init(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !45 {
  %6 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %4) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  store i64 %1, ptr %6, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 1
  store i64 %0, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 2
  %11 = trunc i64 %2 to i32
  %12 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 %11, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 2
  store i64 %3, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 3
  tail call fastcc void @index_tree_init(ptr noundef nonnull %14) #13
  %15 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 4
  %16 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 -1, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 7
  store i64 0, ptr %17, align 8, !tbaa !54
  br label %18

18:                                               ; preds = %5, %8
  ret ptr %6
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !58
  %10 = load ptr, ptr %0, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !60
  store ptr %1, ptr %3, align 8, !tbaa !56
  br label %44

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !61
  store ptr %1, ptr %3, align 8, !tbaa !56
  %16 = tail call fastcc i32 @bsr32(i32 noundef %9) #13
  %17 = shl nuw i32 1, %16
  %18 = icmp eq i32 %9, %17
  br i1 %18, label %44, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @ctz32(i32 noundef %9) #13
  %21 = add i32 %20, 2
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %21, %19 ], [ %27, %22 ]
  %24 = phi ptr [ %1, %19 ], [ %26, %22 ]
  %25 = getelementptr inbounds %struct.index_tree_node_s, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = add i32 %23, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22, !llvm.loop !62

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.index_tree_node_s, ptr %33, i64 0, i32 4
  %36 = select i1 %34, ptr %0, ptr %35
  store ptr %31, ptr %36, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 2
  store ptr %33, ptr %37, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  store ptr %39, ptr %30, align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.index_tree_node_s, ptr %39, i64 0, i32 2
  store ptr %26, ptr %42, align 8, !tbaa !57
  br label %43

43:                                               ; preds = %41, %29
  store ptr %26, ptr %38, align 8, !tbaa !65
  store ptr %31, ptr %32, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %14, %43, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @index_tree_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !66 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @bsr32(i32 noundef %0) unnamed_addr #5 !PGOFuncName !67 {
  %2 = icmp ult i32 %0, 65536
  %3 = shl nuw i32 %0, 16
  %4 = select i1 %2, i32 %3, i32 %0
  %5 = select i1 %2, i32 15, i32 31
  %6 = icmp ult i32 %4, 16777216
  %7 = shl nuw i32 %4, 8
  %8 = add nsw i32 %5, -8
  %9 = select i1 %6, i32 %7, i32 %4
  %10 = select i1 %6, i32 %8, i32 %5
  %11 = icmp ult i32 %9, 268435456
  %12 = shl nuw i32 %9, 4
  %13 = add nsw i32 %10, -4
  %14 = select i1 %11, i32 %12, i32 %9
  %15 = select i1 %11, i32 %13, i32 %10
  %16 = icmp ult i32 %14, 1073741824
  %17 = shl nuw i32 %14, 2
  %18 = add nsw i32 %15, -2
  %19 = select i1 %16, i32 %17, i32 %14
  %20 = select i1 %16, i32 %18, i32 %15
  %21 = icmp sgt i32 %19, -1
  %22 = sext i1 %21 to i32
  %23 = add nsw i32 %20, %22
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ctz32(i32 noundef %0) unnamed_addr #5 !PGOFuncName !68 {
  %2 = and i32 %0, 65535
  %3 = icmp eq i32 %2, 0
  %4 = lshr exact i32 %0, 16
  %5 = select i1 %3, i32 %4, i32 %0
  %6 = select i1 %3, i32 16, i32 0
  %7 = and i32 %5, 255
  %8 = icmp eq i32 %7, 0
  %9 = lshr exact i32 %5, 8
  %10 = or disjoint i32 %6, 8
  %11 = select i1 %8, i32 %9, i32 %5
  %12 = select i1 %8, i32 %10, i32 %6
  %13 = and i32 %11, 15
  %14 = icmp eq i32 %13, 0
  %15 = lshr exact i32 %11, 4
  %16 = or disjoint i32 %12, 4
  %17 = select i1 %14, i32 %15, i32 %11
  %18 = select i1 %14, i32 %16, i32 %12
  %19 = and i32 %17, 3
  %20 = icmp eq i32 %19, 0
  %21 = lshr exact i32 %17, 2
  %22 = or disjoint i32 %18, 2
  %23 = select i1 %20, i32 %21, i32 %17
  %24 = select i1 %20, i32 %22, i32 %18
  %25 = and i32 %23, 1
  %26 = xor i32 %25, 1
  %27 = add nuw nsw i32 %26, %24
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_index_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @index_tree_end(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @index_stream_end) #13
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @index_tree_end(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !69 {
  %4 = load ptr, ptr %0, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3
  tail call fastcc void @index_tree_end(ptr noundef nonnull %3, ptr noundef %1, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @index_tree_node_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !71 {
  %4 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #13
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %12, %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void %2(ptr noundef nonnull %0, ptr noundef %1) #14, !callees !72
  br label %16

16:                                               ; preds = %15, %13
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call i64 @llvm.umin.i64(i64 %1, i64 1152921504606846971)
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @lzma_index_memusage(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = add i64 %1, 511
  %4 = lshr i64 %3, 9
  %5 = mul i64 %0, 296
  %6 = mul i64 %4, 8288
  %7 = add i64 %0, -4294967296
  %8 = icmp ult i64 %7, -4294967295
  %9 = icmp ugt i64 %1, 1139567201464682496
  %10 = or i1 %8, %9
  %11 = sub i64 -113, %5
  %12 = icmp ult i64 %11, %6
  %13 = or i1 %10, %12
  %14 = add i64 %5, 112
  %15 = add i64 %14, %6
  %16 = select i1 %13, i64 -1, i64 %15
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_memused(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !74
  %7 = tail call i64 @lzma_index_memusage(i64 noundef %4, i64 noundef %6) #13
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !74
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_stream_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lzma_index_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !75
  %6 = tail call fastcc i64 @index_size(i64 noundef %3, i64 noundef %5) #13, !range !76
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_size(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = tail call fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) #13
  %4 = tail call fastcc i64 @vli_ceil4(i64 noundef %3) #13, !range !76
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @vli_ceil4(i64 noundef %0) unnamed_addr #5 !PGOFuncName !78 {
  %2 = add i64 %0, 3
  %3 = and i64 %2, -4
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = tail call i32 @lzma_vli_size(i64 noundef %0) #14
  %4 = add i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = add i64 %1, 4
  %7 = add i64 %6, %5
  ret i64 %7
}

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_total_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !80
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !75
  %8 = tail call fastcc i64 @index_size(i64 noundef %5, i64 noundef %7) #13, !range !76
  %9 = add i64 %3, 24
  %10 = add i64 %9, %8
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_index_file_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %5, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %11, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !84
  br label %14

14:                                               ; preds = %1, %9
  %15 = phi i64 [ %13, %9 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !54
  %22 = tail call fastcc i64 @index_file_size(i64 noundef %7, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #13, !range !88
  ret i64 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_file_size(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 !PGOFuncName !89 {
  %6 = add i64 %0, 24
  %7 = add i64 %6, %4
  %8 = tail call fastcc i64 @vli_ceil4(i64 noundef %1) #13, !range !76
  %9 = add i64 %7, %8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc i64 @index_size(i64 noundef %2, i64 noundef %3) #13, !range !76
  %13 = add i64 %12, %9
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 -1)
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i64 [ -1, %5 ], [ %14, %11 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_uncompressed_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !90
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = shl nuw i32 1, %11
  %13 = or i32 %12, %3
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %3, %1 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_padding_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !75
  %6 = tail call fastcc i64 @index_size_unpadded(i64 noundef %3, i64 noundef %5) #13
  %7 = trunc i64 %6 to i32
  %8 = sub i32 0, %7
  %9 = and i32 %8, 3
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_stream_flags(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @lzma_stream_flags_compare(ptr noundef nonnull %1, ptr noundef nonnull %1) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.index_stream, ptr %11, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !92
  br label %13

13:                                               ; preds = %6, %2, %9
  %14 = phi i32 [ %7, %6 ], [ 0, %9 ], [ 11, %2 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_stream_padding(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = and i64 %1, -9223372036854775805
  %5 = icmp eq i64 %4, 0
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !54
  store i64 0, ptr %10, align 8, !tbaa !54
  %12 = tail call i64 @lzma_index_file_size(ptr noundef nonnull %0) #13, !range !88
  %13 = add i64 %12, %1
  %14 = icmp slt i64 %13, 0
  %15 = select i1 %14, i64 %11, i64 %1
  %16 = select i1 %14, i32 9, i32 0
  store i64 %15, ptr %10, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i32 [ %16, %7 ], [ 11, %2 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_append(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = add i64 %2, -9223372036854775805
  %7 = icmp ult i64 %6, -9223372036854775800
  %8 = or i1 %5, %7
  %9 = icmp slt i64 %3, 0
  %10 = or i1 %9, %8
  br i1 %10, label %99, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !84
  %23 = tail call fastcc i64 @vli_ceil4(i64 noundef %22) #13, !range !76
  %24 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20
  %25 = load i64, ptr %24, align 8, !tbaa !95
  br label %26

26:                                               ; preds = %11, %18
  %27 = phi i64 [ %23, %18 ], [ 0, %11 ]
  %28 = phi i64 [ %25, %18 ], [ 0, %11 ]
  %29 = tail call i32 @lzma_vli_size(i64 noundef %2) #14
  %30 = tail call i32 @lzma_vli_size(i64 noundef %3) #14
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !50
  %34 = add i64 %27, %2
  %35 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !86
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !87
  %40 = zext i32 %31 to i64
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !54
  %44 = tail call fastcc i64 @index_file_size(i64 noundef %33, i64 noundef %34, i64 noundef %37, i64 noundef %41, i64 noundef %43) #13, !range !88
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %99, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !74
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !75
  %52 = add i64 %51, %40
  %53 = tail call fastcc i64 @index_size(i64 noundef %49, i64 noundef %52) #13, !range !76
  %54 = icmp ugt i64 %53, 17179869184
  br i1 %54, label %99, label %55

55:                                               ; preds = %46
  br i1 %17, label %64, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !83
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !83
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i64 %59, ptr %57, align 8, !tbaa !83
  br label %80

64:                                               ; preds = %56, %55
  %65 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !36
  %67 = shl i64 %66, 4
  %68 = add i64 %67, 64
  %69 = tail call ptr @lzma_alloc(i64 noundef %68, ptr noundef %1) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %99, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 3
  store i64 0, ptr %72, align 8, !tbaa !83
  %73 = load i64, ptr %65, align 8, !tbaa !36
  %74 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 2
  store i64 %73, ptr %74, align 8, !tbaa !83
  store i64 512, ptr %65, align 8, !tbaa !36
  store i64 %28, ptr %69, align 8, !tbaa !96
  %75 = getelementptr inbounds %struct.index_tree_node_s, ptr %69, i64 0, i32 1
  store i64 %27, ptr %75, align 8, !tbaa !97
  %76 = load i64, ptr %35, align 8, !tbaa !86
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !83
  tail call fastcc void @index_tree_append(ptr noundef nonnull %14, ptr noundef nonnull %69) #13
  %79 = load i64, ptr %72, align 8, !tbaa !83
  br label %80

80:                                               ; preds = %71, %63
  %81 = phi i64 [ %59, %63 ], [ %79, %71 ]
  %82 = phi ptr [ %16, %63 ], [ %69, %71 ]
  %83 = add i64 %28, %3
  %84 = getelementptr inbounds %struct.index_group, ptr %82, i64 0, i32 4, i64 %81
  store i64 %83, ptr %84, align 8, !tbaa !95
  %85 = getelementptr inbounds %struct.index_group, ptr %82, i64 0, i32 4, i64 %81, i32 1
  store i64 %34, ptr %85, align 8, !tbaa !84
  %86 = load <2 x i64>, ptr %35, align 8, !tbaa !83
  %87 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %40, i64 1
  %88 = add <2 x i64> %86, %87
  store <2 x i64> %88, ptr %35, align 8, !tbaa !83
  %89 = tail call fastcc i64 @vli_ceil4(i64 noundef %2) #13, !range !76
  %90 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !90
  %93 = add i64 %92, %3
  store i64 %93, ptr %91, align 8, !tbaa !90
  %94 = load <2 x i64>, ptr %90, align 8, !tbaa !83
  %95 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %89, i64 0
  %96 = add <2 x i64> %94, %95
  store <2 x i64> %96, ptr %90, align 8, !tbaa !83
  %97 = load i64, ptr %50, align 8, !tbaa !75
  %98 = add i64 %97, %40
  store i64 %98, ptr %50, align 8, !tbaa !75
  br label %99

99:                                               ; preds = %80, %26, %46, %64, %4
  %100 = phi i32 [ 11, %4 ], [ 0, %80 ], [ 9, %26 ], [ 9, %46 ], [ 5, %64 ]
  ret i32 %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_cat(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.index_cat_info, align 8
  %5 = tail call i64 @lzma_index_file_size(ptr noundef %0) #13, !range !88
  %6 = tail call i64 @lzma_index_file_size(ptr noundef %1) #13, !range !88
  %7 = add i64 %6, %5
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !90
  %14 = add i64 %13, %11
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %98, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !75
  %21 = tail call fastcc i64 @index_size_unpadded(i64 noundef %18, i64 noundef %20) #13
  %22 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 3
  %23 = load <2 x i64>, ptr %22, align 8, !tbaa !83
  %24 = extractelement <2 x i64> %23, i64 0
  %25 = extractelement <2 x i64> %23, i64 1
  %26 = tail call fastcc i64 @index_size_unpadded(i64 noundef %24, i64 noundef %25) #13
  %27 = add i64 %26, %21
  %28 = tail call fastcc i64 @vli_ceil4(i64 noundef %27) #13, !range !76
  %29 = icmp ult i64 %28, 17179869185
  br i1 %29, label %30, label %98

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  %33 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3
  %34 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !82
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !83
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !83
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = shl i64 %40, 4
  %46 = add i64 %45, 64
  %47 = tail call ptr @lzma_alloc(i64 noundef %46, ptr noundef %2) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(40) %35, i64 40, i1 false), !tbaa.struct !98
  %50 = load i64, ptr %38, align 8, !tbaa !83
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 2
  store i64 %51, ptr %52, align 8, !tbaa !83
  %53 = load i64, ptr %38, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 3
  store i64 %53, ptr %54, align 8, !tbaa !83
  %55 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !83
  %57 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !83
  %58 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 4
  %59 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 4
  %60 = shl i64 %51, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %58, ptr nonnull align 8 %59, i64 %60, i1 false)
  %61 = getelementptr inbounds %struct.index_tree_node_s, ptr %35, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.index_tree_node_s, ptr %62, i64 0, i32 4
  store ptr %47, ptr %65, align 8, !tbaa !61
  br label %66

66:                                               ; preds = %64, %49
  %67 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !99
  %69 = icmp eq ptr %68, %35
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr %47, ptr %67, align 8, !tbaa !99
  store ptr %47, ptr %33, align 8, !tbaa !100
  br label %71

71:                                               ; preds = %70, %66
  %72 = load ptr, ptr %34, align 8, !tbaa !82
  %73 = icmp eq ptr %72, %35
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store ptr %47, ptr %34, align 8, !tbaa !82
  br label %75

75:                                               ; preds = %71, %74
  tail call void @lzma_free(ptr noundef nonnull %35, ptr noundef %2) #14
  br label %76

76:                                               ; preds = %30, %37, %75
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  store i64 %11, ptr %4, align 8, !tbaa !101
  %77 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 1
  store i64 %5, ptr %77, align 8, !tbaa !103
  %78 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 2
  store i64 %18, ptr %78, align 8, !tbaa !104
  %79 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 3
  %80 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !73
  store i32 %81, ptr %79, align 8, !tbaa !105
  %82 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 4
  store ptr %0, ptr %82, align 8, !tbaa !106
  %83 = load ptr, ptr %1, align 8, !tbaa !107
  call fastcc void @index_cat_helper(ptr noundef nonnull %4, ptr noundef %83) #13
  %84 = load i64, ptr %10, align 8, !tbaa !90
  %85 = add i64 %84, %13
  store i64 %85, ptr %10, align 8, !tbaa !90
  %86 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !80
  %88 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !80
  %90 = add i64 %89, %87
  store i64 %90, ptr %88, align 8, !tbaa !80
  %91 = load <2 x i64>, ptr %17, align 8, !tbaa !83
  %92 = add <2 x i64> %91, %23
  store <2 x i64> %92, ptr %17, align 8, !tbaa !83
  %93 = tail call i32 @lzma_index_checks(ptr noundef nonnull %0) #13
  %94 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !44
  %96 = or i32 %95, %93
  %97 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  store i32 %96, ptr %97, align 8, !tbaa !44
  tail call void @lzma_free(ptr noundef nonnull %1, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %98

98:                                               ; preds = %44, %3, %9, %16, %76
  %99 = phi i32 [ 0, %76 ], [ 9, %16 ], [ 9, %9 ], [ 9, %3 ], [ 5, %44 ]
  ret i32 %99
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_cat_helper(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = phi ptr [ %1, %2 ], [ %11, %14 ]
  %8 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  %12 = icmp eq ptr %9, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call fastcc void @index_cat_helper(ptr noundef %0, ptr noundef nonnull %9) #13
  br label %14

14:                                               ; preds = %13, %6
  %15 = load <2 x i64>, ptr %0, align 8, !tbaa !83
  %16 = load <2 x i64>, ptr %7, align 8, !tbaa !83
  %17 = add <2 x i64> %16, %15
  store <2 x i64> %17, ptr %7, align 8, !tbaa !83
  %18 = load i32, ptr %3, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.index_stream, ptr %7, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !51
  %22 = load i64, ptr %4, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.index_stream, ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !52
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !52
  %26 = load ptr, ptr %5, align 8, !tbaa !106
  tail call fastcc void @index_tree_append(ptr noundef %26, ptr noundef nonnull %7) #13
  %27 = icmp eq ptr %11, null
  br i1 %27, label %28, label %6

28:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lzma_index_dup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @index_init_plain(ptr noundef %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 1
  %8 = load <2 x i64>, ptr %6, align 8, !tbaa !83
  store <2 x i64> %8, ptr %7, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 3
  %11 = load <2 x i64>, ptr %9, align 8, !tbaa !83
  store <2 x i64> %11, ptr %10, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  br label %14

14:                                               ; preds = %19, %5
  %15 = phi ptr [ %13, %5 ], [ %20, %19 ]
  %16 = tail call fastcc ptr @index_dup_stream(ptr noundef %15, ptr noundef %1) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @lzma_index_end(ptr noundef nonnull %3, ptr noundef %1) #13
  br label %22

19:                                               ; preds = %14
  tail call fastcc void @index_tree_append(ptr noundef nonnull %3, ptr noundef nonnull %16) #13
  %20 = tail call fastcc ptr @index_tree_next(ptr noundef %15) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14, !llvm.loop !112

22:                                               ; preds = %19, %18, %2
  %23 = phi ptr [ null, %2 ], [ null, %18 ], [ %3, %19 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_dup_stream(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !86
  %5 = icmp ugt i64 %4, 1152921504606846971
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !50
  %9 = load i64, ptr %0, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !52
  %15 = tail call fastcc ptr @index_stream_init(i64 noundef %8, i64 noundef %9, i64 noundef %12, i64 noundef %14, ptr noundef %1) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 4
  %23 = load <2 x i64>, ptr %3, align 8, !tbaa !83
  store <2 x i64> %23, ptr %22, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 6
  %25 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) %25, i64 56, i1 false), !tbaa.struct !92
  %26 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 7
  store i64 %27, ptr %28, align 8, !tbaa !54
  %29 = load i64, ptr %3, align 8, !tbaa !86
  %30 = shl i64 %29, 4
  %31 = add i64 %30, 64
  %32 = tail call ptr @lzma_alloc(i64 noundef %31, ptr noundef %1) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  tail call void @index_stream_end(ptr noundef nonnull %15, ptr noundef %1) #13
  br label %59

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  store i64 1, ptr %36, align 8, !tbaa !83
  %37 = load i64, ptr %3, align 8, !tbaa !86
  %38 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 2
  store i64 %37, ptr %38, align 8, !tbaa !83
  %39 = add i64 %37, -1
  %40 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 3
  store i64 %39, ptr %40, align 8, !tbaa !83
  %41 = load ptr, ptr %18, align 8, !tbaa !99
  %42 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 4
  br label %43

43:                                               ; preds = %43, %35
  %44 = phi ptr [ %41, %35 ], [ %55, %43 ]
  %45 = phi i64 [ 0, %35 ], [ %54, %43 ]
  %46 = getelementptr inbounds %struct.index_record, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.index_group, ptr %44, i64 0, i32 4
  %48 = getelementptr inbounds %struct.index_group, ptr %44, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !83
  %50 = shl i64 %49, 4
  %51 = add i64 %50, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %46, ptr nonnull align 8 %47, i64 %51, i1 false)
  %52 = load i64, ptr %48, align 8, !tbaa !83
  %53 = add i64 %45, 1
  %54 = add i64 %53, %52
  %55 = tail call fastcc ptr @index_tree_next(ptr noundef %44) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !114

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 3
  tail call fastcc void @index_tree_append(ptr noundef nonnull %58, ptr noundef nonnull %32) #13
  br label %59

59:                                               ; preds = %17, %6, %57, %34, %2
  %60 = phi ptr [ null, %2 ], [ %15, %17 ], [ null, %6 ], [ null, %34 ], [ %15, %57 ]
  ret ptr %60
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @index_tree_next(ptr noundef readonly %0) unnamed_addr #10 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %5, !llvm.loop !116

10:                                               ; preds = %1, %15
  %11 = phi ptr [ %13, %15 ], [ %0, %1 ]
  %12 = getelementptr inbounds %struct.index_tree_node_s, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %10, label %19, !llvm.loop !117

19:                                               ; preds = %5, %15, %10
  %20 = phi ptr [ %13, %15 ], [ null, %10 ], [ %6, %5 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !94
  tail call void @lzma_index_iter_rewind(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_rewind(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_next(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %94, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %10 = load i64, ptr %9, align 8, !tbaa !94
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  %14 = load i64, ptr %13, align 8, !tbaa !94
  switch i64 %14, label %25 [
    i64 0, label %15
    i64 1, label %18
    i64 2, label %22
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  br label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = tail call fastcc ptr @index_tree_next(ptr noundef %20) #13
  br label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  br label %25

25:                                               ; preds = %15, %18, %22, %12, %4
  %26 = phi ptr [ null, %12 ], [ %24, %22 ], [ %21, %18 ], [ %17, %15 ], [ null, %4 ]
  %27 = icmp ugt i32 %1, 1
  %28 = getelementptr inbounds %struct.index_tree, ptr %6, i64 0, i32 1
  %29 = icmp eq i32 %1, 3
  br label %30

30:                                               ; preds = %77, %25
  %31 = phi ptr [ %8, %25 ], [ %67, %77 ]
  %32 = phi ptr [ %26, %25 ], [ %68, %77 ]
  %33 = phi i64 [ %10, %25 ], [ %69, %77 ]
  %34 = icmp eq ptr %31, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load ptr, ptr %28, align 8, !tbaa !111
  br i1 %27, label %37, label %85

37:                                               ; preds = %35, %42
  %38 = phi ptr [ %43, %42 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.index_stream, ptr %38, i64 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %38) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %94, label %37, !llvm.loop !118

45:                                               ; preds = %30
  %46 = icmp eq ptr %32, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !83
  %50 = icmp ult i64 %33, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = add nuw i64 %33, 1
  br label %66

53:                                               ; preds = %47
  %54 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %32) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %45, %53
  br label %57

57:                                               ; preds = %56, %62
  %58 = phi ptr [ %59, %62 ], [ %31, %56 ]
  %59 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %58) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %94, label %61

61:                                               ; preds = %57
  br i1 %27, label %62, label %85

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.index_stream, ptr %59, i64 0, i32 3, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !99
  %65 = icmp eq ptr %64, null
  br i1 %65, label %57, label %66, !llvm.loop !119

66:                                               ; preds = %62, %37, %51, %53
  %67 = phi ptr [ %31, %51 ], [ %31, %53 ], [ %38, %37 ], [ %59, %62 ]
  %68 = phi ptr [ %32, %51 ], [ %54, %53 ], [ %40, %37 ], [ %64, %62 ]
  %69 = phi i64 [ %52, %51 ], [ 0, %53 ], [ 0, %37 ], [ 0, %62 ]
  br i1 %29, label %70, label %89

70:                                               ; preds = %66
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = load i64, ptr %68, align 8, !tbaa !96
  %74 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4
  %75 = load i64, ptr %74, align 8, !tbaa !95
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72, %78
  br label %30

78:                                               ; preds = %70
  %79 = add i64 %69, -1
  %80 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !95
  %82 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4, i64 %69
  %83 = load i64, ptr %82, align 8, !tbaa !95
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %77, label %89

85:                                               ; preds = %35, %61
  %86 = phi ptr [ %59, %61 ], [ %36, %35 ]
  %87 = getelementptr inbounds %struct.index_stream, ptr %86, i64 0, i32 3, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !99
  br label %89

89:                                               ; preds = %72, %78, %66, %85
  %90 = phi ptr [ %88, %85 ], [ %68, %66 ], [ %68, %78 ], [ %68, %72 ]
  %91 = phi ptr [ %86, %85 ], [ %67, %66 ], [ %67, %78 ], [ %67, %72 ]
  %92 = phi i64 [ 0, %85 ], [ 0, %72 ], [ %69, %78 ], [ %69, %66 ]
  store ptr %91, ptr %7, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %90, ptr %93, align 8, !tbaa !94
  store i64 %92, ptr %9, align 8, !tbaa !94
  tail call fastcc void @iter_set_info(ptr noundef %0) #13
  br label %94

94:                                               ; preds = %57, %42, %89, %2
  %95 = phi i8 [ 1, %2 ], [ 0, %89 ], [ 1, %42 ], [ 1, %57 ]
  ret i8 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iter_set_info(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %7 = load i64, ptr %6, align 8, !tbaa !94
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 2, ptr %10, align 8, !tbaa !94
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.index_tree, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 0, ptr %22, align 8, !tbaa !94
  br label %32

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, %5
  %27 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  br i1 %26, label %31, label %28

28:                                               ; preds = %23
  store i64 1, ptr %27, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  store ptr %30, ptr %4, align 8, !tbaa !94
  br label %32

31:                                               ; preds = %23
  store i64 2, ptr %27, align 8, !tbaa !94
  store ptr null, ptr %4, align 8, !tbaa !94
  br label %32

32:                                               ; preds = %21, %31, %28, %9
  %33 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 4
  store i64 %35, ptr %36, align 8, !tbaa !121
  %37 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 5
  store i64 %38, ptr %39, align 8, !tbaa !125
  %40 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 6
  %41 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 7
  %42 = load <2 x i64>, ptr %3, align 8, !tbaa !83
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %43, ptr %40, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !53
  %46 = icmp eq i32 %45, -1
  %47 = select i1 %46, ptr null, ptr %44
  store ptr %47, ptr %0, align 8, !tbaa !126
  %48 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 10
  store i64 %49, ptr %50, align 8, !tbaa !127
  %51 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = tail call fastcc i64 @index_size(i64 noundef 0, i64 noundef 0) #13, !range !76
  %56 = add i64 %55, 24
  %57 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %56, ptr %57, align 8, !tbaa !128
  br label %73

58:                                               ; preds = %32
  %59 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %60 = load i64, ptr %59, align 8, !tbaa !87
  %61 = tail call fastcc i64 @index_size(i64 noundef %38, i64 noundef %60) #13, !range !76
  %62 = add i64 %61, 24
  %63 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !83
  %65 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 4, i64 %64, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !84
  %67 = tail call fastcc i64 @vli_ceil4(i64 noundef %66) #13, !range !76
  %68 = add i64 %62, %67
  %69 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %68, ptr %69, align 8, !tbaa !128
  %70 = load i64, ptr %63, align 8, !tbaa !83
  %71 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 4, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !95
  br label %73

73:                                               ; preds = %58, %54
  %74 = phi i64 [ 0, %54 ], [ %72, %58 ]
  %75 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 9
  store i64 %74, ptr %75, align 8
  br i1 %8, label %119, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !83
  %79 = add i64 %78, %7
  %80 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 3
  store i64 %79, ptr %81, align 8, !tbaa !129
  %82 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !52
  %84 = add i64 %83, %79
  store i64 %84, ptr %80, align 8, !tbaa !130
  %85 = icmp eq i64 %7, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !97
  br label %94

89:                                               ; preds = %76
  %90 = add i64 %7, -1
  %91 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %90, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !84
  %93 = tail call fastcc i64 @vli_ceil4(i64 noundef %92) #13, !range !76
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i64 [ %90, %89 ], [ -1, %86 ]
  %96 = phi i64 [ %93, %89 ], [ %88, %86 ]
  %97 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 4
  store i64 %96, ptr %97, align 8, !tbaa !131
  %98 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %95
  %99 = select i1 %85, ptr %5, ptr %98
  %100 = load i64, ptr %99, align 8, !tbaa !83
  %101 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 5
  store i64 %100, ptr %101, align 8, !tbaa !132
  %102 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7
  %103 = load i64, ptr %102, align 8, !tbaa !95
  %104 = sub i64 %103, %100
  %105 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 6
  store i64 %104, ptr %105, align 8, !tbaa !133
  %106 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !84
  %108 = sub i64 %107, %96
  %109 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 7
  store i64 %108, ptr %109, align 8, !tbaa !134
  %110 = tail call fastcc i64 @vli_ceil4(i64 noundef %108) #13, !range !76
  %111 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 8
  store i64 %110, ptr %111, align 8, !tbaa !135
  %112 = add i64 %96, 12
  store i64 %112, ptr %97, align 8, !tbaa !131
  %113 = load i64, ptr %40, align 8, !tbaa !136
  %114 = add i64 %113, %112
  %115 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 1
  store i64 %114, ptr %115, align 8, !tbaa !137
  %116 = load i64, ptr %41, align 8, !tbaa !138
  %117 = add i64 %116, %100
  %118 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 2
  store i64 %117, ptr %118, align 8, !tbaa !139
  br label %119

119:                                              ; preds = %94, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_locate(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !90
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @index_tree_locate(ptr noundef nonnull %4, i64 noundef %1) #13
  %10 = load i64, ptr %9, align 8, !tbaa !46
  %11 = sub i64 %1, %10
  %12 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 3
  %13 = tail call fastcc ptr @index_tree_locate(ptr noundef nonnull %12, i64 noundef %11) #13
  %14 = getelementptr inbounds %struct.index_group, ptr %13, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !83
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %8, %17
  %18 = phi i64 [ %28, %17 ], [ %15, %8 ]
  %19 = phi i64 [ %27, %17 ], [ 0, %8 ]
  %20 = sub i64 %18, %19
  %21 = lshr i64 %20, 1
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds %struct.index_group, ptr %13, i64 0, i32 4, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !95
  %25 = icmp ugt i64 %24, %11
  %26 = add i64 %22, 1
  %27 = select i1 %25, i64 %19, i64 %26
  %28 = select i1 %25, i64 %22, i64 %18
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %17, label %30, !llvm.loop !140

30:                                               ; preds = %17, %8
  %31 = phi i64 [ 0, %8 ], [ %27, %17 ]
  %32 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  store ptr %9, ptr %32, align 8, !tbaa !94
  %33 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %13, ptr %33, align 8, !tbaa !94
  %34 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  store i64 %31, ptr %34, align 8, !tbaa !94
  tail call fastcc void @iter_set_info(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %2, %30
  %36 = phi i8 [ 0, %30 ], [ 1, %2 ]
  ret i8 %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @index_tree_locate(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 !PGOFuncName !141 {
  %3 = load ptr, ptr %0, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %12, %5 ], [ null, %2 ]
  %8 = load i64, ptr %6, align 8, !tbaa !96
  %9 = icmp ugt i64 %8, %1
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 3
  %11 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 4
  %12 = select i1 %9, ptr %7, ptr %6
  %13 = select i1 %9, ptr %10, ptr %11
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !142

16:                                               ; preds = %5, %2
  %17 = phi ptr [ null, %2 ], [ %12, %5 ]
  ret ptr %17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"index.c:index_init_plain"}
!36 = !{!37, !43, i64 64}
!37 = !{!"lzma_index_s", !38, i64 0, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !42, i64 72}
!38 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !42, i64 24}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"long", !40, i64 0}
!44 = !{!37, !42, i64 72}
!45 = !{!"index.c:index_stream_init"}
!46 = !{!47, !43, i64 0}
!47 = !{!"", !48, i64 0, !42, i64 40, !43, i64 48, !38, i64 56, !43, i64 88, !43, i64 96, !49, i64 104, !43, i64 160}
!48 = !{!"index_tree_node_s", !43, i64 0, !43, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!49 = !{!"", !42, i64 0, !43, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !40, i64 36, !40, i64 37, !40, i64 38, !40, i64 39, !40, i64 40, !40, i64 41, !40, i64 42, !40, i64 43, !42, i64 44, !42, i64 48}
!50 = !{!47, !43, i64 8}
!51 = !{!47, !42, i64 40}
!52 = !{!47, !43, i64 48}
!53 = !{!47, !42, i64 104}
!54 = !{!47, !43, i64 160}
!55 = !{!"index.c:index_tree_append"}
!56 = !{!38, !39, i64 16}
!57 = !{!48, !39, i64 16}
!58 = !{!38, !42, i64 24}
!59 = !{!38, !39, i64 0}
!60 = !{!38, !39, i64 8}
!61 = !{!48, !39, i64 32}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!39, !39, i64 0}
!65 = !{!48, !39, i64 24}
!66 = !{!"index.c:index_tree_init"}
!67 = !{!"index.c:bsr32"}
!68 = !{!"index.c:ctz32"}
!69 = !{!"index.c:index_tree_end"}
!70 = !{!"index.c:index_stream_end"}
!71 = !{!"index.c:index_tree_node_end"}
!72 = !{ptr @index_stream_end}
!73 = !{!37, !42, i64 24}
!74 = !{!37, !43, i64 48}
!75 = !{!37, !43, i64 56}
!76 = !{i64 0, i64 -3}
!77 = !{!"index.c:index_size"}
!78 = !{!"index.c:vli_ceil4"}
!79 = !{!"index.c:index_size_unpadded"}
!80 = !{!37, !43, i64 40}
!81 = !{!37, !39, i64 16}
!82 = !{!47, !39, i64 72}
!83 = !{!43, !43, i64 0}
!84 = !{!85, !43, i64 8}
!85 = !{!"", !43, i64 0, !43, i64 8}
!86 = !{!47, !43, i64 88}
!87 = !{!47, !43, i64 96}
!88 = !{i64 -1, i64 -9223372036854775808}
!89 = !{!"index.c:index_file_size"}
!90 = !{!37, !43, i64 32}
!91 = !{!47, !42, i64 120}
!92 = !{i64 0, i64 4, !93, i64 8, i64 8, !83, i64 16, i64 4, !93, i64 20, i64 4, !93, i64 24, i64 4, !93, i64 28, i64 4, !93, i64 32, i64 4, !93, i64 36, i64 1, !94, i64 37, i64 1, !94, i64 38, i64 1, !94, i64 39, i64 1, !94, i64 40, i64 1, !94, i64 41, i64 1, !94, i64 42, i64 1, !94, i64 43, i64 1, !94, i64 44, i64 4, !93, i64 48, i64 4, !93}
!93 = !{!42, !42, i64 0}
!94 = !{!40, !40, i64 0}
!95 = !{!85, !43, i64 0}
!96 = !{!48, !43, i64 0}
!97 = !{!48, !43, i64 8}
!98 = !{i64 0, i64 8, !83, i64 8, i64 8, !83, i64 16, i64 8, !64, i64 24, i64 8, !64, i64 32, i64 8, !64}
!99 = !{!47, !39, i64 64}
!100 = !{!47, !39, i64 56}
!101 = !{!102, !43, i64 0}
!102 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !42, i64 24, !39, i64 32}
!103 = !{!102, !43, i64 8}
!104 = !{!102, !43, i64 16}
!105 = !{!102, !42, i64 24}
!106 = !{!102, !39, i64 32}
!107 = !{!37, !39, i64 0}
!108 = !{!"index.c:index_cat_helper"}
!109 = !{!47, !39, i64 24}
!110 = !{!47, !39, i64 32}
!111 = !{!37, !39, i64 8}
!112 = distinct !{!112, !63}
!113 = !{!"index.c:index_dup_stream"}
!114 = distinct !{!114, !63}
!115 = !{!"index.c:index_tree_next"}
!116 = distinct !{!116, !63}
!117 = distinct !{!117, !63}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = !{!"index.c:iter_set_info"}
!121 = !{!122, !43, i64 32}
!122 = !{!"", !123, i64 0, !124, i64 120, !40, i64 256}
!123 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112}
!124 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128}
!125 = !{!122, !43, i64 40}
!126 = !{!122, !39, i64 0}
!127 = !{!122, !43, i64 80}
!128 = !{!122, !43, i64 64}
!129 = !{!122, !43, i64 144}
!130 = !{!122, !43, i64 120}
!131 = !{!122, !43, i64 152}
!132 = !{!122, !43, i64 160}
!133 = !{!122, !43, i64 168}
!134 = !{!122, !43, i64 176}
!135 = !{!122, !43, i64 184}
!136 = !{!122, !43, i64 48}
!137 = !{!122, !43, i64 128}
!138 = !{!122, !43, i64 56}
!139 = !{!122, !43, i64 136}
!140 = distinct !{!140, !63}
!141 = !{!"index.c:index_tree_locate"}
!142 = distinct !{!142, !63}
