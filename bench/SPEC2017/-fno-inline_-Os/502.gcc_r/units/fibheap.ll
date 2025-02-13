; ModuleID = 'fibheap.c'
source_filename = "fibheap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.fibheap = type { i64, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"Can't force minimum on fibheap.\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fibheap_new() local_unnamed_addr #0 !prof !67 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #13
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @fibheap_insert(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !68 {
  %4 = tail call fastcc ptr @fibnode_new() #14
  %5 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 4
  store i64 %1, ptr %6, align 8, !tbaa !76
  tail call fastcc void @fibheap_ins_root(ptr noundef %0, ptr noundef %4) #14
  %7 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !79

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.fibnode, ptr %8, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !76
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %16, !prof !80

15:                                               ; preds = %10, %3
  store ptr %4, ptr %7, align 8, !tbaa !77
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i64, ptr %0, align 8, !tbaa !81
  %18 = add i64 %17, 1
  store i64 %18, ptr %0, align 8, !tbaa !81
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fibnode_new() unnamed_addr #0 !prof !68 !PGOFuncName !82 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #13
  %2 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 2
  store ptr %1, ptr %2, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !84
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibheap_ins_root(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !85 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !88

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !84
  br label %10

9:                                                ; preds = %2
  tail call fastcc void @fibnode_insert_after(ptr noundef nonnull %4, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @fibheap_min(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !89 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fibnode, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @fibheap_min_key(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !89 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fibnode, ptr %3, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !76
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %7, %5 ], [ 0, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local noundef ptr @fibheap_union(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !89 {
  %3 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fibheap, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.fibnode, ptr %12, i64 0, i32 3
  store ptr %8, ptr %13, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.fibnode, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.fibnode, ptr %15, i64 0, i32 3
  store ptr %4, ptr %16, align 8, !tbaa !84
  store ptr %15, ptr %11, align 8, !tbaa !83
  store ptr %12, ptr %14, align 8, !tbaa !83
  %17 = load i64, ptr %1, align 8, !tbaa !81
  %18 = load i64, ptr %0, align 8, !tbaa !81
  %19 = add i64 %18, %17
  store i64 %19, ptr %0, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.fibheap, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = tail call fastcc i32 @fibheap_compare(ptr noundef %21, ptr noundef %23) #14
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  store ptr %21, ptr %22, align 8, !tbaa !77
  br label %27

27:                                               ; preds = %10, %26, %6, %2
  %28 = phi ptr [ %0, %2 ], [ %1, %6 ], [ %1, %26 ], [ %1, %10 ]
  %29 = phi ptr [ %1, %2 ], [ %0, %6 ], [ %0, %26 ], [ %0, %10 ]
  tail call void @free(ptr noundef nonnull %28) #14
  ret ptr %29
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @fibheap_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !90 !PGOFuncName !91 {
  %3 = getelementptr inbounds %struct.fibnode, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !76
  %7 = icmp slt i64 %4, %6
  %8 = icmp sgt i64 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9, !prof !92
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fibheap_extract_min(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !93 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !94

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @fibheap_extr_min_node(ptr noundef nonnull %0) #14
  %7 = getelementptr inbounds %struct.fibnode, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @free(ptr noundef %6) #14
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @fibheap_extr_min_node(ptr nocapture noundef %0) unnamed_addr #8 !prof !68 !PGOFuncName !95 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.fibnode, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !97

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %11, %7 ], [ null, %1 ]
  %9 = phi ptr [ %13, %7 ], [ %5, %1 ]
  %10 = icmp eq ptr %8, null
  %11 = select i1 %10, ptr %9, ptr %8, !prof !98
  %12 = getelementptr inbounds %struct.fibnode, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  store ptr null, ptr %9, align 8, !tbaa !99
  tail call fastcc void @fibheap_ins_root(ptr noundef %0, ptr noundef nonnull %9) #14
  %14 = icmp ne ptr %13, %11
  %15 = icmp ne ptr %13, null
  %16 = and i1 %15, %14
  br i1 %16, label %7, label %17, !prof !100, !llvm.loop !101

17:                                               ; preds = %7, %1
  tail call fastcc void @fibheap_rem_root(ptr noundef %0, ptr noundef %3) #14
  %18 = load i64, ptr %0, align 8, !tbaa !81
  %19 = add i64 %18, -1
  store i64 %19, ptr %0, align 8, !tbaa !81
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22, !prof !79

21:                                               ; preds = %17
  store ptr null, ptr %2, align 8, !tbaa !77
  br label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fibnode, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !84
  store ptr %24, ptr %2, align 8, !tbaa !77
  tail call fastcc void @fibheap_consolidate(ptr noundef nonnull %0) #14
  br label %25

25:                                               ; preds = %22, %21
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @fibheap_replace_key_data(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #8 !prof !103 {
  %5 = tail call fastcc i32 @fibheap_comp_data(i64 noundef %2, ptr noundef %3, ptr noundef %1) #14
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %28, label %7, !prof !104

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !76
  store ptr %3, ptr %8, align 8, !tbaa !69
  store i64 %2, ptr %10, align 8, !tbaa !76
  %12 = load ptr, ptr %1, align 8, !tbaa !99
  %13 = icmp eq i64 %11, %2
  br i1 %13, label %14, label %16, !prof !104

14:                                               ; preds = %7
  %15 = icmp eq i64 %2, -9223372036854775808
  br i1 %15, label %16, label %28

16:                                               ; preds = %14, %7
  %17 = icmp eq ptr %12, null
  br i1 %17, label %22, label %18, !prof !105

18:                                               ; preds = %16
  %19 = tail call fastcc i32 @fibheap_compare(ptr noundef nonnull %1, ptr noundef nonnull %12) #14
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22, !prof !106

21:                                               ; preds = %18
  tail call fastcc void @fibheap_cut(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #14
  tail call fastcc void @fibheap_cascading_cut(ptr noundef %0, ptr noundef nonnull %12) #14
  br label %22

22:                                               ; preds = %21, %18, %16
  %23 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = tail call fastcc i32 @fibheap_compare(ptr noundef nonnull %1, ptr noundef %24) #14
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28, !prof !107

27:                                               ; preds = %22
  store ptr %1, ptr %23, align 8, !tbaa !77
  br label %28

28:                                               ; preds = %22, %27, %14, %4
  %29 = phi ptr [ null, %4 ], [ %9, %14 ], [ %9, %27 ], [ %9, %22 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @fibheap_comp_data(i64 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !prof !103 !PGOFuncName !108 {
  %4 = alloca %struct.fibnode, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 4
  store i64 %0, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !69
  %7 = call fastcc i32 @fibheap_compare(ptr noundef nonnull %4, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibheap_cut(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !prof !109 !PGOFuncName !110 {
  %4 = tail call fastcc ptr @fibnode_remove(ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.fibnode, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 2147483647
  %8 = and i32 %7, 2147483647
  %9 = and i32 %6, -2147483648
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %5, align 8
  tail call fastcc void @fibheap_ins_root(ptr noundef %0, ptr noundef %1) #14
  store ptr null, ptr %1, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2147483647
  store i32 %13, ptr %11, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibheap_cascading_cut(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 !prof !111 !PGOFuncName !112 {
  %3 = load ptr, ptr %1, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5, !prof !113

5:                                                ; preds = %2, %14
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = phi ptr [ %6, %14 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.fibnode, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %14, !prof !114

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.fibnode, ptr %7, i64 0, i32 6
  %13 = or disjoint i32 %9, -2147483648
  store i32 %13, ptr %12, align 8
  br label %17

14:                                               ; preds = %5
  tail call fastcc void @fibheap_cut(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  %15 = load ptr, ptr %6, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !prof !115, !llvm.loop !116

17:                                               ; preds = %14, %2, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @fibheap_replace_data(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !89 {
  %4 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = tail call ptr @fibheap_replace_key_data(ptr noundef %0, ptr noundef %1, i64 noundef %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @fibheap_replace_key(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 !prof !103 {
  %4 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call ptr @fibheap_replace_key_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %7) #14
  %9 = shl i64 %5, 32
  %10 = ashr exact i64 %9, 32
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fibheap_delete_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !117 {
  %3 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call i64 @fibheap_replace_key(ptr noundef %0, ptr noundef %1, i64 noundef -9223372036854775808) #14, !range !118
  %6 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !119

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !120
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %10) #16
  tail call void @abort() #17
  unreachable

12:                                               ; preds = %2
  %13 = tail call ptr @fibheap_extract_min(ptr noundef nonnull %0) #14
  ret ptr %4
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fibheap_delete(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !67 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !121

5:                                                ; preds = %1, %5
  %6 = tail call fastcc ptr @fibheap_extr_min_node(ptr noundef nonnull %0) #14
  tail call void @free(ptr noundef %6) #14
  %7 = load ptr, ptr %2, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !122, !llvm.loop !123

9:                                                ; preds = %5, %1
  tail call void @free(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @fibheap_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !124 {
  %2 = load i64, ptr %0, align 8, !tbaa !81
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibheap_rem_root(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 !prof !85 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %8, label %6, !prof !88

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @fibnode_remove(ptr noundef nonnull %1) #14
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibheap_consolidate(ptr nocapture noundef %0) unnamed_addr #8 !prof !126 !PGOFuncName !127 {
  %2 = alloca [65 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %2, i8 0, i64 520, i1 false)
  %3 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !128

6:                                                ; preds = %1, %28
  %7 = phi ptr [ %31, %28 ], [ %4, %1 ]
  tail call fastcc void @fibheap_rem_root(ptr noundef nonnull %0, ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.fibnode, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2147483647
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [65 x ptr], ptr %2, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15, !prof !129

15:                                               ; preds = %6, %15
  %16 = phi i64 [ %24, %15 ], [ %11, %6 ]
  %17 = phi ptr [ %26, %15 ], [ %13, %6 ]
  %18 = phi ptr [ %25, %15 ], [ %12, %6 ]
  %19 = phi ptr [ %22, %15 ], [ %7, %6 ]
  %20 = tail call fastcc i32 @fibheap_compare(ptr noundef %19, ptr noundef nonnull %17) #14
  %21 = icmp sgt i32 %20, 0
  %22 = select i1 %21, ptr %17, ptr %19, !prof !130
  %23 = select i1 %21, ptr %19, ptr %17, !prof !130
  tail call fastcc void @fibheap_link(ptr noundef %23, ptr noundef %22) #14
  store ptr null, ptr %18, align 8, !tbaa !120
  %24 = add nuw nsw i64 %16, 1
  %25 = getelementptr inbounds [65 x ptr], ptr %2, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !prof !131, !llvm.loop !132

28:                                               ; preds = %15, %6
  %29 = phi ptr [ %7, %6 ], [ %22, %15 ]
  %30 = phi ptr [ %12, %6 ], [ %25, %15 ]
  store ptr %29, ptr %30, align 8, !tbaa !120
  %31 = load ptr, ptr %3, align 8, !tbaa !87
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !prof !133, !llvm.loop !134

33:                                               ; preds = %28, %1
  %34 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !77
  br label %35

35:                                               ; preds = %33, %47
  %36 = phi i64 [ 0, %33 ], [ %48, %47 ]
  %37 = getelementptr inbounds [65 x ptr], ptr %2, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40, !prof !135

40:                                               ; preds = %35
  tail call fastcc void @fibheap_ins_root(ptr noundef %0, ptr noundef nonnull %38) #14
  %41 = load ptr, ptr %34, align 8, !tbaa !77
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !136

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @fibheap_compare(ptr noundef nonnull %38, ptr noundef nonnull %41) #14
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47, !prof !137

46:                                               ; preds = %43, %40
  store ptr %38, ptr %34, align 8, !tbaa !77
  br label %47

47:                                               ; preds = %35, %46, %43
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, 65
  br i1 %49, label %50, label %35, !prof !138, !llvm.loop !139

50:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @fibnode_remove(ptr noundef %0) unnamed_addr #3 !prof !140 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.fibnode, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, %0
  %5 = select i1 %4, ptr null, ptr %3, !prof !142
  %6 = load ptr, ptr %0, align 8, !tbaa !99
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !143

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fibnode, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13, !prof !144

12:                                               ; preds = %8
  store ptr %5, ptr %9, align 8, !tbaa !96
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = getelementptr inbounds %struct.fibnode, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.fibnode, ptr %15, i64 0, i32 2
  store ptr %3, ptr %16, align 8, !tbaa !83
  %17 = load ptr, ptr %2, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.fibnode, ptr %17, i64 0, i32 3
  store ptr %15, ptr %18, align 8, !tbaa !84
  store ptr null, ptr %0, align 8, !tbaa !99
  store ptr %0, ptr %2, align 8, !tbaa !83
  store ptr %0, ptr %14, align 8, !tbaa !84
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibheap_link(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !145 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !147

6:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !96
  br label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  tail call fastcc void @fibnode_insert_after(ptr noundef %9, ptr noundef %0) #14
  br label %10

10:                                               ; preds = %7, %6
  store ptr %1, ptr %0, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 1
  %14 = and i32 %13, 2147483647
  %15 = and i32 %12, -2147483648
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.fibnode, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 2147483647
  store i32 %19, ptr %17, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fibnode_insert_after(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !148 !PGOFuncName !149 {
  %3 = getelementptr inbounds %struct.fibnode, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %9, !prof !150

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.fibnode, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 3
  store ptr %0, ptr %8, align 8, !tbaa !84
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !84
  %11 = load ptr, ptr %3, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.fibnode, ptr %11, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !83
  store ptr %1, ptr %3, align 8, !tbaa !84
  br label %13

13:                                               ; preds = %9, %6
  %14 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 2
  store ptr %0, ptr %14, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!66}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @fibheap_new, ptr @xcalloc, i64 192}
!36 = !{ptr @fibheap_insert, ptr @fibnode_new, i64 57398}
!37 = !{ptr @fibheap_insert, ptr @fibheap_ins_root, i64 57398}
!38 = !{ptr @fibnode_new, ptr @xcalloc, i64 57398}
!39 = !{ptr @fibheap_ins_root, ptr @fibnode_insert_after, i64 545539}
!40 = !{ptr @fibheap_extract_min, ptr @fibheap_extr_min_node, i64 57397}
!41 = !{ptr @fibheap_extract_min, ptr @free, i64 57397}
!42 = !{ptr @fibheap_extr_min_node, ptr @fibheap_ins_root, i64 218804}
!43 = !{ptr @fibheap_extr_min_node, ptr @fibheap_rem_root, i64 57398}
!44 = !{ptr @fibheap_extr_min_node, ptr @fibheap_consolidate, i64 57203}
!45 = !{ptr @fibheap_replace_key_data, ptr @fibheap_comp_data, i64 15456}
!46 = !{ptr @fibheap_replace_key_data, ptr @fibheap_compare, i64 16970}
!47 = !{ptr @fibheap_replace_key_data, ptr @fibheap_cut, i64 1501}
!48 = !{ptr @fibheap_replace_key_data, ptr @fibheap_cascading_cut, i64 1501}
!49 = !{ptr @fibheap_comp_data, ptr @fibheap_compare, i64 15456}
!50 = !{ptr @fibheap_cut, ptr @fibnode_remove, i64 1534}
!51 = !{ptr @fibheap_cut, ptr @fibheap_ins_root, i64 1534}
!52 = !{ptr @fibheap_cascading_cut, ptr @fibheap_cut, i64 65}
!53 = !{ptr @fibheap_replace_key, ptr @fibheap_replace_key_data, i64 15456}
!54 = !{ptr @fibheap_delete_node, ptr @fibheap_replace_key, i64 12081}
!55 = !{ptr @fibheap_delete_node, ptr @fwrite, i64 1}
!56 = !{ptr @fibheap_delete_node, ptr @abort, i64 1}
!57 = !{ptr @fibheap_delete_node, ptr @fibheap_extract_min, i64 12080}
!58 = !{ptr @fibheap_delete, ptr @fibheap_extr_min_node, i64 1}
!59 = !{ptr @fibheap_delete, ptr @free, i64 193}
!60 = !{ptr @fibheap_rem_root, ptr @fibnode_remove, i64 545539}
!61 = !{ptr @fibheap_consolidate, ptr @fibheap_rem_root, i64 545531}
!62 = !{ptr @fibheap_consolidate, ptr @fibheap_compare, i64 488328}
!63 = !{ptr @fibheap_consolidate, ptr @fibheap_link, i64 220338}
!64 = !{ptr @fibheap_consolidate, ptr @fibheap_ins_root, i64 325194}
!65 = !{ptr @fibheap_link, ptr @fibnode_insert_after, i64 182575}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 192}
!68 = !{!"function_entry_count", i64 57398}
!69 = !{!70, !71, i64 40}
!70 = !{!"fibnode", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !74, i64 32, !71, i64 40, !75, i64 48, !75, i64 51}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!"long", !72, i64 0}
!75 = !{!"int", !72, i64 0}
!76 = !{!70, !74, i64 32}
!77 = !{!78, !71, i64 8}
!78 = !{!"fibheap", !74, i64 0, !71, i64 8, !71, i64 16}
!79 = !{!"branch_weights", i32 195, i32 57205}
!80 = !{!"branch_weights", i32 199, i32 57007}
!81 = !{!78, !74, i64 0}
!82 = !{!"fibheap.c:fibnode_new"}
!83 = !{!70, !71, i64 16}
!84 = !{!70, !71, i64 24}
!85 = !{!"function_entry_count", i64 602938}
!86 = !{!"fibheap.c:fibheap_ins_root"}
!87 = !{!78, !71, i64 16}
!88 = !{!"branch_weights", i32 57399, i32 545541}
!89 = !{!"function_entry_count", i64 0}
!90 = !{!"function_entry_count", i64 520762}
!91 = !{!"fibheap.c:fibheap_compare"}
!92 = !{!"branch_weights", i32 157005, i32 363759}
!93 = !{!"function_entry_count", i64 57400}
!94 = !{!"branch_weights", i32 3, i32 57399}
!95 = !{!"fibheap.c:fibheap_extr_min_node"}
!96 = !{!70, !71, i64 8}
!97 = !{!"branch_weights", i32 1, i32 57398}
!98 = !{!"branch_weights", i32 37469, i32 181340}
!99 = !{!70, !71, i64 0}
!100 = !{!"branch_weights", i32 161410, i32 57398}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"function_entry_count", i64 15456}
!104 = !{!"branch_weights", i32 1, i32 15457}
!105 = !{!"branch_weights", i32 13943, i32 1515}
!106 = !{!"branch_weights", i32 1502, i32 14}
!107 = !{!"branch_weights", i32 13060, i32 2398}
!108 = !{!"fibheap.c:fibheap_comp_data"}
!109 = !{!"function_entry_count", i64 1534}
!110 = !{!"fibheap.c:fibheap_cut"}
!111 = !{!"function_entry_count", i64 1501}
!112 = !{!"fibheap.c:fibheap_cascading_cut"}
!113 = !{!"branch_weights", i32 1, i32 744}
!114 = !{!"branch_weights", i32 758, i32 34}
!115 = !{!"branch_weights", i32 744, i32 47}
!116 = distinct !{!116, !102}
!117 = !{!"function_entry_count", i64 12081}
!118 = !{i64 -2147483648, i64 2147483648}
!119 = !{!"branch_weights", i32 12082, i32 1}
!120 = !{!71, !71, i64 0}
!121 = !{!"branch_weights", i32 192, i32 1}
!122 = !{!"branch_weights", i32 1, i32 0}
!123 = distinct !{!123, !102}
!124 = !{!"function_entry_count", i64 45329}
!125 = !{!"fibheap.c:fibheap_rem_root"}
!126 = !{!"function_entry_count", i64 57204}
!127 = !{!"fibheap.c:fibheap_consolidate"}
!128 = !{!"branch_weights", i32 1, i32 57204}
!129 = !{!"branch_weights", i32 325199, i32 220342}
!130 = !{!"branch_weights", i32 54720, i32 165623}
!131 = !{!"branch_weights", i32 220342, i32 0}
!132 = distinct !{!132, !102}
!133 = !{!"branch_weights", i32 57204, i32 488337}
!134 = distinct !{!134, !102}
!135 = !{!"branch_weights", i32 3393062, i32 325200}
!136 = !{!"branch_weights", i32 57205, i32 267996}
!137 = !{!"branch_weights", i32 64429, i32 203568}
!138 = !{!"branch_weights", i32 57205, i32 3661056}
!139 = distinct !{!139, !102}
!140 = !{!"function_entry_count", i64 547074}
!141 = !{!"fibheap.c:fibnode_remove"}
!142 = !{!"branch_weights", i32 298, i32 546778}
!143 = !{!"branch_weights", i32 545541, i32 1535}
!144 = !{!"branch_weights", i32 599, i32 937}
!145 = !{!"function_entry_count", i64 220341}
!146 = !{!"fibheap.c:fibheap_link"}
!147 = !{!"branch_weights", i32 37766, i32 182577}
!148 = !{!"function_entry_count", i64 728116}
!149 = !{!"fibheap.c:fibnode_insert_after"}
!150 = !{!"branch_weights", i32 88916, i32 639202}
