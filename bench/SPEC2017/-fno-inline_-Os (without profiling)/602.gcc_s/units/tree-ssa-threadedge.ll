; ModuleID = 'tree-ssa-threadedge.c'
source_filename = "tree-ssa-threadedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }

@ssa_name_values = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [22 x i8] c"tree-ssa-threadedge.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@stmt_count = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_ssa_name_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #13
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = add i32 %4, 1
  tail call fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %9) #13
  %10 = load ptr, ptr @ssa_name_values, align 8
  %11 = load i32, ptr %3, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %4, %2 ]
  %14 = phi ptr [ %10, %8 ], [ %5, %2 ]
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %14, i32 noundef %13, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #13
  tail call fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) #13
  %4 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12
  %5 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %4) #13
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !9
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %8) #13
  %9 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12, !nonnull !14, !noundef !14
  store i32 %0, ptr %9, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #13, !range !15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #14
  store ptr %6, ptr @ssa_name_values, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = load i32, ptr %0, align 8, !tbaa !9
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @threadedge_initialize_values() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #13
  %11 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %10) #13
  store ptr %11, ptr @ssa_name_values, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @threadedge_finalize_values() local_unnamed_addr #7 {
  tail call fastcc void @VEC_tree_heap_free() #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #7 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @potentially_threadable_block(ptr noundef %0) local_unnamed_addr #9 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #13, !range !24
  %16 = trunc i32 %15 to i8
  %17 = icmp ult i8 %16, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = shl nuw nsw i32 %15, 3
  %20 = zext nneg i32 %19 to i48
  %21 = lshr i48 1099528405248, %20
  %22 = trunc i48 %21 to i8
  br label %23

23:                                               ; preds = %18, %14, %8, %11, %1, %5
  %24 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 0, %11 ], [ 0, %8 ], [ 0, %14 ], [ %22, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !28
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !37
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @thread_across_edge(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  %13 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %14) #13
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #13
  %16 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %6, ptr noundef %15) #13
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %35, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %40

20:                                               ; preds = %12, %35
  %21 = phi ptr [ %36, %35 ], [ %16, %12 ]
  %22 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %21) #13
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %28) #13, !range !24
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #13
  %33 = load ptr, ptr %13, align 8, !tbaa !44
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %20, %26, %31
  %36 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %6) #13
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %20, label %19, !llvm.loop !45

39:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %68

40:                                               ; preds = %19, %5
  store i32 0, ptr @stmt_count, align 4, !tbaa !47
  %41 = tail call fastcc zeroext i8 @record_temporary_equivalences_from_phis(ptr noundef %1, ptr noundef %3) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @record_temporary_equivalences_from_stmts_at_dest(ptr noundef %1, ptr noundef %3, ptr noundef %4) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %44) #13, !range !24
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %68 [
    i8 1, label %49
    i8 3, label %49
    i8 5, label %49
  ]

49:                                               ; preds = %46, %46, %46
  %50 = tail call fastcc ptr @simplify_control_stmt_condition(ptr noundef %1, ptr noundef nonnull %44, ptr noundef %0, ptr noundef %4, i8 noundef zeroext %2) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %50) #14
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  %58 = tail call ptr @find_taken_edge(ptr noundef %57, ptr noundef nonnull %50) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  br label %63

63:                                               ; preds = %55, %60
  %64 = phi ptr [ %62, %60 ], [ null, %55 ]
  %65 = load ptr, ptr %56, align 8, !tbaa !44
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call fastcc void @remove_temporary_equivalences(ptr noundef %3) #13
  tail call void @register_jump_thread(ptr noundef nonnull %1, ptr noundef %58) #14
  br label %68

68:                                               ; preds = %46, %39, %67, %52, %49, %63, %43, %40
  tail call fastcc void @remove_temporary_equivalences(ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !48
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i8, ptr %0, align 8, !tbaa !50
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  store ptr %7, ptr %2, align 8, !tbaa !53
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !56
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #13
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !50
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @record_temporary_equivalences_from_phis(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #14
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %36
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13
  %12 = load i32, ptr %9, align 4, !tbaa !59
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #13
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #13
  %15 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #13
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = load i64, ptr %14, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = call fastcc i32 @gimple_code(ptr noundef %23) #13, !range !24
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = call fastcc ptr @gimple_bb(ptr noundef %23) #13
  %28 = load ptr, ptr %4, align 8, !tbaa !44
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %21, %17, %10
  %31 = call zeroext i8 @is_gimple_reg(ptr noundef %15) #14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @stmt_count, align 4, !tbaa !47
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @stmt_count, align 4, !tbaa !47
  br label %36

36:                                               ; preds = %33, %30
  call fastcc void @record_temporary_equivalence(ptr noundef %15, ptr noundef %14, ptr noundef %1) #13
  call fastcc void @gsi_next(ptr noundef nonnull %3) #13
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %10, label %39, !llvm.loop !60

39:                                               ; preds = %26, %36, %2
  %40 = phi i8 [ 1, %2 ], [ 1, %36 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @record_temporary_equivalences_from_stmts_at_dest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 94, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %10) #13
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13, !range !23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %164

13:                                               ; preds = %3, %161
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %14) #13, !range !24
  %16 = trunc i32 %15 to i8
  switch i8 %16, label %17 [
    i8 18, label %161
    i8 4, label %161
  ]

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %14) #13, !range !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %161

20:                                               ; preds = %17
  %21 = icmp eq i32 %15, 7
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %14) #13, !range !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %164

25:                                               ; preds = %20
  %26 = load i32, ptr @stmt_count, align 4, !tbaa !47
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr @stmt_count, align 4, !tbaa !47
  %28 = icmp slt i32 %26, %8
  br i1 %28, label %33, label %164

29:                                               ; preds = %22
  %30 = load i32, ptr @stmt_count, align 4, !tbaa !47
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @stmt_count, align 4, !tbaa !47
  %32 = icmp slt i32 %30, %8
  br i1 %32, label %40, label %164

33:                                               ; preds = %25
  %34 = icmp eq i32 %15, 6
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %14) #13
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %51, label %40

40:                                               ; preds = %29, %35, %33
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %14) #13, !range !24
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %161

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %14) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %161, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %14) #13
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %161

51:                                               ; preds = %46, %35
  %52 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %14) #13, !range !23
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %14) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_function_decl, ptr %55, i64 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 2047
  switch i32 %60, label %61 [
    i32 528, label %161
    i32 428, label %161
  ]

61:                                               ; preds = %57, %54, %51
  %62 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %14) #14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 141
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  br label %149

71:                                               ; preds = %64, %61
  %72 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %14) #14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 148
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %81 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  br label %149

83:                                               ; preds = %74, %71
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  %84 = tail call fastcc i32 @num_ssa_operands(ptr noundef %14) #13
  %85 = zext i32 %84 to i64
  %86 = tail call ptr @xcalloc(i64 noundef %85, i64 noundef 8) #14
  %87 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %14) #13
  %88 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %83, %110
  %91 = phi i32 [ %94, %110 ], [ 0, %83 ]
  %92 = phi ptr [ %111, %110 ], [ %87, %83 ]
  %93 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %92) #13
  %94 = add i32 %91, 1
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds ptr, ptr %86, i64 %95
  store ptr %93, ptr %96, align 8, !tbaa !12
  %97 = load i64, ptr %93, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 141
  br i1 %99, label %100, label %110

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %93, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !6
  %103 = load ptr, ptr @ssa_name_values, align 8
  %104 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #13
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %103, i32 noundef %102) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %92, ptr noundef nonnull %107) #13
  br label %110

110:                                              ; preds = %100, %90, %109, %106
  %111 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #13
  %112 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %90, label %114, !llvm.loop !63

114:                                              ; preds = %110, %83
  %115 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %14) #13, !range !23
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = tail call ptr @fold_call_stmt(ptr noundef %14, i8 noundef zeroext 0) #14
  br label %121

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @fold_assignment_stmt(ptr noundef %14) #13
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi ptr [ %118, %117 ], [ %120, %119 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load i64, ptr %122, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %122) #14
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128, %121
  %132 = tail call ptr %2(ptr noundef %14, ptr noundef %14) #14
  br label %133

133:                                              ; preds = %131, %128, %124
  %134 = phi ptr [ %122, %128 ], [ %132, %131 ], [ %122, %124 ]
  %135 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %14) #13
  %136 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133, %138
  %139 = phi i32 [ %141, %138 ], [ 0, %133 ]
  %140 = phi ptr [ %145, %138 ], [ %135, %133 ]
  %141 = add i32 %139, 1
  %142 = zext i32 %139 to i64
  %143 = getelementptr inbounds ptr, ptr %86, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !12
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %140, ptr noundef %144) #13
  %145 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #13
  %146 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %138, label %148, !llvm.loop !64

148:                                              ; preds = %138, %133
  tail call void @free(ptr noundef %86) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %149

149:                                              ; preds = %79, %148, %69
  %150 = phi ptr [ %70, %69 ], [ %82, %79 ], [ %134, %148 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %149
  %153 = load i64, ptr %150, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 141
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %150) #14
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156, %152
  %160 = tail call ptr @gimple_get_lhs(ptr noundef %14) #14
  tail call fastcc void @record_temporary_equivalence(ptr noundef %160, ptr noundef nonnull %150, ptr noundef %1) #13
  br label %161

161:                                              ; preds = %13, %13, %17, %46, %43, %40, %159, %156, %149, %57, %57
  call fastcc void @gsi_next(ptr noundef nonnull %4) #13
  %162 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13, !range !23
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %13, label %164, !llvm.loop !65

164:                                              ; preds = %161, %29, %25, %22, %3
  %165 = phi ptr [ null, %3 ], [ null, %22 ], [ null, %25 ], [ null, %29 ], [ %14, %161 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret ptr %165
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_control_stmt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #13, !range !24
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %94 [
    i8 1, label %8
    i8 5, label %90
    i8 3, label %92
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #13
  %10 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #13
  %11 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #13, !range !66
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = load ptr, ptr @ssa_name_values, align 8
  %19 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %18) #13
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %17) #13
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %22, %21 ], [ null, %15 ]
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %9, ptr %24
  br label %27

27:                                               ; preds = %23, %8
  %28 = phi ptr [ %26, %23 ], [ %9, %8 ]
  %29 = load i64, ptr %10, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !6
  %35 = load ptr, ptr @ssa_name_values, align 8
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #13
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %35, i32 noundef %34) #13
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ null, %32 ]
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %10, ptr %41
  br label %44

44:                                               ; preds = %40, %27
  %45 = phi ptr [ %43, %40 ], [ %10, %27 ]
  %46 = icmp eq i8 %4, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load i64, ptr %28, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !67
  %53 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %28, ptr noundef %52, ptr noundef %1) #13
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %53, %51 ], [ %28, %47 ]
  %56 = load i64, ptr %45, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load ptr, ptr %0, align 8, !tbaa !67
  %61 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %45, ptr noundef %60, ptr noundef %1) #13
  br label %62

62:                                               ; preds = %54, %59, %44
  %63 = phi ptr [ %55, %59 ], [ %55, %54 ], [ %28, %44 ]
  %64 = phi ptr [ %61, %59 ], [ %45, %54 ], [ %45, %44 ]
  %65 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %63, ptr noundef %64, i8 noundef zeroext 0) #14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @swap_tree_comparison(i32 noundef %11) #14
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %64, %67 ], [ %63, %62 ]
  %71 = phi ptr [ %63, %67 ], [ %64, %62 ]
  %72 = phi i32 [ %68, %67 ], [ %11, %62 ]
  tail call fastcc void @gimple_cond_set_code(ptr noundef %2, i32 noundef %72) #13
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %2, ptr noundef %70) #13
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %2, ptr noundef %71) #13
  tail call void @fold_defer_overflow_warnings() #14
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !12
  %74 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %72, ptr noundef %73, ptr noundef %70, ptr noundef %71) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %69, %80
  %77 = phi ptr [ %82, %80 ], [ %74, %69 ]
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %83 [
    i16 116, label %80
    i16 113, label %80
  ]

80:                                               ; preds = %76, %76
  %81 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  br label %76, !llvm.loop !68

83:                                               ; preds = %76
  %84 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #14
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %86, ptr noundef %1, i32 noundef 2) #14
  %87 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %125, label %128

89:                                               ; preds = %69
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef %1, i32 noundef 2) #14
  br label %125

90:                                               ; preds = %5
  %91 = tail call fastcc ptr @gimple_switch_index(ptr noundef %1) #13
  br label %95

92:                                               ; preds = %5
  %93 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %1) #13
  br label %95

94:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @.str.1) #14
  br label %95

95:                                               ; preds = %92, %94, %90
  %96 = phi ptr [ %91, %90 ], [ %93, %92 ], [ undef, %94 ]
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 141
  br i1 %99, label %100, label %128

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %96, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !6
  %103 = load ptr, ptr @ssa_name_values, align 8
  %104 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #13
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %103, i32 noundef %102) #13
  %108 = icmp eq ptr %107, null
  %109 = select i1 %108, ptr %96, ptr %107
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi ptr [ %96, %100 ], [ %109, %106 ]
  %112 = icmp eq i8 %4, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = load i64, ptr %111, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 8, !tbaa !67
  %119 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %111, ptr noundef %118, ptr noundef %1) #13
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %110, %113, %117
  %122 = phi ptr [ %119, %117 ], [ %111, %113 ], [ %111, %110 ]
  %123 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %122) #14
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121, %83, %89
  %126 = phi ptr [ %2, %89 ], [ %2, %83 ], [ %1, %121 ]
  %127 = tail call ptr %3(ptr noundef %126, ptr noundef %1) #14
  br label %128

128:                                              ; preds = %125, %121, %117, %95, %83
  %129 = phi ptr [ %77, %83 ], [ %122, %121 ], [ null, %117 ], [ null, %95 ], [ %127, %125 ]
  ret ptr %129
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_temporary_equivalences(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %12, %9 ], [ %2, %1 ]
  %7 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !12
  %11 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %10) #13
  tail call void @set_ssa_name_value(ptr noundef nonnull %7, ptr noundef %11) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !12
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @register_jump_thread(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !69
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !53
  store i8 0, ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !24
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_temporary_equivalence(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr @ssa_name_values, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #13
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %5) #13
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %10, %9 ], [ null, %3 ]
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !6
  %19 = icmp ult i32 %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %18) #13
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %21, %20 ], [ null, %16 ]
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %1, ptr %23
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi ptr [ %25, %22 ], [ %1, %11 ]
  tail call void @set_ssa_name_value(ptr noundef nonnull %0, ptr noundef %27) #13
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %2) #13
  %28 = load ptr, ptr %2, align 8, !tbaa !12
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %28, ptr noundef %12) #13
  %29 = load ptr, ptr %2, align 8, !tbaa !12
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %29, ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  store ptr %4, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 2) #13, !range !15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 2) #14
  store ptr %6, ptr %0, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8, !tbaa !9
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !9
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !24
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !24
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #13
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @num_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call fastcc void @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #13
  %3 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i32 %6, 1
  call fastcc void @op_iter_next_tree(ptr noundef nonnull %2) #13
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %5, label %10, !llvm.loop !71

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  store ptr %1, ptr %4, align 8, !tbaa !12
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_assignment_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !66
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !24
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %42 [
    i8 3, label %5
    i8 2, label %29
    i8 1, label %35
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 56
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @fold(ptr noundef %12) #14
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  %20 = icmp eq ptr %13, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %23, %18, %5
  %27 = phi ptr [ %6, %5 ], [ %6, %18 ], [ %25, %23 ]
  %28 = tail call ptr @fold(ptr noundef %27) #14
  br label %43

29:                                               ; preds = %1
  %30 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #13
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %2, ptr noundef %33, ptr noundef %31) #14
  br label %43

35:                                               ; preds = %1
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #13
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %38 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #13
  %39 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %2, ptr noundef %40, ptr noundef %37, ptr noundef %38) #14
  br label %43

42:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @.str.1) #14
  br label %43

43:                                               ; preds = %42, %35, %29, %26
  %44 = phi ptr [ null, %42 ], [ %41, %35 ], [ %34, %29 ], [ %28, %26 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !73
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !24
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !47
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !48
  tail call fastcc void @op_iter_next_tree(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  store ptr %6, ptr %2, align 8, !tbaa !53
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !74
  store ptr %12, ptr %8, align 8, !tbaa !69
  br label %14

13:                                               ; preds = %7
  store i8 1, ptr %0, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %13, %11, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !77
  store ptr %2, ptr %6, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !76
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #13
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  store ptr %1, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !77
  store ptr %0, ptr %4, align 8, !tbaa !76
  store ptr %0, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #13, !range !66
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !24
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !24
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !6
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lhs_of_dominating_assert(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %5 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #13, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %3, %32
  %9 = phi ptr [ %33, %32 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %11) #14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #13
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 148
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #13
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef %27) #14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #13
  br label %36

32:                                               ; preds = %8, %13, %16, %21, %26
  %33 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #13
  %34 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #13, !range !23
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %8, label %36, !llvm.loop !78

36:                                               ; preds = %32, %3, %30
  %37 = phi ptr [ %31, %30 ], [ %0, %3 ], [ %0, %32 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  ret ptr %37
}

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #6

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  store ptr %6, ptr %0, align 8, !tbaa !81
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #13, !range !23
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  store ptr %4, ptr %0, align 8, !tbaa !81
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #13, !range !23
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !9
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !9
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  ret ptr %6
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"VEC_tree_base", !11, i64 0, !11, i64 4, !7, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{}
!15 = !{i32 0, i32 2}
!16 = !{!10, !11, i64 4}
!17 = !{!18, !13, i64 24}
!18 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !13, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!19 = !{!20, !13, i64 16}
!20 = !{!"gimple_df", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !21, i64 32, !21, i64 48, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !11, i64 96, !22, i64 104}
!21 = !{!"pt_solution", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !13, i64 8}
!22 = !{!"ssa_operands", !13, i64 0, !11, i64 8, !11, i64 12, !7, i64 16, !13, i64 24, !13, i64 32}
!23 = !{i8 0, i8 2}
!24 = !{i32 0, i32 256}
!25 = !{!26, !13, i64 8}
!26 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !13, i64 48, !13, i64 56, !7, i64 64, !27, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!27 = !{!"long", !7, i64 0}
!28 = !{!26, !13, i64 0}
!29 = !{!30, !13, i64 0}
!30 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!31 = !{!30, !13, i64 8}
!32 = !{!30, !13, i64 16}
!33 = !{!34, !13, i64 0}
!34 = !{!"gimple_seq_node_d", !13, i64 0, !13, i64 8, !13, i64 16}
!35 = !{!36, !11, i64 0}
!36 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!37 = !{!26, !11, i64 96}
!38 = !{!39, !13, i64 0}
!39 = !{!"gimple_bb_info", !13, i64 0, !13, i64 8}
!40 = !{!41, !13, i64 8}
!41 = !{!"gimple_seq_d", !13, i64 0, !13, i64 8, !13, i64 16}
!42 = !{!43, !11, i64 48}
!43 = !{!"edge_def", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !27, i64 56}
!44 = !{!43, !13, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!11, !11, i64 0}
!48 = !{!49, !11, i64 4}
!49 = !{!"ssa_operand_iterator_d", !7, i64 0, !11, i64 4, !13, i64 8, !13, i64 16, !11, i64 24, !11, i64 28, !13, i64 32}
!50 = !{!49, !7, i64 0}
!51 = !{!52, !13, i64 24}
!52 = !{!"ssa_use_operand_d", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!53 = !{!49, !13, i64 16}
!54 = !{!55, !13, i64 0}
!55 = !{!"use_optype_d", !13, i64 0, !52, i64 8}
!56 = !{!49, !11, i64 24}
!57 = !{!49, !11, i64 28}
!58 = !{!49, !13, i64 32}
!59 = !{!43, !11, i64 44}
!60 = distinct !{!60, !46}
!61 = !{!62, !11, i64 8}
!62 = !{!"param_info", !13, i64 0, !11, i64 8, !7, i64 12, !11, i64 16, !11, i64 20, !13, i64 24}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !46}
!65 = distinct !{!65, !46}
!66 = !{i32 0, i32 65536}
!67 = !{!43, !13, i64 0}
!68 = distinct !{!68, !46}
!69 = !{!49, !13, i64 8}
!70 = !{!34, !13, i64 16}
!71 = distinct !{!71, !46}
!72 = !{!41, !13, i64 0}
!73 = !{!27, !27, i64 0}
!74 = !{!75, !13, i64 0}
!75 = !{!"def_optype_d", !13, i64 0, !13, i64 8}
!76 = !{!52, !13, i64 0}
!77 = !{!52, !13, i64 8}
!78 = distinct !{!78, !46}
!79 = !{!80, !13, i64 8}
!80 = !{!"immediate_use_iterator_d", !13, i64 0, !13, i64 8, !52, i64 16, !13, i64 48}
!81 = !{!80, !13, i64 0}
