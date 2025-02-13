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

@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sbitmap_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 63
  %3 = lshr i32 %2, 6
  %4 = shl nuw nsw i32 %3, 3
  %5 = add nuw nsw i32 %4, 16
  %6 = zext nneg i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #21
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  store i32 %0, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  store i32 %3, ptr %9, align 4, !tbaa !12
  store ptr null, ptr %7, align 8, !tbaa !13
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sbitmap_alloc_with_popcount(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @sbitmap_alloc(i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @xmalloc(i64 noundef %5) #21
  store ptr %6, ptr %2, align 8, !tbaa !13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sbitmap_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, 63
  %5 = lshr i32 %4, 6
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !12
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %7, 16
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @xrealloc(ptr noundef nonnull %0, i64 noundef %16) #21
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @xrealloc(ptr noundef nonnull %18, i64 noundef %6) #21
  store ptr %21, ptr %17, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %14, %20, %3
  %23 = phi ptr [ %17, %20 ], [ %17, %14 ], [ %0, %3 ]
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !6
  %26 = icmp ult i32 %25, %1
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = icmp eq i32 %2, 0
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %29, i64 %32
  %34 = shl nuw nsw i64 %32, 3
  %35 = sub nsw i64 %8, %34
  br i1 %28, label %63, label %36

36:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 -1, i64 %35, i1 false)
  %37 = load i32, ptr %24, align 8, !tbaa !6
  %38 = and i32 %37, 63
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = sub nuw nsw i32 64, %38
  %42 = zext nneg i32 %41 to i64
  %43 = lshr i64 -1, %42
  %44 = xor i64 %43, -1
  %45 = load i32, ptr %30, align 4, !tbaa !12
  %46 = add i32 %45, -1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !14
  %50 = or i64 %49, %44
  store i64 %50, ptr %48, align 8, !tbaa !14
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
  %61 = load i64, ptr %60, align 8, !tbaa !14
  %62 = and i64 %61, %57
  store i64 %62, ptr %60, align 8, !tbaa !14
  br label %91

63:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 0, i64 %35, i1 false)
  %64 = load ptr, ptr %23, align 8, !tbaa !13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %30, align 4, !tbaa !12
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
  %83 = load i64, ptr %82, align 8, !tbaa !14
  %84 = and i64 %83, %79
  store i64 %84, ptr %82, align 8, !tbaa !14
  %85 = load ptr, ptr %23, align 8, !tbaa !13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %84) #22
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds i8, ptr %85, i64 %81
  store i8 %89, ptr %90, align 1, !tbaa !16
  br label %91

91:                                               ; preds = %71, %76, %87, %73, %54, %51, %66, %63
  store i32 %1, ptr %24, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  store i32 %5, ptr %92, align 4, !tbaa !12
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @sbitmap_elt_popcount(i64 noundef %0) unnamed_addr #4 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %12, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %11, %3 ], [ 0, %1 ]
  %6 = lshr i64 %0, %4
  %7 = and i64 %6, 255
  %8 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !16
  %10 = zext i8 %9 to i64
  %11 = add i64 %5, %10
  %12 = add nuw nsw i64 %4, 8
  %13 = icmp ult i64 %4, 56
  br i1 %13, label %3, label %14, !llvm.loop !17

14:                                               ; preds = %3, %1
  %15 = phi i64 [ 0, %1 ], [ %11, %3 ]
  ret i64 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sbitmap_realloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 63
  %4 = lshr i32 %3, 6
  %5 = shl nuw nsw i32 %4, 3
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = icmp ult i64 %10, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  store i32 %1, ptr %13, align 8, !tbaa !6
  br label %20

14:                                               ; preds = %2
  %15 = add nuw nsw i32 %5, 16
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @xrealloc(ptr noundef nonnull %0, i64 noundef %16) #21
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 1
  store i32 %1, ptr %18, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 2
  store i32 %4, ptr %19, align 4, !tbaa !12
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %0, %12 ], [ %17, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 63
  %4 = lshr i32 %3, 6
  %5 = shl nuw nsw i32 %4, 3
  %6 = add nuw nsw i32 %5, 16
  %7 = add nuw nsw i32 %5, 24
  %8 = mul i32 %7, %0
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xmalloc(i64 noundef %9) #21
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %26, label %12

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
  store ptr %19, ptr %20, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 1
  store i32 %1, ptr %21, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 2
  store i32 %4, ptr %22, align 4, !tbaa !12
  store ptr null, ptr %19, align 8, !tbaa !13
  %23 = add nuw nsw i64 %16, 1
  %24 = add i32 %6, %17
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !llvm.loop !20

26:                                               ; preds = %15, %2
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 8 %4, i64 %8, i1 false)
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %12, i64 %7, i1 false)
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_copy_n(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %5, i64 %7, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %11, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @sbitmap_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %4, i64 %8)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @sbitmap_empty_p(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %15, label %10, !llvm.loop !21

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 1, %7 ], [ 0, %10 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_range_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 6
  %5 = and i32 %1, 63
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = add i32 %2, %1
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %3, %10
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !14
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
  %39 = load i64, ptr %38, align 8, !tbaa !14
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = add i32 %36, -64
  %43 = add nuw nsw i32 %35, 1
  %44 = icmp ugt i32 %42, 63
  br i1 %44, label %34, label %45, !llvm.loop !22

45:                                               ; preds = %41, %29
  %46 = phi i32 [ %31, %29 ], [ %42, %41 ]
  %47 = phi i32 [ %32, %29 ], [ %43, %41 ]
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !14
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
define dso_local void @sbitmap_zero(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 0, i64 %6, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_ones(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 -1, i64 %6, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 -1, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = and i32 %12, 63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = sub nuw nsw i32 64, %13
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 -1, %17
  %19 = load i32, ptr %3, align 4, !tbaa !12
  %20 = add i32 %19, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %21
  store i64 %18, ptr %22, align 8, !tbaa !14
  %23 = load ptr, ptr %0, align 8, !tbaa !13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %18) #22
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds i8, ptr %23, i64 %21
  store i8 %27, ptr %28, align 1, !tbaa !16
  br label %29

29:                                               ; preds = %15, %25, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_vector_zero(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  tail call void @sbitmap_zero(ptr noundef %9) #22
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !23

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_vector_ones(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  tail call void @sbitmap_ones(ptr noundef %9) #22
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !24

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_union_of_diff_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %36, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %34, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %35, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !14
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !14
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !14
  %29 = xor i64 %28, -1
  %30 = and i64 %26, %29
  %31 = or i64 %30, %24
  %32 = load i64, ptr %22, align 8, !tbaa !14
  %33 = xor i64 %31, %32
  %34 = or i64 %33, %18
  %35 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %31, ptr %22, align 8, !tbaa !14
  %36 = add nuw i32 %17, 1
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %16, !llvm.loop !25

38:                                               ; preds = %16
  %39 = icmp ne i64 %34, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %38, %14
  %42 = phi i8 [ 0, %14 ], [ %40, %38 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_union_of_diff(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !13
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
  %32 = load i64, ptr %28, align 8, !tbaa !14
  %33 = getelementptr inbounds i64, ptr %27, i64 1
  %34 = load i64, ptr %27, align 8, !tbaa !14
  %35 = getelementptr inbounds i64, ptr %26, i64 1
  %36 = load i64, ptr %26, align 8, !tbaa !14
  %37 = xor i64 %36, -1
  %38 = and i64 %34, %37
  %39 = or i64 %38, %32
  %40 = getelementptr inbounds i64, ptr %29, i64 1
  store i64 %39, ptr %29, align 8, !tbaa !14
  %41 = add nuw i32 %30, 1
  %42 = icmp eq i32 %41, %6
  br i1 %42, label %43, label %25, !llvm.loop !26

43:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_not(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 432, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %2, %9
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %20, %12 ], [ 0, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %6, %10 ]
  %15 = phi ptr [ %19, %12 ], [ %5, %10 ]
  %16 = getelementptr inbounds i64, ptr %14, i64 1
  %17 = load i64, ptr %14, align 8, !tbaa !14
  %18 = xor i64 %17, -1
  %19 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %18, ptr %15, align 8, !tbaa !14
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %12, !llvm.loop !27

22:                                               ; preds = %12, %10
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !6
  %25 = and i32 %24, 63
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = add i32 %4, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = sub nuw nsw i32 64, %25
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 -1, %33
  %35 = and i64 %31, %34
  store i64 %35, ptr %30, align 8, !tbaa !14
  br label %36

36:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_difference(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 456, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = icmp ult i32 %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 459, ptr noundef nonnull @.str.1) #21
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %5)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %29, %22 ], [ %8, %17 ]
  %24 = phi ptr [ %27, %22 ], [ %7, %17 ]
  %25 = phi ptr [ %33, %22 ], [ %6, %17 ]
  %26 = phi i32 [ %34, %22 ], [ 0, %17 ]
  %27 = getelementptr inbounds i64, ptr %24, i64 1
  %28 = load i64, ptr %24, align 8, !tbaa !14
  %29 = getelementptr inbounds i64, ptr %23, i64 1
  %30 = load i64, ptr %23, align 8, !tbaa !14
  %31 = xor i64 %30, -1
  %32 = and i64 %28, %31
  %33 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 %32, ptr %25, align 8, !tbaa !14
  %34 = add nuw i32 %26, 1
  %35 = icmp eq i32 %34, %20
  br i1 %35, label %36, label %22, !llvm.loop !28

36:                                               ; preds = %22, %17
  %37 = phi ptr [ %6, %17 ], [ %33, %22 ]
  %38 = phi ptr [ %7, %17 ], [ %27, %22 ]
  %39 = icmp ne ptr %0, %1
  %40 = icmp ugt i32 %5, %19
  %41 = select i1 %39, i1 %40, i1 false
  %42 = icmp ult i32 %19, %5
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %53

44:                                               ; preds = %36, %44
  %45 = phi ptr [ %48, %44 ], [ %38, %36 ]
  %46 = phi ptr [ %50, %44 ], [ %37, %36 ]
  %47 = phi i32 [ %51, %44 ], [ %20, %36 ]
  %48 = getelementptr inbounds i64, ptr %45, i64 1
  %49 = load i64, ptr %45, align 8, !tbaa !14
  %50 = getelementptr inbounds i64, ptr %46, i64 1
  store i64 %49, ptr %46, align 8, !tbaa !14
  %51 = add nuw i32 %47, 1
  %52 = icmp eq i32 %51, %5
  br i1 %52, label %53, label %44, !llvm.loop !29

53:                                               ; preds = %44, %36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sbitmap_any_common_bits(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
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
  %16 = load i64, ptr %15, align 8, !tbaa !14
  %17 = load i64, ptr %14, align 8, !tbaa !14
  %18 = and i64 %17, %16
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr inbounds i64, ptr %14, i64 1
  %22 = getelementptr inbounds i64, ptr %15, i64 1
  %23 = add nuw i32 %13, 1
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %25, label %12, !llvm.loop !30

25:                                               ; preds = %12, %20, %2
  %26 = phi i8 [ 0, %2 ], [ 0, %20 ], [ 1, %12 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !13
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
  %21 = load i64, ptr %18, align 8, !tbaa !14
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !14
  %24 = and i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !14
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !14
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !31

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_and_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = load ptr, ptr %0, align 8, !tbaa !13
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
  %20 = load i64, ptr %17, align 8, !tbaa !14
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !14
  %23 = and i64 %22, %20
  br i1 %7, label %32, label %24

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !14
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %23) #22
  %29 = trunc i64 %28 to i8
  store i8 %29, ptr %16, align 1, !tbaa !16
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %16, %13 ]
  %34 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !14
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %13, !llvm.loop !32

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_xor_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !13
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
  %21 = load i64, ptr %18, align 8, !tbaa !14
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !14
  %24 = xor i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !14
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !14
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !33

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_xor_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = load ptr, ptr %0, align 8, !tbaa !13
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
  %20 = load i64, ptr %17, align 8, !tbaa !14
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !14
  %23 = xor i64 %22, %20
  br i1 %7, label %32, label %24

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !14
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %23) #22
  %29 = trunc i64 %28 to i8
  store i8 %29, ptr %16, align 1, !tbaa !16
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %16, %13 ]
  %34 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !14
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %13, !llvm.loop !34

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !13
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
  %21 = load i64, ptr %18, align 8, !tbaa !14
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !14
  %24 = or i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !14
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !14
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !35

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_or_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = load ptr, ptr %0, align 8, !tbaa !13
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
  %20 = load i64, ptr %17, align 8, !tbaa !14
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !14
  %23 = or i64 %22, %20
  br i1 %7, label %32, label %24

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !14
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %23) #22
  %29 = trunc i64 %28 to i8
  store i8 %29, ptr %16, align 1, !tbaa !16
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %16, %13 ]
  %34 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !14
  %35 = add nuw i32 %14, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %13, !llvm.loop !36

37:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sbitmap_a_subset_b_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
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
  %13 = load i64, ptr %11, align 8, !tbaa !14
  %14 = load i64, ptr %10, align 8, !tbaa !14
  %15 = or i64 %14, %13
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = add nuw i32 %12, 1
  %19 = getelementptr inbounds i64, ptr %11, i64 1
  %20 = getelementptr inbounds i64, ptr %10, i64 1
  %21 = icmp eq i32 %18, %4
  br i1 %21, label %22, label %9, !llvm.loop !37

22:                                               ; preds = %9, %17, %2
  %23 = phi i8 [ 1, %2 ], [ 1, %17 ], [ 0, %9 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 675, ptr noundef nonnull @.str.1) #21
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
  %24 = load i64, ptr %21, align 8, !tbaa !14
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !14
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !14
  %29 = and i64 %28, %26
  %30 = or i64 %29, %24
  %31 = load i64, ptr %22, align 8, !tbaa !14
  %32 = xor i64 %30, %31
  %33 = or i64 %32, %18
  %34 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %30, ptr %22, align 8, !tbaa !14
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %16, !llvm.loop !38

37:                                               ; preds = %16
  %38 = icmp ne i64 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i8 [ 0, %14 ], [ %39, %37 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_a_or_b_and_c(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !13
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
  %23 = load i64, ptr %19, align 8, !tbaa !14
  %24 = getelementptr inbounds i64, ptr %18, i64 1
  %25 = load i64, ptr %18, align 8, !tbaa !14
  %26 = getelementptr inbounds i64, ptr %17, i64 1
  %27 = load i64, ptr %17, align 8, !tbaa !14
  %28 = and i64 %27, %25
  %29 = or i64 %28, %23
  %30 = getelementptr inbounds i64, ptr %20, i64 1
  store i64 %29, ptr %20, align 8, !tbaa !14
  %31 = add nuw i32 %21, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %16, !llvm.loop !39

33:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_or_c_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !13
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
  %24 = load i64, ptr %21, align 8, !tbaa !14
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !14
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !14
  %29 = or i64 %28, %26
  %30 = and i64 %29, %24
  %31 = load i64, ptr %22, align 8, !tbaa !14
  %32 = xor i64 %30, %31
  %33 = or i64 %32, %18
  %34 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %30, ptr %22, align 8, !tbaa !14
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %16, !llvm.loop !40

37:                                               ; preds = %16
  %38 = icmp ne i64 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i8 [ 0, %14 ], [ %39, %37 ]
  ret i8 %41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_and_b_or_c(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

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
  %20 = load i64, ptr %16, align 8, !tbaa !14
  %21 = getelementptr inbounds i64, ptr %15, i64 1
  %22 = load i64, ptr %15, align 8, !tbaa !14
  %23 = getelementptr inbounds i64, ptr %14, i64 1
  %24 = load i64, ptr %14, align 8, !tbaa !14
  %25 = or i64 %24, %22
  %26 = and i64 %25, %20
  %27 = getelementptr inbounds i64, ptr %17, i64 1
  store i64 %26, ptr %17, align 8, !tbaa !14
  %28 = add nuw i32 %18, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %30, label %13, !llvm.loop !41

30:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_intersection_of_succs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %20, %38
  %27 = phi i32 [ 0, %20 ], [ %39, %38 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %17, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = icmp eq ptr %30, %25
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %37) #22
  br label %41

38:                                               ; preds = %26
  %39 = add nuw i32 %27, 1
  %40 = icmp eq i32 %39, %18
  br i1 %40, label %41, label %26, !llvm.loop !52

41:                                               ; preds = %38, %32
  %42 = phi i32 [ %27, %32 ], [ %18, %38 ]
  %43 = load ptr, ptr %16, align 8, !tbaa !46
  %44 = add i32 %42, 1
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %41
  %48 = load ptr, ptr @cfun, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %54 = icmp eq i32 %11, 0
  br label %56

55:                                               ; preds = %15
  tail call void @sbitmap_ones(ptr noundef nonnull %0) #22
  br label %85

56:                                               ; preds = %47, %81
  %57 = phi i32 [ %44, %47 ], [ %82, %81 ]
  %58 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %43, i32 noundef %57) #22
  %59 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = icmp eq ptr %60, %52
  %62 = select i1 %61, i1 true, i1 %54
  br i1 %62, label %81, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !51
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %1, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !19
  %69 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 3
  br label %70

70:                                               ; preds = %63, %70
  %71 = phi ptr [ %76, %70 ], [ %53, %63 ]
  %72 = phi ptr [ %74, %70 ], [ %69, %63 ]
  %73 = phi i32 [ %79, %70 ], [ 0, %63 ]
  %74 = getelementptr inbounds i64, ptr %72, i64 1
  %75 = load i64, ptr %72, align 8, !tbaa !14
  %76 = getelementptr inbounds i64, ptr %71, i64 1
  %77 = load i64, ptr %71, align 8, !tbaa !14
  %78 = and i64 %77, %75
  store i64 %78, ptr %71, align 8, !tbaa !14
  %79 = add nuw i32 %73, 1
  %80 = icmp eq i32 %79, %11
  br i1 %80, label %81, label %70, !llvm.loop !53

81:                                               ; preds = %70, %56
  %82 = add nuw i32 %57, 1
  %83 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %56, label %85, !llvm.loop !54

85:                                               ; preds = %81, %41, %55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !55
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_intersection_of_preds(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 794, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = load ptr, ptr %9, align 8, !tbaa !57
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @cfun, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %19, %29
  %25 = phi i32 [ 0, %19 ], [ %30, %29 ]
  %26 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef %25) #22
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = add nuw i32 %25, 1
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %38, label %24, !llvm.loop !60

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %37) #22
  br i1 %18, label %51, label %38

38:                                               ; preds = %29, %32
  %39 = phi i32 [ %25, %32 ], [ %17, %29 ]
  %40 = load ptr, ptr %9, align 8, !tbaa !57
  %41 = add i32 %39, 1
  %42 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load ptr, ptr @cfun, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %50 = icmp eq i32 %11, 0
  br label %52

51:                                               ; preds = %15, %32
  tail call void @sbitmap_ones(ptr noundef nonnull %0) #22
  br label %80

52:                                               ; preds = %44, %76
  %53 = phi i32 [ %41, %44 ], [ %77, %76 ]
  %54 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef %53) #22
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = icmp eq ptr %55, %48
  %57 = select i1 %56, i1 true, i1 %50
  br i1 %57, label %76, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !51
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !19
  %64 = getelementptr inbounds %struct.simple_bitmap_def, ptr %63, i64 0, i32 3
  br label %65

65:                                               ; preds = %58, %65
  %66 = phi ptr [ %71, %65 ], [ %49, %58 ]
  %67 = phi ptr [ %69, %65 ], [ %64, %58 ]
  %68 = phi i32 [ %74, %65 ], [ 0, %58 ]
  %69 = getelementptr inbounds i64, ptr %67, i64 1
  %70 = load i64, ptr %67, align 8, !tbaa !14
  %71 = getelementptr inbounds i64, ptr %66, i64 1
  %72 = load i64, ptr %66, align 8, !tbaa !14
  %73 = and i64 %72, %70
  store i64 %73, ptr %66, align 8, !tbaa !14
  %74 = add nuw i32 %68, 1
  %75 = icmp eq i32 %74, %11
  br i1 %75, label %76, label %65, !llvm.loop !61

76:                                               ; preds = %65, %52
  %77 = add nuw i32 %53, 1
  %78 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %52, label %80, !llvm.loop !62

80:                                               ; preds = %76, %38, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_union_of_succs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 836, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %20, %39
  %27 = phi i32 [ 0, %20 ], [ %40, %39 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %17, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = icmp eq ptr %30, %25
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %37) #22
  %38 = load ptr, ptr %16, align 8, !tbaa !46
  br label %42

39:                                               ; preds = %26
  %40 = add nuw i32 %27, 1
  %41 = icmp eq i32 %40, %18
  br i1 %41, label %42, label %26, !llvm.loop !63

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
  %51 = load ptr, ptr @cfun, align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !48
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
  %63 = load ptr, ptr %62, align 8, !tbaa !49
  %64 = icmp eq ptr %63, %55
  %65 = select i1 %64, i1 true, i1 %57
  br i1 %65, label %84, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !51
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !19
  %72 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3
  br label %73

73:                                               ; preds = %66, %73
  %74 = phi ptr [ %79, %73 ], [ %56, %66 ]
  %75 = phi ptr [ %77, %73 ], [ %72, %66 ]
  %76 = phi i32 [ %82, %73 ], [ 0, %66 ]
  %77 = getelementptr inbounds i64, ptr %75, i64 1
  %78 = load i64, ptr %75, align 8, !tbaa !14
  %79 = getelementptr inbounds i64, ptr %74, i64 1
  %80 = load i64, ptr %74, align 8, !tbaa !14
  %81 = or i64 %80, %78
  store i64 %81, ptr %74, align 8, !tbaa !14
  %82 = add nuw i32 %76, 1
  %83 = icmp eq i32 %82, %11
  br i1 %83, label %84, label %73, !llvm.loop !64

84:                                               ; preds = %73, %59
  %85 = add nuw i32 %60, 1
  %86 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #22
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %59, label %88, !llvm.loop !65

88:                                               ; preds = %84, %47, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbitmap_union_of_preds(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %2) #22
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = load ptr, ptr %9, align 8, !tbaa !57
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @cfun, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %19, %36
  %25 = phi i32 [ 0, %19 ], [ %37, %36 ]
  %26 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef %25) #22
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !51
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  tail call void @sbitmap_copy(ptr noundef nonnull %0, ptr noundef %34) #22
  %35 = load ptr, ptr %9, align 8, !tbaa !57
  br label %39

36:                                               ; preds = %24
  %37 = add nuw i32 %25, 1
  %38 = icmp eq i32 %37, %17
  br i1 %38, label %39, label %24, !llvm.loop !66

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
  %48 = load ptr, ptr @cfun, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %53 = icmp eq i32 %11, 0
  br label %55

54:                                               ; preds = %39
  tail call void @sbitmap_zero(ptr noundef nonnull %0) #22
  br label %83

55:                                               ; preds = %47, %79
  %56 = phi i32 [ %45, %47 ], [ %80, %79 ]
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef %56) #22
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = icmp eq ptr %58, %51
  %60 = select i1 %59, i1 true, i1 %53
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !51
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !19
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %66, i64 0, i32 3
  br label %68

68:                                               ; preds = %61, %68
  %69 = phi ptr [ %74, %68 ], [ %52, %61 ]
  %70 = phi ptr [ %72, %68 ], [ %67, %61 ]
  %71 = phi i32 [ %77, %68 ], [ 0, %61 ]
  %72 = getelementptr inbounds i64, ptr %70, i64 1
  %73 = load i64, ptr %70, align 8, !tbaa !14
  %74 = getelementptr inbounds i64, ptr %69, i64 1
  %75 = load i64, ptr %69, align 8, !tbaa !14
  %76 = or i64 %75, %73
  store i64 %76, ptr %69, align 8, !tbaa !14
  %77 = add nuw i32 %71, 1
  %78 = icmp eq i32 %77, %11
  br i1 %78, label %79, label %68, !llvm.loop !67

79:                                               ; preds = %68, %55
  %80 = add nuw i32 %56, 1
  %81 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #22
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %55, label %83, !llvm.loop !68

83:                                               ; preds = %79, %44, %54
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @sbitmap_first_set_bit(ptr noundef %0) local_unnamed_addr #14 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %0) #22
  %4 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #22, !range !70
  %5 = icmp eq i8 %4, 0
  %6 = load i32, ptr %2, align 4
  %7 = select i1 %5, i32 -1, i32 %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !71
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !75
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !14
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !71
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !71
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !73
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !73
  %25 = load ptr, ptr %0, align 8, !tbaa !75
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !14
  store i64 %28, ptr %3, align 8, !tbaa !76
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !77

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !78

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !73
  store i64 %34, ptr %3, align 8, !tbaa !76
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !69
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !71
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @sbitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
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
  %15 = load i64, ptr %14, align 8, !tbaa !14
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
  br i1 %16, label %6, label %29, !llvm.loop !79

29:                                               ; preds = %6, %27
  %30 = phi i32 [ %28, %27 ], [ -1, %6 ]
  ret i32 %30
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sbitmap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
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
  %27 = load i64, ptr %16, align 8, !tbaa !14
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
  br i1 %37, label %17, label %38, !llvm.loop !80

38:                                               ; preds = %26
  %39 = add nuw nsw i64 %14, 1
  %40 = icmp ult i64 %39, %12
  %41 = select i1 %40, i1 %36, i1 false
  br i1 %41, label %13, label %42, !llvm.loop !81

42:                                               ; preds = %38, %2
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sbitmap_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %4) #22
  %6 = load i32, ptr %3, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2, %38
  %9 = phi i32 [ %39, %38 ], [ %6, %2 ]
  %10 = phi i32 [ %40, %38 ], [ 30, %2 ]
  %11 = phi i32 [ %41, %38 ], [ 0, %2 ]
  %12 = lshr i32 %11, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !14
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
  %37 = load i32, ptr %3, align 8, !tbaa !6
  br label %38

38:                                               ; preds = %8, %25
  %39 = phi i32 [ %37, %25 ], [ %9, %8 ]
  %40 = phi i32 [ %36, %25 ], [ %10, %8 ]
  %41 = add nuw i32 %11, 1
  %42 = icmp ult i32 %41, %39
  br i1 %42, label %8, label %43, !llvm.loop !82

43:                                               ; preds = %38, %2
  %44 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_sbitmap(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @dump_sbitmap_file(ptr noundef %2, ptr noundef %0) #22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sbitmap_vector(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #16 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @dump_sbitmap(ptr noundef %0, ptr noundef %15) #22
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !llvm.loop !83

18:                                               ; preds = %10, %5
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @sbitmap_popcount(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = zext i32 %6 to i64
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %1)
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !12
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
  %20 = load ptr, ptr %0, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %34
  %24 = phi i64 [ 0, %19 ], [ %37, %34 ]
  %25 = phi i64 [ 0, %19 ], [ %36, %34 ]
  br i1 %21, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %20, i64 %24
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = zext i8 %28 to i64
  br label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %24
  %32 = load i64, ptr %31, align 8, !tbaa !14
  %33 = tail call fastcc i64 @sbitmap_elt_popcount(i64 noundef %32) #22
  br label %34

34:                                               ; preds = %26, %30
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = add i64 %35, %25
  %37 = add nuw nsw i64 %24, 1
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !84

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
  %49 = load i64, ptr %48, align 8, !tbaa !14
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 8}
!7 = !{!"simple_bitmap_def", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!7, !11, i64 12}
!13 = !{!7, !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!8, !8, i64 0}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = !{!43, !8, i64 8}
!43 = !{!"function", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!44 = !{!45, !8, i64 16}
!45 = !{!"control_flow_graph", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 40, !11, i64 48, !9, i64 52, !9, i64 60, !11, i64 68, !11, i64 72}
!46 = !{!47, !8, i64 8}
!47 = !{!"basic_block_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 48, !8, i64 56, !9, i64 64, !15, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!48 = !{!45, !8, i64 8}
!49 = !{!50, !8, i64 8}
!50 = !{!"edge_def", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !15, i64 56}
!51 = !{!47, !11, i64 80}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = !{!56, !11, i64 0}
!56 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !9, i64 8}
!57 = !{!47, !8, i64 0}
!58 = !{!45, !8, i64 0}
!59 = !{!50, !8, i64 0}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = !{!11, !11, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{!72, !11, i64 12}
!72 = !{!"", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !15, i64 24}
!73 = !{!72, !11, i64 16}
!74 = !{!72, !11, i64 8}
!75 = !{!72, !8, i64 0}
!76 = !{!72, !15, i64 24}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
