; ModuleID = 'sbitmap.c'
source_filename = "sbitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"sbitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"n_bits = %d, set = {\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sbitmap_alloc(i32 noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = add i32 %0, 63
  %3 = lshr i32 %2, 6
  %4 = shl nuw nsw i32 %3, 3
  %5 = add nuw nsw i32 %4, 16
  %6 = zext nneg i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #21
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  store i32 %0, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  store i32 %3, ptr %9, align 4, !tbaa !66
  store ptr null, ptr %7, align 8, !tbaa !67
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sbitmap_alloc_with_popcount(i32 noundef %0) local_unnamed_addr #0 !prof !68 {
  %2 = tail call ptr @sbitmap_alloc(i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @xmalloc(i64 noundef %5) #21
  store ptr %6, ptr %2, align 8, !tbaa !67
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sbitmap_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !68 {
  %4 = add i32 %1, 63
  %5 = lshr i32 %4, 6
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !66
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %7, 16
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @xrealloc(ptr noundef nonnull %0, i64 noundef %16) #21
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @xrealloc(ptr noundef nonnull %18, i64 noundef %6) #21
  store ptr %21, ptr %17, align 8, !tbaa !67
  br label %22

22:                                               ; preds = %14, %20, %3
  %23 = phi ptr [ %17, %20 ], [ %17, %14 ], [ %0, %3 ]
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = icmp ult i32 %25, %1
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = icmp eq i32 %2, 0
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !66
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %29, i64 %32
  %34 = shl nuw nsw i64 %32, 3
  %35 = sub nsw i64 %8, %34
  br i1 %28, label %63, label %36

36:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 -1, i64 %35, i1 false)
  %37 = load i32, ptr %24, align 8, !tbaa !60
  %38 = and i32 %37, 63
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = sub nuw nsw i32 64, %38
  %42 = zext nneg i32 %41 to i64
  %43 = lshr i64 -1, %42
  %44 = xor i64 %43, -1
  %45 = load i32, ptr %30, align 4, !tbaa !66
  %46 = add i32 %45, -1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !69
  %50 = or i64 %49, %44
  store i64 %50, ptr %48, align 8, !tbaa !69
  br label %51

51:                                               ; preds = %40, %36
  %52 = and i32 %1, 63
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %51
  %55 = sub nuw nsw i32 64, %52
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 -1, %56
  %58 = add nsw i32 %5, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !69
  %62 = and i64 %61, %57
  store i64 %62, ptr %60, align 8, !tbaa !69
  br label %91

63:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 0, i64 %35, i1 false)
  %64 = load ptr, ptr %23, align 8, !tbaa !67
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %30, align 4, !tbaa !66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %64, i64 %68
  %70 = sub nsw i64 %6, %68
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %69, i8 0, i64 %70, i1 false)
  br label %91

71:                                               ; preds = %22
  %72 = icmp ugt i32 %25, %1
  br i1 %72, label %73, label %91

73:                                               ; preds = %71
  %74 = and i32 %1, 63
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  %77 = sub nuw nsw i32 64, %74
  %78 = zext nneg i32 %77 to i64
  %79 = lshr i64 -1, %78
  %80 = add nsw i32 %5, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !69
  %84 = and i64 %83, %79
  store i64 %84, ptr %82, align 8, !tbaa !69
  %85 = load ptr, ptr %23, align 8, !tbaa !67
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %84) #22
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds i8, ptr %85, i64 %81
  store i8 %89, ptr %90, align 1, !tbaa !71
  br label %91

91:                                               ; preds = %71, %76, %87, %73, %54, %51, %66, %63
  store i32 %1, ptr %24, align 8, !tbaa !60
  %92 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  store i32 %5, ptr %92, align 4, !tbaa !66
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @sbitmap_elt_popcount(i64 noundef %0) unnamed_addr #4 !prof !68 !PGOFuncName !72 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %12, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %11, %3 ], [ 0, %1 ]
  %6 = lshr i64 %0, %4
  %7 = and i64 %6, 255
  %8 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !71
  %10 = zext i8 %9 to i64
  %11 = add i64 %5, %10
  %12 = add nuw nsw i64 %4, 8
  %13 = icmp ult i64 %4, 56
  br i1 %13, label %3, label %14, !llvm.loop !73

14:                                               ; preds = %3, %1
  %15 = phi i64 [ 0, %1 ], [ %11, %3 ]
  ret i64 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sbitmap_realloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !68 {
  %3 = add i32 %1, 63
  %4 = lshr i32 %3, 6
  %5 = shl nuw nsw i32 %4, 3
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = icmp ult i64 %10, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  store i32 %1, ptr %13, align 8, !tbaa !60
  br label %20

14:                                               ; preds = %2
  %15 = add nuw nsw i32 %5, 16
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @xrealloc(ptr noundef nonnull %0, i64 noundef %16) #21
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 1
  store i32 %1, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 2
  store i32 %4, ptr %19, align 4, !tbaa !66
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %0, %12 ], [ %17, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !75 {
  %3 = add i32 %1, 63
  %4 = lshr i32 %3, 6
  %5 = shl nuw nsw i32 %4, 3
  %6 = add nuw nsw i32 %5, 16
  %7 = add nuw nsw i32 %5, 24
  %8 = mul i32 %7, %0
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xmalloc(i64 noundef %9) #21
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %26, label %12, !prof !76

12:                                               ; preds = %2
  %13 = shl i32 %0, 3
  %14 = zext i32 %0 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %23, %15 ]
  %17 = phi i32 [ %13, %12 ], [ %24, %15 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  %20 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %19, ptr %20, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 1
  store i32 %1, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 2
  store i32 %4, ptr %22, align 4, !tbaa !66
  store ptr null, ptr %19, align 8, !tbaa !67
  %23 = add nuw nsw i64 %16, 1
  %24 = add i32 %6, %17
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !prof !78, !llvm.loop !79

26:                                               ; preds = %15, %2
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !80 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 8 %4, i64 %8, i1 false)
  %9 = load ptr, ptr %0, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !81

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %12, i64 %7, i1 false)
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_copy_n(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 !prof !68 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %5, i64 %7, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %11, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @sbitmap_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !68 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %4, i64 %8)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @sbitmap_empty_p(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !82 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %9, !prof !83

5:                                                ; preds = %9
  %6 = zext i32 %3 to i64
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %6
  br i1 %8, label %14, label %9, !prof !84, !llvm.loop !85

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !69
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %5, label %14, !prof !86

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_range_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !68 {
  %4 = lshr i32 %1, 6
  %5 = and i32 %1, 63
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = add i32 %2, %1
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %3, %10
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !69
  %15 = zext nneg i32 %5 to i64
  %16 = lshr i64 %14, %15
  %17 = add i32 %5, %2
  %18 = icmp ult i32 %17, 65
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = icmp eq i32 %17, 64
  %21 = shl nsw i32 -1, %2
  %22 = xor i32 %21, -1
  %23 = zext nneg i32 %22 to i64
  %24 = select i1 %20, i64 -1, i64 %23
  %25 = and i64 %16, %24
  %26 = icmp eq i64 %25, 0
  br label %58

27:                                               ; preds = %11
  %28 = icmp eq i64 %16, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %27
  %30 = or i32 %1, -64
  %31 = add i32 %30, %2
  %32 = add nuw nsw i32 %4, 1
  %33 = icmp ugt i32 %31, 63
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %41
  %35 = phi i32 [ %43, %41 ], [ %32, %29 ]
  %36 = phi i32 [ %42, %41 ], [ %31, %29 ]
  %37 = zext nneg i32 %35 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !69
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = add i32 %36, -64
  %43 = add nuw nsw i32 %35, 1
  %44 = icmp ugt i32 %42, 63
  br i1 %44, label %34, label %45, !llvm.loop !87

45:                                               ; preds = %41, %29
  %46 = phi i32 [ %31, %29 ], [ %42, %41 ]
  %47 = phi i32 [ %32, %29 ], [ %43, %41 ]
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !69
  %53 = shl nsw i32 -1, %46
  %54 = xor i32 %53, -1
  %55 = zext nneg i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = icmp eq i64 %56, 0
  br label %58

58:                                               ; preds = %34, %45, %27, %49, %19
  %59 = phi i1 [ %26, %19 ], [ %57, %49 ], [ false, %27 ], [ true, %45 ], [ false, %34 ]
  %60 = zext i1 %59 to i8
  ret i8 %60
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_zero(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !88 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 0, i64 %6, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !89

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_ones(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 -1, i64 %6, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !91

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 -1, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = and i32 %12, 63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15, !prof !92

15:                                               ; preds = %10
  %16 = sub nuw nsw i32 64, %13
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 -1, %17
  %19 = load i32, ptr %3, align 4, !tbaa !66
  %20 = add i32 %19, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %21
  store i64 %18, ptr %22, align 8, !tbaa !69
  %23 = load ptr, ptr %0, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !93

25:                                               ; preds = %15
  %26 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %18) #22
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds i8, ptr %23, i64 %21
  store i8 %27, ptr %28, align 1, !tbaa !71
  br label %29

29:                                               ; preds = %15, %25, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_vector_zero(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !94 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4, !prof !95

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @sbitmap_zero(ptr noundef %9) #22
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !prof !96, !llvm.loop !97

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_vector_ones(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !98 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4, !prof !99

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @sbitmap_ones(ptr noundef %9) #22
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !prof !100, !llvm.loop !101

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_union_of_diff_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !102 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !103

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %41, label %16, !prof !104

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %36, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %34, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %35, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !69
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !69
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !69
  %29 = xor i64 %28, -1
  %30 = and i64 %26, %29
  %31 = or i64 %30, %24
  %32 = load i64, ptr %22, align 8, !tbaa !69
  %33 = xor i64 %31, %32
  %34 = or i64 %33, %18
  %35 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %31, ptr %22, align 8, !tbaa !69
  %36 = add nuw i32 %17, 1
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %16, !prof !105, !llvm.loop !106

38:                                               ; preds = %16
  %39 = icmp ne i64 %34, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %38, %14
  %42 = phi i8 [ 0, %14 ], [ %40, %38 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_union_of_diff(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !68 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !67
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %13, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.1) #21
  br label %23

23:                                               ; preds = %19, %22
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %23, %25
  %26 = phi ptr [ %35, %25 ], [ %10, %23 ]
  %27 = phi ptr [ %33, %25 ], [ %9, %23 ]
  %28 = phi ptr [ %31, %25 ], [ %8, %23 ]
  %29 = phi ptr [ %40, %25 ], [ %7, %23 ]
  %30 = phi i32 [ %41, %25 ], [ 0, %23 ]
  %31 = getelementptr inbounds i64, ptr %28, i64 1
  %32 = load i64, ptr %28, align 8, !tbaa !69
  %33 = getelementptr inbounds i64, ptr %27, i64 1
  %34 = load i64, ptr %27, align 8, !tbaa !69
  %35 = getelementptr inbounds i64, ptr %26, i64 1
  %36 = load i64, ptr %26, align 8, !tbaa !69
  %37 = xor i64 %36, -1
  %38 = and i64 %34, %37
  %39 = or i64 %38, %32
  %40 = getelementptr inbounds i64, ptr %29, i64 1
  store i64 %39, ptr %29, align 8, !tbaa !69
  %41 = add nuw i32 %30, 1
  %42 = icmp eq i32 %41, %6
  br i1 %42, label %43, label %25, !llvm.loop !107

43:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_not(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !108 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %0, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !109

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 432, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %2, %9
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %22, label %12, !prof !110

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %20, %12 ], [ 0, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %6, %10 ]
  %15 = phi ptr [ %19, %12 ], [ %5, %10 ]
  %16 = getelementptr inbounds i64, ptr %14, i64 1
  %17 = load i64, ptr %14, align 8, !tbaa !69
  %18 = xor i64 %17, -1
  %19 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %18, ptr %15, align 8, !tbaa !69
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %12, !prof !111, !llvm.loop !112

22:                                               ; preds = %12, %10
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !60
  %25 = and i32 %24, 63
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27, !prof !113

27:                                               ; preds = %22
  %28 = add i32 %4, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !69
  %32 = sub nuw nsw i32 64, %25
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 -1, %33
  %35 = and i64 %31, %34
  store i64 %35, ptr %30, align 8, !tbaa !69
  br label %36

36:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_difference(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !114 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !115

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 456, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !66
  %15 = icmp ult i32 %14, %5
  br i1 %15, label %16, label %17, !prof !116

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 459, ptr noundef nonnull @.str.1) #21
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = icmp ult i32 %19, %5
  br i1 %20, label %21, label %22, !prof !116

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %19, %21 ], [ %5, %17 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25, !prof !117

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %32, %25 ], [ %8, %22 ]
  %27 = phi ptr [ %30, %25 ], [ %7, %22 ]
  %28 = phi ptr [ %36, %25 ], [ %6, %22 ]
  %29 = phi i32 [ %37, %25 ], [ 0, %22 ]
  %30 = getelementptr inbounds i64, ptr %27, i64 1
  %31 = load i64, ptr %27, align 8, !tbaa !69
  %32 = getelementptr inbounds i64, ptr %26, i64 1
  %33 = load i64, ptr %26, align 8, !tbaa !69
  %34 = xor i64 %33, -1
  %35 = and i64 %31, %34
  %36 = getelementptr inbounds i64, ptr %28, i64 1
  store i64 %35, ptr %28, align 8, !tbaa !69
  %37 = add nuw i32 %29, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %25, !prof !118, !llvm.loop !119

39:                                               ; preds = %25, %22
  %40 = phi ptr [ %6, %22 ], [ %36, %25 ]
  %41 = phi ptr [ %7, %22 ], [ %30, %25 ]
  %42 = icmp eq ptr %0, %1
  %43 = icmp eq i32 %23, %5
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %56, label %45, !prof !120

45:                                               ; preds = %39
  %46 = icmp ult i32 %23, %5
  br i1 %46, label %47, label %56

47:                                               ; preds = %45, %47
  %48 = phi ptr [ %51, %47 ], [ %41, %45 ]
  %49 = phi ptr [ %53, %47 ], [ %40, %45 ]
  %50 = phi i32 [ %54, %47 ], [ %23, %45 ]
  %51 = getelementptr inbounds i64, ptr %48, i64 1
  %52 = load i64, ptr %48, align 8, !tbaa !69
  %53 = getelementptr inbounds i64, ptr %49, i64 1
  store i64 %52, ptr %49, align 8, !tbaa !69
  %54 = add nuw i32 %50, 1
  %55 = icmp eq i32 %54, %5
  br i1 %55, label %56, label %47, !llvm.loop !121

56:                                               ; preds = %47, %45, %39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sbitmap_any_common_bits(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !68 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %9, %20
  %13 = phi i32 [ %23, %20 ], [ 0, %9 ]
  %14 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %15 = phi ptr [ %22, %20 ], [ %11, %9 ]
  %16 = load i64, ptr %15, align 8, !tbaa !69
  %17 = load i64, ptr %14, align 8, !tbaa !69
  %18 = and i64 %17, %16
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr inbounds i64, ptr %14, i64 1
  %22 = getelementptr inbounds i64, ptr %15, i64 1
  %23 = add nuw i32 %13, 1
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %25, label %12, !llvm.loop !122

25:                                               ; preds = %12, %20, %2
  %26 = phi i8 [ 0, %2 ], [ 0, %20 ], [ 1, %12 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !68 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %27, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %22, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %20, %14 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !69
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !69
  %24 = and i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !69
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !69
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !123

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_and_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 !prof !124 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %37, label %9, !prof !125

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %32
  %14 = phi i32 [ %35, %32 ], [ 0, %9 ]
  %15 = phi ptr [ %34, %32 ], [ %12, %9 ]
  %16 = phi ptr [ %33, %32 ], [ %6, %9 ]
  %17 = phi ptr [ %19, %32 ], [ %11, %9 ]
  %18 = phi ptr [ %21, %32 ], [ %10, %9 ]
  %19 = getelementptr inbounds i64, ptr %17, i64 1
  %20 = load i64, ptr %17, align 8, !tbaa !69
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !69
  %23 = and i64 %22, %20
  br i1 %7, label %32, label %24, !prof !126

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !69
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %23) #22
  %29 = trunc i64 %28 to i8
  store i8 %29, ptr %16, align 1, !tbaa !71
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %16, %13 ]
  %34 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !69
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %13, !prof !127, !llvm.loop !128

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_xor_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !68 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 555, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %27, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %22, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %20, %14 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !69
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !69
  %24 = xor i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !69
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !69
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !129

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_xor_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 !prof !68 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %32
  %14 = phi i32 [ %35, %32 ], [ 0, %9 ]
  %15 = phi ptr [ %34, %32 ], [ %12, %9 ]
  %16 = phi ptr [ %33, %32 ], [ %6, %9 ]
  %17 = phi ptr [ %19, %32 ], [ %11, %9 ]
  %18 = phi ptr [ %21, %32 ], [ %10, %9 ]
  %19 = getelementptr inbounds i64, ptr %17, i64 1
  %20 = load i64, ptr %17, align 8, !tbaa !69
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !69
  %23 = xor i64 %22, %20
  br i1 %7, label %32, label %24

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !69
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %23) #22
  %29 = trunc i64 %28 to i8
  store i8 %29, ptr %16, align 1, !tbaa !71
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %16, %13 ]
  %34 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !69
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %13, !llvm.loop !130

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !68 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %27, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %22, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %20, %14 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !69
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !69
  %24 = or i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !69
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !69
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !131

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_or_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 !prof !132 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %37, label %9, !prof !133

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %32
  %14 = phi i32 [ %35, %32 ], [ 0, %9 ]
  %15 = phi ptr [ %34, %32 ], [ %12, %9 ]
  %16 = phi ptr [ %33, %32 ], [ %6, %9 ]
  %17 = phi ptr [ %19, %32 ], [ %11, %9 ]
  %18 = phi ptr [ %21, %32 ], [ %10, %9 ]
  %19 = getelementptr inbounds i64, ptr %17, i64 1
  %20 = load i64, ptr %17, align 8, !tbaa !69
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !69
  %23 = or i64 %22, %20
  br i1 %7, label %32, label %24, !prof !134

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !69
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %23) #22
  %29 = trunc i64 %28 to i8
  store i8 %29, ptr %16, align 1, !tbaa !71
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %16, %13 ]
  %34 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !69
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %13, !prof !135, !llvm.loop !136

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sbitmap_a_subset_b_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !68 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi ptr [ %20, %17 ], [ %7, %6 ]
  %11 = phi ptr [ %19, %17 ], [ %8, %6 ]
  %12 = phi i32 [ %18, %17 ], [ 0, %6 ]
  %13 = load i64, ptr %11, align 8, !tbaa !69
  %14 = load i64, ptr %10, align 8, !tbaa !69
  %15 = or i64 %14, %13
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = add nuw i32 %12, 1
  %19 = getelementptr inbounds i64, ptr %11, i64 1
  %20 = getelementptr inbounds i64, ptr %10, i64 1
  %21 = icmp eq i32 %18, %4
  br i1 %21, label %22, label %9, !llvm.loop !137

22:                                               ; preds = %9, %17, %2
  %23 = phi i8 [ 1, %2 ], [ 1, %17 ], [ 0, %9 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !138 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !139

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 675, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %40, label %16, !prof !140

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %35, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %33, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %34, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !69
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !69
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !69
  %29 = and i64 %28, %26
  %30 = or i64 %29, %24
  %31 = load i64, ptr %22, align 8, !tbaa !69
  %32 = xor i64 %30, %31
  %33 = or i64 %32, %18
  %34 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %30, ptr %22, align 8, !tbaa !69
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %16, !prof !141, !llvm.loop !142

37:                                               ; preds = %16
  %38 = icmp ne i64 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i8 [ 0, %14 ], [ %39, %37 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_a_or_b_and_c(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !68 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %26, %16 ], [ %10, %14 ]
  %18 = phi ptr [ %24, %16 ], [ %9, %14 ]
  %19 = phi ptr [ %22, %16 ], [ %8, %14 ]
  %20 = phi ptr [ %30, %16 ], [ %7, %14 ]
  %21 = phi i32 [ %31, %16 ], [ 0, %14 ]
  %22 = getelementptr inbounds i64, ptr %19, i64 1
  %23 = load i64, ptr %19, align 8, !tbaa !69
  %24 = getelementptr inbounds i64, ptr %18, i64 1
  %25 = load i64, ptr %18, align 8, !tbaa !69
  %26 = getelementptr inbounds i64, ptr %17, i64 1
  %27 = load i64, ptr %17, align 8, !tbaa !69
  %28 = and i64 %27, %25
  %29 = or i64 %28, %23
  %30 = getelementptr inbounds i64, ptr %20, i64 1
  store i64 %29, ptr %20, align 8, !tbaa !69
  %31 = add nuw i32 %21, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %16, !llvm.loop !143

33:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_or_c_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !68 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 715, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %35, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %33, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %34, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !69
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !69
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !69
  %29 = or i64 %28, %26
  %30 = and i64 %29, %24
  %31 = load i64, ptr %22, align 8, !tbaa !69
  %32 = xor i64 %30, %31
  %33 = or i64 %32, %18
  %34 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %30, ptr %22, align 8, !tbaa !69
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %16, !llvm.loop !144

37:                                               ; preds = %16
  %38 = icmp ne i64 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i8 [ 0, %14 ], [ %39, %37 ]
  ret i8 %41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_and_b_or_c(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 !prof !145 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8, !prof !146

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %23, %13 ], [ %9, %8 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %8 ]
  %16 = phi ptr [ %19, %13 ], [ %11, %8 ]
  %17 = phi ptr [ %27, %13 ], [ %12, %8 ]
  %18 = phi i32 [ %28, %13 ], [ 0, %8 ]
  %19 = getelementptr inbounds i64, ptr %16, i64 1
  %20 = load i64, ptr %16, align 8, !tbaa !69
  %21 = getelementptr inbounds i64, ptr %15, i64 1
  %22 = load i64, ptr %15, align 8, !tbaa !69
  %23 = getelementptr inbounds i64, ptr %14, i64 1
  %24 = load i64, ptr %14, align 8, !tbaa !69
  %25 = or i64 %24, %22
  %26 = and i64 %25, %20
  %27 = getelementptr inbounds i64, ptr %17, i64 1
  store i64 %26, ptr %17, align 8, !tbaa !69
  %28 = add nuw i32 %18, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %30, label %13, !prof !147, !llvm.loop !148

30:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_intersection_of_succs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !149 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !66
  %12 = load ptr, ptr %0, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !154

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %54, label %20, !prof !157

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !158
  br label %26

26:                                               ; preds = %20, %38
  %27 = phi i32 [ 0, %20 ], [ %39, %38 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %17, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = icmp eq ptr %30, %25
  br i1 %31, label %38, label %32, !prof !161

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !162
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %37) #22
  br label %41

38:                                               ; preds = %26
  %39 = add nuw i32 %27, 1
  %40 = icmp eq i32 %39, %18
  br i1 %40, label %41, label %26, !prof !163, !llvm.loop !164

41:                                               ; preds = %38, %32
  %42 = phi i32 [ %27, %32 ], [ %18, %38 ]
  %43 = load ptr, ptr %16, align 8, !tbaa !155
  %44 = add i32 %42, 1
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %85, !prof !165

47:                                               ; preds = %41
  %48 = load ptr, ptr @cfun, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !158
  %53 = icmp eq i32 %11, 0
  br label %55

54:                                               ; preds = %15
  tail call void @sbitmap_ones(ptr noundef nonnull %0) #22
  br label %85

55:                                               ; preds = %47, %81
  %56 = phi i32 [ %44, %47 ], [ %82, %81 ]
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %43, i32 noundef %56) #22
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = icmp eq ptr %59, %52
  %61 = select i1 %60, i1 true, i1 %53
  br i1 %61, label %81, label %62, !prof !166

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !162
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %1, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !77
  %69 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 3
  br label %70

70:                                               ; preds = %62, %70
  %71 = phi ptr [ %76, %70 ], [ %63, %62 ]
  %72 = phi ptr [ %74, %70 ], [ %69, %62 ]
  %73 = phi i32 [ %79, %70 ], [ 0, %62 ]
  %74 = getelementptr inbounds i64, ptr %72, i64 1
  %75 = load i64, ptr %72, align 8, !tbaa !69
  %76 = getelementptr inbounds i64, ptr %71, i64 1
  %77 = load i64, ptr %71, align 8, !tbaa !69
  %78 = and i64 %77, %75
  store i64 %78, ptr %71, align 8, !tbaa !69
  %79 = add nuw i32 %73, 1
  %80 = icmp eq i32 %79, %11
  br i1 %80, label %81, label %70, !prof !167, !llvm.loop !168

81:                                               ; preds = %70, %55
  %82 = add nuw i32 %56, 1
  %83 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %55, label %85, !prof !169, !llvm.loop !170

85:                                               ; preds = %81, %41, %54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !171 !PGOFuncName !172 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #13 !prof !173 !PGOFuncName !174 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !175

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !176
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !178 !PGOFuncName !179 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_intersection_of_preds(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !180 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !66
  %12 = load ptr, ptr %0, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !181

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 794, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = load ptr, ptr %9, align 8, !tbaa !182
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19, !prof !157

19:                                               ; preds = %15
  %20 = load ptr, ptr @cfun, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  %23 = load ptr, ptr %22, align 8, !tbaa !183
  br label %24

24:                                               ; preds = %19, %29
  %25 = phi i32 [ 0, %19 ], [ %30, %29 ]
  %26 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef %25) #22
  %27 = load ptr, ptr %26, align 8, !tbaa !184
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %29, label %32, !prof !185

29:                                               ; preds = %24
  %30 = add nuw i32 %25, 1
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %38, label %24, !prof !186, !llvm.loop !187

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !162
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %37) #22
  br i1 %18, label %50, label %38, !prof !188

38:                                               ; preds = %29, %32
  %39 = phi i32 [ %25, %32 ], [ %17, %29 ]
  %40 = load ptr, ptr %9, align 8, !tbaa !182
  %41 = add i32 %39, 1
  %42 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %80, !prof !189

44:                                               ; preds = %38
  %45 = load ptr, ptr @cfun, align 8, !tbaa !77
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = load ptr, ptr %47, align 8, !tbaa !183
  %49 = icmp eq i32 %11, 0
  br label %51

50:                                               ; preds = %15, %32
  tail call void @sbitmap_ones(ptr noundef nonnull %0) #22
  br label %80

51:                                               ; preds = %44, %76
  %52 = phi i32 [ %41, %44 ], [ %77, %76 ]
  %53 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef %52) #22
  %54 = load ptr, ptr %53, align 8, !tbaa !184
  %55 = icmp eq ptr %54, %48
  %56 = select i1 %55, i1 true, i1 %49
  br i1 %56, label %76, label %57, !prof !190

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !162
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !77
  %64 = getelementptr inbounds %struct.simple_bitmap_def, ptr %63, i64 0, i32 3
  br label %65

65:                                               ; preds = %57, %65
  %66 = phi ptr [ %71, %65 ], [ %58, %57 ]
  %67 = phi ptr [ %69, %65 ], [ %64, %57 ]
  %68 = phi i32 [ %74, %65 ], [ 0, %57 ]
  %69 = getelementptr inbounds i64, ptr %67, i64 1
  %70 = load i64, ptr %67, align 8, !tbaa !69
  %71 = getelementptr inbounds i64, ptr %66, i64 1
  %72 = load i64, ptr %66, align 8, !tbaa !69
  %73 = and i64 %72, %70
  store i64 %73, ptr %66, align 8, !tbaa !69
  %74 = add nuw i32 %68, 1
  %75 = icmp eq i32 %74, %11
  br i1 %75, label %76, label %65, !prof !191, !llvm.loop !192

76:                                               ; preds = %65, %51
  %77 = add nuw i32 %52, 1
  %78 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %51, label %80, !prof !193, !llvm.loop !194

80:                                               ; preds = %76, %38, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_union_of_succs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !68 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !66
  %12 = load ptr, ptr %0, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 836, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !158
  br label %26

26:                                               ; preds = %20, %39
  %27 = phi i32 [ 0, %20 ], [ %40, %39 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %17, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = icmp eq ptr %30, %25
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !162
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %37) #22
  %38 = load ptr, ptr %16, align 8, !tbaa !155
  br label %42

39:                                               ; preds = %26
  %40 = add nuw i32 %27, 1
  %41 = icmp eq i32 %40, %18
  br i1 %41, label %42, label %26, !llvm.loop !195

42:                                               ; preds = %39, %15, %32
  %43 = phi ptr [ %38, %32 ], [ %17, %15 ], [ %17, %39 ]
  %44 = phi i32 [ %27, %32 ], [ 0, %15 ], [ %18, %39 ]
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = add i32 %44, 1
  %49 = icmp ult i32 %48, %45
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = load ptr, ptr @cfun, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !150
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !158
  %56 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %57 = icmp eq i32 %11, 0
  br label %59

58:                                               ; preds = %42
  tail call void @sbitmap_zero(ptr noundef nonnull %0) #22
  br label %88

59:                                               ; preds = %50, %84
  %60 = phi i32 [ %48, %50 ], [ %85, %84 ]
  %61 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %43, i32 noundef %60) #22
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !159
  %64 = icmp eq ptr %63, %55
  %65 = select i1 %64, i1 true, i1 %57
  br i1 %65, label %84, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !162
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3
  br label %73

73:                                               ; preds = %66, %73
  %74 = phi ptr [ %79, %73 ], [ %56, %66 ]
  %75 = phi ptr [ %77, %73 ], [ %72, %66 ]
  %76 = phi i32 [ %82, %73 ], [ 0, %66 ]
  %77 = getelementptr inbounds i64, ptr %75, i64 1
  %78 = load i64, ptr %75, align 8, !tbaa !69
  %79 = getelementptr inbounds i64, ptr %74, i64 1
  %80 = load i64, ptr %74, align 8, !tbaa !69
  %81 = or i64 %80, %78
  store i64 %81, ptr %74, align 8, !tbaa !69
  %82 = add nuw i32 %76, 1
  %83 = icmp eq i32 %82, %11
  br i1 %83, label %84, label %73, !llvm.loop !196

84:                                               ; preds = %73, %59
  %85 = add nuw i32 %60, 1
  %86 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %59, label %88, !llvm.loop !197

88:                                               ; preds = %84, %47, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_union_of_preds(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !68 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !66
  %12 = load ptr, ptr %0, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = load ptr, ptr %9, align 8, !tbaa !182
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @cfun, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  %23 = load ptr, ptr %22, align 8, !tbaa !183
  br label %24

24:                                               ; preds = %19, %36
  %25 = phi i32 [ 0, %19 ], [ %37, %36 ]
  %26 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef %25) #22
  %27 = load ptr, ptr %26, align 8, !tbaa !184
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !162
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %34) #22
  %35 = load ptr, ptr %9, align 8, !tbaa !182
  br label %39

36:                                               ; preds = %24
  %37 = add nuw i32 %25, 1
  %38 = icmp eq i32 %37, %17
  br i1 %38, label %39, label %24, !llvm.loop !198

39:                                               ; preds = %36, %15, %29
  %40 = phi ptr [ %35, %29 ], [ %16, %15 ], [ %16, %36 ]
  %41 = phi i32 [ %25, %29 ], [ 0, %15 ], [ %17, %36 ]
  %42 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = add i32 %41, 1
  %46 = icmp ult i32 %45, %42
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = load ptr, ptr @cfun, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  %51 = load ptr, ptr %50, align 8, !tbaa !183
  %52 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %53 = icmp eq i32 %11, 0
  br label %55

54:                                               ; preds = %39
  tail call void @sbitmap_zero(ptr noundef nonnull %0) #22
  br label %83

55:                                               ; preds = %47, %79
  %56 = phi i32 [ %45, %47 ], [ %80, %79 ]
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef %56) #22
  %58 = load ptr, ptr %57, align 8, !tbaa !184
  %59 = icmp eq ptr %58, %51
  %60 = select i1 %59, i1 true, i1 %53
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !162
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !77
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %66, i64 0, i32 3
  br label %68

68:                                               ; preds = %61, %68
  %69 = phi ptr [ %74, %68 ], [ %52, %61 ]
  %70 = phi ptr [ %72, %68 ], [ %67, %61 ]
  %71 = phi i32 [ %77, %68 ], [ 0, %61 ]
  %72 = getelementptr inbounds i64, ptr %70, i64 1
  %73 = load i64, ptr %70, align 8, !tbaa !69
  %74 = getelementptr inbounds i64, ptr %69, i64 1
  %75 = load i64, ptr %69, align 8, !tbaa !69
  %76 = or i64 %75, %73
  store i64 %76, ptr %69, align 8, !tbaa !69
  %77 = add nuw i32 %71, 1
  %78 = icmp eq i32 %77, %11
  br i1 %78, label %79, label %68, !llvm.loop !199

79:                                               ; preds = %68, %55
  %80 = add nuw i32 %56, 1
  %81 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %55, label %83, !llvm.loop !200

83:                                               ; preds = %79, %44, %54
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @sbitmap_first_set_bit(ptr noundef %0) local_unnamed_addr #14 !prof !201 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !202
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %0) #22
  %4 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #22, !range !203
  %5 = icmp eq i8 %4, 0
  %6 = load i32, ptr %2, align 4
  %7 = select i1 %5, i32 -1, i32 %6, !prof !204
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 !prof !201 !PGOFuncName !205 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !206
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !208
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !209
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !210
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10, !prof !211

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 !prof !201 !PGOFuncName !212 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !213
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13, !prof !214

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !209
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !206
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !206
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !208
  br i1 %16, label %30, label %38, !prof !214

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40, !prof !215

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !208
  %25 = load ptr, ptr %0, align 8, !tbaa !210
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !69
  store i64 %28, ptr %3, align 8, !tbaa !213
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !prof !216, !llvm.loop !217

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !prof !218, !llvm.loop !219

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !208
  store i64 %34, ptr %3, align 8, !tbaa !213
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !202
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !206
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @sbitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !68 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %27, %1
  %7 = phi i64 [ %9, %27 ], [ %5, %1 ]
  %8 = phi i32 [ %28, %27 ], [ undef, %1 ]
  %9 = add nsw i64 %7, -1
  %10 = and i64 %9, 2147483648
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = and i64 %9, 2147483647
  %14 = getelementptr inbounds i64, ptr %2, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !69
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = trunc i64 %7 to i32
  %19 = shl i32 %18, 6
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %22 = phi i64 [ -9223372036854775808, %17 ], [ %26, %20 ]
  %23 = add i32 %21, -1
  %24 = and i64 %22, %15
  %25 = icmp eq i64 %24, 0
  %26 = lshr i64 %22, 1
  br i1 %25, label %20, label %27

27:                                               ; preds = %20, %12
  %28 = phi i32 [ %8, %12 ], [ %23, %20 ]
  br i1 %16, label %6, label %29, !llvm.loop !220

29:                                               ; preds = %6, %27
  %30 = phi i32 [ %28, %27 ], [ -1, %6 ]
  ret i32 %30
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sbitmap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 !prof !68 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %0)
  %8 = icmp ne i32 %4, 0
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = zext i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %38
  %14 = phi i64 [ 0, %11 ], [ %39, %38 ]
  %15 = phi i32 [ 0, %11 ], [ %34, %38 ]
  %16 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %14
  br label %17

17:                                               ; preds = %13, %26
  %18 = phi i64 [ 0, %13 ], [ %33, %26 ]
  %19 = phi i32 [ %15, %13 ], [ %34, %26 ]
  %20 = icmp ne i32 %19, 0
  %21 = urem i32 %19, 10
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call i32 @fputc(i32 32, ptr %0)
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i64, ptr %16, align 8, !tbaa !69
  %28 = shl nuw i64 1, %18
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %31) #22
  %33 = add nuw nsw i64 %18, 1
  %34 = add nuw i32 %19, 1
  %35 = icmp ult i64 %18, 63
  %36 = icmp ult i32 %34, %6
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %17, label %38, !llvm.loop !221

38:                                               ; preds = %26
  %39 = add nuw nsw i64 %14, 1
  %40 = icmp ult i64 %39, %12
  %41 = select i1 %40, i1 %36, i1 false
  br i1 %41, label %13, label %42, !llvm.loop !222

42:                                               ; preds = %38, %2
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sbitmap_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 !prof !68 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %4) #22
  %6 = load i32, ptr %3, align 8, !tbaa !60
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2, %38
  %9 = phi i32 [ %39, %38 ], [ %6, %2 ]
  %10 = phi i32 [ %40, %38 ], [ 30, %2 ]
  %11 = phi i32 [ %41, %38 ], [ 0, %2 ]
  %12 = lshr i32 %11, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !69
  %16 = and i32 %11, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %8
  %22 = icmp ugt i32 %10, 70
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %0)
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ 0, %23 ], [ %10, %21 ]
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %11) #22
  %28 = icmp ugt i32 %11, 9
  %29 = select i1 %28, i32 3, i32 2
  %30 = icmp ugt i32 %11, 99
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %29, %31
  %33 = icmp ugt i32 %11, 999
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %32, %34
  %36 = add nuw nsw i32 %35, %26
  %37 = load i32, ptr %3, align 8, !tbaa !60
  br label %38

38:                                               ; preds = %8, %25
  %39 = phi i32 [ %37, %25 ], [ %9, %8 ]
  %40 = phi i32 [ %36, %25 ], [ %10, %8 ]
  %41 = add nuw i32 %11, 1
  %42 = icmp ult i32 %41, %39
  br i1 %42, label %8, label %43, !llvm.loop !223

43:                                               ; preds = %38, %2
  %44 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_sbitmap(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !68 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !77
  tail call void @dump_sbitmap_file(ptr noundef %2, ptr noundef %0) #22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sbitmap_vector(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #16 !prof !68 {
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %1) #22
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %2, i32 noundef %12) #22
  %14 = getelementptr inbounds ptr, ptr %3, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  tail call void @dump_sbitmap(ptr noundef %0, ptr noundef %15) #22
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !llvm.loop !224

18:                                               ; preds = %10, %5
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @sbitmap_popcount(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !prof !68 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = zext i32 %6 to i64
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %1)
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !66
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %8, 64
  %13 = lshr i64 %12, 6
  %14 = add nsw i64 %13, -1
  %15 = icmp ugt i64 %14, %11
  %16 = trunc i64 %14 to i32
  %17 = select i1 %15, i32 %10, i32 %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %0, align 8, !tbaa !67
  %21 = icmp eq ptr %20, null
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %34
  %24 = phi i64 [ 0, %19 ], [ %37, %34 ]
  %25 = phi i64 [ 0, %19 ], [ %36, %34 ]
  br i1 %21, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %20, i64 %24
  %28 = load i8, ptr %27, align 1, !tbaa !71
  %29 = zext i8 %28 to i64
  br label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %24
  %32 = load i64, ptr %31, align 8, !tbaa !69
  %33 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %32) #22
  br label %34

34:                                               ; preds = %26, %30
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = add i64 %35, %25
  %37 = add nuw nsw i64 %24, 1
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !225

39:                                               ; preds = %34, %4
  %40 = phi i64 [ 0, %4 ], [ %36, %34 ]
  %41 = icmp ult i32 %17, %10
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = trunc i64 %8 to i32
  %44 = and i32 %43, 63
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = zext nneg i32 %17 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !69
  %50 = sub nuw nsw i32 64, %44
  %51 = zext nneg i32 %50 to i64
  %52 = lshr i64 -1, %51
  %53 = and i64 %49, %52
  %54 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %53) #22
  %55 = add i64 %54, %40
  br label %56

56:                                               ; preds = %39, %46, %42, %2
  %57 = phi i64 [ 0, %2 ], [ %40, %39 ], [ %55, %46 ], [ %40, %42 ]
  ret i64 %57
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @sbitmap_alloc, ptr @xmalloc, i64 594019}
!36 = !{ptr @sbitmap_vector_alloc, ptr @xmalloc, i64 806}
!37 = !{ptr @sbitmap_ones, ptr @sbitmap_elt_popcount, i64 1}
!38 = !{ptr @sbitmap_vector_zero, ptr @sbitmap_zero, i64 60424}
!39 = !{ptr @sbitmap_vector_ones, ptr @sbitmap_ones, i64 44108}
!40 = !{ptr @sbitmap_union_of_diff_cg, ptr @fancy_abort, i64 1}
!41 = !{ptr @sbitmap_not, ptr @fancy_abort, i64 1}
!42 = !{ptr @sbitmap_difference, ptr @fancy_abort, i64 2}
!43 = !{ptr @sbitmap_a_or_b_and_c_cg, ptr @fancy_abort, i64 1}
!44 = !{ptr @sbitmap_intersection_of_succs, ptr @VEC_basic_block_base_index, i64 5873}
!45 = !{ptr @sbitmap_intersection_of_succs, ptr @fancy_abort, i64 1}
!46 = !{ptr @sbitmap_intersection_of_succs, ptr @VEC_edge_base_length, i64 15539}
!47 = !{ptr @sbitmap_intersection_of_succs, ptr @VEC_edge_base_index, i64 9667}
!48 = !{ptr @sbitmap_intersection_of_succs, ptr @sbitmap_copy, i64 5827}
!49 = !{ptr @sbitmap_intersection_of_succs, ptr @sbitmap_ones, i64 46}
!50 = !{ptr @sbitmap_intersection_of_preds, ptr @VEC_basic_block_base_index, i64 21977}
!51 = !{ptr @sbitmap_intersection_of_preds, ptr @fancy_abort, i64 1}
!52 = !{ptr @sbitmap_intersection_of_preds, ptr @VEC_edge_base_length, i64 58547}
!53 = !{ptr @sbitmap_intersection_of_preds, ptr @VEC_edge_base_index, i64 36571}
!54 = !{ptr @sbitmap_intersection_of_preds, ptr @sbitmap_copy, i64 21805}
!55 = !{ptr @sbitmap_intersection_of_preds, ptr @sbitmap_ones, i64 172}
!56 = !{ptr @sbitmap_first_set_bit, ptr @sbitmap_iter_init, i64 503}
!57 = !{ptr @sbitmap_first_set_bit, ptr @sbitmap_iter_cond, i64 503}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 594019}
!60 = !{!61, !65, i64 8}
!61 = !{!"simple_bitmap_def", !62, i64 0, !65, i64 8, !65, i64 12, !63, i64 16}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!"int", !63, i64 0}
!66 = !{!61, !65, i64 12}
!67 = !{!61, !62, i64 0}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"long", !63, i64 0}
!71 = !{!63, !63, i64 0}
!72 = !{!"sbitmap.c:sbitmap_elt_popcount"}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"function_entry_count", i64 806}
!76 = !{!"branch_weights", i32 1, i32 806}
!77 = !{!62, !62, i64 0}
!78 = !{!"branch_weights", i32 806, i32 164384}
!79 = distinct !{!79, !74}
!80 = !{!"function_entry_count", i64 27965}
!81 = !{!"branch_weights", i32 27966, i32 1}
!82 = !{!"function_entry_count", i64 302046}
!83 = !{!"branch_weights", i32 1, i32 187}
!84 = !{!"branch_weights", i32 187, i32 1210113}
!85 = distinct !{!85, !74}
!86 = !{!"branch_weights", i32 575, i32 302001}
!87 = distinct !{!87, !74}
!88 = !{!"function_entry_count", i64 902007}
!89 = !{!"branch_weights", i32 902008, i32 1}
!90 = !{!"function_entry_count", i64 50450}
!91 = !{!"branch_weights", i32 50451, i32 1}
!92 = !{!"branch_weights", i32 349, i32 50103}
!93 = !{!"branch_weights", i32 50103, i32 1}
!94 = !{!"function_entry_count", i64 310}
!95 = !{!"branch_weights", i32 1, i32 310}
!96 = !{!"branch_weights", i32 310, i32 60309}
!97 = distinct !{!97, !74}
!98 = !{!"function_entry_count", i64 217}
!99 = !{!"branch_weights", i32 1, i32 217}
!100 = !{!"branch_weights", i32 217, i32 44094}
!101 = distinct !{!101, !74}
!102 = !{!"function_entry_count", i64 31949}
!103 = !{!"branch_weights", i32 31950, i32 1}
!104 = !{!"branch_weights", i32 1, i32 31949}
!105 = !{!"branch_weights", i32 31949, i32 27715}
!106 = distinct !{!106, !74}
!107 = distinct !{!107, !74}
!108 = !{!"function_entry_count", i64 15721}
!109 = !{!"branch_weights", i32 15722, i32 1}
!110 = !{!"branch_weights", i32 1, i32 15721}
!111 = !{!"branch_weights", i32 15721, i32 5021}
!112 = distinct !{!112, !74}
!113 = !{!"branch_weights", i32 1, i32 15722}
!114 = !{!"function_entry_count", i64 25600}
!115 = !{!"branch_weights", i32 25601, i32 1}
!116 = !{!"branch_weights", i32 1, i32 25601}
!117 = !{!"branch_weights", i32 1, i32 25600}
!118 = !{!"branch_weights", i32 25600, i32 8181}
!119 = distinct !{!119, !74}
!120 = !{!"branch_weights", i32 655436803, i32 25601}
!121 = distinct !{!121, !74}
!122 = distinct !{!122, !74}
!123 = distinct !{!123, !74}
!124 = !{!"function_entry_count", i64 9879}
!125 = !{!"branch_weights", i32 1, i32 9879}
!126 = !{!"branch_weights", i32 13040, i32 1}
!127 = !{!"branch_weights", i32 9879, i32 3161}
!128 = distinct !{!128, !74}
!129 = distinct !{!129, !74}
!130 = distinct !{!130, !74}
!131 = distinct !{!131, !74}
!132 = !{!"function_entry_count", i64 597973}
!133 = !{!"branch_weights", i32 1, i32 597973}
!134 = !{!"branch_weights", i32 499227317, i32 1}
!135 = !{!"branch_weights", i32 597973, i32 498629344}
!136 = distinct !{!136, !74}
!137 = distinct !{!137, !74}
!138 = !{!"function_entry_count", i64 5979}
!139 = !{!"branch_weights", i32 5980, i32 1}
!140 = !{!"branch_weights", i32 1, i32 5979}
!141 = !{!"branch_weights", i32 5979, i32 1891}
!142 = distinct !{!142, !74}
!143 = distinct !{!143, !74}
!144 = distinct !{!144, !74}
!145 = !{!"function_entry_count", i64 9742}
!146 = !{!"branch_weights", i32 1, i32 9742}
!147 = !{!"branch_weights", i32 9742, i32 3131}
!148 = distinct !{!148, !74}
!149 = !{!"function_entry_count", i64 5873}
!150 = !{!151, !62, i64 8}
!151 = !{!"function", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !65, i64 104, !65, i64 108, !65, i64 112, !65, i64 116, !65, i64 120, !65, i64 124, !62, i64 128, !65, i64 136, !65, i64 137, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139}
!152 = !{!153, !62, i64 16}
!153 = !{!"control_flow_graph", !62, i64 0, !62, i64 8, !62, i64 16, !65, i64 24, !65, i64 28, !65, i64 32, !62, i64 40, !65, i64 48, !63, i64 52, !63, i64 60, !65, i64 68, !65, i64 72}
!154 = !{!"branch_weights", i32 5874, i32 1}
!155 = !{!156, !62, i64 8}
!156 = !{!"basic_block_def", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !63, i64 32, !62, i64 48, !62, i64 56, !63, i64 64, !70, i64 72, !65, i64 80, !65, i64 84, !65, i64 88, !65, i64 92, !65, i64 96}
!157 = !{!"branch_weights", i32 1, i32 127}
!158 = !{!153, !62, i64 8}
!159 = !{!160, !62, i64 8}
!160 = !{!"edge_def", !62, i64 0, !62, i64 8, !63, i64 16, !62, i64 24, !62, i64 32, !65, i64 40, !65, i64 44, !65, i64 48, !65, i64 52, !70, i64 56}
!161 = !{!"branch_weights", i32 1, i32 5874}
!162 = !{!156, !65, i64 80}
!163 = !{!"branch_weights", i32 127, i32 751745}
!164 = distinct !{!164, !74}
!165 = !{!"branch_weights", i32 3870, i32 2004}
!166 = !{!"branch_weights", i32 7740, i32 14973030}
!167 = !{!"branch_weights", i32 3869, i32 1261}
!168 = distinct !{!168, !74}
!169 = !{!"branch_weights", i32 0, i32 3870}
!170 = distinct !{!170, !74}
!171 = !{!"function_entry_count", i64 27850}
!172 = !{!"sbitmap.c:VEC_basic_block_base_index"}
!173 = !{!"function_entry_count", i64 74450}
!174 = !{!"sbitmap.c:VEC_edge_base_length"}
!175 = !{!"branch_weights", i32 1, i32 74451}
!176 = !{!177, !65, i64 0}
!177 = !{!"VEC_edge_base", !65, i64 0, !65, i64 4, !63, i64 8}
!178 = !{!"function_entry_count", i64 46600}
!179 = !{!"sbitmap.c:VEC_edge_base_index"}
!180 = !{!"function_entry_count", i64 21977}
!181 = !{!"branch_weights", i32 21978, i32 1}
!182 = !{!156, !62, i64 0}
!183 = !{!153, !62, i64 0}
!184 = !{!160, !62, i64 0}
!185 = !{!"branch_weights", i32 1, i32 21978}
!186 = !{!"branch_weights", i32 127, i32 2813057}
!187 = distinct !{!187, !74}
!188 = !{!"branch_weights", i32 0, i32 -2147483648}
!189 = !{!"branch_weights", i32 14882, i32 7096}
!190 = !{!"branch_weights", i32 29764, i32 221459042}
!191 = !{!"branch_weights", i32 14881, i32 16176}
!192 = distinct !{!192, !74}
!193 = !{!"branch_weights", i32 0, i32 14882}
!194 = distinct !{!194, !74}
!195 = distinct !{!195, !74}
!196 = distinct !{!196, !74}
!197 = distinct !{!197, !74}
!198 = distinct !{!198, !74}
!199 = distinct !{!199, !74}
!200 = distinct !{!200, !74}
!201 = !{!"function_entry_count", i64 503}
!202 = !{!65, !65, i64 0}
!203 = !{i8 0, i8 2}
!204 = !{!"branch_weights", i32 193, i32 312}
!205 = !{!"sbitmap.c:sbitmap_iter_init"}
!206 = !{!207, !65, i64 12}
!207 = !{!"", !62, i64 0, !65, i64 8, !65, i64 12, !65, i64 16, !70, i64 24}
!208 = !{!207, !65, i64 16}
!209 = !{!207, !65, i64 8}
!210 = !{!207, !62, i64 0}
!211 = !{!"branch_weights", i32 1, i32 504}
!212 = !{!"sbitmap.c:sbitmap_iter_cond"}
!213 = !{!207, !70, i64 24}
!214 = !{!"branch_weights", i32 311, i32 1}
!215 = !{!"branch_weights", i32 54860, i32 193}
!216 = !{!"branch_weights", i32 54741, i32 311}
!217 = distinct !{!217, !74}
!218 = !{!"branch_weights", i32 5373, i32 311}
!219 = distinct !{!219, !74}
!220 = distinct !{!220, !74}
!221 = distinct !{!221, !74}
!222 = distinct !{!222, !74}
!223 = distinct !{!223, !74}
!224 = distinct !{!224, !74}
!225 = distinct !{!225, !74}
