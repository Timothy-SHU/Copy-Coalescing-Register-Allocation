; ModuleID = 'predict.c'
source_filename = "predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.predictor_info = type { ptr, i32, i32 }
%struct.sreal = type { i64, i32 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_prediction = type { ptr, ptr, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_info_def = type { %struct.sreal, i8 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.block_info_def = type { %struct.sreal, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@flag_guess_branch_prob = external local_unnamed_addr global i32, align 4
@optimize_size = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@bb_predictions = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"predict.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@predictor_info = internal unnamed_addr constant [29 x %struct.predictor_info] [%struct.predictor_info { ptr @.str.6, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.7, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.8, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.9, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.10, i32 10000, i32 1 }, %struct.predictor_info { ptr @.str.11, i32 10000, i32 1 }, %struct.predictor_info { ptr @.str.12, i32 9996, i32 1 }, %struct.predictor_info { ptr @.str.13, i32 10000, i32 1 }, %struct.predictor_info { ptr @.str.14, i32 5000, i32 0 }, %struct.predictor_info { ptr @.str.15, i32 9996, i32 1 }, %struct.predictor_info { ptr @.str.16, i32 9996, i32 1 }, %struct.predictor_info { ptr @.str.17, i32 8600, i32 1 }, %struct.predictor_info { ptr @.str.18, i32 9100, i32 1 }, %struct.predictor_info { ptr @.str.19, i32 8500, i32 0 }, %struct.predictor_info { ptr @.str.20, i32 8500, i32 0 }, %struct.predictor_info { ptr @.str.21, i32 7900, i32 0 }, %struct.predictor_info { ptr @.str.22, i32 7100, i32 0 }, %struct.predictor_info { ptr @.str.23, i32 9000, i32 0 }, %struct.predictor_info { ptr @.str.24, i32 7300, i32 0 }, %struct.predictor_info { ptr @.str.25, i32 7200, i32 0 }, %struct.predictor_info { ptr @.str.26, i32 9000, i32 0 }, %struct.predictor_info { ptr @.str.27, i32 7100, i32 0 }, %struct.predictor_info { ptr @.str.28, i32 6100, i32 0 }, %struct.predictor_info { ptr @.str.29, i32 7000, i32 0 }, %struct.predictor_info { ptr @.str.30, i32 6700, i32 0 }, %struct.predictor_info { ptr @.str.31, i32 9600, i32 0 }, %struct.predictor_info { ptr @.str.32, i32 9000, i32 0 }, %struct.predictor_info { ptr @.str.33, i32 9996, i32 0 }, %struct.predictor_info zeroinitializer], align 16
@optimize = external local_unnamed_addr global i32, align 4
@estimate_bb_frequencies.real_values_initialized = internal unnamed_addr global i1 false, align 4
@real_zero = internal global %struct.sreal zeroinitializer, align 8
@real_one = internal global %struct.sreal zeroinitializer, align 8
@real_br_prob_base = internal global %struct.sreal zeroinitializer, align 8
@real_bb_freq_max = internal global %struct.sreal zeroinitializer, align 8
@real_one_half = internal global %struct.sreal zeroinitializer, align 8
@real_inv_br_prob_base = internal global %struct.sreal zeroinitializer, align 8
@real_almost_one = internal global %struct.sreal zeroinitializer, align 8
@flag_reorder_functions = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@pass_profile = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_estimate_probability, ptr @tree_estimate_probability_driver, ptr null, ptr null, i32 0, i32 138, i32 8, i32 0, i32 0, i32 0, i32 6 } }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"*strip_predict_hints\00", align 1
@pass_strip_predict_hints = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr null, ptr @strip_predict_hints, ptr null, ptr null, i32 0, i32 138, i32 8, i32 0, i32 0, i32 0, i32 6 } }, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DS theory\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"first match\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"no prediction\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"unconditional jump\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"loop iterations\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"__builtin_expect\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"guessed loop iterations\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"noreturn call\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"cold function call\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"loop branch\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"loop exit\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"pointer (on trees)\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"opcode values positive\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"opcode values nonequal\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"fp_opcode\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"opcode values positive (on trees)\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"opcode values nonequal (on trees)\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"fp_opcode (on trees)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"early return (on trees)\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"const return\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"negative return\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"null return\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"mudflap check\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [31 x i8] c"Predictions for insn %i bb %i\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"  %s heuristics%s: %.1f%%\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [11 x i8] c" (ignored)\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"  exec \00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" hit \00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c" (%.1f%%)\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.43 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"%i edges in bb %i predicted to even probabilities\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Predictions for bb %i\0A\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"Irreducible region hit, ignoring edge to %i->%i\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [10 x i8] c".text.hot\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !322 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !330
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12, !prof !332

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !333
  %11 = tail call fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %10) #20, !range !336
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !337
  %15 = tail call fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %14) #20, !range !336
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %11, %8 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %0) unnamed_addr #0 !prof !338 !PGOFuncName !339 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !330
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load ptr, ptr @profile_info, align 8, !tbaa !323
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !340
  %12 = zext i32 %11 to i64
  %13 = icmp slt i64 %12, %0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !342
  %17 = load ptr, ptr @compiler_params, align 8, !tbaa !323
  %18 = getelementptr inbounds %struct.param_info, ptr %17, i64 42, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !343
  %20 = sext i32 %19 to i64
  %21 = sdiv i64 %16, %20
  %22 = icmp slt i64 %21, %0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %8, %1, %14
  %25 = phi i8 [ %23, %14 ], [ 1, %1 ], [ 0, %8 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %0) unnamed_addr #0 !prof !345 !PGOFuncName !346 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !323
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !347

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !348
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !323
  br label %16

9:                                                ; preds = %4, %1
  %10 = load ptr, ptr @cfun, align 8, !tbaa !323
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 20
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 3
  switch i32 %14, label %16 [
    i32 0, label %30
    i32 2, label %15
  ], !prof !349

15:                                               ; preds = %9
  br label %30

16:                                               ; preds = %7, %9
  %17 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !327
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !330
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23, !prof !350

23:                                               ; preds = %16
  %24 = load ptr, ptr @compiler_params, align 8, !tbaa !323
  %25 = getelementptr inbounds %struct.param_info, ptr %24, i64 43, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !343
  %27 = sdiv i32 10000, %26
  %28 = icmp sle i32 %27, %0
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %23, %16, %9, %15
  %31 = phi i8 [ 1, %15 ], [ 0, %9 ], [ 1, %16 ], [ %29, %23 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cgraph_maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !351 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !323
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4, !prof !352

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !348
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8, !tbaa !353
  %9 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !342
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !323
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 42, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !343
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %10, %14
  %16 = icmp sgt i64 %8, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %7, %4, %1
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !356
  %20 = load ptr, ptr %19, align 8, !tbaa !357
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !365
  %23 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52, !prof !352

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !366
  %28 = load ptr, ptr %27, align 8, !tbaa !357
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !365
  %31 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %30) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %52, !prof !352

33:                                               ; preds = %25
  %34 = load ptr, ptr %26, align 8, !tbaa !366
  %35 = load ptr, ptr %34, align 8, !tbaa !357
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !365
  %38 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %52, !prof !352

40:                                               ; preds = %33
  %41 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !348
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43, !prof !367

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !368
  %46 = load ptr, ptr @compiler_params, align 8, !tbaa !323
  %47 = getelementptr inbounds %struct.param_info, ptr %46, i64 43, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !343
  %49 = sdiv i32 1000, %48
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %52, !prof !369

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %43, %33, %17, %25, %7, %51
  %53 = phi i8 [ 1, %51 ], [ 0, %7 ], [ 0, %25 ], [ 0, %17 ], [ 1, %33 ], [ 0, %43 ]
  ret i8 %53
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !370 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !330
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12, !prof !371

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %10 = load i64, ptr %9, align 8, !tbaa !372
  %11 = tail call fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %10) #20, !range !336
  br label %22

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !337
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !375
  %18 = mul nsw i32 %17, %15
  %19 = add nsw i32 %18, 5000
  %20 = sdiv i32 %19, 10000
  %21 = tail call fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %20) #20, !range !336
  br label %22

22:                                               ; preds = %12, %8
  %23 = phi i8 [ %11, %8 ], [ %21, %12 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @probably_never_executed_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !376 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !323
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4, !prof !377

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !348
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !333
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !340
  %12 = lshr i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = zext i32 %11 to i64
  %16 = sdiv i64 %14, %15
  %17 = icmp eq i64 %16, 0
  br label %24

18:                                               ; preds = %4, %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !323
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 20
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 196608
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %18, %7
  %25 = phi i1 [ %17, %7 ], [ %23, %18 ]
  %26 = zext i1 %25 to i8
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_function_for_size_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !378 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !348
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12, !prof !379

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6, !prof !380

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 196608
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %4, %6, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_function_for_speed_p(ptr noundef %0) local_unnamed_addr #0 !prof !381 {
  %2 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %0) #20, !range !336
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !382 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %2) #20, !range !336
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !383

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #20, !range !336
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !384 {
  %2 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #20, !range !336
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !370 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %2) #20, !range !336
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !385

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0) #20, !range !336
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !386 {
  %2 = tail call zeroext i8 @optimize_edge_for_size_p(ptr noundef %0) #20, !range !336
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #0 !prof !387 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !323
  %2 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %1) #20, !range !336
  %3 = icmp ne i8 %2, 0
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5, !prof !388
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #0 !prof !389 {
  %1 = tail call zeroext i8 @optimize_insn_for_size_p() #20, !range !336
  %2 = xor i8 %1, 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !338 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %3) #20, !range !336
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !338 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %3) #20, !range !336
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef readonly %0) local_unnamed_addr #3 !prof !338 {
  %2 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %0) #20, !range !336
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !394
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %6, %0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %4, %32
  %11 = phi ptr [ %33, %32 ], [ %6, %4 ]
  %12 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %11) #20, !range !336
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !394
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !395
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = icmp eq ptr %11, %0
  br i1 %23, label %35, label %24

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %30, %29 ], [ %11, %22 ]
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !395
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %25) #20
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %24, !llvm.loop !396

32:                                               ; preds = %24, %18, %14
  %33 = phi ptr [ %16, %14 ], [ %20, %18 ], [ %27, %24 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %10, !llvm.loop !398

35:                                               ; preds = %22, %10, %32, %29, %4, %1
  %36 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %29 ], [ 0, %22 ], [ 1, %10 ], [ 0, %32 ]
  ret i8 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !338 !PGOFuncName !399 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !400
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %0) local_unnamed_addr #3 !prof !338 {
  %2 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef %0) #20, !range !336
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @predictable_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !401 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !330
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8, !prof !402

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !375
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !323
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 1, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !343
  %14 = mul nsw i32 %13, 100
  %15 = icmp sle i32 %10, %14
  %16 = sub nsw i32 10000, %10
  %17 = icmp sle i32 %16, %14
  %18 = select i1 %15, i1 true, i1 %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %8, %1
  %21 = phi i8 [ 0, %1 ], [ %19, %8 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rtl_profile_for_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !403 {
  %2 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #20, !range !336
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !404
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rtl_profile_for_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !338 {
  %2 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0) #20, !range !336
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !404
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @default_rtl_profile() local_unnamed_addr #6 !prof !413 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !404
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @rtl_predicted_by_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !338 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !365
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !414
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !365
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = sext i32 %1 to i64
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi ptr [ %13, %15 ], [ %32, %30 ]
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 16711680
  %21 = icmp eq i32 %20, 1048576
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !365
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !365
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !365
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %34, label %30

30:                                               ; preds = %17, %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !365
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %17, !llvm.loop !416

34:                                               ; preds = %22, %30, %11, %2
  %35 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %22 ], [ 0, %30 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !417 {
  %3 = load ptr, ptr @bb_predictions, align 8, !tbaa !323
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !418

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %8, %10 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !323
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !419

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.edge_prediction, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !420
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !prof !422, !llvm.loop !423

14:                                               ; preds = %6, %10, %2
  %15 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @edge_probability_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !338 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !375
  %4 = tail call fastcc zeroext i8 @probability_reliable_p(i32 noundef %3) #20, !range !336
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @probability_reliable_p(i32 noundef %0) unnamed_addr #0 !prof !338 !PGOFuncName !424 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !330
  switch i32 %6, label %11 [
    i32 2, label %12
    i32 1, label %7
  ]

7:                                                ; preds = %1
  %8 = add i32 %0, -9900
  %9 = icmp ult i32 %8, -9799
  %10 = zext i1 %9 to i8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11, %7
  %13 = phi i8 [ 1, %1 ], [ %10, %7 ], [ 0, %11 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @br_prob_note_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !338 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 851968
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef nonnull @.str.3) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !365
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !365
  %11 = trunc i64 %10 to i32
  %12 = tail call fastcc zeroext i8 @probability_reliable_p(i32 noundef %11) #20, !range !336
  ret i8 %12
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_insn_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !425 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !426
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8, !prof !428
  tail call fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !425 !PGOFuncName !429 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !430

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 438, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !348
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10, !prof !430

10:                                               ; preds = %7
  %11 = sext i32 %1 to i64
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %11) #21
  %13 = sext i32 %2 to i64
  %14 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %13) #21
  %15 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef 0, ptr noundef %12, ptr noundef %14) #21
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 16, ptr noundef %15) #21
  br label %16

16:                                               ; preds = %7, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rtl_predict_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !338 {
  %4 = load ptr, ptr %0, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !365
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !414
  %9 = tail call i32 @any_condjump_p(ptr noundef %8) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !431
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = sub nsw i32 10000, %2
  %17 = select i1 %15, i32 %2, i32 %16
  tail call fastcc void @predict_insn(ptr noundef %8, i32 noundef %1, i32 noundef %17) #20
  br label %18

18:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !432 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !327
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !330
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14, !prof !433

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef nonnull @.str.3) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !323
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !327
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi ptr [ %6, %3 ], [ %13, %10 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !374
  %17 = load ptr, ptr %15, align 8, !tbaa !434
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %39, label %19, !prof !433

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !435
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #20
  %23 = icmp ugt i32 %22, 1
  %24 = load i32, ptr @flag_guess_branch_prob, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = load i32, ptr @optimize, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %39, !prof !436

30:                                               ; preds = %19
  %31 = tail call ptr @xmalloc(i64 noundef 24) #21
  %32 = load ptr, ptr @bb_predictions, align 8, !tbaa !323
  %33 = load ptr, ptr %0, align 8, !tbaa !374
  %34 = tail call ptr @pointer_map_insert(ptr noundef %32, ptr noundef %33) #21
  %35 = load ptr, ptr %34, align 8, !tbaa !323
  store ptr %35, ptr %31, align 8, !tbaa !437
  store ptr %31, ptr %34, align 8, !tbaa !323
  %36 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 3
  store i32 %2, ptr %36, align 4, !tbaa !438
  %37 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 2
  store i32 %1, ptr %37, align 8, !tbaa !420
  %38 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !439
  br label %39

39:                                               ; preds = %30, %19, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !440 !PGOFuncName !441 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !442

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !443
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_predictions_associated_with_edge(ptr noundef readonly %0) local_unnamed_addr #1 !prof !445 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !323
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4, !prof !446

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !374
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !323
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %19
  %12 = phi ptr [ %17, %19 ], [ %9, %8 ]
  %13 = phi ptr [ %20, %19 ], [ %6, %8 ]
  %14 = getelementptr inbounds %struct.edge_prediction, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !439
  %16 = icmp eq ptr %15, %0
  %17 = load ptr, ptr %12, align 8, !tbaa !323
  br i1 %16, label %18, label %19

18:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #20
  store ptr %17, ptr %13, align 8, !tbaa !323
  br label %19

19:                                               ; preds = %11, %18
  %20 = phi ptr [ %13, %18 ], [ %12, %11 ]
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %11, !llvm.loop !447

22:                                               ; preds = %19, %8, %4, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_edge_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !432 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !426
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8, !prof !448
  tail call void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %9) #21
  ret void
}

; Function Attrs: optsize
declare void @predict_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @invert_br_probabilities(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !449 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5, !prof !450

5:                                                ; preds = %1, %28
  %6 = phi ptr [ %30, %28 ], [ %3, %1 ]
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %28 [
    i8 13, label %10
    i8 16, label %17
  ], !prof !451

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !365
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !365
  %15 = sub nsw i64 10000, %14
  %16 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #21
  store ptr %16, ptr %11, align 8, !tbaa !365
  br label %28

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !365
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !365
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !365
  %24 = sub nsw i64 10000, %23
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %24) #21
  %26 = load ptr, ptr %18, align 8, !tbaa !365
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %25, ptr %27, align 8, !tbaa !365
  br label %28

28:                                               ; preds = %5, %10, %17
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !365
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5, !prof !452, !llvm.loop !453

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @guess_outgoing_edge_probabilities(ptr noundef %0) local_unnamed_addr #1 !prof !454 {
  tail call fastcc void @bb_estimate_probability_locally(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !414
  tail call fastcc void @combine_predictions_for_insn(ptr noundef %5, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bb_estimate_probability_locally(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !454 !PGOFuncName !455 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !414
  %6 = tail call fastcc zeroext i8 @can_predict_insn_p(ptr noundef %5) #20, !range !336
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %103, label %8, !prof !456

8:                                                ; preds = %1
  %9 = tail call ptr @get_condition(ptr noundef %5, ptr noundef null, i32 noundef 0, i32 noundef 0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %103, label %11, !prof !457

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !348
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %37, !prof !458

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !365
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 1073807359
  %23 = icmp eq i32 %22, 1073741861
  br i1 %23, label %33, label %24, !prof !459

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !365
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %37, !prof !457

30:                                               ; preds = %24
  %31 = and i32 %27, 1073741824
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %18, %30
  %34 = trunc i32 %12 to i16
  switch i16 %34, label %103 [
    i16 81, label %35
    i16 80, label %36
  ]

35:                                               ; preds = %33
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 13, i32 noundef 0) #20
  br label %103

36:                                               ; preds = %33
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 13, i32 noundef 1) #20
  br label %103

37:                                               ; preds = %30, %24, %11
  %38 = trunc i32 %12 to i16
  switch i16 %38, label %103 [
    i16 30, label %39
    i16 81, label %43
    i16 92, label %43
    i16 80, label %60
    i16 97, label %60
    i16 91, label %77
    i16 90, label %78
    i16 84, label %79
    i16 85, label %79
    i16 82, label %91
    i16 83, label %91
  ], !prof !460

39:                                               ; preds = %37
  %40 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !323
  %41 = icmp ne ptr %9, %40
  %42 = zext i1 %41 to i32
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 4, i32 noundef %42) #20
  br label %103

43:                                               ; preds = %37, %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !365
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !365
  switch i8 %51, label %52 [
    i8 8, label %103
    i8 9, label %103
    i8 11, label %103
    i8 17, label %103
  ], !prof !461

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !365
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !323
  %56 = icmp eq ptr %54, %55
  %57 = icmp eq ptr %45, %55
  %58 = or i1 %56, %57
  br i1 %58, label %103, label %59, !prof !462

59:                                               ; preds = %52
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 16, i32 noundef 0) #20
  br label %103

60:                                               ; preds = %37, %37
  %61 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !365
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !365
  switch i8 %68, label %69 [
    i8 8, label %103
    i8 9, label %103
    i8 11, label %103
    i8 17, label %103
  ]

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !365
  %72 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !323
  %73 = icmp eq ptr %71, %72
  %74 = icmp eq ptr %62, %72
  %75 = or i1 %73, %74
  br i1 %75, label %103, label %76

76:                                               ; preds = %69
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 16, i32 noundef 1) #20
  br label %103

77:                                               ; preds = %37
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 17, i32 noundef 1) #20
  br label %103

78:                                               ; preds = %37
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 17, i32 noundef 0) #20
  br label %103

79:                                               ; preds = %37, %37
  %80 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !365
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !323
  %83 = icmp eq ptr %81, %82
  %84 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %85 = icmp eq ptr %81, %84
  %86 = select i1 %83, i1 true, i1 %85
  %87 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %88 = icmp eq ptr %81, %87
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %103, !prof !463

90:                                               ; preds = %79
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 15, i32 noundef 0) #20
  br label %103

91:                                               ; preds = %37, %37
  %92 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !365
  %94 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !323
  %95 = icmp eq ptr %93, %94
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %97 = icmp eq ptr %93, %96
  %98 = select i1 %95, i1 true, i1 %97
  %99 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %100 = icmp eq ptr %93, %99
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %102, label %103, !prof !464

102:                                              ; preds = %91
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 15, i32 noundef 1) #20
  br label %103

103:                                              ; preds = %36, %35, %37, %102, %90, %69, %76, %52, %59, %78, %77, %39, %33, %43, %43, %43, %43, %60, %60, %60, %60, %79, %91, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_predictions_for_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !454 !PGOFuncName !465 {
  %3 = tail call fastcc zeroext i8 @can_predict_insn_p(ptr noundef %0) #20, !range !336
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !456

5:                                                ; preds = %2
  tail call fastcc void @set_even_probabilities(ptr noundef %1) #20
  br label %192

6:                                                ; preds = %2
  %7 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 13, ptr noundef null) #21
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !323
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !458

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !365
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !466
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.34, i32 noundef %13, i32 noundef %15) #20
  br label %17

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %8, align 8, !tbaa !365
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20, !prof !467

20:                                               ; preds = %17, %60
  %21 = phi ptr [ %66, %60 ], [ %18, %17 ]
  %22 = phi i32 [ %64, %60 ], [ 5000, %17 ]
  %23 = phi i32 [ %63, %60 ], [ 28, %17 ]
  %24 = phi i32 [ %62, %60 ], [ 5000, %17 ]
  %25 = phi i8 [ %61, %60 ], [ 0, %17 ]
  %26 = load i32, ptr %21, align 8
  %27 = and i32 %26, 16711680
  %28 = icmp eq i32 %27, 1048576
  br i1 %28, label %29, label %60, !prof !468

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !365
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !365
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !365
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !365
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !365
  %41 = trunc i64 %40 to i32
  %42 = icmp ugt i32 %23, %36
  %43 = tail call i32 @llvm.umin.i32(i32 %23, i32 %36)
  %44 = select i1 %42, i32 %41, i32 %22, !prof !468
  %45 = mul nsw i32 %24, %41
  %46 = sub nsw i32 10000, %24
  %47 = sub nsw i32 10000, %41
  %48 = mul nsw i32 %47, %46
  %49 = add nsw i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51, !prof !430

51:                                               ; preds = %29
  %52 = sitofp i32 %24 to double
  %53 = sitofp i32 %41 to double
  %54 = fmul double %52, %53
  %55 = fmul double %54, 1.000000e+04
  %56 = sitofp i32 %49 to double
  %57 = fdiv double %55, %56
  %58 = fadd double %57, 5.000000e-01
  %59 = fptosi double %58 to i32
  br label %60

60:                                               ; preds = %51, %29, %20
  %61 = phi i8 [ %25, %20 ], [ 1, %29 ], [ 1, %51 ]
  %62 = phi i32 [ %24, %20 ], [ 5000, %29 ], [ %59, %51 ]
  %63 = phi i32 [ %23, %20 ], [ %43, %29 ], [ %43, %51 ]
  %64 = phi i32 [ %22, %20 ], [ %44, %29 ], [ %44, %51 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !365
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %20, !prof !469, !llvm.loop !470

68:                                               ; preds = %60
  %69 = icmp eq i8 %61, 0
  br label %70

70:                                               ; preds = %68, %17
  %71 = phi i1 [ true, %17 ], [ %69, %68 ]
  %72 = phi i32 [ 5000, %17 ], [ %62, %68 ]
  %73 = phi i32 [ 28, %17 ], [ %63, %68 ]
  %74 = phi i32 [ 5000, %17 ], [ %64, %68 ]
  %75 = zext nneg i32 %73 to i64
  %76 = lshr i64 536862991, %75
  %77 = and i64 %76, 1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80, !prof !457

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %70
  %81 = phi i32 [ 1, %79 ], [ 0, %70 ]
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !323
  br i1 %71, label %83, label %84, !prof !471

83:                                               ; preds = %80
  tail call fastcc void @dump_prediction(ptr noundef %82, i32 noundef 3, i32 noundef %72, ptr noundef %1, i32 noundef 1) #20
  br label %87

84:                                               ; preds = %80
  %85 = trunc i64 %77 to i32
  tail call fastcc void @dump_prediction(ptr noundef %82, i32 noundef 1, i32 noundef %72, ptr noundef %1, i32 noundef %85) #20
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !323
  tail call fastcc void @dump_prediction(ptr noundef %86, i32 noundef 2, i32 noundef %74, ptr noundef %1, i32 noundef %81) #20
  br label %87

87:                                               ; preds = %84, %83
  br i1 %78, label %88, label %89, !prof !457

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %87
  %90 = phi i32 [ %74, %88 ], [ %72, %87 ]
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !323
  tail call fastcc void @dump_prediction(ptr noundef %91, i32 noundef 0, i32 noundef %90, ptr noundef %1, i32 noundef 1) #20
  %92 = load ptr, ptr %8, align 8, !tbaa !323
  %93 = icmp eq ptr %92, null
  br i1 %93, label %129, label %94, !prof !467

94:                                               ; preds = %89, %125
  %95 = phi ptr [ %126, %125 ], [ %92, %89 ]
  %96 = phi ptr [ %127, %125 ], [ %8, %89 ]
  %97 = load i32, ptr %95, align 8
  %98 = and i32 %97, 16711680
  %99 = icmp eq i32 %98, 1048576
  br i1 %99, label %100, label %122, !prof !468

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !365
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !365
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !365
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !365
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !365
  %112 = trunc i64 %111 to i32
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !323
  br i1 %78, label %114, label %116, !prof !430

114:                                              ; preds = %100
  %115 = icmp eq i32 %73, %107
  br label %116

116:                                              ; preds = %114, %100
  %117 = phi i1 [ true, %100 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  tail call fastcc void @dump_prediction(ptr noundef %113, i32 noundef %107, i32 noundef %112, ptr noundef %1, i32 noundef %118) #20
  %119 = load ptr, ptr %96, align 8, !tbaa !323
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !365
  store ptr %121, ptr %96, align 8, !tbaa !323
  br label %125

122:                                              ; preds = %94
  %123 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !323
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi ptr [ %121, %116 ], [ %124, %122 ]
  %127 = phi ptr [ %96, %116 ], [ %123, %122 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %94, !prof !469, !llvm.loop !472

129:                                              ; preds = %125, %89
  %130 = icmp eq ptr %7, null
  br i1 %130, label %131, label %157, !prof !458

131:                                              ; preds = %129
  %132 = sext i32 %90 to i64
  %133 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %132) #21
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 13, ptr noundef %133) #21
  %134 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !336
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %192, !prof !458

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !435
  %139 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 0) #20
  %140 = getelementptr inbounds %struct.edge_def, ptr %139, i64 0, i32 7
  %141 = load i32, ptr %140, align 8, !tbaa !431
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144, !prof !458

144:                                              ; preds = %136
  %145 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 1) #20
  br label %146

146:                                              ; preds = %136, %144
  %147 = phi ptr [ %145, %144 ], [ %139, %136 ]
  %148 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 8
  store i32 %90, ptr %148, align 4, !tbaa !375
  %149 = sub nsw i32 10000, %90
  %150 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 0) #20
  %151 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 7
  %152 = load i32, ptr %151, align 8, !tbaa !431
  %153 = and i32 %152, 1
  %154 = xor i32 %153, 1
  %155 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef %154) #20
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 8
  store i32 %149, ptr %156, align 4, !tbaa !375
  br label %192

157:                                              ; preds = %129
  %158 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !336
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !365
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !365
  %165 = trunc i64 %164 to i32
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !435
  %168 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 0) #20
  %169 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !431
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %160
  %174 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 1) #20
  br label %175

175:                                              ; preds = %160, %173
  %176 = phi ptr [ %174, %173 ], [ %168, %160 ]
  %177 = getelementptr inbounds %struct.edge_def, ptr %176, i64 0, i32 8
  store i32 %165, ptr %177, align 4, !tbaa !375
  %178 = sub nsw i32 10000, %165
  %179 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 0) #20
  %180 = getelementptr inbounds %struct.edge_def, ptr %179, i64 0, i32 7
  %181 = load i32, ptr %180, align 8, !tbaa !431
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 1) #20
  br label %186

186:                                              ; preds = %175, %184
  %187 = phi ptr [ %185, %184 ], [ %179, %175 ]
  %188 = getelementptr inbounds %struct.edge_def, ptr %187, i64 0, i32 8
  store i32 %178, ptr %188, align 4, !tbaa !375
  br label %192

189:                                              ; preds = %157
  %190 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  %191 = getelementptr inbounds %struct.edge_def, ptr %190, i64 0, i32 8
  store i32 10000, ptr %191, align 4, !tbaa !375
  br label %192

192:                                              ; preds = %146, %131, %189, %186, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_estimate_probability() local_unnamed_addr #1 !prof !473 {
  tail call void @add_noreturn_fake_exit_edges() #21
  tail call void @connect_infinite_loops_to_exit() #21
  tail call void @create_preheaders(i32 noundef 1) #21
  tail call void @calculate_dominance_info(i32 noundef 2) #21
  %1 = tail call ptr @pointer_map_create() #21
  store ptr %1, ptr @bb_predictions, align 8, !tbaa !323
  tail call fastcc void @tree_bb_level_predictions() #20
  tail call void @record_loop_exits() #21
  %2 = tail call fastcc i32 @number_of_loops() #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %5, !prof !474

4:                                                ; preds = %0
  tail call fastcc void @predict_loops() #20
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !323
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !327
  %9 = load ptr, ptr %8, align 8, !tbaa !434
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !475
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !476
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %40, label %15, !prof !477

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %18, %15 ], [ %11, %5 ]
  tail call fastcc void @tree_estimate_probability_bb(ptr noundef %16) #20
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !475
  %19 = load ptr, ptr @cfun, align 8, !tbaa !323
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !327
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !476
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %15, !prof !478, !llvm.loop !479

25:                                               ; preds = %15
  %26 = load ptr, ptr %21, align 8, !tbaa !434
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !475
  %29 = icmp eq ptr %28, %18
  br i1 %29, label %40, label %30, !prof !480

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %25 ]
  tail call fastcc void @combine_predictions_for_bb(ptr noundef %31) #20
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !475
  %34 = load ptr, ptr @cfun, align 8, !tbaa !323
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !327
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !476
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %30, !prof !478, !llvm.loop !481

40:                                               ; preds = %30, %5, %25
  %41 = load ptr, ptr @bb_predictions, align 8, !tbaa !323
  tail call void @pointer_map_destroy(ptr noundef %41) #21
  store ptr null, ptr @bb_predictions, align 8, !tbaa !323
  tail call void @estimate_bb_frequencies() #20
  tail call void @free_dominance_info(i32 noundef 2) #21
  tail call void @remove_fake_exit_edges() #21
  ret void
}

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @connect_infinite_loops_to_exit() local_unnamed_addr #2

; Function Attrs: optsize
declare void @create_preheaders(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_bb_level_predictions() unnamed_addr #1 !prof !473 !PGOFuncName !482 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !327
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !476
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !483
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !484
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %1) #20, !range !336
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13, !prof !485

13:                                               ; preds = %0, %19
  %14 = load ptr, ptr %1, align 8, !tbaa !323
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !431
  %17 = and i32 %16, 26
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24, !prof !474

19:                                               ; preds = %13
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %20 = load i32, ptr %2, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %1) #20, !range !336
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !prof !486, !llvm.loop !487

24:                                               ; preds = %19, %13, %0
  %25 = phi i1 [ true, %0 ], [ %18, %13 ], [ %18, %19 ]
  tail call fastcc void @apply_return_prediction() #20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !323
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !327
  %29 = load ptr, ptr %28, align 8, !tbaa !434
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !475
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !476
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %76, label %35, !prof !477

35:                                               ; preds = %24, %67
  %36 = phi ptr [ %69, %67 ], [ %31, %24 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %36) #20
  %37 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !336
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67, !prof !488

39:                                               ; preds = %35, %64
  %40 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %41 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %40) #20, !range !336
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43, !prof !489

43:                                               ; preds = %39
  %44 = tail call i32 @gimple_call_flags(ptr noundef %40) #21
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !490

47:                                               ; preds = %43
  br i1 %25, label %49, label %48, !prof !491

48:                                               ; preds = %47
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef 9, i32 noundef 0) #20
  br label %49

49:                                               ; preds = %48, %47, %43
  %50 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %40) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52, !prof !492

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !365
  %55 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %54) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57, !prof !493

57:                                               ; preds = %52
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef 10, i32 noundef 0) #20
  br label %64

58:                                               ; preds = %39
  %59 = tail call fastcc i32 @gimple_code(ptr noundef %40) #20, !range !494
  %60 = icmp eq i32 %59, 33
  br i1 %60, label %61, label %64, !prof !495

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @gimple_predict_predictor(ptr noundef %40) #20, !range !496
  %63 = tail call fastcc i32 @gimple_predict_outcome(ptr noundef %40) #20, !range !497
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef %62, i32 noundef %63) #20
  br label %64

64:                                               ; preds = %58, %61, %49, %52, %57
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %65 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !336
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %39, label %67, !prof !498, !llvm.loop !499

67:                                               ; preds = %64, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !475
  %70 = load ptr, ptr @cfun, align 8, !tbaa !323
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !327
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !476
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %76, label %35, !prof !478, !llvm.loop !500

76:                                               ; preds = %67, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !prof !501 !PGOFuncName !502 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !323
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !503
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !504

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !505
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #20
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_loops() unnamed_addr #1 !prof !338 !PGOFuncName !507 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.tree_niter_desc, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %8 = load ptr, ptr %2, align 8, !tbaa !323
  %9 = icmp eq ptr %8, null
  br i1 %9, label %134, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds i8, ptr %7, i64 8
  br label %13

13:                                               ; preds = %10, %131
  %14 = phi ptr [ %8, %10 ], [ %132, %131 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %15 = call ptr @get_loop_exit_edges(ptr noundef nonnull %14) #21
  store ptr %15, ptr %3, align 8, !tbaa !323
  %16 = call fastcc i32 @VEC_edge_base_length(ptr noundef %15) #20
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %5) #20, !range !497
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 1
  br label %21

21:                                               ; preds = %19, %71
  %22 = phi i32 [ 0, %19 ], [ %72, %71 ]
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !323
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 46, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !343
  %26 = load ptr, ptr %5, align 8, !tbaa !323
  %27 = call zeroext i8 @number_of_iterations_exit(ptr noundef nonnull %14, ptr noundef %26, ptr noundef nonnull %4, i8 noundef zeroext 0) #21
  %28 = icmp eq i8 %27, 0
  %29 = load ptr, ptr %11, align 8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load i64, ptr %29, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 23
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %21
  %37 = call ptr @loop_niter_by_eval(ptr noundef nonnull %14, ptr noundef %26) #21
  %38 = load i64, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %38, %36 ], [ %33, %32 ]
  %41 = phi ptr [ %37, %36 ], [ %29, %32 ]
  %42 = and i64 %40, 65535
  %43 = icmp eq i64 %42, 23
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = call i32 @host_integerp(ptr noundef nonnull %41, i32 noundef 1) #21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = add nsw i32 %25, -1
  %49 = sext i32 %48 to i64
  %50 = call i32 @compare_tree_int(ptr noundef nonnull %41, i64 noundef %49) #21
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i64 @tree_low_cst(ptr noundef nonnull %41, i32 noundef 1) #21
  %54 = add nsw i64 %53, 1
  br label %64

55:                                               ; preds = %47, %44
  %56 = sext i32 %25 to i64
  br label %64

57:                                               ; preds = %39
  br i1 %20, label %58, label %71

58:                                               ; preds = %57
  %59 = call i64 @estimated_loop_iterations_int(ptr noundef nonnull %14, i8 noundef zeroext 0) #21
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = sext i32 %25 to i64
  %63 = call i64 @llvm.smin.i64(i64 %59, i64 %62)
  br label %64

64:                                               ; preds = %52, %55, %61
  %65 = phi i32 [ 7, %61 ], [ 5, %55 ], [ 5, %52 ]
  %66 = phi i64 [ %63, %61 ], [ %56, %55 ], [ %54, %52 ]
  %67 = sdiv i64 %66, 2
  %68 = add nsw i64 %67, 10000
  %69 = sdiv i64 %68, %66
  %70 = trunc i64 %69 to i32
  call void @predict_edge(ptr noundef %26, i32 noundef %65, i32 noundef %70) #21
  br label %71

71:                                               ; preds = %57, %58, %64
  %72 = add i32 %22, 1
  %73 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %15, i32 noundef %72, ptr noundef nonnull %5) #20, !range !497
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %21, !llvm.loop !508

75:                                               ; preds = %71, %13
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #20
  %76 = call ptr @get_loop_body(ptr noundef nonnull %14) #21
  %77 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !509
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %131, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 3
  %82 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 2
  br label %83

83:                                               ; preds = %80, %126
  %84 = phi i64 [ 0, %80 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %85 = getelementptr inbounds ptr, ptr %76, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !323
  %87 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 8) #21
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %83
  %90 = load ptr, ptr %81, align 8, !tbaa !510
  %91 = icmp eq ptr %86, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load ptr, ptr %82, align 8, !tbaa !390
  %94 = call ptr @find_edge(ptr noundef %86, ptr noundef %93) #21
  store ptr %94, ptr %6, align 8, !tbaa !323
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @predict_edge_def(ptr noundef nonnull %94, i32 noundef 11, i32 noundef 1) #20
  br label %126

97:                                               ; preds = %89, %92
  %98 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 7) #21
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 5) #21
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = udiv i32 900, %16
  %105 = call i32 @llvm.umax.i32(i32 %104, i32 200)
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  %107 = call fastcc ptr @ei_start_1(ptr noundef nonnull %106) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !483
  store ptr %107, ptr %12, align 8, !tbaa.struct !484
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %6) #20, !range !336
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %103, %121
  %111 = load ptr, ptr %6, align 8, !tbaa !323
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !511
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !466
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %14, ptr noundef nonnull %113) #21
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %110
  call void @predict_edge(ptr noundef nonnull %111, i32 noundef 12, i32 noundef %105) #21
  br label %121

121:                                              ; preds = %117, %120
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %122 = load i32, ptr %7, align 8
  %123 = load ptr, ptr %12, align 8
  %124 = call fastcc zeroext i8 @ei_cond(i32 %122, ptr %123, ptr noundef nonnull %6) #20, !range !336
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %110, !llvm.loop !512

126:                                              ; preds = %121, %103, %97, %100, %96, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %127 = add nuw nsw i64 %84, 1
  %128 = load i32, ptr %77, align 4, !tbaa !509
  %129 = zext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %83, label %131, !llvm.loop !513

131:                                              ; preds = %126, %75
  call void @free(ptr noundef %76) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %132 = load ptr, ptr %2, align 8, !tbaa !323
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %13, !llvm.loop !514

134:                                              ; preds = %131, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_estimate_probability_bb(ptr noundef %0) unnamed_addr #1 !prof !515 !PGOFuncName !516 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !484
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #20, !range !336
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %128, label %12, !prof !517

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %123
  %15 = load ptr, ptr %2, align 8, !tbaa !323
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !511
  %18 = load ptr, ptr %13, align 8, !tbaa !475
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %88, label %20, !prof !518

20:                                               ; preds = %14
  %21 = load ptr, ptr @cfun, align 8, !tbaa !323
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !327
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !476
  %26 = icmp eq ptr %17, %25
  br i1 %26, label %88, label %27, !prof !519

27:                                               ; preds = %20
  %28 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %17) #20, !range !336
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %88, label %30, !prof !520

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @single_succ_edge(ptr noundef %17) #20
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !511
  %34 = load ptr, ptr @cfun, align 8, !tbaa !323
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !327
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !476
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %88, !prof !521

40:                                               ; preds = %30
  %41 = load ptr, ptr %16, align 8, !tbaa !511
  %42 = tail call ptr @last_stmt(ptr noundef %41) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %88, label %44, !prof !522

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %42) #20, !range !494
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %88, !prof !523

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %48 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #20, !range !336
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %74, label %50, !prof !524

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %5, i64 8
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #20
  store i32 0, ptr %5, align 8, !tbaa.struct !483
  store ptr %52, ptr %51, align 8, !tbaa.struct !484
  %53 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %4) #20, !range !336
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %87, label %55, !prof !525

55:                                               ; preds = %50, %69
  %56 = load ptr, ptr %4, align 8, !tbaa !323
  %57 = load ptr, ptr %56, align 8, !tbaa !374
  %58 = tail call zeroext i8 @predicted_by_p(ptr noundef %57, i32 noundef 26) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69, !prof !526

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !374
  %62 = tail call zeroext i8 @predicted_by_p(ptr noundef %61, i32 noundef 24) #21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69, !prof !527

64:                                               ; preds = %60
  %65 = load ptr, ptr %56, align 8, !tbaa !374
  %66 = tail call zeroext i8 @predicted_by_p(ptr noundef %65, i32 noundef 25) #21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69, !prof !528

68:                                               ; preds = %64
  tail call void @predict_edge_def(ptr noundef nonnull %56, i32 noundef 22, i32 noundef 0) #20
  br label %69

69:                                               ; preds = %55, %60, %64, %68
  call fastcc void @ei_next(ptr noundef nonnull %5) #20
  %70 = load i32, ptr %5, align 8
  %71 = load ptr, ptr %51, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %4) #20, !range !336
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %87, label %55, !prof !529, !llvm.loop !530

74:                                               ; preds = %47
  %75 = load ptr, ptr %15, align 8, !tbaa !374
  %76 = tail call zeroext i8 @predicted_by_p(ptr noundef %75, i32 noundef 26) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %87, !prof !531

78:                                               ; preds = %74
  %79 = load ptr, ptr %15, align 8, !tbaa !374
  %80 = tail call zeroext i8 @predicted_by_p(ptr noundef %79, i32 noundef 24) #21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87, !prof !532

82:                                               ; preds = %78
  %83 = load ptr, ptr %15, align 8, !tbaa !374
  %84 = tail call zeroext i8 @predicted_by_p(ptr noundef %83, i32 noundef 25) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87, !prof !533

86:                                               ; preds = %82
  tail call void @predict_edge_def(ptr noundef nonnull %15, i32 noundef 22, i32 noundef 0) #20
  br label %87

87:                                               ; preds = %69, %50, %74, %78, %82, %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %88

88:                                               ; preds = %87, %44, %40, %30, %27, %20, %14
  %89 = load ptr, ptr %16, align 8, !tbaa !511
  %90 = load ptr, ptr @cfun, align 8, !tbaa !323
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !327
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !476
  %95 = icmp eq ptr %89, %94
  %96 = icmp eq ptr %89, %0
  %97 = or i1 %96, %95
  br i1 %97, label %123, label %98, !prof !534

98:                                               ; preds = %88
  %99 = load ptr, ptr %15, align 8, !tbaa !374
  %100 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %89, ptr noundef %99) #21
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %123, label %102, !prof !535

102:                                              ; preds = %98
  %103 = load ptr, ptr %15, align 8, !tbaa !374
  %104 = load ptr, ptr %16, align 8, !tbaa !511
  %105 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %103, ptr noundef %104) #21
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %123, !prof !536

107:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %108 = load ptr, ptr %16, align 8, !tbaa !511
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %108) #20
  %109 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !336
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %122, !prof !537

111:                                              ; preds = %107, %119
  %112 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20
  %113 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %112) #20, !range !336
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115, !prof !538

115:                                              ; preds = %111
  %116 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %112) #21
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %119, label %118, !prof !539

118:                                              ; preds = %115
  tail call void @predict_edge_def(ptr noundef nonnull %15, i32 noundef 21, i32 noundef 0) #20
  br label %122

119:                                              ; preds = %115, %111
  call fastcc void @gsi_next(ptr noundef nonnull %6) #20
  %120 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !336
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %111, label %122, !prof !540, !llvm.loop !541

122:                                              ; preds = %119, %107, %118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  br label %123

123:                                              ; preds = %88, %98, %102, %122
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %124 = load i32, ptr %3, align 8
  %125 = load ptr, ptr %9, align 8
  %126 = call fastcc zeroext i8 @ei_cond(i32 %124, ptr %125, ptr noundef nonnull %2) #20, !range !336
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %14, !prof !542, !llvm.loop !543

128:                                              ; preds = %123, %1
  tail call fastcc void @tree_predict_by_opcode(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_predictions_for_bb(ptr noundef %0) unnamed_addr #1 !prof !515 !PGOFuncName !544 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !484
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !336
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9, !prof !517

9:                                                ; preds = %1, %25
  %10 = phi ptr [ %28, %25 ], [ null, %1 ]
  %11 = phi ptr [ %27, %25 ], [ null, %1 ]
  %12 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !431
  %16 = and i32 %15, 24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25, !prof !545

18:                                               ; preds = %9
  %19 = add nsw i32 %12, 1
  %20 = icmp eq ptr %11, null
  %21 = icmp ne ptr %10, null
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, ptr %10, ptr %13, !prof !546
  %24 = select i1 %20, ptr %13, ptr %11, !prof !547
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi i32 [ %12, %9 ], [ %19, %18 ]
  %27 = phi ptr [ %11, %9 ], [ %24, %18 ]
  %28 = phi ptr [ %10, %9 ], [ %23, %18 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %29 = load i32, ptr %3, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %2) #20, !range !336
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %9, !prof !542, !llvm.loop !548

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, 2
  br i1 %34, label %48, label %35, !prof !549

35:                                               ; preds = %1, %33
  %36 = phi i32 [ %26, %33 ], [ 0, %1 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !333
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41, !prof !550

40:                                               ; preds = %35
  tail call fastcc void @set_even_probabilities(ptr noundef nonnull %0) #20
  br label %41

41:                                               ; preds = %40, %35
  tail call fastcc void @clear_bb_predictions(ptr noundef nonnull %0) #20
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !323
  %43 = icmp eq ptr %42, null
  br i1 %43, label %182, label %44, !prof !550

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !466
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.44, i32 noundef %36, i32 noundef %46) #20
  br label %182

48:                                               ; preds = %33
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !323
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51, !prof !551

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !466
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.45, i32 noundef %53) #20
  br label %55

55:                                               ; preds = %51, %48
  %56 = load ptr, ptr @bb_predictions, align 8, !tbaa !323
  %57 = tail call ptr @pointer_map_contains(ptr noundef %56, ptr noundef %0) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %128, label %59, !prof !552

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !323
  %61 = icmp eq ptr %60, null
  br i1 %61, label %128, label %62, !prof !553

62:                                               ; preds = %59, %124
  %63 = phi ptr [ %126, %124 ], [ %60, %59 ]
  %64 = phi i32 [ %108, %124 ], [ 5000, %59 ]
  %65 = phi i32 [ %107, %124 ], [ 28, %59 ]
  %66 = phi i32 [ %125, %124 ], [ 5000, %59 ]
  %67 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !420
  %69 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !438
  %71 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !439
  %73 = icmp eq ptr %72, %27
  %74 = sub nsw i32 10000, %70
  %75 = select i1 %73, i32 %70, i32 %74, !prof !554
  %76 = icmp ugt i32 %65, %68
  br i1 %76, label %77, label %106, !prof !555

77:                                               ; preds = %62, %102
  %78 = phi ptr [ %104, %102 ], [ %60, %62 ]
  %79 = phi i32 [ %103, %102 ], [ %75, %62 ]
  %80 = icmp eq ptr %78, %63
  br i1 %80, label %102, label %81, !prof !556

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.edge_prediction, ptr %78, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !420
  %84 = icmp eq i32 %83, %68
  br i1 %84, label %85, label %102, !prof !557

85:                                               ; preds = %81
  %86 = icmp slt i32 %75, 5000
  %87 = getelementptr inbounds %struct.edge_prediction, ptr %78, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !439
  %89 = icmp eq ptr %88, %27
  %90 = select i1 %89, i32 %70, i32 %74, !prof !558
  %91 = icmp sgt i32 %90, 4999
  %92 = xor i1 %86, %91
  br i1 %92, label %93, label %106, !prof !559

93:                                               ; preds = %85
  %94 = icmp sgt i32 %75, 4999
  %95 = icmp slt i32 %75, 5001
  %96 = icmp sgt i32 %90, %75
  %97 = and i1 %94, %96
  %98 = icmp slt i32 %90, %75
  %99 = and i1 %95, %98
  %100 = or i1 %97, %99
  %101 = select i1 %100, i32 %90, i32 %79
  br label %102

102:                                              ; preds = %93, %77, %81
  %103 = phi i32 [ %79, %81 ], [ %79, %77 ], [ %101, %93 ]
  %104 = load ptr, ptr %78, align 8, !tbaa !323
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %77, !prof !560, !llvm.loop !561

106:                                              ; preds = %85, %102, %62
  %107 = phi i32 [ %65, %62 ], [ %65, %85 ], [ %68, %102 ]
  %108 = phi i32 [ %64, %62 ], [ %64, %85 ], [ %103, %102 ]
  %109 = mul nsw i32 %75, %66
  %110 = sub nsw i32 10000, %66
  %111 = sub nsw i32 10000, %75
  %112 = mul nsw i32 %111, %110
  %113 = add nsw i32 %112, %109
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115, !prof !562

115:                                              ; preds = %106
  %116 = sitofp i32 %66 to double
  %117 = sitofp i32 %75 to double
  %118 = fmul double %116, %117
  %119 = fmul double %118, 1.000000e+04
  %120 = sitofp i32 %113 to double
  %121 = fdiv double %119, %120
  %122 = fadd double %121, 5.000000e-01
  %123 = fptosi double %122 to i32
  br label %124

124:                                              ; preds = %106, %115
  %125 = phi i32 [ %123, %115 ], [ 5000, %106 ]
  %126 = load ptr, ptr %63, align 8, !tbaa !323
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %62, !prof !563, !llvm.loop !564

128:                                              ; preds = %124, %59, %55
  %129 = phi i1 [ true, %55 ], [ true, %59 ], [ false, %124 ]
  %130 = phi i32 [ 5000, %55 ], [ 5000, %59 ], [ %125, %124 ]
  %131 = phi i32 [ 28, %55 ], [ 28, %59 ], [ %107, %124 ]
  %132 = phi i32 [ 5000, %55 ], [ 5000, %59 ], [ %108, %124 ]
  %133 = zext nneg i32 %131 to i64
  %134 = lshr i64 536862991, %133
  %135 = and i64 %134, 1
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138, !prof !565

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %128
  %139 = phi i32 [ 1, %137 ], [ 0, %128 ]
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !323
  br i1 %129, label %141, label %142, !prof !552

141:                                              ; preds = %138
  tail call fastcc void @dump_prediction(ptr noundef %140, i32 noundef 3, i32 noundef %130, ptr noundef %0, i32 noundef 1) #20
  br label %145

142:                                              ; preds = %138
  %143 = trunc i64 %135 to i32
  tail call fastcc void @dump_prediction(ptr noundef %140, i32 noundef 1, i32 noundef %130, ptr noundef %0, i32 noundef %143) #20
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !323
  tail call fastcc void @dump_prediction(ptr noundef %144, i32 noundef 2, i32 noundef %132, ptr noundef %0, i32 noundef %139) #20
  br label %145

145:                                              ; preds = %142, %141
  br i1 %136, label %146, label %147, !prof !565

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146, %145
  %148 = phi i32 [ %132, %146 ], [ %130, %145 ]
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !323
  tail call fastcc void @dump_prediction(ptr noundef %149, i32 noundef 0, i32 noundef %148, ptr noundef %0, i32 noundef 1) #20
  br i1 %58, label %174, label %150, !prof !552

150:                                              ; preds = %147
  %151 = load ptr, ptr %57, align 8, !tbaa !323
  %152 = icmp eq ptr %151, null
  br i1 %152, label %174, label %153, !prof !553

153:                                              ; preds = %150, %169
  %154 = phi ptr [ %172, %169 ], [ %151, %150 ]
  %155 = getelementptr inbounds %struct.edge_prediction, ptr %154, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !420
  %157 = getelementptr inbounds %struct.edge_prediction, ptr %154, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !438
  %159 = getelementptr inbounds %struct.edge_prediction, ptr %154, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !439
  %161 = load ptr, ptr %4, align 8, !tbaa !435
  %162 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %161, i32 noundef 0) #20
  %163 = icmp eq ptr %160, %162
  %164 = sub nsw i32 10000, %158
  %165 = select i1 %163, i32 %158, i32 %164, !prof !554
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !323
  br i1 %136, label %167, label %169, !prof !566

167:                                              ; preds = %153
  %168 = icmp eq i32 %131, %156
  br label %169

169:                                              ; preds = %167, %153
  %170 = phi i1 [ true, %153 ], [ %168, %167 ]
  %171 = zext i1 %170 to i32
  tail call fastcc void @dump_prediction(ptr noundef %166, i32 noundef %156, i32 noundef %165, ptr noundef nonnull %0, i32 noundef %171) #20
  %172 = load ptr, ptr %154, align 8, !tbaa !323
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %153, !prof !563, !llvm.loop !567

174:                                              ; preds = %169, %150, %147
  tail call fastcc void @clear_bb_predictions(ptr noundef %0) #20
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %176 = load i64, ptr %175, align 8, !tbaa !333
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182, !prof !551

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 8
  store i32 %148, ptr %179, align 4, !tbaa !375
  %180 = sub nsw i32 10000, %148
  %181 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 8
  store i32 %180, ptr %181, align 4, !tbaa !375
  br label %182

182:                                              ; preds = %174, %178, %41, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_bb_frequencies() local_unnamed_addr #1 !prof !568 {
  %1 = alloca %struct.sreal, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !323
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !327
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !330
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14, !prof !569

11:                                               ; preds = %0
  %12 = tail call i32 @counts_to_freqs() #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %110

14:                                               ; preds = %11, %0
  %15 = load i1, ptr @estimate_bb_frequencies.real_values_initialized, align 4
  br i1 %15, label %24, label %16, !prof !570

16:                                               ; preds = %14
  store i1 true, ptr @estimate_bb_frequencies.real_values_initialized, align 4
  %17 = tail call ptr @sreal_init(ptr noundef nonnull @real_zero, i64 noundef 0, i32 noundef 0) #21
  %18 = tail call ptr @sreal_init(ptr noundef nonnull @real_one, i64 noundef 1, i32 noundef 0) #21
  %19 = tail call ptr @sreal_init(ptr noundef nonnull @real_br_prob_base, i64 noundef 10000, i32 noundef 0) #21
  %20 = tail call ptr @sreal_init(ptr noundef nonnull @real_bb_freq_max, i64 noundef 10000, i32 noundef 0) #21
  %21 = tail call ptr @sreal_init(ptr noundef nonnull @real_one_half, i64 noundef 1, i32 noundef -1) #21
  %22 = tail call ptr @sreal_div(ptr noundef nonnull @real_inv_br_prob_base, ptr noundef nonnull @real_one, ptr noundef nonnull @real_br_prob_base) #21
  %23 = tail call ptr @sreal_sub(ptr noundef nonnull @real_almost_one, ptr noundef nonnull @real_one, ptr noundef nonnull @real_inv_br_prob_base) #21
  br label %24

24:                                               ; preds = %16, %14
  %25 = tail call zeroext i8 @mark_dfs_back_edges() #21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !323
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !327
  %29 = load ptr, ptr %28, align 8, !tbaa !434
  %30 = tail call fastcc ptr @single_succ_edge(ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 10000, ptr %31, align 4, !tbaa !375
  tail call void @alloc_aux_for_blocks(i32 noundef 32) #21
  tail call void @alloc_aux_for_edges(i32 noundef 24) #21
  %32 = load ptr, ptr @cfun, align 8, !tbaa !323
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !327
  %35 = load ptr, ptr %34, align 8, !tbaa !323
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37, !prof !571

37:                                               ; preds = %24
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  br label %39

39:                                               ; preds = %37, %59
  %40 = phi ptr [ %35, %37 ], [ %61, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  store ptr %42, ptr %38, align 8, !tbaa.struct !484
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %2) #20, !range !336
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45, !prof !572

45:                                               ; preds = %39, %45
  %46 = load ptr, ptr %2, align 8, !tbaa !323
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !573
  %49 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !375
  %51 = sext i32 %50 to i64
  %52 = tail call ptr @sreal_init(ptr noundef %48, i64 noundef %51, i32 noundef 0) #21
  %53 = load ptr, ptr %47, align 8, !tbaa !573
  %54 = tail call ptr @sreal_mul(ptr noundef %53, ptr noundef %53, ptr noundef nonnull @real_inv_br_prob_base) #21
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %55 = load i32, ptr %3, align 8
  %56 = load ptr, ptr %38, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %2) #20, !range !336
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %45, !prof !574, !llvm.loop !575

59:                                               ; preds = %45, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !323
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %39, !prof !576, !llvm.loop !577

63:                                               ; preds = %59, %24
  tail call fastcc void @estimate_loops() #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %64 = load ptr, ptr @cfun, align 8, !tbaa !323
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !327
  %67 = load ptr, ptr %66, align 8, !tbaa !434
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !475
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !476
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %90, label %73, !prof !571

73:                                               ; preds = %63, %81
  %74 = phi ptr [ %83, %81 ], [ %69, %63 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !578
  %77 = call i32 @sreal_compare(ptr noundef nonnull %1, ptr noundef %76) #21
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81, !prof !579

79:                                               ; preds = %73
  %80 = load ptr, ptr %75, align 8, !tbaa !578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false)
  br label %81

81:                                               ; preds = %73, %79
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !475
  %84 = load ptr, ptr @cfun, align 8, !tbaa !323
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !327
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !476
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %90, label %73, !prof !580, !llvm.loop !581

90:                                               ; preds = %81, %63
  %91 = call ptr @sreal_div(ptr noundef nonnull %1, ptr noundef nonnull @real_bb_freq_max, ptr noundef nonnull %1) #21
  %92 = load ptr, ptr @cfun, align 8, !tbaa !323
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !327
  %95 = load ptr, ptr %94, align 8, !tbaa !323
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97, !prof !571

97:                                               ; preds = %90, %97
  %98 = phi ptr [ %107, %97 ], [ %95, %90 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !578
  %101 = call ptr @sreal_mul(ptr noundef nonnull %4, ptr noundef %100, ptr noundef nonnull %1) #21
  %102 = call ptr @sreal_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @real_one_half) #21
  %103 = call i64 @sreal_to_int(ptr noundef nonnull %4) #21
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 11
  store i32 %104, ptr %105, align 8, !tbaa !337
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !323
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %97, !prof !576, !llvm.loop !582

109:                                              ; preds = %97, %90
  call void @free_aux_for_blocks() #21
  call void @free_aux_for_edges() #21
  br label %110

110:                                              ; preds = %109, %11
  call void @compute_function_frequency() #20
  %111 = load i32, ptr @flag_reorder_functions, align 4, !tbaa !348
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113, !prof !569

113:                                              ; preds = %110
  call fastcc void @choose_function_section() #20
  br label %114

114:                                              ; preds = %113, %110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @counts_to_freqs() local_unnamed_addr #9 !prof !338 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !323
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !333
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %8)
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !323
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !583

15:                                               ; preds = %6
  %16 = tail call i64 @llvm.smax.i64(i64 %11, i64 1)
  br i1 %5, label %31, label %17

17:                                               ; preds = %15
  %18 = lshr i64 %16, 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %4, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !333
  %23 = mul nsw i64 %22, 10000
  %24 = add nsw i64 %23, %18
  %25 = sdiv i64 %24, %16
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 11
  store i32 %26, ptr %27, align 8, !tbaa !337
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !323
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !584

31:                                               ; preds = %19, %0, %15
  %32 = phi i64 [ %11, %15 ], [ 0, %0 ], [ %11, %19 ]
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expensive_function_p(i32 noundef %0) local_unnamed_addr #1 !prof !585 {
  %2 = icmp slt i32 %0, 10001
  br i1 %2, label %4, label %3, !prof !586

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2047, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !323
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !327
  %8 = load ptr, ptr %7, align 8, !tbaa !434
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !337
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %12, !prof !587

12:                                               ; preds = %4
  %13 = mul nsw i32 %10, %0
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !475
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !476
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %64, label %31, !prof !588

19:                                               ; preds = %54
  %20 = load ptr, ptr @cfun, align 8, !tbaa !323
  br label %21

21:                                               ; preds = %19, %31
  %22 = phi ptr [ %32, %31 ], [ %20, %19 ]
  %23 = phi i32 [ %34, %31 ], [ %55, %19 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !475
  %26 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !327
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !476
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %64, label %31, !prof !589

31:                                               ; preds = %12, %21
  %32 = phi ptr [ %22, %21 ], [ %5, %12 ]
  %33 = phi ptr [ %25, %21 ], [ %15, %12 ]
  %34 = phi i32 [ %23, %21 ], [ 0, %12 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !365
  %37 = load ptr, ptr %36, align 8, !tbaa !365
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !414
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !365
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %21, label %43, !prof !590

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 11
  br label %45

45:                                               ; preds = %43, %54
  %46 = phi ptr [ %37, %43 ], [ %57, %54 ]
  %47 = phi i32 [ %34, %43 ], [ %55, %54 ]
  %48 = tail call i32 @active_insn_p(ptr noundef %46) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !591

50:                                               ; preds = %45
  %51 = load i32, ptr %44, align 8, !tbaa !337
  %52 = add i32 %51, %47
  %53 = icmp ugt i32 %52, %13
  br i1 %53, label %64, label %54, !prof !592

54:                                               ; preds = %45, %50
  %55 = phi i32 [ %52, %50 ], [ %47, %45 ]
  %56 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !365
  %58 = load ptr, ptr %35, align 8, !tbaa !365
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !414
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !365
  %63 = icmp eq ptr %57, %62
  br i1 %63, label %19, label %45, !prof !593, !llvm.loop !594

64:                                               ; preds = %21, %50, %12, %4
  %65 = phi i8 [ 1, %4 ], [ 0, %12 ], [ 1, %50 ], [ 0, %21 ]
  ret i8 %65
}

; Function Attrs: optsize
declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sreal_init(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sreal_div(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sreal_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !595 !PGOFuncName !596 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !336
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !597

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 645, ptr noundef nonnull @.str.3) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !435
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: optsize
declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_aux_for_edges(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !598 !PGOFuncName !599 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !600 !PGOFuncName !601 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !336
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !602

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !323
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @sreal_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !603 !PGOFuncName !604 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !605

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !606

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !607
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !607
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_loops() unnamed_addr #1 !prof !568 !PGOFuncName !609 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %2 = tail call fastcc i32 @number_of_loops() #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %12, !prof !569

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !323
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !503
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !610
  %10 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !394
  tail call fastcc void @estimate_loops_at_level(ptr noundef %11) #20
  br label %12

12:                                               ; preds = %4, %0
  %13 = load ptr, ptr @cfun, align 8, !tbaa !323
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !327
  %16 = load ptr, ptr %15, align 8, !tbaa !323
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !571

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !466
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %21) #21
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !323
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !576, !llvm.loop !611

26:                                               ; preds = %18
  %27 = load ptr, ptr @cfun, align 8, !tbaa !323
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !327
  %30 = load ptr, ptr %29, align 8, !tbaa !434
  br label %31

31:                                               ; preds = %26, %12
  %32 = phi ptr [ %30, %26 ], [ null, %12 ]
  tail call fastcc void @propagate_freq(ptr noundef %32, ptr noundef %1) #20
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare i32 @sreal_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sreal_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @sreal_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_aux_for_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_aux_for_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_function_frequency() local_unnamed_addr #1 !prof !568 {
  %1 = load ptr, ptr @profile_info, align 8, !tbaa !323
  %2 = icmp ne ptr %1, null
  %3 = load i32, ptr @flag_branch_probabilities, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %29, label %6, !prof !504

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !323
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !365
  %10 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !612

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !323
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -196609
  store i32 %16, ptr %14, align 8
  br label %64

17:                                               ; preds = %6
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !323
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !365
  %21 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %20) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23, !prof !612

23:                                               ; preds = %17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !323
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -196609
  %28 = or disjoint i32 %27, 131072
  store i32 %28, ptr %25, align 8
  br label %64

29:                                               ; preds = %0
  %30 = load ptr, ptr @cfun, align 8, !tbaa !323
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -196609
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !327
  %36 = load ptr, ptr %35, align 8, !tbaa !434
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !475
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !476
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %29, %58
  %43 = phi ptr [ %59, %58 ], [ %40, %29 ]
  %44 = phi i32 [ %60, %58 ], [ %33, %29 ]
  %45 = phi ptr [ %62, %58 ], [ %38, %29 ]
  %46 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %45) #20, !range !336
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = and i32 %44, -196609
  %50 = or disjoint i32 %49, 131072
  store i32 %50, ptr %31, align 8
  br label %64

51:                                               ; preds = %42
  %52 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %45) #20, !range !336
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = and i32 %44, -196609
  %56 = or disjoint i32 %55, 65536
  store i32 %56, ptr %31, align 8
  %57 = load ptr, ptr %39, align 8, !tbaa !476
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %43, %51 ], [ %57, %54 ]
  %60 = phi i32 [ %44, %51 ], [ %56, %54 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !475
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %64, label %42, !llvm.loop !613

64:                                               ; preds = %58, %29, %12, %23, %17, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_function_section() unnamed_addr #1 !prof !568 !PGOFuncName !614 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !323
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = icmp eq ptr %3, null
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %36, !prof !615

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !365
  %11 = icmp ne ptr %10, null
  %12 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %36, label %15, !prof !616

15:                                               ; preds = %8
  %16 = load ptr, ptr @cfun, align 8, !tbaa !323
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 196608
  %20 = icmp eq i32 %19, 131072
  br i1 %20, label %21, label %28, !prof !569

21:                                               ; preds = %15
  %22 = tail call ptr @build_string(i32 noundef 9, ptr noundef nonnull @.str.48) #21
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !323
  %24 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %23, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !365
  %25 = load ptr, ptr @cfun, align 8, !tbaa !323
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 20
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %27, %21 ], [ %18, %15 ]
  %30 = and i32 %29, 196608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !569

32:                                               ; preds = %28
  %33 = tail call ptr @build_string(i32 noundef 14, ptr noundef nonnull @.str.49) #21
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !323
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %34, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !365
  br label %36

36:                                               ; preds = %0, %8, %32, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_predict_expr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !338 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !323
  %4 = zext i32 %0 to i64
  %5 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %4) #21
  %6 = tail call ptr @build1_stat(i32 noundef 185, ptr noundef %3, ptr noundef %5) #21
  %7 = load i64, ptr %6, align 8
  %8 = shl i32 %1, 18
  %9 = and i32 %8, 262144
  %10 = zext nneg i32 %9 to i64
  %11 = and i64 %7, -262145
  %12 = or disjoint i64 %11, %10
  store i64 %12, ptr %6, align 8
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local ptr @predictor_name(i32 noundef %0) local_unnamed_addr #10 !prof !338 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 16, !tbaa !617
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_estimate_probability() #12 !prof !473 !PGOFuncName !618 {
  %1 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !348
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_estimate_probability_driver() #1 !prof !473 !PGOFuncName !619 {
  tail call void @loop_optimizer_init(i32 noundef 0) #21
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !323
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !620

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !348
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @flow_loops_dump(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #21
  br label %8

8:                                                ; preds = %7, %3, %0
  %9 = tail call zeroext i8 @mark_irreducible_loops() #21
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !474

12:                                               ; preds = %8
  tail call void @scev_initialize() #21
  tail call void @tree_estimate_probability() #20
  tail call void @scev_finalize() #21
  br label %14

13:                                               ; preds = %8
  tail call void @tree_estimate_probability() #20
  br label %14

14:                                               ; preds = %13, %12
  tail call void @loop_optimizer_finalize() #21
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !323
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !620

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !348
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gimple_dump_cfg(ptr noundef nonnull %15, i32 noundef %18) #21
  br label %22

22:                                               ; preds = %21, %17, %14
  %23 = load ptr, ptr @cfun, align 8, !tbaa !323
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !327
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !330
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !620

29:                                               ; preds = %22
  store i32 1, ptr %26, align 8, !tbaa !330
  br label %30

30:                                               ; preds = %29, %22
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @strip_predict_hints() #1 !prof !585 !PGOFuncName !621 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !323
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !327
  %6 = load ptr, ptr %5, align 8, !tbaa !434
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !475
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !476
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %52, label %12, !prof !622

12:                                               ; preds = %0, %43
  %13 = phi ptr [ %45, %43 ], [ %8, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !336
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %43, !prof !624

16:                                               ; preds = %12, %40
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %18 = call fastcc i32 @gimple_code(ptr noundef %17) #20, !range !494
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %39 [
    i8 33, label %20
    i8 8, label %21
  ], !prof !625

20:                                               ; preds = %16
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %40, !llvm.loop !626

21:                                               ; preds = %16
  %22 = call fastcc ptr @gimple_call_fndecl(ptr noundef %17) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24, !prof !627

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_function_decl, ptr %22, i64 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 6144
  %28 = icmp eq i32 %27, 6144
  br i1 %28, label %29, label %39, !prof !627

29:                                               ; preds = %24
  %30 = and i32 %26, 2047
  %31 = icmp eq i32 %30, 446
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = call fastcc i32 @gimple_call_num_args(ptr noundef %17) #20
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call fastcc ptr @gimple_call_lhs(ptr noundef %17) #20
  %37 = call fastcc ptr @gimple_call_arg(ptr noundef %17, i32 noundef 0) #20
  %38 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %37) #21
  call void @gsi_replace(ptr noundef nonnull %1, ptr noundef %38, i8 noundef zeroext 1) #21
  br label %39

39:                                               ; preds = %16, %21, %24, %29, %32, %35
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %40

40:                                               ; preds = %39, %20
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !336
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %16, label %43, !prof !628

43:                                               ; preds = %40, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !475
  %46 = load ptr, ptr @cfun, align 8, !tbaa !323
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !327
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !476
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %12, !prof !629, !llvm.loop !630

52:                                               ; preds = %43, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !501 !PGOFuncName !631 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !504

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !632
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !338 !PGOFuncName !634 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !323
  ret ptr %5
}

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_predict_insn_p(ptr noundef %0) unnamed_addr #1 !prof !635 !PGOFuncName !636 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %16, !prof !637

5:                                                ; preds = %1
  %6 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !638

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !365
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !435
  %13 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %12) #20
  %14 = icmp ugt i32 %13, 1
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %8, %5, %1
  %17 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %15, %8 ]
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_even_probabilities(ptr noundef %0) unnamed_addr #1 !prof !639 !PGOFuncName !640 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !484
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !336
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9, !prof !641

9:                                                ; preds = %1, %9
  %10 = phi i32 [ %17, %9 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !323
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !431
  %14 = and i32 %13, 24
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %10, %16
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %18 = load i32, ptr %3, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %2) #20, !range !336
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %9, !prof !642, !llvm.loop !643

22:                                               ; preds = %9, %1
  %23 = phi i32 [ 0, %1 ], [ %17, %9 ]
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  store ptr %5, ptr %6, align 8, !tbaa.struct !484
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !336
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26, !prof !641

26:                                               ; preds = %22
  %27 = lshr i32 %23, 1
  %28 = add nuw nsw i32 %27, 10000
  br label %29

29:                                               ; preds = %26, %37
  %30 = load ptr, ptr %2, align 8, !tbaa !323
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !431
  %33 = and i32 %32, 24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !644

35:                                               ; preds = %29
  %36 = udiv i32 %28, %23
  br label %37

37:                                               ; preds = %29, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %29 ]
  %39 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 %38, ptr %39, align 4
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %40 = load i32, ptr %3, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #20, !range !336
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %29, !prof !642, !llvm.loop !645

44:                                               ; preds = %37, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_prediction(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 !prof !646 !PGOFuncName !647 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %8 = icmp eq ptr %0, null
  br i1 %8, label %59, label %9, !prof !648

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !483
  %12 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !484
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %6) #20, !range !336
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %6, align 8, !tbaa !323
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !431
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %22 = load i32, ptr %7, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %6) #20, !range !336
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !649

26:                                               ; preds = %21, %15, %9
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 16, !tbaa !617
  %30 = icmp eq i32 %4, 0
  %31 = select i1 %30, ptr @.str.37, ptr @.str.36
  %32 = sitofp i32 %2 to double
  %33 = fmul double %32, 1.000000e+02
  %34 = fdiv double %33, 1.000000e+04
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef %29, ptr noundef nonnull %31, double noundef %34) #20
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !333
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %26
  %40 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr nonnull %0)
  %41 = load i64, ptr %36, align 8, !tbaa !333
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i64 noundef %41) #20
  %43 = load ptr, ptr %6, align 8, !tbaa !323
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr nonnull %0)
  %47 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 9
  %48 = load i64, ptr %47, align 8, !tbaa !372
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i64 noundef %48) #20
  %50 = load i64, ptr %47, align 8, !tbaa !372
  %51 = sitofp i64 %50 to double
  %52 = fmul double %51, 1.000000e+02
  %53 = load i64, ptr %36, align 8, !tbaa !333
  %54 = sitofp i64 %53 to double
  %55 = fdiv double %52, %54
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, double noundef %55) #20
  br label %57

57:                                               ; preds = %39, %45, %26
  %58 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  br label %59

59:                                               ; preds = %5, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !650 !PGOFuncName !651 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !435
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !652 !PGOFuncName !653 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !323
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @apply_return_prediction() unnamed_addr #1 !prof !473 !PGOFuncName !654 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !327
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !476
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !484
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %1) #20, !range !336
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13, !prof !485

13:                                               ; preds = %0, %21
  %14 = load ptr, ptr %1, align 8, !tbaa !323
  %15 = load ptr, ptr %14, align 8, !tbaa !374
  %16 = tail call ptr @last_stmt(ptr noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !474

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %16) #20, !range !494
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %26, label %21, !prof !620

21:                                               ; preds = %13, %18
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #20, !range !336
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !prof !486, !llvm.loop !655

26:                                               ; preds = %21, %18, %0
  %27 = phi ptr [ null, %0 ], [ %16, %18 ], [ %16, %21 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !323
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30, !prof !474

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_return_retval(ptr noundef %27) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33, !prof !474

33:                                               ; preds = %30
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %80, !prof !656

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !365
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41, !prof !657

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %39) #20, !range !494
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %80, !prof !658

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef nonnull %39) #20
  %46 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef 0) #20
  %47 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %48 = call fastcc i32 @return_prediction(ptr noundef %47, ptr noundef nonnull %2) #20, !range !659
  %49 = icmp sgt i32 %45, 1
  br i1 %49, label %50, label %59, !prof !660

50:                                               ; preds = %44, %56
  %51 = phi i32 [ %57, %56 ], [ 1, %44 ]
  %52 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef %51) #20
  %53 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %52) #20
  %54 = call fastcc i32 @return_prediction(ptr noundef %53, ptr noundef nonnull %2) #20, !range !659
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %59, !prof !661

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %45
  br i1 %58, label %80, label %50, !prof !662, !llvm.loop !663

59:                                               ; preds = %50, %44
  %60 = phi i32 [ 1, %44 ], [ %51, %50 ]
  %61 = icmp ne i32 %60, %45
  %62 = icmp sgt i32 %45, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %80, !prof !664

64:                                               ; preds = %59
  %65 = zext nneg i32 %45 to i64
  br label %66

66:                                               ; preds = %64, %77
  %67 = phi i64 [ 0, %64 ], [ %78, %77 ]
  %68 = trunc i64 %67 to i32
  %69 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef %68) #20
  %70 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %69) #20
  %71 = call fastcc i32 @return_prediction(ptr noundef %70, ptr noundef nonnull %2) #20, !range !659
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %77, label %73, !prof !665

73:                                               ; preds = %66
  %74 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef nonnull %39, i64 noundef %67) #20
  %75 = load ptr, ptr %74, align 8, !tbaa !374
  %76 = load i32, ptr %2, align 4, !tbaa !348
  tail call fastcc void @predict_paths_leading_to(ptr noundef %75, i32 noundef %71, i32 noundef %76) #20
  br label %77

77:                                               ; preds = %66, %73
  %78 = add nuw nsw i64 %67, 1
  %79 = icmp eq i64 %78, %65
  br i1 %79, label %80, label %66, !prof !666, !llvm.loop !667

80:                                               ; preds = %56, %77, %59, %33, %37, %41, %30, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 !prof !668 !PGOFuncName !669 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !670
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !672
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !673
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !674 !PGOFuncName !675 {
  %2 = load ptr, ptr %0, align 8, !tbaa !670
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !676 !PGOFuncName !677 {
  %2 = load ptr, ptr %0, align 8, !tbaa !670
  %3 = load ptr, ptr %2, align 8, !tbaa !678
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !680 !PGOFuncName !681 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !494
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_paths_leading_to(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !682 !PGOFuncName !683 {
  tail call fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %0, i32 noundef %1, i32 noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !684 !PGOFuncName !685 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !686

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !365
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !687 !PGOFuncName !688 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_predictor(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !338 !PGOFuncName !689 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 32767
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_outcome(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !338 !PGOFuncName !690 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 31
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #14 !prof !691 !PGOFuncName !692 {
  %2 = load ptr, ptr %0, align 8, !tbaa !670
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !693
  store ptr %4, ptr %0, align 8, !tbaa !670
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 !prof !473 !PGOFuncName !694 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !695 !PGOFuncName !696 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !365
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @return_prediction(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !697 !PGOFuncName !698 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4, !prof !699

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !365
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %34 [
    i16 10, label %9
    i16 12, label %9
    i16 6, label %12
    i16 7, label %12
    i16 8, label %12
  ], !prof !700

9:                                                ; preds = %4, %4
  %10 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %31, !prof !701

12:                                               ; preds = %4, %4, %4
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %21, !prof !702

16:                                               ; preds = %12
  %17 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %0) #21
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19, !prof !703

19:                                               ; preds = %16
  %20 = load i64, ptr %0, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i64 [ %20, %19 ], [ %13, %12 ]
  %23 = and i64 %22, 131072
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !704

25:                                               ; preds = %21
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34, !prof !705

28:                                               ; preds = %25
  %29 = tail call i32 @integer_onep(ptr noundef nonnull %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34, !prof !706

31:                                               ; preds = %28, %16, %9
  %32 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 1, %28 ]
  %33 = phi i32 [ 26, %9 ], [ 25, %16 ], [ 24, %28 ]
  store i32 %32, ptr %1, align 4, !tbaa !348
  br label %34

34:                                               ; preds = %31, %9, %21, %25, %28, %4, %2
  %35 = phi i32 [ 3, %2 ], [ 3, %4 ], [ 3, %28 ], [ 3, %25 ], [ 3, %21 ], [ 3, %9 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !707 !PGOFuncName !708 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !709
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !707 !PGOFuncName !711 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !712 !PGOFuncName !713 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !714
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !715 !PGOFuncName !716 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !336
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !717

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !323
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !715 !PGOFuncName !718 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !494
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !715 !PGOFuncName !719 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !720
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !717

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !715 !PGOFuncName !721 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !494
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !715 !PGOFuncName !722 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !348
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !707 !PGOFuncName !723 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !365
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !724

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 3103, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !725 !PGOFuncName !726 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !668 !PGOFuncName !727 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !728
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !729

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !365
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !730

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !731
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !668 !PGOFuncName !733 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !730

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !734
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 !prof !736 !PGOFuncName !737 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !483
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !484
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %5) #20, !range !336
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11, !prof !738

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, %0
  br label %13

13:                                               ; preds = %11, %28
  %14 = load ptr, ptr %5, align 8, !tbaa !323
  %15 = load ptr, ptr %14, align 8, !tbaa !374
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !466
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %28, !prof !739

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %15, ptr noundef %1) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28, !prof !740

22:                                               ; preds = %19
  br i1 %12, label %27, label %23, !prof !741

23:                                               ; preds = %22
  %24 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %0, ptr noundef %1) #21
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27, !prof !742

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1776, ptr noundef nonnull @.str.3) #21
  br label %27

27:                                               ; preds = %22, %23, %26
  tail call void @predict_edge_def(ptr noundef nonnull %14, i32 noundef %2, i32 noundef %3) #20
  br label %28

28:                                               ; preds = %13, %19, %27
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  %29 = load i32, ptr %6, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %5) #20, !range !336
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %13, !prof !743, !llvm.loop !744

33:                                               ; preds = %28, %4
  %34 = tail call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !745

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %33 ]
  tail call fastcc void @predict_paths_for_bb(ptr noundef nonnull %37, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %38 = tail call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !prof !746, !llvm.loop !747

40:                                               ; preds = %36, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !684 !PGOFuncName !748 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !338 !PGOFuncName !749 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !750
  %4 = load ptr, ptr @cfun, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !503
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !752
  store ptr null, ptr %1, align 8, !tbaa !323
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !752
  %12 = load ptr, ptr @cfun, align 8, !tbaa !323
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !503
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !610
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !753
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !752
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #20
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !394
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !395
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !754

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !prof !338 !PGOFuncName !755 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !443
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !323
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !323
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_niter_by_eval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @estimated_loop_iterations_int(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #16 !prof !338 !PGOFuncName !756 {
  %2 = load ptr, ptr %0, align 8, !tbaa !323
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !323
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @predicted_by_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !338 !PGOFuncName !757 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !750
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !752
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #20, !range !497
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !750
  %13 = load i32, ptr %3, align 4, !tbaa !348
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #20
  store ptr %14, ptr %1, align 8, !tbaa !323
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !758

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #20
  store ptr null, ptr %1, align 8, !tbaa !323
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !338 !PGOFuncName !759 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #15 !prof !338 !PGOFuncName !760 {
  %3 = load i32, ptr %0, align 4, !tbaa !761
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !761
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !348
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !prof !338 !PGOFuncName !763 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !761
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !348
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !348
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 !prof !338 !PGOFuncName !764 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !323
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !503
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !505
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #16 !prof !338 !PGOFuncName !765 {
  %2 = load ptr, ptr %0, align 8, !tbaa !323
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !323
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_predict_by_opcode(ptr noundef %0) unnamed_addr #1 !prof !515 !PGOFuncName !766 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call ptr @last_stmt(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %127, label %6, !prof !767

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #20, !range !494
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %127, !prof !768

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !483
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !484
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %2) #20, !range !336
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15, !prof !485

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %2, align 8, !tbaa !323
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !431
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26, !prof !769

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %2) #20, !range !336
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !prof !770, !llvm.loop !771

26:                                               ; preds = %21, %15, %9
  %27 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %4) #20
  %28 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %4) #20
  %29 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %4) #20, !range !772
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !365
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !323
  %34 = tail call fastcc ptr @expr_expected_value_1(ptr noundef %33, ptr noundef %27, i32 noundef %29, ptr noundef %28, ptr noundef %32) #20
  tail call void @bitmap_obstack_free(ptr noundef %32) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36, !prof !773

36:                                               ; preds = %26
  %37 = tail call i32 @integer_zerop(ptr noundef nonnull %34) #21
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %2, align 8, !tbaa !323
  br i1 %38, label %41, label %40

40:                                               ; preds = %36
  tail call void @predict_edge_def(ptr noundef %39, i32 noundef 6, i32 noundef 0) #20
  br label %127

41:                                               ; preds = %36
  tail call void @predict_edge_def(ptr noundef %39, i32 noundef 6, i32 noundef 1) #20
  br label %127

42:                                               ; preds = %26
  %43 = load i64, ptr %31, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %51 [
    i16 10, label %45
    i16 12, label %45
  ], !prof !774

45:                                               ; preds = %42, %42
  %46 = trunc i32 %29 to i16
  switch i16 %46, label %127 [
    i16 101, label %47
    i16 102, label %49
  ], !prof !775

47:                                               ; preds = %45
  %48 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %48, i32 noundef 14, i32 noundef 0) #20
  br label %127

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %50, i32 noundef 14, i32 noundef 1) #20
  br label %127

51:                                               ; preds = %42
  %52 = trunc i32 %29 to i16
  switch i16 %52, label %127 [
    i16 101, label %53
    i16 109, label %53
    i16 102, label %68
    i16 110, label %68
    i16 104, label %83
    i16 103, label %85
    i16 98, label %87
    i16 97, label %87
    i16 100, label %107
    i16 99, label %107
  ], !prof !776

53:                                               ; preds = %51, %51
  switch i16 %44, label %60 [
    i16 9, label %127
    i16 13, label %54
    i16 14, label %54
  ], !prof !777

54:                                               ; preds = %53, %53
  %55 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !365
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 9
  br i1 %59, label %127, label %60

60:                                               ; preds = %53, %54
  %61 = tail call i32 @integer_zerop(ptr noundef nonnull %27) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %127, !prof !778

63:                                               ; preds = %60
  %64 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %127, !prof !779

66:                                               ; preds = %63
  %67 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %67, i32 noundef 19, i32 noundef 0) #20
  br label %127

68:                                               ; preds = %51, %51
  switch i16 %44, label %75 [
    i16 9, label %127
    i16 13, label %69
    i16 14, label %69
  ], !prof !780

69:                                               ; preds = %68, %68
  %70 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !365
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 9
  br i1 %74, label %127, label %75

75:                                               ; preds = %68, %69
  %76 = tail call i32 @integer_zerop(ptr noundef nonnull %27) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %127, !prof !781

78:                                               ; preds = %75
  %79 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %127, !prof !782

81:                                               ; preds = %78
  %82 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %82, i32 noundef 19, i32 noundef 1) #20
  br label %127

83:                                               ; preds = %51
  %84 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %84, i32 noundef 20, i32 noundef 1) #20
  br label %127

85:                                               ; preds = %51
  %86 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %86, i32 noundef 20, i32 noundef 0) #20
  br label %127

87:                                               ; preds = %51, %51
  %88 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105, !prof !783

90:                                               ; preds = %87
  %91 = tail call i32 @integer_onep(ptr noundef %28) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105, !prof !784

93:                                               ; preds = %90
  %94 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105, !prof !785

96:                                               ; preds = %93
  %97 = tail call i32 @real_zerop(ptr noundef %28) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105, !prof !785

99:                                               ; preds = %96
  %100 = tail call i32 @real_onep(ptr noundef %28) #21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105, !prof !785

102:                                              ; preds = %99
  %103 = tail call i32 @real_minus_onep(ptr noundef %28) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %127, label %105, !prof !785

105:                                              ; preds = %102, %99, %96, %93, %90, %87
  %106 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %106, i32 noundef 18, i32 noundef 0) #20
  br label %127

107:                                              ; preds = %51, %51
  %108 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125, !prof !785

110:                                              ; preds = %107
  %111 = tail call i32 @integer_onep(ptr noundef %28) #21
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %125, !prof !785

113:                                              ; preds = %110
  %114 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125, !prof !785

116:                                              ; preds = %113
  %117 = tail call i32 @real_zerop(ptr noundef %28) #21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125, !prof !785

119:                                              ; preds = %116
  %120 = tail call i32 @real_onep(ptr noundef %28) #21
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125, !prof !785

122:                                              ; preds = %119
  %123 = tail call i32 @real_minus_onep(ptr noundef %28) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !785

125:                                              ; preds = %122, %119, %116, %113, %110, %107
  %126 = load ptr, ptr %2, align 8, !tbaa !323
  tail call void @predict_edge_def(ptr noundef %126, i32 noundef 18, i32 noundef 1) #20
  br label %127

127:                                              ; preds = %49, %47, %51, %122, %125, %102, %105, %69, %75, %78, %81, %54, %60, %63, %66, %85, %83, %45, %53, %68, %40, %41, %1, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !786 !PGOFuncName !787 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !786 !PGOFuncName !788 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !786 !PGOFuncName !789 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expr_expected_value_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 !prof !790 !PGOFuncName !791 {
  br label %6

6:                                                ; preds = %60, %5
  %7 = phi ptr [ %0, %5 ], [ %63, %60 ]
  %8 = phi ptr [ %1, %5 ], [ %64, %60 ]
  %9 = phi i32 [ %2, %5 ], [ %65, %60 ]
  %10 = phi ptr [ %3, %5 ], [ %66, %60 ]
  %11 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %9) #20, !range !494
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %112 [
    i8 3, label %13
    i8 1, label %91
    i8 2, label %103
  ], !prof !792

13:                                               ; preds = %6
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 131072
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %112, !prof !793

17:                                               ; preds = %13
  %18 = icmp eq i32 %9, 141
  br i1 %18, label %19, label %112, !prof !794

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !365
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !365
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %23) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %112, !prof !795

26:                                               ; preds = %19
  %27 = load i32, ptr %22, align 8, !tbaa !365
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %27) #21
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !494
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %54, !prof !796

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %21) #20
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %112, !prof !797

34:                                               ; preds = %31, %50
  %35 = phi i32 [ %52, %50 ], [ 0, %31 ]
  %36 = phi ptr [ %51, %50 ], [ null, %31 ]
  %37 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %21, i32 noundef %35) #20
  %38 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %37) #20
  %39 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #20
  %40 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %39) #20
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %50, label %42, !prof !798

42:                                               ; preds = %34
  %43 = tail call fastcc ptr @expr_expected_value(ptr noundef %38, ptr noundef %4) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %112, label %45, !prof !799

45:                                               ; preds = %42
  %46 = icmp eq ptr %36, null
  br i1 %46, label %50, label %47, !prof !800

47:                                               ; preds = %45
  %48 = tail call i32 @operand_equal_p(ptr noundef nonnull %36, ptr noundef nonnull %43, i32 noundef 0) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %112, label %50, !prof !801

50:                                               ; preds = %34, %45, %47
  %51 = phi ptr [ %36, %47 ], [ %43, %45 ], [ %36, %34 ]
  %52 = add nuw nsw i32 %35, 1
  %53 = icmp eq i32 %52, %32
  br i1 %53, label %112, label %34, !prof !802, !llvm.loop !803

54:                                               ; preds = %26
  %55 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %21) #20, !range !336
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %67, label %57, !prof !804

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %59 = icmp eq ptr %58, %8
  br i1 %59, label %60, label %112, !prof !805

60:                                               ; preds = %57
  %61 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !365
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %65 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !772
  %66 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  br label %6

67:                                               ; preds = %54
  %68 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %21) #20, !range !336
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %112, label %70, !prof !806

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %21) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %112, label %73, !prof !807

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %71, i64 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 6144
  %77 = icmp eq i32 %76, 6144
  br i1 %77, label %78, label %112, !prof !807

78:                                               ; preds = %73
  %79 = and i32 %75, 2047
  %80 = icmp eq i32 %79, 446
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %21) #20
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = tail call fastcc ptr @gimple_call_arg(ptr noundef %21, i32 noundef 0) #20
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 131072
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = tail call fastcc ptr @gimple_call_arg(ptr noundef %21, i32 noundef 1) #20
  br label %112

91:                                               ; preds = %6
  %92 = tail call fastcc ptr @expr_expected_value(ptr noundef %8, ptr noundef %4) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %112, label %94, !prof !808

94:                                               ; preds = %91
  %95 = tail call fastcc ptr @expr_expected_value(ptr noundef %10, ptr noundef %4) #20
  %96 = icmp eq ptr %95, null
  br i1 %96, label %112, label %97, !prof !809

97:                                               ; preds = %94
  %98 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %7, ptr noundef nonnull %92, ptr noundef nonnull %95) #21
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 131072
  %101 = icmp eq i64 %100, 0
  %102 = select i1 %101, ptr null, ptr %98
  br label %112

103:                                              ; preds = %6
  %104 = tail call fastcc ptr @expr_expected_value(ptr noundef %8, ptr noundef %4) #20
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106, !prof !810

106:                                              ; preds = %103
  %107 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %7, ptr noundef nonnull %104) #21
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 131072
  %110 = icmp eq i64 %109, 0
  %111 = select i1 %110, ptr null, ptr %107
  br label %112

112:                                              ; preds = %6, %57, %19, %17, %13, %50, %42, %47, %31, %89, %81, %84, %70, %67, %73, %78, %103, %106, %91, %94, %97
  %113 = phi ptr [ null, %91 ], [ null, %94 ], [ %102, %97 ], [ null, %103 ], [ %111, %106 ], [ null, %78 ], [ null, %73 ], [ null, %67 ], [ %85, %84 ], [ null, %81 ], [ %90, %89 ], [ null, %70 ], [ null, %31 ], [ %51, %50 ], [ null, %42 ], [ null, %47 ], [ null, %6 ], [ null, %57 ], [ null, %19 ], [ null, %17 ], [ %8, %13 ]
  ret ptr %113
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_minus_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 !prof !811 !PGOFuncName !812 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !365
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !813 !PGOFuncName !814 {
  %2 = load ptr, ptr %0, align 8, !tbaa !323
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #10 !prof !813 !PGOFuncName !815 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expr_expected_value(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !816 !PGOFuncName !817 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16, !prof !818

9:                                                ; preds = %2
  call void @extract_ops_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !365
  %12 = load ptr, ptr %4, align 8, !tbaa !323
  %13 = load i32, ptr %3, align 4, !tbaa !348
  %14 = load ptr, ptr %5, align 8, !tbaa !323
  %15 = call fastcc ptr @expr_expected_value_1(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %1) #20
  br label %16

16:                                               ; preds = %2, %9
  %17 = phi ptr [ %15, %9 ], [ %0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !819 !PGOFuncName !820 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !494
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !821 !PGOFuncName !822 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !823 !PGOFuncName !824 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !825 !PGOFuncName !826 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !772
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !494
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !827

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !825 !PGOFuncName !828 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !829

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !338 !PGOFuncName !830 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !338 !PGOFuncName !831 {
  %3 = add nuw nsw i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !825 !PGOFuncName !832 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !494
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !833

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !825 !PGOFuncName !834 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !365
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_bb_predictions(ptr noundef %0) unnamed_addr #1 !prof !515 !PGOFuncName !835 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !323
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !836

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !323
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !837

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !437
  tail call void @free(ptr noundef nonnull %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !prof !838, !llvm.loop !839

12:                                               ; preds = %8, %5
  store ptr null, ptr %3, align 8, !tbaa !323
  br label %13

13:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !600 !PGOFuncName !840 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !841

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !842 !PGOFuncName !843 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !844

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !845 !PGOFuncName !846 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !847

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !323
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_loops_at_level(ptr noundef %0) unnamed_addr #1 !prof !338 !PGOFuncName !848 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1, %29
  %4 = phi ptr [ %33, %29 ], [ %0, %1 ]
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %6 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !394
  tail call fastcc void @estimate_loops_at_level(ptr noundef %7) #20
  %8 = tail call ptr @loop_latch_edge(ptr noundef nonnull %4) #21
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !573
  %11 = getelementptr inbounds %struct.edge_info_def, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = tail call ptr @get_loop_body(ptr noundef nonnull %4) #21
  %15 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !509
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %3 ]
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !323
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !466
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #21
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %15, align 4, !tbaa !509
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %18, label %29, !llvm.loop !849

29:                                               ; preds = %18, %3
  tail call void @free(ptr noundef %14) #20
  %30 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !390
  tail call fastcc void @propagate_freq(ptr noundef %31, ptr noundef %5) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #21
  %32 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !395
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %3, !llvm.loop !850

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_freq(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !568 !PGOFuncName !851 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca %struct.sreal, align 8
  %9 = alloca %struct.sreal, align 8
  %10 = alloca %struct.sreal, align 8
  %11 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #20, !range !336
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %73, label %14, !prof !571

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  br label %16

16:                                               ; preds = %14, %66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %17 = load ptr, ptr @cfun, align 8, !tbaa !323
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !327
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !852
  %22 = load i32, ptr %3, align 4, !tbaa !348
  %23 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %22) #20
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef %23) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !483
  store ptr %24, ptr %15, align 8, !tbaa.struct !484
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %4) #20, !range !336
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %66, label %27, !prof !572

27:                                               ; preds = %16, %60
  %28 = phi i32 [ %61, %60 ], [ 0, %16 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !323
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !466
  %33 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %32) #21
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36, !prof !853

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !431
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43, !prof !854

41:                                               ; preds = %36
  %42 = add nsw i32 %28, 1
  br label %60

43:                                               ; preds = %36
  %44 = load ptr, ptr @dump_file, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !573
  %49 = getelementptr inbounds %struct.edge_info_def, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %55 = load ptr, ptr %29, align 8, !tbaa !374
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !466
  %58 = load i32, ptr %54, align 8, !tbaa !466
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.47, i32 noundef %57, i32 noundef %58) #20
  br label %60

60:                                               ; preds = %27, %43, %46, %53, %41
  %61 = phi i32 [ %28, %46 ], [ %28, %53 ], [ %28, %43 ], [ %42, %41 ], [ %28, %27 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  %62 = load i32, ptr %6, align 8
  %63 = load ptr, ptr %15, align 8
  %64 = call fastcc zeroext i8 @ei_cond(i32 %62, ptr %63, ptr noundef nonnull %4) #20, !range !336
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %27, !prof !574, !llvm.loop !855

66:                                               ; preds = %60, %16
  %67 = phi i32 [ 0, %16 ], [ %61, %60 ]
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !578
  %70 = getelementptr inbounds %struct.block_info_def, ptr %69, i64 0, i32 2
  store i32 %67, ptr %70, align 8, !tbaa !856
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %71 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #20, !range !336
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %16, !prof !576, !llvm.loop !859

73:                                               ; preds = %66, %2
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !578
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) @real_one, i64 16, i1 false)
  %76 = getelementptr inbounds i8, ptr %7, i64 8
  br label %77

77:                                               ; preds = %73, %186
  %78 = phi ptr [ %0, %73 ], [ %187, %186 ]
  %79 = phi ptr [ %0, %73 ], [ %188, %186 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !578
  %82 = getelementptr inbounds %struct.block_info_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !860
  store ptr null, ptr %82, align 8, !tbaa !860
  %84 = icmp eq ptr %78, %0
  br i1 %84, label %133, label %85, !prof !861

85:                                               ; preds = %77
  %86 = call fastcc ptr @ei_start_1(ptr noundef nonnull %78) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !483
  store ptr %86, ptr %76, align 8, !tbaa.struct !484
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %4) #20, !range !336
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %120, label %89, !prof !862

89:                                               ; preds = %85, %115
  %90 = load ptr, ptr %4, align 8, !tbaa !323
  %91 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !573
  %93 = getelementptr inbounds %struct.edge_info_def, ptr %92, i64 0, i32 1
  %94 = load i8, ptr %93, align 8
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97, !prof !854

97:                                               ; preds = %89
  %98 = call ptr @sreal_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %92) #21
  br label %115

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !431
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115, !prof !854

104:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  %105 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !375
  %107 = sext i32 %106 to i64
  %108 = call ptr @sreal_init(ptr noundef nonnull %10, i64 noundef %107, i32 noundef 0) #21
  %109 = load ptr, ptr %90, align 8, !tbaa !374
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !578
  %112 = call ptr @sreal_mul(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef %111) #21
  %113 = call ptr @sreal_mul(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull @real_inv_br_prob_base) #21
  %114 = call ptr @sreal_add(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %115

115:                                              ; preds = %97, %104, %99
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %116 = load i32, ptr %7, align 8
  %117 = load ptr, ptr %76, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %4) #20, !range !336
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %89, !prof !863, !llvm.loop !864

120:                                              ; preds = %115, %85
  %121 = call i32 @sreal_compare(ptr noundef nonnull %8, ptr noundef nonnull @real_zero) #21
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125, !prof !865

123:                                              ; preds = %120
  %124 = load ptr, ptr %80, align 8, !tbaa !578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %133

125:                                              ; preds = %120
  %126 = call i32 @sreal_compare(ptr noundef nonnull %8, ptr noundef nonnull @real_almost_one) #21
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @real_almost_one, i64 16, i1 false)
  br label %129

129:                                              ; preds = %128, %125
  %130 = call ptr @sreal_sub(ptr noundef nonnull %8, ptr noundef nonnull @real_one, ptr noundef nonnull %8) #21
  %131 = load ptr, ptr %80, align 8, !tbaa !578
  %132 = call ptr @sreal_div(ptr noundef %131, ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  br label %133

133:                                              ; preds = %123, %129, %77
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !466
  %136 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %135) #21
  %137 = call ptr @find_edge(ptr noundef nonnull %78, ptr noundef nonnull %0) #21
  store ptr %137, ptr %4, align 8, !tbaa !323
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139, !prof !866

139:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  %140 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 8
  %141 = load i32, ptr %140, align 4, !tbaa !375
  %142 = sext i32 %141 to i64
  %143 = call ptr @sreal_init(ptr noundef nonnull %11, i64 noundef %142, i32 noundef 0) #21
  %144 = load ptr, ptr %80, align 8, !tbaa !578
  %145 = call ptr @sreal_mul(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef %144) #21
  %146 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !573
  %148 = call ptr @sreal_mul(ptr noundef %147, ptr noundef nonnull %11, ptr noundef nonnull @real_inv_br_prob_base) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #22
  br label %149

149:                                              ; preds = %139, %133
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 1
  %151 = call fastcc ptr @ei_start_1(ptr noundef nonnull %150) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !483
  store ptr %151, ptr %76, align 8, !tbaa.struct !484
  %152 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %151, ptr noundef nonnull %4) #20, !range !336
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %186, label %154, !prof !572

154:                                              ; preds = %149, %179
  %155 = phi ptr [ %181, %179 ], [ %79, %149 ]
  %156 = phi ptr [ %180, %179 ], [ %83, %149 ]
  %157 = load ptr, ptr %4, align 8, !tbaa !323
  %158 = getelementptr inbounds %struct.edge_def, ptr %157, i64 0, i32 7
  %159 = load i32, ptr %158, align 8, !tbaa !431
  %160 = and i32 %159, 32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %179, !prof !854

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.edge_def, ptr %157, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !511
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !578
  %167 = getelementptr inbounds %struct.block_info_def, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !856
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170, !prof !853

170:                                              ; preds = %162
  %171 = add nsw i32 %168, -1
  store i32 %171, ptr %167, align 8, !tbaa !856
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179, !prof !867

173:                                              ; preds = %170
  %174 = icmp eq ptr %156, null
  br i1 %174, label %179, label %175, !prof !868

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !578
  %178 = getelementptr inbounds %struct.block_info_def, ptr %177, i64 0, i32 1
  store ptr %164, ptr %178, align 8, !tbaa !860
  br label %179

179:                                              ; preds = %175, %173, %154, %162, %170
  %180 = phi ptr [ %156, %154 ], [ %156, %170 ], [ %156, %162 ], [ %156, %175 ], [ %164, %173 ]
  %181 = phi ptr [ %155, %154 ], [ %155, %170 ], [ %155, %162 ], [ %164, %175 ], [ %164, %173 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %182 = load i32, ptr %7, align 8
  %183 = load ptr, ptr %76, align 8
  %184 = call fastcc zeroext i8 @ei_cond(i32 %182, ptr %183, ptr noundef nonnull %4) #20, !range !336
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %154, !prof !574, !llvm.loop !869

186:                                              ; preds = %179, %149
  %187 = phi ptr [ %83, %149 ], [ %180, %179 ]
  %188 = phi ptr [ %79, %149 ], [ %181, %179 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  %189 = icmp eq ptr %187, null
  br i1 %189, label %190, label %77, !prof !576, !llvm.loop !870

190:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !568 !PGOFuncName !871 {
  %4 = load ptr, ptr %1, align 8, !tbaa !872
  store ptr %4, ptr %0, align 8, !tbaa !874
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !876
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !569

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !874
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !877
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !879
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !720
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !880
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !348
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #17 !prof !881 !PGOFuncName !882 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !880
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !883

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !884

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !348
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !885, !llvm.loop !886

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !348
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !348
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !879
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !874
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !879
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !887

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !720
  store i64 %35, ptr %3, align 8, !tbaa !880
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !888

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !348
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !348
  %40 = load i32, ptr %23, align 8, !tbaa !879
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !879
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !889, !llvm.loop !890

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !891
  store ptr %44, ptr %0, align 8, !tbaa !874
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !892

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !877
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !348
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !880
  store i32 %16, ptr %1, align 4, !tbaa !348
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !893 !PGOFuncName !894 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !323
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !893 !PGOFuncName !895 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !880
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !880
  %6 = load i32, ptr %1, align 4, !tbaa !348
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !348
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !338 !PGOFuncName !896 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!321}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!35 = !{ptr @maybe_hot_bb_p, ptr @maybe_hot_count_p, i64 1}
!36 = !{ptr @maybe_hot_bb_p, ptr @maybe_hot_frequency_p, i64 5715928}
!37 = !{ptr @cgraph_maybe_hot_edge_p, ptr @lookup_attribute, i64 159243}
!38 = !{ptr @maybe_hot_edge_p, ptr @maybe_hot_count_p, i64 1}
!39 = !{ptr @maybe_hot_edge_p, ptr @maybe_hot_frequency_p, i64 36989}
!40 = !{ptr @optimize_function_for_speed_p, ptr @optimize_function_for_size_p, i64 137382}
!41 = !{ptr @optimize_bb_for_size_p, ptr @optimize_function_for_size_p, i64 4754305}
!42 = !{ptr @optimize_bb_for_size_p, ptr @maybe_hot_bb_p, i64 4754304}
!43 = !{ptr @optimize_bb_for_speed_p, ptr @optimize_bb_for_size_p, i64 4322894}
!44 = !{ptr @optimize_edge_for_size_p, ptr @optimize_function_for_size_p, i64 36990}
!45 = !{ptr @optimize_edge_for_size_p, ptr @maybe_hot_edge_p, i64 36989}
!46 = !{ptr @optimize_edge_for_speed_p, ptr @optimize_edge_for_size_p, i64 30970}
!47 = !{ptr @optimize_insn_for_size_p, ptr @optimize_function_for_size_p, i64 865884}
!48 = !{ptr @optimize_insn_for_speed_p, ptr @optimize_insn_for_size_p, i64 229472}
!49 = !{ptr @rtl_profile_for_bb, ptr @maybe_hot_bb_p, i64 961624}
!50 = !{ptr @gimple_predicted_by_p, ptr @pointer_map_contains, i64 175965}
!51 = !{ptr @predict_insn_def, ptr @predict_insn, i64 198}
!52 = !{ptr @predict_insn, ptr @any_condjump_p, i64 198}
!53 = !{ptr @predict_insn, ptr @fancy_abort, i64 1}
!54 = !{ptr @predict_insn, ptr @gen_rtx_CONST_INT, i64 394}
!55 = !{ptr @predict_insn, ptr @gen_rtx_fmt_ee_stat, i64 197}
!56 = !{ptr @predict_insn, ptr @add_reg_note, i64 197}
!57 = !{ptr @gimple_predict_edge, ptr @fancy_abort, i64 1}
!58 = !{ptr @gimple_predict_edge, ptr @VEC_edge_base_length, i64 266090}
!59 = !{ptr @gimple_predict_edge, ptr @xmalloc, i64 266087}
!60 = !{ptr @gimple_predict_edge, ptr @pointer_map_insert, i64 266087}
!61 = !{ptr @remove_predictions_associated_with_edge, ptr @pointer_map_contains, i64 1}
!62 = !{ptr @remove_predictions_associated_with_edge, ptr @free, i64 5}
!63 = !{ptr @predict_edge_def, ptr @predict_edge, i64 266091}
!64 = !{ptr @invert_br_probabilities, ptr @gen_rtx_CONST_INT, i64 365564}
!65 = !{ptr @guess_outgoing_edge_probabilities, ptr @bb_estimate_probability_locally, i64 777}
!66 = !{ptr @guess_outgoing_edge_probabilities, ptr @combine_predictions_for_insn, i64 777}
!67 = !{ptr @bb_estimate_probability_locally, ptr @can_predict_insn_p, i64 777}
!68 = !{ptr @bb_estimate_probability_locally, ptr @get_condition, i64 690}
!69 = !{ptr @bb_estimate_probability_locally, ptr @predict_insn_def, i64 199}
!70 = !{ptr @combine_predictions_for_insn, ptr @can_predict_insn_p, i64 777}
!71 = !{ptr @combine_predictions_for_insn, ptr @set_even_probabilities, i64 87}
!72 = !{ptr @combine_predictions_for_insn, ptr @find_reg_note, i64 690}
!73 = !{ptr @combine_predictions_for_insn, ptr @fprintf, i64 1}
!74 = !{ptr @combine_predictions_for_insn, ptr @dump_prediction, i64 1775}
!75 = !{ptr @combine_predictions_for_insn, ptr @gen_rtx_CONST_INT, i64 689}
!76 = !{ptr @combine_predictions_for_insn, ptr @add_reg_note, i64 689}
!77 = !{ptr @combine_predictions_for_insn, ptr @single_succ_p, i64 690}
!78 = !{ptr @combine_predictions_for_insn, ptr @VEC_edge_base_index, i64 2065}
!79 = !{ptr @combine_predictions_for_insn, ptr @single_succ_edge, i64 1}
!80 = !{ptr @tree_estimate_probability, ptr @add_noreturn_fake_exit_edges, i64 40}
!81 = !{ptr @tree_estimate_probability, ptr @connect_infinite_loops_to_exit, i64 40}
!82 = !{ptr @tree_estimate_probability, ptr @create_preheaders, i64 40}
!83 = !{ptr @tree_estimate_probability, ptr @calculate_dominance_info, i64 40}
!84 = !{ptr @tree_estimate_probability, ptr @pointer_map_create, i64 40}
!85 = !{ptr @tree_estimate_probability, ptr @tree_bb_level_predictions, i64 40}
!86 = !{ptr @tree_estimate_probability, ptr @record_loop_exits, i64 40}
!87 = !{ptr @tree_estimate_probability, ptr @number_of_loops, i64 40}
!88 = !{ptr @tree_estimate_probability, ptr @predict_loops, i64 1}
!89 = !{ptr @tree_estimate_probability, ptr @tree_estimate_probability_bb, i64 143000}
!90 = !{ptr @tree_estimate_probability, ptr @combine_predictions_for_bb, i64 143000}
!91 = !{ptr @tree_estimate_probability, ptr @pointer_map_destroy, i64 40}
!92 = !{ptr @tree_estimate_probability, ptr @estimate_bb_frequencies, i64 40}
!93 = !{ptr @tree_estimate_probability, ptr @free_dominance_info, i64 40}
!94 = !{ptr @tree_estimate_probability, ptr @remove_fake_exit_edges, i64 40}
!95 = !{ptr @tree_bb_level_predictions, ptr @ei_start_1, i64 40}
!96 = !{ptr @tree_bb_level_predictions, ptr @ei_cond, i64 41}
!97 = !{ptr @tree_bb_level_predictions, ptr @ei_next, i64 1}
!98 = !{ptr @tree_bb_level_predictions, ptr @apply_return_prediction, i64 40}
!99 = !{ptr @tree_bb_level_predictions, ptr @gsi_start_bb, i64 143000}
!100 = !{ptr @tree_bb_level_predictions, ptr @gsi_end_p, i64 489501}
!101 = !{ptr @tree_bb_level_predictions, ptr @gsi_stmt, i64 346501}
!102 = !{ptr @tree_bb_level_predictions, ptr @is_gimple_call, i64 346501}
!103 = !{ptr @tree_bb_level_predictions, ptr @gimple_call_flags, i64 67443}
!104 = !{ptr @tree_bb_level_predictions, ptr @predict_paths_leading_to, i64 62}
!105 = !{ptr @tree_bb_level_predictions, ptr @gimple_call_fndecl, i64 67443}
!106 = !{ptr @tree_bb_level_predictions, ptr @lookup_attribute, i64 67442}
!107 = !{ptr @tree_bb_level_predictions, ptr @gimple_code, i64 279059}
!108 = !{ptr @tree_bb_level_predictions, ptr @gimple_predict_predictor, i64 1}
!109 = !{ptr @tree_bb_level_predictions, ptr @gimple_predict_outcome, i64 1}
!110 = !{ptr @tree_bb_level_predictions, ptr @gsi_next, i64 346501}
!111 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 157}
!112 = !{ptr @tree_estimate_probability_bb, ptr @ei_start_1, i64 149573}
!113 = !{ptr @tree_estimate_probability_bb, ptr @ei_cond, i64 447639}
!114 = !{ptr @tree_estimate_probability_bb, ptr @single_succ_p, i64 210480}
!115 = !{ptr @tree_estimate_probability_bb, ptr @single_succ_edge, i64 63989}
!116 = !{ptr @tree_estimate_probability_bb, ptr @last_stmt, i64 61328}
!117 = !{ptr @tree_estimate_probability_bb, ptr @gimple_code, i64 61327}
!118 = !{ptr @tree_estimate_probability_bb, ptr @predicted_by_p, i64 175952}
!119 = !{ptr @tree_estimate_probability_bb, ptr @predict_edge_def, i64 126911}
!120 = !{ptr @tree_estimate_probability_bb, ptr @ei_next, i64 298066}
!121 = !{ptr @tree_estimate_probability_bb, ptr @dominated_by_p, i64 433907}
!122 = !{ptr @tree_estimate_probability_bb, ptr @gsi_start_bb, i64 141146}
!123 = !{ptr @tree_estimate_probability_bb, ptr @gsi_end_p, i64 375416}
!124 = !{ptr @tree_estimate_probability_bb, ptr @gsi_stmt, i64 312473}
!125 = !{ptr @tree_estimate_probability_bb, ptr @is_gimple_call, i64 312473}
!126 = !{ptr @tree_estimate_probability_bb, ptr @gimple_has_side_effects, i64 78204}
!127 = !{ptr @tree_estimate_probability_bb, ptr @gsi_next, i64 234270}
!128 = !{ptr @tree_estimate_probability_bb, ptr @tree_predict_by_opcode, i64 146574}
!129 = !{ptr @combine_predictions_for_bb, ptr @ei_start_1, i64 146574}
!130 = !{ptr @combine_predictions_for_bb, ptr @ei_cond, i64 439322}
!131 = !{ptr @combine_predictions_for_bb, ptr @ei_next, i64 292748}
!132 = !{ptr @combine_predictions_for_bb, ptr @set_even_probabilities, i64 3299}
!133 = !{ptr @combine_predictions_for_bb, ptr @clear_bb_predictions, i64 146574}
!134 = !{ptr @combine_predictions_for_bb, ptr @fprintf, i64 2}
!135 = !{ptr @combine_predictions_for_bb, ptr @pointer_map_contains, i64 143274}
!136 = !{ptr @combine_predictions_for_bb, ptr @dump_prediction, i64 685059}
!137 = !{ptr @combine_predictions_for_bb, ptr @VEC_edge_base_index, i64 263275}
!138 = !{ptr @estimate_bb_frequencies, ptr @counts_to_freqs, i64 1}
!139 = !{ptr @estimate_bb_frequencies, ptr @sreal_init, i64 573781}
!140 = !{ptr @estimate_bb_frequencies, ptr @sreal_div, i64 79}
!141 = !{ptr @estimate_bb_frequencies, ptr @sreal_sub, i64 2}
!142 = !{ptr @estimate_bb_frequencies, ptr @mark_dfs_back_edges, i64 77}
!143 = !{ptr @estimate_bb_frequencies, ptr @single_succ_edge, i64 77}
!144 = !{ptr @estimate_bb_frequencies, ptr @alloc_aux_for_blocks, i64 77}
!145 = !{ptr @estimate_bb_frequencies, ptr @alloc_aux_for_edges, i64 77}
!146 = !{ptr @estimate_bb_frequencies, ptr @ei_start_1, i64 287410}
!147 = !{ptr @estimate_bb_frequencies, ptr @ei_cond, i64 861181}
!148 = !{ptr @estimate_bb_frequencies, ptr @sreal_mul, i64 861181}
!149 = !{ptr @estimate_bb_frequencies, ptr @ei_next, i64 573771}
!150 = !{ptr @estimate_bb_frequencies, ptr @estimate_loops, i64 77}
!151 = !{ptr @estimate_bb_frequencies, ptr @sreal_compare, i64 287258}
!152 = !{ptr @estimate_bb_frequencies, ptr @sreal_add, i64 287410}
!153 = !{ptr @estimate_bb_frequencies, ptr @sreal_to_int, i64 287410}
!154 = !{ptr @estimate_bb_frequencies, ptr @free_aux_for_blocks, i64 77}
!155 = !{ptr @estimate_bb_frequencies, ptr @free_aux_for_edges, i64 77}
!156 = !{ptr @estimate_bb_frequencies, ptr @compute_function_frequency, i64 78}
!157 = !{ptr @estimate_bb_frequencies, ptr @choose_function_section, i64 77}
!158 = !{ptr @expensive_function_p, ptr @fancy_abort, i64 1}
!159 = !{ptr @expensive_function_p, ptr @active_insn_p, i64 628356}
!160 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 64068}
!161 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!162 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 64068}
!163 = !{ptr @ei_cond, ptr @ei_end_p, i64 4680108}
!164 = !{ptr @ei_cond, ptr @ei_edge, i64 3153119}
!165 = !{ptr @ei_next, ptr @ei_container, i64 6019529}
!166 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 3009765}
!167 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!168 = !{ptr @estimate_loops, ptr @bitmap_obstack_alloc_stat, i64 78}
!169 = !{ptr @estimate_loops, ptr @number_of_loops, i64 78}
!170 = !{ptr @estimate_loops, ptr @estimate_loops_at_level, i64 1}
!171 = !{ptr @estimate_loops, ptr @bitmap_set_bit, i64 289673}
!172 = !{ptr @estimate_loops, ptr @propagate_freq, i64 78}
!173 = !{ptr @estimate_loops, ptr @bitmap_obstack_free, i64 78}
!174 = !{ptr @compute_function_frequency, ptr @lookup_attribute, i64 155}
!175 = !{ptr @compute_function_frequency, ptr @maybe_hot_bb_p, i64 5}
!176 = !{ptr @compute_function_frequency, ptr @probably_never_executed_bb_p, i64 5}
!177 = !{ptr @choose_function_section, ptr @build_string, i64 2}
!178 = !{ptr @tree_estimate_probability_driver, ptr @loop_optimizer_init, i64 40}
!179 = !{ptr @tree_estimate_probability_driver, ptr @mark_irreducible_loops, i64 40}
!180 = !{ptr @tree_estimate_probability_driver, ptr @number_of_loops, i64 40}
!181 = !{ptr @tree_estimate_probability_driver, ptr @scev_initialize, i64 1}
!182 = !{ptr @tree_estimate_probability_driver, ptr @tree_estimate_probability, i64 40}
!183 = !{ptr @tree_estimate_probability_driver, ptr @scev_finalize, i64 1}
!184 = !{ptr @tree_estimate_probability_driver, ptr @loop_optimizer_finalize, i64 40}
!185 = !{ptr @strip_predict_hints, ptr @gsi_start_bb, i64 142897}
!186 = !{ptr @strip_predict_hints, ptr @gsi_end_p, i64 489241}
!187 = !{ptr @strip_predict_hints, ptr @gsi_stmt, i64 346344}
!188 = !{ptr @strip_predict_hints, ptr @gimple_code, i64 346344}
!189 = !{ptr @strip_predict_hints, ptr @gsi_remove, i64 1}
!190 = !{ptr @strip_predict_hints, ptr @gimple_call_fndecl, i64 67359}
!191 = !{ptr @strip_predict_hints, ptr @gsi_next, i64 346343}
!192 = !{ptr @can_predict_insn_p, ptr @any_condjump_p, i64 1427}
!193 = !{ptr @can_predict_insn_p, ptr @VEC_edge_base_length, i64 1380}
!194 = !{ptr @set_even_probabilities, ptr @ei_start_1, i64 3385}
!195 = !{ptr @set_even_probabilities, ptr @ei_cond, i64 24690}
!196 = !{ptr @set_even_probabilities, ptr @ei_next, i64 17920}
!197 = !{ptr @dump_prediction, ptr @ei_start_1, i64 1}
!198 = !{ptr @dump_prediction, ptr @ei_cond, i64 11}
!199 = !{ptr @dump_prediction, ptr @ei_next, i64 10}
!200 = !{ptr @dump_prediction, ptr @fprintf, i64 2}
!201 = !{ptr @dump_prediction, ptr @fwrite, i64 1}
!202 = !{ptr @dump_prediction, ptr @fputc, i64 1}
!203 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 275244}
!204 = !{ptr @apply_return_prediction, ptr @ei_start_1, i64 40}
!205 = !{ptr @apply_return_prediction, ptr @ei_cond, i64 42}
!206 = !{ptr @apply_return_prediction, ptr @last_stmt, i64 42}
!207 = !{ptr @apply_return_prediction, ptr @gimple_code, i64 76}
!208 = !{ptr @apply_return_prediction, ptr @ei_next, i64 2}
!209 = !{ptr @apply_return_prediction, ptr @gimple_return_retval, i64 39}
!210 = !{ptr @apply_return_prediction, ptr @gimple_phi_num_args, i64 34}
!211 = !{ptr @apply_return_prediction, ptr @gimple_phi_arg_imm_use_ptr, i64 60073}
!212 = !{ptr @apply_return_prediction, ptr @get_use_from_ptr, i64 60073}
!213 = !{ptr @apply_return_prediction, ptr @return_prediction, i64 60073}
!214 = !{ptr @apply_return_prediction, ptr @gimple_phi_arg_edge, i64 42936}
!215 = !{ptr @apply_return_prediction, ptr @predict_paths_leading_to, i64 42936}
!216 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 434378}
!217 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 434378}
!218 = !{ptr @is_gimple_call, ptr @gimple_code, i64 693007}
!219 = !{ptr @predict_paths_leading_to, ptr @predict_paths_for_bb, i64 50580}
!220 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 204110}
!221 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 40}
!222 = !{ptr @return_prediction, ptr @integer_zerop, i64 70413}
!223 = !{ptr @return_prediction, ptr @tree_int_cst_sgn, i64 70408}
!224 = !{ptr @return_prediction, ptr @integer_onep, i64 67803}
!225 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 71000}
!226 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 50519}
!227 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 50519}
!228 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 941048}
!229 = !{ptr @gimple_op, ptr @gimple_ops, i64 941047}
!230 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 941048}
!231 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 941048}
!232 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!233 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 941048}
!234 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 941048}
!235 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!236 = !{ptr @predict_paths_for_bb, ptr @ei_start_1, i64 50607}
!237 = !{ptr @predict_paths_for_bb, ptr @ei_cond, i64 108825}
!238 = !{ptr @predict_paths_for_bb, ptr @dominated_by_p, i64 58203}
!239 = !{ptr @predict_paths_for_bb, ptr @fancy_abort, i64 1}
!240 = !{ptr @predict_paths_for_bb, ptr @predict_edge_def, i64 58159}
!241 = !{ptr @predict_paths_for_bb, ptr @ei_next, i64 58218}
!242 = !{ptr @predict_paths_for_bb, ptr @first_dom_son, i64 50607}
!243 = !{ptr @predict_paths_for_bb, ptr @predict_paths_for_bb, i64 28}
!244 = !{ptr @predict_paths_for_bb, ptr @next_dom_son, i64 28}
!245 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 204110}
!246 = !{ptr @tree_predict_by_opcode, ptr @last_stmt, i64 146574}
!247 = !{ptr @tree_predict_by_opcode, ptr @gimple_code, i64 143961}
!248 = !{ptr @tree_predict_by_opcode, ptr @ei_start_1, i64 143272}
!249 = !{ptr @tree_predict_by_opcode, ptr @ei_cond, i64 143273}
!250 = !{ptr @tree_predict_by_opcode, ptr @ei_next, i64 1}
!251 = !{ptr @tree_predict_by_opcode, ptr @gimple_cond_lhs, i64 143272}
!252 = !{ptr @tree_predict_by_opcode, ptr @gimple_cond_rhs, i64 143272}
!253 = !{ptr @tree_predict_by_opcode, ptr @gimple_cond_code, i64 143272}
!254 = !{ptr @tree_predict_by_opcode, ptr @bitmap_obstack_alloc_stat, i64 143272}
!255 = !{ptr @tree_predict_by_opcode, ptr @expr_expected_value_1, i64 143272}
!256 = !{ptr @tree_predict_by_opcode, ptr @bitmap_obstack_free, i64 143272}
!257 = !{ptr @tree_predict_by_opcode, ptr @integer_zerop, i64 286301}
!258 = !{ptr @tree_predict_by_opcode, ptr @predict_edge_def, i64 91143}
!259 = !{ptr @tree_predict_by_opcode, ptr @integer_onep, i64 143}
!260 = !{ptr @tree_predict_by_opcode, ptr @integer_all_onesp, i64 7}
!261 = !{ptr @tree_predict_by_opcode, ptr @real_zerop, i64 6}
!262 = !{ptr @tree_predict_by_opcode, ptr @real_onep, i64 5}
!263 = !{ptr @tree_predict_by_opcode, ptr @real_minus_onep, i64 4}
!264 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 143274}
!265 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 143274}
!266 = !{ptr @expr_expected_value_1, ptr @get_gimple_rhs_class, i64 586380}
!267 = !{ptr @expr_expected_value_1, ptr @bitmap_bit_p, i64 241007}
!268 = !{ptr @expr_expected_value_1, ptr @bitmap_set_bit, i64 241006}
!269 = !{ptr @expr_expected_value_1, ptr @gimple_code, i64 241006}
!270 = !{ptr @expr_expected_value_1, ptr @gimple_phi_num_args, i64 146}
!271 = !{ptr @expr_expected_value_1, ptr @gimple_phi_arg_imm_use_ptr, i64 275}
!272 = !{ptr @expr_expected_value_1, ptr @get_use_from_ptr, i64 275}
!273 = !{ptr @expr_expected_value_1, ptr @gimple_phi_result_ptr, i64 275}
!274 = !{ptr @expr_expected_value_1, ptr @get_def_from_ptr, i64 275}
!275 = !{ptr @expr_expected_value_1, ptr @expr_expected_value, i64 250957}
!276 = !{ptr @expr_expected_value_1, ptr @operand_equal_p, i64 128}
!277 = !{ptr @expr_expected_value_1, ptr @is_gimple_assign, i64 240860}
!278 = !{ptr @expr_expected_value_1, ptr @gimple_assign_lhs, i64 303943}
!279 = !{ptr @expr_expected_value_1, ptr @gimple_assign_rhs1, i64 151971}
!280 = !{ptr @expr_expected_value_1, ptr @gimple_assign_rhs_code, i64 151971}
!281 = !{ptr @expr_expected_value_1, ptr @gimple_assign_rhs2, i64 151971}
!282 = !{ptr @expr_expected_value_1, ptr @is_gimple_call, i64 88888}
!283 = !{ptr @expr_expected_value_1, ptr @gimple_call_fndecl, i64 88885}
!284 = !{ptr @expr_expected_value_1, ptr @gimple_call_num_args, i64 1}
!285 = !{ptr @expr_expected_value_1, ptr @fold_build2_stat_loc, i64 1}
!286 = !{ptr @expr_expected_value_1, ptr @fold_build1_stat_loc, i64 1}
!287 = !{ptr @expr_expected_value, ptr @extract_ops_from_tree, i64 178546}
!288 = !{ptr @expr_expected_value, ptr @expr_expected_value_1, i64 178546}
!289 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 178440}
!290 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 225176}
!291 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 189915}
!292 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 112588}
!293 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 112588}
!294 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 77327}
!295 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 112588}
!296 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 35259}
!297 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 112588}
!298 = !{ptr @clear_bb_predictions, ptr @pointer_map_contains, i64 146574}
!299 = !{ptr @clear_bb_predictions, ptr @free, i64 266088}
!300 = !{ptr @ei_end_p, ptr @ei_container, i64 9359981}
!301 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 4680108}
!302 = !{ptr @ei_edge, ptr @ei_container, i64 6306237}
!303 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 3153119}
!304 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!305 = !{ptr @propagate_freq, ptr @bmp_iter_set_init, i64 78}
!306 = !{ptr @propagate_freq, ptr @bmp_iter_set, i64 289751}
!307 = !{ptr @propagate_freq, ptr @VEC_basic_block_base_index, i64 289673}
!308 = !{ptr @propagate_freq, ptr @ei_start_1, i64 872631}
!309 = !{ptr @propagate_freq, ptr @ei_cond, i64 2614862}
!310 = !{ptr @propagate_freq, ptr @bitmap_bit_p, i64 578289}
!311 = !{ptr @propagate_freq, ptr @ei_next, i64 1742231}
!312 = !{ptr @propagate_freq, ptr @bmp_iter_next, i64 289673}
!313 = !{ptr @propagate_freq, ptr @sreal_add, i64 581969}
!314 = !{ptr @propagate_freq, ptr @sreal_init, i64 581969}
!315 = !{ptr @propagate_freq, ptr @sreal_mul, i64 1163938}
!316 = !{ptr @propagate_freq, ptr @sreal_compare, i64 291441}
!317 = !{ptr @propagate_freq, ptr @sreal_sub, i64 1}
!318 = !{ptr @propagate_freq, ptr @sreal_div, i64 1}
!319 = !{ptr @propagate_freq, ptr @bitmap_clear_bit, i64 291518}
!320 = !{ptr @propagate_freq, ptr @find_edge, i64 291518}
!321 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!322 = !{!"function_entry_count", i64 5715929}
!323 = !{!324, !324, i64 0}
!324 = !{!"any pointer", !325, i64 0}
!325 = !{!"omnipotent char", !326, i64 0}
!326 = !{!"Simple C/C++ TBAA"}
!327 = !{!328, !324, i64 8}
!328 = !{!"function", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !324, i64 32, !324, i64 40, !324, i64 48, !324, i64 56, !324, i64 64, !324, i64 72, !324, i64 80, !324, i64 88, !324, i64 96, !329, i64 104, !329, i64 108, !329, i64 112, !329, i64 116, !329, i64 120, !329, i64 124, !324, i64 128, !329, i64 136, !329, i64 137, !329, i64 138, !329, i64 138, !329, i64 138, !329, i64 138, !329, i64 138, !329, i64 138, !329, i64 138, !329, i64 139, !329, i64 139, !329, i64 139, !329, i64 139, !329, i64 139, !329, i64 139, !329, i64 139}
!329 = !{!"int", !325, i64 0}
!330 = !{!331, !329, i64 48}
!331 = !{!"control_flow_graph", !324, i64 0, !324, i64 8, !324, i64 16, !329, i64 24, !329, i64 28, !329, i64 32, !324, i64 40, !329, i64 48, !325, i64 52, !325, i64 60, !329, i64 68, !329, i64 72}
!332 = !{!"branch_weights", i32 1, i32 5715930}
!333 = !{!334, !335, i64 72}
!334 = !{!"basic_block_def", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !325, i64 32, !324, i64 48, !324, i64 56, !325, i64 64, !335, i64 72, !329, i64 80, !329, i64 84, !329, i64 88, !329, i64 92, !329, i64 96}
!335 = !{!"long", !325, i64 0}
!336 = !{i8 0, i8 2}
!337 = !{!334, !329, i64 88}
!338 = !{!"function_entry_count", i64 0}
!339 = !{!"predict.c:maybe_hot_count_p"}
!340 = !{!341, !329, i64 4}
!341 = !{!"gcov_ctr_summary", !329, i64 0, !329, i64 4, !335, i64 8, !335, i64 16, !335, i64 24}
!342 = !{!341, !335, i64 24}
!343 = !{!344, !329, i64 8}
!344 = !{!"param_info", !324, i64 0, !329, i64 8, !325, i64 12, !329, i64 16, !329, i64 20, !324, i64 24}
!345 = !{!"function_entry_count", i64 5752919}
!346 = !{!"predict.c:maybe_hot_frequency_p"}
!347 = !{!"branch_weights", i32 5752920, i32 1}
!348 = !{!329, !329, i64 0}
!349 = !{!"branch_weights", i32 -254917428, i32 702, i32 702}
!350 = !{!"branch_weights", i32 1, i32 5752920}
!351 = !{!"function_entry_count", i64 53082}
!352 = !{!"branch_weights", i32 53083, i32 1}
!353 = !{!354, !335, i64 0}
!354 = !{!"cgraph_edge", !335, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !324, i64 32, !324, i64 40, !324, i64 48, !324, i64 56, !324, i64 64, !329, i64 72, !329, i64 76, !329, i64 80, !329, i64 84, !355, i64 88, !329, i64 90, !329, i64 90, !329, i64 90}
!355 = !{!"short", !325, i64 0}
!356 = !{!354, !324, i64 16}
!357 = !{!358, !324, i64 0}
!358 = !{!"cgraph_node", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !324, i64 32, !324, i64 40, !324, i64 48, !324, i64 56, !324, i64 64, !324, i64 72, !324, i64 80, !324, i64 88, !324, i64 96, !324, i64 104, !324, i64 112, !324, i64 120, !324, i64 128, !324, i64 136, !359, i64 144, !361, i64 184, !362, i64 224, !363, i64 232, !364, i64 256, !335, i64 288, !329, i64 296, !329, i64 300, !329, i64 304, !329, i64 308, !329, i64 308, !329, i64 308, !329, i64 308, !329, i64 308, !329, i64 308, !329, i64 308, !329, i64 308, !329, i64 309, !329, i64 309}
!359 = !{!"cgraph_local_info", !324, i64 0, !360, i64 8, !329, i64 32, !329, i64 32, !329, i64 32, !329, i64 32, !329, i64 32, !329, i64 32, !329, i64 32, !329, i64 32}
!360 = !{!"inline_summary", !335, i64 0, !329, i64 8, !329, i64 12, !329, i64 16, !329, i64 20}
!361 = !{!"cgraph_global_info", !335, i64 0, !335, i64 8, !324, i64 16, !329, i64 24, !329, i64 28, !329, i64 32, !325, i64 36}
!362 = !{!"cgraph_rtl_info", !329, i64 0}
!363 = !{!"cgraph_clone_info", !324, i64 0, !324, i64 8, !324, i64 16}
!364 = !{!"cgraph_thunk_info", !335, i64 0, !335, i64 8, !324, i64 16, !325, i64 24, !325, i64 25, !325, i64 26}
!365 = !{!325, !325, i64 0}
!366 = !{!354, !324, i64 8}
!367 = !{!"branch_weights", i32 1, i32 53083}
!368 = !{!354, !329, i64 80}
!369 = !{!"branch_weights", i32 1277, i32 51807}
!370 = !{!"function_entry_count", i64 36990}
!371 = !{!"branch_weights", i32 1, i32 36991}
!372 = !{!373, !335, i64 56}
!373 = !{!"edge_def", !324, i64 0, !324, i64 8, !325, i64 16, !324, i64 24, !324, i64 32, !329, i64 40, !329, i64 44, !329, i64 48, !329, i64 52, !335, i64 56}
!374 = !{!373, !324, i64 0}
!375 = !{!373, !329, i64 52}
!376 = !{!"function_entry_count", i64 105693}
!377 = !{!"branch_weights", i32 105694, i32 1}
!378 = !{!"function_entry_count", i64 6129517}
!379 = !{!"branch_weights", i32 6129518, i32 1}
!380 = !{!"branch_weights", i32 1, i32 6129518}
!381 = !{!"function_entry_count", i64 137382}
!382 = !{!"function_entry_count", i64 4754305}
!383 = !{!"branch_weights", i32 4754306, i32 1}
!384 = !{!"function_entry_count", i64 4322894}
!385 = !{!"branch_weights", i32 36991, i32 1}
!386 = !{!"function_entry_count", i64 30970}
!387 = !{!"function_entry_count", i64 865884}
!388 = !{!"branch_weights", i32 1, i32 865885}
!389 = !{!"function_entry_count", i64 229472}
!390 = !{!391, !324, i64 8}
!391 = !{!"loop", !329, i64 0, !329, i64 4, !324, i64 8, !324, i64 16, !392, i64 24, !329, i64 32, !329, i64 36, !324, i64 40, !324, i64 48, !324, i64 56, !324, i64 64, !324, i64 72, !393, i64 80, !393, i64 96, !325, i64 112, !325, i64 113, !329, i64 116, !324, i64 120, !324, i64 128, !325, i64 136, !324, i64 144}
!392 = !{!"lpt_decision", !329, i64 0, !329, i64 4}
!393 = !{!"", !335, i64 0, !335, i64 8}
!394 = !{!391, !324, i64 48}
!395 = !{!391, !324, i64 56}
!396 = distinct !{!396, !397}
!397 = !{!"llvm.loop.mustprogress"}
!398 = distinct !{!398, !397}
!399 = !{!"predict.c:loop_outer"}
!400 = !{!391, !324, i64 40}
!401 = !{!"function_entry_count", i64 8465}
!402 = !{!"branch_weights", i32 1, i32 8466}
!403 = !{!"function_entry_count", i64 961624}
!404 = !{!405, !325, i64 478}
!405 = !{!"rtl_data", !406, i64 0, !407, i64 40, !408, i64 96, !409, i64 112, !411, i64 208, !412, i64 248, !329, i64 312, !324, i64 320, !324, i64 328, !324, i64 336, !324, i64 344, !324, i64 352, !324, i64 360, !324, i64 368, !324, i64 376, !324, i64 384, !324, i64 392, !335, i64 400, !324, i64 408, !324, i64 416, !324, i64 424, !329, i64 432, !329, i64 436, !329, i64 440, !329, i64 444, !329, i64 448, !329, i64 452, !324, i64 456, !325, i64 464, !325, i64 465, !325, i64 466, !325, i64 467, !325, i64 468, !325, i64 469, !325, i64 470, !325, i64 471, !325, i64 472, !325, i64 473, !325, i64 474, !325, i64 475, !325, i64 476, !325, i64 477, !325, i64 478, !325, i64 479, !325, i64 480, !325, i64 481, !325, i64 482, !325, i64 483, !325, i64 484, !325, i64 485}
!406 = !{!"expr_status", !329, i64 0, !329, i64 4, !329, i64 8, !324, i64 16, !324, i64 24, !324, i64 32}
!407 = !{!"emit_status", !329, i64 0, !329, i64 4, !324, i64 8, !324, i64 16, !324, i64 24, !329, i64 32, !329, i64 36, !329, i64 40, !329, i64 44, !324, i64 48}
!408 = !{!"varasm_status", !324, i64 0, !329, i64 8}
!409 = !{!"incoming_args", !329, i64 0, !329, i64 4, !329, i64 8, !324, i64 16, !410, i64 24, !324, i64 88}
!410 = !{!"ix86_args", !329, i64 0, !329, i64 4, !329, i64 8, !329, i64 12, !329, i64 16, !329, i64 20, !329, i64 24, !329, i64 28, !329, i64 32, !329, i64 36, !329, i64 40, !329, i64 44, !329, i64 48, !329, i64 52, !329, i64 56, !329, i64 60}
!411 = !{!"function_subsections", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !324, i64 32}
!412 = !{!"rtl_eh", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !324, i64 32, !324, i64 40, !325, i64 48}
!413 = !{!"function_entry_count", i64 348}
!414 = !{!415, !324, i64 8}
!415 = !{!"rtl_bb_info", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !329, i64 32}
!416 = distinct !{!416, !397}
!417 = !{!"function_entry_count", i64 175965}
!418 = !{!"branch_weights", i32 138340, i32 37627}
!419 = !{!"branch_weights", i32 22717, i32 83163}
!420 = !{!421, !329, i64 16}
!421 = !{!"edge_prediction", !324, i64 0, !324, i64 8, !329, i64 16, !329, i64 20}
!422 = !{!"branch_weights", i32 14911, i32 68253}
!423 = distinct !{!423, !397}
!424 = !{!"predict.c:probability_reliable_p"}
!425 = !{!"function_entry_count", i64 198}
!426 = !{!427, !329, i64 8}
!427 = !{!"predictor_info", !324, i64 0, !329, i64 8, !329, i64 12}
!428 = !{!"branch_weights", i32 2, i32 198}
!429 = !{!"predict.c:predict_insn"}
!430 = !{!"branch_weights", i32 1, i32 199}
!431 = !{!373, !329, i64 48}
!432 = !{!"function_entry_count", i64 266091}
!433 = !{!"branch_weights", i32 1, i32 266092}
!434 = !{!331, !324, i64 0}
!435 = !{!334, !324, i64 8}
!436 = !{!"branch_weights", i32 -2048989012, i32 25321}
!437 = !{!421, !324, i64 0}
!438 = !{!421, !329, i64 20}
!439 = !{!421, !324, i64 8}
!440 = !{!"function_entry_count", i64 8232590}
!441 = !{!"predict.c:VEC_edge_base_length"}
!442 = !{!"branch_weights", i32 235, i32 8232357}
!443 = !{!444, !329, i64 0}
!444 = !{!"VEC_edge_base", !329, i64 0, !329, i64 4, !325, i64 8}
!445 = !{!"function_entry_count", i64 493114}
!446 = !{!"branch_weights", i32 493115, i32 1}
!447 = distinct !{!447, !397}
!448 = !{!"branch_weights", i32 60908, i32 205185}
!449 = !{!"function_entry_count", i64 365563}
!450 = !{!"branch_weights", i32 1, i32 365563}
!451 = !{!"branch_weights", i32 -107309531, i32 -113052223, i32 11439}
!452 = !{!"branch_weights", i32 365563, i32 366067}
!453 = distinct !{!453, !397}
!454 = !{!"function_entry_count", i64 777}
!455 = !{!"predict.c:bb_estimate_probability_locally"}
!456 = !{!"branch_weights", i32 87, i32 692}
!457 = !{!"branch_weights", i32 1, i32 692}
!458 = !{!"branch_weights", i32 692, i32 1}
!459 = !{!"branch_weights", i32 692, i32 479557}
!460 = !{!"branch_weights", i32 77, i32 1, i32 196, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 98, i32 1, i32 324}
!461 = !{!"branch_weights", i32 1475789056, i32 7645373, i32 7606564, i32 7567952, i32 7529536}
!462 = !{!"branch_weights", i32 393, i32 38416}
!463 = !{!"branch_weights", i32 48315, i32 921984}
!464 = !{!"branch_weights", i32 420877, i32 33907248}
!465 = !{!"predict.c:combine_predictions_for_insn"}
!466 = !{!334, !329, i64 80}
!467 = !{!"branch_weights", i32 493, i32 199}
!468 = !{!"branch_weights", i32 199, i32 1}
!469 = !{!"branch_weights", i32 199, i32 0}
!470 = distinct !{!470, !397}
!471 = !{!"branch_weights", i32 494, i32 199}
!472 = distinct !{!472, !397}
!473 = !{!"function_entry_count", i64 40}
!474 = !{!"branch_weights", i32 1, i32 41}
!475 = !{!334, !324, i64 56}
!476 = !{!331, !324, i64 8}
!477 = !{!"branch_weights", i32 1, i32 163}
!478 = !{!"branch_weights", i32 163, i32 586137}
!479 = distinct !{!479, !397}
!480 = !{!"branch_weights", i32 0, i32 -2147483648}
!481 = distinct !{!481, !397}
!482 = !{!"predict.c:tree_bb_level_predictions"}
!483 = !{i64 0, i64 4, !348, i64 8, i64 8, !323}
!484 = !{i64 0, i64 8, !323}
!485 = !{!"branch_weights", i32 1, i32 127}
!486 = !{!"branch_weights", i32 127, i32 5121}
!487 = distinct !{!487, !397}
!488 = !{!"branch_weights", i32 146574, i32 1}
!489 = !{!"branch_weights", i32 286036, i32 69129}
!490 = !{!"branch_weights", i32 69068, i32 62}
!491 = !{!"branch_weights", i32 1, i32 62}
!492 = !{!"branch_weights", i32 1, i32 69129}
!493 = !{!"branch_weights", i32 69129, i32 1}
!494 = !{i32 0, i32 256}
!495 = !{!"branch_weights", i32 1, i32 286036}
!496 = !{i32 0, i32 32768}
!497 = !{i32 0, i32 2}
!498 = !{!"branch_weights", i32 208590, i32 146574}
!499 = distinct !{!499, !397}
!500 = distinct !{!500, !397}
!501 = !{!"function_entry_count", i64 158}
!502 = !{!"predict.c:number_of_loops"}
!503 = !{!328, !324, i64 32}
!504 = !{!"branch_weights", i32 1, i32 159}
!505 = !{!506, !324, i64 8}
!506 = !{!"loops", !329, i64 0, !324, i64 8, !324, i64 16, !324, i64 24}
!507 = !{!"predict.c:predict_loops"}
!508 = distinct !{!508, !397}
!509 = !{!391, !329, i64 36}
!510 = !{!391, !324, i64 16}
!511 = !{!373, !324, i64 8}
!512 = distinct !{!512, !397}
!513 = distinct !{!513, !397}
!514 = distinct !{!514, !397}
!515 = !{!"function_entry_count", i64 146574}
!516 = !{!"predict.c:tree_estimate_probability_bb"}
!517 = !{!"branch_weights", i32 1, i32 146574}
!518 = !{!"branch_weights", i32 143510, i32 149241}
!519 = !{!"branch_weights", i32 62, i32 149180}
!520 = !{!"branch_weights", i32 85190, i32 63991}
!521 = !{!"branch_weights", i32 61330, i32 2662}
!522 = !{!"branch_weights", i32 1, i32 61330}
!523 = !{!"branch_weights", i32 61307, i32 24}
!524 = !{!"branch_weights", i32 58309, i32 2999}
!525 = !{!"branch_weights", i32 1, i32 2998}
!526 = !{!"branch_weights", i32 5318, i32 1}
!527 = !{!"branch_weights", i32 2640, i32 2679}
!528 = !{!"branch_weights", i32 2640, i32 1}
!529 = !{!"branch_weights", i32 2998, i32 2320}
!530 = distinct !{!530, !397}
!531 = !{!"branch_weights", i32 58309, i32 1}
!532 = !{!"branch_weights", i32 46077, i32 12233}
!533 = !{!"branch_weights", i32 46077, i32 1}
!534 = !{!"branch_weights", i32 941967, i32 -1618609884}
!535 = !{!"branch_weights", i32 151386, i32 141264}
!536 = !{!"branch_weights", i32 141149, i32 116}
!537 = !{!"branch_weights", i32 73076, i32 1}
!538 = !{!"branch_weights", i32 203921, i32 68073}
!539 = !{!"branch_weights", i32 1, i32 68073}
!540 = !{!"branch_weights", i32 198917, i32 73076}
!541 = distinct !{!541, !397}
!542 = !{!"branch_weights", i32 146574, i32 146176}
!543 = distinct !{!543, !397}
!544 = !{!"predict.c:combine_predictions_for_bb"}
!545 = !{!"branch_weights", i32 292689, i32 62}
!546 = !{!"branch_weights", i32 -1565514166, i32 -1676352160}
!547 = !{!"branch_weights", i32 146514, i32 146176}
!548 = distinct !{!548, !397}
!549 = !{!"branch_weights", i32 2099149700, i32 48333948}
!550 = !{!"branch_weights", i32 3300, i32 1}
!551 = !{!"branch_weights", i32 143276, i32 1}
!552 = !{!"branch_weights", i32 8038, i32 135239}
!553 = !{!"branch_weights", i32 1, i32 135238}
!554 = !{!"branch_weights", i32 232779, i32 30502}
!555 = !{!"branch_weights", i32 140271, i32 123010}
!556 = !{!"branch_weights", i32 137654, i32 134414}
!557 = !{!"branch_weights", i32 5791, i32 128624}
!558 = !{!"branch_weights", i32 3174, i32 2618}
!559 = !{!"branch_weights", i32 1, i32 5791}
!560 = !{!"branch_weights", i32 134480, i32 137587}
!561 = distinct !{!561, !397}
!562 = !{!"branch_weights", i32 1, i32 263280}
!563 = !{!"branch_weights", i32 135238, i32 128042}
!564 = distinct !{!564, !397}
!565 = !{!"branch_weights", i32 66, i32 143211}
!566 = !{!"branch_weights", i32 235, i32 263046}
!567 = distinct !{!567, !397}
!568 = !{!"function_entry_count", i64 78}
!569 = !{!"branch_weights", i32 1, i32 79}
!570 = !{!"branch_weights", i32 78, i32 2}
!571 = !{!"branch_weights", i32 1, i32 157}
!572 = !{!"branch_weights", i32 1, i32 293386}
!573 = !{!373, !324, i64 24}
!574 = !{!"branch_weights", i32 293386, i32 292317}
!575 = distinct !{!575, !397}
!576 = !{!"branch_weights", i32 157, i32 586617}
!577 = distinct !{!577, !397}
!578 = !{!334, !324, i64 16}
!579 = !{!"branch_weights", i32 105, i32 293127}
!580 = !{!"branch_weights", i32 157, i32 586305}
!581 = distinct !{!581, !397}
!582 = distinct !{!582, !397}
!583 = distinct !{!583, !397}
!584 = distinct !{!584, !397}
!585 = !{!"function_entry_count", i64 38}
!586 = !{!"branch_weights", i32 39, i32 1}
!587 = !{!"branch_weights", i32 1, i32 39}
!588 = !{!"branch_weights", i32 1, i32 191}
!589 = !{!"branch_weights", i32 191, i32 1909297}
!590 = !{!"branch_weights", i32 1, i32 119315}
!591 = !{!"branch_weights", i32 205423, i32 475396}
!592 = !{!"branch_weights", i32 28, i32 475369}
!593 = !{!"branch_weights", i32 119315, i32 561503}
!594 = distinct !{!594, !397}
!595 = !{!"function_entry_count", i64 64068}
!596 = !{!"predict.c:single_succ_edge"}
!597 = !{!"branch_weights", i32 1, i32 64069}
!598 = !{!"function_entry_count", i64 1670343}
!599 = !{!"predict.c:ei_start_1"}
!600 = !{!"function_entry_count", i64 4680108}
!601 = !{!"predict.c:ei_cond"}
!602 = !{!"branch_weights", i32 3153120, i32 1526990}
!603 = !{!"function_entry_count", i64 3009765}
!604 = !{!"predict.c:ei_next"}
!605 = !{!"branch_weights", i32 1, i32 3009766}
!606 = !{!"branch_weights", i32 3009766, i32 1}
!607 = !{!608, !329, i64 0}
!608 = !{!"", !329, i64 0, !324, i64 8}
!609 = !{!"predict.c:estimate_loops"}
!610 = !{!506, !324, i64 24}
!611 = distinct !{!611, !397}
!612 = !{!"branch_weights", i32 79, i32 1}
!613 = distinct !{!613, !397}
!614 = !{!"predict.c:choose_function_section"}
!615 = !{!"branch_weights", i32 6241, i32 159}
!616 = !{!"branch_weights", i32 159, i32 6241}
!617 = !{!427, !324, i64 0}
!618 = !{!"predict.c:gate_estimate_probability"}
!619 = !{!"predict.c:tree_estimate_probability_driver"}
!620 = !{!"branch_weights", i32 41, i32 1}
!621 = !{!"predict.c:strip_predict_hints"}
!622 = !{!"branch_weights", i32 1, i32 155}
!623 = !{i64 0, i64 8, !323, i64 8, i64 8, !323, i64 16, i64 8, !323}
!624 = !{!"branch_weights", i32 146656, i32 1}
!625 = !{!"branch_weights", i32 -1114429085, i32 11108, i32 767922576}
!626 = distinct !{!626, !397}
!627 = !{!"branch_weights", i32 1, i32 69132}
!628 = !{!"branch_weights", i32 208802, i32 146656}
!629 = !{!"branch_weights", i32 155, i32 586473}
!630 = distinct !{!630, !397}
!631 = !{!"predict.c:VEC_loop_p_base_length"}
!632 = !{!633, !329, i64 0}
!633 = !{!"VEC_loop_p_base", !329, i64 0, !329, i64 4, !325, i64 8}
!634 = !{!"predict.c:VEC_loop_p_base_index"}
!635 = !{!"function_entry_count", i64 1554}
!636 = !{!"predict.c:can_predict_insn_p"}
!637 = !{!"branch_weights", i32 1429, i32 127}
!638 = !{!"branch_weights", i32 47, i32 1383}
!639 = !{!"function_entry_count", i64 3385}
!640 = !{!"predict.c:set_even_probabilities"}
!641 = !{!"branch_weights", i32 1, i32 3385}
!642 = !{!"branch_weights", i32 3385, i32 5578}
!643 = distinct !{!643, !397}
!644 = !{!"branch_weights", i32 8902, i32 62}
!645 = distinct !{!645, !397}
!646 = !{!"function_entry_count", i64 686845}
!647 = !{!"predict.c:dump_prediction"}
!648 = !{!"branch_weights", i32 686846, i32 1}
!649 = distinct !{!649, !397}
!650 = !{!"function_entry_count", i64 275244}
!651 = !{!"predict.c:single_succ_p"}
!652 = !{!"function_entry_count", i64 3533749}
!653 = !{!"predict.c:VEC_edge_base_index"}
!654 = !{!"predict.c:apply_return_prediction"}
!655 = distinct !{!655, !397}
!656 = !{!"branch_weights", i32 40, i32 2}
!657 = !{!"branch_weights", i32 1, i32 40}
!658 = !{!"branch_weights", i32 39, i32 2}
!659 = !{i32 3, i32 27}
!660 = !{!"branch_weights", i32 191, i32 1}
!661 = !{!"branch_weights", i32 10096, i32 28}
!662 = !{!"branch_weights", i32 191, i32 161777}
!663 = distinct !{!663, !397}
!664 = !{!"branch_weights", i32 -2147483648, i32 0}
!665 = !{!"branch_weights", i32 10120, i32 50520}
!666 = !{!"branch_weights", i32 223, i32 484889}
!667 = distinct !{!667, !397}
!668 = !{!"function_entry_count", i64 434378}
!669 = !{!"predict.c:gsi_start_bb"}
!670 = !{!671, !324, i64 0}
!671 = !{!"", !324, i64 0, !324, i64 8, !324, i64 16}
!672 = !{!671, !324, i64 8}
!673 = !{!671, !324, i64 16}
!674 = !{!"function_entry_count", i64 1348918}
!675 = !{!"predict.c:gsi_end_p"}
!676 = !{!"function_entry_count", i64 982612}
!677 = !{!"predict.c:gsi_stmt"}
!678 = !{!679, !324, i64 0}
!679 = !{!"gimple_seq_node_d", !324, i64 0, !324, i64 8, !324, i64 16}
!680 = !{!"function_entry_count", i64 693007}
!681 = !{!"predict.c:is_gimple_call"}
!682 = !{!"function_entry_count", i64 50580}
!683 = !{!"predict.c:predict_paths_leading_to"}
!684 = !{!"function_entry_count", i64 204110}
!685 = !{!"predict.c:gimple_call_fndecl"}
!686 = !{!"branch_weights", i32 204111, i32 1}
!687 = !{!"function_entry_count", i64 5188045}
!688 = !{!"predict.c:gimple_code"}
!689 = !{!"predict.c:gimple_predict_predictor"}
!690 = !{!"predict.c:gimple_predict_outcome"}
!691 = !{!"function_entry_count", i64 914540}
!692 = !{!"predict.c:gsi_next"}
!693 = !{!679, !324, i64 16}
!694 = !{!"predict.c:gimple_return_retval"}
!695 = !{!"function_entry_count", i64 145}
!696 = !{!"predict.c:gimple_phi_num_args"}
!697 = !{!"function_entry_count", i64 70798}
!698 = !{!"predict.c:return_prediction"}
!699 = !{!"branch_weights", i32 1, i32 70799}
!700 = !{!"branch_weights", i32 42530, i32 212666, i32 42531, i32 71411540, i32 42531, i32 -1355355221}
!701 = !{!"branch_weights", i32 3, i32 3}
!702 = !{!"branch_weights", i32 70414, i32 382}
!703 = !{!"branch_weights", i32 1, i32 70414}
!704 = !{!"branch_weights", i32 382, i32 70414}
!705 = !{!"branch_weights", i32 67811, i32 2604}
!706 = !{!"branch_weights", i32 59814, i32 7998}
!707 = !{!"function_entry_count", i64 71000}
!708 = !{!"predict.c:get_use_from_ptr"}
!709 = !{!710, !324, i64 24}
!710 = !{!"ssa_use_operand_d", !324, i64 0, !324, i64 8, !325, i64 16, !324, i64 24}
!711 = !{!"predict.c:gimple_phi_arg_imm_use_ptr"}
!712 = !{!"function_entry_count", i64 50519}
!713 = !{!"predict.c:gimple_phi_arg_edge"}
!714 = !{!334, !324, i64 0}
!715 = !{!"function_entry_count", i64 941048}
!716 = !{!"predict.c:gimple_op"}
!717 = !{!"branch_weights", i32 1, i32 941049}
!718 = !{!"predict.c:gimple_has_ops"}
!719 = !{!"predict.c:gimple_ops"}
!720 = !{!335, !335, i64 0}
!721 = !{!"predict.c:gimple_statement_structure"}
!722 = !{!"predict.c:gss_for_code"}
!723 = !{!"predict.c:gimple_phi_arg"}
!724 = !{!"branch_weights", i32 1, i32 71001}
!725 = !{!"function_entry_count", i64 101038}
!726 = !{!"predict.c:gimple_bb"}
!727 = !{!"predict.c:bb_seq"}
!728 = !{!334, !329, i64 96}
!729 = !{!"branch_weights", i32 434379, i32 1}
!730 = !{!"branch_weights", i32 1, i32 434379}
!731 = !{!732, !324, i64 0}
!732 = !{!"gimple_bb_info", !324, i64 0, !324, i64 8}
!733 = !{!"predict.c:gimple_seq_first"}
!734 = !{!735, !324, i64 0}
!735 = !{!"gimple_seq_d", !324, i64 0, !324, i64 8, !324, i64 16}
!736 = !{!"function_entry_count", i64 50607}
!737 = !{!"predict.c:predict_paths_for_bb"}
!738 = !{!"branch_weights", i32 1, i32 50607}
!739 = !{!"branch_weights", i32 58201, i32 19}
!740 = !{!"branch_weights", i32 58162, i32 40}
!741 = !{!"branch_weights", i32 58159, i32 4}
!742 = !{!"branch_weights", i32 1, i32 4}
!743 = !{!"branch_weights", i32 50607, i32 7612}
!744 = distinct !{!744, !397}
!745 = !{!"branch_weights", i32 50580, i32 28}
!746 = !{!"branch_weights", i32 28, i32 0}
!747 = distinct !{!747, !397}
!748 = !{!"predict.c:gimple_call_fn"}
!749 = !{!"predict.c:fel_init"}
!750 = !{!751, !329, i64 8}
!751 = !{!"", !324, i64 0, !329, i64 8}
!752 = !{!751, !324, i64 0}
!753 = !{!391, !329, i64 0}
!754 = distinct !{!754, !397}
!755 = !{!"predict.c:VEC_edge_base_iterate"}
!756 = !{!"predict.c:VEC_edge_heap_free"}
!757 = !{!"predict.c:fel_next"}
!758 = distinct !{!758, !397}
!759 = !{!"predict.c:VEC_int_heap_alloc"}
!760 = !{!"predict.c:VEC_int_base_quick_push"}
!761 = !{!762, !329, i64 0}
!762 = !{!"VEC_int_base", !329, i64 0, !329, i64 4, !325, i64 8}
!763 = !{!"predict.c:VEC_int_base_iterate"}
!764 = !{!"predict.c:get_loop"}
!765 = !{!"predict.c:VEC_int_heap_free"}
!766 = !{!"predict.c:tree_predict_by_opcode"}
!767 = !{!"branch_weights", i32 2613, i32 143963}
!768 = !{!"branch_weights", i32 143275, i32 689}
!769 = !{!"branch_weights", i32 1, i32 143275}
!770 = !{!"branch_weights", i32 127, i32 18339073}
!771 = distinct !{!771, !397}
!772 = !{i32 0, i32 65536}
!773 = !{!"branch_weights", i32 143275, i32 1}
!774 = !{!"branch_weights", i32 -1729682104, i32 358142, i32 17907}
!775 = !{!"branch_weights", i32 20, i32 21, i32 400}
!776 = !{!"branch_weights", i32 1, i32 108241, i32 1, i32 34836, i32 1, i32 1, i32 1, i32 139, i32 40, i32 4, i32 1}
!777 = !{!"branch_weights", i32 -1876136608, i32 22346, i32 22346, i32 22346}
!778 = !{!"branch_weights", i32 108241, i32 1}
!779 = !{!"branch_weights", i32 88158, i32 20084}
!780 = !{!"branch_weights", i32 -1714698762, i32 74073, i32 74071, i32 74069}
!781 = !{!"branch_weights", i32 34836, i32 1}
!782 = !{!"branch_weights", i32 2794, i32 32043}
!783 = !{!"branch_weights", i32 139, i32 40}
!784 = !{!"branch_weights", i32 4, i32 136}
!785 = !{!"branch_weights", i32 4, i32 1}
!786 = !{!"function_entry_count", i64 143274}
!787 = !{!"predict.c:gimple_cond_lhs"}
!788 = !{!"predict.c:gimple_cond_rhs"}
!789 = !{!"predict.c:gimple_cond_code"}
!790 = !{!"function_entry_count", i64 434409}
!791 = !{!"predict.c:expr_expected_value_1"}
!792 = !{!"branch_weights", i32 8368, i32 -1439770117, i32 1992171639, i32 25106}
!793 = !{!"branch_weights", i32 255875, i32 1}
!794 = !{!"branch_weights", i32 178548, i32 77328}
!795 = !{!"branch_weights", i32 178548, i32 1}
!796 = !{!"branch_weights", i32 108, i32 178441}
!797 = !{!"branch_weights", i32 127, i32 1}
!798 = !{!"branch_weights", i32 1, i32 203}
!799 = !{!"branch_weights", i32 13, i32 191}
!800 = !{!"branch_weights", i32 96, i32 96}
!801 = !{!"branch_weights", i32 96, i32 1}
!802 = !{!"branch_weights", i32 127, i32 25857}
!803 = distinct !{!803, !397}
!804 = !{!"branch_weights", i32 65853, i32 112589}
!805 = !{!"branch_weights", i32 112589, i32 1}
!806 = !{!"branch_weights", i32 2, i32 65852}
!807 = !{!"branch_weights", i32 1, i32 65852}
!808 = !{!"branch_weights", i32 171355, i32 7180}
!809 = !{!"branch_weights", i32 7180, i32 1}
!810 = !{!"branch_weights", i32 3, i32 1}
!811 = !{!"function_entry_count", i64 725534}
!812 = !{!"predict.c:get_gimple_rhs_class"}
!813 = !{!"function_entry_count", i64 202}
!814 = !{!"predict.c:get_def_from_ptr"}
!815 = !{!"predict.c:gimple_phi_result_ptr"}
!816 = !{!"function_entry_count", i64 185916}
!817 = !{!"predict.c:expr_expected_value"}
!818 = !{!"branch_weights", i32 178548, i32 7370}
!819 = !{!"function_entry_count", i64 178440}
!820 = !{!"predict.c:is_gimple_assign"}
!821 = !{!"function_entry_count", i64 225176}
!822 = !{!"predict.c:gimple_assign_lhs"}
!823 = !{!"function_entry_count", i64 189915}
!824 = !{!"predict.c:gimple_assign_rhs1"}
!825 = !{!"function_entry_count", i64 112588}
!826 = !{!"predict.c:gimple_assign_rhs_code"}
!827 = !{!"branch_weights", i32 77328, i32 35262}
!828 = !{!"predict.c:gimple_assign_rhs2"}
!829 = !{!"branch_weights", i32 35260, i32 77330}
!830 = !{!"predict.c:gimple_call_num_args"}
!831 = !{!"predict.c:gimple_call_arg"}
!832 = !{!"predict.c:gimple_expr_code"}
!833 = !{!"branch_weights", i32 1, i32 450356, i32 2, i32 1}
!834 = !{!"predict.c:gimple_num_ops"}
!835 = !{!"predict.c:clear_bb_predictions"}
!836 = !{!"branch_weights", i32 11300, i32 135276}
!837 = !{!"branch_weights", i32 1, i32 135275}
!838 = !{!"branch_weights", i32 135275, i32 130817}
!839 = distinct !{!839, !397}
!840 = !{!"predict.c:ei_end_p"}
!841 = !{!"branch_weights", i32 235, i32 4679875}
!842 = !{!"function_entry_count", i64 3153119}
!843 = !{!"predict.c:ei_edge"}
!844 = !{!"branch_weights", i32 1, i32 3153120}
!845 = !{!"function_entry_count", i64 21685750}
!846 = !{!"predict.c:ei_container"}
!847 = !{!"branch_weights", i32 1, i32 21685751}
!848 = !{!"predict.c:estimate_loops_at_level"}
!849 = distinct !{!849, !397}
!850 = distinct !{!850, !397}
!851 = !{!"predict.c:propagate_freq"}
!852 = !{!331, !324, i64 16}
!853 = !{!"branch_weights", i32 1, i32 585703}
!854 = !{!"branch_weights", i32 585703, i32 1}
!855 = distinct !{!855, !397}
!856 = !{!857, !329, i64 24}
!857 = !{!"block_info_def", !858, i64 0, !324, i64 16, !329, i64 24}
!858 = !{!"sreal", !335, i64 0, !329, i64 8}
!859 = distinct !{!859, !397}
!860 = !{!857, !324, i64 16}
!861 = !{!"branch_weights", i32 79, i32 293309}
!862 = !{!"branch_weights", i32 1, i32 293308}
!863 = !{!"branch_weights", i32 293308, i32 292395}
!864 = distinct !{!864, !397}
!865 = !{!"branch_weights", i32 293309, i32 1}
!866 = !{!"branch_weights", i32 293387, i32 1}
!867 = !{!"branch_weights", i32 293309, i32 292395}
!868 = !{!"branch_weights", i32 18914, i32 274396}
!869 = distinct !{!869, !397}
!870 = distinct !{!870, !397}
!871 = !{!"predict.c:bmp_iter_set_init"}
!872 = !{!873, !324, i64 0}
!873 = !{!"bitmap_head_def", !324, i64 0, !324, i64 8, !329, i64 16, !324, i64 24}
!874 = !{!875, !324, i64 0}
!875 = !{!"", !324, i64 0, !324, i64 8, !329, i64 16, !335, i64 24}
!876 = !{!875, !324, i64 8}
!877 = !{!878, !329, i64 16}
!878 = !{!"bitmap_element_def", !324, i64 0, !324, i64 8, !329, i64 16, !325, i64 24}
!879 = !{!875, !329, i64 16}
!880 = !{!875, !335, i64 24}
!881 = !{!"function_entry_count", i64 293464}
!882 = !{!"predict.c:bmp_iter_set"}
!883 = !{!"branch_weights", i32 4625, i32 288841}
!884 = !{!"branch_weights", i32 12, i32 293375}
!885 = !{!"branch_weights", i32 0, i32 12}
!886 = distinct !{!886, !397}
!887 = !{!"branch_weights", i32 1, i32 2338}
!888 = !{!"branch_weights", i32 53, i32 4547}
!889 = !{!"branch_weights", i32 2338, i32 2261}
!890 = distinct !{!890, !397}
!891 = !{!878, !324, i64 0}
!892 = !{!"branch_weights", i32 79, i32 2261}
!893 = !{!"function_entry_count", i64 293386}
!894 = !{!"predict.c:VEC_basic_block_base_index"}
!895 = !{!"predict.c:bmp_iter_next"}
!896 = !{!"predict.c:gimple_call_lhs"}
