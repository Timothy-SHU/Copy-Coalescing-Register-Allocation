; ModuleID = 'tree-vect-loop-manip.c'
source_filename = "tree-vect-loop-manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.adjust_info = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.VEC_adjust_info_base = type { i32, i32, [1 x %struct.adjust_info] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"tree-vect-loop-manip.c\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aloop at %s:%d: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"vect_can_advance_ivs_p:\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Analyze phi: \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"virtual phi. skip.\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"reduc phi. skip.\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"No Access function.\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Access function of PHI: \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"No evolution.\00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"=== vect_do_peeling_for_loop_bound ===\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"bnd\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ratio_mult_vf\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"niters\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [47 x i8] c"Profitability threshold is %u loop iterations.\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\0A%s:%d: note: \00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"tree_duplicate_loop_to_edge_cfg failed.\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@adjust_vec = internal unnamed_addr global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"prologue_after_cost_adjust\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"vect_update_ivs_after_vectorizer: phi: \00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.23 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"=== vect_do_peeling_for_alignment ===\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.25 = private unnamed_addr constant [22 x i8] c"known alignment = %d.\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.26 = private unnamed_addr constant [25 x i8] c"niters for prolog loop: \00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"prolog_loop_niters\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"=== vect_update_inits_of_dr ===\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"addr2int\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"orptrs\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"andmask\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.33 = private unnamed_addr constant [42 x i8] c"create runtime check for data references \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"created %u versioning for alias checks.\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rename_variables_in_bb(ptr noundef %0) local_unnamed_addr #0 !prof !426 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !427
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23, !prof !435

10:                                               ; preds = %1, %20
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %12 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %11, i32 noundef 5) #17
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20, !prof !436

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %17, %15 ], [ %12, %10 ]
  tail call fastcc void @rename_use_op(ptr noundef %16) #17
  %17 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #17
  %18 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %15, label %20, !prof !437, !llvm.loop !438

20:                                               ; preds = %15, %10
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %21 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %10, label %23, !prof !440, !llvm.loop !441

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %25 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %24) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !442
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %25, ptr %26, align 8, !tbaa.struct !445
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %25, ptr noundef nonnull %4) #17, !range !434
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %52, label %29, !prof !446

29:                                               ; preds = %23, %47
  %30 = load ptr, ptr %4, align 8, !tbaa !444
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !447
  %33 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %7, ptr noundef %32) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35, !prof !449

35:                                               ; preds = %29
  %36 = load ptr, ptr %31, align 8, !tbaa !447
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %36) #18
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47, !prof !435

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 6
  br label %41

41:                                               ; preds = %39, %41
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %43 = load i32, ptr %40, align 4, !tbaa !450
  %44 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %42, i32 noundef %43) #17
  call fastcc void @rename_use_op(ptr noundef nonnull %44) #17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %45 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %41, label %47, !prof !451, !llvm.loop !452

47:                                               ; preds = %41, %35, %29
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %48 = load i32, ptr %5, align 8
  %49 = load ptr, ptr %26, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %4) #17, !range !434
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %29, !prof !453, !llvm.loop !454

52:                                               ; preds = %47, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #2 !prof !455 !PGOFuncName !456 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !457
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !459
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !460
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !461 !PGOFuncName !462 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !463 !PGOFuncName !464 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  %3 = load ptr, ptr %2, align 8, !tbaa !465
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !467 !PGOFuncName !468 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !469

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !470
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !472 !PGOFuncName !473 {
  %2 = load i8, ptr %0, align 8, !tbaa !474
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rename_use_op(ptr noundef %0) unnamed_addr #0 !prof !475 !PGOFuncName !476 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %10, !prof !477

6:                                                ; preds = %1
  %7 = tail call ptr @get_current_def(ptr noundef nonnull %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !478

9:                                                ; preds = %6
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %7) #17
  br label %10

10:                                               ; preds = %6, %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !472 !PGOFuncName !479 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !480
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !481

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !482
  store ptr %7, ptr %2, align 8, !tbaa !480
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !485
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !486
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !487

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !488
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !485
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !474
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #2 !prof !489 !PGOFuncName !490 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !491
  store ptr %4, ptr %0, align 8, !tbaa !457
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !426 !PGOFuncName !492 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !493 !PGOFuncName !494 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !434
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !495

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !444
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !496 !PGOFuncName !497 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !498 !PGOFuncName !499 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !500

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !501

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !502
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !502
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !504 !PGOFuncName !505 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !506
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !507

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !508
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !509

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !510
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !455 !PGOFuncName !512 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !513

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !514
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !467 !PGOFuncName !516 {
  %4 = and i32 %2, 4
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %8, !prof !517

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 747, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %2, 10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !518

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !519
  br label %22

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #17
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !519
  %16 = icmp eq ptr %14, null
  br i1 %16, label %22, label %17, !prof !520

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 8, !tbaa !521
  store ptr %21, ptr %15, align 8, !tbaa !519
  br label %22

22:                                               ; preds = %11, %20, %17, %13
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %28, label %24, !prof !487

24:                                               ; preds = %22
  %25 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #17
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !480
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %30, label %37, !prof !487

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !480
  br label %37

30:                                               ; preds = %24
  %31 = icmp eq ptr %25, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %25, align 8, !tbaa !482
  store ptr %36, ptr %26, align 8, !tbaa !480
  br label %37

37:                                               ; preds = %28, %35, %32, %30, %24
  store i8 0, ptr %0, align 8, !tbaa !474
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !524 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !525 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !467 !PGOFuncName !526 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !487

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !527 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !467 !PGOFuncName !528 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !529
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !530 !PGOFuncName !531 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !532 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !529
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !533 !PGOFuncName !534 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !535
  %4 = load ptr, ptr %3, align 8, !tbaa !444
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @get_current_def(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !536 !PGOFuncName !537 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !535
  store ptr %1, ptr %4, align 8, !tbaa !444
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #8 !prof !536 !PGOFuncName !538 {
  %2 = load ptr, ptr %0, align 8, !tbaa !539
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !540

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !541
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !541
  store ptr %2, ptr %6, align 8, !tbaa !539
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !536 !PGOFuncName !542 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !543

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !544

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !539
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #17
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !545 !PGOFuncName !546 {
  store ptr %1, ptr %0, align 8, !tbaa !539
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !541
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !541
  store ptr %0, ptr %4, align 8, !tbaa !539
  store ptr %0, ptr %3, align 8, !tbaa !541
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !493 !PGOFuncName !547 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !548

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !498 !PGOFuncName !549 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !500

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !550 !PGOFuncName !551 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !552

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !553
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !555 !PGOFuncName !556 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !557

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !444
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !558 !PGOFuncName !559 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !444
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !560 !PGOFuncName !561 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !508
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !562

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rename_variables_in_loop(ptr noundef %0) local_unnamed_addr #0 !prof !563 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !564
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !568

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %10, %6 ], [ 0, %1 ]
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !444
  tail call void @rename_variables_in_bb(ptr noundef %9) #17
  %10 = add nuw nsw i64 %7, 1
  %11 = load i32, ptr %3, align 4, !tbaa !564
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %6, label %14, !prof !569, !llvm.loop !570

14:                                               ; preds = %6, %1
  tail call void @free(ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @slpeel_make_loop_iterate_ntimes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !563 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = tail call ptr @single_exit(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !508
  %13 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 0) #18
  %14 = load ptr, ptr %11, align 8, !tbaa !508
  %15 = tail call ptr @build_int_cst(ptr noundef %14, i64 noundef 1) #18
  %16 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !571

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %2, %18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %16) #18
  call void @standard_iv_increment_position(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %20 = load i8, ptr %7, align 1, !tbaa !508
  call void @create_iv(ptr noundef %13, ptr noundef %15, ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %21 = load ptr, ptr %4, align 8, !tbaa !444
  %22 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %21, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  store ptr %22, ptr %4, align 8, !tbaa !444
  %23 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef nonnull %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  %24 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !572
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 97, i32 100
  %29 = load ptr, ptr %4, align 8, !tbaa !444
  %30 = call ptr @gimple_build_cond(i32 noundef %28, ptr noundef %29, ptr noundef %23, ptr noundef null, ptr noundef null) #18
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %30, i32 noundef 1) #18
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  %31 = call i32 @find_loop_location(ptr noundef %0) #17
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !444
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34, !prof !573

34:                                               ; preds = %19
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !443
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %31) #18
  %41 = load ptr, ptr %8, align 8, !tbaa !574
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %31) #18
  %42 = getelementptr inbounds %struct.expanded_location, ptr %9, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !576
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.5, ptr noundef %41, i32 noundef %43) #17
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !444
  br label %46

46:                                               ; preds = %40, %38
  %47 = phi ptr [ %45, %40 ], [ %32, %38 ]
  call void @print_gimple_stmt(ptr noundef %47, ptr noundef %30, i32 noundef 0, i32 noundef 2) #18
  br label %48

48:                                               ; preds = %46, %34, %19
  %49 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr %23, ptr %49, align 8, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @get_loop_exit_condition(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @standard_iv_increment_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @find_loop_location(ptr noundef %0) local_unnamed_addr #0 !prof !578 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4, !prof !579

4:                                                ; preds = %1
  %5 = tail call ptr @get_loop_exit_condition(ptr noundef nonnull %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !580

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %5) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24, !prof !581

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !582
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !583

14:                                               ; preds = %10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %12) #17
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %24, !prof !584

17:                                               ; preds = %14, %21
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %19 = tail call fastcc i32 @gimple_location(ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24, !prof !585

21:                                               ; preds = %17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %17, label %24, !prof !586, !llvm.loop !587

24:                                               ; preds = %21, %17, %14, %7, %10, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %10 ], [ %8, %7 ], [ 0, %14 ], [ 0, %21 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret i32 %25
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !563 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %7 = tail call ptr @single_exit(ptr noundef %0) #18
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !588

9:                                                ; preds = %2
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %126, !prof !589

12:                                               ; preds = %9, %2
  %13 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !564
  %16 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %13, i32 noundef %15) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !571

18:                                               ; preds = %12
  tail call void @free(ptr noundef %13) #17
  br label %126

19:                                               ; preds = %12
  %20 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #17
  %21 = tail call ptr @duplicate_loop(ptr noundef nonnull %0, ptr noundef %20) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !571

23:                                               ; preds = %19
  tail call void @free(ptr noundef %13) #17
  br label %126

24:                                               ; preds = %19
  %25 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !447
  %28 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %27) #18
  %29 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !582
  %31 = icmp eq ptr %28, %30
  %32 = load i32, ptr %14, align 4, !tbaa !564
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = tail call ptr @xmalloc(i64 noundef %34) #18
  %36 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  store ptr %36, ptr %3, align 8, !tbaa !444
  %37 = load i32, ptr %14, align 4, !tbaa !564
  %38 = load ptr, ptr %1, align 8, !tbaa !590
  call void @copy_bbs(ptr noundef %13, i32 noundef %37, ptr noundef %35, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null, ptr noundef %38) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %27) #18
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %69, !prof !591

41:                                               ; preds = %24, %66
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %43 = call ptr @single_exit(ptr noundef %0) #18
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !450
  %46 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %42, i32 noundef %45) #17
  %47 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49, !prof !592

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %51 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 3
  %52 = call ptr @single_exit(ptr noundef %0) #18
  %53 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %42, ptr noundef %52) #17
  %54 = load ptr, ptr %50, align 8, !tbaa !582
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !593
  %57 = call fastcc ptr @VEC_edge_base_index(ptr noundef %56, i32 noundef 0) #17
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !447
  %60 = load ptr, ptr %51, align 8, !tbaa !594
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %64, !prof !595

62:                                               ; preds = %49
  %63 = call fastcc ptr @VEC_edge_base_index(ptr noundef %56, i32 noundef 1) #17
  br label %64

64:                                               ; preds = %49, %62
  %65 = phi ptr [ %63, %62 ], [ %57, %49 ]
  call void @add_phi_arg(ptr noundef %42, ptr noundef nonnull %47, ptr noundef %65, i32 noundef %53) #18
  br label %66

66:                                               ; preds = %41, %64
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %41, label %69, !prof !596, !llvm.loop !597

69:                                               ; preds = %66, %24
  br i1 %8, label %70, label %79, !prof !588

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !582
  %73 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %72) #18
  %74 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  store ptr null, ptr %74, align 8, !tbaa !508
  %75 = load ptr, ptr %71, align 8, !tbaa !582
  %76 = load ptr, ptr %1, align 8, !tbaa !590
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %75, ptr noundef %76) #18
  br i1 %31, label %77, label %125, !prof !598

77:                                               ; preds = %70
  %78 = load ptr, ptr %71, align 8, !tbaa !582
  br label %122

79:                                               ; preds = %69
  %80 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %81 = load ptr, ptr %80, align 8, !tbaa !590
  %82 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !582
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !593
  %86 = call fastcc ptr @VEC_edge_base_index(ptr noundef %85, i32 noundef 0) #17
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !447
  %89 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %21, ptr noundef %88) #18
  %90 = icmp ne i8 %89, 0
  %91 = load ptr, ptr %82, align 8, !tbaa !582
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !593
  %94 = zext i1 %90 to i32
  %95 = call fastcc ptr @VEC_edge_base_index(ptr noundef %93, i32 noundef %94) #17
  %96 = load ptr, ptr %29, align 8, !tbaa !582
  %97 = call ptr @redirect_edge_and_branch_force(ptr noundef %95, ptr noundef %96) #18
  %98 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 2
  store ptr null, ptr %98, align 8, !tbaa !508
  %99 = load ptr, ptr %29, align 8, !tbaa !582
  %100 = load ptr, ptr %95, align 8, !tbaa !590
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %99, ptr noundef %100) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %101 = load ptr, ptr %29, align 8, !tbaa !582
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %101) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %102 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %117, !prof !584

104:                                              ; preds = %79
  %105 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 6
  br label %106

106:                                              ; preds = %104, %114
  %107 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %108 = load i32, ptr %105, align 4, !tbaa !450
  %109 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %107, i32 noundef %108) #17
  %110 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %109) #17
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112, !prof !600

112:                                              ; preds = %106
  %113 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %107, ptr noundef nonnull %80) #17
  call void @add_phi_arg(ptr noundef %107, ptr noundef nonnull %110, ptr noundef nonnull %95, i32 noundef %113) #18
  br label %114

114:                                              ; preds = %106, %112
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %106, label %117, !prof !601, !llvm.loop !602

117:                                              ; preds = %114, %79
  %118 = load ptr, ptr %82, align 8, !tbaa !582
  %119 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %80, ptr noundef %118) #18
  %120 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 2
  store ptr null, ptr %120, align 8, !tbaa !508
  %121 = load ptr, ptr %82, align 8, !tbaa !582
  br label %122

122:                                              ; preds = %117, %77
  %123 = phi ptr [ %78, %77 ], [ %81, %117 ]
  %124 = phi ptr [ %27, %77 ], [ %121, %117 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %124, ptr noundef %123) #18
  br label %125

125:                                              ; preds = %122, %70
  call void @free(ptr noundef %35) #17
  call void @free(ptr noundef %13) #17
  br label %126

126:                                              ; preds = %9, %125, %23, %18
  %127 = phi ptr [ %21, %125 ], [ null, %23 ], [ null, %18 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %127
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @duplicate_loop(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !603 !PGOFuncName !604 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !605
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !606

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #17
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @copy_bbs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !607 !PGOFuncName !608 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !450
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #17
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !609
  ret i32 %7
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !603 !PGOFuncName !611 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !606

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !612
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !603 !PGOFuncName !614 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !444
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !615 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @single_exit(ptr noundef %0) #18
  %5 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %6 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !590
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %7) #17
  %8 = load ptr, ptr @cfun, align 8, !tbaa !444
  %9 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %40, !prof !616

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !617
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %40, !prof !616

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18, !prof !618

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !564
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %40, !prof !616

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !594
  %25 = tail call zeroext i8 @empty_block_p(ptr noundef %24) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27, !prof !618

27:                                               ; preds = %22
  %28 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  %29 = icmp ne ptr %28, null
  %30 = icmp ne ptr %6, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %40, !prof !619

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %34 = icmp eq ptr %6, %33
  br i1 %34, label %35, label %40, !prof !616

35:                                               ; preds = %32
  %36 = icmp eq ptr %4, %1
  %37 = icmp eq ptr %5, %1
  %38 = select i1 %36, i1 true, i1 %37
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %35, %11, %15, %18, %22, %27, %32, %2
  %41 = phi i8 [ 0, %2 ], [ 0, %32 ], [ 0, %27 ], [ 0, %22 ], [ 0, %18 ], [ 0, %15 ], [ 0, %11 ], [ %39, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i8 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #2 !prof !620 !PGOFuncName !621 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !457
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !459
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !460
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !620 !PGOFuncName !622 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !623

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !624
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !625 !PGOFuncName !626 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !508
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_can_advance_ivs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !627 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !628
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !582
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8, !prof !630

8:                                                ; preds = %1
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %10 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 23, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %1
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #18
  %12 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %78, !prof !631

14:                                               ; preds = %11, %75
  %15 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %16 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18, !prof !632

18:                                               ; preds = %14
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %20 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr %19)
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  call void @print_gimple_stmt(ptr noundef %21, ptr noundef %15, i32 noundef 0, i32 noundef 2) #18
  br label %22

22:                                               ; preds = %18, %14
  %23 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %15) #17
  %24 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #17
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !508
  %27 = call zeroext i8 @is_gimple_reg(ptr noundef %26) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %35, !prof !633

29:                                               ; preds = %22
  %30 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %75, label %32, !prof !630

32:                                               ; preds = %29
  %33 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %34 = call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr %33)
  br label %75

35:                                               ; preds = %22
  %36 = call fastcc ptr @vinfo_for_stmt(ptr noundef %15) #17
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !634
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %46, !prof !637

40:                                               ; preds = %35
  %41 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %45 = call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr %44)
  br label %75

46:                                               ; preds = %35
  %47 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #17
  %48 = call ptr @analyze_scalar_evolution(ptr noundef %3, ptr noundef %47) #18
  %49 = call fastcc ptr @instantiate_parameters(ptr noundef %3, ptr noundef %48) #17
  %50 = icmp eq ptr %49, null
  %51 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %52 = icmp eq i8 %51, 0
  br i1 %50, label %53, label %57, !prof !637

53:                                               ; preds = %46
  br i1 %52, label %78, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %56 = call i64 @fwrite(ptr nonnull @.str.10, i64 19, i64 1, ptr %55)
  br label %78

57:                                               ; preds = %46
  br i1 %52, label %62, label %58, !prof !638

58:                                               ; preds = %57
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %60 = call i64 @fwrite(ptr nonnull @.str.11, i64 24, i64 1, ptr %59)
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  call void @print_generic_expr(ptr noundef %61, ptr noundef nonnull %49, i32 noundef 2) #18
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, ptr %3, align 8, !tbaa !639
  %64 = call ptr @evolution_part_in_loop_num(ptr noundef nonnull %49, i32 noundef %63) #18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %72, !prof !637

66:                                               ; preds = %62
  %67 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %71 = call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %70)
  br label %78

72:                                               ; preds = %62
  %73 = call fastcc zeroext i8 @tree_is_chrec(ptr noundef nonnull %64) #17, !range !434
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78, !prof !638

75:                                               ; preds = %72, %32, %29, %43, %40
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %76 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !434
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %14, label %78, !prof !640, !llvm.loop !641

78:                                               ; preds = %75, %72, %11, %66, %69, %53, %54
  %79 = phi i8 [ 0, %54 ], [ 0, %53 ], [ 0, %69 ], [ 0, %66 ], [ 1, %11 ], [ 1, %75 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret i8 %79
}

; Function Attrs: optsize
declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !642 !PGOFuncName !643 {
  %2 = load ptr, ptr %0, align 8, !tbaa !444
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #6 !prof !642 !PGOFuncName !644 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !645 !PGOFuncName !646 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4, !prof !647

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #17
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10, !prof !647

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 629, ptr noundef nonnull @.str.1) #18
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = add i32 %2, -1
  %13 = tail call fastcc ptr @VEC_vec_void_p_base_index(ptr noundef %11, i32 noundef %12) #17
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !648 !PGOFuncName !649 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #17
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #18
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #5 !prof !650 !PGOFuncName !651 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5, !prof !652

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #17, !range !434
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !645 !PGOFuncName !653 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !508
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !645 !PGOFuncName !654 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !647

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !655
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !645 !PGOFuncName !657 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !444
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !648 !PGOFuncName !658 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8, !prof !637

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !444
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !659
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !444
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #11 !prof !650 !PGOFuncName !661 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !444
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !652
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_do_peeling_for_loop_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !662 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !628
  %8 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10, !prof !598

10:                                               ; preds = %4
  %11 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %12 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 38, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %10, %4
  tail call void @initialize_original_copy_tables() #18
  call fastcc void @vect_generate_tmps_on_preheader(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3) #17
  %14 = load i32, ptr %7, align 8, !tbaa !639
  %15 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !663
  %17 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %16) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34, !prof !664

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !665
  %22 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %21) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34, !prof !666

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !667
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne ptr %2, null
  %29 = or i1 %28, %27
  br i1 %29, label %34, label %30, !prof !668

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !669
  %33 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %32) #17
  br label %34

34:                                               ; preds = %30, %24, %19, %13
  %35 = phi i8 [ 0, %13 ], [ 0, %19 ], [ 0, %24 ], [ 1, %30 ]
  %36 = phi i32 [ 0, %13 ], [ 0, %19 ], [ 0, %24 ], [ %33, %30 ]
  %37 = tail call ptr @single_exit(ptr noundef nonnull %7) #18
  %38 = load ptr, ptr %6, align 8, !tbaa !444
  %39 = load ptr, ptr %5, align 8, !tbaa !444
  %40 = tail call fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef nonnull %7, ptr noundef %37, ptr noundef %38, ptr noundef %39, i8 noundef zeroext 0, i32 noundef %36, i8 noundef zeroext %35, ptr noundef %2, ptr noundef %3) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !670

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1904, ptr noundef nonnull @.str.1) #18
  br label %43

43:                                               ; preds = %34, %42
  %44 = load i32, ptr %7, align 8, !tbaa !639
  %45 = icmp eq i32 %14, %44
  br i1 %45, label %47, label %46, !prof !598

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1905, ptr noundef nonnull @.str.1) #18
  br label %47

47:                                               ; preds = %43, %46
  %48 = tail call ptr @loop_preheader_edge(ptr noundef %40) #18
  %49 = load ptr, ptr %48, align 8, !tbaa !590
  %50 = load ptr, ptr %49, align 8, !tbaa !671
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 0) #17
  %52 = load ptr, ptr %51, align 8, !tbaa !590
  %53 = tail call ptr @single_exit(ptr noundef nonnull %7) #18
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !447
  %56 = icmp ne ptr %52, %55
  %57 = load ptr, ptr %49, align 8, !tbaa !671
  %58 = zext i1 %56 to i32
  %59 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %57, i32 noundef %58) #17
  tail call fastcc void @vect_update_ivs_after_vectorizer(ptr noundef nonnull %0, ptr noundef %38, ptr noundef %59) #17
  tail call void @scev_reset() #18
  tail call void @free_original_copy_tables() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_generate_tmps_on_preheader(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) unnamed_addr #0 !prof !662 !PGOFuncName !672 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %4, ptr %6, align 8, !tbaa !444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !628
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !673
  %11 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !674
  %13 = tail call ptr @loop_preheader_edge(ptr noundef %8) #18
  %14 = tail call fastcc ptr @vect_build_loop_niters(ptr noundef nonnull %0, ptr noundef %4) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !508
  %17 = sext i32 %12 to i64
  %18 = tail call i32 @exact_log2(i64 noundef %17) #18
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef %19) #18
  %21 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !508
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %22, ptr noundef %14, ptr noundef %20) #18
  %24 = tail call zeroext i8 @is_gimple_val(ptr noundef %23) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %41, !prof !675

26:                                               ; preds = %5
  %27 = load ptr, ptr %15, align 8, !tbaa !508
  %28 = tail call ptr @create_tmp_var(ptr noundef %27, ptr noundef nonnull @.str.15) #18
  %29 = tail call zeroext i8 @add_referenced_var(ptr noundef %28) #18
  store ptr null, ptr %7, align 8, !tbaa !444
  %30 = call ptr @force_gimple_operand(ptr noundef %23, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %28) #18
  %31 = load ptr, ptr %6, align 8, !tbaa !444
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !676

33:                                               ; preds = %26
  %34 = load ptr, ptr %7, align 8, !tbaa !444
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef %34) #18
  br label %41

35:                                               ; preds = %26
  %36 = call ptr @loop_preheader_edge(ptr noundef %8) #18
  %37 = load ptr, ptr %7, align 8, !tbaa !444
  %38 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %36, ptr noundef %37) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !589

40:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1552, ptr noundef nonnull @.str.1) #18
  br label %41

41:                                               ; preds = %40, %35, %33, %5
  %42 = phi ptr [ %23, %5 ], [ %30, %33 ], [ %30, %40 ], [ %30, %35 ]
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !508
  %45 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %44, ptr noundef %42, ptr noundef %20) #18
  %46 = call zeroext i8 @is_gimple_val(ptr noundef %45) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %63, !prof !675

48:                                               ; preds = %41
  %49 = load ptr, ptr %15, align 8, !tbaa !508
  %50 = call ptr @create_tmp_var(ptr noundef %49, ptr noundef nonnull @.str.16) #18
  %51 = call zeroext i8 @add_referenced_var(ptr noundef %50) #18
  store ptr null, ptr %7, align 8, !tbaa !444
  %52 = call ptr @force_gimple_operand(ptr noundef %45, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %50) #18
  %53 = load ptr, ptr %6, align 8, !tbaa !444
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !676

55:                                               ; preds = %48
  %56 = load ptr, ptr %7, align 8, !tbaa !444
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef %56) #18
  br label %63

57:                                               ; preds = %48
  %58 = call ptr @loop_preheader_edge(ptr noundef %8) #18
  %59 = load ptr, ptr %7, align 8, !tbaa !444
  %60 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %58, ptr noundef %59) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !589

62:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1574, ptr noundef nonnull @.str.1) #18
  br label %63

63:                                               ; preds = %62, %57, %55, %41
  %64 = phi ptr [ %45, %41 ], [ %52, %55 ], [ %52, %62 ], [ %52, %57 ]
  store ptr %14, ptr %1, align 8, !tbaa !444
  store ptr %64, ptr %2, align 8, !tbaa !444
  store ptr %42, ptr %3, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !677 !PGOFuncName !678 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !592

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !679
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !662 !PGOFuncName !681 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !670

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !682
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @conservative_cost_threshold(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !662 !PGOFuncName !684 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !444
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 11, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !685
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !674
  %8 = mul nsw i32 %7, %5
  %9 = add nsw i32 %8, -1
  %10 = icmp eq i32 %1, 0
  %11 = icmp ne i32 %9, 0
  %12 = icmp sgt i32 %8, %1
  %13 = and i1 %12, %11
  %14 = select i1 %10, i1 true, i1 %13
  %15 = select i1 %14, i32 %9, i32 %1, !prof !670
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17, !prof !670

17:                                               ; preds = %2
  %18 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20, !prof !598

20:                                               ; preds = %17
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %15) #17
  br label %23

23:                                               ; preds = %20, %17, %2
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !prof !563 !PGOFuncName !687 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.expanded_location, align 8
  %13 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %14 = tail call ptr @single_exit(ptr noundef %0) #18
  %15 = tail call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %0, ptr noundef %1) #17, !range !434
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %112, label %17, !prof !571

17:                                               ; preds = %9
  tail call void @gimple_register_cfg_hooks() #18
  %18 = tail call ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %39, !prof !571

20:                                               ; preds = %17
  %21 = tail call i32 @find_loop_location(ptr noundef %0) #17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !444
  %23 = icmp eq ptr %22, null
  br i1 %23, label %112, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !443
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %112, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %12, i32 noundef %21) #18
  %31 = load ptr, ptr %12, align 8, !tbaa !574
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %21) #18
  %32 = getelementptr inbounds %struct.expanded_location, ptr %13, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !576
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.19, ptr noundef %31, i32 noundef %33) #17
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !444
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi ptr [ %35, %30 ], [ %22, %28 ]
  %38 = call i64 @fwrite(ptr nonnull @.str.20, i64 40, i64 1, ptr %37)
  br label %112

39:                                               ; preds = %17
  %40 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !443
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42, !prof !573

42:                                               ; preds = %39
  %43 = load ptr, ptr @adjust_vec, align 8, !tbaa !444
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1218, ptr noundef nonnull @.str.1) #18
  br label %46

46:                                               ; preds = %42, %45
  %47 = alloca [776 x i8], align 16
  %48 = call fastcc ptr @VEC_adjust_info_stack_alloc1(ptr noundef nonnull %47) #17
  store ptr %48, ptr @adjust_vec, align 8, !tbaa !444
  br label %49

49:                                               ; preds = %46, %39
  %50 = icmp eq ptr %14, %1
  %51 = select i1 %50, ptr %18, ptr %0, !prof !588
  %52 = select i1 %50, ptr %0, ptr %18, !prof !588
  %53 = call ptr @ssa_names_to_replace() #18
  store ptr %53, ptr %10, align 8, !tbaa !444
  %54 = zext i1 %50 to i8
  call fastcc void @slpeel_update_phis_for_duplicate_loop(ptr noundef %0, ptr noundef nonnull %18, i8 noundef zeroext %54) #17
  call void @rename_variables_in_loop(ptr noundef nonnull %18) #17
  %55 = call ptr @loop_preheader_edge(ptr noundef %52) #18
  %56 = call ptr @split_edge(ptr noundef %55) #18
  %57 = call ptr @single_exit(ptr noundef %52) #18
  %58 = call ptr @split_edge(ptr noundef %57) #18
  %59 = icmp eq i8 %4, 0
  br i1 %59, label %60, label %87, !prof !588

60:                                               ; preds = %49
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %62 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !508
  %64 = call ptr @build_int_cst(ptr noundef %63, i64 noundef 0) #18
  %65 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %61, ptr noundef %2, ptr noundef %64) #18
  %66 = icmp eq i8 %6, 0
  br i1 %66, label %80, label %67, !prof !675

67:                                               ; preds = %60
  %68 = call fastcc ptr @loop_vec_info_for_loop(ptr noundef %0) #17
  %69 = getelementptr inbounds %struct._loop_vec_info, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !688
  %71 = call ptr @unshare_expr(ptr noundef %70) #18
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %73 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !508
  %75 = zext i32 %5 to i64
  %76 = call ptr @build_int_cst(ptr noundef %74, i64 noundef %75) #18
  %77 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %72, ptr noundef %71, ptr noundef %76) #18
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %79 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %78, ptr noundef %77, ptr noundef %65) #18
  br label %80

80:                                               ; preds = %67, %60
  %81 = phi ptr [ %79, %67 ], [ %65, %60 ]
  %82 = icmp eq ptr %7, null
  br i1 %82, label %96, label %83, !prof !664

83:                                               ; preds = %80
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %85 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 96, ptr noundef %84, ptr noundef nonnull %7) #18
  %86 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %84, ptr noundef %81, ptr noundef %85) #18
  br label %96

87:                                               ; preds = %49
  %88 = icmp eq i8 %6, 0
  br i1 %88, label %90, label %89, !prof !689

89:                                               ; preds = %87
  call fastcc void @set_prologue_iterations(ptr noundef %56, ptr noundef %2, ptr noundef %0, i32 noundef %5) #17
  br label %90

90:                                               ; preds = %89, %87
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %92 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !508
  %94 = call ptr @build_int_cst(ptr noundef %93, i64 noundef 0) #18
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %91, ptr noundef %2, ptr noundef %94) #18
  br label %96

96:                                               ; preds = %80, %83, %90
  %97 = phi ptr [ %95, %90 ], [ %86, %83 ], [ %81, %80 ]
  %98 = call fastcc ptr @slpeel_add_loop_guard(ptr noundef %56, ptr noundef %97, ptr noundef %8, ptr noundef %58, ptr noundef %56) #17
  %99 = icmp eq ptr %52, %18
  %100 = zext i1 %99 to i8
  call fastcc void @slpeel_update_phi_nodes_for_guard1(ptr noundef %98, ptr noundef %52, i8 noundef zeroext %100, ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %101 = load ptr, ptr %11, align 8, !tbaa !444
  %102 = call ptr @single_exit(ptr noundef %51) #18
  %103 = call ptr @split_edge(ptr noundef %102) #18
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %105 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %104, ptr noundef nonnull %2, ptr noundef %3) #18
  %106 = call fastcc ptr @slpeel_add_loop_guard(ptr noundef %101, ptr noundef %105, ptr noundef null, ptr noundef %103, ptr noundef %56) #17
  %107 = icmp eq ptr %51, %18
  %108 = zext i1 %107 to i8
  call fastcc void @slpeel_update_phi_nodes_for_guard2(ptr noundef %106, ptr noundef %51, i8 noundef zeroext %108, ptr noundef nonnull %11) #17
  br i1 %59, label %110, label %109, !prof !588

109:                                              ; preds = %96
  call void @slpeel_make_loop_iterate_ntimes(ptr noundef %52, ptr noundef nonnull %2) #17
  br label %110

110:                                              ; preds = %109, %96
  call fastcc void @adjust_vec_debug_stmts() #17
  %111 = load ptr, ptr %10, align 8, !tbaa !444
  call void @bitmap_obstack_free(ptr noundef %111) #18
  call void @delete_update_ssa() #18
  br label %112

112:                                              ; preds = %20, %24, %36, %9, %110
  %113 = phi ptr [ %18, %110 ], [ null, %9 ], [ null, %36 ], [ null, %24 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  ret ptr %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_ivs_after_vectorizer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !662 !PGOFuncName !690 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !628
  %9 = tail call ptr @single_exit(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %12 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !447
  %14 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #17, !range !434
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !670

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1730, ptr noundef nonnull @.str.1) #18
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !582
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %19) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %13) #18
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !434
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %105, !prof !631

22:                                               ; preds = %17, %102
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %105, !prof !691

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %28 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !692

30:                                               ; preds = %25
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %32 = call i64 @fwrite(ptr nonnull @.str.22, i64 39, i64 1, ptr %31)
  %33 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  call void @print_gimple_stmt(ptr noundef %33, ptr noundef %26, i32 noundef 0, i32 noundef 2) #18
  br label %34

34:                                               ; preds = %30, %25
  %35 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %26) #17
  %36 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !508
  %39 = call zeroext i8 @is_gimple_reg(ptr noundef %38) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %47, !prof !693

41:                                               ; preds = %34
  %42 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %102, label %44, !prof !598

44:                                               ; preds = %41
  %45 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %46 = call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr %45)
  br label %102

47:                                               ; preds = %34
  %48 = call fastcc ptr @vinfo_for_stmt(ptr noundef %26) #17
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 16
  %50 = load i32, ptr %49, align 8, !tbaa !634
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %58, !prof !694

52:                                               ; preds = %47
  %53 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %57 = call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr %56)
  br label %102

58:                                               ; preds = %47
  %59 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %60 = call ptr @analyze_scalar_evolution(ptr noundef %8, ptr noundef %59) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63, !prof !694

62:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1769, ptr noundef nonnull @.str.1) #18
  br label %63

63:                                               ; preds = %58, %62
  %64 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !508
  %66 = call ptr @tree_strip_nop_conversions(ptr noundef %60) #18
  %67 = load i32, ptr %8, align 8, !tbaa !639
  %68 = call ptr @evolution_part_in_loop_num(ptr noundef %66, i32 noundef %67) #18
  %69 = call ptr @unshare_expr(ptr noundef %68) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72, !prof !694

71:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1778, ptr noundef nonnull @.str.1) #18
  br label %72

72:                                               ; preds = %63, %71
  %73 = call fastcc zeroext i8 @tree_is_chrec(ptr noundef %69) #17, !range !434
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75, !prof !695

75:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1782, ptr noundef nonnull @.str.1) #18
  br label %76

76:                                               ; preds = %72, %75
  %77 = load i32, ptr %8, align 8, !tbaa !639
  %78 = call ptr @initial_condition_in_loop_num(ptr noundef %66, i32 noundef %77) #18
  %79 = call ptr @unshare_expr(ptr noundef %78) #18
  %80 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %65, ptr noundef %79) #18
  %81 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !508
  %83 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %82, ptr noundef %1) #18
  %84 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %82, ptr noundef %83, ptr noundef %69) #18
  %85 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !508
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i16
  switch i16 %88, label %93 [
    i16 10, label %89
    i16 12, label %89
  ], !prof !696

89:                                               ; preds = %76, %76
  %90 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %91 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %90, ptr noundef %84) #18
  %92 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %86, ptr noundef nonnull %80, ptr noundef %91) #18
  br label %96

93:                                               ; preds = %76
  %94 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %86, ptr noundef %84) #18
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %86, ptr noundef nonnull %80, ptr noundef %94) #18
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi ptr [ %92, %89 ], [ %95, %93 ]
  %98 = load ptr, ptr %85, align 8, !tbaa !508
  %99 = call ptr @create_tmp_var(ptr noundef %98, ptr noundef nonnull @.str.23) #18
  %100 = call zeroext i8 @add_referenced_var(ptr noundef %99) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  %101 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %97, i8 noundef zeroext 0, ptr noundef %99, i8 noundef zeroext 1, i32 noundef 1) #18
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %27, ptr noundef %2, ptr noundef %101) #17
  br label %102

102:                                              ; preds = %52, %55, %41, %44, %96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !434
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %22, label %105, !prof !697, !llvm.loop !698

105:                                              ; preds = %22, %102, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_build_loop_niters(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !563 !PGOFuncName !699 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !444
  %5 = load ptr, ptr %0, align 8, !tbaa !628
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !673
  %8 = tail call ptr @unshare_expr(ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !508
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef nonnull @.str.17) #18
  %12 = tail call zeroext i8 @add_referenced_var(ptr noundef %11) #18
  %13 = call ptr @force_gimple_operand(ptr noundef %8, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %11) #18
  %14 = call ptr @loop_preheader_edge(ptr noundef %5) #18
  %15 = load ptr, ptr %4, align 8, !tbaa !444
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !700

17:                                               ; preds = %2
  %18 = icmp eq ptr %1, null
  br i1 %18, label %20, label %19, !prof !701

19:                                               ; preds = %17
  call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef nonnull %15) #18
  br label %24

20:                                               ; preds = %17
  %21 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %14, ptr noundef nonnull %15) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !702

23:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1491, ptr noundef nonnull @.str.1) #18
  br label %24

24:                                               ; preds = %23, %20, %19, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %13
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_adjust_info_stack_alloc1(ptr noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !703 {
  %2 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef 32, ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @ssa_names_to_replace() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slpeel_update_phis_for_duplicate_loop(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !563 !PGOFuncName !704 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @loop_latch_edge(ptr noundef %0) #18
  %7 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %8 = tail call ptr @single_exit(ptr noundef %1) #18
  %9 = tail call ptr @loop_preheader_edge(ptr noundef %1) #18
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, ptr %7, ptr %6, !prof !705
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %12 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !582
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #18
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !582
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %15) #18
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !434
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %57, !prof !706

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  %20 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  br label %21

21:                                               ; preds = %18, %54
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %57, !prof !707

24:                                               ; preds = %21
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %27 = load i32, ptr %19, align 4, !tbaa !450
  %28 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %26, i32 noundef %27) #17
  %29 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %28) #17
  %30 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %26, ptr noundef %11) #17
  call void @add_phi_arg(ptr noundef %25, ptr noundef %29, ptr noundef %9, i32 noundef %30) #18
  %31 = load i32, ptr %20, align 4, !tbaa !450
  %32 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %26, i32 noundef %31) #17
  %33 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %32) #17
  %34 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %26, ptr noundef %6) #17
  %35 = load i64, ptr %33, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %54, !prof !708

38:                                               ; preds = %24
  %39 = call ptr @get_current_def(ptr noundef nonnull %33) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44, !prof !709

41:                                               ; preds = %38
  %42 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %25) #17
  %43 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %42) #17
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %39, %38 ], [ %43, %41 ]
  %46 = call ptr @loop_latch_edge(ptr noundef %1) #18
  call void @add_phi_arg(ptr noundef %25, ptr noundef %45, ptr noundef %46, i32 noundef %34) #18
  %47 = call ptr @single_exit(ptr noundef %0) #18
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !447
  call fastcc void @adjust_debug_stmts(ptr noundef nonnull %33, ptr noundef null, ptr noundef %49) #17
  br i1 %10, label %50, label %54, !prof !710

50:                                               ; preds = %44
  %51 = icmp eq ptr %8, %7
  br i1 %51, label %53, label %52, !prof !711

52:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 330, ptr noundef nonnull @.str.1) #18
  br label %53

53:                                               ; preds = %50, %52
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %26, ptr noundef %8, ptr noundef %45) #17
  br label %54

54:                                               ; preds = %44, %53, %24
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %55 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !434
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %21, label %57, !prof !712, !llvm.loop !713

57:                                               ; preds = %21, %54, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @loop_vec_info_for_loop(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !714 !PGOFuncName !715 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !716
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_prologue_iterations(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !717 !PGOFuncName !718 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !444
  %10 = tail call fastcc ptr @loop_vec_info_for_loop(ptr noundef %2) #17
  %11 = getelementptr inbounds %struct._loop_vec_info, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !688
  %13 = tail call ptr @unshare_expr(ptr noundef %12) #18
  %14 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %15 = tail call ptr @split_edge(ptr noundef %14) #18
  %16 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %17 = tail call ptr @split_edge(ptr noundef %16) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %17, ptr noundef %15) #18
  %18 = tail call ptr @make_single_succ_edge(ptr noundef %15, ptr noundef %0, i32 noundef 2048) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %0, ptr noundef %15) #18
  %19 = load ptr, ptr %17, align 8, !tbaa !671
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %19, i32 noundef 0) #17
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !572
  %23 = and i32 %22, -1026
  %24 = or disjoint i32 %23, 1024
  store i32 %24, ptr %21, align 8, !tbaa !572
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !593
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 0) #17
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %29 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !508
  %31 = zext i32 %3 to i64
  %32 = tail call ptr @build_int_cst(ptr noundef %30, i64 noundef %31) #18
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %28, ptr noundef %13, ptr noundef %32) #18
  %34 = call ptr @force_gimple_operand(ptr noundef %33, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #18
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !508
  %37 = call ptr @build_int_cst(ptr noundef %36, i64 noundef 0) #18
  %38 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %34, ptr noundef %37, ptr noundef null, ptr noundef null) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %15) #17
  %39 = load ptr, ptr %6, align 8, !tbaa !444
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !719

41:                                               ; preds = %4
  call void @gsi_insert_seq_after(ptr noundef nonnull %5, ptr noundef nonnull %39, i32 noundef 0) #18
  br label %42

42:                                               ; preds = %41, %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %15) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %38, i32 noundef 0) #18
  %43 = load ptr, ptr %29, align 8, !tbaa !508
  %44 = call ptr @create_tmp_var(ptr noundef %43, ptr noundef nonnull @.str.21) #18
  %45 = call zeroext i8 @add_referenced_var(ptr noundef %44) #18
  %46 = call ptr @force_gimple_operand(ptr noundef nonnull %13, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %44) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %47 = load ptr, ptr %7, align 8, !tbaa !444
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !719

49:                                               ; preds = %42
  call void @gsi_insert_seq_after(ptr noundef nonnull %5, ptr noundef nonnull %47, i32 noundef 0) #18
  br label %50

50:                                               ; preds = %49, %42
  %51 = call ptr @create_phi_node(ptr noundef %44, ptr noundef %0) #18
  call void @add_phi_arg(ptr noundef %51, ptr noundef %46, ptr noundef %27, i32 noundef 0) #18
  call void @add_phi_arg(ptr noundef %51, ptr noundef %1, ptr noundef %18, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @slpeel_add_loop_guard(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !426 !PGOFuncName !720 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  store ptr %2, ptr %6, align 8, !tbaa !444
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !444
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !593
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !572
  %15 = and i32 %14, -2050
  %16 = or disjoint i32 %15, 2048
  store i32 %16, ptr %13, align 8, !tbaa !572
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #17
  %17 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  %18 = load ptr, ptr %8, align 8, !tbaa !444
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !721

20:                                               ; preds = %5
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef nonnull %18) #18
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !508
  %24 = call ptr @build_int_cst(ptr noundef %23, i64 noundef 0) #18
  %25 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %17, ptr noundef %24, ptr noundef null, ptr noundef null) #18
  %26 = load ptr, ptr %6, align 8, !tbaa !444
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !721

28:                                               ; preds = %21
  call void @gsi_insert_seq_after(ptr noundef nonnull %7, ptr noundef nonnull %26, i32 noundef 0) #18
  br label %29

29:                                               ; preds = %28, %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef %25, i32 noundef 0) #18
  %30 = call ptr @make_edge(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1024) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %3, ptr noundef %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slpeel_update_phi_nodes_for_guard1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !563 !PGOFuncName !722 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !447
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !593
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !447
  %15 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !582
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %17 = tail call ptr @single_exit(ptr noundef %1) #18
  %18 = tail call ptr @split_edge(ptr noundef %17) #18
  store ptr %18, ptr %3, align 8, !tbaa !444
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !593
  %21 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %20, i32 noundef 0) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %16) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %14) #18
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !434
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %108, !prof !706

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  %26 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  br label %27

27:                                               ; preds = %24, %105
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #17, !range !434
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %108, !prof !707

30:                                               ; preds = %27
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #17
  %33 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %31) #17
  %34 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %33) #17
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !508
  %37 = call ptr @create_phi_node(ptr noundef %36, ptr noundef %9) #18
  %38 = load ptr, ptr %25, align 8, !tbaa !594
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !593
  %41 = call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #17
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !450
  %44 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %31, i32 noundef %43) #17
  %45 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %44) #17
  %46 = load ptr, ptr %25, align 8, !tbaa !594
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !593
  %49 = call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 0) #17
  %50 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %31, ptr noundef %49) #17
  %51 = call ptr @loop_preheader_edge(ptr noundef nonnull %1) #18
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !450
  %54 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %31, i32 noundef %53) #17
  %55 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %54) #17
  %56 = call ptr @loop_preheader_edge(ptr noundef nonnull %1) #18
  %57 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %31, ptr noundef %56) #17
  call void @add_phi_arg(ptr noundef %37, ptr noundef %45, ptr noundef %21, i32 noundef %50) #18
  call void @add_phi_arg(ptr noundef %37, ptr noundef %55, ptr noundef %0, i32 noundef %57) #18
  %58 = load i32, ptr %26, align 4, !tbaa !450
  %59 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %32, i32 noundef %58) #17
  %60 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %59) #17
  %61 = icmp eq ptr %60, %45
  br i1 %61, label %68, label %62, !prof !708

62:                                               ; preds = %30
  %63 = load i32, ptr %26, align 4, !tbaa !450
  %64 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %32, i32 noundef %63) #17
  %65 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %64) #17
  %66 = icmp eq ptr %65, %55
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 542, ptr noundef nonnull @.str.1) #18
  br label %68

68:                                               ; preds = %30, %62, %67
  %69 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %37) #17
  %70 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %69) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %32, ptr noundef nonnull %12, ptr noundef %70) #17
  %71 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %33) #17
  %72 = call zeroext i8 @is_gimple_reg(ptr noundef %71) #18
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %105, label %74, !prof !723

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 6
  %76 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %33) #17
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !508
  %79 = load ptr, ptr %3, align 8, !tbaa !444
  %80 = call ptr @create_phi_node(ptr noundef %78, ptr noundef %79) #18
  %81 = call ptr @single_exit(ptr noundef nonnull %1) #18
  call void @add_phi_arg(ptr noundef %80, ptr noundef %45, ptr noundef %81, i32 noundef %50) #18
  %82 = load i32, ptr %75, align 4, !tbaa !450
  %83 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %37, i32 noundef %82) #17
  %84 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %83) #17
  %85 = icmp eq ptr %84, %45
  br i1 %85, label %87, label %86, !prof !724

86:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 560, ptr noundef nonnull @.str.1) #18
  br label %87

87:                                               ; preds = %74, %86
  %88 = icmp eq i8 %2, 0
  %89 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %80) #17
  %90 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %89) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %37, ptr noundef nonnull %21, ptr noundef %90) #17
  br i1 %88, label %91, label %94, !prof !725

91:                                               ; preds = %87
  %92 = call ptr @get_current_def(ptr noundef %45) #18
  %93 = icmp eq ptr %92, null
  br i1 %93, label %105, label %94, !prof !694

94:                                               ; preds = %87, %91
  %95 = phi ptr [ %92, %91 ], [ %45, %87 ]
  %96 = call ptr @get_current_def(ptr noundef %95) #18
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !724

98:                                               ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 586, ptr noundef nonnull @.str.1) #18
  br label %99

99:                                               ; preds = %94, %98
  %100 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %89) #17
  call void @set_current_def(ptr noundef %95, ptr noundef %100) #18
  %101 = load ptr, ptr %4, align 8, !tbaa !444
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !508
  %104 = call zeroext i8 @bitmap_set_bit(ptr noundef %101, i32 noundef %103) #18
  br label %105

105:                                              ; preds = %91, %68, %99
  call fastcc void @gsi_next(ptr noundef nonnull %6) #17
  call fastcc void @gsi_next(ptr noundef nonnull %7) #17
  %106 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !434
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %27, label %108, !prof !712, !llvm.loop !726

108:                                              ; preds = %27, %105, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slpeel_update_phi_nodes_for_guard2(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !563 !PGOFuncName !727 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !447
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !593
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %9, i32 noundef 0) #17
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %13 = tail call ptr @single_exit(ptr noundef %1) #18
  %14 = tail call ptr @split_edge(ptr noundef %13) #18
  store ptr %14, ptr %3, align 8, !tbaa !444
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !593
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef 0) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %12) #18
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %100, !prof !591

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 6
  br label %22

22:                                               ; preds = %20, %97
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %24 = load i32, ptr %21, align 4, !tbaa !450
  %25 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %23, i32 noundef %24) #17
  %26 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %25) #17
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 141
  br i1 %29, label %30, label %97, !prof !595

30:                                               ; preds = %22
  %31 = call ptr @get_current_def(ptr noundef nonnull %26) #18
  %32 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %23) #17
  %33 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %32) #17
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !508
  %36 = call ptr @create_phi_node(ptr noundef %35, ptr noundef %7) #18
  %37 = icmp eq ptr %31, null
  br i1 %37, label %40, label %38, !prof !592

38:                                               ; preds = %30
  %39 = call ptr @get_current_def(ptr noundef nonnull %31) #18
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi ptr [ %31, %38 ], [ %26, %30 ]
  %42 = phi ptr [ %39, %38 ], [ null, %30 ]
  %43 = icmp eq i8 %2, 0
  %44 = select i1 %43, ptr %26, ptr %41, !prof !728
  %45 = select i1 %43, ptr %41, ptr %26, !prof !728
  %46 = icmp eq ptr %42, null
  %47 = select i1 %46, ptr %45, ptr %42, !prof !595
  call void @add_phi_arg(ptr noundef %36, ptr noundef nonnull %44, ptr noundef %17, i32 noundef 0) #18
  call void @add_phi_arg(ptr noundef %36, ptr noundef nonnull %47, ptr noundef %0, i32 noundef 0) #18
  %48 = load i32, ptr %21, align 4, !tbaa !450
  %49 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %23, i32 noundef %48) #17
  %50 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %49) #17
  %51 = icmp eq ptr %50, %26
  br i1 %51, label %53, label %52, !prof !595

52:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 690, ptr noundef nonnull @.str.1) #18
  br label %53

53:                                               ; preds = %40, %52
  %54 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 6
  %55 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %36) #17
  %56 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %55) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %23, ptr noundef nonnull %10, ptr noundef %56) #17
  %57 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %32) #17
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !508
  %60 = load ptr, ptr %3, align 8, !tbaa !444
  %61 = call ptr @create_phi_node(ptr noundef %59, ptr noundef %60) #18
  %62 = call ptr @single_exit(ptr noundef %1) #18
  call void @add_phi_arg(ptr noundef %61, ptr noundef nonnull %44, ptr noundef %62, i32 noundef 0) #18
  %63 = load i32, ptr %54, align 4, !tbaa !450
  %64 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %36, i32 noundef %63) #17
  %65 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %64) #17
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %68, label %67, !prof !595

67:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 705, ptr noundef nonnull @.str.1) #18
  br label %68

68:                                               ; preds = %53, %67
  %69 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %61) #17
  %70 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %69) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %36, ptr noundef nonnull %17, ptr noundef %70) #17
  %71 = icmp eq ptr %47, %42
  br i1 %71, label %97, label %72, !prof !592

72:                                               ; preds = %68
  %73 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %32) #17
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !508
  %76 = load ptr, ptr %0, align 8, !tbaa !590
  %77 = call ptr @create_phi_node(ptr noundef %75, ptr noundef %76) #18
  %78 = load ptr, ptr %0, align 8, !tbaa !590
  %79 = load ptr, ptr %78, align 8, !tbaa !671
  %80 = call fastcc i32 @VEC_edge_base_length(ptr noundef %79) #17
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %85, label %82, !prof !595

82:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 737, ptr noundef nonnull @.str.1) #18
  %83 = load ptr, ptr %0, align 8, !tbaa !590
  %84 = load ptr, ptr %83, align 8, !tbaa !671
  br label %85

85:                                               ; preds = %72, %82
  %86 = phi ptr [ %79, %72 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  %88 = call fastcc ptr @VEC_edge_base_index(ptr noundef %86, i32 noundef 0) #17
  call void @add_phi_arg(ptr noundef %77, ptr noundef nonnull %47, ptr noundef %88, i32 noundef 0) #18
  %89 = load i32, ptr %87, align 4, !tbaa !450
  %90 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %36, i32 noundef %89) #17
  %91 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %90) #17
  %92 = icmp eq ptr %91, %47
  br i1 %92, label %94, label %93, !prof !595

93:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 743, ptr noundef nonnull @.str.1) #18
  br label %94

94:                                               ; preds = %85, %93
  %95 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %77) #17
  %96 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %95) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %36, ptr noundef nonnull %0, ptr noundef %96) #17
  br label %97

97:                                               ; preds = %68, %22, %94
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %98 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !434
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %22, label %100, !prof !596, !llvm.loop !729

100:                                              ; preds = %97, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_vec_debug_stmts() unnamed_addr #0 !prof !563 !PGOFuncName !730 {
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !443
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %19, label %3, !prof !573

3:                                                ; preds = %0
  %4 = load ptr, ptr @adjust_vec, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 189, ptr noundef nonnull @.str.1) #18
  %7 = load ptr, ptr @adjust_vec, align 8
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %4, %3 ], [ %7, %6 ]
  %10 = tail call fastcc i32 @VEC_adjust_info_base_length(ptr noundef %9) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %9, %8 ]
  %14 = tail call fastcc ptr @VEC_adjust_info_base_last(ptr noundef %13) #17
  tail call fastcc void @adjust_debug_stmts_now(ptr noundef nonnull %14) #17
  %15 = load ptr, ptr @adjust_vec, align 8
  tail call fastcc void @VEC_adjust_info_base_pop(ptr noundef %15) #17
  %16 = tail call fastcc i32 @VEC_adjust_info_base_length(ptr noundef %15) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %12, !llvm.loop !731

18:                                               ; preds = %12, %8
  tail call fastcc void @VEC_adjust_info_stack_free() #17
  br label %19

19:                                               ; preds = %0, %18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @delete_update_ssa() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @vec_stack_p_reserve_exact_1(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_debug_stmts(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !732 !PGOFuncName !733 {
  %4 = alloca %struct.adjust_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !443
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7, !prof !708

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !508
  %14 = load ptr, ptr @cfun, align 8, !tbaa !444
  %15 = tail call fastcc ptr @gimple_vop(ptr noundef %14) #17
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  store ptr %0, ptr %4, align 8, !tbaa !457
  %18 = getelementptr inbounds %struct.adjust_info, ptr %4, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !459
  %19 = getelementptr inbounds %struct.adjust_info, ptr %4, i64 0, i32 2
  store ptr %2, ptr %19, align 8, !tbaa !460
  %20 = load ptr, ptr @adjust_vec, align 8, !tbaa !444
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call fastcc void @VEC_adjust_info_stack_safe_push(ptr noundef nonnull %4) #17
  br label %24

23:                                               ; preds = %17
  call fastcc void @adjust_debug_stmts_now(ptr noundef nonnull %4) #17
  br label %24

24:                                               ; preds = %22, %23, %11, %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_phi_and_debug_stmts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !734 !PGOFuncName !735 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !450
  %6 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %5) #17
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #17
  %8 = load i32, ptr %4, align 4, !tbaa !450
  %9 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %8) #17
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %9, ptr noundef %2) #17
  %10 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !443
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !736

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #17
  %14 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %13) #17
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #17
  tail call fastcc void @adjust_debug_stmts(ptr noundef %7, ptr noundef %14, ptr noundef %15) #17
  br label %16

16:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !523 !PGOFuncName !737 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !738
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull @.str.1) #18
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !738
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !739
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_adjust_info_stack_safe_push(ptr noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !743 {
  tail call fastcc void @VEC_adjust_info_stack_reserve() #17
  %2 = load ptr, ptr @adjust_vec, align 8, !tbaa !444
  tail call fastcc void @VEC_adjust_info_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_debug_stmts_now(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !523 !PGOFuncName !744 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = getelementptr inbounds %struct.adjust_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !460
  %5 = load ptr, ptr %0, align 8, !tbaa !457
  %6 = getelementptr inbounds %struct.adjust_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !459
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !508
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef %9) #17
  %11 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 148, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %1, %13
  %15 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  %16 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #17, !range !434
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = icmp eq ptr %7, null
  %20 = icmp eq ptr %4, %10
  br label %21

21:                                               ; preds = %18, %52
  %22 = phi ptr [ %15, %18 ], [ %53, %52 ]
  %23 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %22) #17, !range !434
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %21
  %26 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %22) #17, !range !434
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 160, ptr noundef nonnull @.str.1) #18
  br label %29

29:                                               ; preds = %25, %28
  %30 = call fastcc ptr @gimple_bb(ptr noundef %22) #17
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %30, ptr noundef %4) #18
  %34 = icmp eq i8 %33, 0
  %35 = icmp eq ptr %30, %10
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %52, label %38

37:                                               ; preds = %29
  br i1 %20, label %52, label %38

38:                                               ; preds = %32, %37
  %39 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %30, ptr noundef %10) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  br i1 %19, label %51, label %42

42:                                               ; preds = %41
  %43 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %2) #17
  %44 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #17, !range !434
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %48, %46 ], [ %43, %42 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %47, ptr noundef nonnull %7) #17
  %48 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %2) #17
  %49 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #17, !range !434
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %46, label %52, !llvm.loop !745

51:                                               ; preds = %41
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %22) #17
  call fastcc void @update_stmt(ptr noundef %22) #17
  br label %52

52:                                               ; preds = %46, %42, %32, %37, %38, %51, %21
  %53 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #17
  %54 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #17, !range !434
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %21, label %56, !llvm.loop !746

56:                                               ; preds = %52, %14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_adjust_info_stack_reserve() unnamed_addr #0 !prof !523 !PGOFuncName !747 {
  %1 = load ptr, ptr @adjust_vec, align 8, !tbaa !444
  %2 = tail call fastcc i32 @VEC_adjust_info_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_stack_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 24) #18
  store ptr %5, ptr @adjust_vec, align 8, !tbaa !444
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_adjust_info_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #12 !prof !523 !PGOFuncName !748 {
  %3 = load i32, ptr %0, align 8, !tbaa !749
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !749
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !599
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_adjust_info_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !751 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !752
  %6 = load i32, ptr %0, align 8, !tbaa !749
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_stack_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !753 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !508
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !523 !PGOFuncName !754 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !755
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !541
  store ptr %6, ptr %0, align 8, !tbaa !757
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #17, !range !434
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !757
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !508
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !758 {
  %2 = load ptr, ptr %0, align 8, !tbaa !757
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !755
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !759 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !529
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !760 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #2 !prof !523 !PGOFuncName !761 {
  %2 = load ptr, ptr %0, align 8, !tbaa !757
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !541
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !762
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !763 {
  %2 = load ptr, ptr %0, align 8, !tbaa !757
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #2 !prof !523 !PGOFuncName !764 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !762
  store ptr %3, ptr %0, align 8, !tbaa !757
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #17, !range !434
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !541
  store ptr %8, ptr %2, align 8, !tbaa !762
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !765 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !766 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call void @update_stmt_operands(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !767 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !768
  store ptr %4, ptr %0, align 8, !tbaa !757
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #17, !range !434
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !769
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #17
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !757
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !508
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !523 !PGOFuncName !770 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !508
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #17, !range !529
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #17
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #17
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #17
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #17
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !771

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #17
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #17
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #17
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #17
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !772

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #17
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #17
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !769
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #17
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !523 !PGOFuncName !773 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !474
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 918, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !474
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !488
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !486
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !470
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #8 !prof !523 !PGOFuncName !774 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !541
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #17
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #17
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #5 !prof !523 !PGOFuncName !775 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !776
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !777 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !508
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !523 !PGOFuncName !778 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !474
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !779 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !508
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !780 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr null, ptr %10, align 8, !tbaa !444
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !781 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !508
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !523 !PGOFuncName !782 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !783
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !784 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !529
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !523 !PGOFuncName !785 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !443
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !786 !PGOFuncName !787 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !434
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !788

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !671
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !789 !PGOFuncName !790 {
  %2 = load ptr, ptr %0, align 8, !tbaa !671
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @set_current_def(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_adjust_info_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !791 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !749
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_adjust_info_base_last(ptr noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !792 {
  %2 = load i32, ptr %0, align 8, !tbaa !749
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_adjust_info_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !523 !PGOFuncName !793 {
  %2 = load i32, ptr %0, align 8, !tbaa !749
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !749
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_adjust_info_stack_free() unnamed_addr #0 !prof !523 !PGOFuncName !794 {
  %1 = load ptr, ptr @adjust_vec, align 8, !tbaa !444
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @vec_stack_free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @adjust_vec, align 8, !tbaa !444
  ret void
}

; Function Attrs: optsize
declare void @vec_stack_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_do_peeling_for_alignment(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !717 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !589

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %8 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 37, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  tail call void @initialize_original_copy_tables() #18
  %10 = tail call fastcc ptr @vect_build_loop_niters(ptr noundef nonnull %0, ptr noundef null) #17
  %11 = call fastcc ptr @vect_gen_niters_for_prolog_loop(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %2) #17
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !669
  %14 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %13) #17
  %15 = tail call ptr @loop_preheader_edge(ptr noundef %3) #18
  %16 = tail call fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef %3, ptr noundef %15, ptr noundef %11, ptr noundef %10, i8 noundef zeroext 1, i32 noundef %14, i8 noundef zeroext 1, ptr noundef null, ptr noundef null) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !689

18:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2158, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %9, %18
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !673
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !508
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %23, ptr noundef %21, ptr noundef %11) #18
  store ptr %24, ptr %20, align 8, !tbaa !673
  %25 = load ptr, ptr %2, align 8, !tbaa !444
  tail call fastcc void @vect_update_inits_of_drs(ptr noundef nonnull %0, ptr noundef %25) #17
  tail call void @scev_reset() #18
  tail call void @free_original_copy_tables() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_gen_niters_for_prolog_loop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !717 !PGOFuncName !795 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !796
  %9 = load ptr, ptr %0, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = load ptr, ptr %8, align 8, !tbaa !797
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %10) #17
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !802
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !508
  %16 = lshr i32 %15, 3
  %17 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !508
  %19 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !803
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !508
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28, !prof !689

26:                                               ; preds = %3
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #18
  br label %33

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !508
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1023
  %42 = zext nneg i32 %41 to i64
  %43 = shl nuw i64 1, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !804
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !589

48:                                               ; preds = %33
  %49 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %46) #17
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %49, i64 0, i32 19
  %51 = load i32, ptr %50, align 8, !tbaa !805
  br label %52

52:                                               ; preds = %48, %33
  %53 = phi i32 [ %51, %48 ], [ 1, %33 ]
  %54 = tail call ptr @loop_preheader_edge(ptr noundef %9) #18
  %55 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !667
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72, !prof !689

58:                                               ; preds = %52
  %59 = udiv i32 %56, %38
  %60 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.25, i32 noundef %56) #17
  br label %65

65:                                               ; preds = %62, %58
  %66 = sub nsw i32 %44, %59
  %67 = add nsw i32 %44, -1
  %68 = and i32 %66, %67
  %69 = sdiv i32 %68, %53
  %70 = sext i32 %69 to i64
  %71 = tail call ptr @build_int_cst(ptr noundef %18, i64 noundef %70) #18
  br label %107

72:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !444
  %73 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %10, ptr noundef nonnull %5, ptr noundef null, ptr noundef %9) #18
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !508
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !508
  %78 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !806
  %79 = call i64 @tree_low_cst(ptr noundef %77, i32 noundef 1) #18
  %80 = trunc i64 %79 to i32
  %81 = call ptr %78(i32 noundef %80, i32 noundef 1) #18
  %82 = add nsw i32 %16, -1
  %83 = sext i32 %82 to i64
  %84 = call ptr @build_int_cst(ptr noundef %81, i64 noundef %83) #18
  %85 = udiv i32 %16, %44
  %86 = zext nneg i32 %85 to i64
  %87 = call i32 @exact_log2(i64 noundef %86) #18
  %88 = sext i32 %87 to i64
  %89 = call ptr @build_int_cst(ptr noundef %81, i64 noundef %88) #18
  %90 = shl i64 4294967296, %42
  %91 = add i64 %90, -4294967296
  %92 = ashr exact i64 %91, 32
  %93 = call ptr @build_int_cst(ptr noundef %81, i64 noundef %92) #18
  %94 = ashr exact i64 %90, 32
  %95 = call ptr @build_int_cst(ptr noundef %81, i64 noundef %94) #18
  %96 = load ptr, ptr %5, align 8, !tbaa !444
  %97 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %54, ptr noundef %96) #18
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99, !prof !589

99:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2016, ptr noundef nonnull @.str.1) #18
  br label %100

100:                                              ; preds = %72, %99
  %101 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %81, ptr noundef nonnull %73) #18
  %102 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %81, ptr noundef %101, ptr noundef %84) #18
  %103 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %81, ptr noundef %102, ptr noundef %89) #18
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %81, ptr noundef %95, ptr noundef %103) #18
  %105 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %81, ptr noundef %104, ptr noundef %93) #18
  %106 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %18, ptr noundef %105) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %107

107:                                              ; preds = %100, %65
  %108 = phi ptr [ %71, %65 ], [ %106, %100 ]
  %109 = load i64, ptr %1, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 23
  br i1 %111, label %114, label %112, !prof !719

112:                                              ; preds = %107
  %113 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef %18, ptr noundef %108, ptr noundef nonnull %1) #18
  br label %114

114:                                              ; preds = %112, %107
  %115 = phi ptr [ %113, %112 ], [ %108, %107 ]
  %116 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118, !prof !589

118:                                              ; preds = %114
  %119 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %120 = call i64 @fwrite(ptr nonnull @.str.26, i64 24, i64 1, ptr %119)
  %121 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  call void @print_generic_expr(ptr noundef %121, ptr noundef %115, i32 noundef 2) #18
  br label %122

122:                                              ; preds = %118, %114
  %123 = call ptr @create_tmp_var(ptr noundef %18, ptr noundef nonnull @.str.27) #18
  %124 = call zeroext i8 @add_referenced_var(ptr noundef %123) #18
  store ptr null, ptr %4, align 8, !tbaa !444
  %125 = call ptr @force_gimple_operand(ptr noundef %115, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %123) #18
  %126 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %127 = call zeroext i8 @types_compatible_p(ptr noundef %126, ptr noundef %18) #18
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %130, label %129, !prof !689

129:                                              ; preds = %122
  store ptr %125, ptr %2, align 8, !tbaa !444
  br label %141

130:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !444
  %131 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %132 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %131, ptr noundef %115) #18
  %133 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %134 = call ptr @create_tmp_var(ptr noundef %133, ptr noundef nonnull @.str.27) #18
  %135 = call zeroext i8 @add_referenced_var(ptr noundef %134) #18
  %136 = call ptr @force_gimple_operand(ptr noundef %132, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %134) #18
  store ptr %136, ptr %2, align 8, !tbaa !444
  %137 = load ptr, ptr %6, align 8, !tbaa !444
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef nonnull %137) #18
  br label %140

140:                                              ; preds = %139, %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %141

141:                                              ; preds = %140, %129
  %142 = load ptr, ptr %4, align 8, !tbaa !444
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144, !prof !689

144:                                              ; preds = %141
  %145 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %54, ptr noundef nonnull %142) #18
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147, !prof !589

147:                                              ; preds = %144
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2067, ptr noundef nonnull @.str.1) #18
  br label %148

148:                                              ; preds = %147, %144, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_inits_of_drs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !717 !PGOFuncName !814 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !815
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8, !prof !589

8:                                                ; preds = %2
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %10 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 31, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #17, !range !816
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14, !prof !817

14:                                               ; preds = %11, %14
  %15 = phi i32 [ %17, %14 ], [ 0, %11 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !444
  tail call fastcc void @vect_update_init_of_dr(ptr noundef %16, ptr noundef %1) #17
  %17 = add i32 %15, 1
  %18 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef %17, ptr noundef nonnull %3) #17, !range !816
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %14, !prof !584, !llvm.loop !818

20:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @vect_create_addr_base_for_vector_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !786 !PGOFuncName !819 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !788

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !820
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !822

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !444
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !444
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_init_of_dr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !717 !PGOFuncName !823 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !824
  %5 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %6 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %5, ptr noundef %1) #18
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %8 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !825
  %10 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %9) #18
  %11 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %5, ptr noundef %6, ptr noundef %10) #18
  %12 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef %4) #18
  %14 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %12, ptr noundef %13, ptr noundef %11) #18
  store ptr %14, ptr %3, align 8, !tbaa !824
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_loop_versioning(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !826 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !444
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !673
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !669
  %14 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %13) #17
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %16 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !508
  %18 = zext i32 %14 to i64
  %19 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef %18) #18
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %15, ptr noundef %11, ptr noundef %19) #18
  store ptr %20, ptr %2, align 8, !tbaa !444
  %21 = tail call ptr @force_gimple_operand(ptr noundef %20, ptr noundef %3, i8 noundef zeroext 0, ptr noundef null) #18
  store ptr %21, ptr %2, align 8, !tbaa !444
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !663
  %24 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !827

26:                                               ; preds = %4
  tail call fastcc void @vect_create_cond_for_align_checks(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %27

27:                                               ; preds = %26, %4
  %28 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !665
  %30 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !828

32:                                               ; preds = %27
  tail call fastcc void @vect_create_cond_for_alias_checks(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %33

33:                                               ; preds = %32, %27
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %35 = load ptr, ptr %2, align 8, !tbaa !444
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !444
  %37 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %34, ptr noundef %35, ptr noundef %36) #18
  store ptr %37, ptr %2, align 8, !tbaa !444
  %38 = call ptr @force_gimple_operand(ptr noundef %37, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  store ptr %38, ptr %2, align 8, !tbaa !444
  %39 = load ptr, ptr %8, align 8, !tbaa !444
  call void @gimple_seq_add_seq(ptr noundef %3, ptr noundef %39) #18
  %40 = icmp eq i8 %1, 0
  br i1 %40, label %84, label %41, !prof !828

41:                                               ; preds = %33
  call void @initialize_original_copy_tables() #18
  %42 = load ptr, ptr %2, align 8, !tbaa !444
  %43 = call ptr @loop_version(ptr noundef %9, ptr noundef %42, ptr noundef nonnull %5, i32 noundef 8000, i32 noundef 8000, i32 noundef 2000, i8 noundef zeroext 1) #18
  call void @free_original_copy_tables() #18
  %44 = call ptr @single_exit(ptr noundef %9) #18
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !447
  %47 = load ptr, ptr %46, align 8, !tbaa !671
  %48 = call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #17
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2543, ptr noundef nonnull @.str.1) #18
  br label %51

51:                                               ; preds = %41, %50
  %52 = call ptr @single_exit(ptr noundef %9) #18
  %53 = call ptr @split_edge(ptr noundef %52) #18
  %54 = call ptr @single_exit(ptr noundef %9) #18
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !593
  %57 = call fastcc ptr @VEC_edge_base_index(ptr noundef %56, i32 noundef 0) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %46) #18
  %58 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !434
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 6
  br label %62

62:                                               ; preds = %60, %62
  %63 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17
  %64 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %63) #17
  %65 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %64) #17
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !508
  %68 = call ptr @create_phi_node(ptr noundef %67, ptr noundef %53) #18
  %69 = load i32, ptr %61, align 4, !tbaa !450
  %70 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %63, i32 noundef %69) #17
  %71 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %70) #17
  %72 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %63, ptr noundef %57) #17
  call void @add_phi_arg(ptr noundef %68, ptr noundef %71, ptr noundef %54, i32 noundef %72) #18
  %73 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %68) #17
  %74 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %73) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %63, ptr noundef %57, ptr noundef %74) #17
  call fastcc void @gsi_next(ptr noundef nonnull %6) #17
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !434
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %62, label %77, !llvm.loop !829

77:                                               ; preds = %62, %51
  call void @update_ssa(i32 noundef 2048) #18
  %78 = load ptr, ptr %3, align 8, !tbaa !444
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %5, align 8, !tbaa !444
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %81) #17
  %82 = load ptr, ptr %3, align 8, !tbaa !444
  call void @gsi_insert_seq_before(ptr noundef nonnull %7, ptr noundef %82, i32 noundef 1) #18
  store ptr null, ptr %3, align 8, !tbaa !444
  br label %83

83:                                               ; preds = %80, %77
  store ptr null, ptr %2, align 8, !tbaa !444
  br label %84

84:                                               ; preds = %33, %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_cond_for_align_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !826 !PGOFuncName !830 {
  %4 = alloca ptr, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !628
  %8 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !663
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !831
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !827

13:                                               ; preds = %3
  %14 = add nsw i32 %11, 1
  %15 = and i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !828

17:                                               ; preds = %13, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2226, ptr noundef nonnull @.str.1) #18
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !444
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !508
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !806
  %23 = tail call i64 @tree_low_cst(ptr noundef %21, i32 noundef 1) #18
  %24 = trunc i64 %23 to i32
  %25 = tail call ptr %22(i32 noundef %24, i32 noundef 0) #18
  %26 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %4) #17, !range !816
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28, !prof !832

28:                                               ; preds = %18, %51
  %29 = phi i32 [ %53, %51 ], [ 0, %18 ]
  %30 = phi ptr [ %52, %51 ], [ null, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !444
  %31 = load ptr, ptr %4, align 8, !tbaa !444
  %32 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %31, ptr noundef nonnull %6, ptr noundef null, ptr noundef %7) #18
  %33 = load ptr, ptr %6, align 8, !tbaa !444
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !833

35:                                               ; preds = %28
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef nonnull %33) #18
  br label %36

36:                                               ; preds = %35, %28
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.30, i32 noundef %29) #17
  %38 = call ptr @create_tmp_var(ptr noundef %25, ptr noundef nonnull %5) #18
  %39 = call zeroext i8 @add_referenced_var(ptr noundef %38) #18
  %40 = call fastcc ptr @make_ssa_name(ptr noundef %38) #17
  %41 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 116, ptr noundef %40, ptr noundef %32, ptr noundef null) #18
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !508
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %41) #18
  %43 = icmp eq ptr %30, null
  br i1 %43, label %51, label %44, !prof !834

44:                                               ; preds = %36
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.31, i32 noundef %29) #17
  %46 = call ptr @create_tmp_var(ptr noundef %25, ptr noundef nonnull %5) #18
  %47 = call zeroext i8 @add_referenced_var(ptr noundef %46) #18
  %48 = call fastcc ptr @make_ssa_name(ptr noundef %46) #17
  %49 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 87, ptr noundef %48, ptr noundef nonnull %30, ptr noundef nonnull %40) #18
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !508
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %49) #18
  br label %51

51:                                               ; preds = %36, %44
  %52 = phi ptr [ %48, %44 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %53 = add i32 %29, 1
  %54 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef %53, ptr noundef nonnull %4) #17, !range !816
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %28, !prof !835, !llvm.loop !836

56:                                               ; preds = %51, %18
  %57 = phi ptr [ null, %18 ], [ %52, %51 ]
  %58 = sext i32 %11 to i64
  %59 = call ptr @build_int_cst(ptr noundef %25, i64 noundef %58) #18
  %60 = call ptr @create_tmp_var(ptr noundef %25, ptr noundef nonnull @.str.32) #18
  %61 = call zeroext i8 @add_referenced_var(ptr noundef %60) #18
  %62 = call fastcc ptr @make_ssa_name(ptr noundef %60) #17
  %63 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %62, ptr noundef %57, ptr noundef %59) #18
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !508
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %63) #18
  %65 = call ptr @build_int_cst(ptr noundef %25, i64 noundef 0) #18
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %67 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %66, ptr noundef %62, ptr noundef %65) #18
  %68 = load ptr, ptr %1, align 8, !tbaa !444
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70, !prof !827

70:                                               ; preds = %56
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %72 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %71, ptr noundef nonnull %68, ptr noundef %67) #18
  br label %73

73:                                               ; preds = %56, %70
  %74 = phi ptr [ %72, %70 ], [ %67, %56 ]
  store ptr %74, ptr %1, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_cond_for_alias_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !523 !PGOFuncName !837 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !628
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !665
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !444
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !674
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @build_int_cst(ptr noundef %8, i64 noundef %11) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %13 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %7) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %3
  %16 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #17, !range !816
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %15, %82
  %19 = phi i32 [ %84, %82 ], [ 0, %15 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !444
  %21 = load ptr, ptr %20, align 8, !tbaa !838
  %22 = load ptr, ptr %21, align 8, !tbaa !797
  %23 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %22) #17
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !804
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %25) #17
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !840
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi ptr [ %30, %27 ], [ %21, %18 ]
  %33 = phi ptr [ %25, %27 ], [ %22, %18 ]
  %34 = getelementptr inbounds %struct.data_dependence_relation, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !841
  %36 = load ptr, ptr %35, align 8, !tbaa !797
  %37 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %36) #17
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !804
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %39) #17
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !840
  br label %45

45:                                               ; preds = %41, %31
  %46 = phi ptr [ %44, %41 ], [ %35, %31 ]
  %47 = phi ptr [ %39, %41 ], [ %36, %31 ]
  %48 = tail call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %33, ptr noundef %2, ptr noundef null, ptr noundef %5) #18
  %49 = tail call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %47, ptr noundef %2, ptr noundef null, ptr noundef %5) #18
  %50 = tail call fastcc ptr @vect_vfa_segment_size(ptr noundef %32, ptr noundef %12) #17
  %51 = tail call fastcc ptr @vect_vfa_segment_size(ptr noundef %46, ptr noundef %12) #17
  %52 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #18
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %56 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 41, i64 1, ptr %55)
  %57 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %58 = getelementptr inbounds %struct.data_reference, ptr %32, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !803
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %59, i32 noundef 2) #18
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %61 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %60)
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %63 = getelementptr inbounds %struct.data_reference, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !803
  tail call void @print_generic_expr(ptr noundef %62, ptr noundef %64, i32 noundef 2) #18
  br label %65

65:                                               ; preds = %54, %45
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %67 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !508
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %68, ptr noundef %48, ptr noundef %50) #18
  %70 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %66, ptr noundef %69, ptr noundef %49) #18
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %72 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !508
  %74 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %73, ptr noundef %49, ptr noundef %51) #18
  %75 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %71, ptr noundef %74, ptr noundef %48) #18
  %76 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %66, ptr noundef %70, ptr noundef %75) #18
  %77 = load ptr, ptr %1, align 8, !tbaa !444
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !444
  %81 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %80, ptr noundef nonnull %77, ptr noundef %76) #18
  br label %82

82:                                               ; preds = %65, %79
  %83 = phi ptr [ %81, %79 ], [ %76, %65 ]
  store ptr %83, ptr %1, align 8, !tbaa !444
  %84 = add i32 %19, 1
  %85 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %7, i32 noundef %84, ptr noundef nonnull %4) #17, !range !816
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %18, !llvm.loop !842

87:                                               ; preds = %82, %15
  %88 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1) #18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @vect_dump, align 8, !tbaa !444
  %92 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %7) #17
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.35, i32 noundef %92) #17
  br label %94

94:                                               ; preds = %87, %90, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !717 !PGOFuncName !843 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !689

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !679
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !844

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !444
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !444
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !845 !PGOFuncName !846 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !444
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !523 !PGOFuncName !847 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !682
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !444
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !444
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_vfa_segment_size(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !523 !PGOFuncName !848 {
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !444
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !825
  %6 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %3, ptr noundef %5, ptr noundef %1) #18
  %7 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %0) #18
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !797
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %10) #17
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !802
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !508
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !444
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %16, ptr noundef %6, ptr noundef %15) #18
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi ptr [ %17, %9 ], [ %6, %2 ]
  %20 = load ptr, ptr @sizetype_tab, align 16, !tbaa !444
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef %19) #18
  ret ptr %21
}

; Function Attrs: optsize
declare i32 @vect_supportable_dr_alignment(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!425}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!36 = !{ptr @rename_variables_in_bb, ptr @gsi_start_bb, i64 72}
!37 = !{ptr @rename_variables_in_bb, ptr @gsi_end_p, i64 385}
!38 = !{ptr @rename_variables_in_bb, ptr @gsi_stmt, i64 242}
!39 = !{ptr @rename_variables_in_bb, ptr @op_iter_init_use, i64 161}
!40 = !{ptr @rename_variables_in_bb, ptr @op_iter_done, i64 417}
!41 = !{ptr @rename_variables_in_bb, ptr @rename_use_op, i64 337}
!42 = !{ptr @rename_variables_in_bb, ptr @op_iter_next_use, i64 256}
!43 = !{ptr @rename_variables_in_bb, ptr @gsi_next, i64 242}
!44 = !{ptr @rename_variables_in_bb, ptr @ei_start_1, i64 72}
!45 = !{ptr @rename_variables_in_bb, ptr @ei_cond, i64 180}
!46 = !{ptr @rename_variables_in_bb, ptr @flow_bb_inside_loop_p, i64 108}
!47 = !{ptr @rename_variables_in_bb, ptr @gsi_start_phis, i64 71}
!48 = !{ptr @rename_variables_in_bb, ptr @gimple_phi_arg_imm_use_ptr, i64 81}
!49 = !{ptr @rename_variables_in_bb, ptr @ei_next, i64 108}
!50 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 5181}
!51 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 5181}
!52 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!53 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 162}
!54 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 162}
!55 = !{ptr @rename_use_op, ptr @get_use_from_ptr, i64 341}
!56 = !{ptr @rename_use_op, ptr @get_current_def, i64 340}
!57 = !{ptr @rename_use_op, ptr @set_ssa_use_from_ptr, i64 212}
!58 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!59 = !{ptr @ei_cond, ptr @ei_end_p, i64 180}
!60 = !{ptr @ei_cond, ptr @ei_edge, i64 108}
!61 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1235}
!62 = !{ptr @ei_next, ptr @ei_container, i64 215}
!63 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 108}
!64 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!65 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!66 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!67 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!68 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 161}
!69 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1}
!70 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 162}
!71 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 162}
!72 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 480}
!73 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 480}
!74 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 476}
!75 = !{ptr @ei_end_p, ptr @ei_container, i64 359}
!76 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 180}
!77 = !{ptr @ei_edge, ptr @ei_container, i64 215}
!78 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 108}
!79 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!80 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!81 = !{ptr @rename_variables_in_loop, ptr @get_loop_body, i64 36}
!82 = !{ptr @rename_variables_in_loop, ptr @rename_variables_in_bb, i64 71}
!83 = !{ptr @rename_variables_in_loop, ptr @free, i64 36}
!84 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @single_exit, i64 36}
!85 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @build_int_cst, i64 72}
!86 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @get_loop_exit_condition, i64 36}
!87 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @fancy_abort, i64 1}
!88 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @gsi_for_stmt, i64 36}
!89 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @standard_iv_increment_position, i64 36}
!90 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @create_iv, i64 36}
!91 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @force_gimple_operand_gsi, i64 72}
!92 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @gimple_build_cond, i64 36}
!93 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @gsi_insert_before, i64 36}
!94 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @gsi_remove, i64 36}
!95 = !{ptr @slpeel_make_loop_iterate_ntimes, ptr @find_loop_location, i64 36}
!96 = !{ptr @find_loop_location, ptr @get_loop_exit_condition, i64 12690}
!97 = !{ptr @find_loop_location, ptr @gimple_location, i64 12733}
!98 = !{ptr @find_loop_location, ptr @gsi_start_bb, i64 5109}
!99 = !{ptr @find_loop_location, ptr @gsi_end_p, i64 5157}
!100 = !{ptr @find_loop_location, ptr @gsi_stmt, i64 5116}
!101 = !{ptr @find_loop_location, ptr @gsi_next, i64 48}
!102 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @single_exit, i64 149}
!103 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @loop_preheader_edge, i64 29}
!104 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @get_loop_body, i64 35}
!105 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @can_copy_bbs_p, i64 35}
!106 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @free, i64 68}
!107 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @loop_outer, i64 34}
!108 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @duplicate_loop, i64 34}
!109 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @get_immediate_dominator, i64 33}
!110 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @xmalloc, i64 33}
!111 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @copy_bbs, i64 33}
!112 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @gsi_start_phis, i64 47}
!113 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @gsi_end_p, i64 101}
!114 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @gsi_stmt, i64 54}
!115 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @gimple_phi_arg_imm_use_ptr, i64 54}
!116 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @get_use_from_ptr, i64 54}
!117 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @gimple_phi_arg_location_from_edge, i64 52}
!118 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @VEC_edge_base_index, i64 74}
!119 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @add_phi_arg, i64 52}
!120 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @gsi_next, i64 54}
!121 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @redirect_edge_and_branch_force, i64 47}
!122 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @set_immediate_dominator, i64 65}
!123 = !{ptr @slpeel_tree_duplicate_loop_to_edge_cfg, ptr @flow_bb_inside_loop_p, i64 14}
!124 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 115}
!125 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 114}
!126 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 387}
!127 = !{ptr @slpeel_can_duplicate_loop_p, ptr @single_exit, i64 153}
!128 = !{ptr @slpeel_can_duplicate_loop_p, ptr @loop_preheader_edge, i64 79}
!129 = !{ptr @slpeel_can_duplicate_loop_p, ptr @get_loop_exit_condition, i64 79}
!130 = !{ptr @slpeel_can_duplicate_loop_p, ptr @gsi_last_bb, i64 79}
!131 = !{ptr @slpeel_can_duplicate_loop_p, ptr @need_ssa_update_p, i64 79}
!132 = !{ptr @slpeel_can_duplicate_loop_p, ptr @loop_outer, i64 77}
!133 = !{ptr @slpeel_can_duplicate_loop_p, ptr @empty_block_p, i64 75}
!134 = !{ptr @slpeel_can_duplicate_loop_p, ptr @gsi_stmt, i64 72}
!135 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 296}
!136 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 296}
!137 = !{ptr @vect_can_advance_ivs_p, ptr @vect_print_dump_info, i64 236}
!138 = !{ptr @vect_can_advance_ivs_p, ptr @fwrite, i64 7}
!139 = !{ptr @vect_can_advance_ivs_p, ptr @gsi_start_phis, i64 43}
!140 = !{ptr @vect_can_advance_ivs_p, ptr @gsi_end_p, i64 136}
!141 = !{ptr @vect_can_advance_ivs_p, ptr @gsi_stmt, i64 96}
!142 = !{ptr @vect_can_advance_ivs_p, ptr @print_gimple_stmt, i64 1}
!143 = !{ptr @vect_can_advance_ivs_p, ptr @gimple_phi_result_ptr, i64 96}
!144 = !{ptr @vect_can_advance_ivs_p, ptr @get_def_from_ptr, i64 150}
!145 = !{ptr @vect_can_advance_ivs_p, ptr @is_gimple_reg, i64 96}
!146 = !{ptr @vect_can_advance_ivs_p, ptr @vinfo_for_stmt, i64 55}
!147 = !{ptr @vect_can_advance_ivs_p, ptr @analyze_scalar_evolution, i64 54}
!148 = !{ptr @vect_can_advance_ivs_p, ptr @instantiate_parameters, i64 54}
!149 = !{ptr @vect_can_advance_ivs_p, ptr @print_generic_expr, i64 1}
!150 = !{ptr @vect_can_advance_ivs_p, ptr @evolution_part_in_loop_num, i64 53}
!151 = !{ptr @vect_can_advance_ivs_p, ptr @tree_is_chrec, i64 52}
!152 = !{ptr @vect_can_advance_ivs_p, ptr @gsi_next, i64 93}
!153 = !{ptr @vinfo_for_stmt, ptr @gimple_uid, i64 101}
!154 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 100}
!155 = !{ptr @vinfo_for_stmt, ptr @fancy_abort, i64 1}
!156 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_index, i64 100}
!157 = !{ptr @instantiate_parameters, ptr @block_before_loop, i64 58}
!158 = !{ptr @instantiate_parameters, ptr @instantiate_scev, i64 58}
!159 = !{ptr @tree_is_chrec, ptr @automatically_generated_chrec_p, i64 85}
!160 = !{ptr @block_before_loop, ptr @loop_preheader_edge, i64 58}
!161 = !{ptr @vect_do_peeling_for_loop_bound, ptr @vect_print_dump_info, i64 21}
!162 = !{ptr @vect_do_peeling_for_loop_bound, ptr @fwrite, i64 1}
!163 = !{ptr @vect_do_peeling_for_loop_bound, ptr @initialize_original_copy_tables, i64 21}
!164 = !{ptr @vect_do_peeling_for_loop_bound, ptr @vect_generate_tmps_on_preheader, i64 21}
!165 = !{ptr @vect_do_peeling_for_loop_bound, ptr @VEC_gimple_base_length, i64 21}
!166 = !{ptr @vect_do_peeling_for_loop_bound, ptr @VEC_ddr_p_base_length, i64 16}
!167 = !{ptr @vect_do_peeling_for_loop_bound, ptr @conservative_cost_threshold, i64 1}
!168 = !{ptr @vect_do_peeling_for_loop_bound, ptr @single_exit, i64 42}
!169 = !{ptr @vect_do_peeling_for_loop_bound, ptr @slpeel_tree_peel_loop_to_edge, i64 21}
!170 = !{ptr @vect_do_peeling_for_loop_bound, ptr @fancy_abort, i64 2}
!171 = !{ptr @vect_do_peeling_for_loop_bound, ptr @loop_preheader_edge, i64 21}
!172 = !{ptr @vect_do_peeling_for_loop_bound, ptr @VEC_edge_base_index, i64 42}
!173 = !{ptr @vect_do_peeling_for_loop_bound, ptr @vect_update_ivs_after_vectorizer, i64 21}
!174 = !{ptr @vect_do_peeling_for_loop_bound, ptr @scev_reset, i64 21}
!175 = !{ptr @vect_do_peeling_for_loop_bound, ptr @free_original_copy_tables, i64 21}
!176 = !{ptr @vect_generate_tmps_on_preheader, ptr @loop_preheader_edge, i64 49}
!177 = !{ptr @vect_generate_tmps_on_preheader, ptr @vect_build_loop_niters, i64 21}
!178 = !{ptr @vect_generate_tmps_on_preheader, ptr @exact_log2, i64 21}
!179 = !{ptr @vect_generate_tmps_on_preheader, ptr @build_int_cst, i64 21}
!180 = !{ptr @vect_generate_tmps_on_preheader, ptr @fold_build2_stat_loc, i64 42}
!181 = !{ptr @vect_generate_tmps_on_preheader, ptr @is_gimple_val, i64 42}
!182 = !{ptr @vect_generate_tmps_on_preheader, ptr @create_tmp_var, i64 38}
!183 = !{ptr @vect_generate_tmps_on_preheader, ptr @add_referenced_var, i64 38}
!184 = !{ptr @vect_generate_tmps_on_preheader, ptr @force_gimple_operand, i64 38}
!185 = !{ptr @vect_generate_tmps_on_preheader, ptr @gimple_seq_add_seq, i64 10}
!186 = !{ptr @vect_generate_tmps_on_preheader, ptr @gsi_insert_seq_on_edge_immediate, i64 28}
!187 = !{ptr @vect_generate_tmps_on_preheader, ptr @fancy_abort, i64 2}
!188 = !{ptr @conservative_cost_threshold, ptr @vect_print_dump_info, i64 20}
!189 = !{ptr @conservative_cost_threshold, ptr @fprintf, i64 1}
!190 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @single_exit, i64 104}
!191 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_can_duplicate_loop_p, i64 36}
!192 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @gimple_register_cfg_hooks, i64 35}
!193 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_tree_duplicate_loop_to_edge_cfg, i64 35}
!194 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @find_loop_location, i64 1}
!195 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @fancy_abort, i64 1}
!196 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @VEC_adjust_info_stack_alloc1, i64 1}
!197 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @ssa_names_to_replace, i64 34}
!198 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_update_phis_for_duplicate_loop, i64 34}
!199 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @rename_variables_in_loop, i64 34}
!200 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @loop_preheader_edge, i64 34}
!201 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @split_edge, i64 102}
!202 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @build_int_cst, i64 36}
!203 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @fold_build2_stat_loc, i64 77}
!204 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @loop_vec_info_for_loop, i64 2}
!205 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @unshare_expr, i64 2}
!206 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @fold_build1_stat_loc, i64 5}
!207 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @set_prologue_iterations, i64 14}
!208 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_add_loop_guard, i64 68}
!209 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_update_phi_nodes_for_guard1, i64 34}
!210 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_update_phi_nodes_for_guard2, i64 34}
!211 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @slpeel_make_loop_iterate_ntimes, i64 14}
!212 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @adjust_vec_debug_stmts, i64 34}
!213 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @bitmap_obstack_free, i64 34}
!214 = !{ptr @slpeel_tree_peel_loop_to_edge, ptr @delete_update_ssa, i64 34}
!215 = !{ptr @vect_update_ivs_after_vectorizer, ptr @single_exit, i64 21}
!216 = !{ptr @vect_update_ivs_after_vectorizer, ptr @single_pred_p, i64 21}
!217 = !{ptr @vect_update_ivs_after_vectorizer, ptr @fancy_abort, i64 1}
!218 = !{ptr @vect_update_ivs_after_vectorizer, ptr @gsi_start_phis, i64 42}
!219 = !{ptr @vect_update_ivs_after_vectorizer, ptr @gsi_end_p, i64 79}
!220 = !{ptr @vect_update_ivs_after_vectorizer, ptr @gsi_stmt, i64 48}
!221 = !{ptr @vect_update_ivs_after_vectorizer, ptr @vect_print_dump_info, i64 34}
!222 = !{ptr @vect_update_ivs_after_vectorizer, ptr @gimple_phi_result_ptr, i64 24}
!223 = !{ptr @vect_update_ivs_after_vectorizer, ptr @get_def_from_ptr, i64 37}
!224 = !{ptr @vect_update_ivs_after_vectorizer, ptr @is_gimple_reg, i64 24}
!225 = !{ptr @vect_update_ivs_after_vectorizer, ptr @vinfo_for_stmt, i64 14}
!226 = !{ptr @vect_update_ivs_after_vectorizer, ptr @analyze_scalar_evolution, i64 13}
!227 = !{ptr @vect_update_ivs_after_vectorizer, ptr @tree_strip_nop_conversions, i64 13}
!228 = !{ptr @vect_update_ivs_after_vectorizer, ptr @evolution_part_in_loop_num, i64 13}
!229 = !{ptr @vect_update_ivs_after_vectorizer, ptr @unshare_expr, i64 26}
!230 = !{ptr @vect_update_ivs_after_vectorizer, ptr @tree_is_chrec, i64 13}
!231 = !{ptr @vect_update_ivs_after_vectorizer, ptr @initial_condition_in_loop_num, i64 13}
!232 = !{ptr @vect_update_ivs_after_vectorizer, ptr @fold_convert_loc, i64 39}
!233 = !{ptr @vect_update_ivs_after_vectorizer, ptr @fold_build2_stat_loc, i64 26}
!234 = !{ptr @vect_update_ivs_after_vectorizer, ptr @create_tmp_var, i64 13}
!235 = !{ptr @vect_update_ivs_after_vectorizer, ptr @add_referenced_var, i64 13}
!236 = !{ptr @vect_update_ivs_after_vectorizer, ptr @gsi_last_bb, i64 13}
!237 = !{ptr @vect_update_ivs_after_vectorizer, ptr @force_gimple_operand_gsi, i64 13}
!238 = !{ptr @vect_update_ivs_after_vectorizer, ptr @adjust_phi_and_debug_stmts, i64 13}
!239 = !{ptr @vect_update_ivs_after_vectorizer, ptr @gsi_next, i64 48}
!240 = !{ptr @vect_build_loop_niters, ptr @unshare_expr, i64 36}
!241 = !{ptr @vect_build_loop_niters, ptr @create_tmp_var, i64 36}
!242 = !{ptr @vect_build_loop_niters, ptr @add_referenced_var, i64 36}
!243 = !{ptr @vect_build_loop_niters, ptr @force_gimple_operand, i64 36}
!244 = !{ptr @vect_build_loop_niters, ptr @loop_preheader_edge, i64 36}
!245 = !{ptr @vect_build_loop_niters, ptr @gimple_seq_add_seq, i64 6}
!246 = !{ptr @vect_build_loop_niters, ptr @gsi_insert_seq_on_edge_immediate, i64 28}
!247 = !{ptr @vect_build_loop_niters, ptr @fancy_abort, i64 1}
!248 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @loop_latch_edge, i64 76}
!249 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @loop_preheader_edge, i64 72}
!250 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @single_exit, i64 76}
!251 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @gsi_start_phis, i64 72}
!252 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @gsi_end_p, i64 134}
!253 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @gsi_stmt, i64 80}
!254 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @gimple_phi_arg_imm_use_ptr, i64 80}
!255 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @get_use_from_ptr, i64 80}
!256 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @gimple_phi_arg_location_from_edge, i64 80}
!257 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @add_phi_arg, i64 80}
!258 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @get_current_def, i64 40}
!259 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @adjust_debug_stmts, i64 40}
!260 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @adjust_phi_and_debug_stmts, i64 16}
!261 = !{ptr @slpeel_update_phis_for_duplicate_loop, ptr @gsi_next, i64 80}
!262 = !{ptr @set_prologue_iterations, ptr @loop_vec_info_for_loop, i64 15}
!263 = !{ptr @set_prologue_iterations, ptr @unshare_expr, i64 15}
!264 = !{ptr @set_prologue_iterations, ptr @single_pred_edge, i64 30}
!265 = !{ptr @set_prologue_iterations, ptr @split_edge, i64 30}
!266 = !{ptr @set_prologue_iterations, ptr @set_immediate_dominator, i64 30}
!267 = !{ptr @set_prologue_iterations, ptr @make_single_succ_edge, i64 15}
!268 = !{ptr @set_prologue_iterations, ptr @VEC_edge_base_index, i64 30}
!269 = !{ptr @set_prologue_iterations, ptr @build_int_cst, i64 30}
!270 = !{ptr @set_prologue_iterations, ptr @fold_build2_stat_loc, i64 15}
!271 = !{ptr @set_prologue_iterations, ptr @force_gimple_operand, i64 30}
!272 = !{ptr @set_prologue_iterations, ptr @gimple_build_cond, i64 15}
!273 = !{ptr @set_prologue_iterations, ptr @gsi_last_bb, i64 45}
!274 = !{ptr @set_prologue_iterations, ptr @gsi_insert_seq_after, i64 26}
!275 = !{ptr @set_prologue_iterations, ptr @gsi_insert_after, i64 15}
!276 = !{ptr @set_prologue_iterations, ptr @create_tmp_var, i64 15}
!277 = !{ptr @set_prologue_iterations, ptr @add_referenced_var, i64 15}
!278 = !{ptr @set_prologue_iterations, ptr @create_phi_node, i64 15}
!279 = !{ptr @set_prologue_iterations, ptr @add_phi_arg, i64 30}
!280 = !{ptr @slpeel_add_loop_guard, ptr @VEC_edge_base_index, i64 72}
!281 = !{ptr @slpeel_add_loop_guard, ptr @gsi_last_bb, i64 144}
!282 = !{ptr @slpeel_add_loop_guard, ptr @force_gimple_operand, i64 72}
!283 = !{ptr @slpeel_add_loop_guard, ptr @gimple_seq_add_seq, i64 69}
!284 = !{ptr @slpeel_add_loop_guard, ptr @build_int_cst, i64 72}
!285 = !{ptr @slpeel_add_loop_guard, ptr @gimple_build_cond, i64 72}
!286 = !{ptr @slpeel_add_loop_guard, ptr @gsi_insert_seq_after, i64 69}
!287 = !{ptr @slpeel_add_loop_guard, ptr @gsi_insert_after, i64 72}
!288 = !{ptr @slpeel_add_loop_guard, ptr @make_edge, i64 72}
!289 = !{ptr @slpeel_add_loop_guard, ptr @set_immediate_dominator, i64 72}
!290 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @VEC_edge_base_index, i64 152}
!291 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @single_exit, i64 59}
!292 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @split_edge, i64 36}
!293 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gsi_start_phis, i64 72}
!294 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gsi_end_p, i64 134}
!295 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gsi_stmt, i64 80}
!296 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gimple_phi_result_ptr, i64 103}
!297 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @get_def_from_ptr, i64 188}
!298 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @create_phi_node, i64 63}
!299 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gimple_phi_arg_imm_use_ptr, i64 143}
!300 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @get_use_from_ptr, i64 143}
!301 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gimple_phi_arg_location_from_edge, i64 80}
!302 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @loop_preheader_edge, i64 80}
!303 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @add_phi_arg, i64 103}
!304 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @adjust_phi_and_debug_stmts, i64 63}
!305 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @is_gimple_reg, i64 40}
!306 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @get_current_def, i64 36}
!307 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @set_current_def, i64 22}
!308 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @bitmap_set_bit, i64 22}
!309 = !{ptr @slpeel_update_phi_nodes_for_guard1, ptr @gsi_next, i64 80}
!310 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @VEC_edge_base_index, i64 96}
!311 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @single_exit, i64 61}
!312 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @split_edge, i64 36}
!313 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @gsi_start_phis, i64 36}
!314 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @gsi_end_p, i64 62}
!315 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @gsi_stmt, i64 26}
!316 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @gimple_phi_arg_imm_use_ptr, i64 100}
!317 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @get_use_from_ptr, i64 100}
!318 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @get_current_def, i64 49}
!319 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @gimple_phi_result_ptr, i64 99}
!320 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @get_def_from_ptr, i64 148}
!321 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @create_phi_node, i64 74}
!322 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @add_phi_arg, i64 99}
!323 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @fancy_abort, i64 4}
!324 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @adjust_phi_and_debug_stmts, i64 74}
!325 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @VEC_edge_base_length, i64 24}
!326 = !{ptr @slpeel_update_phi_nodes_for_guard2, ptr @gsi_next, i64 26}
!327 = !{ptr @adjust_vec_debug_stmts, ptr @VEC_adjust_info_base_length, i64 20}
!328 = !{ptr @adjust_vec_debug_stmts, ptr @VEC_adjust_info_base_last, i64 19}
!329 = !{ptr @adjust_vec_debug_stmts, ptr @adjust_debug_stmts_now, i64 19}
!330 = !{ptr @adjust_vec_debug_stmts, ptr @VEC_adjust_info_base_pop, i64 19}
!331 = !{ptr @adjust_vec_debug_stmts, ptr @VEC_adjust_info_stack_free, i64 1}
!332 = !{ptr @adjust_phi_and_debug_stmts, ptr @gimple_phi_arg_imm_use_ptr, i64 534}
!333 = !{ptr @adjust_phi_and_debug_stmts, ptr @get_use_from_ptr, i64 267}
!334 = !{ptr @adjust_phi_and_debug_stmts, ptr @set_ssa_use_from_ptr, i64 267}
!335 = !{ptr @adjust_phi_and_debug_stmts, ptr @gimple_phi_result_ptr, i64 1}
!336 = !{ptr @adjust_phi_and_debug_stmts, ptr @get_def_from_ptr, i64 1}
!337 = !{ptr @adjust_phi_and_debug_stmts, ptr @gimple_bb, i64 1}
!338 = !{ptr @adjust_phi_and_debug_stmts, ptr @adjust_debug_stmts, i64 1}
!339 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 30}
!340 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!341 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 30}
!342 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 51}
!343 = !{ptr @vect_do_peeling_for_alignment, ptr @vect_print_dump_info, i64 15}
!344 = !{ptr @vect_do_peeling_for_alignment, ptr @fwrite, i64 1}
!345 = !{ptr @vect_do_peeling_for_alignment, ptr @initialize_original_copy_tables, i64 15}
!346 = !{ptr @vect_do_peeling_for_alignment, ptr @vect_build_loop_niters, i64 15}
!347 = !{ptr @vect_do_peeling_for_alignment, ptr @vect_gen_niters_for_prolog_loop, i64 15}
!348 = !{ptr @vect_do_peeling_for_alignment, ptr @conservative_cost_threshold, i64 15}
!349 = !{ptr @vect_do_peeling_for_alignment, ptr @loop_preheader_edge, i64 15}
!350 = !{ptr @vect_do_peeling_for_alignment, ptr @slpeel_tree_peel_loop_to_edge, i64 15}
!351 = !{ptr @vect_do_peeling_for_alignment, ptr @fancy_abort, i64 1}
!352 = !{ptr @vect_do_peeling_for_alignment, ptr @fold_build2_stat_loc, i64 15}
!353 = !{ptr @vect_do_peeling_for_alignment, ptr @vect_update_inits_of_drs, i64 15}
!354 = !{ptr @vect_do_peeling_for_alignment, ptr @scev_reset, i64 15}
!355 = !{ptr @vect_do_peeling_for_alignment, ptr @free_original_copy_tables, i64 15}
!356 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @vinfo_for_stmt, i64 16}
!357 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @vector_type_mode, i64 1}
!358 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @loop_preheader_edge, i64 15}
!359 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @vect_print_dump_info, i64 16}
!360 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @fprintf, i64 1}
!361 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @build_int_cst, i64 57}
!362 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @vect_create_addr_base_for_vector_ref, i64 14}
!363 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @tree_low_cst, i64 14}
!364 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @exact_log2, i64 14}
!365 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @gsi_insert_seq_on_edge_immediate, i64 28}
!366 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @fancy_abort, i64 2}
!367 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @fold_convert_loc, i64 29}
!368 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @fold_build2_stat_loc, i64 69}
!369 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @fwrite, i64 1}
!370 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @print_generic_expr, i64 1}
!371 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @create_tmp_var, i64 16}
!372 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @add_referenced_var, i64 16}
!373 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @force_gimple_operand, i64 16}
!374 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @types_compatible_p, i64 15}
!375 = !{ptr @vect_gen_niters_for_prolog_loop, ptr @gimple_seq_add_seq, i64 1}
!376 = !{ptr @vect_update_inits_of_drs, ptr @vect_print_dump_info, i64 15}
!377 = !{ptr @vect_update_inits_of_drs, ptr @fwrite, i64 1}
!378 = !{ptr @vect_update_inits_of_drs, ptr @VEC_data_reference_p_base_iterate, i64 30}
!379 = !{ptr @vect_update_inits_of_drs, ptr @vect_update_init_of_dr, i64 15}
!380 = !{ptr @vect_update_init_of_dr, ptr @fold_convert_loc, i64 45}
!381 = !{ptr @vect_update_init_of_dr, ptr @fold_build2_stat_loc, i64 30}
!382 = !{ptr @vect_loop_versioning, ptr @conservative_cost_threshold, i64 5}
!383 = !{ptr @vect_loop_versioning, ptr @build_int_cst, i64 5}
!384 = !{ptr @vect_loop_versioning, ptr @fold_build2_stat_loc, i64 10}
!385 = !{ptr @vect_loop_versioning, ptr @force_gimple_operand, i64 10}
!386 = !{ptr @vect_loop_versioning, ptr @VEC_gimple_base_length, i64 5}
!387 = !{ptr @vect_loop_versioning, ptr @vect_create_cond_for_align_checks, i64 4}
!388 = !{ptr @vect_loop_versioning, ptr @VEC_ddr_p_base_length, i64 5}
!389 = !{ptr @vect_loop_versioning, ptr @vect_create_cond_for_alias_checks, i64 1}
!390 = !{ptr @vect_loop_versioning, ptr @gimple_seq_add_seq, i64 5}
!391 = !{ptr @vect_loop_versioning, ptr @initialize_original_copy_tables, i64 1}
!392 = !{ptr @vect_loop_versioning, ptr @loop_version, i64 1}
!393 = !{ptr @vect_loop_versioning, ptr @free_original_copy_tables, i64 1}
!394 = !{ptr @vect_loop_versioning, ptr @single_exit, i64 3}
!395 = !{ptr @vect_loop_versioning, ptr @VEC_edge_base_length, i64 1}
!396 = !{ptr @vect_loop_versioning, ptr @split_edge, i64 1}
!397 = !{ptr @vect_loop_versioning, ptr @VEC_edge_base_index, i64 1}
!398 = !{ptr @vect_loop_versioning, ptr @gsi_start_phis, i64 1}
!399 = !{ptr @vect_loop_versioning, ptr @gsi_end_p, i64 10}
!400 = !{ptr @vect_loop_versioning, ptr @gsi_stmt, i64 9}
!401 = !{ptr @vect_loop_versioning, ptr @gimple_phi_result_ptr, i64 18}
!402 = !{ptr @vect_loop_versioning, ptr @get_def_from_ptr, i64 18}
!403 = !{ptr @vect_loop_versioning, ptr @create_phi_node, i64 9}
!404 = !{ptr @vect_loop_versioning, ptr @gimple_phi_arg_imm_use_ptr, i64 9}
!405 = !{ptr @vect_loop_versioning, ptr @get_use_from_ptr, i64 9}
!406 = !{ptr @vect_loop_versioning, ptr @gimple_phi_arg_location_from_edge, i64 9}
!407 = !{ptr @vect_loop_versioning, ptr @add_phi_arg, i64 9}
!408 = !{ptr @vect_loop_versioning, ptr @adjust_phi_and_debug_stmts, i64 9}
!409 = !{ptr @vect_loop_versioning, ptr @gsi_next, i64 9}
!410 = !{ptr @vect_loop_versioning, ptr @update_ssa, i64 1}
!411 = !{ptr @vect_create_cond_for_align_checks, ptr @fancy_abort, i64 1}
!412 = !{ptr @vect_create_cond_for_align_checks, ptr @tree_low_cst, i64 5}
!413 = !{ptr @vect_create_cond_for_align_checks, ptr @VEC_gimple_base_iterate, i64 14}
!414 = !{ptr @vect_create_cond_for_align_checks, ptr @vect_create_addr_base_for_vector_ref, i64 9}
!415 = !{ptr @vect_create_cond_for_align_checks, ptr @gimple_seq_add_seq, i64 8}
!416 = !{ptr @vect_create_cond_for_align_checks, ptr @sprintf, i64 14}
!417 = !{ptr @vect_create_cond_for_align_checks, ptr @create_tmp_var, i64 19}
!418 = !{ptr @vect_create_cond_for_align_checks, ptr @add_referenced_var, i64 19}
!419 = !{ptr @vect_create_cond_for_align_checks, ptr @make_ssa_name, i64 19}
!420 = !{ptr @vect_create_cond_for_align_checks, ptr @gimple_build_assign_with_ops_stat, i64 19}
!421 = !{ptr @vect_create_cond_for_align_checks, ptr @gimple_seq_add_stmt, i64 19}
!422 = !{ptr @vect_create_cond_for_align_checks, ptr @build_int_cst, i64 10}
!423 = !{ptr @vect_create_cond_for_align_checks, ptr @fold_build2_stat_loc, i64 9}
!424 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 20}
!425 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!426 = !{!"function_entry_count", i64 72}
!427 = !{!428, !429, i64 24}
!428 = !{!"basic_block_def", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !430, i64 32, !429, i64 48, !429, i64 56, !430, i64 64, !432, i64 72, !433, i64 80, !433, i64 84, !433, i64 88, !433, i64 92, !433, i64 96}
!429 = !{!"any pointer", !430, i64 0}
!430 = !{!"omnipotent char", !431, i64 0}
!431 = !{!"Simple C/C++ TBAA"}
!432 = !{!"long", !430, i64 0}
!433 = !{!"int", !430, i64 0}
!434 = !{i8 0, i8 2}
!435 = !{!"branch_weights", i32 145, i32 1}
!436 = !{!"branch_weights", i32 162, i32 1}
!437 = !{!"branch_weights", i32 98, i32 162}
!438 = distinct !{!438, !439}
!439 = !{!"llvm.loop.mustprogress"}
!440 = !{!"branch_weights", i32 181, i32 145}
!441 = distinct !{!441, !439}
!442 = !{i64 0, i64 4, !443, i64 8, i64 8, !444}
!443 = !{!433, !433, i64 0}
!444 = !{!429, !429, i64 0}
!445 = !{i64 0, i64 8, !444}
!446 = !{!"branch_weights", i32 1, i32 145}
!447 = !{!448, !429, i64 8}
!448 = !{!"edge_def", !429, i64 0, !429, i64 8, !430, i64 16, !429, i64 24, !429, i64 32, !433, i64 40, !433, i64 44, !433, i64 48, !433, i64 52, !432, i64 56}
!449 = !{!"branch_weights", i32 37, i32 73}
!450 = !{!448, !433, i64 44}
!451 = !{!"branch_weights", i32 21, i32 145}
!452 = distinct !{!452, !439}
!453 = !{!"branch_weights", i32 145, i32 73}
!454 = distinct !{!454, !439}
!455 = !{!"function_entry_count", i64 5181}
!456 = !{!"tree-vect-loop-manip.c:gsi_start_bb"}
!457 = !{!458, !429, i64 0}
!458 = !{!"", !429, i64 0, !429, i64 8, !429, i64 16}
!459 = !{!458, !429, i64 8}
!460 = !{!458, !429, i64 16}
!461 = !{!"function_entry_count", i64 6379}
!462 = !{!"tree-vect-loop-manip.c:gsi_end_p"}
!463 = !{!"function_entry_count", i64 6028}
!464 = !{!"tree-vect-loop-manip.c:gsi_stmt"}
!465 = !{!466, !429, i64 0}
!466 = !{!"gimple_seq_node_d", !429, i64 0, !429, i64 8, !429, i64 16}
!467 = !{!"function_entry_count", i64 162}
!468 = !{!"tree-vect-loop-manip.c:op_iter_init_use"}
!469 = !{!"branch_weights", i32 26569, i32 327}
!470 = !{!471, !433, i64 4}
!471 = !{!"ssa_operand_iterator_d", !430, i64 0, !433, i64 4, !429, i64 8, !429, i64 16, !433, i64 24, !433, i64 28, !429, i64 32}
!472 = !{!"function_entry_count", i64 421}
!473 = !{!"tree-vect-loop-manip.c:op_iter_done"}
!474 = !{!471, !430, i64 0}
!475 = !{!"function_entry_count", i64 341}
!476 = !{!"tree-vect-loop-manip.c:rename_use_op"}
!477 = !{!"branch_weights", i32 342, i32 1}
!478 = !{!"branch_weights", i32 129, i32 214}
!479 = !{!"tree-vect-loop-manip.c:op_iter_next_use"}
!480 = !{!471, !429, i64 16}
!481 = !{!"branch_weights", i32 163, i32 260}
!482 = !{!483, !429, i64 0}
!483 = !{!"use_optype_d", !429, i64 0, !484, i64 8}
!484 = !{!"ssa_use_operand_d", !429, i64 0, !429, i64 8, !430, i64 16, !429, i64 24}
!485 = !{!471, !433, i64 24}
!486 = !{!471, !433, i64 28}
!487 = !{!"branch_weights", i32 1, i32 163}
!488 = !{!471, !429, i64 32}
!489 = !{!"function_entry_count", i64 903}
!490 = !{!"tree-vect-loop-manip.c:gsi_next"}
!491 = !{!466, !429, i64 16}
!492 = !{!"tree-vect-loop-manip.c:ei_start_1"}
!493 = !{!"function_entry_count", i64 180}
!494 = !{!"tree-vect-loop-manip.c:ei_cond"}
!495 = !{!"branch_weights", i32 109, i32 73}
!496 = !{!"function_entry_count", i64 1235}
!497 = !{!"tree-vect-loop-manip.c:gimple_phi_arg_imm_use_ptr"}
!498 = !{!"function_entry_count", i64 108}
!499 = !{!"tree-vect-loop-manip.c:ei_next"}
!500 = !{!"branch_weights", i32 1, i32 109}
!501 = !{!"branch_weights", i32 109, i32 1}
!502 = !{!503, !433, i64 0}
!503 = !{!"", !433, i64 0, !429, i64 8}
!504 = !{!"function_entry_count", i64 5477}
!505 = !{!"tree-vect-loop-manip.c:bb_seq"}
!506 = !{!428, !433, i64 96}
!507 = !{!"branch_weights", i32 5478, i32 1}
!508 = !{!430, !430, i64 0}
!509 = !{!"branch_weights", i32 1, i32 5478}
!510 = !{!511, !429, i64 0}
!511 = !{!"gimple_bb_info", !429, i64 0, !429, i64 8}
!512 = !{!"tree-vect-loop-manip.c:gimple_seq_first"}
!513 = !{!"branch_weights", i32 1, i32 5182}
!514 = !{!515, !429, i64 0}
!515 = !{!"gimple_seq_d", !429, i64 0, !429, i64 8, !429, i64 16}
!516 = !{!"tree-vect-loop-manip.c:op_iter_init"}
!517 = !{!"branch_weights", i32 163, i32 26733}
!518 = !{!"branch_weights", i32 163, i32 1}
!519 = !{!471, !429, i64 8}
!520 = !{!"branch_weights", i32 0, i32 -2147483648}
!521 = !{!522, !429, i64 0}
!522 = !{!"def_optype_d", !429, i64 0, !429, i64 8}
!523 = !{!"function_entry_count", i64 0}
!524 = !{!"tree-vect-loop-manip.c:gimple_def_ops"}
!525 = !{!"tree-vect-loop-manip.c:gimple_vdef"}
!526 = !{!"tree-vect-loop-manip.c:gimple_use_ops"}
!527 = !{!"tree-vect-loop-manip.c:gimple_vuse"}
!528 = !{!"tree-vect-loop-manip.c:gimple_has_ops"}
!529 = !{i32 0, i32 256}
!530 = !{!"function_entry_count", i64 324}
!531 = !{!"tree-vect-loop-manip.c:gimple_code"}
!532 = !{!"tree-vect-loop-manip.c:gimple_has_mem_ops"}
!533 = !{!"function_entry_count", i64 1568}
!534 = !{!"tree-vect-loop-manip.c:get_use_from_ptr"}
!535 = !{!484, !429, i64 24}
!536 = !{!"function_entry_count", i64 480}
!537 = !{!"tree-vect-loop-manip.c:set_ssa_use_from_ptr"}
!538 = !{!"tree-vect-loop-manip.c:delink_imm_use"}
!539 = !{!484, !429, i64 0}
!540 = !{!"branch_weights", i32 6, i32 476}
!541 = !{!484, !429, i64 8}
!542 = !{!"tree-vect-loop-manip.c:link_imm_use"}
!543 = !{!"branch_weights", i32 1, i32 481}
!544 = !{!"branch_weights", i32 479, i32 3}
!545 = !{!"function_entry_count", i64 478}
!546 = !{!"tree-vect-loop-manip.c:link_imm_use_to_list"}
!547 = !{!"tree-vect-loop-manip.c:ei_end_p"}
!548 = !{!"branch_weights", i32 1, i32 181}
!549 = !{!"tree-vect-loop-manip.c:ei_edge"}
!550 = !{!"function_entry_count", i64 365}
!551 = !{!"tree-vect-loop-manip.c:VEC_edge_base_length"}
!552 = !{!"branch_weights", i32 1, i32 366}
!553 = !{!554, !433, i64 0}
!554 = !{!"VEC_edge_base", !433, i64 0, !433, i64 4, !430, i64 8}
!555 = !{!"function_entry_count", i64 792}
!556 = !{!"tree-vect-loop-manip.c:ei_container"}
!557 = !{!"branch_weights", i32 1, i32 793}
!558 = !{!"function_entry_count", i64 698}
!559 = !{!"tree-vect-loop-manip.c:VEC_edge_base_index"}
!560 = !{!"function_entry_count", i64 1622}
!561 = !{!"tree-vect-loop-manip.c:gimple_phi_arg"}
!562 = !{!"branch_weights", i32 1, i32 1623}
!563 = !{!"function_entry_count", i64 36}
!564 = !{!565, !433, i64 36}
!565 = !{!"loop", !433, i64 0, !433, i64 4, !429, i64 8, !429, i64 16, !566, i64 24, !433, i64 32, !433, i64 36, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !567, i64 80, !567, i64 96, !430, i64 112, !430, i64 113, !433, i64 116, !429, i64 120, !429, i64 128, !430, i64 136, !429, i64 144}
!566 = !{!"lpt_decision", !433, i64 0, !433, i64 4}
!567 = !{!"", !432, i64 0, !432, i64 8}
!568 = !{!"branch_weights", i32 1, i32 147}
!569 = !{!"branch_weights", i32 145, i32 147}
!570 = distinct !{!570, !439}
!571 = !{!"branch_weights", i32 1, i32 37}
!572 = !{!448, !433, i64 48}
!573 = !{!"branch_weights", i32 37, i32 1}
!574 = !{!575, !429, i64 0}
!575 = !{!"", !429, i64 0, !433, i64 8, !433, i64 12, !430, i64 16}
!576 = !{!575, !433, i64 8}
!577 = !{!565, !429, i64 72}
!578 = !{!"function_entry_count", i64 12691}
!579 = !{!"branch_weights", i32 1, i32 12692}
!580 = !{!"branch_weights", i32 5074, i32 7619}
!581 = !{!"branch_weights", i32 37, i32 7583}
!582 = !{!565, !429, i64 8}
!583 = !{!"branch_weights", i32 1, i32 5110}
!584 = !{!"branch_weights", i32 127, i32 1}
!585 = !{!"branch_weights", i32 48, i32 5047}
!586 = !{!"branch_weights", i32 10061, i32 127}
!587 = distinct !{!587, !439}
!588 = !{!"branch_weights", i32 22, i32 16}
!589 = !{!"branch_weights", i32 16, i32 1}
!590 = !{!448, !429, i64 0}
!591 = !{!"branch_weights", i32 27, i32 10}
!592 = !{!"branch_weights", i32 1, i32 27}
!593 = !{!428, !429, i64 8}
!594 = !{!565, !429, i64 16}
!595 = !{!"branch_weights", i32 27, i32 1}
!596 = !{!"branch_weights", i32 0, i32 27}
!597 = distinct !{!597, !439}
!598 = !{!"branch_weights", i32 22, i32 1}
!599 = !{i64 0, i64 8, !444, i64 8, i64 8, !444, i64 16, i64 8, !444}
!600 = !{!"branch_weights", i32 1, i32 34}
!601 = !{!"branch_weights", i32 145, i32 127}
!602 = distinct !{!602, !439}
!603 = !{!"function_entry_count", i64 115}
!604 = !{!"tree-vect-loop-manip.c:loop_outer"}
!605 = !{!565, !429, i64 40}
!606 = !{!"branch_weights", i32 1, i32 116}
!607 = !{!"function_entry_count", i64 387}
!608 = !{!"tree-vect-loop-manip.c:gimple_phi_arg_location_from_edge"}
!609 = !{!610, !433, i64 40}
!610 = !{!"phi_arg_d", !484, i64 0, !429, i64 32, !433, i64 40}
!611 = !{!"tree-vect-loop-manip.c:VEC_loop_p_base_length"}
!612 = !{!613, !433, i64 0}
!613 = !{!"VEC_loop_p_base", !433, i64 0, !433, i64 4, !430, i64 8}
!614 = !{!"tree-vect-loop-manip.c:VEC_loop_p_base_index"}
!615 = !{!"function_entry_count", i64 79}
!616 = !{!"branch_weights", i32 80, i32 1}
!617 = !{!565, !429, i64 48}
!618 = !{!"branch_weights", i32 1, i32 80}
!619 = !{!"branch_weights", i32 6400, i32 161}
!620 = !{!"function_entry_count", i64 296}
!621 = !{!"tree-vect-loop-manip.c:gsi_last_bb"}
!622 = !{!"tree-vect-loop-manip.c:gimple_seq_last"}
!623 = !{!"branch_weights", i32 1, i32 297}
!624 = !{!515, !429, i64 8}
!625 = !{!"function_entry_count", i64 25339}
!626 = !{!"tree-vect-loop-manip.c:gimple_location"}
!627 = !{!"function_entry_count", i64 43}
!628 = !{!629, !429, i64 0}
!629 = !{!"_loop_vec_info", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !433, i64 32, !430, i64 36, !433, i64 40, !429, i64 48, !433, i64 56, !433, i64 60, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !433, i64 96, !429, i64 104, !429, i64 112, !433, i64 120}
!630 = !{!"branch_weights", i32 44, i32 1}
!631 = !{!"branch_weights", i32 175, i32 1}
!632 = !{!"branch_weights", i32 102, i32 1}
!633 = !{!"branch_weights", i32 44, i32 59}
!634 = !{!635, !433, i64 120}
!635 = !{!"_stmt_vec_info", !433, i64 0, !429, i64 8, !429, i64 16, !433, i64 24, !430, i64 28, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !430, i64 96, !429, i64 104, !429, i64 112, !433, i64 120, !429, i64 128, !429, i64 136, !433, i64 144, !433, i64 148, !433, i64 152, !429, i64 160, !430, i64 168, !636, i64 172, !433, i64 180, !429, i64 184}
!636 = !{!"", !433, i64 0, !433, i64 4}
!637 = !{!"branch_weights", i32 1, i32 59}
!638 = !{!"branch_weights", i32 59, i32 1}
!639 = !{!565, !433, i64 0}
!640 = !{!"branch_weights", i32 233, i32 175}
!641 = distinct !{!641, !439}
!642 = !{!"function_entry_count", i64 791}
!643 = !{!"tree-vect-loop-manip.c:get_def_from_ptr"}
!644 = !{!"tree-vect-loop-manip.c:gimple_phi_result_ptr"}
!645 = !{!"function_entry_count", i64 101}
!646 = !{!"tree-vect-loop-manip.c:vinfo_for_stmt"}
!647 = !{!"branch_weights", i32 1, i32 102}
!648 = !{!"function_entry_count", i64 58}
!649 = !{!"tree-vect-loop-manip.c:instantiate_parameters"}
!650 = !{!"function_entry_count", i64 86}
!651 = !{!"tree-vect-loop-manip.c:tree_is_chrec"}
!652 = !{!"branch_weights", i32 1, i32 87}
!653 = !{!"tree-vect-loop-manip.c:gimple_uid"}
!654 = !{!"tree-vect-loop-manip.c:VEC_vec_void_p_base_length"}
!655 = !{!656, !433, i64 0}
!656 = !{!"VEC_vec_void_p_base", !433, i64 0, !433, i64 4, !430, i64 8}
!657 = !{!"tree-vect-loop-manip.c:VEC_vec_void_p_base_index"}
!658 = !{!"tree-vect-loop-manip.c:block_before_loop"}
!659 = !{!660, !429, i64 8}
!660 = !{!"function", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !429, i64 96, !433, i64 104, !433, i64 108, !433, i64 112, !433, i64 116, !433, i64 120, !433, i64 124, !429, i64 128, !433, i64 136, !433, i64 137, !433, i64 138, !433, i64 138, !433, i64 138, !433, i64 138, !433, i64 138, !433, i64 138, !433, i64 138, !433, i64 139, !433, i64 139, !433, i64 139, !433, i64 139, !433, i64 139, !433, i64 139, !433, i64 139}
!661 = !{!"tree-vect-loop-manip.c:automatically_generated_chrec_p"}
!662 = !{!"function_entry_count", i64 21}
!663 = !{!629, !429, i64 88}
!664 = !{!"branch_weights", i32 17, i32 6}
!665 = !{!629, !429, i64 80}
!666 = !{!"branch_weights", i32 17, i32 1}
!667 = !{!629, !433, i64 56}
!668 = !{!"branch_weights", i32 50, i32 4}
!669 = !{!629, !433, i64 32}
!670 = !{!"branch_weights", i32 1, i32 22}
!671 = !{!428, !429, i64 0}
!672 = !{!"tree-vect-loop-manip.c:vect_generate_tmps_on_preheader"}
!673 = !{!629, !429, i64 16}
!674 = !{!629, !433, i64 40}
!675 = !{!"branch_weights", i32 21, i32 2}
!676 = !{!"branch_weights", i32 16, i32 6}
!677 = !{!"function_entry_count", i64 26}
!678 = !{!"tree-vect-loop-manip.c:VEC_gimple_base_length"}
!679 = !{!680, !433, i64 0}
!680 = !{!"VEC_gimple_base", !433, i64 0, !433, i64 4, !430, i64 8}
!681 = !{!"tree-vect-loop-manip.c:VEC_ddr_p_base_length"}
!682 = !{!683, !433, i64 0}
!683 = !{!"VEC_ddr_p_base", !433, i64 0, !433, i64 4, !430, i64 8}
!684 = !{!"tree-vect-loop-manip.c:conservative_cost_threshold"}
!685 = !{!686, !433, i64 8}
!686 = !{!"param_info", !429, i64 0, !433, i64 8, !430, i64 12, !433, i64 16, !433, i64 20, !429, i64 24}
!687 = !{!"tree-vect-loop-manip.c:slpeel_tree_peel_loop_to_edge"}
!688 = !{!629, !429, i64 24}
!689 = !{!"branch_weights", i32 1, i32 16}
!690 = !{!"tree-vect-loop-manip.c:vect_update_ivs_after_vectorizer"}
!691 = !{!"branch_weights", i32 50, i32 22}
!692 = !{!"branch_weights", i32 50, i32 1}
!693 = !{!"branch_weights", i32 22, i32 29}
!694 = !{!"branch_weights", i32 1, i32 29}
!695 = !{!"branch_weights", i32 29, i32 1}
!696 = !{!"branch_weights", i32 441, i32 198, i32 21}
!697 = !{!"branch_weights", i32 225, i32 175}
!698 = distinct !{!698, !439}
!699 = !{!"tree-vect-loop-manip.c:vect_build_loop_niters"}
!700 = !{!"branch_weights", i32 3, i32 35}
!701 = !{!"branch_weights", i32 30, i32 6}
!702 = !{!"branch_weights", i32 30, i32 1}
!703 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_alloc1"}
!704 = !{!"tree-vect-loop-manip.c:slpeel_update_phis_for_duplicate_loop"}
!705 = !{!"branch_weights", i32 16, i32 22}
!706 = !{!"branch_weights", i32 147, i32 1}
!707 = !{!"branch_weights", i32 83, i32 37}
!708 = !{!"branch_weights", i32 83, i32 1}
!709 = !{!"branch_weights", i32 1, i32 83}
!710 = !{!"branch_weights", i32 34, i32 50}
!711 = !{!"branch_weights", i32 34, i32 1}
!712 = !{!"branch_weights", i32 185, i32 147}
!713 = distinct !{!713, !439}
!714 = !{!"function_entry_count", i64 16}
!715 = !{!"tree-vect-loop-manip.c:loop_vec_info_for_loop"}
!716 = !{!565, !429, i64 64}
!717 = !{!"function_entry_count", i64 15}
!718 = !{!"tree-vect-loop-manip.c:set_prologue_iterations"}
!719 = !{!"branch_weights", i32 2, i32 15}
!720 = !{!"tree-vect-loop-manip.c:slpeel_add_loop_guard"}
!721 = !{!"branch_weights", i32 3, i32 71}
!722 = !{!"tree-vect-loop-manip.c:slpeel_update_phi_nodes_for_guard1"}
!723 = !{!"branch_weights", i32 37, i32 47}
!724 = !{!"branch_weights", i32 47, i32 1}
!725 = !{!"branch_weights", i32 29, i32 19}
!726 = distinct !{!726, !439}
!727 = !{!"tree-vect-loop-manip.c:slpeel_update_phi_nodes_for_guard2"}
!728 = !{!"branch_weights", i32 13, i32 15}
!729 = distinct !{!729, !439}
!730 = !{!"tree-vect-loop-manip.c:adjust_vec_debug_stmts"}
!731 = distinct !{!731, !439}
!732 = !{!"function_entry_count", i64 82}
!733 = !{!"tree-vect-loop-manip.c:adjust_debug_stmts"}
!734 = !{!"function_entry_count", i64 267}
!735 = !{!"tree-vect-loop-manip.c:adjust_phi_and_debug_stmts"}
!736 = !{!"branch_weights", i32 268, i32 1}
!737 = !{!"tree-vect-loop-manip.c:gimple_vop"}
!738 = !{!660, !429, i64 24}
!739 = !{!740, !429, i64 24}
!740 = !{!"gimple_df", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !741, i64 32, !741, i64 48, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !433, i64 96, !742, i64 104}
!741 = !{!"pt_solution", !433, i64 0, !433, i64 0, !433, i64 0, !433, i64 0, !433, i64 0, !433, i64 0, !429, i64 8}
!742 = !{!"ssa_operands", !429, i64 0, !433, i64 8, !433, i64 12, !430, i64 16, !429, i64 24, !429, i64 32}
!743 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_safe_push"}
!744 = !{!"tree-vect-loop-manip.c:adjust_debug_stmts_now"}
!745 = distinct !{!745, !439}
!746 = distinct !{!746, !439}
!747 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_reserve"}
!748 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_quick_push"}
!749 = !{!750, !433, i64 0}
!750 = !{!"VEC_adjust_info_base", !433, i64 0, !433, i64 4, !430, i64 8}
!751 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_space"}
!752 = !{!750, !433, i64 4}
!753 = !{!"tree-vect-loop-manip.c:gimple_bb"}
!754 = !{!"tree-vect-loop-manip.c:first_imm_use_stmt"}
!755 = !{!756, !429, i64 8}
!756 = !{!"immediate_use_iterator_d", !429, i64 0, !429, i64 8, !484, i64 16, !429, i64 48}
!757 = !{!756, !429, i64 0}
!758 = !{!"tree-vect-loop-manip.c:end_imm_use_stmt_p"}
!759 = !{!"tree-vect-loop-manip.c:is_gimple_debug"}
!760 = !{!"tree-vect-loop-manip.c:gimple_debug_bind_p"}
!761 = !{!"tree-vect-loop-manip.c:first_imm_use_on_stmt"}
!762 = !{!756, !429, i64 48}
!763 = !{!"tree-vect-loop-manip.c:end_imm_use_on_stmt_p"}
!764 = !{!"tree-vect-loop-manip.c:next_imm_use_on_stmt"}
!765 = !{!"tree-vect-loop-manip.c:gimple_debug_bind_reset_value"}
!766 = !{!"tree-vect-loop-manip.c:update_stmt"}
!767 = !{!"tree-vect-loop-manip.c:next_imm_use_stmt"}
!768 = !{!756, !429, i64 24}
!769 = !{!756, !429, i64 16}
!770 = !{!"tree-vect-loop-manip.c:link_use_stmts_after"}
!771 = distinct !{!771, !439}
!772 = distinct !{!772, !439}
!773 = !{!"tree-vect-loop-manip.c:op_iter_init_phiuse"}
!774 = !{!"tree-vect-loop-manip.c:move_use_after_head"}
!775 = !{!"tree-vect-loop-manip.c:gimple_vuse_op"}
!776 = !{!483, !429, i64 32}
!777 = !{!"tree-vect-loop-manip.c:gimple_phi_result"}
!778 = !{!"tree-vect-loop-manip.c:clear_and_done_ssa_iter"}
!779 = !{!"tree-vect-loop-manip.c:gimple_phi_num_args"}
!780 = !{!"tree-vect-loop-manip.c:gimple_set_op"}
!781 = !{!"tree-vect-loop-manip.c:gimple_num_ops"}
!782 = !{!"tree-vect-loop-manip.c:gimple_ops"}
!783 = !{!432, !432, i64 0}
!784 = !{!"tree-vect-loop-manip.c:gimple_statement_structure"}
!785 = !{!"tree-vect-loop-manip.c:gss_for_code"}
!786 = !{!"function_entry_count", i64 30}
!787 = !{!"tree-vect-loop-manip.c:single_pred_edge"}
!788 = !{!"branch_weights", i32 1, i32 31}
!789 = !{!"function_entry_count", i64 51}
!790 = !{!"tree-vect-loop-manip.c:single_pred_p"}
!791 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_length"}
!792 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_last"}
!793 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_pop"}
!794 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_free"}
!795 = !{!"tree-vect-loop-manip.c:vect_gen_niters_for_prolog_loop"}
!796 = !{!629, !429, i64 48}
!797 = !{!798, !429, i64 0}
!798 = !{!"data_reference", !429, i64 0, !429, i64 8, !429, i64 16, !430, i64 24, !799, i64 32, !800, i64 72, !801, i64 88, !429, i64 104}
!799 = !{!"innermost_loop_behavior", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32}
!800 = !{!"indices", !429, i64 0, !429, i64 8}
!801 = !{!"dr_alias", !429, i64 0, !429, i64 8}
!802 = !{!635, !429, i64 32}
!803 = !{!798, !429, i64 8}
!804 = !{!635, !429, i64 128}
!805 = !{!635, !433, i64 144}
!806 = !{!807, !429, i64 456}
!807 = !{!"lang_hooks", !429, i64 0, !432, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !429, i64 96, !429, i64 104, !429, i64 112, !429, i64 120, !429, i64 128, !429, i64 136, !429, i64 144, !429, i64 152, !429, i64 160, !429, i64 168, !429, i64 176, !429, i64 184, !429, i64 192, !429, i64 200, !429, i64 208, !429, i64 216, !429, i64 224, !429, i64 232, !808, i64 240, !809, i64 248, !810, i64 256, !811, i64 272, !812, i64 432, !813, i64 560, !429, i64 584, !429, i64 592, !429, i64 600, !429, i64 608, !429, i64 616, !429, i64 624, !429, i64 632, !429, i64 640, !429, i64 648, !429, i64 656, !429, i64 664, !430, i64 672}
!808 = !{!"lang_hooks_for_tree_inlining", !429, i64 0}
!809 = !{!"lang_hooks_for_callgraph", !429, i64 0}
!810 = !{!"lang_hooks_for_tree_dump", !429, i64 0, !429, i64 8}
!811 = !{!"lang_hooks_for_decls", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !429, i64 96, !429, i64 104, !429, i64 112, !429, i64 120, !429, i64 128, !429, i64 136, !429, i64 144, !429, i64 152}
!812 = !{!"lang_hooks_for_types", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88, !429, i64 96, !429, i64 104, !429, i64 112, !430, i64 120}
!813 = !{!"lang_hooks_for_lto", !429, i64 0, !429, i64 8, !429, i64 16}
!814 = !{!"tree-vect-loop-manip.c:vect_update_inits_of_drs"}
!815 = !{!629, !429, i64 64}
!816 = !{i32 0, i32 2}
!817 = !{!"branch_weights", i32 1, i32 127}
!818 = distinct !{!818, !439}
!819 = !{!"tree-vect-loop-manip.c:VEC_data_reference_p_base_iterate"}
!820 = !{!821, !433, i64 0}
!821 = !{!"VEC_data_reference_p_base", !433, i64 0, !433, i64 4, !430, i64 8}
!822 = !{!"branch_weights", i32 16, i32 16}
!823 = !{!"tree-vect-loop-manip.c:vect_update_init_of_dr"}
!824 = !{!798, !429, i64 40}
!825 = !{!798, !429, i64 56}
!826 = !{!"function_entry_count", i64 5}
!827 = !{!"branch_weights", i32 1, i32 6}
!828 = !{!"branch_weights", i32 6, i32 1}
!829 = distinct !{!829, !439}
!830 = !{!"tree-vect-loop-manip.c:vect_create_cond_for_align_checks"}
!831 = !{!629, !433, i64 60}
!832 = !{!"branch_weights", i32 1, i32 191}
!833 = !{!"branch_weights", i32 1, i32 11}
!834 = !{!"branch_weights", i32 6, i32 6}
!835 = !{!"branch_weights", i32 191, i32 161}
!836 = distinct !{!836, !439}
!837 = !{!"tree-vect-loop-manip.c:vect_create_cond_for_alias_checks"}
!838 = !{!839, !429, i64 0}
!839 = !{!"data_dependence_relation", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !433, i64 56, !430, i64 60, !430, i64 61, !430, i64 62}
!840 = !{!635, !429, i64 48}
!841 = !{!839, !429, i64 8}
!842 = distinct !{!842, !439}
!843 = !{!"tree-vect-loop-manip.c:VEC_gimple_base_iterate"}
!844 = !{!"branch_weights", i32 11, i32 6}
!845 = !{!"function_entry_count", i64 20}
!846 = !{!"tree-vect-loop-manip.c:make_ssa_name"}
!847 = !{!"tree-vect-loop-manip.c:VEC_ddr_p_base_iterate"}
!848 = !{!"tree-vect-loop-manip.c:vect_vfa_segment_size"}
