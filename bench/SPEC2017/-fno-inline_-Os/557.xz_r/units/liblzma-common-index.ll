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
define dso_local ptr @lzma_index_init(ptr noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = tail call fastcc ptr @index_init_plain(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !62

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @index_stream_init(i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 0, ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !62

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
define internal fastcc ptr @index_init_plain(ptr noundef %0) unnamed_addr #0 !prof !61 !PGOFuncName !63 {
  %2 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !62

4:                                                ; preds = %1
  tail call fastcc void @index_tree_init(ptr noundef nonnull %2) #13
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i64 512, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !72
  br label %8

8:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_stream_init(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !61 !PGOFuncName !73 {
  %6 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %4) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !62

8:                                                ; preds = %5
  store i64 %1, ptr %6, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 1
  store i64 %0, ptr %9, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 2
  %11 = trunc i64 %2 to i32
  %12 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 %11, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 2
  store i64 %3, ptr %13, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 3
  tail call fastcc void @index_tree_init(ptr noundef nonnull %14) #13
  %15 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 4
  %16 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 -1, ptr %16, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.index_stream, ptr %6, i64 0, i32 7
  store i64 0, ptr %17, align 8, !tbaa !82
  br label %18

18:                                               ; preds = %5, %8
  ret ptr %6
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !83 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !87
  %10 = load ptr, ptr %0, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !89

12:                                               ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !90
  store ptr %1, ptr %3, align 8, !tbaa !85
  br label %44

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !91
  store ptr %1, ptr %3, align 8, !tbaa !85
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
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = add i32 %23, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22, !llvm.loop !92

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.index_tree_node_s, ptr %33, i64 0, i32 4
  %36 = select i1 %34, ptr %0, ptr %35
  store ptr %31, ptr %36, align 8, !tbaa !94
  %37 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 2
  store ptr %33, ptr %37, align 8, !tbaa !86
  %38 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  store ptr %39, ptr %30, align 8, !tbaa !91
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.index_tree_node_s, ptr %39, i64 0, i32 2
  store ptr %26, ptr %42, align 8, !tbaa !86
  br label %43

43:                                               ; preds = %41, %29
  store ptr %26, ptr %38, align 8, !tbaa !95
  store ptr %31, ptr %32, align 8, !tbaa !86
  br label %44

44:                                               ; preds = %14, %43, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_index_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !96

4:                                                ; preds = %2
  tail call fastcc void @index_tree_end(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @index_stream_end) #13
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @index_tree_end(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !83 !PGOFuncName !97 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !98

6:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !61 !PGOFuncName !99 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3
  tail call fastcc void @index_tree_end(ptr noundef nonnull %3, ptr noundef %1, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #4 !prof !100 {
  %3 = tail call i64 @llvm.umin.i64(i64 %1, i64 1152921504606846971)
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @lzma_index_memusage(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 !prof !100 {
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
define dso_local i64 @lzma_index_memused(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !100 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !102
  %7 = tail call i64 @lzma_index_memusage(i64 noundef %4, i64 noundef %6) #13
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !102
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_stream_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !100 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lzma_index_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !61 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !103
  %6 = tail call fastcc i64 @index_size(i64 noundef %3, i64 noundef %5) #13, !range !104
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_size(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !prof !105 !PGOFuncName !106 {
  %3 = tail call fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) #13
  %4 = tail call fastcc i64 @vli_ceil4(i64 noundef %3) #13, !range !104
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_total_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !100 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !107
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !100 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !103
  %8 = tail call fastcc i64 @index_size(i64 noundef %5, i64 noundef %7) #13, !range !104
  %9 = add i64 %3, 24
  %10 = add i64 %9, %8
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_index_file_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !100 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %5, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %11, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !111
  br label %14

14:                                               ; preds = %1, %9
  %15 = phi i64 [ %13, %9 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !114
  %20 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !82
  %22 = tail call fastcc i64 @index_file_size(i64 noundef %7, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #13, !range !115
  ret i64 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_file_size(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 !prof !61 !PGOFuncName !116 {
  %6 = add i64 %0, 24
  %7 = add i64 %6, %4
  %8 = tail call fastcc i64 @vli_ceil4(i64 noundef %1) #13, !range !104
  %9 = add i64 %7, %8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11, !prof !62

11:                                               ; preds = %5
  %12 = tail call fastcc i64 @index_size(i64 noundef %2, i64 noundef %3) #13, !range !104
  %13 = add i64 %12, %9
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 -1)
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i64 [ -1, %5 ], [ %14, %11 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_uncompressed_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !100 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !117
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !100 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !81
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !118
  %12 = shl nuw i32 1, %11
  %13 = or i32 %12, %3
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %3, %1 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_padding_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !61 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !103
  %6 = tail call fastcc i64 @index_size_unpadded(i64 noundef %3, i64 noundef %5) #13
  %7 = trunc i64 %6 to i32
  %8 = sub i32 0, %7
  %9 = and i32 %8, 3
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !prof !119 !PGOFuncName !120 {
  %3 = tail call i32 @lzma_vli_size(i64 noundef %0) #14
  %4 = add i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = add i64 %1, 4
  %7 = add i64 %6, %5
  ret i64 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_stream_flags(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !100 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.index_stream, ptr %11, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !121
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
define dso_local i32 @lzma_index_stream_padding(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !100 {
  %3 = icmp ne ptr %0, null
  %4 = and i64 %1, -9223372036854775805
  %5 = icmp eq i64 %4, 0
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !82
  store i64 0, ptr %10, align 8, !tbaa !82
  %12 = tail call i64 @lzma_index_file_size(ptr noundef nonnull %0) #13, !range !115
  %13 = add i64 %12, %1
  %14 = icmp slt i64 %13, 0
  %15 = select i1 %14, i64 %11, i64 %1
  %16 = select i1 %14, i32 9, i32 0
  store i64 %15, ptr %10, align 8, !tbaa !82
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i32 [ %16, %7 ], [ 11, %2 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_append(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = icmp eq ptr %0, null
  %6 = add i64 %2, -9223372036854775805
  %7 = icmp ult i64 %6, -9223372036854775800
  %8 = or i1 %5, %7
  %9 = icmp slt i64 %3, 0
  %10 = or i1 %9, %8
  br i1 %10, label %99, label %11, !prof !124

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !125

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !110
  %21 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !111
  %23 = tail call fastcc i64 @vli_ceil4(i64 noundef %22) #13, !range !104
  %24 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20
  %25 = load i64, ptr %24, align 8, !tbaa !126
  br label %26

26:                                               ; preds = %11, %18
  %27 = phi i64 [ %23, %18 ], [ 0, %11 ]
  %28 = phi i64 [ %25, %18 ], [ 0, %11 ]
  %29 = tail call i32 @lzma_vli_size(i64 noundef %2) #14
  %30 = tail call i32 @lzma_vli_size(i64 noundef %3) #14
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !78
  %34 = add i64 %27, %2
  %35 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !113
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !114
  %40 = zext i32 %31 to i64
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !82
  %44 = tail call fastcc i64 @index_file_size(i64 noundef %33, i64 noundef %34, i64 noundef %37, i64 noundef %41, i64 noundef %43) #13, !range !115
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %99, label %46, !prof !62

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !102
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !103
  %52 = add i64 %51, %40
  %53 = tail call fastcc i64 @index_size(i64 noundef %49, i64 noundef %52) #13, !range !104
  %54 = icmp ugt i64 %53, 17179869184
  br i1 %54, label %99, label %55, !prof !62

55:                                               ; preds = %46
  br i1 %17, label %64, label %56, !prof !125

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !110
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !110
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i64 %59, ptr %57, align 8, !tbaa !110
  br label %80

64:                                               ; preds = %56, %55
  %65 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !64
  %67 = shl i64 %66, 4
  %68 = add i64 %67, 64
  %69 = tail call ptr @lzma_alloc(i64 noundef %68, ptr noundef %1) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %99, label %71, !prof !62

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 3
  store i64 0, ptr %72, align 8, !tbaa !110
  %73 = load i64, ptr %65, align 8, !tbaa !64
  %74 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 2
  store i64 %73, ptr %74, align 8, !tbaa !110
  store i64 512, ptr %65, align 8, !tbaa !64
  store i64 %28, ptr %69, align 8, !tbaa !127
  %75 = getelementptr inbounds %struct.index_tree_node_s, ptr %69, i64 0, i32 1
  store i64 %27, ptr %75, align 8, !tbaa !128
  %76 = load i64, ptr %35, align 8, !tbaa !113
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds %struct.index_group, ptr %69, i64 0, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !110
  tail call fastcc void @index_tree_append(ptr noundef nonnull %14, ptr noundef nonnull %69) #13
  %79 = load i64, ptr %72, align 8, !tbaa !110
  br label %80

80:                                               ; preds = %71, %63
  %81 = phi i64 [ %59, %63 ], [ %79, %71 ]
  %82 = phi ptr [ %16, %63 ], [ %69, %71 ]
  %83 = add i64 %28, %3
  %84 = getelementptr inbounds %struct.index_group, ptr %82, i64 0, i32 4, i64 %81
  store i64 %83, ptr %84, align 8, !tbaa !126
  %85 = getelementptr inbounds %struct.index_group, ptr %82, i64 0, i32 4, i64 %81, i32 1
  store i64 %34, ptr %85, align 8, !tbaa !111
  %86 = load <2 x i64>, ptr %35, align 8, !tbaa !110
  %87 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %40, i64 1
  %88 = add <2 x i64> %86, %87
  store <2 x i64> %88, ptr %35, align 8, !tbaa !110
  %89 = tail call fastcc i64 @vli_ceil4(i64 noundef %2) #13, !range !104
  %90 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !117
  %93 = add i64 %92, %3
  store i64 %93, ptr %91, align 8, !tbaa !117
  %94 = load <2 x i64>, ptr %90, align 8, !tbaa !110
  %95 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %89, i64 0
  %96 = add <2 x i64> %94, %95
  store <2 x i64> %96, ptr %90, align 8, !tbaa !110
  %97 = load i64, ptr %50, align 8, !tbaa !103
  %98 = add i64 %97, %40
  store i64 %98, ptr %50, align 8, !tbaa !103
  br label %99

99:                                               ; preds = %80, %26, %46, %64, %4
  %100 = phi i32 [ 11, %4 ], [ 0, %80 ], [ 9, %26 ], [ 9, %46 ], [ 5, %64 ]
  ret i32 %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @vli_ceil4(i64 noundef %0) unnamed_addr #5 !prof !129 !PGOFuncName !130 {
  %2 = add i64 %0, 3
  %3 = and i64 %2, -4
  ret i64 %3
}

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_cat(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !100 {
  %4 = alloca %struct.index_cat_info, align 8
  %5 = tail call i64 @lzma_index_file_size(ptr noundef %0) #13, !range !115
  %6 = tail call i64 @lzma_index_file_size(ptr noundef %1) #13, !range !115
  %7 = add i64 %6, %5
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !117
  %12 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !117
  %14 = add i64 %13, %11
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %98, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !103
  %21 = tail call fastcc i64 @index_size_unpadded(i64 noundef %18, i64 noundef %20) #13
  %22 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 3
  %23 = load <2 x i64>, ptr %22, align 8, !tbaa !110
  %24 = extractelement <2 x i64> %23, i64 0
  %25 = extractelement <2 x i64> %23, i64 1
  %26 = tail call fastcc i64 @index_size_unpadded(i64 noundef %24, i64 noundef %25) #13
  %27 = add i64 %26, %21
  %28 = tail call fastcc i64 @vli_ceil4(i64 noundef %27) #13, !range !104
  %29 = icmp ult i64 %28, 17179869185
  br i1 %29, label %30, label %98

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  %33 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3
  %34 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !110
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !110
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = shl i64 %40, 4
  %46 = add i64 %45, 64
  %47 = tail call ptr @lzma_alloc(i64 noundef %46, ptr noundef %2) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(40) %35, i64 40, i1 false), !tbaa.struct !131
  %50 = load i64, ptr %38, align 8, !tbaa !110
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 2
  store i64 %51, ptr %52, align 8, !tbaa !110
  %53 = load i64, ptr %38, align 8, !tbaa !110
  %54 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 3
  store i64 %53, ptr %54, align 8, !tbaa !110
  %55 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !110
  %57 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !110
  %58 = getelementptr inbounds %struct.index_group, ptr %47, i64 0, i32 4
  %59 = getelementptr inbounds %struct.index_group, ptr %35, i64 0, i32 4
  %60 = shl i64 %51, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %58, ptr nonnull align 8 %59, i64 %60, i1 false)
  %61 = getelementptr inbounds %struct.index_tree_node_s, ptr %35, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.index_tree_node_s, ptr %62, i64 0, i32 4
  store ptr %47, ptr %65, align 8, !tbaa !91
  br label %66

66:                                               ; preds = %64, %49
  %67 = getelementptr inbounds %struct.index_stream, ptr %32, i64 0, i32 3, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !132
  %69 = icmp eq ptr %68, %35
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr %47, ptr %67, align 8, !tbaa !132
  store ptr %47, ptr %33, align 8, !tbaa !133
  br label %71

71:                                               ; preds = %70, %66
  %72 = load ptr, ptr %34, align 8, !tbaa !109
  %73 = icmp eq ptr %72, %35
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store ptr %47, ptr %34, align 8, !tbaa !109
  br label %75

75:                                               ; preds = %71, %74
  tail call void @lzma_free(ptr noundef nonnull %35, ptr noundef %2) #14
  br label %76

76:                                               ; preds = %30, %37, %75
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  store i64 %11, ptr %4, align 8, !tbaa !134
  %77 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 1
  store i64 %5, ptr %77, align 8, !tbaa !136
  %78 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 2
  store i64 %18, ptr %78, align 8, !tbaa !137
  %79 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 3
  %80 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !101
  store i32 %81, ptr %79, align 8, !tbaa !138
  %82 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 4
  store ptr %0, ptr %82, align 8, !tbaa !139
  %83 = load ptr, ptr %1, align 8, !tbaa !140
  call fastcc void @index_cat_helper(ptr noundef nonnull %4, ptr noundef %83) #13
  %84 = load i64, ptr %10, align 8, !tbaa !117
  %85 = add i64 %84, %13
  store i64 %85, ptr %10, align 8, !tbaa !117
  %86 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !107
  %88 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !107
  %90 = add i64 %89, %87
  store i64 %90, ptr %88, align 8, !tbaa !107
  %91 = load <2 x i64>, ptr %17, align 8, !tbaa !110
  %92 = add <2 x i64> %91, %23
  store <2 x i64> %92, ptr %17, align 8, !tbaa !110
  %93 = tail call i32 @lzma_index_checks(ptr noundef nonnull %0) #13
  %94 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !72
  %96 = or i32 %95, %93
  %97 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  store i32 %96, ptr %97, align 8, !tbaa !72
  tail call void @lzma_free(ptr noundef nonnull %1, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %98

98:                                               ; preds = %44, %3, %9, %16, %76
  %99 = phi i32 [ 0, %76 ], [ 9, %16 ], [ 9, %9 ], [ 9, %3 ], [ 5, %44 ]
  ret i32 %99
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_cat_helper(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !100 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = phi ptr [ %1, %2 ], [ %11, %14 ]
  %8 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %9, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call fastcc void @index_cat_helper(ptr noundef %0, ptr noundef nonnull %9) #13
  br label %14

14:                                               ; preds = %13, %6
  %15 = load <2 x i64>, ptr %0, align 8, !tbaa !110
  %16 = load <2 x i64>, ptr %7, align 8, !tbaa !110
  %17 = add <2 x i64> %16, %15
  store <2 x i64> %17, ptr %7, align 8, !tbaa !110
  %18 = load i32, ptr %3, align 8, !tbaa !138
  %19 = getelementptr inbounds %struct.index_stream, ptr %7, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !79
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !79
  %22 = load i64, ptr %4, align 8, !tbaa !137
  %23 = getelementptr inbounds %struct.index_stream, ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !80
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !80
  %26 = load ptr, ptr %5, align 8, !tbaa !139
  tail call fastcc void @index_tree_append(ptr noundef %26, ptr noundef nonnull %7) #13
  %27 = icmp eq ptr %11, null
  br i1 %27, label %28, label %6

28:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lzma_index_dup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !100 {
  %3 = tail call fastcc ptr @index_init_plain(ptr noundef %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 1
  %8 = load <2 x i64>, ptr %6, align 8, !tbaa !110
  store <2 x i64> %8, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 3
  %11 = load <2 x i64>, ptr %9, align 8, !tbaa !110
  store <2 x i64> %11, ptr %10, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !144
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
  br i1 %21, label %22, label %14, !llvm.loop !145

22:                                               ; preds = %19, %18, %2
  %23 = phi ptr [ null, %2 ], [ null, %18 ], [ %3, %19 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @index_dup_stream(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !100 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !113
  %5 = icmp ugt i64 %4, 1152921504606846971
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !78
  %9 = load i64, ptr %0, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !79
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !80
  %15 = tail call fastcc ptr @index_stream_init(i64 noundef %8, i64 noundef %9, i64 noundef %12, i64 noundef %14, ptr noundef %1) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 4
  %23 = load <2 x i64>, ptr %3, align 8, !tbaa !110
  store <2 x i64> %23, ptr %22, align 8, !tbaa !110
  %24 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 6
  %25 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) %25, i64 56, i1 false), !tbaa.struct !121
  %26 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !82
  %28 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 7
  store i64 %27, ptr %28, align 8, !tbaa !82
  %29 = load i64, ptr %3, align 8, !tbaa !113
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
  store i64 1, ptr %36, align 8, !tbaa !110
  %37 = load i64, ptr %3, align 8, !tbaa !113
  %38 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 2
  store i64 %37, ptr %38, align 8, !tbaa !110
  %39 = add i64 %37, -1
  %40 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 3
  store i64 %39, ptr %40, align 8, !tbaa !110
  %41 = load ptr, ptr %18, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.index_group, ptr %32, i64 0, i32 4
  br label %43

43:                                               ; preds = %43, %35
  %44 = phi ptr [ %41, %35 ], [ %55, %43 ]
  %45 = phi i64 [ 0, %35 ], [ %54, %43 ]
  %46 = getelementptr inbounds %struct.index_record, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.index_group, ptr %44, i64 0, i32 4
  %48 = getelementptr inbounds %struct.index_group, ptr %44, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !110
  %50 = shl i64 %49, 4
  %51 = add i64 %50, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %46, ptr nonnull align 8 %47, i64 %51, i1 false)
  %52 = load i64, ptr %48, align 8, !tbaa !110
  %53 = add i64 %45, 1
  %54 = add i64 %53, %52
  %55 = tail call fastcc ptr @index_tree_next(ptr noundef %44) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !147

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.index_stream, ptr %15, i64 0, i32 3
  tail call fastcc void @index_tree_append(ptr noundef nonnull %58, ptr noundef nonnull %32) #13
  br label %59

59:                                               ; preds = %17, %6, %57, %34, %2
  %60 = phi ptr [ null, %2 ], [ %15, %17 ], [ null, %6 ], [ null, %34 ], [ %15, %57 ]
  ret ptr %60
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @index_tree_next(ptr noundef readonly %0) unnamed_addr #10 !prof !83 !PGOFuncName !148 {
  %2 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !89

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %5, !llvm.loop !149

10:                                               ; preds = %1, %15
  %11 = phi ptr [ %13, %15 ], [ %0, %1 ]
  %12 = getelementptr inbounds %struct.index_tree_node_s, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !89

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %10, label %19, !prof !98, !llvm.loop !150

19:                                               ; preds = %5, %15, %10
  %20 = phi ptr [ %13, %15 ], [ null, %10 ], [ %6, %5 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !61 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !123
  tail call void @lzma_index_iter_rewind(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_rewind(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_next(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %95, label %4, !prof !98

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %10 = load i64, ptr %9, align 8, !tbaa !123
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %25, label %12, !prof !98

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  %14 = load i64, ptr %13, align 8, !tbaa !123
  switch i64 %14, label %25 [
    i64 0, label %15
    i64 1, label %18
    i64 2, label %22
  ], !prof !151

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !123
  br label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = tail call fastcc ptr @index_tree_next(ptr noundef %20) #13
  br label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !132
  br label %25

25:                                               ; preds = %15, %18, %22, %12, %4
  %26 = phi ptr [ null, %12 ], [ %24, %22 ], [ %21, %18 ], [ %17, %15 ], [ null, %4 ]
  br label %27

27:                                               ; preds = %78, %25
  %28 = phi ptr [ %8, %25 ], [ %67, %78 ]
  %29 = phi ptr [ %26, %25 ], [ %68, %78 ]
  %30 = phi i64 [ %10, %25 ], [ %69, %78 ]
  %31 = icmp eq ptr %28, null
  br i1 %31, label %32, label %44, !prof !96

32:                                               ; preds = %27
  %33 = icmp ugt i32 %1, 1
  %34 = getelementptr inbounds %struct.index_tree, ptr %6, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !144
  br i1 %33, label %36, label %86, !prof !125

36:                                               ; preds = %32, %41
  %37 = phi ptr [ %42, %41 ], [ %35, %32 ]
  %38 = getelementptr inbounds %struct.index_stream, ptr %37, i64 0, i32 3, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %66, !prof !62

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %37) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %95, label %36, !llvm.loop !152

44:                                               ; preds = %27
  %45 = icmp eq ptr %29, null
  br i1 %45, label %55, label %46, !prof !62

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.index_group, ptr %29, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !110
  %49 = icmp ult i64 %30, %48
  br i1 %49, label %50, label %52, !prof !62

50:                                               ; preds = %46
  %51 = add nuw i64 %30, 1
  br label %66

52:                                               ; preds = %46
  %53 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %29) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %66, !prof !153

55:                                               ; preds = %44, %52
  br label %56

56:                                               ; preds = %55, %62
  %57 = phi ptr [ %58, %62 ], [ %28, %55 ]
  %58 = tail call fastcc ptr @index_tree_next(ptr noundef nonnull %57) #13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %95, label %60, !prof !125

60:                                               ; preds = %56
  %61 = icmp ugt i32 %1, 1
  br i1 %61, label %62, label %86

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.index_stream, ptr %58, i64 0, i32 3, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !132
  %65 = icmp eq ptr %64, null
  br i1 %65, label %56, label %66, !llvm.loop !154

66:                                               ; preds = %62, %36, %50, %52
  %67 = phi ptr [ %28, %50 ], [ %28, %52 ], [ %37, %36 ], [ %58, %62 ]
  %68 = phi ptr [ %29, %50 ], [ %53, %52 ], [ %39, %36 ], [ %64, %62 ]
  %69 = phi i64 [ %51, %50 ], [ 0, %52 ], [ 0, %36 ], [ 0, %62 ]
  %70 = icmp eq i32 %1, 3
  br i1 %70, label %71, label %90, !prof !155

71:                                               ; preds = %66
  %72 = icmp eq i64 %69, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load i64, ptr %68, align 8, !tbaa !127
  %75 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4
  %76 = load i64, ptr %75, align 8, !tbaa !126
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %73, %79
  br label %27

79:                                               ; preds = %71
  %80 = add i64 %69, -1
  %81 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !126
  %83 = getelementptr inbounds %struct.index_group, ptr %68, i64 0, i32 4, i64 %69
  %84 = load i64, ptr %83, align 8, !tbaa !126
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %78, label %90

86:                                               ; preds = %32, %60
  %87 = phi ptr [ %58, %60 ], [ %35, %32 ]
  %88 = getelementptr inbounds %struct.index_stream, ptr %87, i64 0, i32 3, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !132
  br label %90

90:                                               ; preds = %73, %79, %66, %86
  %91 = phi ptr [ %89, %86 ], [ %68, %66 ], [ %68, %79 ], [ %68, %73 ]
  %92 = phi ptr [ %87, %86 ], [ %67, %66 ], [ %67, %79 ], [ %67, %73 ]
  %93 = phi i64 [ 0, %86 ], [ 0, %73 ], [ %69, %79 ], [ %69, %66 ]
  store ptr %92, ptr %7, align 8, !tbaa !123
  %94 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %91, ptr %94, align 8, !tbaa !123
  store i64 %93, ptr %9, align 8, !tbaa !123
  tail call fastcc void @iter_set_info(ptr noundef %0) #13
  br label %95

95:                                               ; preds = %56, %41, %90, %2
  %96 = phi i8 [ 1, %2 ], [ 0, %90 ], [ 1, %41 ], [ 1, %56 ]
  ret i8 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iter_set_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !61 !PGOFuncName !156 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %7 = load i64, ptr %6, align 8, !tbaa !123
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %11, !prof !62

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 2, ptr %10, align 8, !tbaa !123
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct.index_tree, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %21, !prof !125

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %23, label %21, !prof !125

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 0, ptr %22, align 8, !tbaa !123
  br label %32

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = icmp eq ptr %25, %5
  %27 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  br i1 %26, label %31, label %28, !prof !125

28:                                               ; preds = %23
  store i64 1, ptr %27, align 8, !tbaa !123
  %29 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  store ptr %30, ptr %4, align 8, !tbaa !123
  br label %32

31:                                               ; preds = %23
  store i64 2, ptr %27, align 8, !tbaa !123
  store ptr null, ptr %4, align 8, !tbaa !123
  br label %32

32:                                               ; preds = %21, %31, %28, %9
  %33 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !79
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 4
  store i64 %35, ptr %36, align 8, !tbaa !157
  %37 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !113
  %39 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 5
  store i64 %38, ptr %39, align 8, !tbaa !161
  %40 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 6
  %41 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 7
  %42 = load <2 x i64>, ptr %3, align 8, !tbaa !110
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %43, ptr %40, align 8, !tbaa !110
  %44 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !81
  %46 = icmp eq i32 %45, -1
  %47 = select i1 %46, ptr null, ptr %44, !prof !125
  store ptr %47, ptr %0, align 8, !tbaa !162
  %48 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !82
  %50 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 10
  store i64 %49, ptr %50, align 8, !tbaa !163
  %51 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !109
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58, !prof !62

54:                                               ; preds = %32
  %55 = tail call fastcc i64 @index_size(i64 noundef 0, i64 noundef 0) #13, !range !104
  %56 = add i64 %55, 24
  %57 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %56, ptr %57, align 8, !tbaa !164
  br label %73

58:                                               ; preds = %32
  %59 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %60 = load i64, ptr %59, align 8, !tbaa !114
  %61 = tail call fastcc i64 @index_size(i64 noundef %38, i64 noundef %60) #13, !range !104
  %62 = add i64 %61, 24
  %63 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !110
  %65 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 4, i64 %64, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !111
  %67 = tail call fastcc i64 @vli_ceil4(i64 noundef %66) #13, !range !104
  %68 = add i64 %62, %67
  %69 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %68, ptr %69, align 8, !tbaa !164
  %70 = load i64, ptr %63, align 8, !tbaa !110
  %71 = getelementptr inbounds %struct.index_group, ptr %52, i64 0, i32 4, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !126
  br label %73

73:                                               ; preds = %58, %54
  %74 = phi i64 [ 0, %54 ], [ %72, %58 ]
  %75 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 9
  store i64 %74, ptr %75, align 8
  br i1 %8, label %119, label %76, !prof !62

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !110
  %79 = add i64 %78, %7
  %80 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 3
  store i64 %79, ptr %81, align 8, !tbaa !165
  %82 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !80
  %84 = add i64 %83, %79
  store i64 %84, ptr %80, align 8, !tbaa !166
  %85 = icmp eq i64 %7, 0
  br i1 %85, label %86, label %89, !prof !125

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !128
  br label %94

89:                                               ; preds = %76
  %90 = add i64 %7, -1
  %91 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %90, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !111
  %93 = tail call fastcc i64 @vli_ceil4(i64 noundef %92) #13, !range !104
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i64 [ %90, %89 ], [ -1, %86 ]
  %96 = phi i64 [ %93, %89 ], [ %88, %86 ]
  %97 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 4
  store i64 %96, ptr %97, align 8, !tbaa !167
  %98 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %95
  %99 = select i1 %85, ptr %5, ptr %98, !prof !125
  %100 = load i64, ptr %99, align 8, !tbaa !110
  %101 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 5
  store i64 %100, ptr %101, align 8, !tbaa !168
  %102 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7
  %103 = load i64, ptr %102, align 8, !tbaa !126
  %104 = sub i64 %103, %100
  %105 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 6
  store i64 %104, ptr %105, align 8, !tbaa !169
  %106 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !111
  %108 = sub i64 %107, %96
  %109 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 7
  store i64 %108, ptr %109, align 8, !tbaa !170
  %110 = tail call fastcc i64 @vli_ceil4(i64 noundef %108) #13, !range !104
  %111 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 8
  store i64 %110, ptr %111, align 8, !tbaa !171
  %112 = add i64 %96, 12
  store i64 %112, ptr %97, align 8, !tbaa !167
  %113 = load i64, ptr %40, align 8, !tbaa !172
  %114 = add i64 %113, %112
  %115 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 1
  store i64 %114, ptr %115, align 8, !tbaa !173
  %116 = load i64, ptr %41, align 8, !tbaa !174
  %117 = add i64 %116, %100
  %118 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 2
  store i64 %117, ptr %118, align 8, !tbaa !175
  br label %119

119:                                              ; preds = %94, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_locate(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !100 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !117
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @index_tree_locate(ptr noundef nonnull %4, i64 noundef %1) #13
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = sub i64 %1, %10
  %12 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 3
  %13 = tail call fastcc ptr @index_tree_locate(ptr noundef nonnull %12, i64 noundef %11) #13
  %14 = getelementptr inbounds %struct.index_group, ptr %13, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !110
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %8, %17
  %18 = phi i64 [ %28, %17 ], [ %15, %8 ]
  %19 = phi i64 [ %27, %17 ], [ 0, %8 ]
  %20 = sub i64 %18, %19
  %21 = lshr i64 %20, 1
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds %struct.index_group, ptr %13, i64 0, i32 4, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !126
  %25 = icmp ugt i64 %24, %11
  %26 = add i64 %22, 1
  %27 = select i1 %25, i64 %19, i64 %26
  %28 = select i1 %25, i64 %22, i64 %18
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %17, label %30, !llvm.loop !176

30:                                               ; preds = %17, %8
  %31 = phi i64 [ 0, %8 ], [ %27, %17 ]
  %32 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  store ptr %9, ptr %32, align 8, !tbaa !123
  %33 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %13, ptr %33, align 8, !tbaa !123
  %34 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  store i64 %31, ptr %34, align 8, !tbaa !123
  tail call fastcc void @iter_set_info(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %2, %30
  %36 = phi i8 [ 0, %30 ], [ 1, %2 ]
  ret i8 %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @index_tree_locate(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 !prof !100 !PGOFuncName !177 {
  %3 = load ptr, ptr %0, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %12, %5 ], [ null, %2 ]
  %8 = load i64, ptr %6, align 8, !tbaa !127
  %9 = icmp ugt i64 %8, %1
  %10 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 3
  %11 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 4
  %12 = select i1 %9, ptr %7, ptr %6
  %13 = select i1 %9, ptr %10, ptr %11
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !178

16:                                               ; preds = %5, %2
  %17 = phi ptr [ null, %2 ], [ %12, %5 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @index_tree_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !83 !PGOFuncName !179 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @bsr32(i32 noundef %0) unnamed_addr #5 !prof !100 !PGOFuncName !180 {
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
define internal fastcc i32 @ctz32(i32 noundef %0) unnamed_addr #5 !prof !100 !PGOFuncName !181 {
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
define internal fastcc void @index_tree_node_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !83 !PGOFuncName !182 {
  %4 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !89

7:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #13
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !89

12:                                               ; preds = %8
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %12, %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15, !prof !96

15:                                               ; preds = %13
  tail call void %2(ptr noundef nonnull %0, ptr noundef %1) #14, !callees !183
  br label %16

16:                                               ; preds = %15, %13
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #14
  ret void
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
!llvm.ident = !{!60}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @lzma_index_init, ptr @index_init_plain, i64 1}
!36 = !{ptr @lzma_index_init, ptr @index_stream_init, i64 1}
!37 = !{ptr @index_init_plain, ptr @lzma_alloc, i64 1}
!38 = !{ptr @index_init_plain, ptr @index_tree_init, i64 1}
!39 = !{ptr @index_stream_init, ptr @lzma_alloc, i64 1}
!40 = !{ptr @index_stream_init, ptr @index_tree_init, i64 1}
!41 = !{ptr @index_tree_append, ptr @bsr32, i64 1}
!42 = !{ptr @lzma_index_end, ptr @index_tree_end, i64 1}
!43 = !{ptr @lzma_index_end, ptr @lzma_free, i64 1}
!44 = !{ptr @index_tree_end, ptr @index_tree_node_end, i64 2}
!45 = !{ptr @index_stream_end, ptr @index_tree_end, i64 1}
!46 = !{ptr @lzma_index_size, ptr @index_size, i64 1}
!47 = !{ptr @index_size, ptr @index_size_unpadded, i64 4}
!48 = !{ptr @index_size, ptr @vli_ceil4, i64 4}
!49 = !{ptr @index_file_size, ptr @vli_ceil4, i64 1}
!50 = !{ptr @index_file_size, ptr @index_size, i64 1}
!51 = !{ptr @lzma_index_padding_size, ptr @index_size_unpadded, i64 1}
!52 = !{ptr @index_size_unpadded, ptr @lzma_vli_size, i64 5}
!53 = !{ptr @lzma_index_iter_init, ptr @lzma_index_iter_rewind, i64 1}
!54 = !{ptr @lzma_index_iter_next, ptr @index_tree_next, i64 1}
!55 = !{ptr @lzma_index_iter_next, ptr @iter_set_info, i64 1}
!56 = !{ptr @iter_set_info, ptr @index_size, i64 1}
!57 = !{ptr @iter_set_info, ptr @vli_ceil4, i64 2}
!58 = !{ptr @index_tree_node_end, ptr @index_tree_node_end, i64 2}
!59 = !{ptr @index_tree_node_end, ptr @lzma_free, i64 2}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 1}
!62 = !{!"branch_weights", i32 1, i32 2}
!63 = !{!"index.c:index_init_plain"}
!64 = !{!65, !71, i64 64}
!65 = !{!"lzma_index_s", !66, i64 0, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !70, i64 72}
!66 = !{!"", !67, i64 0, !67, i64 8, !67, i64 16, !70, i64 24}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!"int", !68, i64 0}
!71 = !{!"long", !68, i64 0}
!72 = !{!65, !70, i64 72}
!73 = !{!"index.c:index_stream_init"}
!74 = !{!75, !71, i64 0}
!75 = !{!"", !76, i64 0, !70, i64 40, !71, i64 48, !66, i64 56, !71, i64 88, !71, i64 96, !77, i64 104, !71, i64 160}
!76 = !{!"index_tree_node_s", !71, i64 0, !71, i64 8, !67, i64 16, !67, i64 24, !67, i64 32}
!77 = !{!"", !70, i64 0, !71, i64 8, !70, i64 16, !70, i64 20, !70, i64 24, !70, i64 28, !70, i64 32, !68, i64 36, !68, i64 37, !68, i64 38, !68, i64 39, !68, i64 40, !68, i64 41, !68, i64 42, !68, i64 43, !70, i64 44, !70, i64 48}
!78 = !{!75, !71, i64 8}
!79 = !{!75, !70, i64 40}
!80 = !{!75, !71, i64 48}
!81 = !{!75, !70, i64 104}
!82 = !{!75, !71, i64 160}
!83 = !{!"function_entry_count", i64 2}
!84 = !{!"index.c:index_tree_append"}
!85 = !{!66, !67, i64 16}
!86 = !{!76, !67, i64 16}
!87 = !{!66, !70, i64 24}
!88 = !{!66, !67, i64 0}
!89 = !{!"branch_weights", i32 3, i32 1}
!90 = !{!66, !67, i64 8}
!91 = !{!76, !67, i64 32}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!67, !67, i64 0}
!95 = !{!76, !67, i64 24}
!96 = !{!"branch_weights", i32 2, i32 2}
!97 = !{!"index.c:index_tree_end"}
!98 = !{!"branch_weights", i32 1, i32 3}
!99 = !{!"index.c:index_stream_end"}
!100 = !{!"function_entry_count", i64 0}
!101 = !{!65, !70, i64 24}
!102 = !{!65, !71, i64 48}
!103 = !{!65, !71, i64 56}
!104 = !{i64 0, i64 -3}
!105 = !{!"function_entry_count", i64 4}
!106 = !{!"index.c:index_size"}
!107 = !{!65, !71, i64 40}
!108 = !{!65, !67, i64 16}
!109 = !{!75, !67, i64 72}
!110 = !{!71, !71, i64 0}
!111 = !{!112, !71, i64 8}
!112 = !{!"", !71, i64 0, !71, i64 8}
!113 = !{!75, !71, i64 88}
!114 = !{!75, !71, i64 96}
!115 = !{i64 -1, i64 -9223372036854775808}
!116 = !{!"index.c:index_file_size"}
!117 = !{!65, !71, i64 32}
!118 = !{!75, !70, i64 120}
!119 = !{!"function_entry_count", i64 5}
!120 = !{!"index.c:index_size_unpadded"}
!121 = !{i64 0, i64 4, !122, i64 8, i64 8, !110, i64 16, i64 4, !122, i64 20, i64 4, !122, i64 24, i64 4, !122, i64 28, i64 4, !122, i64 32, i64 4, !122, i64 36, i64 1, !123, i64 37, i64 1, !123, i64 38, i64 1, !123, i64 39, i64 1, !123, i64 40, i64 1, !123, i64 41, i64 1, !123, i64 42, i64 1, !123, i64 43, i64 1, !123, i64 44, i64 4, !122, i64 48, i64 4, !122}
!122 = !{!70, !70, i64 0}
!123 = !{!68, !68, i64 0}
!124 = !{!"branch_weights", i32 65, i32 16}
!125 = !{!"branch_weights", i32 2, i32 1}
!126 = !{!112, !71, i64 0}
!127 = !{!76, !71, i64 0}
!128 = !{!76, !71, i64 8}
!129 = !{!"function_entry_count", i64 8}
!130 = !{!"index.c:vli_ceil4"}
!131 = !{i64 0, i64 8, !110, i64 8, i64 8, !110, i64 16, i64 8, !94, i64 24, i64 8, !94, i64 32, i64 8, !94}
!132 = !{!75, !67, i64 64}
!133 = !{!75, !67, i64 56}
!134 = !{!135, !71, i64 0}
!135 = !{!"", !71, i64 0, !71, i64 8, !71, i64 16, !70, i64 24, !67, i64 32}
!136 = !{!135, !71, i64 8}
!137 = !{!135, !71, i64 16}
!138 = !{!135, !70, i64 24}
!139 = !{!135, !67, i64 32}
!140 = !{!65, !67, i64 0}
!141 = !{!"index.c:index_cat_helper"}
!142 = !{!75, !67, i64 24}
!143 = !{!75, !67, i64 32}
!144 = !{!65, !67, i64 8}
!145 = distinct !{!145, !93}
!146 = !{!"index.c:index_dup_stream"}
!147 = distinct !{!147, !93}
!148 = !{!"index.c:index_tree_next"}
!149 = distinct !{!149, !93}
!150 = distinct !{!150, !93}
!151 = !{!"branch_weights", i32 1, i32 2, i32 1, i32 2}
!152 = distinct !{!152, !93}
!153 = !{!"branch_weights", i32 894784853, i32 1252698795}
!154 = distinct !{!154, !93}
!155 = !{!"branch_weights", i32 929039956, i32 1218443692}
!156 = !{!"index.c:iter_set_info"}
!157 = !{!158, !71, i64 32}
!158 = !{!"", !159, i64 0, !160, i64 120, !68, i64 256}
!159 = !{!"", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !71, i64 104, !71, i64 112}
!160 = !{!"", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128}
!161 = !{!158, !71, i64 40}
!162 = !{!158, !67, i64 0}
!163 = !{!158, !71, i64 80}
!164 = !{!158, !71, i64 64}
!165 = !{!158, !71, i64 144}
!166 = !{!158, !71, i64 120}
!167 = !{!158, !71, i64 152}
!168 = !{!158, !71, i64 160}
!169 = !{!158, !71, i64 168}
!170 = !{!158, !71, i64 176}
!171 = !{!158, !71, i64 184}
!172 = !{!158, !71, i64 48}
!173 = !{!158, !71, i64 128}
!174 = !{!158, !71, i64 56}
!175 = !{!158, !71, i64 136}
!176 = distinct !{!176, !93}
!177 = !{!"index.c:index_tree_locate"}
!178 = distinct !{!178, !93}
!179 = !{!"index.c:index_tree_init"}
!180 = !{!"index.c:bsr32"}
!181 = !{!"index.c:ctz32"}
!182 = !{!"index.c:index_tree_node_end"}
!183 = !{ptr @index_stream_end}
