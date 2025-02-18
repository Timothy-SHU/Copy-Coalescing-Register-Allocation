; ModuleID = 'liblzma/common/index.c'
source_filename = "liblzma/common/index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_index_s = type { %struct.index_tree, i64, i64, i64, i64, i64, i32 }
%struct.index_tree = type { ptr, ptr, ptr, i32 }
%struct.index_stream = type { %struct.index_tree_node_s, i32, i64, %struct.index_tree, i64, i64, %struct.lzma_stream_flags, i64 }
%struct.index_tree_node_s = type { i64, i64, ptr, ptr, ptr }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.index_group = type { %struct.index_tree_node_s, i64, i64, i64, [0 x %struct.index_record] }
%struct.index_record = type { i64, i64 }
%struct.index_cat_info = type { i64, i64, i64, i32, ptr }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lzma_index_init(ptr noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4, !prof !51

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i64 512, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %2, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !60
  %8 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !51

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  store i32 1, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 2
  %13 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 4
  %14 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %12, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store i32 -1, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 7
  store i64 0, ptr %15, align 8, !tbaa !66
  br label %16

16:                                               ; preds = %4, %10
  %17 = phi ptr [ %8, %10 ], [ null, %4 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !51

19:                                               ; preds = %16
  tail call void @lzma_free(ptr noundef nonnull %2, ptr noundef %0) #12
  br label %21

20:                                               ; preds = %16
  tail call fastcc void @index_tree_append(ptr noundef nonnull %2, ptr noundef nonnull %17)
  br label %21

21:                                               ; preds = %1, %19, %20
  %22 = phi ptr [ null, %19 ], [ %2, %20 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !67 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !71
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !73

12:                                               ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !74
  store ptr %1, ptr %3, align 8, !tbaa !69
  br label %90

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !75
  store ptr %1, ptr %3, align 8, !tbaa !69
  %16 = icmp ult i32 %9, 65536
  %17 = shl nuw i32 %9, 16
  %18 = select i1 %16, i32 %17, i32 %9
  %19 = select i1 %16, i32 15, i32 31
  %20 = icmp ult i32 %18, 16777216
  %21 = shl nuw i32 %18, 8
  %22 = add nsw i32 %19, -8
  %23 = select i1 %20, i32 %21, i32 %18
  %24 = select i1 %20, i32 %22, i32 %19
  %25 = icmp ult i32 %23, 268435456
  %26 = shl nuw i32 %23, 4
  %27 = add nsw i32 %24, -4
  %28 = select i1 %25, i32 %26, i32 %23
  %29 = select i1 %25, i32 %27, i32 %24
  %30 = icmp ult i32 %28, 1073741824
  %31 = shl nuw i32 %28, 2
  %32 = add nsw i32 %29, -2
  %33 = select i1 %30, i32 %31, i32 %28
  %34 = select i1 %30, i32 %32, i32 %29
  %35 = icmp sgt i32 %33, -1
  %36 = sext i1 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = shl nuw i32 1, %37
  %39 = icmp eq i32 %9, %38
  br i1 %39, label %90, label %40

40:                                               ; preds = %14
  %41 = and i32 %9, 65535
  %42 = icmp eq i32 %41, 0
  %43 = lshr exact i32 %9, 16
  %44 = select i1 %42, i32 %43, i32 %9
  %45 = select i1 %42, i32 16, i32 0
  %46 = and i32 %44, 255
  %47 = icmp eq i32 %46, 0
  %48 = lshr exact i32 %44, 8
  %49 = or disjoint i32 %45, 8
  %50 = select i1 %47, i32 %48, i32 %44
  %51 = select i1 %47, i32 %49, i32 %45
  %52 = and i32 %50, 15
  %53 = icmp eq i32 %52, 0
  %54 = lshr exact i32 %50, 4
  %55 = or disjoint i32 %51, 4
  %56 = select i1 %53, i32 %54, i32 %50
  %57 = select i1 %53, i32 %55, i32 %51
  %58 = and i32 %56, 3
  %59 = icmp eq i32 %58, 0
  %60 = lshr exact i32 %56, 2
  %61 = or disjoint i32 %57, 2
  %62 = select i1 %59, i32 %60, i32 %56
  %63 = select i1 %59, i32 %61, i32 %57
  %64 = and i32 %62, 1
  %65 = xor i32 %64, 1
  %66 = add nuw nsw i32 %63, 2
  %67 = add nuw nsw i32 %66, %65
  br label %68

68:                                               ; preds = %68, %40
  %69 = phi i32 [ %67, %40 ], [ %73, %68 ]
  %70 = phi ptr [ %1, %40 ], [ %72, %68 ]
  %71 = getelementptr inbounds %struct.index_tree_node_s, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !70
  %73 = add i32 %69, -1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %68, !llvm.loop !76

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.index_tree_node_s, ptr %72, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !75
  %78 = getelementptr inbounds %struct.index_tree_node_s, ptr %72, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.index_tree_node_s, ptr %79, i64 0, i32 4
  %82 = select i1 %80, ptr %0, ptr %81
  store ptr %77, ptr %82, align 8, !tbaa !79
  %83 = getelementptr inbounds %struct.index_tree_node_s, ptr %77, i64 0, i32 2
  store ptr %79, ptr %83, align 8, !tbaa !70
  %84 = getelementptr inbounds %struct.index_tree_node_s, ptr %77, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !80
  store ptr %85, ptr %76, align 8, !tbaa !75
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.index_tree_node_s, ptr %85, i64 0, i32 2
  store ptr %72, ptr %88, align 8, !tbaa !70
  br label %89

89:                                               ; preds = %87, %75
  store ptr %72, ptr %84, align 8, !tbaa !80
  store ptr %77, ptr %78, align 8, !tbaa !70
  br label %90

90:                                               ; preds = %14, %89, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_index_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !67 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4, !prof !81

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !51

7:                                                ; preds = %4
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @index_stream_end)
  br label %8

8:                                                ; preds = %4, %7
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !50 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !51

6:                                                ; preds = %2
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %4, ptr noundef %1, ptr noundef null)
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #4 !prof !83 {
  %3 = tail call i64 @llvm.umin.i64(i64 %1, i64 1152921504606846971)
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @lzma_index_memusage(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 !prof !83 {
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_memused(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !83 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !84
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !85
  %7 = add i64 %6, 511
  %8 = lshr i64 %7, 9
  %9 = mul nuw nsw i64 %4, 296
  %10 = mul i64 %8, 8288
  %11 = icmp eq i32 %3, 0
  %12 = icmp ugt i64 %6, 1139567201464682496
  %13 = or i1 %11, %12
  %14 = sub nuw nsw i64 -113, %9
  %15 = icmp ult i64 %14, %10
  %16 = or i1 %13, %15
  %17 = add nuw nsw i64 %9, 112
  %18 = add i64 %17, %10
  %19 = select i1 %16, i64 -1, i64 %18
  ret i64 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !85
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_stream_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !83 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !84
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_index_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !50 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = tail call i32 @lzma_vli_size(i64 noundef %3) #12
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = add i64 %5, 7
  %10 = add i64 %9, %8
  %11 = and i64 %10, -4
  ret i64 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_total_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !83 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !87
  ret i64 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !83 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !86
  %8 = tail call i32 @lzma_vli_size(i64 noundef %5) #12
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = add i64 %7, 7
  %12 = add i64 %11, %10
  %13 = and i64 %12, -4
  %14 = add i64 %3, 24
  %15 = add i64 %14, %13
  ret i64 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_index_file_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !83 {
  %2 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = icmp eq ptr %5, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %11, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !92
  %14 = add i64 %13, 3
  %15 = and i64 %14, -4
  br label %16

16:                                               ; preds = %1, %9
  %17 = phi i64 [ %15, %9 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !66
  %20 = add i64 %7, 24
  %21 = add i64 %20, %17
  %22 = add i64 %21, %19
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !94
  %27 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !95
  %29 = tail call i32 @lzma_vli_size(i64 noundef %28) #12
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = add i64 %26, 7
  %33 = add i64 %32, %31
  %34 = and i64 %33, -4
  %35 = add i64 %34, %22
  %36 = tail call i64 @llvm.smax.i64(i64 %35, i64 -1)
  br label %37

37:                                               ; preds = %16, %24
  %38 = phi i64 [ -1, %16 ], [ %36, %24 ]
  ret i64 %38
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_uncompressed_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !83 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !96
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !83 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.index_stream, ptr %5, i64 0, i32 6, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !97
  %12 = shl nuw i32 1, %11
  %13 = or i32 %12, %3
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %3, %1 ]
  ret i32 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_padding_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !50 {
  %2 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = tail call i32 @lzma_vli_size(i64 noundef %3) #12
  %7 = xor i32 %6, -1
  %8 = trunc i64 %5 to i32
  %9 = sub i32 %7, %8
  %10 = and i32 %9, 3
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_stream_flags(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @lzma_stream_flags_compare(ptr noundef %1, ptr noundef %1) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.index_stream, ptr %11, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !98
  br label %13

13:                                               ; preds = %6, %2, %9
  %14 = phi i32 [ %7, %6 ], [ 0, %9 ], [ 11, %2 ]
  ret i32 %14
}

declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_stream_padding(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = icmp ne ptr %0, null
  %4 = and i64 %1, -9223372036854775805
  %5 = icmp eq i64 %4, 0
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !66
  store i64 0, ptr %10, align 8, !tbaa !66
  %12 = tail call i64 @lzma_index_file_size(ptr noundef nonnull %0), !range !101
  %13 = add i64 %12, %1
  %14 = icmp slt i64 %13, 0
  %15 = select i1 %14, i64 %11, i64 %1
  %16 = select i1 %14, i32 9, i32 0
  store i64 %15, ptr %10, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i32 [ %16, %7 ], [ 11, %2 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_index_append(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !50 {
  %5 = icmp eq ptr %0, null
  %6 = add i64 %2, -9223372036854775805
  %7 = icmp ult i64 %6, -9223372036854775800
  %8 = or i1 %5, %7
  %9 = icmp slt i64 %3, 0
  %10 = or i1 %9, %8
  br i1 %10, label %125, label %11, !prof !51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 3, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18, !prof !102

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %20, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !92
  %23 = add i64 %22, 3
  %24 = and i64 %23, -4
  br label %25

25:                                               ; preds = %11, %18
  %26 = phi i64 [ %24, %18 ], [ 0, %11 ]
  br i1 %17, label %32, label %27, !prof !102

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 4, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !103
  br label %32

32:                                               ; preds = %25, %27
  %33 = phi i64 [ %31, %27 ], [ 0, %25 ]
  %34 = tail call i32 @lzma_vli_size(i64 noundef %2) #12
  %35 = tail call i32 @lzma_vli_size(i64 noundef %3) #12
  %36 = add i32 %35, %34
  %37 = getelementptr inbounds %struct.index_tree_node_s, ptr %13, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !90
  %39 = add i64 %26, %2
  %40 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 4
  %41 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 5
  %42 = zext i32 %36 to i64
  %43 = getelementptr inbounds %struct.index_stream, ptr %13, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !66
  %45 = add i64 %39, 3
  %46 = and i64 %45, -4
  %47 = add i64 %46, 24
  %48 = add i64 %47, %38
  %49 = add i64 %48, %44
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %125, label %51, !prof !51

51:                                               ; preds = %32
  %52 = load i64, ptr %41, align 8, !tbaa !94
  %53 = load i64, ptr %40, align 8, !tbaa !95
  %54 = add i64 %53, 1
  %55 = tail call i32 @lzma_vli_size(i64 noundef %54) #12
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = add nuw nsw i64 %42, 7
  %59 = add i64 %58, %52
  %60 = add i64 %59, %57
  %61 = and i64 %60, -4
  %62 = add i64 %61, %49
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %125, label %64, !prof !51

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !85
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %69 = load i64, ptr %68, align 8, !tbaa !86
  %70 = tail call i32 @lzma_vli_size(i64 noundef %67) #12
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = add nuw nsw i64 %42, 7
  %74 = add i64 %73, %69
  %75 = add i64 %74, %72
  %76 = and i64 %75, -4
  %77 = icmp ugt i64 %76, 17179869184
  br i1 %77, label %125, label %78, !prof !51

78:                                               ; preds = %64
  br i1 %17, label %87, label %79, !prof !102

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !91
  %82 = add i64 %81, 1
  %83 = getelementptr inbounds %struct.index_group, ptr %16, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !91
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i64 %82, ptr %80, align 8, !tbaa !91
  br label %102

87:                                               ; preds = %79, %78
  %88 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 5
  %89 = load i64, ptr %88, align 8, !tbaa !52
  %90 = shl i64 %89, 4
  %91 = add i64 %90, 64
  %92 = tail call ptr @lzma_alloc(i64 noundef %91, ptr noundef %1) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %125, label %94, !prof !51

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.index_group, ptr %92, i64 0, i32 3
  store i64 0, ptr %95, align 8, !tbaa !91
  %96 = load i64, ptr %88, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.index_group, ptr %92, i64 0, i32 2
  store i64 %96, ptr %97, align 8, !tbaa !91
  store i64 512, ptr %88, align 8, !tbaa !52
  store i64 %33, ptr %92, align 8, !tbaa !104
  %98 = getelementptr inbounds %struct.index_tree_node_s, ptr %92, i64 0, i32 1
  store i64 %26, ptr %98, align 8, !tbaa !105
  %99 = load i64, ptr %40, align 8, !tbaa !95
  %100 = add i64 %99, 1
  %101 = getelementptr inbounds %struct.index_group, ptr %92, i64 0, i32 1
  store i64 %100, ptr %101, align 8, !tbaa !91
  tail call fastcc void @index_tree_append(ptr noundef nonnull %14, ptr noundef nonnull %92)
  br label %102

102:                                              ; preds = %94, %86
  %103 = phi ptr [ %16, %86 ], [ %92, %94 ]
  %104 = add i64 %33, %3
  %105 = getelementptr inbounds %struct.index_group, ptr %103, i64 0, i32 3
  %106 = load i64, ptr %105, align 8, !tbaa !91
  %107 = getelementptr inbounds %struct.index_group, ptr %103, i64 0, i32 4, i64 %106
  store i64 %104, ptr %107, align 8, !tbaa !103
  %108 = getelementptr inbounds %struct.index_group, ptr %103, i64 0, i32 4, i64 %106, i32 1
  store i64 %39, ptr %108, align 8, !tbaa !92
  %109 = load i64, ptr %40, align 8, !tbaa !95
  %110 = add i64 %109, 1
  store i64 %110, ptr %40, align 8, !tbaa !95
  %111 = load i64, ptr %41, align 8, !tbaa !94
  %112 = add i64 %111, %42
  store i64 %112, ptr %41, align 8, !tbaa !94
  %113 = add i64 %2, 3
  %114 = and i64 %113, -4
  %115 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !87
  %117 = add i64 %116, %114
  store i64 %117, ptr %115, align 8, !tbaa !87
  %118 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !96
  %120 = add i64 %119, %3
  store i64 %120, ptr %118, align 8, !tbaa !96
  %121 = load i64, ptr %65, align 8, !tbaa !85
  %122 = add i64 %121, 1
  store i64 %122, ptr %65, align 8, !tbaa !85
  %123 = load i64, ptr %68, align 8, !tbaa !86
  %124 = add i64 %123, %42
  store i64 %124, ptr %68, align 8, !tbaa !86
  br label %125

125:                                              ; preds = %32, %102, %51, %64, %87, %4
  %126 = phi i32 [ 11, %4 ], [ 0, %102 ], [ 9, %51 ], [ 9, %64 ], [ 5, %87 ], [ 9, %32 ]
  ret i32 %126
}

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_index_cat(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !83 {
  %4 = alloca %struct.index_cat_info, align 8
  %5 = tail call i64 @lzma_index_file_size(ptr noundef %0), !range !101
  %6 = tail call i64 @lzma_index_file_size(ptr noundef %1), !range !101
  %7 = add i64 %6, %5
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %126, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !96
  %14 = add i64 %13, %11
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %126, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !86
  %21 = tail call i32 @lzma_vli_size(i64 noundef %18) #12
  %22 = add i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !85
  %26 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 4
  %27 = load i64, ptr %26, align 8, !tbaa !86
  %28 = tail call i32 @lzma_vli_size(i64 noundef %25) #12
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = add i64 %20, 11
  %32 = add i64 %31, %23
  %33 = add i64 %32, %27
  %34 = add i64 %33, %30
  %35 = and i64 %34, -4
  %36 = icmp ult i64 %35, 17179869185
  br i1 %36, label %37, label %126

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = getelementptr inbounds %struct.index_stream, ptr %39, i64 0, i32 3
  %41 = getelementptr inbounds %struct.index_stream, ptr %39, i64 0, i32 3, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.index_group, ptr %42, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !91
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds %struct.index_group, ptr %42, i64 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !91
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %44
  %52 = shl i64 %47, 4
  %53 = add i64 %52, 64
  %54 = tail call ptr @lzma_alloc(i64 noundef %53, ptr noundef %2) #12
  %55 = icmp ne ptr %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef nonnull align 8 dereferenceable(40) %42, i64 40, i1 false), !tbaa.struct !106
  %57 = load i64, ptr %45, align 8, !tbaa !91
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds %struct.index_group, ptr %54, i64 0, i32 2
  store i64 %58, ptr %59, align 8, !tbaa !91
  %60 = load i64, ptr %45, align 8, !tbaa !91
  %61 = getelementptr inbounds %struct.index_group, ptr %54, i64 0, i32 3
  store i64 %60, ptr %61, align 8, !tbaa !91
  %62 = getelementptr inbounds %struct.index_group, ptr %42, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !91
  %64 = getelementptr inbounds %struct.index_group, ptr %54, i64 0, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !91
  %65 = getelementptr inbounds %struct.index_group, ptr %54, i64 0, i32 4
  %66 = getelementptr inbounds %struct.index_group, ptr %42, i64 0, i32 4
  %67 = shl i64 %58, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %65, ptr nonnull align 8 %66, i64 %67, i1 false)
  %68 = getelementptr inbounds %struct.index_tree_node_s, ptr %42, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.index_tree_node_s, ptr %69, i64 0, i32 4
  store ptr %54, ptr %72, align 8, !tbaa !75
  br label %73

73:                                               ; preds = %71, %56
  %74 = getelementptr inbounds %struct.index_stream, ptr %39, i64 0, i32 3, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !107
  %76 = icmp eq ptr %75, %42
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store ptr %54, ptr %74, align 8, !tbaa !107
  store ptr %54, ptr %40, align 8, !tbaa !108
  br label %78

78:                                               ; preds = %77, %73
  %79 = load ptr, ptr %41, align 8, !tbaa !89
  %80 = icmp eq ptr %79, %42
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store ptr %54, ptr %41, align 8, !tbaa !89
  br label %82

82:                                               ; preds = %81, %78
  tail call void @lzma_free(ptr noundef nonnull %42, ptr noundef %2) #12
  br label %83

83:                                               ; preds = %82, %51, %37, %44
  %84 = phi i1 [ true, %44 ], [ true, %37 ], [ %55, %51 ], [ %55, %82 ]
  %85 = phi i32 [ 9, %44 ], [ 9, %37 ], [ 5, %51 ], [ 9, %82 ]
  br i1 %84, label %86, label %126

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %87 = load i64, ptr %10, align 8, !tbaa !96
  store i64 %87, ptr %4, align 8, !tbaa !109
  %88 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 1
  store i64 %5, ptr %88, align 8, !tbaa !111
  %89 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 2
  %90 = load i64, ptr %17, align 8, !tbaa !85
  store i64 %90, ptr %89, align 8, !tbaa !112
  %91 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 3
  %92 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !84
  store i32 %93, ptr %91, align 8, !tbaa !113
  %94 = getelementptr inbounds %struct.index_cat_info, ptr %4, i64 0, i32 4
  store ptr %0, ptr %94, align 8, !tbaa !114
  %95 = load ptr, ptr %1, align 8, !tbaa !115
  call fastcc void @index_cat_helper(ptr noundef nonnull %4, ptr noundef %95)
  %96 = load i64, ptr %12, align 8, !tbaa !96
  %97 = load i64, ptr %10, align 8, !tbaa !96
  %98 = add i64 %97, %96
  store i64 %98, ptr %10, align 8, !tbaa !96
  %99 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !87
  %101 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !87
  %103 = add i64 %102, %100
  store i64 %103, ptr %101, align 8, !tbaa !87
  %104 = load i64, ptr %24, align 8, !tbaa !85
  %105 = load i64, ptr %17, align 8, !tbaa !85
  %106 = add i64 %105, %104
  store i64 %106, ptr %17, align 8, !tbaa !85
  %107 = load i64, ptr %26, align 8, !tbaa !86
  %108 = load i64, ptr %19, align 8, !tbaa !86
  %109 = add i64 %108, %107
  store i64 %109, ptr %19, align 8, !tbaa !86
  %110 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !60
  %112 = load ptr, ptr %38, align 8, !tbaa !88
  %113 = getelementptr inbounds %struct.index_stream, ptr %112, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !65
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %121, label %116

116:                                              ; preds = %86
  %117 = getelementptr inbounds %struct.index_stream, ptr %112, i64 0, i32 6, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !97
  %119 = shl nuw i32 1, %118
  %120 = or i32 %119, %111
  br label %121

121:                                              ; preds = %86, %116
  %122 = phi i32 [ %120, %116 ], [ %111, %86 ]
  %123 = getelementptr inbounds %struct.lzma_index_s, ptr %1, i64 0, i32 6
  %124 = load i32, ptr %123, align 8, !tbaa !60
  %125 = or i32 %124, %122
  store i32 %125, ptr %110, align 8, !tbaa !60
  call void @lzma_free(ptr noundef nonnull %1, ptr noundef %2) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %126

126:                                              ; preds = %3, %9, %83, %16, %121
  %127 = phi i32 [ 0, %121 ], [ %85, %83 ], [ 9, %16 ], [ 9, %9 ], [ 9, %3 ]
  ret i32 %127
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_cat_helper(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !83 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %1, %2 ], [ %8, %11 ]
  %5 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %6, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @index_cat_helper(ptr noundef %0, ptr noundef nonnull %6)
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i64, ptr %0, align 8, !tbaa !109
  %13 = load i64, ptr %4, align 8, !tbaa !118
  %14 = add i64 %13, %12
  store i64 %14, ptr %4, align 8, !tbaa !118
  %15 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !111
  %17 = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !90
  %19 = add i64 %18, %16
  store i64 %19, ptr %17, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !113
  %22 = getelementptr inbounds %struct.index_stream, ptr %4, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !61
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !112
  %27 = getelementptr inbounds %struct.index_stream, ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !119
  %29 = add i64 %28, %26
  store i64 %29, ptr %27, align 8, !tbaa !119
  %30 = getelementptr inbounds %struct.index_cat_info, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  tail call fastcc void @index_tree_append(ptr noundef %31, ptr noundef nonnull %4)
  %32 = icmp eq ptr %8, null
  br i1 %32, label %33, label %3

33:                                               ; preds = %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lzma_index_dup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %147, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 2
  %8 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 4
  %10 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store i64 512, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.lzma_index_s, ptr %3, i64 0, i32 6
  store i32 0, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !96
  store i64 %13, ptr %6, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !87
  store i64 %15, ptr %7, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !85
  store i64 %17, ptr %8, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !86
  store i64 %19, ptr %9, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  br label %22

22:                                               ; preds = %145, %5
  %23 = phi ptr [ %21, %5 ], [ %144, %145 ]
  %24 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !95
  %26 = icmp ugt i64 %25, 1152921504606846971
  br i1 %26, label %117, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.index_tree_node_s, ptr %23, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !90
  %30 = load i64, ptr %23, align 8, !tbaa !118
  %31 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !119
  %35 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %1) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %27
  store i64 %30, ptr %35, align 8, !tbaa !118
  %38 = getelementptr inbounds %struct.index_tree_node_s, ptr %35, i64 0, i32 1
  store i64 %29, ptr %38, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.index_tree_node_s, ptr %35, i64 0, i32 2
  %40 = getelementptr inbounds %struct.index_stream, ptr %35, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  store i32 %32, ptr %40, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.index_stream, ptr %35, i64 0, i32 2
  store i64 %34, ptr %41, align 8, !tbaa !119
  %42 = getelementptr inbounds %struct.index_stream, ptr %35, i64 0, i32 3
  %43 = getelementptr inbounds %struct.index_stream, ptr %35, i64 0, i32 4
  %44 = getelementptr inbounds %struct.index_stream, ptr %35, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %42, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store i32 -1, ptr %44, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.index_stream, ptr %35, i64 0, i32 7
  store i64 0, ptr %45, align 8, !tbaa !66
  br label %46

46:                                               ; preds = %37, %27
  %47 = phi ptr [ %35, %37 ], [ null, %27 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %117, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 3, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !107
  %52 = icmp eq ptr %51, null
  br i1 %52, label %117, label %53

53:                                               ; preds = %49
  %54 = load i64, ptr %24, align 8, !tbaa !95
  %55 = getelementptr inbounds %struct.index_stream, ptr %47, i64 0, i32 4
  store i64 %54, ptr %55, align 8, !tbaa !95
  %56 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !94
  %58 = getelementptr inbounds %struct.index_stream, ptr %47, i64 0, i32 5
  store i64 %57, ptr %58, align 8, !tbaa !94
  %59 = getelementptr inbounds %struct.index_stream, ptr %47, i64 0, i32 6
  %60 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %59, ptr noundef nonnull align 8 dereferenceable(56) %60, i64 56, i1 false), !tbaa.struct !98
  %61 = getelementptr inbounds %struct.index_stream, ptr %23, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct.index_stream, ptr %47, i64 0, i32 7
  store i64 %62, ptr %63, align 8, !tbaa !66
  %64 = load i64, ptr %24, align 8, !tbaa !95
  %65 = shl i64 %64, 4
  %66 = add i64 %65, 64
  %67 = tail call ptr @lzma_alloc(i64 noundef %66, ptr noundef %1) #12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.index_stream, ptr %47, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  %72 = icmp eq ptr %71, null
  br i1 %72, label %117, label %73

73:                                               ; preds = %69
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %71, ptr noundef %1, ptr noundef null)
  br label %117

74:                                               ; preds = %53
  %75 = getelementptr inbounds %struct.index_group, ptr %67, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  store i64 1, ptr %75, align 8, !tbaa !91
  %76 = load i64, ptr %24, align 8, !tbaa !95
  %77 = getelementptr inbounds %struct.index_group, ptr %67, i64 0, i32 2
  store i64 %76, ptr %77, align 8, !tbaa !91
  %78 = load i64, ptr %24, align 8, !tbaa !95
  %79 = add i64 %78, -1
  %80 = getelementptr inbounds %struct.index_group, ptr %67, i64 0, i32 3
  store i64 %79, ptr %80, align 8, !tbaa !91
  %81 = load ptr, ptr %50, align 8, !tbaa !107
  %82 = getelementptr inbounds %struct.index_group, ptr %67, i64 0, i32 4
  br label %83

83:                                               ; preds = %112, %74
  %84 = phi ptr [ %81, %74 ], [ %113, %112 ]
  %85 = phi i64 [ 0, %74 ], [ %94, %112 ]
  %86 = getelementptr inbounds %struct.index_record, ptr %82, i64 %85
  %87 = getelementptr inbounds %struct.index_group, ptr %84, i64 0, i32 4
  %88 = getelementptr inbounds %struct.index_group, ptr %84, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !91
  %90 = shl i64 %89, 4
  %91 = add i64 %90, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %86, ptr nonnull align 8 %87, i64 %91, i1 false)
  %92 = load i64, ptr %88, align 8, !tbaa !91
  %93 = add i64 %85, 1
  %94 = add i64 %93, %92
  %95 = getelementptr inbounds %struct.index_tree_node_s, ptr %84, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !75
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %83, %98
  %99 = phi ptr [ %101, %98 ], [ %96, %83 ]
  %100 = getelementptr inbounds %struct.index_tree_node_s, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !80
  %102 = icmp eq ptr %101, null
  br i1 %102, label %112, label %98, !llvm.loop !121

103:                                              ; preds = %83, %108
  %104 = phi ptr [ %106, %108 ], [ %84, %83 ]
  %105 = getelementptr inbounds %struct.index_tree_node_s, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !70
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.index_tree_node_s, ptr %106, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !75
  %111 = icmp eq ptr %110, %104
  br i1 %111, label %103, label %112, !llvm.loop !122

112:                                              ; preds = %98, %103, %108
  %113 = phi ptr [ %106, %108 ], [ %106, %103 ], [ %99, %98 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %83, !llvm.loop !123

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.index_stream, ptr %47, i64 0, i32 3
  tail call fastcc void @index_tree_append(ptr noundef nonnull %116, ptr noundef nonnull %67)
  br label %117

117:                                              ; preds = %22, %46, %49, %69, %73, %115
  %118 = phi ptr [ null, %22 ], [ %47, %49 ], [ %47, %46 ], [ %47, %115 ], [ null, %69 ], [ null, %73 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load ptr, ptr %3, align 8, !tbaa !72
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %121, ptr noundef %1, ptr noundef nonnull @index_stream_end)
  br label %124

124:                                              ; preds = %123, %120
  tail call void @lzma_free(ptr noundef nonnull %3, ptr noundef %1) #12
  br label %143

125:                                              ; preds = %117
  tail call fastcc void @index_tree_append(ptr noundef nonnull %3, ptr noundef nonnull %118)
  %126 = getelementptr inbounds %struct.index_tree_node_s, ptr %23, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %125, %129
  %130 = phi ptr [ %132, %129 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.index_tree_node_s, ptr %130, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !80
  %133 = icmp eq ptr %132, null
  br i1 %133, label %143, label %129, !llvm.loop !121

134:                                              ; preds = %125, %139
  %135 = phi ptr [ %137, %139 ], [ %23, %125 ]
  %136 = getelementptr inbounds %struct.index_tree_node_s, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !70
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.index_tree_node_s, ptr %137, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = icmp eq ptr %141, %135
  br i1 %142, label %134, label %143, !llvm.loop !122

143:                                              ; preds = %129, %134, %139, %124
  %144 = phi ptr [ %23, %124 ], [ %137, %139 ], [ %137, %134 ], [ %130, %129 ]
  br i1 %119, label %147, label %145

145:                                              ; preds = %143
  %146 = icmp eq ptr %144, null
  br i1 %146, label %147, label %22, !llvm.loop !124

147:                                              ; preds = %143, %145, %2
  %148 = phi ptr [ null, %2 ], [ null, %143 ], [ %3, %145 ]
  ret ptr %148
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !50 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_rewind(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 !prof !83 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_next(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !67 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %166, label %4, !prof !125

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %10 = load i64, ptr %9, align 8, !tbaa !100
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %42, label %12, !prof !125

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  %14 = load i64, ptr %13, align 8, !tbaa !100
  switch i64 %14, label %42 [
    i64 0, label %15
    i64 1, label %17
    i64 2, label %37
  ], !prof !126

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  br label %39

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.index_tree_node_s, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct.index_tree_node_s, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %23, !llvm.loop !121

28:                                               ; preds = %17, %33
  %29 = phi ptr [ %31, %33 ], [ %19, %17 ]
  %30 = getelementptr inbounds %struct.index_tree_node_s, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.index_tree_node_s, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %28, label %42, !llvm.loop !122

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.index_stream, ptr %8, i64 0, i32 3, i32 1
  br label %39

39:                                               ; preds = %37, %15
  %40 = phi ptr [ %16, %15 ], [ %38, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  br label %42

42:                                               ; preds = %23, %28, %33, %39, %12, %4
  %43 = phi ptr [ null, %12 ], [ null, %4 ], [ %41, %39 ], [ %31, %33 ], [ %31, %28 ], [ %24, %23 ]
  br label %44

44:                                               ; preds = %155, %42
  %45 = phi ptr [ %8, %42 ], [ %144, %155 ]
  %46 = phi ptr [ %43, %42 ], [ %145, %155 ]
  %47 = phi i64 [ %10, %42 ], [ %156, %155 ]
  %48 = icmp eq ptr %45, null
  br i1 %48, label %49, label %83, !prof !81

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.index_tree, ptr %6, i64 0, i32 1
  %51 = icmp ugt i32 %1, 1
  %52 = load ptr, ptr %50, align 8, !tbaa !120
  br i1 %51, label %53, label %79, !prof !102

53:                                               ; preds = %49, %76
  %54 = phi ptr [ %77, %76 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.index_stream, ptr %54, i64 0, i32 3, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !107
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %79, !prof !51

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.index_tree_node_s, ptr %54, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58, %62
  %63 = phi ptr [ %65, %62 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.index_tree_node_s, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !80
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %62, !llvm.loop !121

67:                                               ; preds = %58, %72
  %68 = phi ptr [ %70, %72 ], [ %54, %58 ]
  %69 = getelementptr inbounds %struct.index_tree_node_s, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !70
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.index_tree_node_s, ptr %70, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !75
  %75 = icmp eq ptr %74, %68
  br i1 %75, label %67, label %76, !llvm.loop !122

76:                                               ; preds = %62, %67, %72
  %77 = phi ptr [ %70, %72 ], [ %70, %67 ], [ %63, %62 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %166, label %53, !llvm.loop !127

79:                                               ; preds = %53, %49
  %80 = phi ptr [ %52, %49 ], [ %54, %53 ]
  %81 = getelementptr inbounds %struct.index_stream, ptr %80, i64 0, i32 3, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !107
  br label %143

83:                                               ; preds = %44
  %84 = icmp eq ptr %46, null
  br i1 %84, label %109, label %85, !prof !51

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.index_group, ptr %46, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !91
  %88 = icmp ult i64 %47, %87
  br i1 %88, label %89, label %91, !prof !51

89:                                               ; preds = %85
  %90 = add nuw i64 %47, 1
  br label %143

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.index_tree_node_s, ptr %46, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !75
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95, !prof !102

95:                                               ; preds = %91, %95
  %96 = phi ptr [ %98, %95 ], [ %93, %91 ]
  %97 = getelementptr inbounds %struct.index_tree_node_s, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !80
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %95, !llvm.loop !121

100:                                              ; preds = %91, %105
  %101 = phi ptr [ %103, %105 ], [ %46, %91 ]
  %102 = getelementptr inbounds %struct.index_tree_node_s, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !70
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105, !prof !102

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.index_tree_node_s, ptr %103, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !75
  %108 = icmp eq ptr %107, %101
  br i1 %108, label %100, label %109, !llvm.loop !122

109:                                              ; preds = %95, %100, %105, %83
  %110 = phi ptr [ null, %83 ], [ %103, %105 ], [ %103, %100 ], [ %96, %95 ]
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %143, !prof !102

112:                                              ; preds = %109, %136
  %113 = phi ptr [ %132, %136 ], [ %45, %109 ]
  %114 = getelementptr inbounds %struct.index_tree_node_s, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !75
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117, !prof !102

117:                                              ; preds = %112, %117
  %118 = phi ptr [ %120, %117 ], [ %115, %112 ]
  %119 = getelementptr inbounds %struct.index_tree_node_s, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !80
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %117, !llvm.loop !121

122:                                              ; preds = %112, %127
  %123 = phi ptr [ %125, %127 ], [ %113, %112 ]
  %124 = getelementptr inbounds %struct.index_tree_node_s, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !70
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127, !prof !102

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.index_tree_node_s, ptr %125, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !75
  %130 = icmp eq ptr %129, %123
  br i1 %130, label %122, label %131, !llvm.loop !122

131:                                              ; preds = %117, %122, %127
  %132 = phi ptr [ %125, %127 ], [ %125, %122 ], [ %118, %117 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %166, label %134, !prof !102

134:                                              ; preds = %131
  %135 = icmp ugt i32 %1, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.index_stream, ptr %132, i64 0, i32 3, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !107
  %139 = icmp eq ptr %138, null
  br i1 %139, label %112, label %140, !llvm.loop !128

140:                                              ; preds = %134, %136
  %141 = getelementptr inbounds %struct.index_stream, ptr %132, i64 0, i32 3, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !107
  br label %143

143:                                              ; preds = %89, %140, %109, %79
  %144 = phi ptr [ %80, %79 ], [ %45, %89 ], [ %132, %140 ], [ %45, %109 ]
  %145 = phi ptr [ %82, %79 ], [ %46, %89 ], [ %142, %140 ], [ %110, %109 ]
  %146 = phi i64 [ 0, %79 ], [ %90, %89 ], [ 0, %140 ], [ 0, %109 ]
  %147 = icmp eq i32 %1, 3
  br i1 %147, label %148, label %164, !prof !51

148:                                              ; preds = %143
  %149 = icmp eq i64 %146, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %148
  %151 = load i64, ptr %145, align 8, !tbaa !104
  %152 = getelementptr inbounds %struct.index_group, ptr %145, i64 0, i32 4
  %153 = load i64, ptr %152, align 8, !tbaa !103
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %150, %157
  %156 = phi i64 [ 0, %150 ], [ %146, %157 ]
  br label %44

157:                                              ; preds = %148
  %158 = add i64 %146, -1
  %159 = getelementptr inbounds %struct.index_group, ptr %145, i64 0, i32 4, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !103
  %161 = getelementptr inbounds %struct.index_group, ptr %145, i64 0, i32 4, i64 %146
  %162 = load i64, ptr %161, align 8, !tbaa !103
  %163 = icmp eq i64 %160, %162
  br i1 %163, label %155, label %164

164:                                              ; preds = %150, %157, %143
  store ptr %144, ptr %7, align 8, !tbaa !100
  %165 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %145, ptr %165, align 8, !tbaa !100
  store i64 %146, ptr %9, align 8, !tbaa !100
  tail call fastcc void @iter_set_info(ptr noundef %0)
  br label %166

166:                                              ; preds = %131, %76, %164, %2
  %167 = phi i8 [ 1, %2 ], [ 0, %164 ], [ 1, %76 ], [ 1, %131 ]
  ret i8 %167
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iter_set_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !50 !PGOFuncName !129 {
  %2 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  %7 = load i64, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %11, !prof !51

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 2, ptr %10, align 8, !tbaa !100
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.index_tree, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %21, !prof !102

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %23, label %21, !prof !102

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  store i64 0, ptr %22, align 8, !tbaa !100
  br label %32

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = icmp eq ptr %25, %5
  %27 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 4
  br i1 %26, label %31, label %28, !prof !102

28:                                               ; preds = %23
  store i64 1, ptr %27, align 8, !tbaa !100
  %29 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  store ptr %30, ptr %4, align 8, !tbaa !100
  br label %32

31:                                               ; preds = %23
  store i64 2, ptr %27, align 8, !tbaa !100
  store ptr null, ptr %4, align 8, !tbaa !100
  br label %32

32:                                               ; preds = %21, %31, %28, %9
  %33 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 4
  store i64 %35, ptr %36, align 8, !tbaa !130
  %37 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !95
  %39 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 5
  store i64 %38, ptr %39, align 8, !tbaa !134
  %40 = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !90
  %42 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 6
  store i64 %41, ptr %42, align 8, !tbaa !135
  %43 = load i64, ptr %3, align 8, !tbaa !118
  %44 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 7
  store i64 %43, ptr %44, align 8, !tbaa !136
  %45 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !65
  %47 = icmp eq i32 %46, -1
  %48 = select i1 %47, ptr null, ptr %45, !prof !102
  store ptr %48, ptr %0, align 8, !tbaa !137
  %49 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 10
  store i64 %50, ptr %51, align 8, !tbaa !138
  %52 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %63, !prof !51

55:                                               ; preds = %32
  %56 = tail call i32 @lzma_vli_size(i64 noundef 0) #12
  %57 = add i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = add nuw nsw i64 %58, 7
  %60 = and i64 %59, 8589934588
  %61 = add nuw nsw i64 %60, 24
  %62 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %61, ptr %62, align 8, !tbaa !139
  br label %84

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5
  %65 = load i64, ptr %64, align 8, !tbaa !94
  %66 = tail call i32 @lzma_vli_size(i64 noundef %38) #12
  %67 = add i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = add i64 %65, 7
  %70 = add i64 %69, %68
  %71 = and i64 %70, -4
  %72 = add i64 %71, 24
  %73 = getelementptr inbounds %struct.index_group, ptr %53, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.index_group, ptr %53, i64 0, i32 4, i64 %74, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !92
  %77 = add i64 %76, 3
  %78 = and i64 %77, -4
  %79 = add i64 %72, %78
  %80 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 8
  store i64 %79, ptr %80, align 8, !tbaa !139
  %81 = load i64, ptr %73, align 8, !tbaa !91
  %82 = getelementptr inbounds %struct.index_group, ptr %53, i64 0, i32 4, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !103
  br label %84

84:                                               ; preds = %63, %55
  %85 = phi i64 [ %83, %63 ], [ 0, %55 ]
  %86 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 9
  store i64 %85, ptr %86, align 8, !tbaa !140
  br i1 %8, label %132, label %87, !prof !51

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !91
  %90 = add i64 %89, %7
  %91 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1
  %92 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 3
  store i64 %90, ptr %92, align 8, !tbaa !141
  %93 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !119
  %95 = add i64 %94, %90
  store i64 %95, ptr %91, align 8, !tbaa !142
  %96 = icmp eq i64 %7, 0
  br i1 %96, label %97, label %100, !prof !102

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !105
  br label %106

100:                                              ; preds = %87
  %101 = add i64 %7, -1
  %102 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %101, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !92
  %104 = add i64 %103, 3
  %105 = and i64 %104, -4
  br label %106

106:                                              ; preds = %100, %97
  %107 = phi i64 [ %99, %97 ], [ %105, %100 ]
  %108 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 4
  store i64 %107, ptr %108, align 8, !tbaa !143
  %109 = add i64 %7, -1
  %110 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %109
  %111 = select i1 %96, ptr %5, ptr %110, !prof !102
  %112 = load i64, ptr %111, align 8, !tbaa !91
  %113 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 5
  store i64 %112, ptr %113, align 8, !tbaa !144
  %114 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7
  %115 = load i64, ptr %114, align 8, !tbaa !103
  %116 = sub i64 %115, %112
  %117 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 6
  store i64 %116, ptr %117, align 8, !tbaa !145
  %118 = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !92
  %120 = sub i64 %119, %107
  %121 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 7
  store i64 %120, ptr %121, align 8, !tbaa !146
  %122 = add i64 %120, 3
  %123 = and i64 %122, -4
  %124 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 8
  store i64 %123, ptr %124, align 8, !tbaa !147
  %125 = add i64 %107, 12
  store i64 %125, ptr %108, align 8, !tbaa !143
  %126 = load i64, ptr %42, align 8, !tbaa !135
  %127 = add i64 %126, %125
  %128 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 1
  store i64 %127, ptr %128, align 8, !tbaa !148
  %129 = load i64, ptr %44, align 8, !tbaa !136
  %130 = add i64 %129, %112
  %131 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 1, i32 2
  store i64 %130, ptr %131, align 8, !tbaa !149
  br label %132

132:                                              ; preds = %106, %84
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lzma_index_iter_locate(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !83 {
  %3 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.lzma_index_s, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !96
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %8, label %61

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !79, !nonnull !150, !noundef !150
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %19, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %17, %10 ], [ null, %8 ]
  %13 = load i64, ptr %11, align 8, !tbaa !104
  %14 = icmp ugt i64 %13, %1
  %15 = getelementptr inbounds %struct.index_tree_node_s, ptr %11, i64 0, i32 3
  %16 = getelementptr inbounds %struct.index_tree_node_s, ptr %11, i64 0, i32 4
  %17 = select i1 %14, ptr %12, ptr %11
  %18 = select i1 %14, ptr %15, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !151

21:                                               ; preds = %10
  %22 = load i64, ptr %17, align 8, !tbaa !118
  %23 = sub i64 %1, %22
  %24 = getelementptr inbounds %struct.index_stream, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %21, %27
  %28 = phi ptr [ %36, %27 ], [ %25, %21 ]
  %29 = phi ptr [ %34, %27 ], [ null, %21 ]
  %30 = load i64, ptr %28, align 8, !tbaa !104
  %31 = icmp ugt i64 %30, %23
  %32 = getelementptr inbounds %struct.index_tree_node_s, ptr %28, i64 0, i32 3
  %33 = getelementptr inbounds %struct.index_tree_node_s, ptr %28, i64 0, i32 4
  %34 = select i1 %31, ptr %29, ptr %28
  %35 = select i1 %31, ptr %32, ptr %33
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %27, !llvm.loop !151

38:                                               ; preds = %27, %21
  %39 = phi ptr [ null, %21 ], [ %34, %27 ]
  %40 = getelementptr inbounds %struct.index_group, ptr %39, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !91
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %54, %43 ], [ %41, %38 ]
  %45 = phi i64 [ %53, %43 ], [ 0, %38 ]
  %46 = sub i64 %44, %45
  %47 = lshr i64 %46, 1
  %48 = add i64 %47, %45
  %49 = getelementptr inbounds %struct.index_group, ptr %39, i64 0, i32 4, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !103
  %51 = icmp ugt i64 %50, %23
  %52 = add i64 %48, 1
  %53 = select i1 %51, i64 %45, i64 %52
  %54 = select i1 %51, i64 %48, i64 %44
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %43, label %56, !llvm.loop !152

56:                                               ; preds = %43, %38
  %57 = phi i64 [ 0, %38 ], [ %53, %43 ]
  %58 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 1
  store ptr %17, ptr %58, align 8, !tbaa !100
  %59 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 2
  store ptr %39, ptr %59, align 8, !tbaa !100
  %60 = getelementptr inbounds %struct.lzma_index_iter, ptr %0, i64 0, i32 2, i64 3
  store i64 %57, ptr %60, align 8, !tbaa !100
  tail call fastcc void @iter_set_info(ptr noundef %0)
  br label %61

61:                                               ; preds = %2, %56
  %62 = phi i8 [ 0, %56 ], [ 1, %2 ]
  ret i8 %62
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @index_tree_node_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !67 !PGOFuncName !153 {
  %4 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !73

7:                                                ; preds = %3
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !73

12:                                               ; preds = %8
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %12, %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15, !prof !81

15:                                               ; preds = %13
  tail call void %2(ptr noundef %0, ptr noundef %1) #12, !prof !154, !callees !155
  br label %16

16:                                               ; preds = %15, %13
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @lzma_index_init, ptr @lzma_alloc, i64 2}
!36 = !{ptr @lzma_index_init, ptr @index_tree_append, i64 1}
!37 = !{ptr @lzma_index_end, ptr @index_tree_node_end, i64 1}
!38 = !{ptr @lzma_index_end, ptr @lzma_free, i64 1}
!39 = !{ptr @index_stream_end, ptr @index_tree_node_end, i64 1}
!40 = !{ptr @lzma_index_size, ptr @lzma_vli_size, i64 1}
!41 = !{ptr @lzma_index_padding_size, ptr @lzma_vli_size, i64 1}
!42 = !{ptr @lzma_index_append, ptr @lzma_vli_size, i64 4}
!43 = !{ptr @lzma_index_append, ptr @lzma_alloc, i64 1}
!44 = !{ptr @lzma_index_append, ptr @index_tree_append, i64 1}
!45 = !{ptr @lzma_index_iter_next, ptr @iter_set_info, i64 1}
!46 = !{ptr @iter_set_info, ptr @lzma_vli_size, i64 1}
!47 = !{ptr @index_tree_node_end, ptr @index_stream_end, i64 1}
!48 = !{ptr @index_tree_node_end, ptr @lzma_free, i64 2}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!"branch_weights", i32 0, i32 1}
!52 = !{!53, !59, i64 64}
!53 = !{!"lzma_index_s", !54, i64 0, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !58, i64 72}
!54 = !{!"", !55, i64 0, !55, i64 8, !55, i64 16, !58, i64 24}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"int", !56, i64 0}
!59 = !{!"long", !56, i64 0}
!60 = !{!53, !58, i64 72}
!61 = !{!62, !58, i64 40}
!62 = !{!"", !63, i64 0, !58, i64 40, !59, i64 48, !54, i64 56, !59, i64 88, !59, i64 96, !64, i64 104, !59, i64 160}
!63 = !{!"index_tree_node_s", !59, i64 0, !59, i64 8, !55, i64 16, !55, i64 24, !55, i64 32}
!64 = !{!"", !58, i64 0, !59, i64 8, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !56, i64 36, !56, i64 37, !56, i64 38, !56, i64 39, !56, i64 40, !56, i64 41, !56, i64 42, !56, i64 43, !58, i64 44, !58, i64 48}
!65 = !{!62, !58, i64 104}
!66 = !{!62, !59, i64 160}
!67 = !{!"function_entry_count", i64 2}
!68 = !{!"liblzma/common/index.c;index_tree_append"}
!69 = !{!54, !55, i64 16}
!70 = !{!63, !55, i64 16}
!71 = !{!54, !58, i64 24}
!72 = !{!54, !55, i64 0}
!73 = !{!"branch_weights", i32 2, i32 0}
!74 = !{!54, !55, i64 8}
!75 = !{!63, !55, i64 32}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!55, !55, i64 0}
!80 = !{!63, !55, i64 24}
!81 = !{!"branch_weights", i32 1, i32 1}
!82 = !{!"liblzma/common/index.c;index_stream_end"}
!83 = !{!"function_entry_count", i64 0}
!84 = !{!53, !58, i64 24}
!85 = !{!53, !59, i64 48}
!86 = !{!53, !59, i64 56}
!87 = !{!53, !59, i64 40}
!88 = !{!53, !55, i64 16}
!89 = !{!62, !55, i64 72}
!90 = !{!62, !59, i64 8}
!91 = !{!59, !59, i64 0}
!92 = !{!93, !59, i64 8}
!93 = !{!"", !59, i64 0, !59, i64 8}
!94 = !{!62, !59, i64 96}
!95 = !{!62, !59, i64 88}
!96 = !{!53, !59, i64 32}
!97 = !{!62, !58, i64 120}
!98 = !{i64 0, i64 4, !99, i64 8, i64 8, !91, i64 16, i64 4, !99, i64 20, i64 4, !99, i64 24, i64 4, !99, i64 28, i64 4, !99, i64 32, i64 4, !99, i64 36, i64 1, !100, i64 37, i64 1, !100, i64 38, i64 1, !100, i64 39, i64 1, !100, i64 40, i64 1, !100, i64 41, i64 1, !100, i64 42, i64 1, !100, i64 43, i64 1, !100, i64 44, i64 4, !99, i64 48, i64 4, !99}
!99 = !{!58, !58, i64 0}
!100 = !{!56, !56, i64 0}
!101 = !{i64 -1, i64 -9223372036854775808}
!102 = !{!"branch_weights", i32 1, i32 0}
!103 = !{!93, !59, i64 0}
!104 = !{!63, !59, i64 0}
!105 = !{!63, !59, i64 8}
!106 = !{i64 0, i64 8, !91, i64 8, i64 8, !91, i64 16, i64 8, !79, i64 24, i64 8, !79, i64 32, i64 8, !79}
!107 = !{!62, !55, i64 64}
!108 = !{!62, !55, i64 56}
!109 = !{!110, !59, i64 0}
!110 = !{!"", !59, i64 0, !59, i64 8, !59, i64 16, !58, i64 24, !55, i64 32}
!111 = !{!110, !59, i64 8}
!112 = !{!110, !59, i64 16}
!113 = !{!110, !58, i64 24}
!114 = !{!110, !55, i64 32}
!115 = !{!53, !55, i64 0}
!116 = !{!62, !55, i64 24}
!117 = !{!62, !55, i64 32}
!118 = !{!62, !59, i64 0}
!119 = !{!62, !59, i64 48}
!120 = !{!53, !55, i64 8}
!121 = distinct !{!121, !77, !78}
!122 = distinct !{!122, !77, !78}
!123 = distinct !{!123, !77, !78}
!124 = distinct !{!124, !77, !78}
!125 = !{!"branch_weights", i32 0, i32 2}
!126 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 1}
!127 = distinct !{!127, !77, !78}
!128 = distinct !{!128, !77, !78}
!129 = !{!"liblzma/common/index.c;iter_set_info"}
!130 = !{!131, !59, i64 32}
!131 = !{!"", !132, i64 0, !133, i64 120, !56, i64 256}
!132 = !{!"", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !59, i64 104, !59, i64 112}
!133 = !{!"", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128}
!134 = !{!131, !59, i64 40}
!135 = !{!131, !59, i64 48}
!136 = !{!131, !59, i64 56}
!137 = !{!131, !55, i64 0}
!138 = !{!131, !59, i64 80}
!139 = !{!131, !59, i64 64}
!140 = !{!131, !59, i64 72}
!141 = !{!131, !59, i64 144}
!142 = !{!131, !59, i64 120}
!143 = !{!131, !59, i64 152}
!144 = !{!131, !59, i64 160}
!145 = !{!131, !59, i64 168}
!146 = !{!131, !59, i64 176}
!147 = !{!131, !59, i64 184}
!148 = !{!131, !59, i64 128}
!149 = !{!131, !59, i64 136}
!150 = !{}
!151 = distinct !{!151, !77, !78}
!152 = distinct !{!152, !77, !78}
!153 = !{!"liblzma/common/index.c;index_tree_node_end"}
!154 = !{!"VP", i32 0, i64 1, i64 7033578525619099983, i64 1}
!155 = !{ptr @index_stream_end}
