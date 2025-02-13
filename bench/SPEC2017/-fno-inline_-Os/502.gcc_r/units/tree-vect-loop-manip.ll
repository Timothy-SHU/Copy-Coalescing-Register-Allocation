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
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.adjust_info = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.VEC_adjust_info_base = type { i32, i32, [1 x %struct.adjust_info] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [23 x i8] c"tree-vect-loop-manip.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\0Aloop at %s:%d: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"vect_can_advance_ivs_p:\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Analyze phi: \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"virtual phi. skip.\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"reduc phi. skip.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No Access function.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Access function of PHI: \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"No evolution.\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"=== vect_do_peeling_for_loop_bound ===\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"=== vect_do_peeling_for_alignment ===\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"bnd\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"ratio_mult_vf\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [47 x i8] c"Profitability threshold is %u loop iterations.\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\0A%s:%d: note: \00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"tree_duplicate_loop_to_edge_cfg failed.\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@adjust_vec = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"prologue_after_cost_adjust\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"vect_update_ivs_after_vectorizer: phi: \00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.23 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"niters\00", align 1
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
define dso_local void @rename_variables_in_bb(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1, %20
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %12 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %11, i32 noundef 5) #17
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %17, %15 ], [ %12, %10 ]
  tail call fastcc void @rename_use_op(ptr noundef %16) #17
  %17 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #17
  %18 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %15, label %20, !llvm.loop !43

20:                                               ; preds = %15, %10
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %21 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %10, label %23, !llvm.loop !45

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %25 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %24) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !46
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %25, ptr %26, align 8, !tbaa.struct !49
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %25, ptr noundef nonnull %4) #17, !range !42
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %23, %47
  %30 = load ptr, ptr %4, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %7, ptr noundef %32) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %31, align 8, !tbaa !50
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %36) #18
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 6
  br label %41

41:                                               ; preds = %39, %41
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %43 = load i32, ptr %40, align 4, !tbaa !52
  %44 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %42, i32 noundef %43) #17
  call fastcc void @rename_use_op(ptr noundef nonnull %44) #17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %45 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %41, label %47, !llvm.loop !53

47:                                               ; preds = %41, %35, %29
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %48 = load i32, ptr %5, align 8
  %49 = load ptr, ptr %26, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %4) #17, !range !42
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %29, !llvm.loop !54

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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !55 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !34 !PGOFuncName !60 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !34 !PGOFuncName !61 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !64 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !65
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !67 {
  %2 = load i8, ptr %0, align 8, !tbaa !68
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rename_use_op(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !69 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call ptr @get_current_def(ptr noundef nonnull %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %7) #17
  br label %10

10:                                               ; preds = %6, %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !72
  store ptr %7, ptr %2, align 8, !tbaa !71
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !76
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !75
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !78 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %4, ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !34 !PGOFuncName !80 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !34 !PGOFuncName !81 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !48
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !82 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !83 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !84
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rename_variables_in_loop(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !86
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %10, %6 ], [ 0, %1 ]
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  tail call void @rename_variables_in_bb(ptr noundef %9) #17
  %10 = add nuw nsw i64 %7, 1
  %11 = load i32, ptr %3, align 4, !tbaa !86
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %6, label %14, !llvm.loop !90

14:                                               ; preds = %6, %1
  tail call void @free(ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @slpeel_make_loop_iterate_ntimes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 0) #18
  %14 = load ptr, ptr %11, align 8, !tbaa !91
  %15 = tail call ptr @build_int_cst(ptr noundef %14, i64 noundef 1) #18
  %16 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %2, %18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %16) #18
  call void @standard_iv_increment_position(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %20 = load i8, ptr %7, align 1, !tbaa !91
  call void @create_iv(ptr noundef %13, ptr noundef %15, ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %21 = load ptr, ptr %4, align 8, !tbaa !48
  %22 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %21, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  store ptr %22, ptr %4, align 8, !tbaa !48
  %23 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef nonnull %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  %24 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 97, i32 100
  %29 = load ptr, ptr %4, align 8, !tbaa !48
  %30 = call ptr @gimple_build_cond(i32 noundef %28, ptr noundef %29, ptr noundef %23, ptr noundef null, ptr noundef null) #18
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %30, i32 noundef 1) #18
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  %31 = call i32 @find_loop_location(ptr noundef %0) #17
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %19
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !47
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %31) #18
  %41 = load ptr, ptr %8, align 8, !tbaa !93
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %31) #18
  %42 = getelementptr inbounds %struct.expanded_location, ptr %9, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !95
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.2, ptr noundef %41, i32 noundef %43) #17
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !48
  br label %46

46:                                               ; preds = %40, %38
  %47 = phi ptr [ %45, %40 ], [ %32, %38 ]
  call void @print_gimple_stmt(ptr noundef %47, ptr noundef %30, i32 noundef 0, i32 noundef 2) #18
  br label %48

48:                                               ; preds = %46, %34, %19
  %49 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr %23, ptr %49, align 8, !tbaa !96
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
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

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
define dso_local i32 @find_loop_location(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @get_loop_exit_condition(ptr noundef nonnull %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %5) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %12) #17
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14, %21
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %19 = tail call fastcc i32 @gimple_location(ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %17, label %24, !llvm.loop !98

24:                                               ; preds = %21, %17, %14, %7, %10, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %10 ], [ %8, %7 ], [ 0, %14 ], [ 0, %21 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret i32 %25
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %7 = tail call ptr @single_exit(ptr noundef %0) #18
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %127

12:                                               ; preds = %9, %2
  %13 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !86
  %16 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %13, i32 noundef %15) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @free(ptr noundef %13) #17
  br label %127

19:                                               ; preds = %12
  %20 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #17
  %21 = tail call ptr @duplicate_loop(ptr noundef nonnull %0, ptr noundef %20) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @free(ptr noundef %13) #17
  br label %127

24:                                               ; preds = %19
  %25 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %27) #18
  %29 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = icmp eq ptr %28, %30
  %32 = load i32, ptr %14, align 4, !tbaa !86
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = tail call ptr @xmalloc(i64 noundef %34) #18
  %36 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  store ptr %36, ptr %3, align 8, !tbaa !48
  %37 = load i32, ptr %14, align 4, !tbaa !86
  %38 = load ptr, ptr %1, align 8, !tbaa !99
  call void @copy_bbs(ptr noundef %13, i32 noundef %37, ptr noundef %35, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null, ptr noundef %38) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %27) #18
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %43 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 3
  br label %44

44:                                               ; preds = %41, %67
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %46 = call ptr @single_exit(ptr noundef %0) #18
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !52
  %49 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %45, i32 noundef %48) #17
  %50 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %49) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %44
  %53 = call ptr @single_exit(ptr noundef %0) #18
  %54 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %45, ptr noundef %53) #17
  %55 = load ptr, ptr %42, align 8, !tbaa !97
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !100
  %58 = call fastcc ptr @VEC_edge_base_index(ptr noundef %57, i32 noundef 0) #17
  %59 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !50
  %61 = load ptr, ptr %43, align 8, !tbaa !101
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call fastcc ptr @VEC_edge_base_index(ptr noundef %57, i32 noundef 1) #17
  br label %65

65:                                               ; preds = %52, %63
  %66 = phi ptr [ %64, %63 ], [ %58, %52 ]
  call void @add_phi_arg(ptr noundef %45, ptr noundef nonnull %50, ptr noundef %66, i32 noundef %54) #18
  br label %67

67:                                               ; preds = %44, %65
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %44, label %70, !llvm.loop !102

70:                                               ; preds = %67, %24
  br i1 %8, label %71, label %80

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !97
  %74 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %73) #18
  %75 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  store ptr null, ptr %75, align 8, !tbaa !91
  %76 = load ptr, ptr %72, align 8, !tbaa !97
  %77 = load ptr, ptr %1, align 8, !tbaa !99
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %76, ptr noundef %77) #18
  br i1 %31, label %78, label %126

78:                                               ; preds = %71
  %79 = load ptr, ptr %72, align 8, !tbaa !97
  br label %123

80:                                               ; preds = %70
  %81 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %82 = load ptr, ptr %81, align 8, !tbaa !99
  %83 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !97
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !100
  %87 = call fastcc ptr @VEC_edge_base_index(ptr noundef %86, i32 noundef 0) #17
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !50
  %90 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %21, ptr noundef %89) #18
  %91 = icmp ne i8 %90, 0
  %92 = load ptr, ptr %83, align 8, !tbaa !97
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !100
  %95 = zext i1 %91 to i32
  %96 = call fastcc ptr @VEC_edge_base_index(ptr noundef %94, i32 noundef %95) #17
  %97 = load ptr, ptr %29, align 8, !tbaa !97
  %98 = call ptr @redirect_edge_and_branch_force(ptr noundef %96, ptr noundef %97) #18
  %99 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 2
  store ptr null, ptr %99, align 8, !tbaa !91
  %100 = load ptr, ptr %29, align 8, !tbaa !97
  %101 = load ptr, ptr %96, align 8, !tbaa !99
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %100, ptr noundef %101) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %102 = load ptr, ptr %29, align 8, !tbaa !97
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %102) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 6
  br label %107

107:                                              ; preds = %105, %115
  %108 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %109 = load i32, ptr %106, align 4, !tbaa !52
  %110 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %108, i32 noundef %109) #17
  %111 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %110) #17
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %108, ptr noundef nonnull %81) #17
  call void @add_phi_arg(ptr noundef %108, ptr noundef nonnull %111, ptr noundef nonnull %96, i32 noundef %114) #18
  br label %115

115:                                              ; preds = %107, %113
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %116 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %107, label %118, !llvm.loop !104

118:                                              ; preds = %115, %80
  %119 = load ptr, ptr %83, align 8, !tbaa !97
  %120 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %81, ptr noundef %119) #18
  %121 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 2
  store ptr null, ptr %121, align 8, !tbaa !91
  %122 = load ptr, ptr %83, align 8, !tbaa !97
  br label %123

123:                                              ; preds = %118, %78
  %124 = phi ptr [ %79, %78 ], [ %82, %118 ]
  %125 = phi ptr [ %27, %78 ], [ %122, %118 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %125, ptr noundef %124) #18
  br label %126

126:                                              ; preds = %123, %71
  call void @free(ptr noundef %35) #17
  call void @free(ptr noundef %13) #17
  br label %127

127:                                              ; preds = %9, %126, %23, %18
  %128 = phi ptr [ %21, %126 ], [ null, %23 ], [ null, %18 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %128
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @duplicate_loop(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #17
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !110
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !112 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  ret ptr %5
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @single_exit(ptr noundef %0) #18
  %5 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %6 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !99
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %7) #17
  %8 = load ptr, ptr @cfun, align 8, !tbaa !48
  %9 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !86
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = tail call zeroext i8 @empty_block_p(ptr noundef %24) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  %29 = icmp ne ptr %28, null
  %30 = icmp ne ptr %6, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %34 = icmp eq ptr %6, %33
  br i1 %34, label %35, label %40

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
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !114 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !91
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_can_advance_ivs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %1
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #18
  %12 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %11, %75
  %15 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %16 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %20 = call i64 @fwrite(ptr nonnull @.str.4, i64 13, i64 1, ptr %19)
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_gimple_stmt(ptr noundef %21, ptr noundef %15, i32 noundef 0, i32 noundef 2) #18
  br label %22

22:                                               ; preds = %18, %14
  %23 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %15) #17
  %24 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #17
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = call zeroext i8 @is_gimple_reg(ptr noundef %26) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %75, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %34 = call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %33)
  br label %75

35:                                               ; preds = %22
  %36 = call fastcc ptr @vinfo_for_stmt(ptr noundef %15) #17
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !118
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %45 = call i64 @fwrite(ptr nonnull @.str.6, i64 16, i64 1, ptr %44)
  br label %75

46:                                               ; preds = %35
  %47 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #17
  %48 = call ptr @analyze_scalar_evolution(ptr noundef %3, ptr noundef %47) #18
  %49 = call fastcc ptr @instantiate_parameters(ptr noundef %3, ptr noundef %48) #17
  %50 = icmp eq ptr %49, null
  %51 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %52 = icmp eq i8 %51, 0
  br i1 %50, label %53, label %57

53:                                               ; preds = %46
  br i1 %52, label %78, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %56 = call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %55)
  br label %78

57:                                               ; preds = %46
  br i1 %52, label %62, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %60 = call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr %59)
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %61, ptr noundef nonnull %49, i32 noundef 2) #18
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, ptr %3, align 8, !tbaa !121
  %64 = call ptr @evolution_part_in_loop_num(ptr noundef nonnull %49, i32 noundef %63) #18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %71 = call i64 @fwrite(ptr nonnull @.str.9, i64 13, i64 1, ptr %70)
  br label %78

72:                                               ; preds = %62
  %73 = call fastcc zeroext i8 @tree_is_chrec(ptr noundef nonnull %64) #17, !range !42
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %32, %29, %43, %40
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %76 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !42
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %14, label %78, !llvm.loop !122

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
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !123 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #6 !prof !34 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !125 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #17
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #18
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
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !126 {
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
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !127 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #17, !range !42
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_do_peeling_for_loop_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !116
  %8 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %12 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %10, %4
  tail call void @initialize_original_copy_tables() #18
  call fastcc void @vect_generate_tmps_on_preheader(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3) #17
  %14 = load i32, ptr %7, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %16) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %21) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !130
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne ptr %2, null
  %29 = or i1 %28, %27
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !131
  %33 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %32) #17
  br label %34

34:                                               ; preds = %30, %24, %19, %13
  %35 = phi i8 [ 0, %13 ], [ 0, %19 ], [ 0, %24 ], [ 1, %30 ]
  %36 = phi i32 [ 0, %13 ], [ 0, %19 ], [ 0, %24 ], [ %33, %30 ]
  %37 = tail call ptr @single_exit(ptr noundef nonnull %7) #18
  %38 = load ptr, ptr %6, align 8, !tbaa !48
  %39 = load ptr, ptr %5, align 8, !tbaa !48
  %40 = tail call fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef nonnull %7, ptr noundef %37, ptr noundef %38, ptr noundef %39, i8 noundef zeroext 0, i32 noundef %36, i8 noundef zeroext %35, ptr noundef %2, ptr noundef %3) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1904, ptr noundef nonnull @.str.1) #18
  br label %43

43:                                               ; preds = %34, %42
  %44 = load i32, ptr %7, align 8, !tbaa !121
  %45 = icmp eq i32 %14, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1905, ptr noundef nonnull @.str.1) #18
  br label %47

47:                                               ; preds = %43, %46
  %48 = tail call ptr @loop_preheader_edge(ptr noundef %40) #18
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = load ptr, ptr %49, align 8, !tbaa !132
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 0) #17
  %52 = load ptr, ptr %51, align 8, !tbaa !99
  %53 = tail call ptr @single_exit(ptr noundef nonnull %7) #18
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = icmp ne ptr %52, %55
  %57 = load ptr, ptr %49, align 8, !tbaa !132
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
define internal fastcc void @vect_generate_tmps_on_preheader(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !133 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %4, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !135
  %13 = tail call ptr @loop_preheader_edge(ptr noundef %8) #18
  %14 = tail call fastcc ptr @vect_build_loop_niters(ptr noundef nonnull %0, ptr noundef %4) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = sext i32 %12 to i64
  %18 = tail call i32 @exact_log2(i64 noundef %17) #18
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef %19) #18
  %21 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %22, ptr noundef %14, ptr noundef %20) #18
  %24 = tail call zeroext i8 @is_gimple_val(ptr noundef %23) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load ptr, ptr %15, align 8, !tbaa !91
  %28 = tail call ptr @create_tmp_var(ptr noundef %27, ptr noundef nonnull @.str.16) #18
  %29 = tail call zeroext i8 @add_referenced_var(ptr noundef %28) #18
  store ptr null, ptr %7, align 8, !tbaa !48
  %30 = call ptr @force_gimple_operand(ptr noundef %23, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %28) #18
  %31 = load ptr, ptr %6, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %7, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef %34) #18
  br label %41

35:                                               ; preds = %26
  %36 = call ptr @loop_preheader_edge(ptr noundef %8) #18
  %37 = load ptr, ptr %7, align 8, !tbaa !48
  %38 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %36, ptr noundef %37) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1552, ptr noundef nonnull @.str.1) #18
  br label %41

41:                                               ; preds = %40, %35, %33, %5
  %42 = phi ptr [ %23, %5 ], [ %30, %33 ], [ %30, %40 ], [ %30, %35 ]
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !91
  %45 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %44, ptr noundef %42, ptr noundef %20) #18
  %46 = call zeroext i8 @is_gimple_val(ptr noundef %45) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load ptr, ptr %15, align 8, !tbaa !91
  %50 = call ptr @create_tmp_var(ptr noundef %49, ptr noundef nonnull @.str.17) #18
  %51 = call zeroext i8 @add_referenced_var(ptr noundef %50) #18
  store ptr null, ptr %7, align 8, !tbaa !48
  %52 = call ptr @force_gimple_operand(ptr noundef %45, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %50) #18
  %53 = load ptr, ptr %6, align 8, !tbaa !48
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %7, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef %56) #18
  br label %63

57:                                               ; preds = %48
  %58 = call ptr @loop_preheader_edge(ptr noundef %8) #18
  %59 = load ptr, ptr %7, align 8, !tbaa !48
  %60 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %58, ptr noundef %59) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1574, ptr noundef nonnull @.str.1) #18
  br label %63

63:                                               ; preds = %62, %57, %55, %41
  %64 = phi ptr [ %45, %41 ], [ %52, %55 ], [ %52, %62 ], [ %52, %57 ]
  store ptr %14, ptr %1, align 8, !tbaa !48
  store ptr %64, ptr %2, align 8, !tbaa !48
  store ptr %42, ptr %3, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !136 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !137
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !139 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !140
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @conservative_cost_threshold(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !142 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 11, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !135
  %8 = mul nsw i32 %7, %5
  %9 = add nsw i32 %8, -1
  %10 = icmp eq i32 %1, 0
  %11 = icmp ne i32 %9, 0
  %12 = icmp sgt i32 %8, %1
  %13 = and i1 %12, %11
  %14 = select i1 %10, i1 true, i1 %13
  %15 = select i1 %14, i32 %9, i32 %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %15) #17
  br label %23

23:                                               ; preds = %20, %17, %2
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !prof !34 !PGOFuncName !145 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.expanded_location, align 8
  %13 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %14 = tail call ptr @single_exit(ptr noundef %0) #18
  %15 = tail call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %0, ptr noundef %1) #17, !range !42
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %112, label %17

17:                                               ; preds = %9
  tail call void @gimple_register_cfg_hooks() #18
  %18 = tail call ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = tail call i32 @find_loop_location(ptr noundef %0) #17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %112, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !47
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %112, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %12, i32 noundef %21) #18
  %31 = load ptr, ptr %12, align 8, !tbaa !93
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %21) #18
  %32 = getelementptr inbounds %struct.expanded_location, ptr %13, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !95
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.19, ptr noundef %31, i32 noundef %33) #17
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi ptr [ %35, %30 ], [ %22, %28 ]
  %38 = call i64 @fwrite(ptr nonnull @.str.20, i64 40, i64 1, ptr %37)
  br label %112

39:                                               ; preds = %17
  %40 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !47
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @adjust_vec, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1218, ptr noundef nonnull @.str.1) #18
  br label %46

46:                                               ; preds = %42, %45
  %47 = alloca [776 x i8], align 16
  %48 = call fastcc ptr @VEC_adjust_info_stack_alloc1(ptr noundef nonnull %47) #17
  store ptr %48, ptr @adjust_vec, align 8, !tbaa !48
  br label %49

49:                                               ; preds = %46, %39
  %50 = icmp eq ptr %14, %1
  %51 = select i1 %50, ptr %18, ptr %0
  %52 = select i1 %50, ptr %0, ptr %18
  %53 = call ptr @ssa_names_to_replace() #18
  store ptr %53, ptr %10, align 8, !tbaa !48
  %54 = zext i1 %50 to i8
  call fastcc void @slpeel_update_phis_for_duplicate_loop(ptr noundef %0, ptr noundef nonnull %18, i8 noundef zeroext %54) #17
  call void @rename_variables_in_loop(ptr noundef nonnull %18) #17
  %55 = call ptr @loop_preheader_edge(ptr noundef %52) #18
  %56 = call ptr @split_edge(ptr noundef %55) #18
  %57 = call ptr @single_exit(ptr noundef %52) #18
  %58 = call ptr @split_edge(ptr noundef %57) #18
  %59 = icmp eq i8 %4, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %49
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !91
  %64 = call ptr @build_int_cst(ptr noundef %63, i64 noundef 0) #18
  %65 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %61, ptr noundef %2, ptr noundef %64) #18
  %66 = icmp eq i8 %6, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %60
  %68 = call fastcc ptr @loop_vec_info_for_loop(ptr noundef %0) #17
  %69 = getelementptr inbounds %struct._loop_vec_info, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !146
  %71 = call ptr @unshare_expr(ptr noundef %70) #18
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %73 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = zext i32 %5 to i64
  %76 = call ptr @build_int_cst(ptr noundef %74, i64 noundef %75) #18
  %77 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %72, ptr noundef %71, ptr noundef %76) #18
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %79 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %78, ptr noundef %77, ptr noundef %65) #18
  br label %80

80:                                               ; preds = %67, %60
  %81 = phi ptr [ %79, %67 ], [ %65, %60 ]
  %82 = icmp eq ptr %7, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %85 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 96, ptr noundef %84, ptr noundef nonnull %7) #18
  %86 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %84, ptr noundef %81, ptr noundef %85) #18
  br label %96

87:                                               ; preds = %49
  %88 = icmp eq i8 %6, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %87
  call fastcc void @set_prologue_iterations(ptr noundef %56, ptr noundef %2, ptr noundef %0, i32 noundef %5) #17
  br label %90

90:                                               ; preds = %89, %87
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !91
  %94 = call ptr @build_int_cst(ptr noundef %93, i64 noundef 0) #18
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %91, ptr noundef %2, ptr noundef %94) #18
  br label %96

96:                                               ; preds = %80, %83, %90
  %97 = phi ptr [ %95, %90 ], [ %86, %83 ], [ %81, %80 ]
  %98 = call fastcc ptr @slpeel_add_loop_guard(ptr noundef %56, ptr noundef %97, ptr noundef %8, ptr noundef %58, ptr noundef %56) #17
  %99 = icmp eq ptr %52, %18
  %100 = zext i1 %99 to i8
  call fastcc void @slpeel_update_phi_nodes_for_guard1(ptr noundef %98, ptr noundef %52, i8 noundef zeroext %100, ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %101 = load ptr, ptr %11, align 8, !tbaa !48
  %102 = call ptr @single_exit(ptr noundef %51) #18
  %103 = call ptr @split_edge(ptr noundef %102) #18
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %105 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %104, ptr noundef nonnull %2, ptr noundef %3) #18
  %106 = call fastcc ptr @slpeel_add_loop_guard(ptr noundef %101, ptr noundef %105, ptr noundef null, ptr noundef %103, ptr noundef %56) #17
  %107 = icmp eq ptr %51, %18
  %108 = zext i1 %107 to i8
  call fastcc void @slpeel_update_phi_nodes_for_guard2(ptr noundef %106, ptr noundef %51, i8 noundef zeroext %108, ptr noundef nonnull %11) #17
  br i1 %59, label %110, label %109

109:                                              ; preds = %96
  call void @slpeel_make_loop_iterate_ntimes(ptr noundef %52, ptr noundef nonnull %2) #17
  br label %110

110:                                              ; preds = %109, %96
  call fastcc void @adjust_vec_debug_stmts() #17
  %111 = load ptr, ptr %10, align 8, !tbaa !48
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
define internal fastcc void @vect_update_ivs_after_vectorizer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !34 !PGOFuncName !147 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = tail call ptr @single_exit(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %12 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #17, !range !42
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1730, ptr noundef nonnull @.str.1) #18
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %19) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %13) #18
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !42
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %105

22:                                               ; preds = %17, %102
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %105

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %28 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %32 = call i64 @fwrite(ptr nonnull @.str.22, i64 39, i64 1, ptr %31)
  %33 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_gimple_stmt(ptr noundef %33, ptr noundef %26, i32 noundef 0, i32 noundef 2) #18
  br label %34

34:                                               ; preds = %30, %25
  %35 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %26) #17
  %36 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = call zeroext i8 @is_gimple_reg(ptr noundef %38) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %102, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %46 = call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %45)
  br label %102

47:                                               ; preds = %34
  %48 = call fastcc ptr @vinfo_for_stmt(ptr noundef %26) #17
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 16
  %50 = load i32, ptr %49, align 8, !tbaa !118
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %57 = call i64 @fwrite(ptr nonnull @.str.6, i64 16, i64 1, ptr %56)
  br label %102

58:                                               ; preds = %47
  %59 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %60 = call ptr @analyze_scalar_evolution(ptr noundef %8, ptr noundef %59) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1769, ptr noundef nonnull @.str.1) #18
  br label %63

63:                                               ; preds = %58, %62
  %64 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = call ptr @tree_strip_nop_conversions(ptr noundef %60) #18
  %67 = load i32, ptr %8, align 8, !tbaa !121
  %68 = call ptr @evolution_part_in_loop_num(ptr noundef %66, i32 noundef %67) #18
  %69 = call ptr @unshare_expr(ptr noundef %68) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1778, ptr noundef nonnull @.str.1) #18
  br label %72

72:                                               ; preds = %63, %71
  %73 = call fastcc zeroext i8 @tree_is_chrec(ptr noundef %69) #17, !range !42
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1782, ptr noundef nonnull @.str.1) #18
  br label %76

76:                                               ; preds = %72, %75
  %77 = load i32, ptr %8, align 8, !tbaa !121
  %78 = call ptr @initial_condition_in_loop_num(ptr noundef %66, i32 noundef %77) #18
  %79 = call ptr @unshare_expr(ptr noundef %78) #18
  %80 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %65, ptr noundef %79) #18
  %81 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !91
  %83 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %82, ptr noundef %1) #18
  %84 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %82, ptr noundef %83, ptr noundef %69) #18
  %85 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !91
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i16
  switch i16 %88, label %93 [
    i16 10, label %89
    i16 12, label %89
  ]

89:                                               ; preds = %76, %76
  %90 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %91 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %90, ptr noundef %84) #18
  %92 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %86, ptr noundef nonnull %80, ptr noundef %91) #18
  br label %96

93:                                               ; preds = %76
  %94 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %86, ptr noundef %84) #18
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %86, ptr noundef nonnull %80, ptr noundef %94) #18
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi ptr [ %92, %89 ], [ %95, %93 ]
  %98 = load ptr, ptr %85, align 8, !tbaa !91
  %99 = call ptr @create_tmp_var(ptr noundef %98, ptr noundef nonnull @.str.23) #18
  %100 = call zeroext i8 @add_referenced_var(ptr noundef %99) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  %101 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %97, i8 noundef zeroext 0, ptr noundef %99, i8 noundef zeroext 1, i32 noundef 1) #18
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %27, ptr noundef %2, ptr noundef %101) #17
  br label %102

102:                                              ; preds = %52, %55, %41, %44, %96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !42
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %22, label %105, !llvm.loop !148

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
define dso_local void @vect_do_peeling_for_alignment(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %8 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 37, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  tail call void @initialize_original_copy_tables() #18
  %10 = tail call fastcc ptr @vect_build_loop_niters(ptr noundef nonnull %0, ptr noundef null) #17
  %11 = call fastcc ptr @vect_gen_niters_for_prolog_loop(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %2) #17
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %13) #17
  %15 = tail call ptr @loop_preheader_edge(ptr noundef %3) #18
  %16 = tail call fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef %3, ptr noundef %15, ptr noundef %11, ptr noundef %10, i8 noundef zeroext 1, i32 noundef %14, i8 noundef zeroext 1, ptr noundef null, ptr noundef null) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2158, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %9, %18
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !134
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %23, ptr noundef %21, ptr noundef %11) #18
  store ptr %24, ptr %20, align 8, !tbaa !134
  %25 = load ptr, ptr %2, align 8, !tbaa !48
  tail call fastcc void @vect_update_inits_of_drs(ptr noundef nonnull %0, ptr noundef %25) #17
  tail call void @scev_reset() #18
  tail call void @free_original_copy_tables() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_build_loop_niters(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !149 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !48
  %5 = load ptr, ptr %0, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = tail call ptr @unshare_expr(ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef nonnull @.str.24) #18
  %12 = tail call zeroext i8 @add_referenced_var(ptr noundef %11) #18
  %13 = call ptr @force_gimple_operand(ptr noundef %8, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %11) #18
  %14 = call ptr @loop_preheader_edge(ptr noundef %5) #18
  %15 = load ptr, ptr %4, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = icmp eq ptr %1, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef nonnull %15) #18
  br label %24

20:                                               ; preds = %17
  %21 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %14, ptr noundef nonnull %15) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1491, ptr noundef nonnull @.str.1) #18
  br label %24

24:                                               ; preds = %23, %20, %19, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_gen_niters_for_prolog_loop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !34 !PGOFuncName !150 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = load ptr, ptr %0, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = load ptr, ptr %8, align 8, !tbaa !152
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %10) #17
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = lshr i32 %15, 3
  %17 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !158
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28

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
  %37 = load i8, ptr %36, align 1, !tbaa !91
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1023
  %42 = zext nneg i32 %41 to i64
  %43 = shl nuw i64 1, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %33
  %49 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %46) #17
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %49, i64 0, i32 19
  %51 = load i32, ptr %50, align 8, !tbaa !160
  br label %52

52:                                               ; preds = %48, %33
  %53 = phi i32 [ %51, %48 ], [ 1, %33 ]
  %54 = tail call ptr @loop_preheader_edge(ptr noundef %9) #18
  %55 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !130
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = udiv i32 %56, %38
  %60 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !48
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
  store ptr null, ptr %5, align 8, !tbaa !48
  %73 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %10, ptr noundef nonnull %5, ptr noundef null, ptr noundef %9) #18
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !91
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  %78 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !161
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
  %96 = load ptr, ptr %5, align 8, !tbaa !48
  %97 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %54, ptr noundef %96) #18
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2016, ptr noundef nonnull @.str.1) #18
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
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef %18, ptr noundef %108, ptr noundef nonnull %1) #18
  br label %114

114:                                              ; preds = %112, %107
  %115 = phi ptr [ %113, %112 ], [ %108, %107 ]
  %116 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %120 = call i64 @fwrite(ptr nonnull @.str.26, i64 24, i64 1, ptr %119)
  %121 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %121, ptr noundef %115, i32 noundef 2) #18
  br label %122

122:                                              ; preds = %118, %114
  %123 = call ptr @create_tmp_var(ptr noundef %18, ptr noundef nonnull @.str.27) #18
  %124 = call zeroext i8 @add_referenced_var(ptr noundef %123) #18
  store ptr null, ptr %4, align 8, !tbaa !48
  %125 = call ptr @force_gimple_operand(ptr noundef %115, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %123) #18
  %126 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %127 = call zeroext i8 @types_compatible_p(ptr noundef %126, ptr noundef %18) #18
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  store ptr %125, ptr %2, align 8, !tbaa !48
  br label %141

130:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !48
  %131 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %132 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %131, ptr noundef %115) #18
  %133 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %134 = call ptr @create_tmp_var(ptr noundef %133, ptr noundef nonnull @.str.27) #18
  %135 = call zeroext i8 @add_referenced_var(ptr noundef %134) #18
  %136 = call ptr @force_gimple_operand(ptr noundef %132, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %134) #18
  store ptr %136, ptr %2, align 8, !tbaa !48
  %137 = load ptr, ptr %6, align 8, !tbaa !48
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef nonnull %137) #18
  br label %140

140:                                              ; preds = %139, %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %141

141:                                              ; preds = %140, %129
  %142 = load ptr, ptr %4, align 8, !tbaa !48
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %54, ptr noundef nonnull %142) #18
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2067, ptr noundef nonnull @.str.1) #18
  br label %148

148:                                              ; preds = %147, %144, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %125
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_inits_of_drs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !169 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %10 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 31, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #17, !range !171
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11, %14
  %15 = phi i32 [ %17, %14 ], [ 0, %11 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !48
  tail call fastcc void @vect_update_init_of_dr(ptr noundef %16, ptr noundef %1) #17
  %17 = add i32 %15, 1
  %18 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef %17, ptr noundef nonnull %3) #17, !range !171
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %14, !llvm.loop !172

20:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_loop_versioning(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %13) #17
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = zext i32 %14 to i64
  %19 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef %18) #18
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %15, ptr noundef %11, ptr noundef %19) #18
  store ptr %20, ptr %2, align 8, !tbaa !48
  %21 = tail call ptr @force_gimple_operand(ptr noundef %20, ptr noundef %3, i8 noundef zeroext 0, ptr noundef null) #18
  store ptr %21, ptr %2, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  tail call fastcc void @vect_create_cond_for_align_checks(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %27

27:                                               ; preds = %26, %4
  %28 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !129
  %30 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call fastcc void @vect_create_cond_for_alias_checks(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %33

33:                                               ; preds = %32, %27
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %35 = load ptr, ptr %2, align 8, !tbaa !48
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !48
  %37 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %34, ptr noundef %35, ptr noundef %36) #18
  store ptr %37, ptr %2, align 8, !tbaa !48
  %38 = call ptr @force_gimple_operand(ptr noundef %37, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  store ptr %38, ptr %2, align 8, !tbaa !48
  %39 = load ptr, ptr %8, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef %3, ptr noundef %39) #18
  %40 = icmp eq i8 %1, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %33
  call void @initialize_original_copy_tables() #18
  %42 = load ptr, ptr %2, align 8, !tbaa !48
  %43 = call ptr @loop_version(ptr noundef %9, ptr noundef %42, ptr noundef nonnull %5, i32 noundef 8000, i32 noundef 8000, i32 noundef 2000, i8 noundef zeroext 1) #18
  call void @free_original_copy_tables() #18
  %44 = call ptr @single_exit(ptr noundef %9) #18
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = load ptr, ptr %46, align 8, !tbaa !132
  %48 = call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #17
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2543, ptr noundef nonnull @.str.1) #18
  br label %51

51:                                               ; preds = %41, %50
  %52 = call ptr @single_exit(ptr noundef %9) #18
  %53 = call ptr @split_edge(ptr noundef %52) #18
  %54 = call ptr @single_exit(ptr noundef %9) #18
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !100
  %57 = call fastcc ptr @VEC_edge_base_index(ptr noundef %56, i32 noundef 0) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %46) #18
  %58 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !42
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
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  %68 = call ptr @create_phi_node(ptr noundef %67, ptr noundef %53) #18
  %69 = load i32, ptr %61, align 4, !tbaa !52
  %70 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %63, i32 noundef %69) #17
  %71 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %70) #17
  %72 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %63, ptr noundef %57) #17
  call void @add_phi_arg(ptr noundef %68, ptr noundef %71, ptr noundef %54, i32 noundef %72) #18
  %73 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %68) #17
  %74 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %73) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %63, ptr noundef %57, ptr noundef %74) #17
  call fastcc void @gsi_next(ptr noundef nonnull %6) #17
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !42
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %62, label %77, !llvm.loop !173

77:                                               ; preds = %62, %51
  call void @update_ssa(i32 noundef 2048) #18
  %78 = load ptr, ptr %3, align 8, !tbaa !48
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %5, align 8, !tbaa !48
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %81) #17
  %82 = load ptr, ptr %3, align 8, !tbaa !48
  call void @gsi_insert_seq_before(ptr noundef nonnull %7, ptr noundef %82, i32 noundef 1) #18
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %83

83:                                               ; preds = %80, %77
  store ptr null, ptr %2, align 8, !tbaa !48
  br label %84

84:                                               ; preds = %33, %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_cond_for_align_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !174 {
  %4 = alloca ptr, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = add nsw i32 %11, 1
  %15 = and i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2226, ptr noundef nonnull @.str.1) #18
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !161
  %23 = tail call i64 @tree_low_cst(ptr noundef %21, i32 noundef 1) #18
  %24 = trunc i64 %23 to i32
  %25 = tail call ptr %22(i32 noundef %24, i32 noundef 0) #18
  %26 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %4) #17, !range !171
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %18, %51
  %29 = phi i32 [ %53, %51 ], [ 0, %18 ]
  %30 = phi ptr [ %52, %51 ], [ null, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !48
  %31 = load ptr, ptr %4, align 8, !tbaa !48
  %32 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %31, ptr noundef nonnull %6, ptr noundef null, ptr noundef %7) #18
  %33 = load ptr, ptr %6, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

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
  store ptr %41, ptr %42, align 8, !tbaa !91
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %41) #18
  %43 = icmp eq ptr %30, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.31, i32 noundef %29) #17
  %46 = call ptr @create_tmp_var(ptr noundef %25, ptr noundef nonnull %5) #18
  %47 = call zeroext i8 @add_referenced_var(ptr noundef %46) #18
  %48 = call fastcc ptr @make_ssa_name(ptr noundef %46) #17
  %49 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 87, ptr noundef %48, ptr noundef nonnull %30, ptr noundef nonnull %40) #18
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !91
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %49) #18
  br label %51

51:                                               ; preds = %36, %44
  %52 = phi ptr [ %48, %44 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %53 = add i32 %29, 1
  %54 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef %53, ptr noundef nonnull %4) #17, !range !171
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %28, !llvm.loop !176

56:                                               ; preds = %51, %18
  %57 = phi ptr [ null, %18 ], [ %52, %51 ]
  %58 = sext i32 %11 to i64
  %59 = call ptr @build_int_cst(ptr noundef %25, i64 noundef %58) #18
  %60 = call ptr @create_tmp_var(ptr noundef %25, ptr noundef nonnull @.str.32) #18
  %61 = call zeroext i8 @add_referenced_var(ptr noundef %60) #18
  %62 = call fastcc ptr @make_ssa_name(ptr noundef %60) #17
  %63 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %62, ptr noundef %57, ptr noundef %59) #18
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !91
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %63) #18
  %65 = call ptr @build_int_cst(ptr noundef %25, i64 noundef 0) #18
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %67 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %66, ptr noundef %62, ptr noundef %65) #18
  %68 = load ptr, ptr %1, align 8, !tbaa !48
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %56
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %72 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %71, ptr noundef nonnull %68, ptr noundef %67) #18
  br label %73

73:                                               ; preds = %56, %70
  %74 = phi ptr [ %72, %70 ], [ %67, %56 ]
  store ptr %74, ptr %1, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_cond_for_alias_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !177 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !48
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !135
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @build_int_cst(ptr noundef %8, i64 noundef %11) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %13 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %7) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %3
  %16 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #17, !range !171
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %15, %82
  %19 = phi i32 [ %84, %82 ], [ 0, %15 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !48
  %21 = load ptr, ptr %20, align 8, !tbaa !178
  %22 = load ptr, ptr %21, align 8, !tbaa !152
  %23 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %22) #17
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %25) #17
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !180
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi ptr [ %30, %27 ], [ %21, %18 ]
  %33 = phi ptr [ %25, %27 ], [ %22, %18 ]
  %34 = getelementptr inbounds %struct.data_dependence_relation, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !181
  %36 = load ptr, ptr %35, align 8, !tbaa !152
  %37 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %36) #17
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !159
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %39) #17
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !180
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
  %55 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %56 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 41, i64 1, ptr %55)
  %57 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %58 = getelementptr inbounds %struct.data_reference, ptr %32, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !158
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %59, i32 noundef 2) #18
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %61 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %60)
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.data_reference, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !158
  tail call void @print_generic_expr(ptr noundef %62, ptr noundef %64, i32 noundef 2) #18
  br label %65

65:                                               ; preds = %54, %45
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %67 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !91
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %68, ptr noundef %48, ptr noundef %50) #18
  %70 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %66, ptr noundef %69, ptr noundef %49) #18
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %72 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !91
  %74 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %73, ptr noundef %49, ptr noundef %51) #18
  %75 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %71, ptr noundef %74, ptr noundef %48) #18
  %76 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %66, ptr noundef %70, ptr noundef %75) #18
  %77 = load ptr, ptr %1, align 8, !tbaa !48
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %81 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %80, ptr noundef nonnull %77, ptr noundef %76) #18
  br label %82

82:                                               ; preds = %65, %79
  %83 = phi ptr [ %81, %79 ], [ %76, %65 ]
  store ptr %83, ptr %1, align 8, !tbaa !48
  %84 = add i32 %19, 1
  %85 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %7, i32 noundef %84, ptr noundef nonnull %4) #17, !range !171
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %18, !llvm.loop !182

87:                                               ; preds = %82, %15
  %88 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1) #18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %92 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %7) #17
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.35, i32 noundef %92) #17
  br label %94

94:                                               ; preds = %87, %90, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !183 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !184
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_phi_and_debug_stmts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !186 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %5) #17
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #17
  %8 = load i32, ptr %4, align 4, !tbaa !52
  %9 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %8) #17
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %9, ptr noundef %2) #17
  %10 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !47
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #17
  %14 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %13) #17
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #17
  tail call fastcc void @adjust_debug_stmts(ptr noundef %7, ptr noundef %14, ptr noundef %15) #17
  br label %16

16:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !187 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !188
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !189
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !191 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !192
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !194 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 747, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !195
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #17
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !195
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !196
  store ptr %22, ptr %16, align 8, !tbaa !195
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !71
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #17
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !71
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !72
  store ptr %36, ptr %29, align 8, !tbaa !71
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !68
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !198 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !199 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !200 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !201 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !202 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !203
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !204 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !205 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !203
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @get_current_def(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 !PGOFuncName !206 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  store ptr %1, ptr %4, align 8, !tbaa !48
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 !PGOFuncName !207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !208
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !209
  store ptr %2, ptr %6, align 8, !tbaa !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 !PGOFuncName !210 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !208
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #17
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 !PGOFuncName !211 {
  store ptr %1, ptr %0, align 8, !tbaa !208
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !209
  store ptr %0, ptr %4, align 8, !tbaa !208
  store ptr %0, ptr %3, align 8, !tbaa !209
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !34 !PGOFuncName !212 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !34 !PGOFuncName !213 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !215 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !216 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !217
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !219 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !220 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !222 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !91
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !223 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !224
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !226 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !227 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !228
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #11 !prof !34 !PGOFuncName !230 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !48
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_adjust_info_stack_alloc1(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !231 {
  %2 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef 32, ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @ssa_names_to_replace() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slpeel_update_phis_for_duplicate_loop(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !34 !PGOFuncName !232 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @loop_latch_edge(ptr noundef %0) #18
  %7 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %8 = tail call ptr @single_exit(ptr noundef %1) #18
  %9 = tail call ptr @loop_preheader_edge(ptr noundef %1) #18
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, ptr %7, ptr %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %12 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #18
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %15) #18
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  %20 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  %21 = icmp eq ptr %8, %7
  br label %22

22:                                               ; preds = %18, %54
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %28 = load i32, ptr %19, align 4, !tbaa !52
  %29 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %27, i32 noundef %28) #17
  %30 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %29) #17
  %31 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %27, ptr noundef %11) #17
  call void @add_phi_arg(ptr noundef %26, ptr noundef %30, ptr noundef %9, i32 noundef %31) #18
  %32 = load i32, ptr %20, align 4, !tbaa !52
  %33 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %27, i32 noundef %32) #17
  %34 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %33) #17
  %35 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %27, ptr noundef %6) #17
  %36 = load i64, ptr %34, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %54

39:                                               ; preds = %25
  %40 = call ptr @get_current_def(ptr noundef nonnull %34) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %26) #17
  %44 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #17
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi ptr [ %40, %39 ], [ %44, %42 ]
  %47 = call ptr @loop_latch_edge(ptr noundef %1) #18
  call void @add_phi_arg(ptr noundef %26, ptr noundef %46, ptr noundef %47, i32 noundef %35) #18
  %48 = call ptr @single_exit(ptr noundef %0) #18
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  call fastcc void @adjust_debug_stmts(ptr noundef nonnull %34, ptr noundef null, ptr noundef %50) #17
  br i1 %10, label %51, label %54

51:                                               ; preds = %45
  br i1 %21, label %53, label %52

52:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #18
  br label %53

53:                                               ; preds = %51, %52
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %27, ptr noundef %8, ptr noundef %46) #17
  br label %54

54:                                               ; preds = %45, %53, %25
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %55 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !42
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %22, label %57, !llvm.loop !233

57:                                               ; preds = %22, %54, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @loop_vec_info_for_loop(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !234 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_prologue_iterations(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !236 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !48
  %10 = tail call fastcc ptr @loop_vec_info_for_loop(ptr noundef %2) #17
  %11 = getelementptr inbounds %struct._loop_vec_info, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  %13 = tail call ptr @unshare_expr(ptr noundef %12) #18
  %14 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %15 = tail call ptr @split_edge(ptr noundef %14) #18
  %16 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %17 = tail call ptr @split_edge(ptr noundef %16) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %17, ptr noundef %15) #18
  %18 = tail call ptr @make_single_succ_edge(ptr noundef %15, ptr noundef %0, i32 noundef 2048) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %0, ptr noundef %15) #18
  %19 = load ptr, ptr %17, align 8, !tbaa !132
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %19, i32 noundef 0) #17
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !92
  %23 = and i32 %22, -1026
  %24 = or disjoint i32 %23, 1024
  store i32 %24, ptr %21, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 0) #17
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = zext i32 %3 to i64
  %32 = tail call ptr @build_int_cst(ptr noundef %30, i64 noundef %31) #18
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %28, ptr noundef %13, ptr noundef %32) #18
  %34 = call ptr @force_gimple_operand(ptr noundef %33, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #18
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = call ptr @build_int_cst(ptr noundef %36, i64 noundef 0) #18
  %38 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %34, ptr noundef %37, ptr noundef null, ptr noundef null) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %15) #17
  %39 = load ptr, ptr %6, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %4
  call void @gsi_insert_seq_after(ptr noundef nonnull %5, ptr noundef nonnull %39, i32 noundef 0) #18
  br label %42

42:                                               ; preds = %41, %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %15) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %38, i32 noundef 0) #18
  %43 = load ptr, ptr %29, align 8, !tbaa !91
  %44 = call ptr @create_tmp_var(ptr noundef %43, ptr noundef nonnull @.str.21) #18
  %45 = call zeroext i8 @add_referenced_var(ptr noundef %44) #18
  %46 = call ptr @force_gimple_operand(ptr noundef nonnull %13, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %44) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %47 = load ptr, ptr %7, align 8, !tbaa !48
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

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
define internal fastcc ptr @slpeel_add_loop_guard(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !237 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  store ptr %2, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = and i32 %14, -2050
  %16 = or disjoint i32 %15, 2048
  store i32 %16, ptr %13, align 8, !tbaa !92
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #17
  %17 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  %18 = load ptr, ptr %8, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef nonnull %18) #18
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = call ptr @build_int_cst(ptr noundef %23, i64 noundef 0) #18
  %25 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %17, ptr noundef %24, ptr noundef null, ptr noundef null) #18
  %26 = load ptr, ptr %6, align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void @gsi_insert_seq_after(ptr noundef nonnull %7, ptr noundef nonnull %26, i32 noundef 0) #18
  br label %29

29:                                               ; preds = %28, %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef %25, i32 noundef 0) #18
  %30 = call ptr @make_edge(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1024) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %3, ptr noundef %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slpeel_update_phi_nodes_for_guard1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !34 !PGOFuncName !238 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %17 = tail call ptr @single_exit(ptr noundef %1) #18
  %18 = tail call ptr @split_edge(ptr noundef %17) #18
  store ptr %18, ptr %3, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %20, i32 noundef 0) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %16) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %14) #18
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !42
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %108

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  %26 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  %27 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 6
  %28 = icmp eq i8 %2, 0
  br label %29

29:                                               ; preds = %24, %105
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #17, !range !42
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %108

32:                                               ; preds = %29
  %33 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #17
  %35 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %33) #17
  %36 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = call ptr @create_phi_node(ptr noundef %38, ptr noundef %9) #18
  %40 = load ptr, ptr %25, align 8, !tbaa !101
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !100
  %43 = call fastcc ptr @VEC_edge_base_index(ptr noundef %42, i32 noundef 0) #17
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %33, i32 noundef %45) #17
  %47 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #17
  %48 = load ptr, ptr %25, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 0) #17
  %52 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %33, ptr noundef %51) #17
  %53 = call ptr @loop_preheader_edge(ptr noundef nonnull %1) #18
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !52
  %56 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %33, i32 noundef %55) #17
  %57 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %56) #17
  %58 = call ptr @loop_preheader_edge(ptr noundef nonnull %1) #18
  %59 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %33, ptr noundef %58) #17
  call void @add_phi_arg(ptr noundef %39, ptr noundef %47, ptr noundef %21, i32 noundef %52) #18
  call void @add_phi_arg(ptr noundef %39, ptr noundef %57, ptr noundef %0, i32 noundef %59) #18
  %60 = load i32, ptr %26, align 4, !tbaa !52
  %61 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %60) #17
  %62 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %61) #17
  %63 = icmp eq ptr %62, %47
  br i1 %63, label %70, label %64

64:                                               ; preds = %32
  %65 = load i32, ptr %26, align 4, !tbaa !52
  %66 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %65) #17
  %67 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %66) #17
  %68 = icmp eq ptr %67, %57
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 542, ptr noundef nonnull @.str.1) #18
  br label %70

70:                                               ; preds = %32, %64, %69
  %71 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %39) #17
  %72 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %71) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %34, ptr noundef nonnull %12, ptr noundef %72) #17
  %73 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %74 = call zeroext i8 @is_gimple_reg(ptr noundef %73) #18
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %70
  %77 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !91
  %80 = load ptr, ptr %3, align 8, !tbaa !48
  %81 = call ptr @create_phi_node(ptr noundef %79, ptr noundef %80) #18
  %82 = call ptr @single_exit(ptr noundef nonnull %1) #18
  call void @add_phi_arg(ptr noundef %81, ptr noundef %47, ptr noundef %82, i32 noundef %52) #18
  %83 = load i32, ptr %27, align 4, !tbaa !52
  %84 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %39, i32 noundef %83) #17
  %85 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %84) #17
  %86 = icmp eq ptr %85, %47
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 560, ptr noundef nonnull @.str.1) #18
  br label %88

88:                                               ; preds = %76, %87
  %89 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %81) #17
  %90 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %89) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %39, ptr noundef nonnull %21, ptr noundef %90) #17
  br i1 %28, label %91, label %94

91:                                               ; preds = %88
  %92 = call ptr @get_current_def(ptr noundef %47) #18
  %93 = icmp eq ptr %92, null
  br i1 %93, label %105, label %94

94:                                               ; preds = %88, %91
  %95 = phi ptr [ %92, %91 ], [ %47, %88 ]
  %96 = call ptr @get_current_def(ptr noundef %95) #18
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 586, ptr noundef nonnull @.str.1) #18
  br label %99

99:                                               ; preds = %94, %98
  %100 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %89) #17
  call void @set_current_def(ptr noundef %95, ptr noundef %100) #18
  %101 = load ptr, ptr %4, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !91
  %104 = call zeroext i8 @bitmap_set_bit(ptr noundef %101, i32 noundef %103) #18
  br label %105

105:                                              ; preds = %91, %70, %99
  call fastcc void @gsi_next(ptr noundef nonnull %6) #17
  call fastcc void @gsi_next(ptr noundef nonnull %7) #17
  %106 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !42
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %29, label %108, !llvm.loop !239

108:                                              ; preds = %29, %105, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slpeel_update_phi_nodes_for_guard2(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !240 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %9, i32 noundef 0) #17
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %13 = tail call ptr @single_exit(ptr noundef %1) #18
  %14 = tail call ptr @split_edge(ptr noundef %13) #18
  store ptr %14, ptr %3, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef 0) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %12) #18
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 6
  %22 = icmp eq i8 %2, 0
  %23 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 6
  %24 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %25

25:                                               ; preds = %20, %97
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17
  %27 = load i32, ptr %21, align 4, !tbaa !52
  %28 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %26, i32 noundef %27) #17
  %29 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %28) #17
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %97

33:                                               ; preds = %25
  %34 = call ptr @get_current_def(ptr noundef nonnull %29) #18
  %35 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %26) #17
  %36 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = call ptr @create_phi_node(ptr noundef %38, ptr noundef %7) #18
  %40 = icmp eq ptr %34, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = call ptr @get_current_def(ptr noundef nonnull %34) #18
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi ptr [ %34, %41 ], [ %29, %33 ]
  %45 = phi ptr [ %42, %41 ], [ null, %33 ]
  %46 = select i1 %22, ptr %29, ptr %44
  %47 = select i1 %22, ptr %44, ptr %29
  %48 = icmp eq ptr %45, null
  %49 = select i1 %48, ptr %47, ptr %45
  call void @add_phi_arg(ptr noundef %39, ptr noundef nonnull %46, ptr noundef %17, i32 noundef 0) #18
  call void @add_phi_arg(ptr noundef %39, ptr noundef nonnull %49, ptr noundef %0, i32 noundef 0) #18
  %50 = load i32, ptr %21, align 4, !tbaa !52
  %51 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %26, i32 noundef %50) #17
  %52 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %51) #17
  %53 = icmp eq ptr %52, %29
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %43, %54
  %56 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %39) #17
  %57 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %56) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %26, ptr noundef nonnull %10, ptr noundef %57) #17
  %58 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = load ptr, ptr %3, align 8, !tbaa !48
  %62 = call ptr @create_phi_node(ptr noundef %60, ptr noundef %61) #18
  %63 = call ptr @single_exit(ptr noundef %1) #18
  call void @add_phi_arg(ptr noundef %62, ptr noundef nonnull %46, ptr noundef %63, i32 noundef 0) #18
  %64 = load i32, ptr %23, align 4, !tbaa !52
  %65 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %39, i32 noundef %64) #17
  %66 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %65) #17
  %67 = icmp eq ptr %66, %46
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 705, ptr noundef nonnull @.str.1) #18
  br label %69

69:                                               ; preds = %55, %68
  %70 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %62) #17
  %71 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %70) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %39, ptr noundef nonnull %17, ptr noundef %71) #17
  %72 = icmp eq ptr %49, %45
  br i1 %72, label %97, label %73

73:                                               ; preds = %69
  %74 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %35) #17
  %75 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !91
  %77 = load ptr, ptr %0, align 8, !tbaa !99
  %78 = call ptr @create_phi_node(ptr noundef %76, ptr noundef %77) #18
  %79 = load ptr, ptr %0, align 8, !tbaa !99
  %80 = load ptr, ptr %79, align 8, !tbaa !132
  %81 = call fastcc i32 @VEC_edge_base_length(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.1) #18
  %84 = load ptr, ptr %0, align 8, !tbaa !99
  %85 = load ptr, ptr %84, align 8, !tbaa !132
  br label %86

86:                                               ; preds = %73, %83
  %87 = phi ptr [ %80, %73 ], [ %85, %83 ]
  %88 = call fastcc ptr @VEC_edge_base_index(ptr noundef %87, i32 noundef 0) #17
  call void @add_phi_arg(ptr noundef %78, ptr noundef nonnull %49, ptr noundef %88, i32 noundef 0) #18
  %89 = load i32, ptr %24, align 4, !tbaa !52
  %90 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %39, i32 noundef %89) #17
  %91 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %90) #17
  %92 = icmp eq ptr %91, %49
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 743, ptr noundef nonnull @.str.1) #18
  br label %94

94:                                               ; preds = %86, %93
  %95 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %78) #17
  %96 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %95) #17
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %39, ptr noundef nonnull %0, ptr noundef %96) #17
  br label %97

97:                                               ; preds = %69, %25, %94
  call fastcc void @gsi_next(ptr noundef nonnull %5) #17
  %98 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !42
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %25, label %100, !llvm.loop !241

100:                                              ; preds = %97, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_vec_debug_stmts() unnamed_addr #0 !prof !34 !PGOFuncName !242 {
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !47
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @adjust_vec, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.1) #18
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
  br i1 %17, label %18, label %12, !llvm.loop !243

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
define internal fastcc void @adjust_debug_stmts(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !244 {
  %4 = alloca %struct.adjust_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = load ptr, ptr @cfun, align 8, !tbaa !48
  %15 = tail call fastcc ptr @gimple_vop(ptr noundef %14) #17
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  store ptr %0, ptr %4, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.adjust_info, ptr %4, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.adjust_info, ptr %4, i64 0, i32 2
  store ptr %2, ptr %19, align 8, !tbaa !59
  %20 = load ptr, ptr @adjust_vec, align 8, !tbaa !48
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
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !245 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !246
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 51, ptr noundef nonnull @.str.1) #18
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !246
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !247
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_adjust_info_stack_safe_push(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !251 {
  tail call fastcc void @VEC_adjust_info_stack_reserve() #17
  %2 = load ptr, ptr @adjust_vec, align 8, !tbaa !48
  tail call fastcc void @VEC_adjust_info_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_debug_stmts_now(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !252 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = getelementptr inbounds %struct.adjust_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = load ptr, ptr %0, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.adjust_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef %9) #17
  %11 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %1, %13
  %15 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  %16 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #17, !range !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = icmp eq ptr %7, null
  %20 = icmp eq ptr %4, %10
  br label %21

21:                                               ; preds = %18, %52
  %22 = phi ptr [ %15, %18 ], [ %53, %52 ]
  %23 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %22) #17, !range !42
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %21
  %26 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %22) #17, !range !42
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #18
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
  %44 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #17, !range !42
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %48, %46 ], [ %43, %42 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %47, ptr noundef nonnull %7) #17
  %48 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %2) #17
  %49 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #17, !range !42
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %46, label %52, !llvm.loop !253

51:                                               ; preds = %41
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %22) #17
  call fastcc void @update_stmt(ptr noundef %22) #17
  br label %52

52:                                               ; preds = %46, %42, %32, %37, %38, %51, %21
  %53 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #17
  %54 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #17, !range !42
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %21, label %56, !llvm.loop !254

56:                                               ; preds = %52, %14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_adjust_info_stack_reserve() unnamed_addr #0 !prof !34 !PGOFuncName !255 {
  %1 = load ptr, ptr @adjust_vec, align 8, !tbaa !48
  %2 = tail call fastcc i32 @VEC_adjust_info_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_stack_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 24) #18
  store ptr %5, ptr @adjust_vec, align 8, !tbaa !48
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_adjust_info_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #12 !prof !34 !PGOFuncName !256 {
  %3 = load i32, ptr %0, align 8, !tbaa !257
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !257
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !103
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_adjust_info_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !259 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !260
  %6 = load i32, ptr %0, align 8, !tbaa !257
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
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !262 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !263
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  store ptr %6, ptr %0, align 8, !tbaa !265
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #17, !range !42
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !265
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !266 {
  %2 = load ptr, ptr %0, align 8, !tbaa !265
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !267 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !203
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !268 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #17, !range !42
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
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !265
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !270
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !271 {
  %2 = load ptr, ptr %0, align 8, !tbaa !265
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !272 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !270
  store ptr %3, ptr %0, align 8, !tbaa !265
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #17, !range !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  store ptr %8, ptr %2, align 8, !tbaa !270
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !273 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !274 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !42
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
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !275 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  store ptr %4, ptr %0, align 8, !tbaa !265
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #17, !range !42
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !277
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #17
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !265
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !278 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #17, !range !203
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
  br i1 %27, label %16, label %53, !llvm.loop !279

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
  br i1 %44, label %33, label %53, !llvm.loop !280

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
  %56 = load ptr, ptr %55, align 8, !tbaa !277
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
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !281 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !68
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 918, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !68
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !77
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !76
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !65
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #10 !prof !34 !PGOFuncName !282 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !209
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
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !283 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !284
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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !285 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !34 !PGOFuncName !286 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !91
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !288 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr null, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !289 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !91
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !290 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !291
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !292 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !203
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !34 !PGOFuncName !293 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !47
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !294 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !132
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !295 {
  %2 = load ptr, ptr %0, align 8, !tbaa !132
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
define internal fastcc i32 @VEC_adjust_info_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !296 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !257
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_adjust_info_base_last(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !297 {
  %2 = load i32, ptr %0, align 8, !tbaa !257
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_adjust_info_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !34 !PGOFuncName !298 {
  %2 = load i32, ptr %0, align 8, !tbaa !257
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_adjust_info_stack_free() unnamed_addr #0 !prof !34 !PGOFuncName !299 {
  %1 = load ptr, ptr @adjust_vec, align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @vec_stack_free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @adjust_vec, align 8, !tbaa !48
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

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @vect_create_addr_base_for_vector_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !34 !PGOFuncName !300 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !301
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !48
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_init_of_dr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !303 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !304
  %5 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %6 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %5, ptr noundef %1) #18
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %8 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  %10 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %9) #18
  %11 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %5, ptr noundef %6, ptr noundef %10) #18
  %12 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef %4) #18
  %14 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %12, ptr noundef %13, ptr noundef %11) #18
  store ptr %14, ptr %3, align 8, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !34 !PGOFuncName !306 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !137
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !48
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !307 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !48
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
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !34 !PGOFuncName !308 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !140
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !48
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_vfa_segment_size(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !309 {
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %3, ptr noundef %5, ptr noundef %1) #18
  %7 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %0) #18
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !152
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %10) #17
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !48
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %16, ptr noundef %6, ptr noundef %15) #18
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi ptr [ %17, %9 ], [ %6, %2 ]
  %20 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
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
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 24}
!36 = !{!"basic_block_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !37, i64 48, !37, i64 56, !38, i64 64, !40, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{i8 0, i8 2}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{i64 0, i64 4, !47, i64 8, i64 8, !48}
!47 = !{!41, !41, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{i64 0, i64 8, !48}
!50 = !{!51, !37, i64 8}
!51 = !{!"edge_def", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !40, i64 56}
!52 = !{!51, !41, i64 44}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = !{!"tree-vect-loop-manip.c:gsi_start_bb"}
!56 = !{!57, !37, i64 0}
!57 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16}
!58 = !{!57, !37, i64 8}
!59 = !{!57, !37, i64 16}
!60 = !{!"tree-vect-loop-manip.c:gsi_end_p"}
!61 = !{!"tree-vect-loop-manip.c:gsi_stmt"}
!62 = !{!63, !37, i64 0}
!63 = !{!"gimple_seq_node_d", !37, i64 0, !37, i64 8, !37, i64 16}
!64 = !{!"tree-vect-loop-manip.c:op_iter_init_use"}
!65 = !{!66, !41, i64 4}
!66 = !{!"ssa_operand_iterator_d", !38, i64 0, !41, i64 4, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !37, i64 32}
!67 = !{!"tree-vect-loop-manip.c:op_iter_done"}
!68 = !{!66, !38, i64 0}
!69 = !{!"tree-vect-loop-manip.c:rename_use_op"}
!70 = !{!"tree-vect-loop-manip.c:op_iter_next_use"}
!71 = !{!66, !37, i64 16}
!72 = !{!73, !37, i64 0}
!73 = !{!"use_optype_d", !37, i64 0, !74, i64 8}
!74 = !{!"ssa_use_operand_d", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24}
!75 = !{!66, !41, i64 24}
!76 = !{!66, !41, i64 28}
!77 = !{!66, !37, i64 32}
!78 = !{!"tree-vect-loop-manip.c:gsi_next"}
!79 = !{!63, !37, i64 16}
!80 = !{!"tree-vect-loop-manip.c:ei_start_1"}
!81 = !{!"tree-vect-loop-manip.c:ei_cond"}
!82 = !{!"tree-vect-loop-manip.c:gimple_phi_arg_imm_use_ptr"}
!83 = !{!"tree-vect-loop-manip.c:ei_next"}
!84 = !{!85, !41, i64 0}
!85 = !{!"", !41, i64 0, !37, i64 8}
!86 = !{!87, !41, i64 36}
!87 = !{!"loop", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 16, !88, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !89, i64 80, !89, i64 96, !38, i64 112, !38, i64 113, !41, i64 116, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 144}
!88 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!89 = !{!"", !40, i64 0, !40, i64 8}
!90 = distinct !{!90, !44}
!91 = !{!38, !38, i64 0}
!92 = !{!51, !41, i64 48}
!93 = !{!94, !37, i64 0}
!94 = !{!"", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!95 = !{!94, !41, i64 8}
!96 = !{!87, !37, i64 72}
!97 = !{!87, !37, i64 8}
!98 = distinct !{!98, !44}
!99 = !{!51, !37, i64 0}
!100 = !{!36, !37, i64 8}
!101 = !{!87, !37, i64 16}
!102 = distinct !{!102, !44}
!103 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !48}
!104 = distinct !{!104, !44}
!105 = !{!"tree-vect-loop-manip.c:loop_outer"}
!106 = !{!87, !37, i64 40}
!107 = !{!"tree-vect-loop-manip.c:get_use_from_ptr"}
!108 = !{!74, !37, i64 24}
!109 = !{!"tree-vect-loop-manip.c:gimple_phi_arg_location_from_edge"}
!110 = !{!111, !41, i64 40}
!111 = !{!"phi_arg_d", !74, i64 0, !37, i64 32, !41, i64 40}
!112 = !{!"tree-vect-loop-manip.c:VEC_edge_base_index"}
!113 = !{!87, !37, i64 48}
!114 = !{!"tree-vect-loop-manip.c:gsi_last_bb"}
!115 = !{!"tree-vect-loop-manip.c:gimple_location"}
!116 = !{!117, !37, i64 0}
!117 = !{!"_loop_vec_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !41, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !41, i64 96, !37, i64 104, !37, i64 112, !41, i64 120}
!118 = !{!119, !41, i64 120}
!119 = !{!"_stmt_vec_info", !41, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !38, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !38, i64 96, !37, i64 104, !37, i64 112, !41, i64 120, !37, i64 128, !37, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !37, i64 160, !38, i64 168, !120, i64 172, !41, i64 180, !37, i64 184}
!120 = !{!"", !41, i64 0, !41, i64 4}
!121 = !{!87, !41, i64 0}
!122 = distinct !{!122, !44}
!123 = !{!"tree-vect-loop-manip.c:get_def_from_ptr"}
!124 = !{!"tree-vect-loop-manip.c:gimple_phi_result_ptr"}
!125 = !{!"tree-vect-loop-manip.c:vinfo_for_stmt"}
!126 = !{!"tree-vect-loop-manip.c:instantiate_parameters"}
!127 = !{!"tree-vect-loop-manip.c:tree_is_chrec"}
!128 = !{!117, !37, i64 88}
!129 = !{!117, !37, i64 80}
!130 = !{!117, !41, i64 56}
!131 = !{!117, !41, i64 32}
!132 = !{!36, !37, i64 0}
!133 = !{!"tree-vect-loop-manip.c:vect_generate_tmps_on_preheader"}
!134 = !{!117, !37, i64 16}
!135 = !{!117, !41, i64 40}
!136 = !{!"tree-vect-loop-manip.c:VEC_gimple_base_length"}
!137 = !{!138, !41, i64 0}
!138 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !38, i64 8}
!139 = !{!"tree-vect-loop-manip.c:VEC_ddr_p_base_length"}
!140 = !{!141, !41, i64 0}
!141 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!142 = !{!"tree-vect-loop-manip.c:conservative_cost_threshold"}
!143 = !{!144, !41, i64 8}
!144 = !{!"param_info", !37, i64 0, !41, i64 8, !38, i64 12, !41, i64 16, !41, i64 20, !37, i64 24}
!145 = !{!"tree-vect-loop-manip.c:slpeel_tree_peel_loop_to_edge"}
!146 = !{!117, !37, i64 24}
!147 = !{!"tree-vect-loop-manip.c:vect_update_ivs_after_vectorizer"}
!148 = distinct !{!148, !44}
!149 = !{!"tree-vect-loop-manip.c:vect_build_loop_niters"}
!150 = !{!"tree-vect-loop-manip.c:vect_gen_niters_for_prolog_loop"}
!151 = !{!117, !37, i64 48}
!152 = !{!153, !37, i64 0}
!153 = !{!"data_reference", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !154, i64 32, !155, i64 72, !156, i64 88, !37, i64 104}
!154 = !{!"innermost_loop_behavior", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!155 = !{!"indices", !37, i64 0, !37, i64 8}
!156 = !{!"dr_alias", !37, i64 0, !37, i64 8}
!157 = !{!119, !37, i64 32}
!158 = !{!153, !37, i64 8}
!159 = !{!119, !37, i64 128}
!160 = !{!119, !41, i64 144}
!161 = !{!162, !37, i64 456}
!162 = !{!"lang_hooks", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !163, i64 240, !164, i64 248, !165, i64 256, !166, i64 272, !167, i64 432, !168, i64 560, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !38, i64 672}
!163 = !{!"lang_hooks_for_tree_inlining", !37, i64 0}
!164 = !{!"lang_hooks_for_callgraph", !37, i64 0}
!165 = !{!"lang_hooks_for_tree_dump", !37, i64 0, !37, i64 8}
!166 = !{!"lang_hooks_for_decls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152}
!167 = !{!"lang_hooks_for_types", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !38, i64 120}
!168 = !{!"lang_hooks_for_lto", !37, i64 0, !37, i64 8, !37, i64 16}
!169 = !{!"tree-vect-loop-manip.c:vect_update_inits_of_drs"}
!170 = !{!117, !37, i64 64}
!171 = !{i32 0, i32 2}
!172 = distinct !{!172, !44}
!173 = distinct !{!173, !44}
!174 = !{!"tree-vect-loop-manip.c:vect_create_cond_for_align_checks"}
!175 = !{!117, !41, i64 60}
!176 = distinct !{!176, !44}
!177 = !{!"tree-vect-loop-manip.c:vect_create_cond_for_alias_checks"}
!178 = !{!179, !37, i64 0}
!179 = !{!"data_dependence_relation", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60, !38, i64 61, !38, i64 62}
!180 = !{!119, !37, i64 48}
!181 = !{!179, !37, i64 8}
!182 = distinct !{!182, !44}
!183 = !{!"tree-vect-loop-manip.c:VEC_edge_base_length"}
!184 = !{!185, !41, i64 0}
!185 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !38, i64 8}
!186 = !{!"tree-vect-loop-manip.c:adjust_phi_and_debug_stmts"}
!187 = !{!"tree-vect-loop-manip.c:bb_seq"}
!188 = !{!36, !41, i64 96}
!189 = !{!190, !37, i64 0}
!190 = !{!"gimple_bb_info", !37, i64 0, !37, i64 8}
!191 = !{!"tree-vect-loop-manip.c:gimple_seq_first"}
!192 = !{!193, !37, i64 0}
!193 = !{!"gimple_seq_d", !37, i64 0, !37, i64 8, !37, i64 16}
!194 = !{!"tree-vect-loop-manip.c:op_iter_init"}
!195 = !{!66, !37, i64 8}
!196 = !{!197, !37, i64 0}
!197 = !{!"def_optype_d", !37, i64 0, !37, i64 8}
!198 = !{!"tree-vect-loop-manip.c:gimple_def_ops"}
!199 = !{!"tree-vect-loop-manip.c:gimple_vdef"}
!200 = !{!"tree-vect-loop-manip.c:gimple_use_ops"}
!201 = !{!"tree-vect-loop-manip.c:gimple_vuse"}
!202 = !{!"tree-vect-loop-manip.c:gimple_has_ops"}
!203 = !{i32 0, i32 256}
!204 = !{!"tree-vect-loop-manip.c:gimple_code"}
!205 = !{!"tree-vect-loop-manip.c:gimple_has_mem_ops"}
!206 = !{!"tree-vect-loop-manip.c:set_ssa_use_from_ptr"}
!207 = !{!"tree-vect-loop-manip.c:delink_imm_use"}
!208 = !{!74, !37, i64 0}
!209 = !{!74, !37, i64 8}
!210 = !{!"tree-vect-loop-manip.c:link_imm_use"}
!211 = !{!"tree-vect-loop-manip.c:link_imm_use_to_list"}
!212 = !{!"tree-vect-loop-manip.c:ei_end_p"}
!213 = !{!"tree-vect-loop-manip.c:ei_edge"}
!214 = !{!"tree-vect-loop-manip.c:ei_container"}
!215 = !{!"tree-vect-loop-manip.c:gimple_phi_arg"}
!216 = !{!"tree-vect-loop-manip.c:VEC_loop_p_base_length"}
!217 = !{!218, !41, i64 0}
!218 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!219 = !{!"tree-vect-loop-manip.c:VEC_loop_p_base_index"}
!220 = !{!"tree-vect-loop-manip.c:gimple_seq_last"}
!221 = !{!193, !37, i64 8}
!222 = !{!"tree-vect-loop-manip.c:gimple_uid"}
!223 = !{!"tree-vect-loop-manip.c:VEC_vec_void_p_base_length"}
!224 = !{!225, !41, i64 0}
!225 = !{!"VEC_vec_void_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!226 = !{!"tree-vect-loop-manip.c:VEC_vec_void_p_base_index"}
!227 = !{!"tree-vect-loop-manip.c:block_before_loop"}
!228 = !{!229, !37, i64 8}
!229 = !{!"function", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !37, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!230 = !{!"tree-vect-loop-manip.c:automatically_generated_chrec_p"}
!231 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_alloc1"}
!232 = !{!"tree-vect-loop-manip.c:slpeel_update_phis_for_duplicate_loop"}
!233 = distinct !{!233, !44}
!234 = !{!"tree-vect-loop-manip.c:loop_vec_info_for_loop"}
!235 = !{!87, !37, i64 64}
!236 = !{!"tree-vect-loop-manip.c:set_prologue_iterations"}
!237 = !{!"tree-vect-loop-manip.c:slpeel_add_loop_guard"}
!238 = !{!"tree-vect-loop-manip.c:slpeel_update_phi_nodes_for_guard1"}
!239 = distinct !{!239, !44}
!240 = !{!"tree-vect-loop-manip.c:slpeel_update_phi_nodes_for_guard2"}
!241 = distinct !{!241, !44}
!242 = !{!"tree-vect-loop-manip.c:adjust_vec_debug_stmts"}
!243 = distinct !{!243, !44}
!244 = !{!"tree-vect-loop-manip.c:adjust_debug_stmts"}
!245 = !{!"tree-vect-loop-manip.c:gimple_vop"}
!246 = !{!229, !37, i64 24}
!247 = !{!248, !37, i64 24}
!248 = !{!"gimple_df", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !249, i64 32, !249, i64 48, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !41, i64 96, !250, i64 104}
!249 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !37, i64 8}
!250 = !{!"ssa_operands", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16, !37, i64 24, !37, i64 32}
!251 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_safe_push"}
!252 = !{!"tree-vect-loop-manip.c:adjust_debug_stmts_now"}
!253 = distinct !{!253, !44}
!254 = distinct !{!254, !44}
!255 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_reserve"}
!256 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_quick_push"}
!257 = !{!258, !41, i64 0}
!258 = !{!"VEC_adjust_info_base", !41, i64 0, !41, i64 4, !38, i64 8}
!259 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_space"}
!260 = !{!258, !41, i64 4}
!261 = !{!"tree-vect-loop-manip.c:gimple_bb"}
!262 = !{!"tree-vect-loop-manip.c:first_imm_use_stmt"}
!263 = !{!264, !37, i64 8}
!264 = !{!"immediate_use_iterator_d", !37, i64 0, !37, i64 8, !74, i64 16, !37, i64 48}
!265 = !{!264, !37, i64 0}
!266 = !{!"tree-vect-loop-manip.c:end_imm_use_stmt_p"}
!267 = !{!"tree-vect-loop-manip.c:is_gimple_debug"}
!268 = !{!"tree-vect-loop-manip.c:gimple_debug_bind_p"}
!269 = !{!"tree-vect-loop-manip.c:first_imm_use_on_stmt"}
!270 = !{!264, !37, i64 48}
!271 = !{!"tree-vect-loop-manip.c:end_imm_use_on_stmt_p"}
!272 = !{!"tree-vect-loop-manip.c:next_imm_use_on_stmt"}
!273 = !{!"tree-vect-loop-manip.c:gimple_debug_bind_reset_value"}
!274 = !{!"tree-vect-loop-manip.c:update_stmt"}
!275 = !{!"tree-vect-loop-manip.c:next_imm_use_stmt"}
!276 = !{!264, !37, i64 24}
!277 = !{!264, !37, i64 16}
!278 = !{!"tree-vect-loop-manip.c:link_use_stmts_after"}
!279 = distinct !{!279, !44}
!280 = distinct !{!280, !44}
!281 = !{!"tree-vect-loop-manip.c:op_iter_init_phiuse"}
!282 = !{!"tree-vect-loop-manip.c:move_use_after_head"}
!283 = !{!"tree-vect-loop-manip.c:gimple_vuse_op"}
!284 = !{!73, !37, i64 32}
!285 = !{!"tree-vect-loop-manip.c:gimple_phi_result"}
!286 = !{!"tree-vect-loop-manip.c:clear_and_done_ssa_iter"}
!287 = !{!"tree-vect-loop-manip.c:gimple_phi_num_args"}
!288 = !{!"tree-vect-loop-manip.c:gimple_set_op"}
!289 = !{!"tree-vect-loop-manip.c:gimple_num_ops"}
!290 = !{!"tree-vect-loop-manip.c:gimple_ops"}
!291 = !{!40, !40, i64 0}
!292 = !{!"tree-vect-loop-manip.c:gimple_statement_structure"}
!293 = !{!"tree-vect-loop-manip.c:gss_for_code"}
!294 = !{!"tree-vect-loop-manip.c:single_pred_edge"}
!295 = !{!"tree-vect-loop-manip.c:single_pred_p"}
!296 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_length"}
!297 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_last"}
!298 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_base_pop"}
!299 = !{!"tree-vect-loop-manip.c:VEC_adjust_info_stack_free"}
!300 = !{!"tree-vect-loop-manip.c:VEC_data_reference_p_base_iterate"}
!301 = !{!302, !41, i64 0}
!302 = !{!"VEC_data_reference_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!303 = !{!"tree-vect-loop-manip.c:vect_update_init_of_dr"}
!304 = !{!153, !37, i64 40}
!305 = !{!153, !37, i64 56}
!306 = !{!"tree-vect-loop-manip.c:VEC_gimple_base_iterate"}
!307 = !{!"tree-vect-loop-manip.c:make_ssa_name"}
!308 = !{!"tree-vect-loop-manip.c:VEC_ddr_p_base_iterate"}
!309 = !{!"tree-vect-loop-manip.c:vect_vfa_segment_size"}
