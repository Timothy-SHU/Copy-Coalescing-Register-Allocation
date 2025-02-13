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
define internal fastcc ptr @index_init_plain(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  tail call fastcc void @index_tree_init(ptr noundef nonnull %2) #13
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i64 512, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_stream_init(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %4) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  store i64 %1, ptr %6, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 1
  store i64 %0, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 2
  %11 = trunc i64 %2 to i32
  %12 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 %11, ptr %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 2
  store i64 %3, ptr %13, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 3
  tail call fastcc void @index_tree_init(ptr noundef nonnull %14) #13
  %15 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 4
  %16 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 -1, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 7
  store i64 0, ptr %17, align 8, !tbaa !23
  br label %18

18:                                               ; preds = %5, %8
  ret ptr %6
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !26
  %10 = load ptr, ptr %0, align 8, !tbaa !27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !28
  store ptr %1, ptr %3, align 8, !tbaa !24
  br label %44

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !29
  store ptr %1, ptr %3, align 8, !tbaa !24
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
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = add i32 %23, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22, !llvm.loop !30

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.index_tree_node_s, ptr %33, i64 0, i32 4
  %36 = select i1 %34, ptr %0, ptr %35
  store ptr %31, ptr %36, align 8, !tbaa !32
  %37 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 2
  store ptr %33, ptr %37, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  store ptr %39, ptr %30, align 8, !tbaa !29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.index_tree_node_s, ptr %39, i64 0, i32 2
  store ptr %26, ptr %42, align 8, !tbaa !25
  br label %43

43:                                               ; preds = %41, %29
  store ptr %26, ptr %38, align 8, !tbaa !33
  store ptr %31, ptr %32, align 8, !tbaa !25
  br label %44

44:                                               ; preds = %14, %43, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @index_tree_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @bsr32(i32 noundef %0) unnamed_addr #5 {
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
define internal fastcc i32 @ctz32(i32 noundef %0) unnamed_addr #5 {
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
define internal fastcc void @index_tree_end(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3
  tail call fastcc void @index_tree_end(ptr noundef nonnull %3, ptr noundef %1, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @index_tree_node_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #13
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %12, %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void %2(ptr noundef nonnull %0, ptr noundef %1) #14, !callees !34
  br label %16

16:                                               ; preds = %15, %13
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call i64 @llvm.umin.i64(i64 %1, i64 1152921504606846971)
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 8, !tbaa !6
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
  %3 = load i32, ptr %2, align 8, !tbaa !35
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !36
  %7 = tail call i64 @lzma_index_memusage(i64 noundef %4, i64 noundef %6) #13
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !36
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_stream_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !35
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lzma_index_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !37
  %6 = tail call fastcc i64 @index_size(i64 noundef %3, i64 noundef %5) #13, !range !38
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_size(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) #13
  %4 = tail call fastcc i64 @vli_ceil4(i64 noundef %3) #13, !range !38
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @vli_ceil4(i64 noundef %0) unnamed_addr #5 {
  %2 = add i64 %0, 3
  %3 = and i64 %2, -4
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
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
  %3 = load i64, ptr %2, align 8, !tbaa !39
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !37
  %8 = tail call fastcc i64 @index_size(i64 noundef %5, i64 noundef %7) #13, !range !38
  %9 = add i64 %3, 24
  %10 = add i64 %9, %8
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_index_file_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !19
  %8 = icmp eq ptr %5, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %11, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %1, %9
  %15 = phi i64 [ %13, %9 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = tail call fastcc i64 @index_file_size(i64 noundef %7, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #13, !range !47
  ret i64 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_file_size(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = add i64 %0, 24
  %7 = add i64 %6, %4
  %8 = tail call fastcc i64 @vli_ceil4(i64 noundef %1) #13, !range !38
  %9 = add i64 %7, %8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc i64 @index_size(i64 noundef %2, i64 noundef %3) #13, !range !38
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
  %3 = load i64, ptr %2, align 8, !tbaa !48
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
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
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !37
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
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.index_stream, ptr %11, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !50
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
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !23
  store i64 0, ptr %10, align 8, !tbaa !23
  %12 = tail call i64 @lzma_index_file_size(ptr noundef nonnull %0) #13, !range !47
  %13 = add i64 %12, %1
  %14 = icmp slt i64 %13, 0
  %15 = select i1 %14, i64 %11, i64 %1
  %16 = select i1 %14, i32 9, i32 0
  store i64 %15, ptr %10, align 8, !tbaa !23
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
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !43
  %23 = tail call fastcc i64 @vli_ceil4(i64 noundef %22) #13, !range !38
  %24 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20
  %25 = load i64, ptr %24, align 8, !tbaa !53
  br label %26

26:                                               ; preds = %11, %18
  %27 = phi i64 [ %23, %18 ], [ 0, %11 ]
  %28 = phi i64 [ %25, %18 ], [ 0, %11 ]
  %29 = tail call i32 @lzma_vli_size(i64 noundef %2) #14
  %30 = tail call i32 @lzma_vli_size(i64 noundef %3) #14
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !19
  %34 = add i64 %27, %2
  %35 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !45
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !46
  %40 = zext i32 %31 to i64
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !23
  %44 = tail call fastcc i64 @index_file_size(i64 noundef %33, i64 noundef %34, i64 noundef %37, i64 noundef %41, i64 noundef %43) #13, !range !47
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %99, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !36
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !37
  %52 = add i64 %51, %40
  %53 = tail call fastcc i64 @index_size(i64 noundef %49, i64 noundef %52) #13, !range !38
  %54 = icmp ugt i64 %53, 17179869184
  br i1 %54, label %99, label %55

55:                                               ; preds = %46
  br i1 %17, label %64, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !42
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !42
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i64 %59, ptr %57, align 8, !tbaa !42
  br label %80

64:                                               ; preds = %56, %55
  %65 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !6
  %67 = shl i64 %66, 4
  %68 = add i64 %67, 64
  %69 = tail call ptr @lzma_alloc(i64 noundef %68, ptr noundef %1) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %99, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 3
  store i64 0, ptr %72, align 8, !tbaa !42
  %73 = load i64, ptr %65, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 2
  store i64 %73, ptr %74, align 8, !tbaa !42
  store i64 512, ptr %65, align 8, !tbaa !6
  store i64 %28, ptr %69, align 8, !tbaa !54
  %75 = getelementptr inbounds %struct.index_tree_node_s, ptr %69, i64 0, i32 1
  store i64 %27, ptr %75, align 8, !tbaa !55
  %76 = load i64, ptr %35, align 8, !tbaa !45
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !42
  tail call fastcc void @index_tree_append(ptr noundef nonnull %14, ptr noundef nonnull %69) #13
  %79 = load i64, ptr %72, align 8, !tbaa !42
  br label %80

80:                                               ; preds = %71, %63
  %81 = phi i64 [ %59, %63 ], [ %79, %71 ]
  %82 = phi ptr [ %16, %63 ], [ %69, %71 ]
  %83 = add i64 %28, %3
  %84 = getelementptr inbounds %struct.index_group, ptr %82, i64 0, i32 4, i64 %81
  store i64 %83, ptr %84, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.index_group, ptr %82, i64 0, i32 4, i64 %81, i32 1
  store i64 %34, ptr %85, align 8, !tbaa !43
  %86 = load <2 x i64>, ptr %35, align 8, !tbaa !42
  %87 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %40, i64 1
  %88 = add <2 x i64> %86, %87
  store <2 x i64> %88, ptr %35, align 8, !tbaa !42
  %89 = tail call fastcc i64 @vli_ceil4(i64 noundef %2) #13, !range !38
  %90 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !48
  %93 = add i64 %92, %3
  store i64 %93, ptr %91, align 8, !tbaa !48
  %94 = load <2 x i64>, ptr %90, align 8, !tbaa !42
  %95 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %89, i64 0
  %96 = add <2 x i64> %94, %95
  store <2 x i64> %96, ptr %90, align 8, !tbaa !42
  %97 = load i64, ptr %50, align 8, !tbaa !37
  %98 = add i64 %97, %40
  store i64 %98, ptr %50, align 8, !tbaa !37
  br label %99

99:                                               ; preds = %80, %26, %46, %64, %4
  %100 = phi i32 [ 11, %4 ], [ 0, %80 ], [ 9, %26 ], [ 9, %46 ], [ 5, %64 ]
  ret i32 %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_cat(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.index_cat_info, align 8
  %5 = tail call i64 @lzma_index_file_size(ptr noundef %0) #13, !range !47
  %6 = tail call i64 @lzma_index_file_size(ptr noundef %1) #13, !range !47
  %7 = add i64 %6, %5
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !48
  %14 = add i64 %13, %11
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %98, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !36
  %19 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !37
  %21 = tail call fastcc i64 @index_size_unpadded(i64 noundef %18, i64 noundef %20) #13
  %22 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 3
  %23 = load <2 x i64>, ptr %22, align 8, !tbaa !42
  %24 = extractelement <2 x i64> %23, i64 0
  %25 = extractelement <2 x i64> %23, i64 1
  %26 = tail call fastcc i64 @index_size_unpadded(i64 noundef %24, i64 noundef %25) #13
  %27 = add i64 %26, %21
  %28 = tail call fastcc i64 @vli_ceil4(i64 noundef %27) #13, !range !38
  %29 = icmp ult i64 %28, 17179869185
  br i1 %29, label %30, label %98

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3
  %34 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !42
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !42
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = shl i64 %40, 4
  %46 = add i64 %45, 64
  %47 = tail call ptr @lzma_alloc(i64 noundef %46, ptr noundef %2) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(40) %35, i64 40, i1 false), !tbaa.struct !56
  %50 = load i64, ptr %38, align 8, !tbaa !42
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 2
  store i64 %51, ptr %52, align 8, !tbaa !42
  %53 = load i64, ptr %38, align 8, !tbaa !42
  %54 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 3
  store i64 %53, ptr %54, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !42
  %57 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !42
  %58 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 4
  %59 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 4
  %60 = shl i64 %51, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %58, ptr nonnull align 8 %59, i64 %60, i1 false)
  %61 = getelementptr inbounds %struct.index_tree_node_s, ptr %35, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.index_tree_node_s, ptr %62, i64 0, i32 4
  store ptr %47, ptr %65, align 8, !tbaa !29
  br label %66

66:                                               ; preds = %64, %49
  %67 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = icmp eq ptr %68, %35
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr %47, ptr %67, align 8, !tbaa !57
  store ptr %47, ptr %33, align 8, !tbaa !58
  br label %71

71:                                               ; preds = %70, %66
  %72 = load ptr, ptr %34, align 8, !tbaa !41
  %73 = icmp eq ptr %72, %35
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store ptr %47, ptr %34, align 8, !tbaa !41
  br label %75

75:                                               ; preds = %71, %74
  tail call void @lzma_free(ptr noundef nonnull %35, ptr noundef %2) #14
  br label %76

76:                                               ; preds = %30, %37, %75
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  store i64 %11, ptr %4, align 8, !tbaa !59
  %77 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 1
  store i64 %5, ptr %77, align 8, !tbaa !61
  %78 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 2
  store i64 %18, ptr %78, align 8, !tbaa !62
  %79 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 3
  %80 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !35
  store i32 %81, ptr %79, align 8, !tbaa !63
  %82 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 4
  store ptr %0, ptr %82, align 8, !tbaa !64
  %83 = load ptr, ptr %1, align 8, !tbaa !65
  call fastcc void @index_cat_helper(ptr noundef nonnull %4, ptr noundef %83) #13
  %84 = load i64, ptr %10, align 8, !tbaa !48
  %85 = add i64 %84, %13
  store i64 %85, ptr %10, align 8, !tbaa !48
  %86 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !39
  %88 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !39
  %90 = add i64 %89, %87
  store i64 %90, ptr %88, align 8, !tbaa !39
  %91 = load <2 x i64>, ptr %17, align 8, !tbaa !42
  %92 = add <2 x i64> %91, %23
  store <2 x i64> %92, ptr %17, align 8, !tbaa !42
  %93 = tail call i32 @lzma_index_checks(ptr noundef nonnull %0) #13
  %94 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !14
  %96 = or i32 %95, %93
  %97 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  store i32 %96, ptr %97, align 8, !tbaa !14
  tail call void @lzma_free(ptr noundef nonnull %1, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %98

98:                                               ; preds = %44, %3, %9, %16, %76
  %99 = phi i32 [ 0, %76 ], [ 9, %16 ], [ 9, %9 ], [ 9, %3 ], [ 5, %44 ]
  ret i32 %99
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_cat_helper(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = phi ptr [ %1, %2 ], [ %11, %14 ]
  %8 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %9, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call fastcc void @index_cat_helper(ptr noundef %0, ptr noundef nonnull %9) #13
  br label %14

14:                                               ; preds = %13, %6
  %15 = load <2 x i64>, ptr %0, align 8, !tbaa !42
  %16 = load <2 x i64>, ptr %7, align 8, !tbaa !42
  %17 = add <2 x i64> %16, %15
  store <2 x i64> %17, ptr %7, align 8, !tbaa !42
  %18 = load i32, ptr %3, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.index_stream, ptr %7, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !20
  %22 = load i64, ptr %4, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.index_stream, ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !21
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !21
  %26 = load ptr, ptr %5, align 8, !tbaa !64
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
  %8 = load <2 x i64>, ptr %6, align 8, !tbaa !42
  store <2 x i64> %8, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 3
  %11 = load <2 x i64>, ptr %9, align 8, !tbaa !42
  store <2 x i64> %11, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
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
  br i1 %21, label %22, label %14, !llvm.loop !69

22:                                               ; preds = %19, %18, %2
  %23 = phi ptr [ null, %2 ], [ null, %18 ], [ %3, %19 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_dup_stream(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = icmp ugt i64 %4, 1152921504606846971
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !19
  %9 = load i64, ptr %0, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !20
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !21
  %15 = tail call fastcc ptr @index_stream_init(i64 noundef %8, i64 noundef %9, i64 noundef %12, i64 noundef %14, ptr noundef %1) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 4
  %23 = load <2 x i64>, ptr %3, align 8, !tbaa !42
  store <2 x i64> %23, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 6
  %25 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) %25, i64 56, i1 false), !tbaa.struct !50
  %26 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 7
  store i64 %27, ptr %28, align 8, !tbaa !23
  %29 = load i64, ptr %3, align 8, !tbaa !45
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
  store i64 1, ptr %36, align 8, !tbaa !42
  %37 = load i64, ptr %3, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 2
  store i64 %37, ptr %38, align 8, !tbaa !42
  %39 = add i64 %37, -1
  %40 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 3
  store i64 %39, ptr %40, align 8, !tbaa !42
  %41 = load ptr, ptr %18, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 4
  br label %43

43:                                               ; preds = %43, %35
  %44 = phi ptr [ %41, %35 ], [ %55, %43 ]
  %45 = phi i64 [ 0, %35 ], [ %54, %43 ]
  %46 = getelementptr inbounds %struct.index_record, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.index_group, ptr %44, i64 0, i32 4
  %48 = getelementptr inbounds %struct.index_group, ptr %44, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !42
  %50 = shl i64 %49, 4
  %51 = add i64 %50, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %46, ptr nonnull align 8 %47, i64 %51, i1 false)
  %52 = load i64, ptr %48, align 8, !tbaa !42
  %53 = add i64 %45, 1
  %54 = add i64 %53, %52
  %55 = tail call fastcc ptr @index_tree_next(ptr noundef %44) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !70

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 3
  tail call fastcc void @index_tree_append(ptr noundef nonnull %58, ptr noundef nonnull %32) #13
  br label %59

59:                                               ; preds = %17, %6, %57, %34, %2
  %60 = phi ptr [ null, %2 ], [ %15, %17 ], [ null, %6 ], [ null, %34 ], [ %15, %57 ]
  ret ptr %60
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @index_tree_next(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %5, !llvm.loop !71

10:                                               ; preds = %1, %15
  %11 = phi ptr [ %13, %15 ], [ %0, %1 ]
  %12 = getelementptr inbounds %struct.index_tree_node_s, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %10, label %19, !llvm.loop !72

19:                                               ; preds = %5, %15, %10
  %20 = phi ptr [ %13, %15 ], [ null, %10 ], [ %6, %5 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !52
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
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %10 = load i64, ptr %9, align 8, !tbaa !52
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  %14 = load i64, ptr %13, align 8, !tbaa !52
  switch i64 %14, label %25 [
    i64 0, label %15
    i64 1, label %18
    i64 2, label %22
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  br label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = tail call fastcc ptr @index_tree_next(ptr noundef %20) #13
  br label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !57
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
  %36 = load ptr, ptr %28, align 8, !tbaa !68
  br i1 %27, label %37, label %85

37:                                               ; preds = %35, %42
  %38 = phi ptr [ %43, %42 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.index_stream, ptr %38, i64 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %38) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %94, label %37, !llvm.loop !73

45:                                               ; preds = %30
  %46 = icmp eq ptr %32, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !42
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
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  %65 = icmp eq ptr %64, null
  br i1 %65, label %57, label %66, !llvm.loop !74

66:                                               ; preds = %62, %37, %51, %53
  %67 = phi ptr [ %31, %51 ], [ %31, %53 ], [ %38, %37 ], [ %59, %62 ]
  %68 = phi ptr [ %32, %51 ], [ %54, %53 ], [ %40, %37 ], [ %64, %62 ]
  %69 = phi i64 [ %52, %51 ], [ 0, %53 ], [ 0, %37 ], [ 0, %62 ]
  br i1 %29, label %70, label %89

70:                                               ; preds = %66
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = load i64, ptr %68, align 8, !tbaa !54
  %74 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4
  %75 = load i64, ptr %74, align 8, !tbaa !53
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72, %78
  br label %30

78:                                               ; preds = %70
  %79 = add i64 %69, -1
  %80 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !53
  %82 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4, i64 %69
  %83 = load i64, ptr %82, align 8, !tbaa !53
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %77, label %89

85:                                               ; preds = %35, %61
  %86 = phi ptr [ %59, %61 ], [ %36, %35 ]
  %87 = getelementptr inbounds %struct.index_stream, ptr %86, i64 0, i32 3, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !57
  br label %89

89:                                               ; preds = %72, %78, %66, %85
  %90 = phi ptr [ %88, %85 ], [ %68, %66 ], [ %68, %78 ], [ %68, %72 ]
  %91 = phi ptr [ %86, %85 ], [ %67, %66 ], [ %67, %78 ], [ %67, %72 ]
  %92 = phi i64 [ 0, %85 ], [ 0, %72 ], [ %69, %78 ], [ %69, %66 ]
  store ptr %91, ptr %7, align 8, !tbaa !52
  %93 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %90, ptr %93, align 8, !tbaa !52
  store i64 %92, ptr %9, align 8, !tbaa !52
  tail call fastcc void @iter_set_info(ptr noundef %0) #13
  br label %94

94:                                               ; preds = %57, %42, %89, %2
  %95 = phi i8 [ 1, %2 ], [ 0, %89 ], [ 1, %42 ], [ 1, %57 ]
  ret i8 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iter_set_info(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %7 = load i64, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 2, ptr %10, align 8, !tbaa !52
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.index_tree, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 0, ptr %22, align 8, !tbaa !52
  br label %32

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, %5
  %27 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  br i1 %26, label %31, label %28

28:                                               ; preds = %23
  store i64 1, ptr %27, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  store ptr %30, ptr %4, align 8, !tbaa !52
  br label %32

31:                                               ; preds = %23
  store i64 2, ptr %27, align 8, !tbaa !52
  store ptr null, ptr %4, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %21, %31, %28, %9
  %33 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 4
  store i64 %35, ptr %36, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 5
  store i64 %38, ptr %39, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 6
  %41 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 7
  %42 = load <2 x i64>, ptr %3, align 8, !tbaa !42
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %43, ptr %40, align 8, !tbaa !42
  %44 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !22
  %46 = icmp eq i32 %45, -1
  %47 = select i1 %46, ptr null, ptr %44
  store ptr %47, ptr %0, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !23
  %50 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 10
  store i64 %49, ptr %50, align 8, !tbaa !81
  %51 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = tail call fastcc i64 @index_size(i64 noundef 0, i64 noundef 0) #13, !range !38
  %56 = add i64 %55, 24
  %57 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %56, ptr %57, align 8, !tbaa !82
  br label %73

58:                                               ; preds = %32
  %59 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %60 = load i64, ptr %59, align 8, !tbaa !46
  %61 = tail call fastcc i64 @index_size(i64 noundef %38, i64 noundef %60) #13, !range !38
  %62 = add i64 %61, 24
  %63 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 4, i64 %64, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !43
  %67 = tail call fastcc i64 @vli_ceil4(i64 noundef %66) #13, !range !38
  %68 = add i64 %62, %67
  %69 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %68, ptr %69, align 8, !tbaa !82
  %70 = load i64, ptr %63, align 8, !tbaa !42
  %71 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 4, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !53
  br label %73

73:                                               ; preds = %58, %54
  %74 = phi i64 [ 0, %54 ], [ %72, %58 ]
  %75 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 9
  store i64 %74, ptr %75, align 8
  br i1 %8, label %119, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !42
  %79 = add i64 %78, %7
  %80 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 3
  store i64 %79, ptr %81, align 8, !tbaa !83
  %82 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !21
  %84 = add i64 %83, %79
  store i64 %84, ptr %80, align 8, !tbaa !84
  %85 = icmp eq i64 %7, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !55
  br label %94

89:                                               ; preds = %76
  %90 = add i64 %7, -1
  %91 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %90, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !43
  %93 = tail call fastcc i64 @vli_ceil4(i64 noundef %92) #13, !range !38
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i64 [ %90, %89 ], [ -1, %86 ]
  %96 = phi i64 [ %93, %89 ], [ %88, %86 ]
  %97 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 4
  store i64 %96, ptr %97, align 8, !tbaa !85
  %98 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %95
  %99 = select i1 %85, ptr %5, ptr %98
  %100 = load i64, ptr %99, align 8, !tbaa !42
  %101 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 5
  store i64 %100, ptr %101, align 8, !tbaa !86
  %102 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7
  %103 = load i64, ptr %102, align 8, !tbaa !53
  %104 = sub i64 %103, %100
  %105 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 6
  store i64 %104, ptr %105, align 8, !tbaa !87
  %106 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !43
  %108 = sub i64 %107, %96
  %109 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 7
  store i64 %108, ptr %109, align 8, !tbaa !88
  %110 = tail call fastcc i64 @vli_ceil4(i64 noundef %108) #13, !range !38
  %111 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 8
  store i64 %110, ptr %111, align 8, !tbaa !89
  %112 = add i64 %96, 12
  store i64 %112, ptr %97, align 8, !tbaa !85
  %113 = load i64, ptr %40, align 8, !tbaa !90
  %114 = add i64 %113, %112
  %115 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 1
  store i64 %114, ptr %115, align 8, !tbaa !91
  %116 = load i64, ptr %41, align 8, !tbaa !92
  %117 = add i64 %116, %100
  %118 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 2
  store i64 %117, ptr %118, align 8, !tbaa !93
  br label %119

119:                                              ; preds = %94, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_locate(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !48
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @index_tree_locate(ptr noundef nonnull %4, i64 noundef %1) #13
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %11 = sub i64 %1, %10
  %12 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 3
  %13 = tail call fastcc ptr @index_tree_locate(ptr noundef nonnull %12, i64 noundef %11) #13
  %14 = getelementptr inbounds %struct.index_group, ptr %13, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !42
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %8, %17
  %18 = phi i64 [ %28, %17 ], [ %15, %8 ]
  %19 = phi i64 [ %27, %17 ], [ 0, %8 ]
  %20 = sub i64 %18, %19
  %21 = lshr i64 %20, 1
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds %struct.index_group, ptr %13, i64 0, i32 4, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = icmp ugt i64 %24, %11
  %26 = add i64 %22, 1
  %27 = select i1 %25, i64 %19, i64 %26
  %28 = select i1 %25, i64 %22, i64 %18
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %17, label %30, !llvm.loop !94

30:                                               ; preds = %17, %8
  %31 = phi i64 [ 0, %8 ], [ %27, %17 ]
  %32 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  store ptr %9, ptr %32, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %13, ptr %33, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  store i64 %31, ptr %34, align 8, !tbaa !52
  tail call fastcc void @iter_set_info(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %2, %30
  %36 = phi i8 [ 0, %30 ], [ 1, %2 ]
  ret i8 %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @index_tree_locate(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !32
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %12, %5 ], [ null, %2 ]
  %8 = load i64, ptr %6, align 8, !tbaa !54
  %9 = icmp ugt i64 %8, %1
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 3
  %11 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 4
  %12 = select i1 %9, ptr %7, ptr %6
  %13 = select i1 %9, ptr %10, ptr %11
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !95

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !13, i64 64}
!7 = !{!"lzma_index_s", !8, i64 0, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !12, i64 72}
!8 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!7, !12, i64 72}
!15 = !{!16, !13, i64 0}
!16 = !{!"", !17, i64 0, !12, i64 40, !13, i64 48, !8, i64 56, !13, i64 88, !13, i64 96, !18, i64 104, !13, i64 160}
!17 = !{!"index_tree_node_s", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!18 = !{!"", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !10, i64 36, !10, i64 37, !10, i64 38, !10, i64 39, !10, i64 40, !10, i64 41, !10, i64 42, !10, i64 43, !12, i64 44, !12, i64 48}
!19 = !{!16, !13, i64 8}
!20 = !{!16, !12, i64 40}
!21 = !{!16, !13, i64 48}
!22 = !{!16, !12, i64 104}
!23 = !{!16, !13, i64 160}
!24 = !{!8, !9, i64 16}
!25 = !{!17, !9, i64 16}
!26 = !{!8, !12, i64 24}
!27 = !{!8, !9, i64 0}
!28 = !{!8, !9, i64 8}
!29 = !{!17, !9, i64 32}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!9, !9, i64 0}
!33 = !{!17, !9, i64 24}
!34 = !{ptr @index_stream_end}
!35 = !{!7, !12, i64 24}
!36 = !{!7, !13, i64 48}
!37 = !{!7, !13, i64 56}
!38 = !{i64 0, i64 -3}
!39 = !{!7, !13, i64 40}
!40 = !{!7, !9, i64 16}
!41 = !{!16, !9, i64 72}
!42 = !{!13, !13, i64 0}
!43 = !{!44, !13, i64 8}
!44 = !{!"", !13, i64 0, !13, i64 8}
!45 = !{!16, !13, i64 88}
!46 = !{!16, !13, i64 96}
!47 = !{i64 -1, i64 -9223372036854775808}
!48 = !{!7, !13, i64 32}
!49 = !{!16, !12, i64 120}
!50 = !{i64 0, i64 4, !51, i64 8, i64 8, !42, i64 16, i64 4, !51, i64 20, i64 4, !51, i64 24, i64 4, !51, i64 28, i64 4, !51, i64 32, i64 4, !51, i64 36, i64 1, !52, i64 37, i64 1, !52, i64 38, i64 1, !52, i64 39, i64 1, !52, i64 40, i64 1, !52, i64 41, i64 1, !52, i64 42, i64 1, !52, i64 43, i64 1, !52, i64 44, i64 4, !51, i64 48, i64 4, !51}
!51 = !{!12, !12, i64 0}
!52 = !{!10, !10, i64 0}
!53 = !{!44, !13, i64 0}
!54 = !{!17, !13, i64 0}
!55 = !{!17, !13, i64 8}
!56 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !32, i64 24, i64 8, !32, i64 32, i64 8, !32}
!57 = !{!16, !9, i64 64}
!58 = !{!16, !9, i64 56}
!59 = !{!60, !13, i64 0}
!60 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !9, i64 32}
!61 = !{!60, !13, i64 8}
!62 = !{!60, !13, i64 16}
!63 = !{!60, !12, i64 24}
!64 = !{!60, !9, i64 32}
!65 = !{!7, !9, i64 0}
!66 = !{!16, !9, i64 24}
!67 = !{!16, !9, i64 32}
!68 = !{!7, !9, i64 8}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = !{!76, !13, i64 32}
!76 = !{!"", !77, i64 0, !78, i64 120, !10, i64 256}
!77 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112}
!78 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128}
!79 = !{!76, !13, i64 40}
!80 = !{!76, !9, i64 0}
!81 = !{!76, !13, i64 80}
!82 = !{!76, !13, i64 64}
!83 = !{!76, !13, i64 144}
!84 = !{!76, !13, i64 120}
!85 = !{!76, !13, i64 152}
!86 = !{!76, !13, i64 160}
!87 = !{!76, !13, i64 168}
!88 = !{!76, !13, i64 176}
!89 = !{!76, !13, i64 184}
!90 = !{!76, !13, i64 48}
!91 = !{!76, !13, i64 128}
!92 = !{!76, !13, i64 56}
!93 = !{!76, !13, i64 136}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
