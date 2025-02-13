; ModuleID = 'gimple-iterator.c'
source_filename = "gimple-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }

@.str = private unnamed_addr constant [18 x i8] c"gimple-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 152, ptr noundef nonnull @.str.1) #12
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call fastcc ptr @gimple_seq_first(ptr noundef nonnull %1) #13
  %12 = tail call fastcc ptr @gimple_seq_last(ptr noundef nonnull %1) #13
  tail call fastcc void @gimple_seq_set_first(ptr noundef nonnull %1, ptr noundef null) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef nonnull %1, ptr noundef null) #13
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #12
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %12
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #12
  br label %20

19:                                               ; preds = %10
  tail call fastcc void @gsi_insert_seq_nodes_before(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %2) #13
  br label %20

20:                                               ; preds = %18, %16, %3, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_seq_set_first(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 {
  store ptr %1, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_seq_set_last(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gsi_insert_seq_nodes_before(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @update_bb_for_stmts(ptr noundef %1, ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !15
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  store ptr %1, ptr %17, align 8, !tbaa !17
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  tail call fastcc void @gimple_seq_set_first(ptr noundef %20, ptr noundef nonnull %1) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %5, ptr %22, align 8, !tbaa !17
  store ptr %2, ptr %12, align 8, !tbaa !15
  br label %35

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = tail call fastcc ptr @gimple_seq_last(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !15
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  store ptr %1, ptr %30, align 8, !tbaa !17
  br label %33

31:                                               ; preds = %23
  tail call fastcc void @gimple_seq_set_first(ptr noundef %25, ptr noundef nonnull %1) #13
  %32 = load ptr, ptr %24, align 8, !tbaa !6
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ %25, %29 ]
  tail call fastcc void @gimple_seq_set_last(ptr noundef %34, ptr noundef %2) #13
  br label %35

35:                                               ; preds = %33, %21
  switch i32 %3, label %37 [
    i32 0, label %36
    i32 2, label %36
    i32 1, label %38
  ]

36:                                               ; preds = %35, %35
  store ptr %1, ptr %0, align 8, !tbaa !14
  br label %38

37:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %37, %35, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bb_for_stmts(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  tail call void @gimple_set_bb(ptr noundef %6, ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !20

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @update_modified_stmts(ptr noundef %1) #13
  tail call void @gsi_insert_seq_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_modified_stmts(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = tail call zeroext i8 @ssa_operands_active() #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5, %8
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  tail call fastcc void @update_stmt_if_modified(ptr noundef %9) #13
  call fastcc void @gsi_next(ptr noundef nonnull %2) #13
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %8, label %12, !llvm.loop !23

12:                                               ; preds = %8, %5, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ssa_operands_active() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #13
  store ptr %3, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !6
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #13
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #12
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  store ptr %4, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !25
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #12
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call fastcc ptr @gimple_seq_first(ptr noundef nonnull %1) #13
  %12 = tail call fastcc ptr @gimple_seq_last(ptr noundef nonnull %1) #13
  tail call fastcc void @gimple_seq_set_first(ptr noundef nonnull %1, ptr noundef null) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef nonnull %1, ptr noundef null) #13
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #12
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %12
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.1) #12
  br label %20

19:                                               ; preds = %10
  tail call fastcc void @gsi_insert_seq_nodes_after(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %2) #13
  br label %20

20:                                               ; preds = %18, %16, %3, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gsi_insert_seq_nodes_after(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @update_bb_for_stmts(ptr noundef %1, ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !17
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !15
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  tail call fastcc void @gimple_seq_set_last(ptr noundef %20, ptr noundef nonnull %2) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %5, ptr %22, align 8, !tbaa !15
  store ptr %1, ptr %12, align 8, !tbaa !17
  br label %33

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = tail call fastcc ptr @gimple_seq_last(ptr noundef %25) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #12
  %29 = load ptr, ptr %24, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %25, %23 ], [ %29, %28 ]
  tail call fastcc void @gimple_seq_set_first(ptr noundef %31, ptr noundef %1) #13
  %32 = load ptr, ptr %24, align 8, !tbaa !6
  tail call fastcc void @gimple_seq_set_last(ptr noundef %32, ptr noundef %2) #13
  br label %33

33:                                               ; preds = %30, %21
  switch i32 %3, label %38 [
    i32 0, label %34
    i32 2, label %35
    i32 1, label %36
  ]

34:                                               ; preds = %33
  store ptr %1, ptr %0, align 8, !tbaa !14
  br label %39

35:                                               ; preds = %33
  store ptr %2, ptr %0, align 8, !tbaa !14
  br label %39

36:                                               ; preds = %33
  br i1 %10, label %37, label %39

37:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #12
  br label %39

38:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #12
  br label %39

39:                                               ; preds = %37, %36, %38, %35, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @update_modified_stmts(ptr noundef %1) #13
  tail call void @gsi_insert_seq_after_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gsi_split_seq_after(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %6, %4 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = tail call ptr @gimple_seq_alloc() #12
  tail call fastcc void @gimple_seq_set_first(ptr noundef %16, ptr noundef %12) #13
  %17 = tail call fastcc ptr @gimple_seq_last(ptr noundef %15) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %16, ptr noundef %17) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %15, ptr noundef nonnull %2) #13
  store ptr null, ptr %13, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %12, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !15
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gsi_split_seq_before(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = tail call ptr @gimple_seq_alloc() #12
  store ptr %10, ptr %8, align 8, !tbaa !6
  tail call fastcc void @gimple_seq_set_first(ptr noundef %10, ptr noundef %2) #13
  %11 = tail call fastcc ptr @gimple_seq_last(ptr noundef %9) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %10, ptr noundef %11) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %9, ptr noundef %7) #13
  store ptr null, ptr %6, align 8, !tbaa !15
  %12 = icmp eq ptr %7, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !17
  br label %16

15:                                               ; preds = %5
  tail call fastcc void @gimple_seq_set_first(ptr noundef %9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_replace(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %4) #13, !range !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @gimple_get_lhs(ptr noundef %4) #12
  %11 = tail call ptr @gimple_get_lhs(ptr noundef %1) #12
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #12
  br label %14

14:                                               ; preds = %6, %9, %13
  %15 = tail call fastcc i32 @gimple_location(ptr noundef %4) #13
  tail call fastcc void @gimple_set_location(ptr noundef %1, i32 noundef %15) #13
  %16 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gimple_set_bb(ptr noundef %1, ptr noundef %16) #12
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %4, ptr noundef %1) #12
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @cfun, align 8, !tbaa !26
  tail call void @gimple_duplicate_stmt_histograms(ptr noundef %21, ptr noundef %1, ptr noundef %21, ptr noundef %4) #12
  %22 = load ptr, ptr @cfun, align 8, !tbaa !26
  tail call void @gimple_remove_stmt_histograms(ptr noundef %22, ptr noundef %4) #12
  tail call fastcc void @delink_stmt_imm_use(ptr noundef %4) #13
  %23 = tail call fastcc ptr @gsi_stmt_ptr(ptr noundef %0) #13
  store ptr %1, ptr %23, align 8, !tbaa !26
  tail call void @gimple_set_modified(ptr noundef %1, i8 noundef zeroext 1) #12
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  br label %24

24:                                               ; preds = %3, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #13, !range !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #13
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !24
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delink_stmt_imm_use(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = tail call zeroext i8 @ssa_operands_active() #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0) #13
  %7 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %6, %5 ]
  tail call fastcc void @delink_imm_use(ptr noundef %10) #13
  %11 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #13
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !27

14:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_modified_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @ssa_operands_active() #12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @update_stmt_if_modified(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !25
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !25
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !28
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !25
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !32
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !34
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !37
  store ptr %2, ptr %6, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !39
  store ptr %7, ptr %2, align 8, !tbaa !38
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !41
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #13
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !44
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !38
  store i8 0, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !19
  tail call fastcc void @gsi_insert_seq_nodes_before(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  tail call void @gsi_insert_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !19
  tail call fastcc void @gsi_insert_seq_nodes_after(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  tail call void @gsi_insert_after_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_remove(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #13, !range !25
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @insert_debug_temps_for_defs(ptr noundef %0) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @gimple_set_bb(ptr noundef %3, ptr noundef null) #12
  tail call fastcc void @delink_stmt_imm_use(ptr noundef %3) #13
  tail call void @gimple_set_modified(ptr noundef %3, i8 noundef zeroext 1) #12
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %3) #12
  %11 = load ptr, ptr @cfun, align 8, !tbaa !26
  tail call void @gimple_remove_stmt_histograms(ptr noundef %11, ptr noundef %3) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %17, i64 0, i32 2
  store ptr %15, ptr %20, align 8, !tbaa !17
  br label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  tail call fastcc void @gimple_seq_set_first(ptr noundef %23, ptr noundef %15) #13
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %15, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 1
  store ptr %17, ptr %27, align 8, !tbaa !15
  br label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  tail call fastcc void @gimple_seq_set_last(ptr noundef %30, ptr noundef %17) #13
  br label %31

31:                                               ; preds = %28, %26
  store ptr %15, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @insert_debug_temps_for_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remove_stmt_from_eh_lp(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_for_stmt(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #13
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #13, !range !25
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  br label %8

8:                                                ; preds = %7, %6
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13, !range !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8, %14
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call fastcc void @gsi_next(ptr noundef %0) #13
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13, !range !22
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %11, label %17, !llvm.loop !45

17:                                               ; preds = %14, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #12
  br label %18

18:                                               ; preds = %11, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_start_phis(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #13
  tail call fastcc void @gsi_start(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_after(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %3, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_before(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %3, i32 noundef 1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_to_bb_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #13
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13
  %8 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  call void @gsi_move_before(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %12

11:                                               ; preds = %6, %2
  call void @gsi_move_after(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %12

12:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gsi_insert_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13, !range !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %2, null
  br label %10

10:                                               ; preds = %72, %3
  %11 = phi ptr [ %0, %3 ], [ %73, %72 ]
  %12 = phi ptr [ %8, %3 ], [ %70, %72 ]
  %13 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %12) #13, !range !22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @phi_nodes(ptr noundef %12) #13
  %17 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %16) #13, !range !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @cfun, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %12, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %12) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %31 = tail call fastcc i32 @gimple_code(ptr noundef %30) #13, !range !25
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %36
  tail call fastcc void @gsi_next(ptr noundef %1) #13
  %34 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !22
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %38 = tail call fastcc i32 @gimple_code(ptr noundef %37) #13, !range !25
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %33, label %40, !llvm.loop !57

40:                                               ; preds = %36, %33, %29
  %41 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %12) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %74

44:                                               ; preds = %19, %15, %10
  %45 = load ptr, ptr %11, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !59
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %45) #13, !range !22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @cfun, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = icmp eq ptr %45, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %45) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %60 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !22
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %64 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %63) #12
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @gimple_code(ptr noundef %63) #13, !range !25
  %68 = trunc i32 %67 to i8
  switch i8 %68, label %69 [
    i8 9, label %74
    i8 14, label %74
  ]

69:                                               ; preds = %66, %53, %50, %44
  %70 = tail call ptr @split_edge(ptr noundef nonnull %11) #12
  br i1 %9, label %72, label %71

71:                                               ; preds = %69
  store ptr %70, ptr %2, align 8, !tbaa !26
  br label %72

72:                                               ; preds = %71, %69
  %73 = tail call fastcc ptr @single_pred_edge(ptr noundef %70) #13
  br label %10

74:                                               ; preds = %66, %66, %62, %59, %40, %26, %43
  %75 = phi i8 [ 1, %43 ], [ 1, %26 ], [ 0, %40 ], [ 0, %66 ], [ 0, %66 ], [ 1, %62 ], [ 1, %59 ]
  ret i8 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #12
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #13
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13, !range !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = load ptr, ptr @cfun, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = tail call fastcc ptr @single_succ_edge(ptr noundef %6) #13
  tail call void @gsi_commit_one_edge_insert(ptr noundef %7, ptr noundef null) #13
  %8 = load ptr, ptr @cfun, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %40, label %17

17:                                               ; preds = %0
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  br label %28

19:                                               ; preds = %34, %28
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = load ptr, ptr @cfun, align 8, !tbaa !26
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %40, label %28, !llvm.loop !67

28:                                               ; preds = %17, %19
  %29 = phi ptr [ %13, %17 ], [ %21, %19 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %30) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !68
  store ptr %31, ptr %18, align 8, !tbaa.struct !69
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %1) #13, !range !22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %19, label %34

34:                                               ; preds = %28, %34
  %35 = load ptr, ptr %1, align 8, !tbaa !26
  tail call void @gsi_commit_one_edge_insert(ptr noundef %35, ptr noundef null) #13
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %36 = load i32, ptr %2, align 8
  %37 = load ptr, ptr %18, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %1) #13, !range !22
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %19, label %34, !llvm.loop !70

40:                                               ; preds = %19, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_commit_one_edge_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !26
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  store ptr null, ptr %7, align 8, !tbaa !24
  %11 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #13, !range !22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef 0) #13
  br label %15

14:                                               ; preds = %10
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %16

16:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #13
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #13, !range !22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #13
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !26
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !71
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #13
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #13
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !26
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"gimple_seq_d", !8, i64 0, !8, i64 8, !8, i64 16}
!13 = !{!12, !8, i64 8}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !8, i64 8}
!16 = !{!"gimple_seq_node_d", !8, i64 0, !8, i64 8, !8, i64 16}
!17 = !{!16, !8, i64 16}
!18 = !{!7, !8, i64 16}
!19 = !{!16, !8, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{i8 0, i8 2}
!23 = distinct !{!23, !21}
!24 = !{!9, !9, i64 0}
!25 = !{i32 0, i32 256}
!26 = !{!8, !8, i64 0}
!27 = distinct !{!27, !21}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !9, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !9, i64 0}
!32 = !{!33, !31, i64 4}
!33 = !{!"ssa_operand_iterator_d", !9, i64 0, !31, i64 4, !8, i64 8, !8, i64 16, !31, i64 24, !31, i64 28, !8, i64 32}
!34 = !{!33, !9, i64 0}
!35 = !{!36, !8, i64 0}
!36 = !{!"ssa_use_operand_d", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 24}
!37 = !{!36, !8, i64 8}
!38 = !{!33, !8, i64 16}
!39 = !{!40, !8, i64 0}
!40 = !{!"use_optype_d", !8, i64 0, !36, i64 8}
!41 = !{!33, !31, i64 24}
!42 = !{!33, !31, i64 28}
!43 = !{!33, !8, i64 32}
!44 = !{!33, !8, i64 8}
!45 = distinct !{!45, !21}
!46 = !{!47, !31, i64 96}
!47 = !{!"basic_block_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 48, !8, i64 56, !9, i64 64, !29, i64 72, !31, i64 80, !31, i64 84, !31, i64 88, !31, i64 92, !31, i64 96}
!48 = !{!49, !8, i64 0}
!49 = !{!"gimple_bb_info", !8, i64 0, !8, i64 8}
!50 = !{!51, !8, i64 8}
!51 = !{!"edge_def", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !31, i64 40, !31, i64 44, !31, i64 48, !31, i64 52, !29, i64 56}
!52 = !{!53, !8, i64 8}
!53 = !{!"function", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !31, i64 104, !31, i64 108, !31, i64 112, !31, i64 116, !31, i64 120, !31, i64 124, !8, i64 128, !31, i64 136, !31, i64 137, !31, i64 138, !31, i64 138, !31, i64 138, !31, i64 138, !31, i64 138, !31, i64 138, !31, i64 138, !31, i64 139, !31, i64 139, !31, i64 139, !31, i64 139, !31, i64 139, !31, i64 139, !31, i64 139}
!54 = !{!55, !8, i64 8}
!55 = !{!"control_flow_graph", !8, i64 0, !8, i64 8, !8, i64 16, !31, i64 24, !31, i64 28, !31, i64 32, !8, i64 40, !31, i64 48, !9, i64 52, !9, i64 60, !31, i64 68, !31, i64 72}
!56 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26}
!57 = distinct !{!57, !21}
!58 = !{!51, !8, i64 0}
!59 = !{!51, !31, i64 48}
!60 = !{!55, !8, i64 0}
!61 = !{!47, !8, i64 0}
!62 = !{!49, !8, i64 8}
!63 = !{!47, !8, i64 8}
!64 = !{!65, !31, i64 0}
!65 = !{!"VEC_edge_base", !31, i64 0, !31, i64 4, !9, i64 8}
!66 = !{!47, !8, i64 56}
!67 = distinct !{!67, !21}
!68 = !{i64 0, i64 4, !30, i64 8, i64 8, !26}
!69 = !{i64 0, i64 8, !26}
!70 = distinct !{!70, !21}
!71 = !{!72, !31, i64 0}
!72 = !{!"", !31, i64 0, !8, i64 8}
