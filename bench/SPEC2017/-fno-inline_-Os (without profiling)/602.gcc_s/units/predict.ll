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
define dso_local zeroext i8 @maybe_hot_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %11 = tail call fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %10) #20, !range !18
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !19
  %15 = tail call fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %14) #20, !range !18
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %11, %8 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load ptr, ptr @profile_info, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = zext i32 %11 to i64
  %13 = icmp slt i64 %12, %0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !22
  %17 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.param_info, ptr %17, i64 42, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !23
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
define internal fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !6
  %3 = icmp ne ptr %2, null
  %4 = load i32, ptr @flag_branch_probabilities, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  br i1 %6, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 3
  switch i32 %12, label %14 [
    i32 0, label %27
    i32 2, label %13
  ]

13:                                               ; preds = %8
  br label %27

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.param_info, ptr %21, i64 43, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = sdiv i32 10000, %23
  %25 = icmp sle i32 %24, %0
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %20, %14, %8, %13
  %28 = phi i8 [ 1, %13 ], [ 0, %8 ], [ 1, %14 ], [ %26, %20 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cgraph_maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !6
  %3 = icmp ne ptr %2, null
  %4 = load i32, ptr @flag_branch_probabilities, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i64, ptr %0, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !22
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 42, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !23
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %10, %14
  %16 = icmp sgt i64 %8, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %7, %1
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %30) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %25
  %34 = load ptr, ptr %26, align 8, !tbaa !38
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !37
  %38 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !39
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !40
  %46 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.param_info, ptr %46, i64 43, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !23
  %49 = sdiv i32 1000, %48
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %43, %33, %17, %25, %7, %51
  %53 = phi i8 [ 1, %51 ], [ 0, %7 ], [ 0, %25 ], [ 0, %17 ], [ 1, %33 ], [ 0, %43 ]
  ret i8 %53
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %10 = load i64, ptr %9, align 8, !tbaa !41
  %11 = tail call fastcc zeroext i8 @maybe_hot_count_p(i64 noundef %10) #20, !range !18
  br label %22

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = mul nsw i32 %17, %15
  %19 = add nsw i32 %18, 5000
  %20 = sdiv i32 %19, 10000
  %21 = tail call fastcc zeroext i8 @maybe_hot_frequency_p(i32 noundef %20) #20, !range !18
  br label %22

22:                                               ; preds = %12, %8
  %23 = phi i8 [ %11, %8 ], [ %21, %12 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @probably_never_executed_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !6
  %3 = icmp ne ptr %2, null
  %4 = load i32, ptr @flag_branch_probabilities, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = lshr i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = zext i32 %11 to i64
  %16 = sdiv i64 %14, %15
  %17 = icmp eq i64 %16, 0
  br label %24

18:                                               ; preds = %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
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
define dso_local zeroext i8 @optimize_function_for_size_p(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !39
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

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
define dso_local zeroext i8 @optimize_function_for_speed_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %0) #20, !range !18
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %2) #20, !range !18
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #20, !range !18
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #20, !range !18
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %2) #20, !range !18
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0) #20, !range !18
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @optimize_edge_for_size_p(ptr noundef %0) #20, !range !18
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %1) #20, !range !18
  %3 = icmp ne i8 %2, 0
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #0 {
  %1 = tail call zeroext i8 @optimize_insn_for_size_p() #20, !range !18
  %2 = xor i8 %1, 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %3) #20, !range !18
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %3) #20, !range !18
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %0) #20, !range !18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %6, %0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %4, %32
  %11 = phi ptr [ %33, %32 ], [ %6, %4 ]
  %12 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %11) #20, !range !18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = icmp eq ptr %11, %0
  br i1 %23, label %35, label %24

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %30, %29 ], [ %11, %22 ]
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %25) #20
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %24, !llvm.loop !51

32:                                               ; preds = %24, %18, %14
  %33 = phi ptr [ %16, %14 ], [ %20, %18 ], [ %27, %24 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %10, !llvm.loop !53

35:                                               ; preds = %22, %10, %32, %29, %4, %1
  %36 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %29 ], [ 0, %22 ], [ 1, %10 ], [ 0, %32 ]
  ret i8 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !54
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
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
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef %0) #20, !range !18
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @predictable_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 1, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !23
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
define dso_local void @rtl_profile_for_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #20, !range !18
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rtl_profile_for_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0) #20, !range !18
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @default_rtl_profile() local_unnamed_addr #7 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @rtl_predicted_by_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !37
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
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !37
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %34, label %30

30:                                               ; preds = %17, %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %17, !llvm.loop !68

34:                                               ; preds = %22, %30, %11, %2
  %35 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %22 ], [ 0, %30 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @bb_predictions, align 8, !tbaa !6
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %8, %10 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.edge_prediction, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !69
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !71

14:                                               ; preds = %6, %10, %2
  %15 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @edge_probability_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !44
  %4 = tail call fastcc zeroext i8 @probability_reliable_p(i32 noundef %3) #20, !range !18
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @probability_reliable_p(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !13
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
define dso_local noundef zeroext i8 @br_prob_note_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 851968
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef nonnull @.str.3) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !37
  %11 = trunc i64 %10 to i32
  %12 = tail call fastcc zeroext i8 @probability_reliable_p(i32 noundef %11) #20, !range !18
  ret i8 %12
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_insn_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8
  tail call fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 438, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !39
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

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
define dso_local void @rtl_predict_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call i32 @any_condjump_p(ptr noundef %8) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !74
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
define dso_local void @gimple_predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef nonnull @.str.3) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi ptr [ %6, %3 ], [ %13, %10 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = load ptr, ptr %15, align 8, !tbaa !75
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #20
  %23 = icmp ugt i32 %22, 1
  %24 = load i32, ptr @flag_guess_branch_prob, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = load i32, ptr @optimize, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = tail call ptr @xmalloc(i64 noundef 24) #21
  %32 = load ptr, ptr @bb_predictions, align 8, !tbaa !6
  %33 = load ptr, ptr %0, align 8, !tbaa !43
  %34 = tail call ptr @pointer_map_insert(ptr noundef %32, ptr noundef %33) #21
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  store ptr %35, ptr %31, align 8, !tbaa !77
  store ptr %31, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 3
  store i32 %2, ptr %36, align 4, !tbaa !78
  %37 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 2
  store i32 %1, ptr %37, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct.edge_prediction, ptr %31, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !79
  br label %39

39:                                               ; preds = %30, %19, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !80
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
define dso_local void @remove_predictions_associated_with_edge(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %19
  %12 = phi ptr [ %17, %19 ], [ %9, %8 ]
  %13 = phi ptr [ %20, %19 ], [ %6, %8 ]
  %14 = getelementptr inbounds %struct.edge_prediction, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, %0
  %17 = load ptr, ptr %12, align 8, !tbaa !6
  br i1 %16, label %18, label %19

18:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #20
  store ptr %17, ptr %13, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %11, %18
  %20 = phi ptr [ %13, %18 ], [ %12, %11 ]
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %11, !llvm.loop !82

22:                                               ; preds = %19, %8, %4, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_edge_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8
  tail call void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %9) #21
  ret void
}

; Function Attrs: optsize
declare void @predict_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @invert_br_probabilities(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1, %28
  %6 = phi ptr [ %30, %28 ], [ %3, %1 ]
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %28 [
    i8 13, label %10
    i8 16, label %17
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !37
  %15 = sub nsw i64 10000, %14
  %16 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #21
  store ptr %16, ptr %11, align 8, !tbaa !37
  br label %28

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !37
  %24 = sub nsw i64 10000, %23
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %24) #21
  %26 = load ptr, ptr %18, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %25, ptr %27, align 8, !tbaa !37
  br label %28

28:                                               ; preds = %5, %10, %17
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5, !llvm.loop !83

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @guess_outgoing_edge_probabilities(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @bb_estimate_probability_locally(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  tail call fastcc void @combine_predictions_for_insn(ptr noundef %5, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bb_estimate_probability_locally(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call fastcc zeroext i8 @can_predict_insn_p(ptr noundef %5) #20, !range !18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @get_condition(ptr noundef %5, ptr noundef null, i32 noundef 0, i32 noundef 0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !39
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 1073807359
  %23 = icmp eq i32 %22, 1073741861
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 1073807359
  %29 = icmp eq i32 %28, 1073741861
  br i1 %29, label %30, label %34

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
  ]

36:                                               ; preds = %34
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %38 = icmp ne ptr %9, %37
  %39 = zext i1 %38 to i32
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 4, i32 noundef %39) #20
  br label %100

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !37
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !37
  switch i8 %48, label %49 [
    i8 8, label %100
    i8 9, label %100
    i8 11, label %100
    i8 17, label %100
  ]

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !37
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %53 = icmp eq ptr %51, %52
  %54 = icmp eq ptr %42, %52
  %55 = or i1 %53, %54
  br i1 %55, label %100, label %56

56:                                               ; preds = %49
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 16, i32 noundef 0) #20
  br label %100

57:                                               ; preds = %34, %34
  %58 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !37
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !37
  switch i8 %65, label %66 [
    i8 8, label %100
    i8 9, label %100
    i8 11, label %100
    i8 17, label %100
  ]

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  %69 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %70 = icmp eq ptr %68, %69
  %71 = icmp eq ptr %59, %69
  %72 = or i1 %70, %71
  br i1 %72, label %100, label %73

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
  %78 = load ptr, ptr %77, align 8, !tbaa !37
  %79 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %80 = icmp eq ptr %78, %79
  %81 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %82 = icmp eq ptr %78, %81
  %83 = select i1 %80, i1 true, i1 %82
  %84 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %85 = icmp eq ptr %78, %84
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %76
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 15, i32 noundef 0) #20
  br label %100

88:                                               ; preds = %34, %34
  %89 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !37
  %91 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %92 = icmp eq ptr %90, %91
  %93 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %94 = icmp eq ptr %90, %93
  %95 = select i1 %92, i1 true, i1 %94
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %97 = icmp eq ptr %90, %96
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  tail call void @predict_insn_def(ptr noundef %5, i32 noundef 15, i32 noundef 1) #20
  br label %100

100:                                              ; preds = %33, %32, %34, %99, %87, %66, %73, %49, %56, %75, %74, %36, %30, %40, %40, %40, %40, %57, %57, %57, %57, %76, %88, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_predictions_for_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @can_predict_insn_p(ptr noundef %0) #20, !range !18
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @set_even_probabilities(ptr noundef %1) #20
  br label %194

6:                                                ; preds = %2
  %7 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 13, ptr noundef null) #21
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !84
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.32, i32 noundef %13, i32 noundef %15) #20
  br label %17

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %8, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %74, label %20

20:                                               ; preds = %17, %60
  %21 = phi ptr [ %66, %60 ], [ %18, %17 ]
  %22 = phi i32 [ %64, %60 ], [ 5000, %17 ]
  %23 = phi i32 [ %63, %60 ], [ 28, %17 ]
  %24 = phi i32 [ %62, %60 ], [ 5000, %17 ]
  %25 = phi i8 [ %61, %60 ], [ 0, %17 ]
  %26 = load i32, ptr %21, align 8
  %27 = and i32 %26, 16711680
  %28 = icmp eq i32 %27, 1048576
  br i1 %28, label %29, label %60

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !37
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !37
  %41 = trunc i64 %40 to i32
  %42 = icmp ugt i32 %23, %36
  %43 = tail call i32 @llvm.umin.i32(i32 %23, i32 %36)
  %44 = select i1 %42, i32 %41, i32 %22
  %45 = mul nsw i32 %24, %41
  %46 = sub nsw i32 10000, %24
  %47 = sub nsw i32 10000, %41
  %48 = mul nsw i32 %47, %46
  %49 = add nsw i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

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
  %66 = load ptr, ptr %65, align 8, !tbaa !37
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %20, !llvm.loop !85

68:                                               ; preds = %60
  %69 = icmp eq i8 %61, 0
  %70 = zext nneg i32 %63 to i64
  %71 = lshr i64 536862991, %70
  %72 = and i64 %71, 1
  %73 = icmp ne i64 %72, 0
  br i1 %69, label %74, label %80

74:                                               ; preds = %17, %68
  %75 = phi i1 [ %73, %68 ], [ true, %17 ]
  %76 = phi i32 [ %64, %68 ], [ 5000, %17 ]
  %77 = phi i32 [ %63, %68 ], [ 28, %17 ]
  %78 = phi i32 [ %62, %68 ], [ 5000, %17 ]
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_prediction(ptr noundef %79, i32 noundef 3, i32 noundef %78, ptr noundef %1, i32 noundef 1) #20
  br label %86

80:                                               ; preds = %68
  %81 = xor i1 %73, true
  %82 = zext i1 %81 to i32
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %84 = trunc i64 %72 to i32
  tail call fastcc void @dump_prediction(ptr noundef %83, i32 noundef 1, i32 noundef %62, ptr noundef %1, i32 noundef %84) #20
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_prediction(ptr noundef %85, i32 noundef 2, i32 noundef %64, ptr noundef %1, i32 noundef %82) #20
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ %73, %80 ], [ %75, %74 ]
  %88 = phi i32 [ %64, %80 ], [ %76, %74 ]
  %89 = phi i32 [ %63, %80 ], [ %77, %74 ]
  %90 = phi i32 [ %62, %80 ], [ %78, %74 ]
  %91 = select i1 %87, i32 %90, i32 %88
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_prediction(ptr noundef %92, i32 noundef 0, i32 noundef %91, ptr noundef %1, i32 noundef 1) #20
  %93 = load ptr, ptr %8, align 8, !tbaa !6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %128, label %95

95:                                               ; preds = %86, %124
  %96 = phi ptr [ %125, %124 ], [ %93, %86 ]
  %97 = phi ptr [ %126, %124 ], [ %8, %86 ]
  %98 = load i32, ptr %96, align 8
  %99 = and i32 %98, 16711680
  %100 = icmp eq i32 %99, 1048576
  br i1 %100, label %101, label %121

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !37
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !37
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !37
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !37
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !37
  %113 = trunc i64 %112 to i32
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %115 = icmp eq i32 %89, %108
  %116 = select i1 %87, i1 true, i1 %115
  %117 = zext i1 %116 to i32
  tail call fastcc void @dump_prediction(ptr noundef %114, i32 noundef %108, i32 noundef %113, ptr noundef %1, i32 noundef %117) #20
  %118 = load ptr, ptr %97, align 8, !tbaa !6
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !37
  store ptr %120, ptr %97, align 8, !tbaa !6
  br label %124

121:                                              ; preds = %95
  %122 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  br label %124

124:                                              ; preds = %121, %101
  %125 = phi ptr [ %120, %101 ], [ %123, %121 ]
  %126 = phi ptr [ %97, %101 ], [ %122, %121 ]
  %127 = icmp eq ptr %125, null
  br i1 %127, label %128, label %95, !llvm.loop !86

128:                                              ; preds = %124, %86
  %129 = icmp eq ptr %7, null
  br i1 %129, label %130, label %159

130:                                              ; preds = %128
  %131 = sext i32 %91 to i64
  %132 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %131) #21
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 13, ptr noundef %132) #21
  %133 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !18
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %194

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !76
  %138 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 0) #20
  %139 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !74
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 1) #20
  br label %145

145:                                              ; preds = %135, %143
  %146 = phi ptr [ %144, %143 ], [ %138, %135 ]
  %147 = getelementptr inbounds %struct.edge_def, ptr %146, i64 0, i32 8
  store i32 %91, ptr %147, align 4, !tbaa !44
  %148 = sub nsw i32 10000, %91
  %149 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 0) #20
  %150 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 7
  %151 = load i32, ptr %150, align 8, !tbaa !74
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 1) #20
  br label %156

156:                                              ; preds = %145, %154
  %157 = phi ptr [ %155, %154 ], [ %149, %145 ]
  %158 = getelementptr inbounds %struct.edge_def, ptr %157, i64 0, i32 8
  store i32 %148, ptr %158, align 4, !tbaa !44
  br label %194

159:                                              ; preds = %128
  %160 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !18
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %191

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !37
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !37
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !76
  %170 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %169, i32 noundef 0) #20
  %171 = getelementptr inbounds %struct.edge_def, ptr %170, i64 0, i32 7
  %172 = load i32, ptr %171, align 8, !tbaa !74
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %162
  %176 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %169, i32 noundef 1) #20
  br label %177

177:                                              ; preds = %162, %175
  %178 = phi ptr [ %176, %175 ], [ %170, %162 ]
  %179 = getelementptr inbounds %struct.edge_def, ptr %178, i64 0, i32 8
  store i32 %167, ptr %179, align 4, !tbaa !44
  %180 = sub nsw i32 10000, %167
  %181 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %169, i32 noundef 0) #20
  %182 = getelementptr inbounds %struct.edge_def, ptr %181, i64 0, i32 7
  %183 = load i32, ptr %182, align 8, !tbaa !74
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %169, i32 noundef 1) #20
  br label %188

188:                                              ; preds = %177, %186
  %189 = phi ptr [ %187, %186 ], [ %181, %177 ]
  %190 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 8
  store i32 %180, ptr %190, align 4, !tbaa !44
  br label %194

191:                                              ; preds = %159
  %192 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  %193 = getelementptr inbounds %struct.edge_def, ptr %192, i64 0, i32 8
  store i32 10000, ptr %193, align 4, !tbaa !44
  br label %194

194:                                              ; preds = %156, %130, %191, %188, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_predict_insn_p(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !76
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
define internal fastcc void @set_even_probabilities(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !88
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1, %9
  %10 = phi i32 [ %17, %9 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = and i32 %13, 24
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %10, %16
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %18 = load i32, ptr %3, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %2) #20, !range !18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %9, !llvm.loop !89

22:                                               ; preds = %9, %1
  %23 = phi i32 [ 0, %1 ], [ %17, %9 ]
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  store ptr %5, ptr %6, align 8, !tbaa.struct !88
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = lshr i32 %23, 1
  %28 = add nuw nsw i32 %27, 10000
  br label %29

29:                                               ; preds = %26, %37
  %30 = load ptr, ptr %2, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !74
  %33 = and i32 %32, 24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

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
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #20, !range !18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %29, !llvm.loop !90

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
define internal fastcc void @dump_prediction(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %8 = icmp eq ptr %0, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !87
  %12 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !88
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %6) #20, !range !18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %6, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %22 = load i32, ptr %7, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %6) #20, !range !18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !91

26:                                               ; preds = %21, %15, %9
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 16, !tbaa !92
  %30 = icmp eq i32 %4, 0
  %31 = select i1 %30, ptr @.str.36, ptr @.str.35
  %32 = sitofp i32 %2 to double
  %33 = fmul double %32, 1.000000e+02
  %34 = fdiv double %33, 1.000000e+04
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %29, ptr noundef nonnull %31, double noundef %34) #20
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !15
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %26
  %40 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 7, i64 1, ptr nonnull %0)
  %41 = load i64, ptr %36, align 8, !tbaa !15
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i64 noundef %41) #20
  %43 = load ptr, ptr %6, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 5, i64 1, ptr nonnull %0)
  %47 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 9
  %48 = load i64, ptr %47, align 8, !tbaa !41
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i64 noundef %48) #20
  %50 = load i64, ptr %47, align 8, !tbaa !41
  %51 = sitofp i64 %50 to double
  %52 = fmul double %51, 1.000000e+02
  %53 = load i64, ptr %36, align 8, !tbaa !15
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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.3) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.3) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !93
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_estimate_probability() local_unnamed_addr #1 {
  tail call void @add_noreturn_fake_exit_edges() #21
  tail call void @connect_infinite_loops_to_exit() #21
  tail call void @create_preheaders(i32 noundef 1) #21
  tail call void @calculate_dominance_info(i32 noundef 2) #21
  %1 = tail call ptr @pointer_map_create() #21
  store ptr %1, ptr @bb_predictions, align 8, !tbaa !6
  tail call fastcc void @tree_bb_level_predictions() #20
  tail call void @record_loop_exits() #21
  %2 = tail call fastcc i32 @number_of_loops() #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call fastcc void @predict_loops() #20
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %40, label %15

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %18, %15 ], [ %11, %5 ]
  tail call fastcc void @tree_estimate_probability_bb(ptr noundef %16) #20
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %15, !llvm.loop !97

25:                                               ; preds = %15
  %26 = load ptr, ptr %21, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = icmp eq ptr %28, %18
  br i1 %29, label %40, label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %25 ]
  tail call fastcc void @combine_predictions_for_bb(ptr noundef %31) #20
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = load ptr, ptr @cfun, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %30, !llvm.loop !98

40:                                               ; preds = %30, %5, %25
  %41 = load ptr, ptr @bb_predictions, align 8, !tbaa !6
  tail call void @pointer_map_destroy(ptr noundef %41) #21
  store ptr null, ptr @bb_predictions, align 8, !tbaa !6
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
define internal fastcc void @tree_bb_level_predictions() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !87
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !88
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %1) #20, !range !18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %0, %19
  %14 = load ptr, ptr %1, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = and i32 %16, 26
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %20 = load i32, ptr %2, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %1) #20, !range !18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !99

24:                                               ; preds = %19, %13, %0
  %25 = phi i1 [ false, %0 ], [ %18, %13 ], [ %18, %19 ]
  tail call fastcc void @apply_return_prediction() #20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %76, label %35

35:                                               ; preds = %24, %67
  %36 = phi ptr [ %69, %67 ], [ %31, %24 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %36) #20
  %37 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35, %64
  %40 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %41 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %40) #20, !range !18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @gimple_call_flags(ptr noundef %40) #21
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %25, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef 9, i32 noundef 0) #20
  br label %49

49:                                               ; preds = %48, %43
  %50 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %40) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %54) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef 10, i32 noundef 0) #20
  br label %64

58:                                               ; preds = %39
  %59 = tail call fastcc i32 @gimple_code(ptr noundef %40) #20, !range !100
  %60 = icmp eq i32 %59, 33
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @gimple_predict_predictor(ptr noundef %40) #20, !range !101
  %63 = tail call fastcc i32 @gimple_predict_outcome(ptr noundef %40) #20, !range !102
  tail call fastcc void @predict_paths_leading_to(ptr noundef %36, i32 noundef %62, i32 noundef %63) #20
  br label %64

64:                                               ; preds = %58, %61, %49, %52, %57
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %65 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %39, label %67, !llvm.loop !103

67:                                               ; preds = %64, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  %70 = load ptr, ptr @cfun, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !10
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !96
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %76, label %35, !llvm.loop !104

76:                                               ; preds = %67, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #20
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_loops() unnamed_addr #1 {
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
  %8 = load ptr, ptr %2, align 8, !tbaa !6
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
  store ptr %15, ptr %3, align 8, !tbaa !6
  %16 = call fastcc i32 @VEC_edge_base_length(ptr noundef %15) #20
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %5) #20, !range !102
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 1
  br label %21

21:                                               ; preds = %19, %71
  %22 = phi i32 [ 0, %19 ], [ %72, %71 ]
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 46, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %5, align 8, !tbaa !6
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
  %73 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %15, i32 noundef %72, ptr noundef nonnull %5) #20, !range !102
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %21, !llvm.loop !108

75:                                               ; preds = %71, %13
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #20
  %76 = call ptr @get_loop_body(ptr noundef nonnull %14) #21
  %77 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !109
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
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = call zeroext i8 @predicted_by_p(ptr noundef %86, i32 noundef 8) #21
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %83
  %90 = load ptr, ptr %81, align 8, !tbaa !110
  %91 = icmp eq ptr %86, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load ptr, ptr %82, align 8, !tbaa !45
  %94 = call ptr @find_edge(ptr noundef %86, ptr noundef %93) #21
  store ptr %94, ptr %6, align 8, !tbaa !6
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
  store i32 0, ptr %7, align 8, !tbaa.struct !87
  store ptr %107, ptr %12, align 8, !tbaa.struct !88
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %6) #20, !range !18
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %103, %121
  %111 = load ptr, ptr %6, align 8, !tbaa !6
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !111
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !84
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
  %124 = call fastcc zeroext i8 @ei_cond(i32 %122, ptr %123, ptr noundef nonnull %6) #20, !range !18
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %110, !llvm.loop !112

126:                                              ; preds = %121, %103, %97, %100, %96, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %127 = add nuw nsw i64 %84, 1
  %128 = load i32, ptr %77, align 4, !tbaa !109
  %129 = zext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %83, label %131, !llvm.loop !113

131:                                              ; preds = %126, %75
  call void @free(ptr noundef %76) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %132 = load ptr, ptr %2, align 8, !tbaa !6
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %13, !llvm.loop !114

134:                                              ; preds = %131, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_estimate_probability_bb(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !88
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #20, !range !18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %128, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds i8, ptr %5, i64 8
  br label %15

15:                                               ; preds = %12, %123
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  %19 = load ptr, ptr %13, align 8, !tbaa !95
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %88, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @cfun, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp eq ptr %18, %26
  br i1 %27, label %88, label %28

28:                                               ; preds = %21
  %29 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %18) #20, !range !18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %88, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @single_succ_edge(ptr noundef %18) #20
  %33 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = load ptr, ptr @cfun, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !96
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %31
  %42 = load ptr, ptr %17, align 8, !tbaa !111
  %43 = tail call ptr @last_stmt(ptr noundef %42) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %88, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %43) #20, !range !100
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %49 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #20, !range !18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #20
  store i32 0, ptr %5, align 8, !tbaa.struct !87
  store ptr %52, ptr %14, align 8, !tbaa.struct !88
  %53 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %4) #20, !range !18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %51, %69
  %56 = load ptr, ptr %4, align 8, !tbaa !6
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  %58 = tail call zeroext i8 @predicted_by_p(ptr noundef %57, i32 noundef 26) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !43
  %62 = tail call zeroext i8 @predicted_by_p(ptr noundef %61, i32 noundef 24) #21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load ptr, ptr %56, align 8, !tbaa !43
  %66 = tail call zeroext i8 @predicted_by_p(ptr noundef %65, i32 noundef 25) #21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @predict_edge_def(ptr noundef nonnull %56, i32 noundef 22, i32 noundef 0) #20
  br label %69

69:                                               ; preds = %55, %60, %64, %68
  call fastcc void @ei_next(ptr noundef nonnull %5) #20
  %70 = load i32, ptr %5, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %4) #20, !range !18
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %87, label %55, !llvm.loop !115

74:                                               ; preds = %48
  %75 = load ptr, ptr %16, align 8, !tbaa !43
  %76 = tail call zeroext i8 @predicted_by_p(ptr noundef %75, i32 noundef 26) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load ptr, ptr %16, align 8, !tbaa !43
  %80 = tail call zeroext i8 @predicted_by_p(ptr noundef %79, i32 noundef 24) #21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load ptr, ptr %16, align 8, !tbaa !43
  %84 = tail call zeroext i8 @predicted_by_p(ptr noundef %83, i32 noundef 25) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @predict_edge_def(ptr noundef nonnull %16, i32 noundef 22, i32 noundef 0) #20
  br label %87

87:                                               ; preds = %69, %51, %74, %78, %82, %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %88

88:                                               ; preds = %87, %45, %41, %31, %28, %21, %15
  %89 = load ptr, ptr %17, align 8, !tbaa !111
  %90 = load ptr, ptr @cfun, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !10
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !96
  %95 = icmp eq ptr %89, %94
  %96 = icmp eq ptr %89, %0
  %97 = or i1 %96, %95
  br i1 %97, label %123, label %98

98:                                               ; preds = %88
  %99 = load ptr, ptr %16, align 8, !tbaa !43
  %100 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %89, ptr noundef %99) #21
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %16, align 8, !tbaa !43
  %104 = load ptr, ptr %17, align 8, !tbaa !111
  %105 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %103, ptr noundef %104) #21
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %108 = load ptr, ptr %17, align 8, !tbaa !111
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %108) #20
  %109 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107, %119
  %112 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20
  %113 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %112) #20, !range !18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %112) #21
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void @predict_edge_def(ptr noundef nonnull %16, i32 noundef 21, i32 noundef 0) #20
  br label %122

119:                                              ; preds = %115, %111
  call fastcc void @gsi_next(ptr noundef nonnull %6) #20
  %120 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !18
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %111, label %122, !llvm.loop !116

122:                                              ; preds = %119, %107, %118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  br label %123

123:                                              ; preds = %88, %98, %102, %122
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %124 = load i32, ptr %3, align 8
  %125 = load ptr, ptr %9, align 8
  %126 = call fastcc zeroext i8 @ei_cond(i32 %124, ptr %125, ptr noundef nonnull %2) #20, !range !18
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %15, !llvm.loop !117

128:                                              ; preds = %123, %1
  tail call fastcc void @tree_predict_by_opcode(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_predictions_for_bb(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !88
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %1, %25
  %10 = phi ptr [ %28, %25 ], [ null, %1 ]
  %11 = phi ptr [ %27, %25 ], [ null, %1 ]
  %12 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = and i32 %15, 24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = add nsw i32 %12, 1
  %20 = icmp eq ptr %11, null
  %21 = icmp ne ptr %10, null
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, ptr %10, ptr %13
  %24 = select i1 %20, ptr %13, ptr %11
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi i32 [ %12, %9 ], [ %19, %18 ]
  %27 = phi ptr [ %11, %9 ], [ %24, %18 ]
  %28 = phi ptr [ %10, %9 ], [ %23, %18 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %29 = load i32, ptr %3, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %2) #20, !range !18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %9, !llvm.loop !118

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, 2
  br i1 %34, label %48, label %35

35:                                               ; preds = %1, %33
  %36 = phi i32 [ %26, %33 ], [ 0, %1 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !15
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call fastcc void @set_even_probabilities(ptr noundef nonnull %0) #20
  br label %41

41:                                               ; preds = %40, %35
  tail call fastcc void @clear_bb_predictions(ptr noundef nonnull %0) #20
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %183, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !84
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.43, i32 noundef %36, i32 noundef %46) #20
  br label %183

48:                                               ; preds = %33
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !84
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.44, i32 noundef %53) #20
  br label %55

55:                                               ; preds = %51, %48
  %56 = load ptr, ptr @bb_predictions, align 8, !tbaa !6
  %57 = tail call ptr @pointer_map_contains(ptr noundef %56, ptr noundef %0) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %134, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %134, label %62

62:                                               ; preds = %59, %125
  %63 = phi ptr [ %127, %125 ], [ %60, %59 ]
  %64 = phi i32 [ %109, %125 ], [ 5000, %59 ]
  %65 = phi i32 [ %108, %125 ], [ 28, %59 ]
  %66 = phi i32 [ %126, %125 ], [ 5000, %59 ]
  %67 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !69
  %69 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !78
  %71 = getelementptr inbounds %struct.edge_prediction, ptr %63, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !79
  %73 = icmp eq ptr %72, %27
  %74 = sub nsw i32 10000, %70
  %75 = select i1 %73, i32 %70, i32 %74
  %76 = icmp ugt i32 %65, %68
  br i1 %76, label %77, label %107

77:                                               ; preds = %62
  %78 = icmp slt i32 %75, 5000
  %79 = icmp sgt i32 %75, 4999
  %80 = icmp slt i32 %75, 5001
  br label %81

81:                                               ; preds = %77, %103
  %82 = phi ptr [ %60, %77 ], [ %105, %103 ]
  %83 = phi i32 [ %75, %77 ], [ %104, %103 ]
  %84 = icmp eq ptr %82, %63
  br i1 %84, label %103, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.edge_prediction, ptr %82, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !69
  %88 = icmp eq i32 %87, %68
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.edge_prediction, ptr %82, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  %92 = icmp eq ptr %91, %27
  %93 = select i1 %92, i32 %70, i32 %74
  %94 = icmp sgt i32 %93, 4999
  %95 = xor i1 %78, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = icmp sgt i32 %93, %75
  %98 = and i1 %79, %97
  %99 = icmp slt i32 %93, %75
  %100 = and i1 %80, %99
  %101 = or i1 %98, %100
  %102 = select i1 %101, i32 %93, i32 %83
  br label %103

103:                                              ; preds = %96, %81, %85
  %104 = phi i32 [ %83, %85 ], [ %83, %81 ], [ %102, %96 ]
  %105 = load ptr, ptr %82, align 8, !tbaa !6
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %81, !llvm.loop !119

107:                                              ; preds = %89, %103, %62
  %108 = phi i32 [ %65, %62 ], [ %65, %89 ], [ %68, %103 ]
  %109 = phi i32 [ %64, %62 ], [ %64, %89 ], [ %104, %103 ]
  %110 = mul nsw i32 %75, %66
  %111 = sub nsw i32 10000, %66
  %112 = sub nsw i32 10000, %75
  %113 = mul nsw i32 %112, %111
  %114 = add nsw i32 %113, %110
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %107
  %117 = sitofp i32 %66 to double
  %118 = sitofp i32 %75 to double
  %119 = fmul double %117, %118
  %120 = fmul double %119, 1.000000e+04
  %121 = sitofp i32 %114 to double
  %122 = fdiv double %120, %121
  %123 = fadd double %122, 5.000000e-01
  %124 = fptosi double %123 to i32
  br label %125

125:                                              ; preds = %107, %116
  %126 = phi i32 [ %124, %116 ], [ 5000, %107 ]
  %127 = load ptr, ptr %63, align 8, !tbaa !6
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %62, !llvm.loop !120

129:                                              ; preds = %125
  %130 = zext nneg i32 %108 to i64
  %131 = lshr i64 536862991, %130
  %132 = and i64 %131, 1
  %133 = icmp ne i64 %132, 0
  br i1 %61, label %134, label %140

134:                                              ; preds = %59, %55, %129
  %135 = phi i1 [ %133, %129 ], [ true, %55 ], [ true, %59 ]
  %136 = phi i32 [ %109, %129 ], [ 5000, %55 ], [ 5000, %59 ]
  %137 = phi i32 [ %108, %129 ], [ 28, %55 ], [ 28, %59 ]
  %138 = phi i32 [ %126, %129 ], [ 5000, %55 ], [ 5000, %59 ]
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_prediction(ptr noundef %139, i32 noundef 3, i32 noundef %138, ptr noundef %0, i32 noundef 1) #20
  br label %146

140:                                              ; preds = %129
  %141 = xor i1 %133, true
  %142 = zext i1 %141 to i32
  %143 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %144 = trunc i64 %132 to i32
  tail call fastcc void @dump_prediction(ptr noundef %143, i32 noundef 1, i32 noundef %126, ptr noundef %0, i32 noundef %144) #20
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_prediction(ptr noundef %145, i32 noundef 2, i32 noundef %109, ptr noundef %0, i32 noundef %142) #20
  br label %146

146:                                              ; preds = %140, %134
  %147 = phi i1 [ %133, %140 ], [ %135, %134 ]
  %148 = phi i32 [ %109, %140 ], [ %136, %134 ]
  %149 = phi i32 [ %108, %140 ], [ %137, %134 ]
  %150 = phi i32 [ %126, %140 ], [ %138, %134 ]
  %151 = select i1 %147, i32 %150, i32 %148
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_prediction(ptr noundef %152, i32 noundef 0, i32 noundef %151, ptr noundef %0, i32 noundef 1) #20
  br i1 %58, label %175, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr %57, align 8, !tbaa !6
  %155 = icmp eq ptr %154, null
  br i1 %155, label %175, label %156

156:                                              ; preds = %153, %156
  %157 = phi ptr [ %173, %156 ], [ %154, %153 ]
  %158 = getelementptr inbounds %struct.edge_prediction, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !69
  %160 = getelementptr inbounds %struct.edge_prediction, ptr %157, i64 0, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !78
  %162 = getelementptr inbounds %struct.edge_prediction, ptr %157, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !79
  %164 = load ptr, ptr %4, align 8, !tbaa !76
  %165 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %164, i32 noundef 0) #20
  %166 = icmp eq ptr %163, %165
  %167 = sub nsw i32 10000, %161
  %168 = select i1 %166, i32 %161, i32 %167
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %170 = icmp eq i32 %149, %159
  %171 = or i1 %147, %170
  %172 = zext i1 %171 to i32
  tail call fastcc void @dump_prediction(ptr noundef %169, i32 noundef %159, i32 noundef %168, ptr noundef %0, i32 noundef %172) #20
  %173 = load ptr, ptr %157, align 8, !tbaa !6
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %156, !llvm.loop !121

175:                                              ; preds = %156, %153, %146
  tail call fastcc void @clear_bb_predictions(ptr noundef %0) #20
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %177 = load i64, ptr %176, align 8, !tbaa !15
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 8
  store i32 %151, ptr %180, align 4, !tbaa !44
  %181 = sub nsw i32 10000, %151
  %182 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 8
  store i32 %181, ptr %182, align 4, !tbaa !44
  br label %183

183:                                              ; preds = %175, %179, %41, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_bb_frequencies() local_unnamed_addr #1 {
  %1 = alloca %struct.sreal, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !13
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = tail call i32 @counts_to_freqs() #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %110

14:                                               ; preds = %11, %0
  %15 = load i1, ptr @estimate_bb_frequencies.real_values_initialized, align 4
  br i1 %15, label %24, label %16

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
  %26 = load ptr, ptr @cfun, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = tail call fastcc ptr @single_succ_edge(ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 10000, ptr %31, align 4, !tbaa !44
  tail call void @alloc_aux_for_blocks(i32 noundef 32) #21
  tail call void @alloc_aux_for_edges(i32 noundef 24) #21
  %32 = load ptr, ptr @cfun, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %24
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  br label %39

39:                                               ; preds = %37, %59
  %40 = phi ptr [ %35, %37 ], [ %61, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  store ptr %42, ptr %38, align 8, !tbaa.struct !88
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %2) #20, !range !18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %39, %45
  %46 = load ptr, ptr %2, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !122
  %49 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !44
  %51 = sext i32 %50 to i64
  %52 = tail call ptr @sreal_init(ptr noundef %48, i64 noundef %51, i32 noundef 0) #21
  %53 = load ptr, ptr %47, align 8, !tbaa !122
  %54 = tail call ptr @sreal_mul(ptr noundef %53, ptr noundef %53, ptr noundef nonnull @real_inv_br_prob_base) #21
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %55 = load i32, ptr %3, align 8
  %56 = load ptr, ptr %38, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %2) #20, !range !18
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %45, !llvm.loop !123

59:                                               ; preds = %45, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %39, !llvm.loop !124

63:                                               ; preds = %59, %24
  tail call fastcc void @estimate_loops() #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %64 = load ptr, ptr @cfun, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !96
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %90, label %73

73:                                               ; preds = %63, %81
  %74 = phi ptr [ %83, %81 ], [ %69, %63 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !125
  %77 = call i32 @sreal_compare(ptr noundef nonnull %1, ptr noundef %76) #21
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load ptr, ptr %75, align 8, !tbaa !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false)
  br label %81

81:                                               ; preds = %73, %79
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  %84 = load ptr, ptr @cfun, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !10
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !96
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %90, label %73, !llvm.loop !126

90:                                               ; preds = %81, %63
  %91 = call ptr @sreal_div(ptr noundef nonnull %1, ptr noundef nonnull @real_bb_freq_max, ptr noundef nonnull %1) #21
  %92 = load ptr, ptr @cfun, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !10
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %90, %97
  %98 = phi ptr [ %107, %97 ], [ %95, %90 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !125
  %101 = call ptr @sreal_mul(ptr noundef nonnull %4, ptr noundef %100, ptr noundef nonnull %1) #21
  %102 = call ptr @sreal_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @real_one_half) #21
  %103 = call i64 @sreal_to_int(ptr noundef nonnull %4) #21
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 11
  store i32 %104, ptr %105, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %97, !llvm.loop !127

109:                                              ; preds = %97, %90
  call void @free_aux_for_blocks() #21
  call void @free_aux_for_edges() #21
  br label %110

110:                                              ; preds = %109, %11
  call void @compute_function_frequency() #20
  %111 = load i32, ptr @flag_reorder_functions, align 4, !tbaa !39
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

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
define internal fastcc void @apply_return_prediction() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !88
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %1) #20, !range !18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %0, %21
  %14 = load ptr, ptr %1, align 8, !tbaa !6
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = tail call ptr @last_stmt(ptr noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %16) #20, !range !100
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %26, label %21

21:                                               ; preds = %13, %18
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #20, !range !18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !llvm.loop !128

26:                                               ; preds = %21, %18, %0
  %27 = phi ptr [ null, %0 ], [ %16, %18 ], [ %16, %21 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_return_retval(ptr noundef %27) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !37
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %39) #20, !range !100
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %80

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef nonnull %39) #20
  %46 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef 0) #20
  %47 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %48 = call fastcc i32 @return_prediction(ptr noundef %47, ptr noundef nonnull %2) #20, !range !129
  %49 = icmp sgt i32 %45, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %44, %56
  %51 = phi i32 [ %57, %56 ], [ 1, %44 ]
  %52 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef %51) #20
  %53 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %52) #20
  %54 = call fastcc i32 @return_prediction(ptr noundef %53, ptr noundef nonnull %2) #20, !range !129
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %45
  br i1 %58, label %80, label %50, !llvm.loop !130

59:                                               ; preds = %50, %44
  %60 = phi i32 [ 1, %44 ], [ %51, %50 ]
  %61 = icmp ne i32 %60, %45
  %62 = icmp sgt i32 %45, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = zext nneg i32 %45 to i64
  br label %66

66:                                               ; preds = %64, %77
  %67 = phi i64 [ 0, %64 ], [ %78, %77 ]
  %68 = trunc i64 %67 to i32
  %69 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %39, i32 noundef %68) #20
  %70 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %69) #20
  %71 = call fastcc i32 @return_prediction(ptr noundef %70, ptr noundef nonnull %2) #20, !range !129
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef nonnull %39, i64 noundef %67) #20
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = load i32, ptr %2, align 4, !tbaa !39
  tail call fastcc void @predict_paths_leading_to(ptr noundef %75, i32 noundef %71, i32 noundef %76) #20
  br label %77

77:                                               ; preds = %66, %73
  %78 = add nuw nsw i64 %67, 1
  %79 = icmp eq i64 %78, %65
  br i1 %79, label %80, label %66, !llvm.loop !131

80:                                               ; preds = %56, %77, %59, %33, %37, %41, %30, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !132
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !132
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !100
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_paths_leading_to(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  tail call fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %0, i32 noundef %1, i32 noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_predictor(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 32767
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_outcome(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 31
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !132
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  store ptr %4, ptr %0, align 8, !tbaa !132
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !37
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @return_prediction(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %34 [
    i16 10, label %9
    i16 12, label %9
    i16 6, label %12
    i16 7, label %12
    i16 8, label %12
  ]

9:                                                ; preds = %4, %4
  %10 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %31

12:                                               ; preds = %4, %4, %4
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %0) #21
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %0, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i64 [ %20, %19 ], [ %13, %12 ]
  %23 = and i64 %22, 131072
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = tail call i32 @integer_onep(ptr noundef nonnull %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %16, %9
  %32 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 1, %28 ]
  %33 = phi i32 [ 26, %9 ], [ 25, %16 ], [ 24, %28 ]
  store i32 %32, ptr %1, align 4, !tbaa !39
  br label %34

34:                                               ; preds = %31, %9, %21, %25, %28, %4, %2
  %35 = phi i32 [ 3, %2 ], [ 3, %4 ], [ 3, %28 ], [ 3, %25 ], [ 3, %21 ], [ 3, %9 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !18
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !100
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !142
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !100
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !39
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !37
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3103, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !143
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !144
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !87
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !88
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %5) #20, !range !18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, %0
  br label %13

13:                                               ; preds = %11, %28
  %14 = load ptr, ptr %5, align 8, !tbaa !6
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !84
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %15, ptr noundef %1) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  br i1 %12, label %27, label %23

23:                                               ; preds = %22
  %24 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %0, ptr noundef %1) #21
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

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
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %5) #20, !range !18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %13, !llvm.loop !148

33:                                               ; preds = %28, %4
  %34 = tail call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %33 ]
  tail call fastcc void @predict_paths_for_bb(ptr noundef nonnull %37, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %38 = tail call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !149

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
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !150
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !152
  store ptr null, ptr %1, align 8, !tbaa !6
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !152
  %12 = load ptr, ptr @cfun, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !154
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !152
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #20
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !155

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !80
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
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
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
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
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !150
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !152
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #20, !range !102
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !150
  %13 = load i32, ptr %3, align 4, !tbaa !39
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #20
  store ptr %14, ptr %1, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !156

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #20
  store ptr null, ptr %1, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 4, !tbaa !157
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !157
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !157
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !39
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_predict_by_opcode(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call ptr @last_stmt(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %127, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #20, !range !100
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %127

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !87
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !88
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %2) #20, !range !18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %2) #20, !range !18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !159

26:                                               ; preds = %21, %15, %9
  %27 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %4) #20
  %28 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %4) #20
  %29 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %4) #20, !range !160
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %34 = tail call fastcc ptr @expr_expected_value_1(ptr noundef %33, ptr noundef %27, i32 noundef %29, ptr noundef %28, ptr noundef %32) #20
  tail call void @bitmap_obstack_free(ptr noundef %32) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = tail call i32 @integer_zerop(ptr noundef nonnull %34) #21
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %2, align 8, !tbaa !6
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
  ]

45:                                               ; preds = %42, %42
  %46 = trunc i32 %29 to i16
  switch i16 %46, label %127 [
    i16 101, label %47
    i16 102, label %49
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %48, i32 noundef 14, i32 noundef 0) #20
  br label %127

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8, !tbaa !6
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
  ]

53:                                               ; preds = %51, %51
  switch i16 %44, label %60 [
    i16 9, label %127
    i16 13, label %54
    i16 14, label %54
  ]

54:                                               ; preds = %53, %53
  %55 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 9
  br i1 %59, label %127, label %60

60:                                               ; preds = %53, %54
  %61 = tail call i32 @integer_zerop(ptr noundef nonnull %27) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %127

63:                                               ; preds = %60
  %64 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %127

66:                                               ; preds = %63
  %67 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %67, i32 noundef 19, i32 noundef 0) #20
  br label %127

68:                                               ; preds = %51, %51
  switch i16 %44, label %75 [
    i16 9, label %127
    i16 13, label %69
    i16 14, label %69
  ]

69:                                               ; preds = %68, %68
  %70 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !37
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 9
  br i1 %74, label %127, label %75

75:                                               ; preds = %68, %69
  %76 = tail call i32 @integer_zerop(ptr noundef nonnull %27) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %75
  %79 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %78
  %82 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %82, i32 noundef 19, i32 noundef 1) #20
  br label %127

83:                                               ; preds = %51
  %84 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %84, i32 noundef 20, i32 noundef 1) #20
  br label %127

85:                                               ; preds = %51
  %86 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %86, i32 noundef 20, i32 noundef 0) #20
  br label %127

87:                                               ; preds = %51, %51
  %88 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = tail call i32 @integer_onep(ptr noundef %28) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = tail call i32 @real_zerop(ptr noundef %28) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = tail call i32 @real_onep(ptr noundef %28) #21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = tail call i32 @real_minus_onep(ptr noundef %28) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %127, label %105

105:                                              ; preds = %102, %99, %96, %93, %90, %87
  %106 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %106, i32 noundef 18, i32 noundef 0) #20
  br label %127

107:                                              ; preds = %51, %51
  %108 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = tail call i32 @integer_onep(ptr noundef %28) #21
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = tail call i32 @real_zerop(ptr noundef %28) #21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = tail call i32 @real_onep(ptr noundef %28) #21
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = tail call i32 @real_minus_onep(ptr noundef %28) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122, %119, %116, %113, %110, %107
  %126 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @predict_edge_def(ptr noundef %126, i32 noundef 18, i32 noundef 1) #20
  br label %127

127:                                              ; preds = %49, %47, %51, %122, %125, %102, %105, %69, %75, %78, %81, %54, %60, %63, %66, %85, %83, %45, %53, %68, %40, %41, %1, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expr_expected_value_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
  br label %6

6:                                                ; preds = %60, %5
  %7 = phi ptr [ %0, %5 ], [ %63, %60 ]
  %8 = phi ptr [ %1, %5 ], [ %64, %60 ]
  %9 = phi i32 [ %2, %5 ], [ %65, %60 ]
  %10 = phi ptr [ %3, %5 ], [ %66, %60 ]
  %11 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %9) #20, !range !100
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %109 [
    i8 3, label %13
    i8 1, label %88
    i8 2, label %100
  ]

13:                                               ; preds = %6
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 131072
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %109

17:                                               ; preds = %13
  %18 = icmp eq i32 %9, 141
  br i1 %18, label %19, label %109

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !37
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %23) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %109

26:                                               ; preds = %19
  %27 = load i32, ptr %22, align 8, !tbaa !37
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %27) #21
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !100
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %21) #20
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %109

34:                                               ; preds = %31, %50
  %35 = phi i32 [ %52, %50 ], [ 0, %31 ]
  %36 = phi ptr [ %51, %50 ], [ null, %31 ]
  %37 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %21, i32 noundef %35) #20
  %38 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %37) #20
  %39 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #20
  %40 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %39) #20
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = tail call fastcc ptr @expr_expected_value(ptr noundef %38, ptr noundef %4) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %109, label %45

45:                                               ; preds = %42
  %46 = icmp eq ptr %36, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = tail call i32 @operand_equal_p(ptr noundef nonnull %36, ptr noundef nonnull %43, i32 noundef 0) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %109, label %50

50:                                               ; preds = %34, %45, %47
  %51 = phi ptr [ %36, %47 ], [ %43, %45 ], [ %36, %34 ]
  %52 = add nuw nsw i32 %35, 1
  %53 = icmp eq i32 %52, %32
  br i1 %53, label %109, label %34, !llvm.loop !161

54:                                               ; preds = %26
  %55 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %21) #20, !range !18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %59 = icmp eq ptr %58, %8
  br i1 %59, label %60, label %109

60:                                               ; preds = %57
  %61 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !37
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %65 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !160
  %66 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  br label %6

67:                                               ; preds = %54
  %68 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %21) #20, !range !18
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %109, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %21) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %109, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %71, i64 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 8191
  %77 = icmp eq i32 %76, 6590
  br i1 %77, label %78, label %109

78:                                               ; preds = %73
  %79 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %21) #20
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = tail call fastcc ptr @gimple_call_arg(ptr noundef %21, i32 noundef 0) #20
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 131072
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = tail call fastcc ptr @gimple_call_arg(ptr noundef %21, i32 noundef 1) #20
  br label %109

88:                                               ; preds = %6
  %89 = tail call fastcc ptr @expr_expected_value(ptr noundef %8, ptr noundef %4) #20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @expr_expected_value(ptr noundef %10, ptr noundef %4) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %109, label %94

94:                                               ; preds = %91
  %95 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %7, ptr noundef nonnull %89, ptr noundef nonnull %92) #21
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 131072
  %98 = icmp eq i64 %97, 0
  %99 = select i1 %98, ptr null, ptr %95
  br label %109

100:                                              ; preds = %6
  %101 = tail call fastcc ptr @expr_expected_value(ptr noundef %8, ptr noundef %4) #20
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !37
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expr_expected_value(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  call void @extract_ops_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = load ptr, ptr %4, align 8, !tbaa !6
  %13 = load i32, ptr %3, align 4, !tbaa !39
  %14 = load ptr, ptr %5, align 8, !tbaa !6
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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !100
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !160
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !100
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
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
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !100
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !37
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_bb_predictions(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !6
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  tail call void @free(ptr noundef nonnull %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !162

12:                                               ; preds = %8, %5
  store ptr null, ptr %3, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @counts_to_freqs() local_unnamed_addr #15 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %8)
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !163

15:                                               ; preds = %6
  %16 = tail call i64 @llvm.smax.i64(i64 %11, i64 1)
  br i1 %5, label %31, label %17

17:                                               ; preds = %15
  %18 = lshr i64 %16, 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %4, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !15
  %23 = mul nsw i64 %22, 10000
  %24 = add nsw i64 %23, %18
  %25 = sdiv i64 %24, %16
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 11
  store i32 %26, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !164

31:                                               ; preds = %19, %0, %15
  %32 = phi i64 [ %11, %15 ], [ 0, %0 ], [ %11, %19 ]
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expensive_function_p(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp slt i32 %0, 10001
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2047, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %4
  %13 = mul nsw i32 %10, %0
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %64, label %31

19:                                               ; preds = %54
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %19, %31
  %22 = phi ptr [ %32, %31 ], [ %20, %19 ]
  %23 = phi i32 [ %34, %31 ], [ %55, %19 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %64, label %31

31:                                               ; preds = %12, %21
  %32 = phi ptr [ %22, %21 ], [ %5, %12 ]
  %33 = phi ptr [ %25, %21 ], [ %15, %12 ]
  %34 = phi i32 [ %23, %21 ], [ 0, %12 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  %37 = load ptr, ptr %36, align 8, !tbaa !37
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %21, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 11
  br label %45

45:                                               ; preds = %43, %54
  %46 = phi ptr [ %37, %43 ], [ %57, %54 ]
  %47 = phi i32 [ %34, %43 ], [ %55, %54 ]
  %48 = tail call i32 @active_insn_p(ptr noundef %46) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %44, align 8, !tbaa !19
  %52 = add i32 %51, %47
  %53 = icmp ugt i32 %52, %13
  br i1 %53, label %64, label %54

54:                                               ; preds = %45, %50
  %55 = phi i32 [ %52, %50 ], [ %47, %45 ]
  %56 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !37
  %58 = load ptr, ptr %35, align 8, !tbaa !37
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !66
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !37
  %63 = icmp eq ptr %57, %62
  br i1 %63, label %19, label %45, !llvm.loop !165

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
define internal fastcc void @estimate_loops() unnamed_addr #1 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %2 = tail call fastcc i32 @number_of_loops() #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  tail call fastcc void @estimate_loops_at_level(ptr noundef %11) #20
  br label %12

12:                                               ; preds = %4, %0
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !84
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %21) #21
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !llvm.loop !166

26:                                               ; preds = %18
  %27 = load ptr, ptr @cfun, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = load ptr, ptr %29, align 8, !tbaa !75
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
define dso_local void @compute_function_frequency() local_unnamed_addr #1 {
  %1 = load ptr, ptr @profile_info, align 8, !tbaa !6
  %2 = icmp ne ptr %1, null
  %3 = load i32, ptr @flag_branch_probabilities, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %29, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -196609
  store i32 %16, ptr %14, align 8
  br label %64

17:                                               ; preds = %6
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %20) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -196609
  %28 = or disjoint i32 %27, 131072
  store i32 %28, ptr %25, align 8
  br label %64

29:                                               ; preds = %0
  %30 = load ptr, ptr @cfun, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -196609
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %29, %58
  %43 = phi ptr [ %59, %58 ], [ %40, %29 ]
  %44 = phi i32 [ %60, %58 ], [ %33, %29 ]
  %45 = phi ptr [ %62, %58 ], [ %38, %29 ]
  %46 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %45) #20, !range !18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = and i32 %44, -196609
  %50 = or disjoint i32 %49, 131072
  store i32 %50, ptr %31, align 8
  br label %64

51:                                               ; preds = %42
  %52 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %45) #20, !range !18
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = and i32 %44, -196609
  %56 = or disjoint i32 %55, 65536
  store i32 %56, ptr %31, align 8
  %57 = load ptr, ptr %39, align 8, !tbaa !96
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %43, %51 ], [ %57, %54 ]
  %60 = phi i32 [ %44, %51 ], [ %56, %54 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %64, label %42, !llvm.loop !167

64:                                               ; preds = %58, %29, %12, %23, %17, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_function_section() unnamed_addr #1 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %36

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp ne ptr %10, null
  %12 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %36, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 196608
  %20 = icmp eq i32 %19, 131072
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = tail call ptr @build_string(i32 noundef 9, ptr noundef nonnull @.str.46) #21
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %23, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !37
  %25 = load ptr, ptr @cfun, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 20
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %27, %21 ], [ %18, %15 ]
  %30 = and i32 %29, 196608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = tail call ptr @build_string(i32 noundef 14, ptr noundef nonnull @.str.47) #21
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %34, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !37
  br label %36

36:                                               ; preds = %0, %8, %32, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_loops_at_level(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1, %29
  %4 = phi ptr [ %33, %29 ], [ %0, %1 ]
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %6 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  tail call fastcc void @estimate_loops_at_level(ptr noundef %7) #20
  %8 = tail call ptr @loop_latch_edge(ptr noundef nonnull %4) #21
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = getelementptr inbounds %struct.edge_info_def, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = tail call ptr @get_loop_body(ptr noundef nonnull %4) #21
  %15 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !109
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %3 ]
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !84
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #21
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %15, align 4, !tbaa !109
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %18, label %29, !llvm.loop !168

29:                                               ; preds = %18, %3
  tail call void @free(ptr noundef %14) #20
  %30 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  tail call fastcc void @propagate_freq(ptr noundef %31, ptr noundef %5) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #21
  %32 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %3, !llvm.loop !169

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_freq(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
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
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #20, !range !18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  br label %16

16:                                               ; preds = %14, %67
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !170
  %22 = load i32, ptr %3, align 4, !tbaa !39
  %23 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %22) #20
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef %23) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !87
  store ptr %24, ptr %15, align 8, !tbaa.struct !88
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %4) #20, !range !18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  br label %29

29:                                               ; preds = %27, %61
  %30 = phi i32 [ 0, %27 ], [ %62, %61 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !6
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !84
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %34) #21
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = add nsw i32 %30, 1
  br label %61

45:                                               ; preds = %38
  %46 = load ptr, ptr @dump_file, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !122
  %51 = getelementptr inbounds %struct.edge_info_def, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load ptr, ptr %31, align 8, !tbaa !43
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !84
  %59 = load i32, ptr %28, align 8, !tbaa !84
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.45, i32 noundef %58, i32 noundef %59) #20
  br label %61

61:                                               ; preds = %29, %45, %48, %55, %43
  %62 = phi i32 [ %30, %48 ], [ %30, %55 ], [ %30, %45 ], [ %44, %43 ], [ %30, %29 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  %63 = load i32, ptr %6, align 8
  %64 = load ptr, ptr %15, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %4) #20, !range !18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %29, !llvm.loop !171

67:                                               ; preds = %61, %16
  %68 = phi i32 [ 0, %16 ], [ %62, %61 ]
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !125
  %71 = getelementptr inbounds %struct.block_info_def, ptr %70, i64 0, i32 2
  store i32 %68, ptr %71, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #20, !range !18
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %16, !llvm.loop !175

74:                                               ; preds = %67, %2
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) @real_one, i64 16, i1 false)
  %77 = getelementptr inbounds i8, ptr %7, i64 8
  br label %78

78:                                               ; preds = %74, %187
  %79 = phi ptr [ %0, %74 ], [ %188, %187 ]
  %80 = phi ptr [ %0, %74 ], [ %189, %187 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !125
  %83 = getelementptr inbounds %struct.block_info_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !176
  store ptr null, ptr %83, align 8, !tbaa !176
  %85 = icmp eq ptr %79, %0
  br i1 %85, label %134, label %86

86:                                               ; preds = %78
  %87 = call fastcc ptr @ei_start_1(ptr noundef nonnull %79) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !87
  store ptr %87, ptr %77, align 8, !tbaa.struct !88
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %4) #20, !range !18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %86, %116
  %91 = load ptr, ptr %4, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !122
  %94 = getelementptr inbounds %struct.edge_info_def, ptr %93, i64 0, i32 1
  %95 = load i8, ptr %94, align 8
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %90
  %99 = call ptr @sreal_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %93) #21
  br label %116

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !74
  %103 = and i32 %102, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  %106 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 8
  %107 = load i32, ptr %106, align 4, !tbaa !44
  %108 = sext i32 %107 to i64
  %109 = call ptr @sreal_init(ptr noundef nonnull %10, i64 noundef %108, i32 noundef 0) #21
  %110 = load ptr, ptr %91, align 8, !tbaa !43
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !125
  %113 = call ptr @sreal_mul(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef %112) #21
  %114 = call ptr @sreal_mul(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull @real_inv_br_prob_base) #21
  %115 = call ptr @sreal_add(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %116

116:                                              ; preds = %98, %105, %100
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %117 = load i32, ptr %7, align 8
  %118 = load ptr, ptr %77, align 8
  %119 = call fastcc zeroext i8 @ei_cond(i32 %117, ptr %118, ptr noundef nonnull %4) #20, !range !18
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %90, !llvm.loop !177

121:                                              ; preds = %116, %86
  %122 = call i32 @sreal_compare(ptr noundef nonnull %8, ptr noundef nonnull @real_zero) #21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load ptr, ptr %81, align 8, !tbaa !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %125, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %134

126:                                              ; preds = %121
  %127 = call i32 @sreal_compare(ptr noundef nonnull %8, ptr noundef nonnull @real_almost_one) #21
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @real_almost_one, i64 16, i1 false)
  br label %130

130:                                              ; preds = %129, %126
  %131 = call ptr @sreal_sub(ptr noundef nonnull %8, ptr noundef nonnull @real_one, ptr noundef nonnull %8) #21
  %132 = load ptr, ptr %81, align 8, !tbaa !125
  %133 = call ptr @sreal_div(ptr noundef %132, ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  br label %134

134:                                              ; preds = %124, %130, %78
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !84
  %137 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %136) #21
  %138 = call ptr @find_edge(ptr noundef nonnull %79, ptr noundef nonnull %0) #21
  store ptr %138, ptr %4, align 8, !tbaa !6
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  %141 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 8
  %142 = load i32, ptr %141, align 4, !tbaa !44
  %143 = sext i32 %142 to i64
  %144 = call ptr @sreal_init(ptr noundef nonnull %11, i64 noundef %143, i32 noundef 0) #21
  %145 = load ptr, ptr %81, align 8, !tbaa !125
  %146 = call ptr @sreal_mul(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef %145) #21
  %147 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !122
  %149 = call ptr @sreal_mul(ptr noundef %148, ptr noundef nonnull %11, ptr noundef nonnull @real_inv_br_prob_base) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #22
  br label %150

150:                                              ; preds = %140, %134
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 1
  %152 = call fastcc ptr @ei_start_1(ptr noundef nonnull %151) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !87
  store ptr %152, ptr %77, align 8, !tbaa.struct !88
  %153 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %152, ptr noundef nonnull %4) #20, !range !18
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %187, label %155

155:                                              ; preds = %150, %180
  %156 = phi ptr [ %182, %180 ], [ %80, %150 ]
  %157 = phi ptr [ %181, %180 ], [ %84, %150 ]
  %158 = load ptr, ptr %4, align 8, !tbaa !6
  %159 = getelementptr inbounds %struct.edge_def, ptr %158, i64 0, i32 7
  %160 = load i32, ptr %159, align 8, !tbaa !74
  %161 = and i32 %160, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.edge_def, ptr %158, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !111
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !125
  %168 = getelementptr inbounds %struct.block_info_def, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !172
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %163
  %172 = add nsw i32 %169, -1
  store i32 %172, ptr %168, align 8, !tbaa !172
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = icmp eq ptr %157, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %156, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !125
  %179 = getelementptr inbounds %struct.block_info_def, ptr %178, i64 0, i32 1
  store ptr %165, ptr %179, align 8, !tbaa !176
  br label %180

180:                                              ; preds = %176, %174, %155, %163, %171
  %181 = phi ptr [ %157, %155 ], [ %157, %171 ], [ %157, %163 ], [ %157, %176 ], [ %165, %174 ]
  %182 = phi ptr [ %156, %155 ], [ %156, %171 ], [ %156, %163 ], [ %165, %176 ], [ %165, %174 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %183 = load i32, ptr %7, align 8
  %184 = load ptr, ptr %77, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %4) #20, !range !18
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %155, !llvm.loop !178

187:                                              ; preds = %180, %150
  %188 = phi ptr [ %84, %150 ], [ %181, %180 ]
  %189 = phi ptr [ %80, %150 ], [ %182, %180 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  %190 = icmp eq ptr %188, null
  br i1 %190, label %191, label %78, !llvm.loop !179

191:                                              ; preds = %187
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 {
  %4 = load ptr, ptr %1, align 8, !tbaa !180
  store ptr %4, ptr %0, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !184
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !182
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !185
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !187
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !142
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !188
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !188
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !189

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !39
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !39
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !187
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !182
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !187
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !142
  store i64 %35, ptr %3, align 8, !tbaa !188
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !39
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !39
  %40 = load i32, ptr %23, align 8, !tbaa !187
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !187
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !190

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !191
  store ptr %44, ptr %0, align 8, !tbaa !182
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !185
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !39
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !188
  store i32 %16, ptr %1, align 4, !tbaa !39
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !188
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !188
  %6 = load i32, ptr %1, align 4, !tbaa !39
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_predict_expr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
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
define dso_local ptr @predictor_name(i32 noundef %0) local_unnamed_addr #10 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 16, !tbaa !92
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_estimate_probability() #17 {
  %1 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !39
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_estimate_probability_driver() #1 {
  tail call void @loop_optimizer_init(i32 noundef 0) #21
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !39
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
  br i1 %11, label %12, label %13

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
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gimple_dump_cfg(ptr noundef nonnull %15, i32 noundef %18) #21
  br label %22

22:                                               ; preds = %21, %17, %14
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, ptr %26, align 8, !tbaa !13
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
define internal noundef i32 @strip_predict_hints() #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %49, label %12

12:                                               ; preds = %0, %40
  %13 = phi ptr [ %42, %40 ], [ %8, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !192
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12, %37
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %18 = call fastcc i32 @gimple_code(ptr noundef %17) #20, !range !100
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %36 [
    i8 33, label %20
    i8 8, label %21
  ]

20:                                               ; preds = %16
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %37, !llvm.loop !193

21:                                               ; preds = %16
  %22 = call fastcc ptr @gimple_call_fndecl(ptr noundef %17) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_function_decl, ptr %22, i64 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8191
  %28 = icmp eq i32 %27, 6590
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = call fastcc i32 @gimple_call_num_args(ptr noundef %17) #20
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

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
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %16, label %40

40:                                               ; preds = %37, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !95
  %43 = load ptr, ptr @cfun, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !96
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %49, label %12, !llvm.loop !194

49:                                               ; preds = %40, %0
  ret i32 0
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 {
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !12, i64 48}
!14 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!15 = !{!16, !17, i64 72}
!16 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !17, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!17 = !{!"long", !8, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{!16, !12, i64 88}
!20 = !{!21, !12, i64 4}
!21 = !{!"gcov_ctr_summary", !12, i64 0, !12, i64 4, !17, i64 8, !17, i64 16, !17, i64 24}
!22 = !{!21, !17, i64 24}
!23 = !{!24, !12, i64 8}
!24 = !{!"param_info", !7, i64 0, !12, i64 8, !8, i64 12, !12, i64 16, !12, i64 20, !7, i64 24}
!25 = !{!26, !17, i64 0}
!26 = !{!"cgraph_edge", !17, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !27, i64 88, !12, i64 90, !12, i64 90, !12, i64 90}
!27 = !{!"short", !8, i64 0}
!28 = !{!26, !7, i64 16}
!29 = !{!30, !7, i64 0}
!30 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !31, i64 144, !33, i64 184, !34, i64 224, !35, i64 232, !36, i64 256, !17, i64 288, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 309, !12, i64 309}
!31 = !{!"cgraph_local_info", !7, i64 0, !32, i64 8, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32}
!32 = !{!"inline_summary", !17, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!33 = !{!"cgraph_global_info", !17, i64 0, !17, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !8, i64 36}
!34 = !{!"cgraph_rtl_info", !12, i64 0}
!35 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!36 = !{!"cgraph_thunk_info", !17, i64 0, !17, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!37 = !{!8, !8, i64 0}
!38 = !{!26, !7, i64 8}
!39 = !{!12, !12, i64 0}
!40 = !{!26, !12, i64 80}
!41 = !{!42, !17, i64 56}
!42 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !17, i64 56}
!43 = !{!42, !7, i64 0}
!44 = !{!42, !12, i64 52}
!45 = !{!46, !7, i64 8}
!46 = !{!"loop", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !47, i64 24, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !48, i64 80, !48, i64 96, !8, i64 112, !8, i64 113, !12, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!47 = !{!"lpt_decision", !12, i64 0, !12, i64 4}
!48 = !{!"", !17, i64 0, !17, i64 8}
!49 = !{!46, !7, i64 48}
!50 = !{!46, !7, i64 56}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!46, !7, i64 40}
!55 = !{!56, !12, i64 0}
!56 = !{!"VEC_loop_p_base", !12, i64 0, !12, i64 4, !8, i64 8}
!57 = !{!58, !8, i64 478}
!58 = !{!"rtl_data", !59, i64 0, !60, i64 40, !61, i64 96, !62, i64 112, !64, i64 208, !65, i64 248, !12, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !17, i64 400, !7, i64 408, !7, i64 416, !7, i64 424, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !7, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!59 = !{!"expr_status", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!60 = !{!"emit_status", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !7, i64 48}
!61 = !{!"varasm_status", !7, i64 0, !12, i64 8}
!62 = !{!"incoming_args", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !63, i64 24, !7, i64 88}
!63 = !{!"ix86_args", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60}
!64 = !{!"function_subsections", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!65 = !{!"rtl_eh", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48}
!66 = !{!67, !7, i64 8}
!67 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32}
!68 = distinct !{!68, !52}
!69 = !{!70, !12, i64 16}
!70 = !{!"edge_prediction", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20}
!71 = distinct !{!71, !52}
!72 = !{!73, !12, i64 8}
!73 = !{!"predictor_info", !7, i64 0, !12, i64 8, !12, i64 12}
!74 = !{!42, !12, i64 48}
!75 = !{!14, !7, i64 0}
!76 = !{!16, !7, i64 8}
!77 = !{!70, !7, i64 0}
!78 = !{!70, !12, i64 20}
!79 = !{!70, !7, i64 8}
!80 = !{!81, !12, i64 0}
!81 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !52}
!84 = !{!16, !12, i64 80}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = !{i64 0, i64 4, !39, i64 8, i64 8, !6}
!88 = !{i64 0, i64 8, !6}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !52}
!92 = !{!73, !7, i64 0}
!93 = !{!94, !12, i64 0}
!94 = !{!"", !12, i64 0, !7, i64 8}
!95 = !{!16, !7, i64 56}
!96 = !{!14, !7, i64 8}
!97 = distinct !{!97, !52}
!98 = distinct !{!98, !52}
!99 = distinct !{!99, !52}
!100 = !{i32 0, i32 256}
!101 = !{i32 0, i32 32768}
!102 = !{i32 0, i32 2}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !52}
!105 = !{!11, !7, i64 32}
!106 = !{!107, !7, i64 8}
!107 = !{!"loops", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!108 = distinct !{!108, !52}
!109 = !{!46, !12, i64 36}
!110 = !{!46, !7, i64 16}
!111 = !{!42, !7, i64 8}
!112 = distinct !{!112, !52}
!113 = distinct !{!113, !52}
!114 = distinct !{!114, !52}
!115 = distinct !{!115, !52}
!116 = distinct !{!116, !52}
!117 = distinct !{!117, !52}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, !52}
!120 = distinct !{!120, !52}
!121 = distinct !{!121, !52}
!122 = !{!42, !7, i64 24}
!123 = distinct !{!123, !52}
!124 = distinct !{!124, !52}
!125 = !{!16, !7, i64 16}
!126 = distinct !{!126, !52}
!127 = distinct !{!127, !52}
!128 = distinct !{!128, !52}
!129 = !{i32 3, i32 27}
!130 = distinct !{!130, !52}
!131 = distinct !{!131, !52}
!132 = !{!133, !7, i64 0}
!133 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!134 = !{!133, !7, i64 8}
!135 = !{!133, !7, i64 16}
!136 = !{!137, !7, i64 0}
!137 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!138 = !{!137, !7, i64 16}
!139 = !{!140, !7, i64 24}
!140 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!141 = !{!16, !7, i64 0}
!142 = !{!17, !17, i64 0}
!143 = !{!16, !12, i64 96}
!144 = !{!145, !7, i64 0}
!145 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!146 = !{!147, !7, i64 0}
!147 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!148 = distinct !{!148, !52}
!149 = distinct !{!149, !52}
!150 = !{!151, !12, i64 8}
!151 = !{!"", !7, i64 0, !12, i64 8}
!152 = !{!151, !7, i64 0}
!153 = !{!107, !7, i64 24}
!154 = !{!46, !12, i64 0}
!155 = distinct !{!155, !52}
!156 = distinct !{!156, !52}
!157 = !{!158, !12, i64 0}
!158 = !{!"VEC_int_base", !12, i64 0, !12, i64 4, !8, i64 8}
!159 = distinct !{!159, !52}
!160 = !{i32 0, i32 65536}
!161 = distinct !{!161, !52}
!162 = distinct !{!162, !52}
!163 = distinct !{!163, !52}
!164 = distinct !{!164, !52}
!165 = distinct !{!165, !52}
!166 = distinct !{!166, !52}
!167 = distinct !{!167, !52}
!168 = distinct !{!168, !52}
!169 = distinct !{!169, !52}
!170 = !{!14, !7, i64 16}
!171 = distinct !{!171, !52}
!172 = !{!173, !12, i64 24}
!173 = !{!"block_info_def", !174, i64 0, !7, i64 16, !12, i64 24}
!174 = !{!"sreal", !17, i64 0, !12, i64 8}
!175 = distinct !{!175, !52}
!176 = !{!173, !7, i64 16}
!177 = distinct !{!177, !52}
!178 = distinct !{!178, !52}
!179 = distinct !{!179, !52}
!180 = !{!181, !7, i64 0}
!181 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!182 = !{!183, !7, i64 0}
!183 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !17, i64 24}
!184 = !{!183, !7, i64 8}
!185 = !{!186, !12, i64 16}
!186 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!187 = !{!183, !12, i64 16}
!188 = !{!183, !17, i64 24}
!189 = distinct !{!189, !52}
!190 = distinct !{!190, !52}
!191 = !{!186, !7, i64 0}
!192 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!193 = distinct !{!193, !52}
!194 = distinct !{!194, !52}
