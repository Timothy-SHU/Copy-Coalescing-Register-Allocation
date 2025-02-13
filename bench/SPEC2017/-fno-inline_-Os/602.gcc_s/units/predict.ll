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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_prediction = type { ptr, ptr, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.edge_info_def = type { %struct.sreal, i8 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.block_info_def = type { %struct.sreal, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@flag_guess_branch_prob = external local_unnamed_addr global i32, align 4
@optimize_size = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@bb_predictions = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"predict.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@predictor_info = internal unnamed_addr constant [29 x %struct.predictor_info] [%struct.predictor_info { ptr @.str.4, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.5, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.6, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.7, i32 10000, i32 0 }, %struct.predictor_info { ptr @.str.8, i32 10000, i32 1 }, %struct.predictor_info { ptr @.str.9, i32 10000, i32 1 }, %struct.predictor_info { ptr @.str.10, i32 9996, i32 1 }, %struct.predictor_info { ptr @.str.11, i32 10000, i32 1 }, %struct.predictor_info { ptr @.str.12, i32 5000, i32 0 }, %struct.predictor_info { ptr @.str.13, i32 9996, i32 1 }, %struct.predictor_info { ptr @.str.14, i32 9996, i32 1 }, %struct.predictor_info { ptr @.str.15, i32 8600, i32 1 }, %struct.predictor_info { ptr @.str.16, i32 9100, i32 1 }, %struct.predictor_info { ptr @.str.17, i32 8500, i32 0 }, %struct.predictor_info { ptr @.str.18, i32 8500, i32 0 }, %struct.predictor_info { ptr @.str.19, i32 7900, i32 0 }, %struct.predictor_info { ptr @.str.20, i32 7100, i32 0 }, %struct.predictor_info { ptr @.str.21, i32 9000, i32 0 }, %struct.predictor_info { ptr @.str.22, i32 7300, i32 0 }, %struct.predictor_info { ptr @.str.23, i32 7200, i32 0 }, %struct.predictor_info { ptr @.str.24, i32 9000, i32 0 }, %struct.predictor_info { ptr @.str.25, i32 7100, i32 0 }, %struct.predictor_info { ptr @.str.26, i32 6100, i32 0 }, %struct.predictor_info { ptr @.str.27, i32 7000, i32 0 }, %struct.predictor_info { ptr @.str.28, i32 6700, i32 0 }, %struct.predictor_info { ptr @.str.29, i32 9600, i32 0 }, %struct.predictor_info { ptr @.str.30, i32 9000, i32 0 }, %struct.predictor_info { ptr @.str.31, i32 9996, i32 0 }, %struct.predictor_info zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DS theory\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"first match\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"no prediction\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"unconditional jump\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"loop iterations\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"__builtin_expect\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"guessed loop iterations\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"noreturn call\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"cold function call\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"loop branch\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"loop exit\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"pointer (on trees)\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"opcode values positive\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"opcode values nonequal\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"fp_opcode\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"opcode values positive (on trees)\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"opcode values nonequal (on trees)\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"fp_opcode (on trees)\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"early return (on trees)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"const return\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"negative return\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"null return\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"mudflap check\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [31 x i8] c"Predictions for insn %i bb %i\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"  %s heuristics%s: %.1f%%\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [11 x i8] c" (ignored)\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"  exec \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c" hit \00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c" (%.1f%%)\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"%i edges in bb %i predicted to even probabilities\0A\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Predictions for bb %i\0A\00", align 1
@estimate_bb_frequencies.real_values_initialized = internal unnamed_addr global i1 false, align 4
@real_zero = internal global %struct.sreal zeroinitializer, align 8
@real_one = internal global %struct.sreal zeroinitializer, align 8
@real_br_prob_base = internal global %struct.sreal zeroinitializer, align 8
@real_bb_freq_max = internal global %struct.sreal zeroinitializer, align 8
@real_one_half = internal global %struct.sreal zeroinitializer, align 8
@real_inv_br_prob_base = internal global %struct.sreal zeroinitializer, align 8
@real_almost_one = internal global %struct.sreal zeroinitializer, align 8
@flag_reorder_functions = external local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [49 x i8] c"Irreducible region hit, ignoring edge to %i->%i\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.46 = private unnamed_addr constant [10 x i8] c".text.hot\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@pass_profile = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.48, ptr @gate_estimate_probability, ptr @tree_estimate_probability_driver, ptr null, ptr null, i32 0, i32 138, i32 8, i32 0, i32 0, i32 0, i32 6 } }, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@pass_strip_predict_hints = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.49, ptr null, ptr @strip_predict_hints, ptr null, ptr null, i32 0, i32 138, i32 8, i32 0, i32 0, i32 0, i32 6 } }, align 8
@.str.49 = private unnamed_addr constant [21 x i8] c"*strip_predict_hints\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !382 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !390
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12, !prof !392

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !393
  %11 = tail call fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %10) #20, !range !396
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !397
  %15 = tail call fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %14) #20, !range !396
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %11, %8 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %0) unnamed_addr #0 !prof !398 !PGOFuncName !399 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !390
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load ptr, ptr @profile_info, align 8, !tbaa !383
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !400
  %12 = zext i32 %11 to i64
  %13 = icmp slt i64 %12, %0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !402
  %17 = load ptr, ptr @compiler_params, align 8, !tbaa !383
  %18 = getelementptr inbounds %struct.param_info, ptr %17, i64 42, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !403
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
define internal fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %0) unnamed_addr #0 !prof !405 !PGOFuncName !406 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !407

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !408
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !383
  br label %16

9:                                                ; preds = %4, %1
  %10 = load ptr, ptr @cfun, align 8, !tbaa !383
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 20
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 3
  switch i32 %14, label %16 [
    i32 0, label %30
    i32 2, label %15
  ], !prof !409

15:                                               ; preds = %9
  br label %30

16:                                               ; preds = %7, %9
  %17 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !387
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !390
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23, !prof !410

23:                                               ; preds = %16
  %24 = load ptr, ptr @compiler_params, align 8, !tbaa !383
  %25 = getelementptr inbounds %struct.param_info, ptr %24, i64 43, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !403
  %27 = sdiv i32 10000, %26
  %28 = icmp sle i32 %27, %0
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %23, %16, %9, %15
  %31 = phi i8 [ 1, %15 ], [ 0, %9 ], [ 1, %16 ], [ %29, %23 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cgraph_maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !411 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4, !prof !412

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !408
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8, !tbaa !413
  %9 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !402
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !383
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 42, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !403
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %10, %14
  %16 = icmp sgt i64 %8, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %7, %4, %1
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !416
  %20 = load ptr, ptr %19, align 8, !tbaa !417
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !425
  %23 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52, !prof !412

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !426
  %28 = load ptr, ptr %27, align 8, !tbaa !417
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %30) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %52, !prof !412

33:                                               ; preds = %25
  %34 = load ptr, ptr %26, align 8, !tbaa !426
  %35 = load ptr, ptr %34, align 8, !tbaa !417
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !425
  %38 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %52, !prof !412

40:                                               ; preds = %33
  %41 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !408
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43, !prof !427

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !428
  %46 = load ptr, ptr @compiler_params, align 8, !tbaa !383
  %47 = getelementptr inbounds %struct.param_info, ptr %46, i64 43, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !403
  %49 = sdiv i32 1000, %48
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %52, !prof !429

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %43, %33, %17, %25, %7, %51
  %53 = phi i8 [ 1, %51 ], [ 0, %7 ], [ 0, %25 ], [ 0, %17 ], [ 1, %33 ], [ 0, %43 ]
  ret i8 %53
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !430 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !390
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12, !prof !431

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %10 = load i64, ptr %9, align 8, !tbaa !432
  %11 = tail call fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %10) #20, !range !396
  br label %22

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !434
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !397
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !435
  %18 = mul nsw i32 %17, %15
  %19 = add nsw i32 %18, 5000
  %20 = sdiv i32 %19, 10000
  %21 = tail call fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %20) #20, !range !396
  br label %22

22:                                               ; preds = %12, %8
  %23 = phi i8 [ %11, %8 ], [ %21, %12 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @probably_never_executed_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !436 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4, !prof !437

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !408
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !393
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !400
  %12 = lshr i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = zext i32 %11 to i64
  %16 = sdiv i64 %14, %15
  %17 = icmp eq i64 %16, 0
  br label %24

18:                                               ; preds = %4, %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !383
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
define dso_local zeroext i8 @optimize_function_for_size_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !438 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !408
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12, !prof !439

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6, !prof !440

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
define dso_local zeroext i8 @optimize_function_for_speed_p(ptr noundef %0) local_unnamed_addr #0 !prof !441 {
  %2 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %0) #20, !range !396
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !442 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %2) #20, !range !396
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !443

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #20, !range !396
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !444 {
  %2 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #20, !range !396
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !430 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %2) #20, !range !396
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !445

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0) #20, !range !396
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !446 {
  %2 = tail call zeroext i8 @optimize_edge_for_size_p(ptr noundef %0) #20, !range !396
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #0 !prof !447 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !383
  %2 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %1) #20, !range !396
  %3 = icmp ne i8 %2, 0
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5, !prof !448
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #0 !prof !449 {
  %1 = tail call zeroext i8 @optimize_insn_for_size_p() #20, !range !396
  %2 = xor i8 %1, 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !450 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  %4 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %3) #20, !range !396
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !455 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  %4 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %3) #20, !range !396
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef readonly %0) local_unnamed_addr #3 !prof !456 {
  %2 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %0) #20, !range !396
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %35, !prof !457

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !458
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %6, %0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %35, !prof !459

10:                                               ; preds = %4, %32
  %11 = phi ptr [ %33, %32 ], [ %6, %4 ]
  %12 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %11) #20, !range !396
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %35, !prof !460

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !458
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32, !prof !461

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !462
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32, !prof !463

22:                                               ; preds = %18
  %23 = icmp eq ptr %11, %0
  br i1 %23, label %35, label %24, !prof !464

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %30, %29 ], [ %11, %22 ]
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32, !prof !465

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %25) #20
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %24, !prof !466, !llvm.loop !467

32:                                               ; preds = %24, %18, %14
  %33 = phi ptr [ %16, %14 ], [ %20, %18 ], [ %27, %24 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %10, !prof !469, !llvm.loop !470

35:                                               ; preds = %22, %10, %32, %29, %4, %1
  %36 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %29 ], [ 0, %22 ], [ 1, %10 ], [ 0, %32 ]
  ret i8 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !471 !PGOFuncName !472 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !473
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !474

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !475 !PGOFuncName !476 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !477

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !478
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !480 !PGOFuncName !481 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !383
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %0) local_unnamed_addr #3 !prof !398 {
  %2 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef %0) #20, !range !396
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @predictable_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !482 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !390
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8, !prof !483

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !435
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !383
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 1, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !403
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
define dso_local void @rtl_profile_for_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !484 {
  %2 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #20, !range !396
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !485
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rtl_profile_for_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !398 {
  %2 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0) #20, !range !396
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !485
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @default_rtl_profile() local_unnamed_addr #7 !prof !494 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !485
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @rtl_predicted_by_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !398 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !495
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !425
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
  %24 = load ptr, ptr %23, align 8, !tbaa !425
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !425
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !425
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %34, label %30

30:                                               ; preds = %17, %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !425
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %17, !llvm.loop !497

34:                                               ; preds = %22, %30, %11, %2
  %35 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %22 ], [ 0, %30 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !498 {
  %3 = load ptr, ptr @bb_predictions, align 8, !tbaa !383
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !499

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %8, %10 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !383
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !500

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.edge_prediction, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !501
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !prof !503, !llvm.loop !504

14:                                               ; preds = %6, %10, %2
  %15 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @edge_probability_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !398 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !435
  %4 = tail call fastcc zeroext i8 @probability_reliable_p(i32 noundef %3) #20, !range !396
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @probability_reliable_p(i32 noundef %0) unnamed_addr #0 !prof !398 !PGOFuncName !505 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !390
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
define dso_local noundef zeroext i8 @br_prob_note_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !398 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 851968
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef nonnull @.str.3) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !425
  %11 = trunc i64 %10 to i32
  %12 = tail call fastcc zeroext i8 @probability_reliable_p(i32 noundef %11) #20, !range !396
  ret i8 %12
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_insn_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !506 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !507
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8, !prof !509
  tail call fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !506 !PGOFuncName !510 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !511

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 438, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !408
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10, !prof !511

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

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rtl_predict_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !398 {
  %4 = load ptr, ptr %0, align 8, !tbaa !434
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !425
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !495
  %9 = tail call i32 @any_condjump_p(ptr noundef %8) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !512
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = sub nsw i32 10000, %2
  %17 = select i1 %15, i32 %2, i32 %16
  tail call fastcc void @predict_insn(ptr noundef %8, i32 noundef %1, i32 noundef %17) #20
  br label %18

18:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !513 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !383
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !390
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14, !prof !514

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef nonnull @.str.3) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !383
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !387
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi ptr [ %6, %3 ], [ %13, %10 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !434
  %17 = load ptr, ptr %15, align 8, !tbaa !515
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %39, label %19, !prof !514

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !516
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #20
  %23 = icmp ugt i32 %22, 1
  %24 = load i32, ptr @flag_guess_branch_prob, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = load i32, ptr @optimize, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %39, !prof !517

30:                                               ; preds = %19
  %31 = tail call ptr @xmalloc(i64 noundef 24) #21
  %32 = load ptr, ptr @bb_predictions, align 8, !tbaa !383
  %33 = load ptr, ptr %0, align 8, !tbaa !434
  %34 = tail call ptr @pointer_map_insert(ptr noundef %32, ptr noundef %33) #21
  %35 = load ptr, ptr %34, align 8, !tbaa !383
  store ptr %35, ptr %31, align 8, !tbaa !518
  store ptr %31, ptr %34, align 8, !tbaa !383
  %36 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 3
  store i32 %2, ptr %36, align 4, !tbaa !519
  %37 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 2
  store i32 %1, ptr %37, align 8, !tbaa !501
  %38 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !520
  br label %39

39:                                               ; preds = %30, %19, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !521 !PGOFuncName !522 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !523

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !524
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
define dso_local void @remove_predictions_associated_with_edge(ptr noundef readonly %0) local_unnamed_addr #1 !prof !526 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4, !prof !527

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !434
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !383
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %19
  %12 = phi ptr [ %17, %19 ], [ %9, %8 ]
  %13 = phi ptr [ %20, %19 ], [ %6, %8 ]
  %14 = getelementptr inbounds %struct.edge_prediction, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !520
  %16 = icmp eq ptr %15, %0
  %17 = load ptr, ptr %12, align 8, !tbaa !383
  br i1 %16, label %18, label %19

18:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #20
  store ptr %17, ptr %13, align 8, !tbaa !383
  br label %19

19:                                               ; preds = %11, %18
  %20 = phi ptr [ %13, %18 ], [ %12, %11 ]
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %11, !llvm.loop !528

22:                                               ; preds = %19, %8, %4, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_edge_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !529 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !507
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8, !prof !530
  tail call void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %9) #21
  ret void
}

; Function Attrs: optsize
declare void @predict_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @invert_br_probabilities(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !531 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5, !prof !532

5:                                                ; preds = %1, %28
  %6 = phi ptr [ %30, %28 ], [ %3, %1 ]
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %28 [
    i8 13, label %10
    i8 16, label %17
  ], !prof !533

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !425
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !425
  %15 = sub nsw i64 10000, %14
  %16 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #21
  store ptr %16, ptr %11, align 8, !tbaa !425
  br label %28

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !425
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !425
  %24 = sub nsw i64 10000, %23
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %24) #21
  %26 = load ptr, ptr %18, align 8, !tbaa !425
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %25, ptr %27, align 8, !tbaa !425
  br label %28

28:                                               ; preds = %5, %10, %17
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5, !prof !534, !llvm.loop !535

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @guess_outgoing_edge_probabilities(ptr noundef %0) local_unnamed_addr #1 !prof !536 {
  tail call fastcc void @bb_estimate_probability_locally(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !495
  tail call fastcc void @combine_predictions_for_insn(ptr noundef %5, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bb_estimate_probability_locally(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !536 !PGOFuncName !537 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !495
  %6 = tail call fastcc zeroext i8 @can_predict_insn_p(ptr noundef %5) #20, !range !396
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %100, label %8, !prof !538

8:                                                ; preds = %1
  %9 = tail call ptr @get_condition(ptr noundef %5, ptr noundef null, i32 noundef 0, i32 noundef 0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %11, !prof !539

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !408
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %34, !prof !540

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !425
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 1073807359
  %23 = icmp eq i32 %22, 1073741861
  br i1 %23, label %30, label %24, !prof !541

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !425
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 1073807359
  %29 = icmp eq i32 %28, 1073741861
  br i1 %29, label %30, label %34, !prof !542

30:                                               ; preds = %24, %18
  %31 = trunc i32 %12 to i16
  switch i16 %31, label %100 [
    i16 81, label %32
    i16 80, label %33
  ]

32:                                               ; preds = %30
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 13, i32 noundef 0) #20
  br label %100

33:                                               ; preds = %30
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 13, i32 noundef 1) #20
  br label %100

34:                                               ; preds = %24, %11
  %35 = trunc i32 %12 to i16
  switch i16 %35, label %100 [
    i16 30, label %36
    i16 81, label %40
    i16 92, label %40
    i16 80, label %57
    i16 97, label %57
    i16 91, label %74
    i16 90, label %75
    i16 84, label %76
    i16 85, label %76
    i16 82, label %88
    i16 83, label %88
  ], !prof !543

36:                                               ; preds = %34
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !383
  %38 = icmp ne ptr %9, %37
  %39 = zext i1 %38 to i32
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 4, i32 noundef %39) #20
  br label %100

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !425
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !425
  switch i8 %48, label %49 [
    i8 8, label %100
    i8 9, label %100
    i8 11, label %100
    i8 17, label %100
  ], !prof !544

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !425
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !383
  %53 = icmp eq ptr %51, %52
  %54 = icmp eq ptr %42, %52
  %55 = or i1 %53, %54
  br i1 %55, label %100, label %56, !prof !545

56:                                               ; preds = %49
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 16, i32 noundef 0) #20
  br label %100

57:                                               ; preds = %34, %34
  %58 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !425
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !425
  switch i8 %65, label %66 [
    i8 8, label %100
    i8 9, label %100
    i8 11, label %100
    i8 17, label %100
  ], !prof !546

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !425
  %69 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !383
  %70 = icmp eq ptr %68, %69
  %71 = icmp eq ptr %59, %69
  %72 = or i1 %70, %71
  br i1 %72, label %100, label %73, !prof !547

73:                                               ; preds = %66
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 16, i32 noundef 1) #20
  br label %100

74:                                               ; preds = %34
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 17, i32 noundef 1) #20
  br label %100

75:                                               ; preds = %34
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 17, i32 noundef 0) #20
  br label %100

76:                                               ; preds = %34, %34
  %77 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !425
  %79 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !383
  %80 = icmp eq ptr %78, %79
  %81 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %82 = icmp eq ptr %78, %81
  %83 = select i1 %80, i1 true, i1 %82
  %84 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %85 = icmp eq ptr %78, %84
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %87, label %100, !prof !548

87:                                               ; preds = %76
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 15, i32 noundef 0) #20
  br label %100

88:                                               ; preds = %34, %34
  %89 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !425
  %91 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !383
  %92 = icmp eq ptr %90, %91
  %93 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %94 = icmp eq ptr %90, %93
  %95 = select i1 %92, i1 true, i1 %94
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %97 = icmp eq ptr %90, %96
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %99, label %100, !prof !549

99:                                               ; preds = %88
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 15, i32 noundef 1) #20
  br label %100

100:                                              ; preds = %33, %32, %34, %99, %87, %66, %73, %49, %56, %75, %74, %36, %30, %40, %40, %40, %40, %57, %57, %57, %57, %76, %88, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_predictions_for_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !536 !PGOFuncName !550 {
  %3 = tail call fastcc zeroext i8 @can_predict_insn_p(ptr noundef %0) #20, !range !396
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !538

5:                                                ; preds = %2
  tail call fastcc void @set_even_probabilities(ptr noundef %1) #20
  br label %192

6:                                                ; preds = %2
  %7 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 13, ptr noundef null) #21
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !540

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !425
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !551
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.32, i32 noundef %13, i32 noundef %15) #20
  br label %17

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %8, align 8, !tbaa !425
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20, !prof !552

20:                                               ; preds = %17, %60
  %21 = phi ptr [ %66, %60 ], [ %18, %17 ]
  %22 = phi i32 [ %64, %60 ], [ 5000, %17 ]
  %23 = phi i32 [ %63, %60 ], [ 28, %17 ]
  %24 = phi i32 [ %62, %60 ], [ 5000, %17 ]
  %25 = phi i8 [ %61, %60 ], [ 0, %17 ]
  %26 = load i32, ptr %21, align 8
  %27 = and i32 %26, 16711680
  %28 = icmp eq i32 %27, 1048576
  br i1 %28, label %29, label %60, !prof !553

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !425
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !425
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !425
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !425
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !425
  %41 = trunc i64 %40 to i32
  %42 = icmp ugt i32 %23, %36
  %43 = tail call i32 @llvm.umin.i32(i32 %23, i32 %36)
  %44 = select i1 %42, i32 %41, i32 %22, !prof !553
  %45 = mul nsw i32 %24, %41
  %46 = sub nsw i32 10000, %24
  %47 = sub nsw i32 10000, %41
  %48 = mul nsw i32 %47, %46
  %49 = add nsw i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51, !prof !511

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
  %66 = load ptr, ptr %65, align 8, !tbaa !425
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %20, !prof !554, !llvm.loop !555

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
  br i1 %78, label %79, label %80, !prof !539

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %70
  %81 = phi i32 [ 1, %79 ], [ 0, %70 ]
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !383
  br i1 %71, label %83, label %84, !prof !556

83:                                               ; preds = %80
  tail call fastcc void @dump_prediction(ptr noundef %82, i32 noundef 3, i32 noundef %72, ptr noundef %1, i32 noundef 1) #20
  br label %87

84:                                               ; preds = %80
  %85 = trunc i64 %77 to i32
  tail call fastcc void @dump_prediction(ptr noundef %82, i32 noundef 1, i32 noundef %72, ptr noundef %1, i32 noundef %85) #20
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !383
  tail call fastcc void @dump_prediction(ptr noundef %86, i32 noundef 2, i32 noundef %74, ptr noundef %1, i32 noundef %81) #20
  br label %87

87:                                               ; preds = %84, %83
  br i1 %78, label %88, label %89, !prof !539

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %87
  %90 = phi i32 [ %74, %88 ], [ %72, %87 ]
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !383
  tail call fastcc void @dump_prediction(ptr noundef %91, i32 noundef 0, i32 noundef %90, ptr noundef %1, i32 noundef 1) #20
  %92 = load ptr, ptr %8, align 8, !tbaa !383
  %93 = icmp eq ptr %92, null
  br i1 %93, label %129, label %94, !prof !552

94:                                               ; preds = %89, %125
  %95 = phi ptr [ %126, %125 ], [ %92, %89 ]
  %96 = phi ptr [ %127, %125 ], [ %8, %89 ]
  %97 = load i32, ptr %95, align 8
  %98 = and i32 %97, 16711680
  %99 = icmp eq i32 %98, 1048576
  br i1 %99, label %100, label %122, !prof !553

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !425
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !425
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !425
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !425
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !425
  %112 = trunc i64 %111 to i32
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !383
  br i1 %78, label %114, label %116, !prof !511

114:                                              ; preds = %100
  %115 = icmp eq i32 %73, %107
  br label %116

116:                                              ; preds = %114, %100
  %117 = phi i1 [ true, %100 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  tail call fastcc void @dump_prediction(ptr noundef %113, i32 noundef %107, i32 noundef %112, ptr noundef %1, i32 noundef %118) #20
  %119 = load ptr, ptr %96, align 8, !tbaa !383
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !425
  store ptr %121, ptr %96, align 8, !tbaa !383
  br label %125

122:                                              ; preds = %94
  %123 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !383
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi ptr [ %121, %116 ], [ %124, %122 ]
  %127 = phi ptr [ %96, %116 ], [ %123, %122 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %94, !prof !554, !llvm.loop !557

129:                                              ; preds = %125, %89
  %130 = icmp eq ptr %7, null
  br i1 %130, label %131, label %157, !prof !540

131:                                              ; preds = %129
  %132 = sext i32 %90 to i64
  %133 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %132) #21
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 13, ptr noundef %133) #21
  %134 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !396
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %192, !prof !540

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !516
  %139 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 0) #20
  %140 = getelementptr inbounds %struct.edge_def, ptr %139, i64 0, i32 7
  %141 = load i32, ptr %140, align 8, !tbaa !512
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144, !prof !540

144:                                              ; preds = %136
  %145 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 1) #20
  br label %146

146:                                              ; preds = %136, %144
  %147 = phi ptr [ %145, %144 ], [ %139, %136 ]
  %148 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 8
  store i32 %90, ptr %148, align 4, !tbaa !435
  %149 = sub nsw i32 10000, %90
  %150 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 0) #20
  %151 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 7
  %152 = load i32, ptr %151, align 8, !tbaa !512
  %153 = and i32 %152, 1
  %154 = xor i32 %153, 1
  %155 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef %154) #20
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 8
  store i32 %149, ptr %156, align 4, !tbaa !435
  br label %192

157:                                              ; preds = %129
  %158 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !396
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !425
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !425
  %165 = trunc i64 %164 to i32
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !516
  %168 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 0) #20
  %169 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !512
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %160
  %174 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 1) #20
  br label %175

175:                                              ; preds = %160, %173
  %176 = phi ptr [ %174, %173 ], [ %168, %160 ]
  %177 = getelementptr inbounds %struct.edge_def, ptr %176, i64 0, i32 8
  store i32 %165, ptr %177, align 4, !tbaa !435
  %178 = sub nsw i32 10000, %165
  %179 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 0) #20
  %180 = getelementptr inbounds %struct.edge_def, ptr %179, i64 0, i32 7
  %181 = load i32, ptr %180, align 8, !tbaa !512
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %167, i32 noundef 1) #20
  br label %186

186:                                              ; preds = %175, %184
  %187 = phi ptr [ %185, %184 ], [ %179, %175 ]
  %188 = getelementptr inbounds %struct.edge_def, ptr %187, i64 0, i32 8
  store i32 %178, ptr %188, align 4, !tbaa !435
  br label %192

189:                                              ; preds = %157
  %190 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  %191 = getelementptr inbounds %struct.edge_def, ptr %190, i64 0, i32 8
  store i32 10000, ptr %191, align 4, !tbaa !435
  br label %192

192:                                              ; preds = %146, %131, %189, %186, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_predict_insn_p(ptr noundef %0) unnamed_addr #1 !prof !558 !PGOFuncName !559 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %16, !prof !560

5:                                                ; preds = %1
  %6 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !561

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !425
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !516
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
define internal fastcc void @set_even_probabilities(ptr noundef %0) unnamed_addr #1 !prof !562 !PGOFuncName !563 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !565
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !396
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9, !prof !566

9:                                                ; preds = %1, %9
  %10 = phi i32 [ %17, %9 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !383
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !512
  %14 = and i32 %13, 24
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %10, %16
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %18 = load i32, ptr %3, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %2) #20, !range !396
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %9, !prof !567, !llvm.loop !568

22:                                               ; preds = %9, %1
  %23 = phi i32 [ 0, %1 ], [ %17, %9 ]
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  store ptr %5, ptr %6, align 8, !tbaa.struct !565
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !396
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26, !prof !566

26:                                               ; preds = %22
  %27 = lshr i32 %23, 1
  %28 = add nuw nsw i32 %27, 10000
  br label %29

29:                                               ; preds = %26, %37
  %30 = load ptr, ptr %2, align 8, !tbaa !383
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !512
  %33 = and i32 %32, 24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !569

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
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #20, !range !396
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %29, !prof !567, !llvm.loop !570

44:                                               ; preds = %37, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_prediction(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 !prof !571 !PGOFuncName !572 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %8 = icmp eq ptr %0, null
  br i1 %8, label %59, label %9, !prof !573

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !564
  %12 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !565
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %6) #20, !range !396
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %6, align 8, !tbaa !383
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !512
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %22 = load i32, ptr %7, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %6) #20, !range !396
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !574

26:                                               ; preds = %21, %15, %9
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 16, !tbaa !575
  %30 = icmp eq i32 %4, 0
  %31 = select i1 %30, ptr @.str.36, ptr @.str.35
  %32 = sitofp i32 %2 to double
  %33 = fmul double %32, 1.000000e+02
  %34 = fdiv double %33, 1.000000e+04
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %29, ptr noundef nonnull %31, double noundef %34) #20
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !393
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %26
  %40 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 7, i64 1, ptr nonnull %0)
  %41 = load i64, ptr %36, align 8, !tbaa !393
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i64 noundef %41) #20
  %43 = load ptr, ptr %6, align 8, !tbaa !383
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 5, i64 1, ptr nonnull %0)
  %47 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 9
  %48 = load i64, ptr %47, align 8, !tbaa !432
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i64 noundef %48) #20
  %50 = load i64, ptr %47, align 8, !tbaa !432
  %51 = sitofp i64 %50 to double
  %52 = fmul double %51, 1.000000e+02
  %53 = load i64, ptr %36, align 8, !tbaa !393
  %54 = sitofp i64 %53 to double
  %55 = fdiv double %52, %54
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, double noundef %55) #20
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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !576 !PGOFuncName !577 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !516
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !578 !PGOFuncName !579 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !383
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !580 !PGOFuncName !581 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !396
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !582

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.3) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !516
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !583 !PGOFuncName !584 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !585 !PGOFuncName !586 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !396
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !587

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !383
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !588 !PGOFuncName !589 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !590

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !591

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.3) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !592
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !592
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !585 !PGOFuncName !594 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !595

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !596 !PGOFuncName !597 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !598

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !599 !PGOFuncName !600 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !601

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !383
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_estimate_probability() local_unnamed_addr #1 !prof !602 {
  tail call void @add_noreturn_fake_exit_edges() #21
  tail call void @connect_infinite_loops_to_exit() #21
  tail call void @create_preheaders(i32 noundef 1) #21
  tail call void @calculate_dominance_info(i32 noundef 2) #21
  %1 = tail call ptr @pointer_map_create() #21
  store ptr %1, ptr @bb_predictions, align 8, !tbaa !383
  tail call fastcc void @tree_bb_level_predictions() #20
  tail call void @record_loop_exits() #21
  %2 = tail call fastcc i32 @number_of_loops() #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %5, !prof !603

4:                                                ; preds = %0
  tail call fastcc void @predict_loops() #20
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !383
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !387
  %9 = load ptr, ptr %8, align 8, !tbaa !515
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !604
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !605
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %40, label %15, !prof !606

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %18, %15 ], [ %11, %5 ]
  tail call fastcc void @tree_estimate_probability_bb(ptr noundef %16) #20
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !604
  %19 = load ptr, ptr @cfun, align 8, !tbaa !383
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !387
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !605
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %15, !prof !607, !llvm.loop !608

25:                                               ; preds = %15
  %26 = load ptr, ptr %21, align 8, !tbaa !515
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !604
  %29 = icmp eq ptr %28, %18
  br i1 %29, label %40, label %30, !prof !609

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %25 ]
  tail call fastcc void @combine_predictions_for_bb(ptr noundef %31) #20
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !604
  %34 = load ptr, ptr @cfun, align 8, !tbaa !383
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !387
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !605
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %30, !prof !607, !llvm.loop !610

40:                                               ; preds = %30, %5, %25
  %41 = load ptr, ptr @bb_predictions, align 8, !tbaa !383
  tail call void @pointer_map_destroy(ptr noundef %41) #21
  store ptr null, ptr @bb_predictions, align 8, !tbaa !383
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
define internal fastcc void @tree_bb_level_predictions() unnamed_addr #1 !prof !602 !PGOFuncName !611 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !383
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !605
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !564
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !565
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %1) #20, !range !396
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13, !prof !612

13:                                               ; preds = %0, %19
  %14 = load ptr, ptr %1, align 8, !tbaa !383
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !512
  %17 = and i32 %16, 26
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !613

19:                                               ; preds = %13
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %20 = load i32, ptr %2, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %1) #20, !range !396
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !prof !614, !llvm.loop !615

24:                                               ; preds = %19, %13, %0
  %25 = phi i1 [ false, %0 ], [ %18, %13 ], [ %18, %19 ]
  tail call fastcc void @apply_return_prediction() #20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !383
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !387
  %29 = load ptr, ptr %28, align 8, !tbaa !515
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !604
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !605
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %76, label %35, !prof !606

35:                                               ; preds = %24, %67
  %36 = phi ptr [ %69, %67 ], [ %31, %24 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %36) #20
  %37 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !396
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67, !prof !616

39:                                               ; preds = %35, %64
  %40 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %41 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %40) #20, !range !396
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43, !prof !617

43:                                               ; preds = %39
  %44 = tail call i32 @gimple_call_flags(ptr noundef %40) #21
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %25, %46
  br i1 %47, label %48, label %49, !prof !618

48:                                               ; preds = %43
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef 9, i32 noundef 0) #20
  br label %49

49:                                               ; preds = %48, %43
  %50 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %40) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52, !prof !619

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !425
  %55 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %54) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57, !prof !620

57:                                               ; preds = %52
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef 10, i32 noundef 0) #20
  br label %64

58:                                               ; preds = %39
  %59 = tail call fastcc i32 @gimple_code(ptr noundef %40) #20, !range !621
  %60 = icmp eq i32 %59, 33
  br i1 %60, label %61, label %64, !prof !622

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @gimple_predict_predictor(ptr noundef %40) #20, !range !623
  %63 = tail call fastcc i32 @gimple_predict_outcome(ptr noundef %40) #20, !range !624
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef %62, i32 noundef %63) #20
  br label %64

64:                                               ; preds = %58, %61, %49, %52, %57
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %65 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !396
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %39, label %67, !prof !625, !llvm.loop !626

67:                                               ; preds = %64, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !604
  %70 = load ptr, ptr @cfun, align 8, !tbaa !383
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !387
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !605
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %76, label %35, !prof !607, !llvm.loop !627

76:                                               ; preds = %67, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !prof !628 !PGOFuncName !629 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !383
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !630
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !631

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !632
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #20
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_loops() unnamed_addr #1 !prof !634 !PGOFuncName !635 {
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
  %8 = load ptr, ptr %2, align 8, !tbaa !383
  %9 = icmp eq ptr %8, null
  br i1 %9, label %134, label %10, !prof !636

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
  store ptr %15, ptr %3, align 8, !tbaa !383
  %16 = call fastcc i32 @VEC_edge_base_length(ptr noundef %15) #20
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %5) #20, !range !624
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19, !prof !637

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 1
  br label %21

21:                                               ; preds = %19, %71
  %22 = phi i32 [ 0, %19 ], [ %72, %71 ]
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !383
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 46, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !403
  %26 = load ptr, ptr %5, align 8, !tbaa !383
  %27 = call zeroext i8 @number_of_iterations_exit(ptr noundef nonnull %14, ptr noundef %26, ptr noundef nonnull %4, i8 noundef zeroext 0) #21
  %28 = icmp eq i8 %27, 0
  %29 = load ptr, ptr %11, align 8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %36, label %32, !prof !638

32:                                               ; preds = %21
  %33 = load i64, ptr %29, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 23
  br i1 %35, label %39, label %36, !prof !639

36:                                               ; preds = %32, %21
  %37 = call ptr @loop_niter_by_eval(ptr noundef nonnull %14, ptr noundef %26) #21
  %38 = load i64, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %38, %36 ], [ %33, %32 ]
  %41 = phi ptr [ %37, %36 ], [ %29, %32 ]
  %42 = and i64 %40, 65535
  %43 = icmp eq i64 %42, 23
  br i1 %43, label %44, label %57, !prof !640

44:                                               ; preds = %39
  %45 = call i32 @host_integerp(ptr noundef nonnull %41, i32 noundef 1) #21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47, !prof !641

47:                                               ; preds = %44
  %48 = add nsw i32 %25, -1
  %49 = sext i32 %48 to i64
  %50 = call i32 @compare_tree_int(ptr noundef nonnull %41, i64 noundef %49) #21
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55, !prof !642

52:                                               ; preds = %47
  %53 = call i64 @tree_low_cst(ptr noundef nonnull %41, i32 noundef 1) #21
  %54 = add nsw i64 %53, 1
  br label %64

55:                                               ; preds = %47, %44
  %56 = sext i32 %25 to i64
  br label %64

57:                                               ; preds = %39
  br i1 %20, label %58, label %71, !prof !643

58:                                               ; preds = %57
  %59 = call i64 @estimated_loop_iterations_int(ptr noundef nonnull %14, i8 noundef zeroext 0) #21
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %71, label %61, !prof !644

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
  %73 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %15, i32 noundef %72, ptr noundef nonnull %5) #20, !range !624
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %21, !prof !645, !llvm.loop !646

75:                                               ; preds = %71, %13
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #20
  %76 = call ptr @get_loop_body(ptr noundef nonnull %14) #21
  %77 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !647
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %131, label %80, !prof !637

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 3
  %82 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 2
  br label %83

83:                                               ; preds = %80, %126
  %84 = phi i64 [ 0, %80 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %85 = getelementptr inbounds ptr, ptr %76, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !383
  %87 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 8) #21
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %126, !prof !648

89:                                               ; preds = %83
  %90 = load ptr, ptr %81, align 8, !tbaa !649
  %91 = icmp eq ptr %86, %90
  br i1 %91, label %92, label %97, !prof !650

92:                                               ; preds = %89
  %93 = load ptr, ptr %82, align 8, !tbaa !451
  %94 = call ptr @find_edge(ptr noundef %86, ptr noundef %93) #21
  store ptr %94, ptr %6, align 8, !tbaa !383
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96, !prof !651

96:                                               ; preds = %92
  call void @predict_edge_def(ptr noundef nonnull %94, i32 noundef 11, i32 noundef 1) #20
  br label %126

97:                                               ; preds = %89, %92
  %98 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 7) #21
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %126, !prof !652

100:                                              ; preds = %97
  %101 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 5) #21
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %126, !prof !653

103:                                              ; preds = %100
  %104 = udiv i32 900, %16
  %105 = call i32 @llvm.umax.i32(i32 %104, i32 200)
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  %107 = call fastcc ptr @ei_start_1(ptr noundef nonnull %106) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !564
  store ptr %107, ptr %12, align 8, !tbaa.struct !565
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %6) #20, !range !396
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %126, label %110, !prof !654

110:                                              ; preds = %103, %121
  %111 = load ptr, ptr %6, align 8, !tbaa !383
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !655
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !551
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %120, label %117, !prof !656

117:                                              ; preds = %110
  %118 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %14, ptr noundef nonnull %113) #21
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %121, !prof !657

120:                                              ; preds = %117, %110
  call void @predict_edge(ptr noundef nonnull %111, i32 noundef 12, i32 noundef %105) #21
  br label %121

121:                                              ; preds = %117, %120
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %122 = load i32, ptr %7, align 8
  %123 = load ptr, ptr %12, align 8
  %124 = call fastcc zeroext i8 @ei_cond(i32 %122, ptr %123, ptr noundef nonnull %6) #20, !range !396
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %110, !prof !658, !llvm.loop !659

126:                                              ; preds = %121, %103, %97, %100, %96, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %127 = add nuw nsw i64 %84, 1
  %128 = load i32, ptr %77, align 4, !tbaa !647
  %129 = zext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %83, label %131, !prof !660, !llvm.loop !661

131:                                              ; preds = %126, %75
  call void @free(ptr noundef %76) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %132 = load ptr, ptr %2, align 8, !tbaa !383
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %13, !prof !662, !llvm.loop !663

134:                                              ; preds = %131, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_estimate_probability_bb(ptr noundef %0) unnamed_addr #1 !prof !664 !PGOFuncName !665 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !565
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #20, !range !396
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %128, label %12, !prof !666

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %123
  %15 = load ptr, ptr %2, align 8, !tbaa !383
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !655
  %18 = load ptr, ptr %13, align 8, !tbaa !604
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %88, label %20, !prof !667

20:                                               ; preds = %14
  %21 = load ptr, ptr @cfun, align 8, !tbaa !383
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !387
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !605
  %26 = icmp eq ptr %17, %25
  br i1 %26, label %88, label %27, !prof !668

27:                                               ; preds = %20
  %28 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %17) #20, !range !396
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %88, label %30, !prof !669

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @single_succ_edge(ptr noundef %17) #20
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !655
  %34 = load ptr, ptr @cfun, align 8, !tbaa !383
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !387
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !605
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %88, !prof !670

40:                                               ; preds = %30
  %41 = load ptr, ptr %16, align 8, !tbaa !655
  %42 = tail call ptr @last_stmt(ptr noundef %41) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %88, label %44, !prof !671

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %42) #20, !range !621
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %88, !prof !672

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %48 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #20, !range !396
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %74, label %50, !prof !673

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %5, i64 8
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #20
  store i32 0, ptr %5, align 8, !tbaa.struct !564
  store ptr %52, ptr %51, align 8, !tbaa.struct !565
  %53 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %4) #20, !range !396
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %87, label %55, !prof !674

55:                                               ; preds = %50, %69
  %56 = load ptr, ptr %4, align 8, !tbaa !383
  %57 = load ptr, ptr %56, align 8, !tbaa !434
  %58 = tail call zeroext i8 @predicted_by_p(ptr noundef %57, i32 noundef 26) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69, !prof !675

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !434
  %62 = tail call zeroext i8 @predicted_by_p(ptr noundef %61, i32 noundef 24) #21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69, !prof !676

64:                                               ; preds = %60
  %65 = load ptr, ptr %56, align 8, !tbaa !434
  %66 = tail call zeroext i8 @predicted_by_p(ptr noundef %65, i32 noundef 25) #21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69, !prof !677

68:                                               ; preds = %64
  tail call void @predict_edge_def(ptr noundef nonnull %56, i32 noundef 22, i32 noundef 0) #20
  br label %69

69:                                               ; preds = %55, %60, %64, %68
  call fastcc void @ei_next(ptr noundef nonnull %5) #20
  %70 = load i32, ptr %5, align 8
  %71 = load ptr, ptr %51, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %4) #20, !range !396
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %87, label %55, !prof !678, !llvm.loop !679

74:                                               ; preds = %47
  %75 = load ptr, ptr %15, align 8, !tbaa !434
  %76 = tail call zeroext i8 @predicted_by_p(ptr noundef %75, i32 noundef 26) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %87, !prof !680

78:                                               ; preds = %74
  %79 = load ptr, ptr %15, align 8, !tbaa !434
  %80 = tail call zeroext i8 @predicted_by_p(ptr noundef %79, i32 noundef 24) #21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87, !prof !681

82:                                               ; preds = %78
  %83 = load ptr, ptr %15, align 8, !tbaa !434
  %84 = tail call zeroext i8 @predicted_by_p(ptr noundef %83, i32 noundef 25) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87, !prof !682

86:                                               ; preds = %82
  tail call void @predict_edge_def(ptr noundef nonnull %15, i32 noundef 22, i32 noundef 0) #20
  br label %87

87:                                               ; preds = %69, %50, %74, %78, %82, %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %88

88:                                               ; preds = %87, %44, %40, %30, %27, %20, %14
  %89 = load ptr, ptr %16, align 8, !tbaa !655
  %90 = load ptr, ptr @cfun, align 8, !tbaa !383
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !387
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !605
  %95 = icmp eq ptr %89, %94
  %96 = icmp eq ptr %89, %0
  %97 = or i1 %96, %95
  br i1 %97, label %123, label %98, !prof !683

98:                                               ; preds = %88
  %99 = load ptr, ptr %15, align 8, !tbaa !434
  %100 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %89, ptr noundef %99) #21
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %123, label %102, !prof !684

102:                                              ; preds = %98
  %103 = load ptr, ptr %15, align 8, !tbaa !434
  %104 = load ptr, ptr %16, align 8, !tbaa !655
  %105 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %103, ptr noundef %104) #21
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %123, !prof !685

107:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %108 = load ptr, ptr %16, align 8, !tbaa !655
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %108) #20
  %109 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !396
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %122, !prof !686

111:                                              ; preds = %107, %119
  %112 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20
  %113 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %112) #20, !range !396
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115, !prof !687

115:                                              ; preds = %111
  %116 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %112) #21
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %119, label %118, !prof !688

118:                                              ; preds = %115
  tail call void @predict_edge_def(ptr noundef nonnull %15, i32 noundef 21, i32 noundef 0) #20
  br label %122

119:                                              ; preds = %115, %111
  call fastcc void @gsi_next(ptr noundef nonnull %6) #20
  %120 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !396
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %111, label %122, !prof !689, !llvm.loop !690

122:                                              ; preds = %119, %107, %118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  br label %123

123:                                              ; preds = %88, %98, %102, %122
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %124 = load i32, ptr %3, align 8
  %125 = load ptr, ptr %9, align 8
  %126 = call fastcc zeroext i8 @ei_cond(i32 %124, ptr %125, ptr noundef nonnull %2) #20, !range !396
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %14, !prof !691, !llvm.loop !692

128:                                              ; preds = %123, %1
  tail call fastcc void @tree_predict_by_opcode(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_predictions_for_bb(ptr noundef %0) unnamed_addr #1 !prof !664 !PGOFuncName !693 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !565
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !396
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9, !prof !666

9:                                                ; preds = %1, %25
  %10 = phi ptr [ %28, %25 ], [ null, %1 ]
  %11 = phi ptr [ %27, %25 ], [ null, %1 ]
  %12 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !512
  %16 = and i32 %15, 24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25, !prof !694

18:                                               ; preds = %9
  %19 = add nsw i32 %12, 1
  %20 = icmp eq ptr %11, null
  %21 = icmp ne ptr %10, null
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, ptr %10, ptr %13, !prof !695
  %24 = select i1 %20, ptr %13, ptr %11, !prof !696
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi i32 [ %12, %9 ], [ %19, %18 ]
  %27 = phi ptr [ %11, %9 ], [ %24, %18 ]
  %28 = phi ptr [ %10, %9 ], [ %23, %18 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %29 = load i32, ptr %3, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %2) #20, !range !396
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %9, !prof !691, !llvm.loop !697

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, 2
  br i1 %34, label %48, label %35, !prof !698

35:                                               ; preds = %1, %33
  %36 = phi i32 [ %26, %33 ], [ 0, %1 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !393
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41, !prof !699

40:                                               ; preds = %35
  tail call fastcc void @set_even_probabilities(ptr noundef nonnull %0) #20
  br label %41

41:                                               ; preds = %40, %35
  tail call fastcc void @clear_bb_predictions(ptr noundef nonnull %0) #20
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %43 = icmp eq ptr %42, null
  br i1 %43, label %182, label %44, !prof !699

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !551
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.43, i32 noundef %36, i32 noundef %46) #20
  br label %182

48:                                               ; preds = %33
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51, !prof !700

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !551
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.44, i32 noundef %53) #20
  br label %55

55:                                               ; preds = %51, %48
  %56 = load ptr, ptr @bb_predictions, align 8, !tbaa !383
  %57 = tail call ptr @pointer_map_contains(ptr noundef %56, ptr noundef %0) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %133, label %59, !prof !701

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !383
  %61 = icmp eq ptr %60, null
  br i1 %61, label %133, label %62, !prof !702

62:                                               ; preds = %59, %124
  %63 = phi ptr [ %126, %124 ], [ %60, %59 ]
  %64 = phi i32 [ %108, %124 ], [ 5000, %59 ]
  %65 = phi i32 [ %107, %124 ], [ 28, %59 ]
  %66 = phi i32 [ %125, %124 ], [ 5000, %59 ]
  %67 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !501
  %69 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !519
  %71 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !520
  %73 = icmp eq ptr %72, %27
  %74 = sub nsw i32 10000, %70
  %75 = select i1 %73, i32 %70, i32 %74, !prof !703
  %76 = icmp ugt i32 %65, %68
  br i1 %76, label %77, label %106, !prof !704

77:                                               ; preds = %62, %102
  %78 = phi ptr [ %104, %102 ], [ %60, %62 ]
  %79 = phi i32 [ %103, %102 ], [ %75, %62 ]
  %80 = icmp eq ptr %78, %63
  br i1 %80, label %102, label %81, !prof !705

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.edge_prediction, ptr %78, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !501
  %84 = icmp eq i32 %83, %68
  br i1 %84, label %85, label %102, !prof !706

85:                                               ; preds = %81
  %86 = icmp slt i32 %75, 5000
  %87 = getelementptr inbounds %struct.edge_prediction, ptr %78, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !520
  %89 = icmp eq ptr %88, %27
  %90 = select i1 %89, i32 %70, i32 %74, !prof !707
  %91 = icmp sgt i32 %90, 4999
  %92 = xor i1 %86, %91
  br i1 %92, label %93, label %106, !prof !708

93:                                               ; preds = %85
  %94 = icmp sgt i32 %75, 4999
  %95 = icmp slt i32 %75, 5001
  %96 = icmp sgt i32 %90, %75
  %97 = and i1 %94, %96
  %98 = icmp slt i32 %90, %75
  %99 = and i1 %95, %98
  %100 = or i1 %97, %99
  br i1 %100, label %101, label %102, !prof !709

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %93, %101, %77, %81
  %103 = phi i32 [ %79, %81 ], [ %79, %77 ], [ %90, %101 ], [ %79, %93 ]
  %104 = load ptr, ptr %78, align 8, !tbaa !383
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %77, !prof !710, !llvm.loop !711

106:                                              ; preds = %85, %102, %62
  %107 = phi i32 [ %65, %62 ], [ %65, %85 ], [ %68, %102 ]
  %108 = phi i32 [ %64, %62 ], [ %64, %85 ], [ %103, %102 ]
  %109 = mul nsw i32 %75, %66
  %110 = sub nsw i32 10000, %66
  %111 = sub nsw i32 10000, %75
  %112 = mul nsw i32 %111, %110
  %113 = add nsw i32 %112, %109
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115, !prof !712

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
  %126 = load ptr, ptr %63, align 8, !tbaa !383
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %62, !prof !713, !llvm.loop !714

128:                                              ; preds = %124
  %129 = zext nneg i32 %107 to i64
  %130 = lshr i64 536862991, %129
  %131 = and i64 %130, 1
  %132 = icmp ne i64 %131, 0
  br i1 %61, label %133, label %139, !prof !609

133:                                              ; preds = %59, %55, %128
  %134 = phi i1 [ %132, %128 ], [ true, %55 ], [ true, %59 ]
  %135 = phi i32 [ %108, %128 ], [ 5000, %55 ], [ 5000, %59 ]
  %136 = phi i32 [ %107, %128 ], [ 28, %55 ], [ 28, %59 ]
  %137 = phi i32 [ %125, %128 ], [ 5000, %55 ], [ 5000, %59 ]
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !383
  tail call fastcc void @dump_prediction(ptr noundef %138, i32 noundef 3, i32 noundef %137, ptr noundef %0, i32 noundef 1) #20
  br label %145

139:                                              ; preds = %128
  %140 = xor i1 %132, true
  %141 = zext i1 %140 to i32
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %143 = trunc i64 %131 to i32
  tail call fastcc void @dump_prediction(ptr noundef %142, i32 noundef 1, i32 noundef %125, ptr noundef %0, i32 noundef %143) #20
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !383
  tail call fastcc void @dump_prediction(ptr noundef %144, i32 noundef 2, i32 noundef %108, ptr noundef %0, i32 noundef %141) #20
  br label %145

145:                                              ; preds = %139, %133
  %146 = phi i1 [ %132, %139 ], [ %134, %133 ]
  %147 = phi i32 [ %108, %139 ], [ %135, %133 ]
  %148 = phi i32 [ %107, %139 ], [ %136, %133 ]
  %149 = phi i32 [ %125, %139 ], [ %137, %133 ]
  %150 = select i1 %146, i32 %149, i32 %147, !prof !715
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !383
  tail call fastcc void @dump_prediction(ptr noundef %151, i32 noundef 0, i32 noundef %150, ptr noundef %0, i32 noundef 1) #20
  br i1 %58, label %174, label %152, !prof !701

152:                                              ; preds = %145
  %153 = load ptr, ptr %57, align 8, !tbaa !383
  %154 = icmp eq ptr %153, null
  br i1 %154, label %174, label %155, !prof !702

155:                                              ; preds = %152, %155
  %156 = phi ptr [ %172, %155 ], [ %153, %152 ]
  %157 = getelementptr inbounds %struct.edge_prediction, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !501
  %159 = getelementptr inbounds %struct.edge_prediction, ptr %156, i64 0, i32 3
  %160 = load i32, ptr %159, align 4, !tbaa !519
  %161 = getelementptr inbounds %struct.edge_prediction, ptr %156, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !520
  %163 = load ptr, ptr %4, align 8, !tbaa !516
  %164 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %163, i32 noundef 0) #20
  %165 = icmp eq ptr %162, %164
  %166 = sub nsw i32 10000, %160
  %167 = select i1 %165, i32 %160, i32 %166, !prof !703
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %169 = icmp eq i32 %148, %158
  %170 = or i1 %146, %169
  %171 = zext i1 %170 to i32
  tail call fastcc void @dump_prediction(ptr noundef %168, i32 noundef %158, i32 noundef %167, ptr noundef %0, i32 noundef %171) #20
  %172 = load ptr, ptr %156, align 8, !tbaa !383
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %155, !prof !713, !llvm.loop !716

174:                                              ; preds = %155, %152, %145
  tail call fastcc void @clear_bb_predictions(ptr noundef %0) #20
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %176 = load i64, ptr %175, align 8, !tbaa !393
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182, !prof !700

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 8
  store i32 %150, ptr %179, align 4, !tbaa !435
  %180 = sub nsw i32 10000, %150
  %181 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 8
  store i32 %180, ptr %181, align 4, !tbaa !435
  br label %182

182:                                              ; preds = %174, %178, %41, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_bb_frequencies() local_unnamed_addr #1 !prof !717 {
  %1 = alloca %struct.sreal, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !383
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !387
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !390
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14, !prof !718

11:                                               ; preds = %0
  %12 = tail call i32 @counts_to_freqs() #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %110

14:                                               ; preds = %11, %0
  %15 = load i1, ptr @estimate_bb_frequencies.real_values_initialized, align 4
  br i1 %15, label %24, label %16, !prof !719

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
  %26 = load ptr, ptr @cfun, align 8, !tbaa !383
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !387
  %29 = load ptr, ptr %28, align 8, !tbaa !515
  %30 = tail call fastcc ptr @single_succ_edge(ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 10000, ptr %31, align 4, !tbaa !435
  tail call void @alloc_aux_for_blocks(i32 noundef 32) #21
  tail call void @alloc_aux_for_edges(i32 noundef 24) #21
  %32 = load ptr, ptr @cfun, align 8, !tbaa !383
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !387
  %35 = load ptr, ptr %34, align 8, !tbaa !383
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37, !prof !720

37:                                               ; preds = %24
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  br label %39

39:                                               ; preds = %37, %59
  %40 = phi ptr [ %35, %37 ], [ %61, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  store ptr %42, ptr %38, align 8, !tbaa.struct !565
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %2) #20, !range !396
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45, !prof !721

45:                                               ; preds = %39, %45
  %46 = load ptr, ptr %2, align 8, !tbaa !383
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !722
  %49 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !435
  %51 = sext i32 %50 to i64
  %52 = tail call ptr @sreal_init(ptr noundef %48, i64 noundef %51, i32 noundef 0) #21
  %53 = load ptr, ptr %47, align 8, !tbaa !722
  %54 = tail call ptr @sreal_mul(ptr noundef %53, ptr noundef %53, ptr noundef nonnull @real_inv_br_prob_base) #21
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %55 = load i32, ptr %3, align 8
  %56 = load ptr, ptr %38, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %2) #20, !range !396
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %45, !prof !723, !llvm.loop !724

59:                                               ; preds = %45, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !383
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %39, !prof !725, !llvm.loop !726

63:                                               ; preds = %59, %24
  tail call fastcc void @estimate_loops() #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %64 = load ptr, ptr @cfun, align 8, !tbaa !383
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !387
  %67 = load ptr, ptr %66, align 8, !tbaa !515
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !604
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !605
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %90, label %73, !prof !720

73:                                               ; preds = %63, %81
  %74 = phi ptr [ %83, %81 ], [ %69, %63 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !727
  %77 = call i32 @sreal_compare(ptr noundef nonnull %1, ptr noundef %76) #21
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81, !prof !728

79:                                               ; preds = %73
  %80 = load ptr, ptr %75, align 8, !tbaa !727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false)
  br label %81

81:                                               ; preds = %73, %79
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !604
  %84 = load ptr, ptr @cfun, align 8, !tbaa !383
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !387
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !605
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %90, label %73, !prof !729, !llvm.loop !730

90:                                               ; preds = %81, %63
  %91 = call ptr @sreal_div(ptr noundef nonnull %1, ptr noundef nonnull @real_bb_freq_max, ptr noundef nonnull %1) #21
  %92 = load ptr, ptr @cfun, align 8, !tbaa !383
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !387
  %95 = load ptr, ptr %94, align 8, !tbaa !383
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97, !prof !720

97:                                               ; preds = %90, %97
  %98 = phi ptr [ %107, %97 ], [ %95, %90 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !727
  %101 = call ptr @sreal_mul(ptr noundef nonnull %4, ptr noundef %100, ptr noundef nonnull %1) #21
  %102 = call ptr @sreal_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @real_one_half) #21
  %103 = call i64 @sreal_to_int(ptr noundef nonnull %4) #21
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 11
  store i32 %104, ptr %105, align 8, !tbaa !397
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !383
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %97, !prof !725, !llvm.loop !731

109:                                              ; preds = %97, %90
  call void @free_aux_for_blocks() #21
  call void @free_aux_for_edges() #21
  br label %110

110:                                              ; preds = %109, %11
  call void @compute_function_frequency() #20
  %111 = load i32, ptr @flag_reorder_functions, align 4, !tbaa !408
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113, !prof !718

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @apply_return_prediction() unnamed_addr #1 !prof !602 !PGOFuncName !732 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !383
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !605
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !565
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %1) #20, !range !396
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13, !prof !612

13:                                               ; preds = %0, %21
  %14 = load ptr, ptr %1, align 8, !tbaa !383
  %15 = load ptr, ptr %14, align 8, !tbaa !434
  %16 = tail call ptr @last_stmt(ptr noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !733

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %16) #20, !range !621
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %26, label %21, !prof !613

21:                                               ; preds = %13, %18
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #20, !range !396
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !prof !614, !llvm.loop !734

26:                                               ; preds = %21, %18, %0
  %27 = phi ptr [ null, %0 ], [ %16, %18 ], [ %16, %21 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !383
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30, !prof !735

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_return_retval(ptr noundef %27) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33, !prof !736

33:                                               ; preds = %30
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %80, !prof !737

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !425
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41, !prof !738

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %39) #20, !range !621
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %80, !prof !739

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef nonnull %39) #20
  %46 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef 0) #20
  %47 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %48 = call fastcc i32 @return_prediction(ptr noundef %47, ptr noundef nonnull %2) #20, !range !740
  %49 = icmp sgt i32 %45, 1
  br i1 %49, label %50, label %59, !prof !741

50:                                               ; preds = %44, %56
  %51 = phi i32 [ %57, %56 ], [ 1, %44 ]
  %52 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef %51) #20
  %53 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %52) #20
  %54 = call fastcc i32 @return_prediction(ptr noundef %53, ptr noundef nonnull %2) #20, !range !740
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %59, !prof !742

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %45
  br i1 %58, label %80, label %50, !prof !743, !llvm.loop !744

59:                                               ; preds = %50, %44
  %60 = phi i32 [ 1, %44 ], [ %51, %50 ]
  %61 = icmp ne i32 %60, %45
  %62 = icmp sgt i32 %45, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %80, !prof !745

64:                                               ; preds = %59
  %65 = zext nneg i32 %45 to i64
  br label %66

66:                                               ; preds = %64, %77
  %67 = phi i64 [ 0, %64 ], [ %78, %77 ]
  %68 = trunc i64 %67 to i32
  %69 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef %68) #20
  %70 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %69) #20
  %71 = call fastcc i32 @return_prediction(ptr noundef %70, ptr noundef nonnull %2) #20, !range !740
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %77, label %73, !prof !746

73:                                               ; preds = %66
  %74 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef nonnull %39, i64 noundef %67) #20
  %75 = load ptr, ptr %74, align 8, !tbaa !434
  %76 = load i32, ptr %2, align 4, !tbaa !408
  tail call fastcc void @predict_paths_leading_to(ptr noundef %75, i32 noundef %71, i32 noundef %76) #20
  br label %77

77:                                               ; preds = %66, %73
  %78 = add nuw nsw i64 %67, 1
  %79 = icmp eq i64 %78, %65
  br i1 %79, label %80, label %66, !prof !747, !llvm.loop !748

80:                                               ; preds = %56, %77, %59, %33, %37, %41, %30, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !749 !PGOFuncName !750 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !751
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !753
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !754
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !755 !PGOFuncName !756 {
  %2 = load ptr, ptr %0, align 8, !tbaa !751
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !757 !PGOFuncName !758 {
  %2 = load ptr, ptr %0, align 8, !tbaa !751
  %3 = load ptr, ptr %2, align 8, !tbaa !759
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !761 !PGOFuncName !762 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !621
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_paths_leading_to(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !763 !PGOFuncName !764 {
  tail call fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %0, i32 noundef %1, i32 noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !765 !PGOFuncName !766 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !767

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !768 !PGOFuncName !769 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_predictor(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !770 !PGOFuncName !771 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 32767
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_outcome(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !770 !PGOFuncName !772 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 31
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #12 !prof !773 !PGOFuncName !774 {
  %2 = load ptr, ptr %0, align 8, !tbaa !751
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !775
  store ptr %4, ptr %0, align 8, !tbaa !751
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 !prof !776 !PGOFuncName !777 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !778 !PGOFuncName !779 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !425
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @return_prediction(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !780 !PGOFuncName !781 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4, !prof !782

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !425
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %34 [
    i16 10, label %9
    i16 12, label %9
    i16 6, label %12
    i16 7, label %12
    i16 8, label %12
  ], !prof !783

9:                                                ; preds = %4, %4
  %10 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %31, !prof !784

12:                                               ; preds = %4, %4, %4
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %21, !prof !785

16:                                               ; preds = %12
  %17 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %0) #21
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19, !prof !786

19:                                               ; preds = %16
  %20 = load i64, ptr %0, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i64 [ %20, %19 ], [ %13, %12 ]
  %23 = and i64 %22, 131072
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !787

25:                                               ; preds = %21
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34, !prof !788

28:                                               ; preds = %25
  %29 = tail call i32 @integer_onep(ptr noundef nonnull %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34, !prof !789

31:                                               ; preds = %28, %16, %9
  %32 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 1, %28 ]
  %33 = phi i32 [ 26, %9 ], [ 25, %16 ], [ 24, %28 ]
  store i32 %32, ptr %1, align 4, !tbaa !408
  br label %34

34:                                               ; preds = %31, %9, %21, %25, %28, %4, %2
  %35 = phi i32 [ 3, %2 ], [ 3, %4 ], [ 3, %28 ], [ 3, %25 ], [ 3, %21 ], [ 3, %9 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !790 !PGOFuncName !791 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !792
  %4 = load ptr, ptr %3, align 8, !tbaa !383
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !790 !PGOFuncName !794 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !795 !PGOFuncName !796 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !797
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !798 !PGOFuncName !799 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !396
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !800

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !383
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !798 !PGOFuncName !801 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !621
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !798 !PGOFuncName !802 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !803
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !800

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !798 !PGOFuncName !804 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !621
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !798 !PGOFuncName !805 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !408
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !790 !PGOFuncName !806 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !425
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !807

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3103, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !808 !PGOFuncName !809 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !749 !PGOFuncName !810 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !811
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !812

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !813

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !814
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !749 !PGOFuncName !816 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !813

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !817
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 !prof !819 !PGOFuncName !820 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !564
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !565
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %5) #20, !range !396
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11, !prof !821

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, %0
  br label %13

13:                                               ; preds = %11, %28
  %14 = load ptr, ptr %5, align 8, !tbaa !383
  %15 = load ptr, ptr %14, align 8, !tbaa !434
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !551
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %28, !prof !822

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %15, ptr noundef %1) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28, !prof !823

22:                                               ; preds = %19
  br i1 %12, label %27, label %23, !prof !824

23:                                               ; preds = %22
  %24 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %0, ptr noundef %1) #21
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27, !prof !825

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
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %5) #20, !range !396
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %13, !prof !826, !llvm.loop !827

33:                                               ; preds = %28, %4
  %34 = tail call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !828

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %33 ]
  tail call fastcc void @predict_paths_for_bb(ptr noundef nonnull %37, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %38 = tail call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !prof !829, !llvm.loop !830

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
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !765 !PGOFuncName !831 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !634 !PGOFuncName !832 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !833
  %4 = load ptr, ptr @cfun, align 8, !tbaa !383
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !630
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !835

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !836
  store ptr null, ptr %1, align 8, !tbaa !383
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !836
  %12 = load ptr, ptr @cfun, align 8, !tbaa !383
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !630
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !837
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !838
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !839

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !836
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #20
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !458
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !840

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !462
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !841

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !842, !llvm.loop !843

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !844 !PGOFuncName !845 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !846

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !524
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !847

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !383
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !383
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
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !848 !PGOFuncName !849 {
  %2 = load ptr, ptr %0, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !651

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !383
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
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !850 !PGOFuncName !851 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !833
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !836
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #20, !range !624
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !852

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !833
  %13 = load i32, ptr %3, align 4, !tbaa !408
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #20
  store ptr %14, ptr %1, align 8, !tbaa !383
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !651, !llvm.loop !853

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #20
  store ptr null, ptr %1, align 8, !tbaa !383
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !634 !PGOFuncName !854 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 !prof !848 !PGOFuncName !855 {
  %3 = load i32, ptr %0, align 4, !tbaa !856
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !856
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !408
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !850 !PGOFuncName !858 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !859

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !856
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !839

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !408
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !408
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 !prof !848 !PGOFuncName !860 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !383
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !630
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !632
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !634 !PGOFuncName !861 {
  %2 = load ptr, ptr %0, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !835

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !383
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_predict_by_opcode(ptr noundef %0) unnamed_addr #1 !prof !664 !PGOFuncName !862 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call ptr @last_stmt(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %127, label %6, !prof !863

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #20, !range !621
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %127, !prof !864

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !564
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !565
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %2) #20, !range !396
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15, !prof !865

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %2, align 8, !tbaa !383
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !512
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26, !prof !866

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %2) #20, !range !396
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !prof !867, !llvm.loop !868

26:                                               ; preds = %21, %15, %9
  %27 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %4) #20
  %28 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %4) #20
  %29 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %4) #20, !range !869
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !425
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !383
  %34 = tail call fastcc ptr @expr_expected_value_1(ptr noundef %33, ptr noundef %27, i32 noundef %29, ptr noundef %28, ptr noundef %32) #20
  tail call void @bitmap_obstack_free(ptr noundef %32) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36, !prof !870

36:                                               ; preds = %26
  %37 = tail call i32 @integer_zerop(ptr noundef nonnull %34) #21
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %2, align 8, !tbaa !383
  br i1 %38, label %41, label %40, !prof !871

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
  ], !prof !872

45:                                               ; preds = %42, %42
  %46 = trunc i32 %29 to i16
  switch i16 %46, label %127 [
    i16 101, label %47
    i16 102, label %49
  ], !prof !873

47:                                               ; preds = %45
  %48 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %48, i32 noundef 14, i32 noundef 0) #20
  br label %127

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8, !tbaa !383
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
  ], !prof !874

53:                                               ; preds = %51, %51
  switch i16 %44, label %60 [
    i16 9, label %127
    i16 13, label %54
    i16 14, label %54
  ], !prof !875

54:                                               ; preds = %53, %53
  %55 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !425
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 9
  br i1 %59, label %127, label %60

60:                                               ; preds = %53, %54
  %61 = tail call i32 @integer_zerop(ptr noundef nonnull %27) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %127, !prof !876

63:                                               ; preds = %60
  %64 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %127, !prof !877

66:                                               ; preds = %63
  %67 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %67, i32 noundef 19, i32 noundef 0) #20
  br label %127

68:                                               ; preds = %51, %51
  switch i16 %44, label %75 [
    i16 9, label %127
    i16 13, label %69
    i16 14, label %69
  ], !prof !878

69:                                               ; preds = %68, %68
  %70 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !425
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 9
  br i1 %74, label %127, label %75

75:                                               ; preds = %68, %69
  %76 = tail call i32 @integer_zerop(ptr noundef nonnull %27) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %127, !prof !879

78:                                               ; preds = %75
  %79 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %127, !prof !880

81:                                               ; preds = %78
  %82 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %82, i32 noundef 19, i32 noundef 1) #20
  br label %127

83:                                               ; preds = %51
  %84 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %84, i32 noundef 20, i32 noundef 1) #20
  br label %127

85:                                               ; preds = %51
  %86 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %86, i32 noundef 20, i32 noundef 0) #20
  br label %127

87:                                               ; preds = %51, %51
  %88 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105, !prof !881

90:                                               ; preds = %87
  %91 = tail call i32 @integer_onep(ptr noundef %28) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105, !prof !882

93:                                               ; preds = %90
  %94 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105, !prof !883

96:                                               ; preds = %93
  %97 = tail call i32 @real_zerop(ptr noundef %28) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105, !prof !883

99:                                               ; preds = %96
  %100 = tail call i32 @real_onep(ptr noundef %28) #21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105, !prof !883

102:                                              ; preds = %99
  %103 = tail call i32 @real_minus_onep(ptr noundef %28) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %127, label %105, !prof !883

105:                                              ; preds = %102, %99, %96, %93, %90, %87
  %106 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %106, i32 noundef 18, i32 noundef 0) #20
  br label %127

107:                                              ; preds = %51, %51
  %108 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125, !prof !884

110:                                              ; preds = %107
  %111 = tail call i32 @integer_onep(ptr noundef %28) #21
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %125, !prof !885

113:                                              ; preds = %110
  %114 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125, !prof !886

116:                                              ; preds = %113
  %117 = tail call i32 @real_zerop(ptr noundef %28) #21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125, !prof !887

119:                                              ; preds = %116
  %120 = tail call i32 @real_onep(ptr noundef %28) #21
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125, !prof !887

122:                                              ; preds = %119
  %123 = tail call i32 @real_minus_onep(ptr noundef %28) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !887

125:                                              ; preds = %122, %119, %116, %113, %110, %107
  %126 = load ptr, ptr %2, align 8, !tbaa !383
  tail call void @predict_edge_def(ptr noundef %126, i32 noundef 18, i32 noundef 1) #20
  br label %127

127:                                              ; preds = %49, %47, %51, %122, %125, %102, %105, %69, %75, %78, %81, %54, %60, %63, %66, %85, %83, %45, %53, %68, %40, %41, %1, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !888 !PGOFuncName !889 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !888 !PGOFuncName !890 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !888 !PGOFuncName !891 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expr_expected_value_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 !prof !892 !PGOFuncName !893 {
  br label %6

6:                                                ; preds = %60, %5
  %7 = phi ptr [ %0, %5 ], [ %63, %60 ]
  %8 = phi ptr [ %1, %5 ], [ %64, %60 ]
  %9 = phi i32 [ %2, %5 ], [ %65, %60 ]
  %10 = phi ptr [ %3, %5 ], [ %66, %60 ]
  %11 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %9) #20, !range !621
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %109 [
    i8 3, label %13
    i8 1, label %88
    i8 2, label %100
  ], !prof !894

13:                                               ; preds = %6
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 131072
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %109, !prof !895

17:                                               ; preds = %13
  %18 = icmp eq i32 %9, 141
  br i1 %18, label %19, label %109, !prof !896

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !425
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %23) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %109, !prof !897

26:                                               ; preds = %19
  %27 = load i32, ptr %22, align 8, !tbaa !425
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %27) #21
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !621
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %54, !prof !898

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %21) #20
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %109, !prof !899

34:                                               ; preds = %31, %50
  %35 = phi i32 [ %52, %50 ], [ 0, %31 ]
  %36 = phi ptr [ %51, %50 ], [ null, %31 ]
  %37 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %21, i32 noundef %35) #20
  %38 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %37) #20
  %39 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #20
  %40 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %39) #20
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %50, label %42, !prof !900

42:                                               ; preds = %34
  %43 = tail call fastcc ptr @expr_expected_value(ptr noundef %38, ptr noundef %4) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %109, label %45, !prof !901

45:                                               ; preds = %42
  %46 = icmp eq ptr %36, null
  br i1 %46, label %50, label %47, !prof !902

47:                                               ; preds = %45
  %48 = tail call i32 @operand_equal_p(ptr noundef nonnull %36, ptr noundef nonnull %43, i32 noundef 0) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %109, label %50, !prof !903

50:                                               ; preds = %34, %45, %47
  %51 = phi ptr [ %36, %47 ], [ %43, %45 ], [ %36, %34 ]
  %52 = add nuw nsw i32 %35, 1
  %53 = icmp eq i32 %52, %32
  br i1 %53, label %109, label %34, !prof !904, !llvm.loop !905

54:                                               ; preds = %26
  %55 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %21) #20, !range !396
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %67, label %57, !prof !906

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %59 = icmp eq ptr %58, %8
  br i1 %59, label %60, label %109, !prof !907

60:                                               ; preds = %57
  %61 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !425
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %65 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !869
  %66 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  br label %6

67:                                               ; preds = %54
  %68 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %21) #20, !range !396
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %109, label %70, !prof !908

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %21) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %109, label %73, !prof !909

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %71, i64 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 8191
  %77 = icmp eq i32 %76, 6590
  br i1 %77, label %78, label %109, !prof !910

78:                                               ; preds = %73
  %79 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %21) #20
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %109, !prof !911

81:                                               ; preds = %78
  %82 = tail call fastcc ptr @gimple_call_arg(ptr noundef %21, i32 noundef 0) #20
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 131072
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %109, !prof !911

86:                                               ; preds = %81
  %87 = tail call fastcc ptr @gimple_call_arg(ptr noundef %21, i32 noundef 1) #20
  br label %109

88:                                               ; preds = %6
  %89 = tail call fastcc ptr @expr_expected_value(ptr noundef %8, ptr noundef %4) #20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91, !prof !912

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @expr_expected_value(ptr noundef %10, ptr noundef %4) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %109, label %94, !prof !913

94:                                               ; preds = %91
  %95 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %7, ptr noundef nonnull %89, ptr noundef nonnull %92) #21
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 131072
  %98 = icmp eq i64 %97, 0
  %99 = select i1 %98, ptr null, ptr %95, !prof !914
  br label %109

100:                                              ; preds = %6
  %101 = tail call fastcc ptr @expr_expected_value(ptr noundef %8, ptr noundef %4) #20
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103, !prof !915

103:                                              ; preds = %100
  %104 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %7, ptr noundef nonnull %101) #21
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 131072
  %107 = icmp eq i64 %106, 0
  %108 = select i1 %107, ptr null, ptr %104
  br label %109

109:                                              ; preds = %6, %57, %19, %17, %13, %50, %42, %47, %31, %86, %78, %81, %70, %67, %73, %100, %103, %88, %91, %94
  %110 = phi ptr [ null, %88 ], [ null, %91 ], [ %99, %94 ], [ null, %100 ], [ %108, %103 ], [ null, %73 ], [ null, %67 ], [ %82, %81 ], [ null, %78 ], [ %87, %86 ], [ null, %70 ], [ null, %31 ], [ %51, %50 ], [ null, %42 ], [ null, %47 ], [ null, %6 ], [ null, %57 ], [ null, %19 ], [ null, %17 ], [ %8, %13 ]
  ret ptr %110
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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 !prof !916 !PGOFuncName !917 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !425
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !918 !PGOFuncName !919 {
  %2 = load ptr, ptr %0, align 8, !tbaa !383
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #10 !prof !918 !PGOFuncName !920 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expr_expected_value(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !921 !PGOFuncName !922 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16, !prof !923

9:                                                ; preds = %2
  call void @extract_ops_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !425
  %12 = load ptr, ptr %4, align 8, !tbaa !383
  %13 = load i32, ptr %3, align 4, !tbaa !408
  %14 = load ptr, ptr %5, align 8, !tbaa !383
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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !924 !PGOFuncName !925 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !621
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !926 !PGOFuncName !927 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !928 !PGOFuncName !929 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !930 !PGOFuncName !931 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !869
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !621
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !932

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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !930 !PGOFuncName !933 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !934

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !935 !PGOFuncName !936 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !937 !PGOFuncName !938 {
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
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !930 !PGOFuncName !939 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !621
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !940

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !941 !PGOFuncName !942 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !425
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_bb_predictions(ptr noundef %0) unnamed_addr #1 !prof !664 !PGOFuncName !943 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !383
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !944

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !383
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !945

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !518
  tail call void @free(ptr noundef nonnull %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !prof !946, !llvm.loop !947

12:                                               ; preds = %8, %5
  store ptr null, ptr %3, align 8, !tbaa !383
  br label %13

13:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @counts_to_freqs() local_unnamed_addr #15 !prof !398 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !383
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !387
  %4 = load ptr, ptr %3, align 8, !tbaa !383
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !393
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %8)
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !383
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !948

15:                                               ; preds = %6
  %16 = tail call i64 @llvm.smax.i64(i64 %11, i64 1)
  br i1 %5, label %31, label %17

17:                                               ; preds = %15
  %18 = lshr i64 %16, 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %4, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !393
  %23 = mul nsw i64 %22, 10000
  %24 = add nsw i64 %23, %18
  %25 = sdiv i64 %24, %16
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 11
  store i32 %26, ptr %27, align 8, !tbaa !397
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !383
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !949

31:                                               ; preds = %19, %0, %15
  %32 = phi i64 [ %11, %15 ], [ 0, %0 ], [ %11, %19 ]
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expensive_function_p(i32 noundef %0) local_unnamed_addr #1 !prof !950 {
  %2 = icmp slt i32 %0, 10001
  br i1 %2, label %4, label %3, !prof !951

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2047, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !383
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !387
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !397
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %12, !prof !952

12:                                               ; preds = %4
  %13 = mul nsw i32 %10, %0
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !604
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !605
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %64, label %31, !prof !953

19:                                               ; preds = %54
  %20 = load ptr, ptr @cfun, align 8, !tbaa !383
  br label %21

21:                                               ; preds = %19, %31
  %22 = phi ptr [ %32, %31 ], [ %20, %19 ]
  %23 = phi i32 [ %34, %31 ], [ %55, %19 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !604
  %26 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !387
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !605
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %64, label %31, !prof !954

31:                                               ; preds = %12, %21
  %32 = phi ptr [ %22, %21 ], [ %5, %12 ]
  %33 = phi ptr [ %25, %21 ], [ %15, %12 ]
  %34 = phi i32 [ %23, %21 ], [ 0, %12 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !425
  %37 = load ptr, ptr %36, align 8, !tbaa !425
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !495
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !425
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %21, label %43, !prof !955

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 11
  br label %45

45:                                               ; preds = %43, %54
  %46 = phi ptr [ %37, %43 ], [ %57, %54 ]
  %47 = phi i32 [ %34, %43 ], [ %55, %54 ]
  %48 = tail call i32 @active_insn_p(ptr noundef %46) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !956

50:                                               ; preds = %45
  %51 = load i32, ptr %44, align 8, !tbaa !397
  %52 = add i32 %51, %47
  %53 = icmp ugt i32 %52, %13
  br i1 %53, label %64, label %54, !prof !957

54:                                               ; preds = %45, %50
  %55 = phi i32 [ %52, %50 ], [ %47, %45 ]
  %56 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !425
  %58 = load ptr, ptr %35, align 8, !tbaa !425
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !495
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !425
  %63 = icmp eq ptr %57, %62
  br i1 %63, label %19, label %45, !prof !958, !llvm.loop !959

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

; Function Attrs: optsize
declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_aux_for_edges(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sreal_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_loops() unnamed_addr #1 !prof !717 !PGOFuncName !960 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %2 = tail call fastcc i32 @number_of_loops() #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %12, !prof !961

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !383
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !630
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !837
  %10 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !458
  tail call fastcc void @estimate_loops_at_level(ptr noundef %11) #20
  br label %12

12:                                               ; preds = %4, %0
  %13 = load ptr, ptr @cfun, align 8, !tbaa !383
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !387
  %16 = load ptr, ptr %15, align 8, !tbaa !383
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !720

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !551
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %21) #21
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !383
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !725, !llvm.loop !962

26:                                               ; preds = %18
  %27 = load ptr, ptr @cfun, align 8, !tbaa !383
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !387
  %30 = load ptr, ptr %29, align 8, !tbaa !515
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
define dso_local void @compute_function_frequency() local_unnamed_addr #1 !prof !717 {
  %1 = load ptr, ptr @profile_info, align 8, !tbaa !383
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3, !prof !963

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !408
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !383
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !425
  %10 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !963

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !383
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -196609
  store i32 %16, ptr %14, align 8
  br label %64

17:                                               ; preds = %6
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !383
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !425
  %21 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %20) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23, !prof !963

23:                                               ; preds = %17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !383
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -196609
  %28 = or disjoint i32 %27, 131072
  store i32 %28, ptr %25, align 8
  br label %64

29:                                               ; preds = %3
  %30 = load ptr, ptr @cfun, align 8, !tbaa !383
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -196609
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !387
  %36 = load ptr, ptr %35, align 8, !tbaa !515
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !604
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !605
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %29, %58
  %43 = phi ptr [ %59, %58 ], [ %40, %29 ]
  %44 = phi i32 [ %60, %58 ], [ %33, %29 ]
  %45 = phi ptr [ %62, %58 ], [ %38, %29 ]
  %46 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %45) #20, !range !396
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = and i32 %44, -196609
  %50 = or disjoint i32 %49, 131072
  store i32 %50, ptr %31, align 8
  br label %64

51:                                               ; preds = %42
  %52 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %45) #20, !range !396
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = and i32 %44, -196609
  %56 = or disjoint i32 %55, 65536
  store i32 %56, ptr %31, align 8
  %57 = load ptr, ptr %39, align 8, !tbaa !605
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %43, %51 ], [ %57, %54 ]
  %60 = phi i32 [ %44, %51 ], [ %56, %54 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !604
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %64, label %42, !llvm.loop !964

64:                                               ; preds = %58, %29, %12, %23, %17, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_function_section() unnamed_addr #1 !prof !717 !PGOFuncName !965 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !383
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  %4 = icmp eq ptr %3, null
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %36, !prof !966

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !425
  %11 = icmp ne ptr %10, null
  %12 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %36, label %15, !prof !967

15:                                               ; preds = %8
  %16 = load ptr, ptr @cfun, align 8, !tbaa !383
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 196608
  %20 = icmp eq i32 %19, 131072
  br i1 %20, label %21, label %28, !prof !718

21:                                               ; preds = %15
  %22 = tail call ptr @build_string(i32 noundef 9, ptr noundef nonnull @.str.46) #21
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !383
  %24 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %23, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !425
  %25 = load ptr, ptr @cfun, align 8, !tbaa !383
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 20
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %27, %21 ], [ %18, %15 ]
  %30 = and i32 %29, 196608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !718

32:                                               ; preds = %28
  %33 = tail call ptr @build_string(i32 noundef 14, ptr noundef nonnull @.str.47) #21
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !383
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %34, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !425
  br label %36

36:                                               ; preds = %0, %8, %32, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_loops_at_level(ptr noundef %0) unnamed_addr #1 !prof !968 !PGOFuncName !969 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3, !prof !970

3:                                                ; preds = %1, %29
  %4 = phi ptr [ %33, %29 ], [ %0, %1 ]
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %6 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !458
  tail call fastcc void @estimate_loops_at_level(ptr noundef %7) #20
  %8 = tail call ptr @loop_latch_edge(ptr noundef nonnull %4) #21
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !722
  %11 = getelementptr inbounds %struct.edge_info_def, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = tail call ptr @get_loop_body(ptr noundef nonnull %4) #21
  %15 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !647
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18, !prof !971

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %3 ]
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !383
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !551
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #21
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %15, align 4, !tbaa !647
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %18, label %29, !prof !972, !llvm.loop !973

29:                                               ; preds = %18, %3
  tail call void @free(ptr noundef %14) #20
  %30 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !451
  tail call fastcc void @propagate_freq(ptr noundef %31, ptr noundef %5) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #21
  %32 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %3, !prof !974, !llvm.loop !975

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_freq(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !976 !PGOFuncName !977 {
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
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #20, !range !396
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %73, label %14, !prof !978

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  br label %16

16:                                               ; preds = %14, %66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %17 = load ptr, ptr @cfun, align 8, !tbaa !383
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !387
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !979
  %22 = load i32, ptr %3, align 4, !tbaa !408
  %23 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %22) #20
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef %23) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !564
  store ptr %24, ptr %15, align 8, !tbaa.struct !565
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %4) #20, !range !396
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %66, label %27, !prof !980

27:                                               ; preds = %16, %60
  %28 = phi i32 [ %61, %60 ], [ 0, %16 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !383
  %30 = load ptr, ptr %29, align 8, !tbaa !434
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !551
  %33 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %32) #21
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36, !prof !981

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !512
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43, !prof !982

41:                                               ; preds = %36
  %42 = add nsw i32 %28, 1
  br label %60

43:                                               ; preds = %36
  %44 = load ptr, ptr @dump_file, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46, !prof !983

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !722
  %49 = getelementptr inbounds %struct.edge_info_def, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %55 = load ptr, ptr %29, align 8, !tbaa !434
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !551
  %58 = load i32, ptr %54, align 8, !tbaa !551
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.45, i32 noundef %57, i32 noundef %58) #20
  br label %60

60:                                               ; preds = %27, %43, %46, %53, %41
  %61 = phi i32 [ %28, %46 ], [ %28, %53 ], [ %28, %43 ], [ %42, %41 ], [ %28, %27 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  %62 = load i32, ptr %6, align 8
  %63 = load ptr, ptr %15, align 8
  %64 = call fastcc zeroext i8 @ei_cond(i32 %62, ptr %63, ptr noundef nonnull %4) #20, !range !396
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %27, !prof !984, !llvm.loop !985

66:                                               ; preds = %60, %16
  %67 = phi i32 [ 0, %16 ], [ %61, %60 ]
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !727
  %70 = getelementptr inbounds %struct.block_info_def, ptr %69, i64 0, i32 2
  store i32 %67, ptr %70, align 8, !tbaa !986
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %71 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #20, !range !396
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %16, !prof !989, !llvm.loop !990

73:                                               ; preds = %66, %2
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !727
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
  %81 = load ptr, ptr %80, align 8, !tbaa !727
  %82 = getelementptr inbounds %struct.block_info_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !991
  store ptr null, ptr %82, align 8, !tbaa !991
  %84 = icmp eq ptr %78, %0
  br i1 %84, label %133, label %85, !prof !992

85:                                               ; preds = %77
  %86 = call fastcc ptr @ei_start_1(ptr noundef nonnull %78) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !564
  store ptr %86, ptr %76, align 8, !tbaa.struct !565
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %4) #20, !range !396
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %120, label %89, !prof !993

89:                                               ; preds = %85, %115
  %90 = load ptr, ptr %4, align 8, !tbaa !383
  %91 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !722
  %93 = getelementptr inbounds %struct.edge_info_def, ptr %92, i64 0, i32 1
  %94 = load i8, ptr %93, align 8
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97, !prof !994

97:                                               ; preds = %89
  %98 = call ptr @sreal_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %92) #21
  br label %115

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !512
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115, !prof !995

104:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  %105 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !435
  %107 = sext i32 %106 to i64
  %108 = call ptr @sreal_init(ptr noundef nonnull %10, i64 noundef %107, i32 noundef 0) #21
  %109 = load ptr, ptr %90, align 8, !tbaa !434
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !727
  %112 = call ptr @sreal_mul(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef %111) #21
  %113 = call ptr @sreal_mul(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull @real_inv_br_prob_base) #21
  %114 = call ptr @sreal_add(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %115

115:                                              ; preds = %97, %104, %99
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %116 = load i32, ptr %7, align 8
  %117 = load ptr, ptr %76, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %4) #20, !range !396
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %89, !prof !996, !llvm.loop !997

120:                                              ; preds = %115, %85
  %121 = call i32 @sreal_compare(ptr noundef nonnull %8, ptr noundef nonnull @real_zero) #21
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125, !prof !998

123:                                              ; preds = %120
  %124 = load ptr, ptr %80, align 8, !tbaa !727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %133

125:                                              ; preds = %120
  %126 = call i32 @sreal_compare(ptr noundef nonnull %8, ptr noundef nonnull @real_almost_one) #21
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %129, !prof !999

128:                                              ; preds = %125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @real_almost_one, i64 16, i1 false)
  br label %129

129:                                              ; preds = %128, %125
  %130 = call ptr @sreal_sub(ptr noundef nonnull %8, ptr noundef nonnull @real_one, ptr noundef nonnull %8) #21
  %131 = load ptr, ptr %80, align 8, !tbaa !727
  %132 = call ptr @sreal_div(ptr noundef %131, ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  br label %133

133:                                              ; preds = %123, %129, %77
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !551
  %136 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %135) #21
  %137 = call ptr @find_edge(ptr noundef nonnull %78, ptr noundef nonnull %0) #21
  store ptr %137, ptr %4, align 8, !tbaa !383
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139, !prof !1000

139:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  %140 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 8
  %141 = load i32, ptr %140, align 4, !tbaa !435
  %142 = sext i32 %141 to i64
  %143 = call ptr @sreal_init(ptr noundef nonnull %11, i64 noundef %142, i32 noundef 0) #21
  %144 = load ptr, ptr %80, align 8, !tbaa !727
  %145 = call ptr @sreal_mul(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef %144) #21
  %146 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !722
  %148 = call ptr @sreal_mul(ptr noundef %147, ptr noundef nonnull %11, ptr noundef nonnull @real_inv_br_prob_base) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #22
  br label %149

149:                                              ; preds = %139, %133
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 1
  %151 = call fastcc ptr @ei_start_1(ptr noundef nonnull %150) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !564
  store ptr %151, ptr %76, align 8, !tbaa.struct !565
  %152 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %151, ptr noundef nonnull %4) #20, !range !396
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %186, label %154, !prof !980

154:                                              ; preds = %149, %179
  %155 = phi ptr [ %181, %179 ], [ %79, %149 ]
  %156 = phi ptr [ %180, %179 ], [ %83, %149 ]
  %157 = load ptr, ptr %4, align 8, !tbaa !383
  %158 = getelementptr inbounds %struct.edge_def, ptr %157, i64 0, i32 7
  %159 = load i32, ptr %158, align 8, !tbaa !512
  %160 = and i32 %159, 32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %179, !prof !1001

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.edge_def, ptr %157, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !655
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !727
  %167 = getelementptr inbounds %struct.block_info_def, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !986
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170, !prof !1002

170:                                              ; preds = %162
  %171 = add nsw i32 %168, -1
  store i32 %171, ptr %167, align 8, !tbaa !986
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179, !prof !1003

173:                                              ; preds = %170
  %174 = icmp eq ptr %156, null
  br i1 %174, label %179, label %175, !prof !1004

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !727
  %178 = getelementptr inbounds %struct.block_info_def, ptr %177, i64 0, i32 1
  store ptr %164, ptr %178, align 8, !tbaa !991
  br label %179

179:                                              ; preds = %175, %173, %154, %162, %170
  %180 = phi ptr [ %156, %154 ], [ %156, %170 ], [ %156, %162 ], [ %156, %175 ], [ %164, %173 ]
  %181 = phi ptr [ %155, %154 ], [ %155, %170 ], [ %155, %162 ], [ %164, %175 ], [ %164, %173 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %182 = load i32, ptr %7, align 8
  %183 = load ptr, ptr %76, align 8
  %184 = call fastcc zeroext i8 @ei_cond(i32 %182, ptr %183, ptr noundef nonnull %4) #20, !range !396
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %154, !prof !1005, !llvm.loop !1006

186:                                              ; preds = %179, %149
  %187 = phi ptr [ %83, %149 ], [ %180, %179 ]
  %188 = phi ptr [ %79, %149 ], [ %181, %179 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  %189 = icmp eq ptr %187, null
  br i1 %189, label %190, label %77, !prof !989, !llvm.loop !1007

190:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !976 !PGOFuncName !1008 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1009
  store ptr %4, ptr %0, align 8, !tbaa !1011
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1013
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1014

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1011
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1015
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1017
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !803
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1018
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !408
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !1019 !PGOFuncName !1020 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1018
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1021

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1022

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !408
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1023, !llvm.loop !1024

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !408
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !408
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1017
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1011
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1017
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1025

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !803
  store i64 %35, ptr %3, align 8, !tbaa !1018
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1026

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !408
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !408
  %40 = load i32, ptr %23, align 8, !tbaa !1017
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1017
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1027, !llvm.loop !1028

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1029
  store ptr %44, ptr %0, align 8, !tbaa !1011
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1030

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1015
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !408
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1018
  store i32 %16, ptr %1, align 4, !tbaa !408
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1031 !PGOFuncName !1032 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !383
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !1031 !PGOFuncName !1033 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1018
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1018
  %6 = load i32, ptr %1, align 4, !tbaa !408
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !408
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_predict_expr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !1034 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !383
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
define dso_local ptr @predictor_name(i32 noundef %0) local_unnamed_addr #10 !prof !398 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 16, !tbaa !575
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_estimate_probability() #17 !prof !602 !PGOFuncName !1035 {
  %1 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !408
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_estimate_probability_driver() #1 !prof !602 !PGOFuncName !1036 {
  tail call void @loop_optimizer_init(i32 noundef 0) #21
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !1037

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !408
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
  br i1 %11, label %12, label %13, !prof !603

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
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !383
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !1037

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !408
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gimple_dump_cfg(ptr noundef nonnull %15, i32 noundef %18) #21
  br label %22

22:                                               ; preds = %21, %17, %14
  %23 = load ptr, ptr @cfun, align 8, !tbaa !383
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !387
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !390
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !1037

29:                                               ; preds = %22
  store i32 1, ptr %26, align 8, !tbaa !390
  br label %30

30:                                               ; preds = %29, %22
  ret i32 0
}

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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @strip_predict_hints() #1 !prof !1038 !PGOFuncName !1039 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !383
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !387
  %6 = load ptr, ptr %5, align 8, !tbaa !515
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !604
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !605
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %49, label %12, !prof !1040

12:                                               ; preds = %0, %40
  %13 = phi ptr [ %42, %40 ], [ %8, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1041
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !396
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %40, !prof !1042

16:                                               ; preds = %12, %37
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %18 = call fastcc i32 @gimple_code(ptr noundef %17) #20, !range !621
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %36 [
    i8 33, label %20
    i8 8, label %21
  ], !prof !1043

20:                                               ; preds = %16
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %37, !llvm.loop !1044

21:                                               ; preds = %16
  %22 = call fastcc ptr @gimple_call_fndecl(ptr noundef %17) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24, !prof !1045

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_function_decl, ptr %22, i64 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8191
  %28 = icmp eq i32 %27, 6590
  br i1 %28, label %29, label %36, !prof !1046

29:                                               ; preds = %24
  %30 = call fastcc i32 @gimple_call_num_args(ptr noundef %17) #20
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36, !prof !1047

32:                                               ; preds = %29
  %33 = call fastcc ptr @gimple_call_lhs(ptr noundef %17) #20
  %34 = call fastcc ptr @gimple_call_arg(ptr noundef %17, i32 noundef 0) #20
  %35 = call ptr @gimple_build_assign_stat(ptr noundef %33, ptr noundef %34) #21
  call void @gsi_replace(ptr noundef nonnull %1, ptr noundef %35, i8 noundef zeroext 1) #21
  br label %36

36:                                               ; preds = %16, %21, %24, %29, %32
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %37

37:                                               ; preds = %36, %20
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !396
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %16, label %40, !prof !1048

40:                                               ; preds = %37, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !604
  %43 = load ptr, ptr @cfun, align 8, !tbaa !383
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !387
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !605
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %49, label %12, !prof !1049, !llvm.loop !1050

49:                                               ; preds = %40, %0
  ret i32 0
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !1051 !PGOFuncName !1052 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!381}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!36 = !{ptr @maybe_hot_bb_p, ptr @maybe_hot_count_p, i64 1}
!37 = !{ptr @maybe_hot_bb_p, ptr @maybe_hot_frequency_p, i64 11771282}
!38 = !{ptr @cgraph_maybe_hot_edge_p, ptr @lookup_attribute, i64 343650}
!39 = !{ptr @maybe_hot_edge_p, ptr @maybe_hot_count_p, i64 1}
!40 = !{ptr @maybe_hot_edge_p, ptr @maybe_hot_frequency_p, i64 232558}
!41 = !{ptr @optimize_function_for_speed_p, ptr @optimize_function_for_size_p, i64 405342}
!42 = !{ptr @optimize_bb_for_size_p, ptr @optimize_function_for_size_p, i64 10240647}
!43 = !{ptr @optimize_bb_for_size_p, ptr @maybe_hot_bb_p, i64 10240646}
!44 = !{ptr @optimize_bb_for_speed_p, ptr @optimize_bb_for_size_p, i64 9464781}
!45 = !{ptr @optimize_edge_for_size_p, ptr @optimize_function_for_size_p, i64 232559}
!46 = !{ptr @optimize_edge_for_size_p, ptr @maybe_hot_edge_p, i64 232558}
!47 = !{ptr @optimize_edge_for_speed_p, ptr @optimize_edge_for_size_p, i64 86483}
!48 = !{ptr @optimize_insn_for_size_p, ptr @optimize_function_for_size_p, i64 1619357}
!49 = !{ptr @optimize_insn_for_speed_p, ptr @optimize_insn_for_size_p, i64 675602}
!50 = !{ptr @optimize_loop_for_size_p, ptr @optimize_bb_for_size_p, i64 39995}
!51 = !{ptr @optimize_loop_for_speed_p, ptr @optimize_bb_for_speed_p, i64 77712}
!52 = !{ptr @optimize_loop_nest_for_speed_p, ptr @optimize_loop_for_speed_p, i64 20791}
!53 = !{ptr @optimize_loop_nest_for_speed_p, ptr @loop_outer, i64 711}
!54 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 10622}
!55 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 7123}
!56 = !{ptr @rtl_profile_for_bb, ptr @maybe_hot_bb_p, i64 1530636}
!57 = !{ptr @gimple_predicted_by_p, ptr @pointer_map_contains, i64 460477}
!58 = !{ptr @predict_insn_def, ptr @predict_insn, i64 4058}
!59 = !{ptr @predict_insn, ptr @any_condjump_p, i64 4058}
!60 = !{ptr @predict_insn, ptr @fancy_abort, i64 1}
!61 = !{ptr @predict_insn, ptr @gen_rtx_CONST_INT, i64 8114}
!62 = !{ptr @predict_insn, ptr @gen_rtx_fmt_ee_stat, i64 4057}
!63 = !{ptr @predict_insn, ptr @add_reg_note, i64 4057}
!64 = !{ptr @gimple_predict_edge, ptr @fancy_abort, i64 1}
!65 = !{ptr @gimple_predict_edge, ptr @VEC_edge_base_length, i64 209463}
!66 = !{ptr @gimple_predict_edge, ptr @xmalloc, i64 196715}
!67 = !{ptr @gimple_predict_edge, ptr @pointer_map_insert, i64 196715}
!68 = !{ptr @remove_predictions_associated_with_edge, ptr @pointer_map_contains, i64 1}
!69 = !{ptr @remove_predictions_associated_with_edge, ptr @free, i64 5}
!70 = !{ptr @predict_edge_def, ptr @predict_edge, i64 190607}
!71 = !{ptr @invert_br_probabilities, ptr @gen_rtx_CONST_INT, i64 363301}
!72 = !{ptr @guess_outgoing_edge_probabilities, ptr @bb_estimate_probability_locally, i64 12819}
!73 = !{ptr @guess_outgoing_edge_probabilities, ptr @combine_predictions_for_insn, i64 12819}
!74 = !{ptr @bb_estimate_probability_locally, ptr @can_predict_insn_p, i64 12819}
!75 = !{ptr @bb_estimate_probability_locally, ptr @get_condition, i64 8210}
!76 = !{ptr @bb_estimate_probability_locally, ptr @predict_insn_def, i64 4058}
!77 = !{ptr @combine_predictions_for_insn, ptr @can_predict_insn_p, i64 12819}
!78 = !{ptr @combine_predictions_for_insn, ptr @set_even_probabilities, i64 4609}
!79 = !{ptr @combine_predictions_for_insn, ptr @find_reg_note, i64 8210}
!80 = !{ptr @combine_predictions_for_insn, ptr @fprintf, i64 1}
!81 = !{ptr @combine_predictions_for_insn, ptr @dump_prediction, i64 24535}
!82 = !{ptr @combine_predictions_for_insn, ptr @gen_rtx_CONST_INT, i64 8209}
!83 = !{ptr @combine_predictions_for_insn, ptr @add_reg_note, i64 8209}
!84 = !{ptr @combine_predictions_for_insn, ptr @single_succ_p, i64 8210}
!85 = !{ptr @combine_predictions_for_insn, ptr @VEC_edge_base_index, i64 24625}
!86 = !{ptr @combine_predictions_for_insn, ptr @single_succ_edge, i64 1}
!87 = !{ptr @can_predict_insn_p, ptr @any_condjump_p, i64 18726}
!88 = !{ptr @can_predict_insn_p, ptr @VEC_edge_base_length, i64 16419}
!89 = !{ptr @set_even_probabilities, ptr @ei_start_1, i64 106914}
!90 = !{ptr @set_even_probabilities, ptr @ei_cond, i64 464812}
!91 = !{ptr @set_even_probabilities, ptr @ei_next, i64 250984}
!92 = !{ptr @dump_prediction, ptr @ei_start_1, i64 1}
!93 = !{ptr @dump_prediction, ptr @ei_cond, i64 11}
!94 = !{ptr @dump_prediction, ptr @ei_next, i64 10}
!95 = !{ptr @dump_prediction, ptr @fprintf, i64 2}
!96 = !{ptr @dump_prediction, ptr @fwrite, i64 1}
!97 = !{ptr @dump_prediction, ptr @fputc, i64 1}
!98 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 336262}
!99 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 101286}
!100 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!101 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 101286}
!102 = !{ptr @ei_cond, ptr @ei_end_p, i64 9891417}
!103 = !{ptr @ei_cond, ptr @ei_edge, i64 6078712}
!104 = !{ptr @ei_next, ptr @ei_container, i64 11848917}
!105 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 5924459}
!106 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!107 = !{ptr @ei_end_p, ptr @ei_container, i64 19747913}
!108 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 9891417}
!109 = !{ptr @ei_edge, ptr @ei_container, i64 12157423}
!110 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 6078712}
!111 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!112 = !{ptr @tree_estimate_probability, ptr @add_noreturn_fake_exit_edges, i64 8964}
!113 = !{ptr @tree_estimate_probability, ptr @connect_infinite_loops_to_exit, i64 8964}
!114 = !{ptr @tree_estimate_probability, ptr @create_preheaders, i64 8964}
!115 = !{ptr @tree_estimate_probability, ptr @calculate_dominance_info, i64 8964}
!116 = !{ptr @tree_estimate_probability, ptr @pointer_map_create, i64 8964}
!117 = !{ptr @tree_estimate_probability, ptr @tree_bb_level_predictions, i64 8964}
!118 = !{ptr @tree_estimate_probability, ptr @record_loop_exits, i64 8964}
!119 = !{ptr @tree_estimate_probability, ptr @number_of_loops, i64 8964}
!120 = !{ptr @tree_estimate_probability, ptr @predict_loops, i64 3499}
!121 = !{ptr @tree_estimate_probability, ptr @tree_estimate_probability_bb, i64 238835}
!122 = !{ptr @tree_estimate_probability, ptr @combine_predictions_for_bb, i64 238835}
!123 = !{ptr @tree_estimate_probability, ptr @pointer_map_destroy, i64 8964}
!124 = !{ptr @tree_estimate_probability, ptr @estimate_bb_frequencies, i64 8964}
!125 = !{ptr @tree_estimate_probability, ptr @free_dominance_info, i64 8964}
!126 = !{ptr @tree_estimate_probability, ptr @remove_fake_exit_edges, i64 8964}
!127 = !{ptr @tree_bb_level_predictions, ptr @ei_start_1, i64 8964}
!128 = !{ptr @tree_bb_level_predictions, ptr @ei_cond, i64 8990}
!129 = !{ptr @tree_bb_level_predictions, ptr @ei_next, i64 26}
!130 = !{ptr @tree_bb_level_predictions, ptr @apply_return_prediction, i64 8964}
!131 = !{ptr @tree_bb_level_predictions, ptr @gsi_start_bb, i64 238835}
!132 = !{ptr @tree_bb_level_predictions, ptr @gsi_end_p, i64 953173}
!133 = !{ptr @tree_bb_level_predictions, ptr @gsi_stmt, i64 714338}
!134 = !{ptr @tree_bb_level_predictions, ptr @is_gimple_call, i64 714338}
!135 = !{ptr @tree_bb_level_predictions, ptr @gimple_call_flags, i64 91509}
!136 = !{ptr @tree_bb_level_predictions, ptr @predict_paths_leading_to, i64 4200}
!137 = !{ptr @tree_bb_level_predictions, ptr @gimple_call_fndecl, i64 91509}
!138 = !{ptr @tree_bb_level_predictions, ptr @lookup_attribute, i64 89506}
!139 = !{ptr @tree_bb_level_predictions, ptr @gimple_code, i64 622830}
!140 = !{ptr @tree_bb_level_predictions, ptr @gimple_predict_predictor, i64 1743}
!141 = !{ptr @tree_bb_level_predictions, ptr @gimple_predict_outcome, i64 1743}
!142 = !{ptr @tree_bb_level_predictions, ptr @gsi_next, i64 714338}
!143 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 33066}
!144 = !{ptr @predict_loops, ptr @fel_init, i64 3499}
!145 = !{ptr @predict_loops, ptr @get_loop_exit_edges, i64 11645}
!146 = !{ptr @predict_loops, ptr @VEC_edge_base_length, i64 11645}
!147 = !{ptr @predict_loops, ptr @VEC_edge_base_iterate, i64 31304}
!148 = !{ptr @predict_loops, ptr @number_of_iterations_exit, i64 19659}
!149 = !{ptr @predict_loops, ptr @loop_niter_by_eval, i64 18690}
!150 = !{ptr @predict_loops, ptr @host_integerp, i64 972}
!151 = !{ptr @predict_loops, ptr @compare_tree_int, i64 971}
!152 = !{ptr @predict_loops, ptr @tree_low_cst, i64 926}
!153 = !{ptr @predict_loops, ptr @estimated_loop_iterations_int, i64 6861}
!154 = !{ptr @predict_loops, ptr @predict_edge, i64 18854}
!155 = !{ptr @predict_loops, ptr @VEC_edge_heap_free, i64 11645}
!156 = !{ptr @predict_loops, ptr @get_loop_body, i64 11645}
!157 = !{ptr @predict_loops, ptr @predicted_by_p, i64 361652}
!158 = !{ptr @predict_loops, ptr @find_edge, i64 11644}
!159 = !{ptr @predict_loops, ptr @predict_edge_def, i64 11643}
!160 = !{ptr @predict_loops, ptr @ei_start_1, i64 114326}
!161 = !{ptr @predict_loops, ptr @ei_cond, i64 302337}
!162 = !{ptr @predict_loops, ptr @flow_bb_inside_loop_p, i64 188010}
!163 = !{ptr @predict_loops, ptr @ei_next, i64 188011}
!164 = !{ptr @predict_loops, ptr @free, i64 11645}
!165 = !{ptr @predict_loops, ptr @fel_next, i64 11645}
!166 = !{ptr @tree_estimate_probability_bb, ptr @ei_start_1, i64 247354}
!167 = !{ptr @tree_estimate_probability_bb, ptr @ei_cond, i64 646526}
!168 = !{ptr @tree_estimate_probability_bb, ptr @single_succ_p, i64 226763}
!169 = !{ptr @tree_estimate_probability_bb, ptr @single_succ_edge, i64 89645}
!170 = !{ptr @tree_estimate_probability_bb, ptr @last_stmt, i64 32975}
!171 = !{ptr @tree_estimate_probability_bb, ptr @gimple_code, i64 32974}
!172 = !{ptr @tree_estimate_probability_bb, ptr @predicted_by_p, i64 98711}
!173 = !{ptr @tree_estimate_probability_bb, ptr @predict_edge_def, i64 82969}
!174 = !{ptr @tree_estimate_probability_bb, ptr @ei_next, i64 399172}
!175 = !{ptr @tree_estimate_probability_bb, ptr @dominated_by_p, i64 595418}
!176 = !{ptr @tree_estimate_probability_bb, ptr @gsi_start_bb, i64 171216}
!177 = !{ptr @tree_estimate_probability_bb, ptr @gsi_end_p, i64 604202}
!178 = !{ptr @tree_estimate_probability_bb, ptr @gsi_stmt, i64 486886}
!179 = !{ptr @tree_estimate_probability_bb, ptr @is_gimple_call, i64 486886}
!180 = !{ptr @tree_estimate_probability_bb, ptr @gimple_has_side_effects, i64 56714}
!181 = !{ptr @tree_estimate_probability_bb, ptr @gsi_next, i64 432986}
!182 = !{ptr @tree_estimate_probability_bb, ptr @tree_predict_by_opcode, i64 238861}
!183 = !{ptr @combine_predictions_for_bb, ptr @ei_start_1, i64 238861}
!184 = !{ptr @combine_predictions_for_bb, ptr @ei_cond, i64 626149}
!185 = !{ptr @combine_predictions_for_bb, ptr @ei_next, i64 387288}
!186 = !{ptr @combine_predictions_for_bb, ptr @set_even_probabilities, i64 102304}
!187 = !{ptr @combine_predictions_for_bb, ptr @clear_bb_predictions, i64 238861}
!188 = !{ptr @combine_predictions_for_bb, ptr @fprintf, i64 2}
!189 = !{ptr @combine_predictions_for_bb, ptr @pointer_map_contains, i64 136556}
!190 = !{ptr @combine_predictions_for_bb, ptr @dump_prediction, i64 572096}
!191 = !{ptr @combine_predictions_for_bb, ptr @VEC_edge_base_index, i64 187356}
!192 = !{ptr @estimate_bb_frequencies, ptr @counts_to_freqs, i64 1}
!193 = !{ptr @estimate_bb_frequencies, ptr @sreal_init, i64 744199}
!194 = !{ptr @estimate_bb_frequencies, ptr @sreal_div, i64 11641}
!195 = !{ptr @estimate_bb_frequencies, ptr @sreal_sub, i64 2}
!196 = !{ptr @estimate_bb_frequencies, ptr @mark_dfs_back_edges, i64 11639}
!197 = !{ptr @estimate_bb_frequencies, ptr @single_succ_edge, i64 11639}
!198 = !{ptr @estimate_bb_frequencies, ptr @alloc_aux_for_blocks, i64 11639}
!199 = !{ptr @estimate_bb_frequencies, ptr @alloc_aux_for_edges, i64 11639}
!200 = !{ptr @estimate_bb_frequencies, ptr @ei_start_1, i64 474253}
!201 = !{ptr @estimate_bb_frequencies, ptr @ei_cond, i64 1218442}
!202 = !{ptr @estimate_bb_frequencies, ptr @sreal_mul, i64 1218442}
!203 = !{ptr @estimate_bb_frequencies, ptr @ei_next, i64 744189}
!204 = !{ptr @estimate_bb_frequencies, ptr @estimate_loops, i64 11639}
!205 = !{ptr @estimate_bb_frequencies, ptr @sreal_compare, i64 450976}
!206 = !{ptr @estimate_bb_frequencies, ptr @sreal_add, i64 474253}
!207 = !{ptr @estimate_bb_frequencies, ptr @sreal_to_int, i64 474253}
!208 = !{ptr @estimate_bb_frequencies, ptr @free_aux_for_blocks, i64 11639}
!209 = !{ptr @estimate_bb_frequencies, ptr @free_aux_for_edges, i64 11639}
!210 = !{ptr @estimate_bb_frequencies, ptr @compute_function_frequency, i64 11640}
!211 = !{ptr @estimate_bb_frequencies, ptr @choose_function_section, i64 11639}
!212 = !{ptr @apply_return_prediction, ptr @ei_start_1, i64 8964}
!213 = !{ptr @apply_return_prediction, ptr @ei_cond, i64 8991}
!214 = !{ptr @apply_return_prediction, ptr @last_stmt, i64 8946}
!215 = !{ptr @apply_return_prediction, ptr @gimple_code, i64 13834}
!216 = !{ptr @apply_return_prediction, ptr @ei_next, i64 27}
!217 = !{ptr @apply_return_prediction, ptr @gimple_return_retval, i64 8939}
!218 = !{ptr @apply_return_prediction, ptr @gimple_phi_num_args, i64 2848}
!219 = !{ptr @apply_return_prediction, ptr @gimple_phi_arg_imm_use_ptr, i64 32529}
!220 = !{ptr @apply_return_prediction, ptr @get_use_from_ptr, i64 32529}
!221 = !{ptr @apply_return_prediction, ptr @return_prediction, i64 32529}
!222 = !{ptr @apply_return_prediction, ptr @gimple_phi_arg_edge, i64 13049}
!223 = !{ptr @apply_return_prediction, ptr @predict_paths_leading_to, i64 13049}
!224 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 664521}
!225 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 664521}
!226 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1198705}
!227 = !{ptr @predict_paths_leading_to, ptr @predict_paths_for_bb, i64 16527}
!228 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 213463}
!229 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 8940}
!230 = !{ptr @return_prediction, ptr @integer_zerop, i64 28296}
!231 = !{ptr @return_prediction, ptr @tree_int_cst_sgn, i64 19089}
!232 = !{ptr @return_prediction, ptr @integer_onep, i64 14458}
!233 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 72802}
!234 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 12329}
!235 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 12329}
!236 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 1065836}
!237 = !{ptr @gimple_op, ptr @gimple_ops, i64 1065835}
!238 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 1065836}
!239 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 1065836}
!240 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!241 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 1065836}
!242 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 1065836}
!243 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!244 = !{ptr @predict_paths_for_bb, ptr @ei_start_1, i64 21034}
!245 = !{ptr @predict_paths_for_bb, ptr @ei_cond, i64 49889}
!246 = !{ptr @predict_paths_for_bb, ptr @dominated_by_p, i64 29982}
!247 = !{ptr @predict_paths_for_bb, ptr @fancy_abort, i64 1}
!248 = !{ptr @predict_paths_for_bb, ptr @predict_edge_def, i64 21842}
!249 = !{ptr @predict_paths_for_bb, ptr @ei_next, i64 28855}
!250 = !{ptr @predict_paths_for_bb, ptr @first_dom_son, i64 21034}
!251 = !{ptr @predict_paths_for_bb, ptr @predict_paths_for_bb, i64 4508}
!252 = !{ptr @predict_paths_for_bb, ptr @next_dom_son, i64 4508}
!253 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 213463}
!254 = !{ptr @fel_init, ptr @number_of_loops, i64 3498}
!255 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 3498}
!256 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 22591}
!257 = !{ptr @fel_init, ptr @loop_outer, i64 15138}
!258 = !{ptr @fel_init, ptr @fel_next, i64 3498}
!259 = !{ptr @VEC_edge_heap_free, ptr @free, i64 11646}
!260 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 15147}
!261 = !{ptr @fel_next, ptr @get_loop, i64 11647}
!262 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 3500}
!263 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 3499}
!264 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 11647}
!265 = !{ptr @VEC_int_heap_free, ptr @free, i64 3498}
!266 = !{ptr @tree_predict_by_opcode, ptr @last_stmt, i64 238861}
!267 = !{ptr @tree_predict_by_opcode, ptr @gimple_code, i64 225950}
!268 = !{ptr @tree_predict_by_opcode, ptr @ei_start_1, i64 136372}
!269 = !{ptr @tree_predict_by_opcode, ptr @ei_cond, i64 136421}
!270 = !{ptr @tree_predict_by_opcode, ptr @ei_next, i64 49}
!271 = !{ptr @tree_predict_by_opcode, ptr @gimple_cond_lhs, i64 136372}
!272 = !{ptr @tree_predict_by_opcode, ptr @gimple_cond_rhs, i64 136372}
!273 = !{ptr @tree_predict_by_opcode, ptr @gimple_cond_code, i64 136372}
!274 = !{ptr @tree_predict_by_opcode, ptr @bitmap_obstack_alloc_stat, i64 136372}
!275 = !{ptr @tree_predict_by_opcode, ptr @expr_expected_value_1, i64 136372}
!276 = !{ptr @tree_predict_by_opcode, ptr @bitmap_obstack_free, i64 136372}
!277 = !{ptr @tree_predict_by_opcode, ptr @integer_zerop, i64 195164}
!278 = !{ptr @tree_predict_by_opcode, ptr @predict_edge_def, i64 78384}
!279 = !{ptr @tree_predict_by_opcode, ptr @integer_onep, i64 11509}
!280 = !{ptr @tree_predict_by_opcode, ptr @integer_all_onesp, i64 10377}
!281 = !{ptr @tree_predict_by_opcode, ptr @real_zerop, i64 10372}
!282 = !{ptr @tree_predict_by_opcode, ptr @real_onep, i64 10370}
!283 = !{ptr @tree_predict_by_opcode, ptr @real_minus_onep, i64 10368}
!284 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 136373}
!285 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 136373}
!286 = !{ptr @expr_expected_value_1, ptr @get_gimple_rhs_class, i64 703338}
!287 = !{ptr @expr_expected_value_1, ptr @bitmap_bit_p, i64 305190}
!288 = !{ptr @expr_expected_value_1, ptr @bitmap_set_bit, i64 298633}
!289 = !{ptr @expr_expected_value_1, ptr @gimple_code, i64 298633}
!290 = !{ptr @expr_expected_value_1, ptr @gimple_phi_num_args, i64 42502}
!291 = !{ptr @expr_expected_value_1, ptr @gimple_phi_arg_imm_use_ptr, i64 61995}
!292 = !{ptr @expr_expected_value_1, ptr @get_use_from_ptr, i64 61995}
!293 = !{ptr @expr_expected_value_1, ptr @gimple_phi_result_ptr, i64 61995}
!294 = !{ptr @expr_expected_value_1, ptr @get_def_from_ptr, i64 61995}
!295 = !{ptr @expr_expected_value_1, ptr @expr_expected_value, i64 332092}
!296 = !{ptr @expr_expected_value_1, ptr @operand_equal_p, i64 7596}
!297 = !{ptr @expr_expected_value_1, ptr @is_gimple_assign, i64 256130}
!298 = !{ptr @expr_expected_value_1, ptr @gimple_assign_lhs, i64 411454}
!299 = !{ptr @expr_expected_value_1, ptr @gimple_assign_rhs1, i64 205726}
!300 = !{ptr @expr_expected_value_1, ptr @gimple_assign_rhs_code, i64 205726}
!301 = !{ptr @expr_expected_value_1, ptr @gimple_assign_rhs2, i64 205726}
!302 = !{ptr @expr_expected_value_1, ptr @is_gimple_call, i64 50403}
!303 = !{ptr @expr_expected_value_1, ptr @gimple_call_fndecl, i64 41138}
!304 = !{ptr @expr_expected_value_1, ptr @gimple_call_num_args, i64 8}
!305 = !{ptr @expr_expected_value_1, ptr @gimple_call_arg, i64 13}
!306 = !{ptr @expr_expected_value_1, ptr @fold_build2_stat_loc, i64 16}
!307 = !{ptr @expr_expected_value_1, ptr @fold_build1_stat_loc, i64 1}
!308 = !{ptr @expr_expected_value, ptr @extract_ops_from_tree, i64 215683}
!309 = !{ptr @expr_expected_value, ptr @expr_expected_value_1, i64 215683}
!310 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 181215}
!311 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 291110}
!312 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 239735}
!313 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 145555}
!314 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 145555}
!315 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 94180}
!316 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 145555}
!317 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 39816}
!318 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 13}
!319 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 18}
!320 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 145555}
!321 = !{ptr @clear_bb_predictions, ptr @pointer_map_contains, i64 238861}
!322 = !{ptr @clear_bb_predictions, ptr @free, i64 196718}
!323 = !{ptr @expensive_function_p, ptr @fancy_abort, i64 1}
!324 = !{ptr @expensive_function_p, ptr @active_insn_p, i64 602111}
!325 = !{ptr @estimate_loops, ptr @bitmap_obstack_alloc_stat, i64 11640}
!326 = !{ptr @estimate_loops, ptr @number_of_loops, i64 11640}
!327 = !{ptr @estimate_loops, ptr @estimate_loops_at_level, i64 5064}
!328 = !{ptr @estimate_loops, ptr @bitmap_set_bit, i64 474278}
!329 = !{ptr @estimate_loops, ptr @propagate_freq, i64 11640}
!330 = !{ptr @estimate_loops, ptr @bitmap_obstack_free, i64 11640}
!331 = !{ptr @compute_function_frequency, ptr @lookup_attribute, i64 23277}
!332 = !{ptr @compute_function_frequency, ptr @maybe_hot_bb_p, i64 6}
!333 = !{ptr @compute_function_frequency, ptr @probably_never_executed_bb_p, i64 6}
!334 = !{ptr @choose_function_section, ptr @build_string, i64 2}
!335 = !{ptr @estimate_loops_at_level, ptr @bitmap_obstack_alloc_stat, i64 23578}
!336 = !{ptr @estimate_loops_at_level, ptr @estimate_loops_at_level, i64 23578}
!337 = !{ptr @estimate_loops_at_level, ptr @loop_latch_edge, i64 23578}
!338 = !{ptr @estimate_loops_at_level, ptr @get_loop_body, i64 23578}
!339 = !{ptr @estimate_loops_at_level, ptr @bitmap_set_bit, i64 371710}
!340 = !{ptr @estimate_loops_at_level, ptr @free, i64 23578}
!341 = !{ptr @estimate_loops_at_level, ptr @propagate_freq, i64 23578}
!342 = !{ptr @estimate_loops_at_level, ptr @bitmap_obstack_free, i64 23578}
!343 = !{ptr @propagate_freq, ptr @bmp_iter_set_init, i64 35218}
!344 = !{ptr @propagate_freq, ptr @bmp_iter_set, i64 881235}
!345 = !{ptr @propagate_freq, ptr @VEC_basic_block_base_index, i64 846017}
!346 = !{ptr @propagate_freq, ptr @ei_start_1, i64 2502880}
!347 = !{ptr @propagate_freq, ptr @ei_cond, i64 6428545}
!348 = !{ptr @propagate_freq, ptr @bitmap_bit_p, i64 1318285}
!349 = !{ptr @propagate_freq, ptr @ei_next, i64 3925665}
!350 = !{ptr @propagate_freq, ptr @bmp_iter_next, i64 846017}
!351 = !{ptr @propagate_freq, ptr @sreal_add, i64 1271087}
!352 = !{ptr @propagate_freq, ptr @sreal_init, i64 1240324}
!353 = !{ptr @propagate_freq, ptr @sreal_mul, i64 2480648}
!354 = !{ptr @propagate_freq, ptr @sreal_compare, i64 865164}
!355 = !{ptr @propagate_freq, ptr @sreal_sub, i64 54342}
!356 = !{ptr @propagate_freq, ptr @sreal_div, i64 54342}
!357 = !{ptr @propagate_freq, ptr @bitmap_clear_bit, i64 846041}
!358 = !{ptr @propagate_freq, ptr @find_edge, i64 846041}
!359 = !{ptr @build_predict_expr, ptr @build_int_cst, i64 1049}
!360 = !{ptr @build_predict_expr, ptr @build1_stat, i64 1049}
!361 = !{ptr @tree_estimate_probability_driver, ptr @loop_optimizer_init, i64 8964}
!362 = !{ptr @tree_estimate_probability_driver, ptr @mark_irreducible_loops, i64 8964}
!363 = !{ptr @tree_estimate_probability_driver, ptr @number_of_loops, i64 8964}
!364 = !{ptr @tree_estimate_probability_driver, ptr @scev_initialize, i64 3499}
!365 = !{ptr @tree_estimate_probability_driver, ptr @tree_estimate_probability, i64 8964}
!366 = !{ptr @tree_estimate_probability_driver, ptr @scev_finalize, i64 3499}
!367 = !{ptr @tree_estimate_probability_driver, ptr @loop_optimizer_finalize, i64 8964}
!368 = !{ptr @strip_predict_hints, ptr @gsi_start_bb, i64 254405}
!369 = !{ptr @strip_predict_hints, ptr @gsi_end_p, i64 1040919}
!370 = !{ptr @strip_predict_hints, ptr @gsi_stmt, i64 786514}
!371 = !{ptr @strip_predict_hints, ptr @gimple_code, i64 786514}
!372 = !{ptr @strip_predict_hints, ptr @gsi_remove, i64 1287}
!373 = !{ptr @strip_predict_hints, ptr @gimple_call_fndecl, i64 92826}
!374 = !{ptr @strip_predict_hints, ptr @gimple_call_num_args, i64 9}
!375 = !{ptr @strip_predict_hints, ptr @gimple_call_lhs, i64 8}
!376 = !{ptr @strip_predict_hints, ptr @gimple_call_arg, i64 8}
!377 = !{ptr @strip_predict_hints, ptr @gimple_build_assign_stat, i64 8}
!378 = !{ptr @strip_predict_hints, ptr @gsi_replace, i64 8}
!379 = !{ptr @strip_predict_hints, ptr @gsi_next, i64 785227}
!380 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 8}
!381 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!382 = !{!"function_entry_count", i64 11771283}
!383 = !{!384, !384, i64 0}
!384 = !{!"any pointer", !385, i64 0}
!385 = !{!"omnipotent char", !386, i64 0}
!386 = !{!"Simple C/C++ TBAA"}
!387 = !{!388, !384, i64 8}
!388 = !{!"function", !384, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !384, i64 32, !384, i64 40, !384, i64 48, !384, i64 56, !384, i64 64, !384, i64 72, !384, i64 80, !384, i64 88, !384, i64 96, !389, i64 104, !389, i64 108, !389, i64 112, !389, i64 116, !389, i64 120, !389, i64 124, !384, i64 128, !389, i64 136, !389, i64 137, !389, i64 138, !389, i64 138, !389, i64 138, !389, i64 138, !389, i64 138, !389, i64 138, !389, i64 138, !389, i64 139, !389, i64 139, !389, i64 139, !389, i64 139, !389, i64 139, !389, i64 139, !389, i64 139}
!389 = !{!"int", !385, i64 0}
!390 = !{!391, !389, i64 48}
!391 = !{!"control_flow_graph", !384, i64 0, !384, i64 8, !384, i64 16, !389, i64 24, !389, i64 28, !389, i64 32, !384, i64 40, !389, i64 48, !385, i64 52, !385, i64 60, !389, i64 68, !389, i64 72}
!392 = !{!"branch_weights", i32 1, i32 11771284}
!393 = !{!394, !395, i64 72}
!394 = !{!"basic_block_def", !384, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !385, i64 32, !384, i64 48, !384, i64 56, !385, i64 64, !395, i64 72, !389, i64 80, !389, i64 84, !389, i64 88, !389, i64 92, !389, i64 96}
!395 = !{!"long", !385, i64 0}
!396 = !{i8 0, i8 2}
!397 = !{!394, !389, i64 88}
!398 = !{!"function_entry_count", i64 0}
!399 = !{!"predict.c:maybe_hot_count_p"}
!400 = !{!401, !389, i64 4}
!401 = !{!"gcov_ctr_summary", !389, i64 0, !389, i64 4, !395, i64 8, !395, i64 16, !395, i64 24}
!402 = !{!401, !395, i64 24}
!403 = !{!404, !389, i64 8}
!404 = !{!"param_info", !384, i64 0, !389, i64 8, !385, i64 12, !389, i64 16, !389, i64 20, !384, i64 24}
!405 = !{!"function_entry_count", i64 12003842}
!406 = !{!"predict.c:maybe_hot_frequency_p"}
!407 = !{!"branch_weights", i32 12003843, i32 1}
!408 = !{!389, !389, i64 0}
!409 = !{!"branch_weights", i32 -2096294098, i32 183, i32 183}
!410 = !{!"branch_weights", i32 1, i32 12003843}
!411 = !{!"function_entry_count", i64 114551}
!412 = !{!"branch_weights", i32 114552, i32 1}
!413 = !{!414, !395, i64 0}
!414 = !{!"cgraph_edge", !395, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !384, i64 32, !384, i64 40, !384, i64 48, !384, i64 56, !384, i64 64, !389, i64 72, !389, i64 76, !389, i64 80, !389, i64 84, !415, i64 88, !389, i64 90, !389, i64 90, !389, i64 90}
!415 = !{!"short", !385, i64 0}
!416 = !{!414, !384, i64 16}
!417 = !{!418, !384, i64 0}
!418 = !{!"cgraph_node", !384, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !384, i64 32, !384, i64 40, !384, i64 48, !384, i64 56, !384, i64 64, !384, i64 72, !384, i64 80, !384, i64 88, !384, i64 96, !384, i64 104, !384, i64 112, !384, i64 120, !384, i64 128, !384, i64 136, !419, i64 144, !421, i64 184, !422, i64 224, !423, i64 232, !424, i64 256, !395, i64 288, !389, i64 296, !389, i64 300, !389, i64 304, !389, i64 308, !389, i64 308, !389, i64 308, !389, i64 308, !389, i64 308, !389, i64 308, !389, i64 308, !389, i64 308, !389, i64 309, !389, i64 309}
!419 = !{!"cgraph_local_info", !384, i64 0, !420, i64 8, !389, i64 32, !389, i64 32, !389, i64 32, !389, i64 32, !389, i64 32, !389, i64 32, !389, i64 32, !389, i64 32}
!420 = !{!"inline_summary", !395, i64 0, !389, i64 8, !389, i64 12, !389, i64 16, !389, i64 20}
!421 = !{!"cgraph_global_info", !395, i64 0, !395, i64 8, !384, i64 16, !389, i64 24, !389, i64 28, !389, i64 32, !385, i64 36}
!422 = !{!"cgraph_rtl_info", !389, i64 0}
!423 = !{!"cgraph_clone_info", !384, i64 0, !384, i64 8, !384, i64 16}
!424 = !{!"cgraph_thunk_info", !395, i64 0, !395, i64 8, !384, i64 16, !385, i64 24, !385, i64 25, !385, i64 26}
!425 = !{!385, !385, i64 0}
!426 = !{!414, !384, i64 8}
!427 = !{!"branch_weights", i32 1, i32 114552}
!428 = !{!414, !389, i64 80}
!429 = !{!"branch_weights", i32 96763, i32 17790}
!430 = !{!"function_entry_count", i64 232559}
!431 = !{!"branch_weights", i32 1, i32 232560}
!432 = !{!433, !395, i64 56}
!433 = !{!"edge_def", !384, i64 0, !384, i64 8, !385, i64 16, !384, i64 24, !384, i64 32, !389, i64 40, !389, i64 44, !389, i64 48, !389, i64 52, !395, i64 56}
!434 = !{!433, !384, i64 0}
!435 = !{!433, !389, i64 52}
!436 = !{!"function_entry_count", i64 298648}
!437 = !{!"branch_weights", i32 298649, i32 1}
!438 = !{!"function_entry_count", i64 16001728}
!439 = !{!"branch_weights", i32 16001729, i32 1}
!440 = !{!"branch_weights", i32 242, i32 16001488}
!441 = !{!"function_entry_count", i64 405342}
!442 = !{!"function_entry_count", i64 10240647}
!443 = !{!"branch_weights", i32 10240648, i32 1}
!444 = !{!"function_entry_count", i64 9464781}
!445 = !{!"branch_weights", i32 232560, i32 1}
!446 = !{!"function_entry_count", i64 86483}
!447 = !{!"function_entry_count", i64 1619357}
!448 = !{!"branch_weights", i32 1, i32 1619358}
!449 = !{!"function_entry_count", i64 675602}
!450 = !{!"function_entry_count", i64 39995}
!451 = !{!452, !384, i64 8}
!452 = !{!"loop", !389, i64 0, !389, i64 4, !384, i64 8, !384, i64 16, !453, i64 24, !389, i64 32, !389, i64 36, !384, i64 40, !384, i64 48, !384, i64 56, !384, i64 64, !384, i64 72, !454, i64 80, !454, i64 96, !385, i64 112, !385, i64 113, !389, i64 116, !384, i64 120, !384, i64 128, !385, i64 136, !384, i64 144}
!453 = !{!"lpt_decision", !389, i64 0, !389, i64 4}
!454 = !{!"", !395, i64 0, !395, i64 8}
!455 = !{!"function_entry_count", i64 77712}
!456 = !{!"function_entry_count", i64 14316}
!457 = !{!"branch_weights", i32 2877, i32 11441}
!458 = !{!452, !384, i64 48}
!459 = !{!"branch_weights", i32 1655, i32 1}
!460 = !{!"branch_weights", i32 4456, i32 1222}
!461 = !{!"branch_weights", i32 1072, i32 3385}
!462 = !{!452, !384, i64 56}
!463 = !{!"branch_weights", i32 680, i32 393}
!464 = !{!"branch_weights", i32 1, i32 303}
!465 = !{!"branch_weights", i32 818, i32 680}
!466 = !{!"branch_weights", i32 303, i32 891}
!467 = distinct !{!467, !468}
!468 = !{!"llvm.loop.mustprogress"}
!469 = !{!"branch_weights", i32 569179093, i32 1578304555}
!470 = distinct !{!470, !468}
!471 = !{!"function_entry_count", i64 10622}
!472 = !{!"predict.c:loop_outer"}
!473 = !{!452, !384, i64 40}
!474 = !{!"branch_weights", i32 3500, i32 7124}
!475 = !{!"function_entry_count", i64 43689}
!476 = !{!"predict.c:VEC_loop_p_base_length"}
!477 = !{!"branch_weights", i32 3500, i32 40191}
!478 = !{!479, !389, i64 0}
!479 = !{!"VEC_loop_p_base", !389, i64 0, !389, i64 4, !385, i64 8}
!480 = !{!"function_entry_count", i64 18770}
!481 = !{!"predict.c:VEC_loop_p_base_index"}
!482 = !{!"function_entry_count", i64 115494}
!483 = !{!"branch_weights", i32 1, i32 115495}
!484 = !{!"function_entry_count", i64 1530636}
!485 = !{!486, !385, i64 478}
!486 = !{!"rtl_data", !487, i64 0, !488, i64 40, !489, i64 96, !490, i64 112, !492, i64 208, !493, i64 248, !389, i64 312, !384, i64 320, !384, i64 328, !384, i64 336, !384, i64 344, !384, i64 352, !384, i64 360, !384, i64 368, !384, i64 376, !384, i64 384, !384, i64 392, !395, i64 400, !384, i64 408, !384, i64 416, !384, i64 424, !389, i64 432, !389, i64 436, !389, i64 440, !389, i64 444, !389, i64 448, !389, i64 452, !384, i64 456, !385, i64 464, !385, i64 465, !385, i64 466, !385, i64 467, !385, i64 468, !385, i64 469, !385, i64 470, !385, i64 471, !385, i64 472, !385, i64 473, !385, i64 474, !385, i64 475, !385, i64 476, !385, i64 477, !385, i64 478, !385, i64 479, !385, i64 480, !385, i64 481, !385, i64 482, !385, i64 483, !385, i64 484, !385, i64 485}
!487 = !{!"expr_status", !389, i64 0, !389, i64 4, !389, i64 8, !384, i64 16, !384, i64 24, !384, i64 32}
!488 = !{!"emit_status", !389, i64 0, !389, i64 4, !384, i64 8, !384, i64 16, !384, i64 24, !389, i64 32, !389, i64 36, !389, i64 40, !389, i64 44, !384, i64 48}
!489 = !{!"varasm_status", !384, i64 0, !389, i64 8}
!490 = !{!"incoming_args", !389, i64 0, !389, i64 4, !389, i64 8, !384, i64 16, !491, i64 24, !384, i64 88}
!491 = !{!"ix86_args", !389, i64 0, !389, i64 4, !389, i64 8, !389, i64 12, !389, i64 16, !389, i64 20, !389, i64 24, !389, i64 28, !389, i64 32, !389, i64 36, !389, i64 40, !389, i64 44, !389, i64 48, !389, i64 52, !389, i64 56, !389, i64 60}
!492 = !{!"function_subsections", !384, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !384, i64 32}
!493 = !{!"rtl_eh", !384, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !384, i64 32, !384, i64 40, !385, i64 48}
!494 = !{!"function_entry_count", i64 99714}
!495 = !{!496, !384, i64 8}
!496 = !{!"rtl_bb_info", !384, i64 0, !384, i64 8, !384, i64 16, !384, i64 24, !389, i64 32}
!497 = distinct !{!497, !468}
!498 = !{!"function_entry_count", i64 460477}
!499 = !{!"branch_weights", i32 400523, i32 59956}
!500 = !{!"branch_weights", i32 49022, i32 233364}
!501 = !{!502, !389, i64 16}
!502 = !{!"edge_prediction", !384, i64 0, !384, i64 8, !389, i64 16, !389, i64 20}
!503 = !{!"branch_weights", i32 10935, i32 222430}
!504 = distinct !{!504, !468}
!505 = !{!"predict.c:probability_reliable_p"}
!506 = !{!"function_entry_count", i64 4058}
!507 = !{!508, !389, i64 8}
!508 = !{!"predictor_info", !384, i64 0, !389, i64 8, !389, i64 12}
!509 = !{!"branch_weights", i32 36, i32 4024}
!510 = !{!"predict.c:predict_insn"}
!511 = !{!"branch_weights", i32 1, i32 4059}
!512 = !{!433, !389, i64 48}
!513 = !{!"function_entry_count", i64 209464}
!514 = !{!"branch_weights", i32 1, i32 209465}
!515 = !{!391, !384, i64 0}
!516 = !{!394, !384, i64 8}
!517 = !{!"branch_weights", i32 -664891960, i32 235241310}
!518 = !{!502, !384, i64 0}
!519 = !{!502, !389, i64 20}
!520 = !{!502, !384, i64 8}
!521 = !{!"function_entry_count", i64 16389669}
!522 = !{!"predict.c:VEC_edge_base_length"}
!523 = !{!"branch_weights", i32 34921, i32 16354750}
!524 = !{!525, !389, i64 0}
!525 = !{!"VEC_edge_base", !389, i64 0, !389, i64 4, !385, i64 8}
!526 = !{!"function_entry_count", i64 785049}
!527 = !{!"branch_weights", i32 785050, i32 1}
!528 = distinct !{!528, !468}
!529 = !{!"function_entry_count", i64 190607}
!530 = !{!"branch_weights", i32 51698, i32 138911}
!531 = !{!"function_entry_count", i64 363301}
!532 = !{!"branch_weights", i32 1, i32 363301}
!533 = !{!"branch_weights", i32 -219547534, i32 -195002048, i32 11285}
!534 = !{!"branch_weights", i32 363301, i32 361128}
!535 = distinct !{!535, !468}
!536 = !{!"function_entry_count", i64 12819}
!537 = !{!"predict.c:bb_estimate_probability_locally"}
!538 = !{!"branch_weights", i32 4610, i32 8211}
!539 = !{!"branch_weights", i32 1, i32 8211}
!540 = !{!"branch_weights", i32 8211, i32 1}
!541 = !{!"branch_weights", i32 7868, i32 64612360}
!542 = !{!"branch_weights", i32 375, i32 3087337}
!543 = !{!"branch_weights", i32 3022, i32 1, i32 4120, i32 1, i32 415, i32 1, i32 1, i32 1, i32 101, i32 163, i32 148, i32 248}
!544 = !{!"branch_weights", i32 -2096707902, i32 533946, i32 533816, i32 533687, i32 533558}
!545 = !{!"branch_weights", i32 542231, i32 15888196}
!546 = !{!"branch_weights", i32 -587285968, i32 8998912, i32 8977280, i32 8955700, i32 8934171}
!547 = !{!"branch_weights", i32 6431, i32 225}
!548 = !{!"branch_weights", i32 2360952, i32 12889800}
!549 = !{!"branch_weights", i32 3469356, i32 53862732}
!550 = !{!"predict.c:combine_predictions_for_insn"}
!551 = !{!394, !389, i64 80}
!552 = !{!"branch_weights", i32 4152, i32 4059}
!553 = !{!"branch_weights", i32 4059, i32 1}
!554 = !{!"branch_weights", i32 4059, i32 0}
!555 = distinct !{!555, !468}
!556 = !{!"branch_weights", i32 4153, i32 4059}
!557 = distinct !{!557, !468}
!558 = !{!"function_entry_count", i64 25638}
!559 = !{!"predict.c:can_predict_insn_p"}
!560 = !{!"branch_weights", i32 18727, i32 6913}
!561 = !{!"branch_weights", i32 2307, i32 16421}
!562 = !{!"function_entry_count", i64 106914}
!563 = !{!"predict.c:set_even_probabilities"}
!564 = !{i64 0, i64 4, !408, i64 8, i64 8, !383}
!565 = !{i64 0, i64 8, !383}
!566 = !{!"branch_weights", i32 1, i32 106914}
!567 = !{!"branch_weights", i32 106914, i32 18579}
!568 = distinct !{!568, !468}
!569 = !{!"branch_weights", i32 123012, i32 2482}
!570 = distinct !{!570, !468}
!571 = !{!"function_entry_count", i64 596636}
!572 = !{!"predict.c:dump_prediction"}
!573 = !{!"branch_weights", i32 596637, i32 1}
!574 = distinct !{!574, !468}
!575 = !{!508, !384, i64 0}
!576 = !{!"function_entry_count", i64 336262}
!577 = !{!"predict.c:single_succ_p"}
!578 = !{!"function_entry_count", i64 6412525}
!579 = !{!"predict.c:VEC_edge_base_index"}
!580 = !{!"function_entry_count", i64 101286}
!581 = !{!"predict.c:single_succ_edge"}
!582 = !{!"branch_weights", i32 1, i32 101287}
!583 = !{!"function_entry_count", i64 3966958}
!584 = !{!"predict.c:ei_start_1"}
!585 = !{!"function_entry_count", i64 9891417}
!586 = !{!"predict.c:ei_cond"}
!587 = !{!"branch_weights", i32 6078713, i32 3812706}
!588 = !{!"function_entry_count", i64 5924459}
!589 = !{!"predict.c:ei_next"}
!590 = !{!"branch_weights", i32 1, i32 5924460}
!591 = !{!"branch_weights", i32 5924460, i32 1}
!592 = !{!593, !389, i64 0}
!593 = !{!"", !389, i64 0, !384, i64 8}
!594 = !{!"predict.c:ei_end_p"}
!595 = !{!"branch_weights", i32 34921, i32 9856498}
!596 = !{!"function_entry_count", i64 6078712}
!597 = !{!"predict.c:ei_edge"}
!598 = !{!"branch_weights", i32 1, i32 6078713}
!599 = !{!"function_entry_count", i64 43754256}
!600 = !{!"predict.c:ei_container"}
!601 = !{!"branch_weights", i32 1, i32 43754257}
!602 = !{!"function_entry_count", i64 8964}
!603 = !{!"branch_weights", i32 3500, i32 5466}
!604 = !{!394, !384, i64 56}
!605 = !{!391, !384, i64 8}
!606 = !{!"branch_weights", i32 1, i32 8964}
!607 = !{!"branch_weights", i32 8964, i32 229898}
!608 = distinct !{!608, !468}
!609 = !{!"branch_weights", i32 0, i32 -2147483648}
!610 = distinct !{!610, !468}
!611 = !{!"predict.c:tree_bb_level_predictions"}
!612 = !{!"branch_weights", i32 1, i32 199}
!613 = !{!"branch_weights", i32 8941, i32 26}
!614 = !{!"branch_weights", i32 199, i32 71529}
!615 = distinct !{!615, !468}
!616 = !{!"branch_weights", i32 238861, i32 1}
!617 = !{!"branch_weights", i32 622900, i32 91519}
!618 = !{!"branch_weights", i32 6098274, i32 221145886}
!619 = !{!"branch_weights", i32 2003, i32 89517}
!620 = !{!"branch_weights", i32 89517, i32 1}
!621 = !{i32 0, i32 256}
!622 = !{!"branch_weights", i32 1743, i32 621158}
!623 = !{i32 0, i32 32768}
!624 = !{i32 0, i32 2}
!625 = !{!"branch_weights", i32 475557, i32 238861}
!626 = distinct !{!626, !468}
!627 = distinct !{!627, !468}
!628 = !{!"function_entry_count", i64 33067}
!629 = !{!"predict.c:number_of_loops"}
!630 = !{!388, !384, i64 32}
!631 = !{!"branch_weights", i32 1, i32 33068}
!632 = !{!633, !384, i64 8}
!633 = !{!"loops", !389, i64 0, !384, i64 8, !384, i64 16, !384, i64 24}
!634 = !{!"function_entry_count", i64 3499}
!635 = !{!"predict.c:predict_loops"}
!636 = !{!"branch_weights", i32 1, i32 3499}
!637 = !{!"branch_weights", i32 1, i32 11647}
!638 = !{!"branch_weights", i32 17062, i32 2604}
!639 = !{!"branch_weights", i32 970, i32 1635}
!640 = !{!"branch_weights", i32 972, i32 18694}
!641 = !{!"branch_weights", i32 1, i32 972}
!642 = !{!"branch_weights", i32 928, i32 45}
!643 = !{!"branch_weights", i32 6864, i32 11831}
!644 = !{!"branch_weights", i32 6517, i32 348}
!645 = !{!"branch_weights", i32 11647, i32 8018}
!646 = distinct !{!646, !468}
!647 = !{!452, !389, i64 36}
!648 = !{!"branch_weights", i32 127325, i32 3425}
!649 = !{!452, !384, i64 16}
!650 = !{!"branch_weights", i32 11648, i32 115678}
!651 = !{!"branch_weights", i32 1, i32 11648}
!652 = !{!"branch_weights", i32 115331, i32 348}
!653 = !{!"branch_weights", i32 114361, i32 971}
!654 = !{!"branch_weights", i32 1, i32 114360}
!655 = !{!433, !384, i64 8}
!656 = !{!"branch_weights", i32 1, i32 188069}
!657 = !{!"branch_weights", i32 17540, i32 170530}
!658 = !{!"branch_weights", i32 114360, i32 73709}
!659 = distinct !{!659, !468}
!660 = !{!"branch_weights", i32 119102, i32 11647}
!661 = distinct !{!661, !468}
!662 = !{!"branch_weights", i32 3499, i32 8149}
!663 = distinct !{!663, !468}
!664 = !{!"function_entry_count", i64 238861}
!665 = !{!"predict.c:tree_estimate_probability_bb"}
!666 = !{!"branch_weights", i32 1, i32 238861}
!667 = !{!"branch_weights", i32 189943, i32 197348}
!668 = !{!"branch_weights", i32 2460, i32 194889}
!669 = !{!"branch_weights", i32 105243, i32 89647}
!670 = !{!"branch_weights", i32 32976, i32 56672}
!671 = !{!"branch_weights", i32 1, i32 32976}
!672 = !{!"branch_weights", i32 31879, i32 1098}
!673 = !{!"branch_weights", i32 23386, i32 8494}
!674 = !{!"branch_weights", i32 1, i32 8493}
!675 = !{!"branch_weights", i32 11433, i32 453}
!676 = !{!"branch_weights", i32 10112, i32 1322}
!677 = !{!"branch_weights", i32 9995, i32 118}
!678 = !{!"branch_weights", i32 8493, i32 3392}
!679 = distinct !{!679, !468}
!680 = !{!"branch_weights", i32 22258, i32 1129}
!681 = !{!"branch_weights", i32 19654, i32 2605}
!682 = !{!"branch_weights", i32 19083, i32 572}
!683 = !{!"branch_weights", i32 67380569, i32 -2087799926}
!684 = !{!"branch_weights", i32 156214, i32 219606}
!685 = !{!"branch_weights", i32 171219, i32 48388}
!686 = !{!"branch_weights", i32 121553, i32 1}
!687 = !{!"branch_weights", i32 396372, i32 52258}
!688 = !{!"branch_weights", i32 2593, i32 49666}
!689 = !{!"branch_weights", i32 327076, i32 121553}
!690 = distinct !{!690, !468}
!691 = !{!"branch_weights", i32 238861, i32 148429}
!692 = distinct !{!692, !468}
!693 = !{!"predict.c:combine_predictions_for_bb"}
!694 = !{!"branch_weights", i32 384809, i32 2482}
!695 = !{!"branch_weights", i32 -2010528168, i32 1285395140}
!696 = !{!"branch_weights", i32 236381, i32 148429}
!697 = distinct !{!697, !468}
!698 = !{!"branch_weights", i32 1227712757, i32 919770891}
!699 = !{!"branch_weights", i32 102306, i32 1}
!700 = !{!"branch_weights", i32 136557, i32 1}
!701 = !{!"branch_weights", i32 24927, i32 111631}
!702 = !{!"branch_weights", i32 1, i32 111630}
!703 = !{!"branch_weights", i32 148008, i32 39352}
!704 = !{!"branch_weights", i32 136010, i32 51350}
!705 = !{!"branch_weights", i32 133764, i32 112077}
!706 = !{!"branch_weights", i32 6201, i32 105877}
!707 = !{!"branch_weights", i32 3252, i32 2950}
!708 = !{!"branch_weights", i32 798, i32 5404}
!709 = !{!"branch_weights", i32 9413292, i32 -525286069}
!710 = !{!"branch_weights", i32 130606, i32 115234}
!711 = distinct !{!711, !468}
!712 = !{!"branch_weights", i32 1, i32 187359}
!713 = !{!"branch_weights", i32 111630, i32 75729}
!714 = distinct !{!714, !468}
!715 = !{!"branch_weights", i32 117387, i32 19171}
!716 = distinct !{!716, !468}
!717 = !{!"function_entry_count", i64 11640}
!718 = !{!"branch_weights", i32 1, i32 11641}
!719 = !{!"branch_weights", i32 11640, i32 2}
!720 = !{!"branch_weights", i32 1, i32 11640}
!721 = !{!"branch_weights", i32 1, i32 474318}
!722 = !{!433, !384, i64 24}
!723 = !{!"branch_weights", i32 474318, i32 269975}
!724 = distinct !{!724, !468}
!725 = !{!"branch_weights", i32 11640, i32 462679}
!726 = distinct !{!726, !468}
!727 = !{!394, !384, i64 16}
!728 = !{!"branch_weights", i32 26974, i32 424066}
!729 = !{!"branch_weights", i32 11640, i32 439399}
!730 = distinct !{!730, !468}
!731 = distinct !{!731, !468}
!732 = !{!"predict.c:apply_return_prediction"}
!733 = !{!"branch_weights", i32 1, i32 8966}
!734 = distinct !{!734, !468}
!735 = !{!"branch_weights", i32 25, i32 8941}
!736 = !{!"branch_weights", i32 3775, i32 5167}
!737 = !{!"branch_weights", i32 4893, i32 275}
!738 = !{!"branch_weights", i32 1, i32 4893}
!739 = !{!"branch_weights", i32 2851, i32 2043}
!740 = !{i32 3, i32 27}
!741 = !{!"branch_weights", i32 1958, i32 1}
!742 = !{!"branch_weights", i32 10451, i32 893}
!743 = !{!"branch_weights", i32 1958, i32 9385}
!744 = distinct !{!744, !468}
!745 = !{!"branch_weights", i32 -2147483648, i32 0}
!746 = !{!"branch_weights", i32 4401, i32 12330}
!747 = !{!"branch_weights", i32 892, i32 15838}
!748 = distinct !{!748, !468}
!749 = !{!"function_entry_count", i64 664521}
!750 = !{!"predict.c:gsi_start_bb"}
!751 = !{!752, !384, i64 0}
!752 = !{!"", !384, i64 0, !384, i64 8, !384, i64 16}
!753 = !{!752, !384, i64 8}
!754 = !{!752, !384, i64 16}
!755 = !{!"function_entry_count", i64 2564532}
!756 = !{!"predict.c:gsi_end_p"}
!757 = !{!"function_entry_count", i64 1949676}
!758 = !{!"predict.c:gsi_stmt"}
!759 = !{!760, !384, i64 0}
!760 = !{!"gimple_seq_node_d", !384, i64 0, !384, i64 8, !384, i64 16}
!761 = !{!"function_entry_count", i64 1198705}
!762 = !{!"predict.c:is_gimple_call"}
!763 = !{!"function_entry_count", i64 16527}
!764 = !{!"predict.c:predict_paths_leading_to"}
!765 = !{!"function_entry_count", i64 213463}
!766 = !{!"predict.c:gimple_call_fndecl"}
!767 = !{!"branch_weights", i32 207768, i32 5697}
!768 = !{!"function_entry_count", i64 7401926}
!769 = !{!"predict.c:gimple_code"}
!770 = !{!"function_entry_count", i64 1742}
!771 = !{!"predict.c:gimple_predict_predictor"}
!772 = !{!"predict.c:gimple_predict_outcome"}
!773 = !{!"function_entry_count", i64 1898725}
!774 = !{!"predict.c:gsi_next"}
!775 = !{!760, !384, i64 16}
!776 = !{!"function_entry_count", i64 8940}
!777 = !{!"predict.c:gimple_return_retval"}
!778 = !{!"function_entry_count", i64 32920}
!779 = !{!"predict.c:gimple_phi_num_args"}
!780 = !{!"function_entry_count", i64 30921}
!781 = !{!"predict.c:return_prediction"}
!782 = !{!"branch_weights", i32 1, i32 30922}
!783 = !{!"branch_weights", i32 2077446, i32 1453760438, i32 148410, i32 298441603, i32 148396, i32 -1459994432}
!784 = !{!"branch_weights", i32 6613, i32 3183}
!785 = !{!"branch_weights", i32 19094, i32 2022}
!786 = !{!"branch_weights", i32 589, i32 18506}
!787 = !{!"branch_weights", i32 2022, i32 18506}
!788 = !{!"branch_weights", i32 14463, i32 4044}
!789 = !{!"branch_weights", i32 11215, i32 3249}
!790 = !{!"function_entry_count", i64 72802}
!791 = !{!"predict.c:get_use_from_ptr"}
!792 = !{!793, !384, i64 24}
!793 = !{!"ssa_use_operand_d", !384, i64 0, !384, i64 8, !385, i64 16, !384, i64 24}
!794 = !{!"predict.c:gimple_phi_arg_imm_use_ptr"}
!795 = !{!"function_entry_count", i64 12329}
!796 = !{!"predict.c:gimple_phi_arg_edge"}
!797 = !{!394, !384, i64 0}
!798 = !{!"function_entry_count", i64 1065836}
!799 = !{!"predict.c:gimple_op"}
!800 = !{!"branch_weights", i32 1, i32 1065837}
!801 = !{!"predict.c:gimple_has_ops"}
!802 = !{!"predict.c:gimple_ops"}
!803 = !{!395, !395, i64 0}
!804 = !{!"predict.c:gimple_statement_structure"}
!805 = !{!"predict.c:gss_for_code"}
!806 = !{!"predict.c:gimple_phi_arg"}
!807 = !{!"branch_weights", i32 1, i32 72803}
!808 = !{!"function_entry_count", i64 24658}
!809 = !{!"predict.c:gimple_bb"}
!810 = !{!"predict.c:bb_seq"}
!811 = !{!394, !389, i64 96}
!812 = !{!"branch_weights", i32 664522, i32 1}
!813 = !{!"branch_weights", i32 1, i32 664522}
!814 = !{!815, !384, i64 0}
!815 = !{!"gimple_bb_info", !384, i64 0, !384, i64 8}
!816 = !{!"predict.c:gimple_seq_first"}
!817 = !{!818, !384, i64 0}
!818 = !{!"gimple_seq_d", !384, i64 0, !384, i64 8, !384, i64 16}
!819 = !{!"function_entry_count", i64 21034}
!820 = !{!"predict.c:predict_paths_for_bb"}
!821 = !{!"branch_weights", i32 1, i32 21034}
!822 = !{!"branch_weights", i32 28343, i32 514}
!823 = !{!"branch_weights", i32 21845, i32 6499}
!824 = !{!"branch_weights", i32 20205, i32 1641}
!825 = !{!"branch_weights", i32 1, i32 1641}
!826 = !{!"branch_weights", i32 21034, i32 7822}
!827 = distinct !{!827, !468}
!828 = !{!"branch_weights", i32 16527, i32 4508}
!829 = !{!"branch_weights", i32 4508, i32 0}
!830 = distinct !{!830, !468}
!831 = !{!"predict.c:gimple_call_fn"}
!832 = !{!"predict.c:fel_init"}
!833 = !{!834, !389, i64 8}
!834 = !{!"", !384, i64 0, !389, i64 8}
!835 = !{!"branch_weights", i32 1, i32 3500}
!836 = !{!834, !384, i64 0}
!837 = !{!633, !384, i64 24}
!838 = !{!452, !389, i64 0}
!839 = !{!"branch_weights", i32 11648, i32 3500}
!840 = !{!"branch_weights", i32 8841, i32 6307}
!841 = !{!"branch_weights", i32 9806, i32 8841}
!842 = !{!"branch_weights", i32 3500, i32 11647}
!843 = distinct !{!843, !468}
!844 = !{!"function_entry_count", i64 31311}
!845 = !{!"predict.c:VEC_edge_base_iterate"}
!846 = !{!"branch_weights", i32 1, i32 31312}
!847 = !{!"branch_weights", i32 19665, i32 11648}
!848 = !{!"function_entry_count", i64 11647}
!849 = !{!"predict.c:VEC_edge_heap_free"}
!850 = !{!"function_entry_count", i64 15146}
!851 = !{!"predict.c:fel_next"}
!852 = !{!"branch_weights", i32 3500, i32 11648}
!853 = distinct !{!853, !468}
!854 = !{!"predict.c:VEC_int_heap_alloc"}
!855 = !{!"predict.c:VEC_int_base_quick_push"}
!856 = !{!857, !389, i64 0}
!857 = !{!"VEC_int_base", !389, i64 0, !389, i64 4, !385, i64 8}
!858 = !{!"predict.c:VEC_int_base_iterate"}
!859 = !{!"branch_weights", i32 1, i32 15147}
!860 = !{!"predict.c:get_loop"}
!861 = !{!"predict.c:VEC_int_heap_free"}
!862 = !{!"predict.c:tree_predict_by_opcode"}
!863 = !{!"branch_weights", i32 12911, i32 225952}
!864 = !{!"branch_weights", i32 136374, i32 89579}
!865 = !{!"branch_weights", i32 1, i32 127}
!866 = !{!"branch_weights", i32 49, i32 136374}
!867 = !{!"branch_weights", i32 127, i32 17461889}
!868 = distinct !{!868, !468}
!869 = !{i32 0, i32 65536}
!870 = !{!"branch_weights", i32 136364, i32 11}
!871 = !{!"branch_weights", i32 8, i32 4}
!872 = !{!"branch_weights", i32 -1560461740, i32 830935770, i32 26146}
!873 = !{!"branch_weights", i32 9694722, i32 231702912, i32 408650940}
!874 = !{!"branch_weights", i32 1, i32 49099, i32 1, i32 41514, i32 1, i32 1, i32 1, i32 4602, i32 3294, i32 1708, i32 4373}
!875 = !{!"branch_weights", i32 -684343487, i32 588408, i32 73549, i32 73548}
!876 = !{!"branch_weights", i32 49092, i32 1}
!877 = !{!"branch_weights", i32 36220, i32 12873}
!878 = !{!"branch_weights", i32 -2111722552, i32 105188, i32 52593, i32 52591}
!879 = !{!"branch_weights", i32 41513, i32 1}
!880 = !{!"branch_weights", i32 7243, i32 34271}
!881 = !{!"branch_weights", i32 6968, i32 928}
!882 = !{!"branch_weights", i32 6240, i32 729}
!883 = !{!"branch_weights", i32 6240, i32 1}
!884 = !{!"branch_weights", i32 4543, i32 1538}
!885 = !{!"branch_weights", i32 4140, i32 404}
!886 = !{!"branch_weights", i32 4137, i32 4}
!887 = !{!"branch_weights", i32 4137, i32 1}
!888 = !{!"function_entry_count", i64 136373}
!889 = !{!"predict.c:gimple_cond_lhs"}
!890 = !{!"predict.c:gimple_cond_rhs"}
!891 = !{!"predict.c:gimple_cond_code"}
!892 = !{!"function_entry_count", i64 497612}
!893 = !{!"predict.c:expr_expected_value_1"}
!894 = !{!"branch_weights", i32 8279, i32 -1729255037, i32 1458862521, i32 95709131}
!895 = !{!"branch_weights", i32 309814, i32 52}
!896 = !{!"branch_weights", i32 215924, i32 93891}
!897 = !{!"branch_weights", i32 211286, i32 4639}
!898 = !{!"branch_weights", i32 30071, i32 181216}
!899 = !{!"branch_weights", i32 2049, i32 1}
!900 = !{!"branch_weights", i32 1, i32 41882}
!901 = !{!"branch_weights", i32 25842, i32 16041}
!902 = !{!"branch_weights", i32 10910, i32 5132}
!903 = !{!"branch_weights", i32 2181, i32 2952}
!904 = !{!"branch_weights", i32 2049, i32 39833}
!905 = distinct !{!905, !468}
!906 = !{!"branch_weights", i32 35661, i32 145556}
!907 = !{!"branch_weights", i32 145556, i32 1}
!908 = !{!"branch_weights", i32 6555, i32 29107}
!909 = !{!"branch_weights", i32 405, i32 28703}
!910 = !{!"branch_weights", i32 4476, i32 21437412}
!911 = !{!"branch_weights", i32 6, i32 1}
!912 = !{!"branch_weights", i32 172844, i32 3347}
!913 = !{!"branch_weights", i32 3337, i32 11}
!914 = !{!"branch_weights", i32 1, i32 11}
!915 = !{!"branch_weights", i32 11560, i32 1}
!916 = !{!"function_entry_count", i64 842474}
!917 = !{!"predict.c:get_gimple_rhs_class"}
!918 = !{!"function_entry_count", i64 41881}
!919 = !{!"predict.c:get_def_from_ptr"}
!920 = !{!"predict.c:gimple_phi_result_ptr"}
!921 = !{!"function_entry_count", i64 232975}
!922 = !{!"predict.c:expr_expected_value"}
!923 = !{!"branch_weights", i32 215685, i32 17292}
!924 = !{!"function_entry_count", i64 181215}
!925 = !{!"predict.c:is_gimple_assign"}
!926 = !{!"function_entry_count", i64 291110}
!927 = !{!"predict.c:gimple_assign_lhs"}
!928 = !{!"function_entry_count", i64 239735}
!929 = !{!"predict.c:gimple_assign_rhs1"}
!930 = !{!"function_entry_count", i64 145555}
!931 = !{!"predict.c:gimple_assign_rhs_code"}
!932 = !{!"branch_weights", i32 94181, i32 51376}
!933 = !{!"predict.c:gimple_assign_rhs2"}
!934 = !{!"branch_weights", i32 39817, i32 105740}
!935 = !{!"function_entry_count", i64 13}
!936 = !{!"predict.c:gimple_call_num_args"}
!937 = !{!"function_entry_count", i64 18}
!938 = !{!"predict.c:gimple_call_arg"}
!939 = !{!"predict.c:gimple_expr_code"}
!940 = !{!"branch_weights", i32 1, i32 582224, i32 2, i32 1}
!941 = !{!"function_entry_count", i64 145568}
!942 = !{!"predict.c:gimple_num_ops"}
!943 = !{!"predict.c:clear_bb_predictions"}
!944 = !{!"branch_weights", i32 125580, i32 113283}
!945 = !{!"branch_weights", i32 1, i32 113282}
!946 = !{!"branch_weights", i32 113282, i32 83438}
!947 = distinct !{!947, !468}
!948 = distinct !{!948, !468}
!949 = distinct !{!949, !468}
!950 = !{!"function_entry_count", i64 6694}
!951 = !{!"branch_weights", i32 6695, i32 1}
!952 = !{!"branch_weights", i32 133, i32 6563}
!953 = !{!"branch_weights", i32 1, i32 1281}
!954 = !{!"branch_weights", i32 1281, i32 97452}
!955 = !{!"branch_weights", i32 1, i32 93451}
!956 = !{!"branch_weights", i32 174985, i32 420495}
!957 = !{!"branch_weights", i32 5282, i32 415214}
!958 = !{!"branch_weights", i32 93451, i32 502028}
!959 = distinct !{!959, !468}
!960 = !{!"predict.c:estimate_loops"}
!961 = !{!"branch_weights", i32 5065, i32 6577}
!962 = distinct !{!962, !468}
!963 = !{!"branch_weights", i32 11641, i32 1}
!964 = distinct !{!964, !468}
!965 = !{!"predict.c:choose_function_section"}
!966 = !{!"branch_weights", i32 135512881, i32 23283}
!967 = !{!"branch_weights", i32 23283, i32 135512881}
!968 = !{!"function_entry_count", i64 28642}
!969 = !{!"predict.c:estimate_loops_at_level"}
!970 = !{!"branch_weights", i32 5064, i32 23579}
!971 = !{!"branch_weights", i32 1, i32 23578}
!972 = !{!"branch_weights", i32 348145, i32 23578}
!973 = distinct !{!973, !468}
!974 = !{!"branch_weights", i32 23579, i32 0}
!975 = distinct !{!975, !468}
!976 = !{!"function_entry_count", i64 35218}
!977 = !{!"predict.c:propagate_freq"}
!978 = !{!"branch_weights", i32 1, i32 35218}
!979 = !{!391, !384, i64 16}
!980 = !{!"branch_weights", i32 1, i32 846040}
!981 = !{!"branch_weights", i32 23628, i32 1294695}
!982 = !{!"branch_weights", i32 1216748, i32 77948}
!983 = !{!"branch_weights", i32 2147456099, i32 27549}
!984 = !{!"branch_weights", i32 846040, i32 472282}
!985 = distinct !{!985, !468}
!986 = !{!987, !389, i64 24}
!987 = !{!"block_info_def", !988, i64 0, !384, i64 16, !389, i64 24}
!988 = !{!"sreal", !395, i64 0, !389, i64 8}
!989 = !{!"branch_weights", i32 35218, i32 810823}
!990 = distinct !{!990, !468}
!991 = !{!987, !384, i64 16}
!992 = !{!"branch_weights", i32 35219, i32 810823}
!993 = !{!"branch_weights", i32 1, i32 810822}
!994 = !{!"branch_weights", i32 1216776, i32 54342}
!995 = !{!"branch_weights", i32 1216748, i32 29}
!996 = !{!"branch_weights", i32 810822, i32 460295}
!997 = distinct !{!997, !468}
!998 = !{!"branch_weights", i32 756482, i32 54342}
!999 = !{!"branch_weights", i32 11, i32 54332}
!1000 = !{!"branch_weights", i32 822463, i32 23579}
!1001 = !{!"branch_weights", i32 1258141, i32 78124}
!1002 = !{!"branch_weights", i32 41394, i32 1216748}
!1003 = !{!"branch_weights", i32 810823, i32 405926}
!1004 = !{!"branch_weights", i32 298438, i32 512386}
!1005 = !{!"branch_weights", i32 846040, i32 490224}
!1006 = distinct !{!1006, !468}
!1007 = distinct !{!1007, !468}
!1008 = !{!"predict.c:bmp_iter_set_init"}
!1009 = !{!1010, !384, i64 0}
!1010 = !{!"bitmap_head_def", !384, i64 0, !384, i64 8, !389, i64 16, !384, i64 24}
!1011 = !{!1012, !384, i64 0}
!1012 = !{!"", !384, i64 0, !384, i64 8, !389, i64 16, !395, i64 24}
!1013 = !{!1012, !384, i64 8}
!1014 = !{!"branch_weights", i32 1, i32 35219}
!1015 = !{!1016, !389, i64 16}
!1016 = !{!"bitmap_element_def", !384, i64 0, !384, i64 8, !389, i64 16, !385, i64 24}
!1017 = !{!1012, !389, i64 16}
!1018 = !{!1012, !395, i64 24}
!1019 = !{!"function_entry_count", i64 881258}
!1020 = !{!"predict.c:bmp_iter_set"}
!1021 = !{!"branch_weights", i32 49916, i32 831344}
!1022 = !{!"branch_weights", i32 566591, i32 279450}
!1023 = !{!"branch_weights", i32 0, i32 566591}
!1024 = distinct !{!1024, !468}
!1025 = !{!"branch_weights", i32 1, i32 38779}
!1026 = !{!"branch_weights", i32 27644, i32 14698}
!1027 = !{!"branch_weights", i32 38779, i32 3562}
!1028 = distinct !{!1028, !468}
!1029 = !{!1016, !384, i64 0}
!1030 = !{!"branch_weights", i32 35219, i32 3562}
!1031 = !{!"function_entry_count", i64 846040}
!1032 = !{!"predict.c:VEC_basic_block_base_index"}
!1033 = !{!"predict.c:bmp_iter_next"}
!1034 = !{!"function_entry_count", i64 1049}
!1035 = !{!"predict.c:gate_estimate_probability"}
!1036 = !{!"predict.c:tree_estimate_probability_driver"}
!1037 = !{!"branch_weights", i32 8965, i32 1}
!1038 = !{!"function_entry_count", i64 6652}
!1039 = !{!"predict.c:strip_predict_hints"}
!1040 = !{!"branch_weights", i32 1, i32 6652}
!1041 = !{i64 0, i64 8, !383, i64 8, i64 8, !383, i64 16, i64 8, !383}
!1042 = !{!"branch_weights", i32 254442, i32 1}
!1043 = !{!"branch_weights", i32 -46079778, i32 7896418, i32 569621270}
!1044 = distinct !{!1044, !468}
!1045 = !{!"branch_weights", i32 3291, i32 89550}
!1046 = !{!"branch_weights", i32 104013, i32 1034926445}
!1047 = !{!"branch_weights", i32 9, i32 1}
!1048 = !{!"branch_weights", i32 532190, i32 254442}
!1049 = !{!"branch_weights", i32 6652, i32 247791}
!1050 = distinct !{!1050, !468}
!1051 = !{!"function_entry_count", i64 8}
!1052 = !{!"predict.c:gimple_call_lhs"}
