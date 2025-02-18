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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.edge_info_def = type { %struct.sreal, i8 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.block_info_def = type { %struct.sreal, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [10 x i8] c".text.hot\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !128 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !129
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !128 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !129
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !128 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !139

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !133
  %11 = load i8, ptr %3, align 1, !tbaa !140
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !128 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !139

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !133
  %11 = load i8, ptr %3, align 1, !tbaa !140
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !128 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !129
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !139

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #27
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !133
  %11 = load i8, ptr %3, align 1, !tbaa !140
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !128 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !129
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !128 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !139

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !141
  store i8 %12, ptr %4, align 1, !tbaa !140
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !128 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !139

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !141
  store i8 %12, ptr %4, align 1, !tbaa !140
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !128 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !139

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !141
  store i8 %12, ptr %4, align 1, !tbaa !140
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !128 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #27
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !128 {
  %2 = load i32, ptr %0, align 8, !tbaa !143
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !128 {
  %2 = load i32, ptr %0, align 8, !tbaa !143
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !128 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !144
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !128 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !144
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !128 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !128 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !128 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !128 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #27
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !145

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !128 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !128 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !150
  %7 = icmp eq i32 %6, 2
  %8 = load ptr, ptr @profile_info, align 8, !tbaa !129
  br i1 %7, label %9, label %25, !prof !152

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !153
  %12 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %8, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !155
  %14 = zext i32 %13 to i64
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %8, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !157
  %19 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.param_info, ptr %19, i64 42, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !158
  %22 = sext i32 %21 to i64
  %23 = sdiv i64 %18, %22
  %24 = icmp slt i64 %23, %11
  br label %46

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !160
  %28 = icmp ne ptr %8, null
  %29 = load i32, ptr @flag_branch_probabilities, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false, !prof !152
  br i1 %31, label %38, label %32, !prof !152

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 3
  switch i32 %36, label %38 [
    i32 0, label %46
    i32 2, label %37
  ], !prof !161

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32, %25
  %39 = icmp eq i32 %6, 0
  br i1 %39, label %46, label %40, !prof !152

40:                                               ; preds = %38
  %41 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %42 = getelementptr inbounds %struct.param_info, ptr %41, i64 43, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !158
  %44 = sdiv i32 10000, %43
  %45 = icmp sle i32 %44, %27
  br label %46

46:                                               ; preds = %32, %40, %38, %37, %16, %9
  %47 = phi i1 [ %24, %16 ], [ false, %9 ], [ true, %37 ], [ true, %38 ], [ %45, %40 ], [ false, %32 ]
  %48 = zext i1 %47 to i8
  ret i8 %48
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @cgraph_maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !162 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %3 = icmp ne ptr %2, null
  %4 = load i32, ptr @flag_branch_probabilities, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false, !prof !163
  br i1 %6, label %7, label %17, !prof !163

7:                                                ; preds = %1
  %8 = load i64, ptr %0, align 8, !tbaa !164
  %9 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !157
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 42, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !158
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %10, %14
  %16 = icmp sgt i64 %8, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %7, %1
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !166
  %20 = load ptr, ptr %19, align 8, !tbaa !167
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %22) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52, !prof !175

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !176
  %28 = load ptr, ptr %27, align 8, !tbaa !167
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !140
  %31 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %30) #27
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %52, !prof !175

33:                                               ; preds = %25
  %34 = load ptr, ptr %26, align 8, !tbaa !176
  %35 = load ptr, ptr %34, align 8, !tbaa !167
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !140
  %38 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %37) #27
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %52, !prof !175

40:                                               ; preds = %33
  %41 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !144
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43, !prof !163

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !177
  %46 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %47 = getelementptr inbounds %struct.param_info, ptr %46, i64 43, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !158
  %49 = sdiv i32 1000, %48
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %52, !prof !178

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %7, %43, %33, %17, %25, %51
  %53 = phi i8 [ 1, %51 ], [ 0, %25 ], [ 0, %17 ], [ 1, %33 ], [ 0, %43 ], [ 0, %7 ]
  ret i8 %53
}

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @maybe_hot_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !128 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !150
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %25, !prof !179

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %10 = load i64, ptr %9, align 8, !tbaa !180
  %11 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !155
  %14 = zext i32 %13 to i64
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %11, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !157
  %19 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.param_info, ptr %19, i64 42, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !158
  %22 = sext i32 %21 to i64
  %23 = sdiv i64 %18, %22
  %24 = icmp slt i64 %23, %10
  br label %53

25:                                               ; preds = %1
  %26 = load ptr, ptr %0, align 8, !tbaa !182
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !160
  %29 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %30 = load i32, ptr %29, align 4, !tbaa !183
  %31 = mul nsw i32 %30, %28
  %32 = add nsw i32 %31, 5000
  %33 = sdiv i32 %32, 10000
  %34 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %35 = icmp ne ptr %34, null
  %36 = load i32, ptr @flag_branch_probabilities, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false, !prof !179
  br i1 %38, label %45, label %39, !prof !179

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 3
  switch i32 %43, label %45 [
    i32 0, label %53
    i32 2, label %44
  ], !prof !184

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39, %25
  %46 = icmp eq i32 %6, 0
  br i1 %46, label %53, label %47, !prof !179

47:                                               ; preds = %45
  %48 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %49 = getelementptr inbounds %struct.param_info, ptr %48, i64 43, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !158
  %51 = sdiv i32 10000, %50
  %52 = icmp sle i32 %51, %33
  br label %53

53:                                               ; preds = %39, %47, %45, %44, %16, %8
  %54 = phi i1 [ %24, %16 ], [ false, %8 ], [ true, %44 ], [ true, %45 ], [ %52, %47 ], [ false, %39 ]
  %55 = zext i1 %54 to i8
  ret i8 %55
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @probably_never_executed_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !185 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %3 = icmp ne ptr %2, null
  %4 = load i32, ptr @flag_branch_probabilities, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false, !prof !186
  br i1 %6, label %7, label %18, !prof !186

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !153
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !155
  %12 = lshr i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = zext i32 %11 to i64
  %16 = sdiv i64 %14, %15
  %17 = icmp eq i64 %16, 0
  br label %24

18:                                               ; preds = %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !129
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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_function_for_size_p(ptr noundef readonly %0) local_unnamed_addr #9 !prof !187 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12, !prof !188

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6, !prof !189

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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_function_for_speed_p(ptr noundef readonly %0) local_unnamed_addr #9 !prof !190 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12, !prof !191

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6, !prof !192

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 196608
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %4, %6
  %13 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !193 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %60, !prof !194

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7, !prof !195

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %60, label %12, !prof !195

12:                                               ; preds = %5, %7
  %13 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !150
  %17 = icmp eq i32 %16, 2
  %18 = load ptr, ptr @profile_info, align 8, !tbaa !129
  br i1 %17, label %19, label %35, !prof !152

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !153
  %22 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !155
  %24 = zext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %18, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !157
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 42, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !158
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %28, %32
  %34 = icmp slt i64 %33, %21
  br label %56

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !160
  %38 = icmp ne ptr %18, null
  %39 = load i32, ptr @flag_branch_probabilities, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false, !prof !152
  br i1 %41, label %48, label %42, !prof !152

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 3
  switch i32 %46, label %48 [
    i32 0, label %56
    i32 2, label %47
  ], !prof !161

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42, %35
  %49 = icmp eq i32 %16, 0
  br i1 %49, label %56, label %50, !prof !152

50:                                               ; preds = %48
  %51 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %52 = getelementptr inbounds %struct.param_info, ptr %51, i64 43, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !158
  %54 = sdiv i32 10000, %53
  %55 = icmp sle i32 %54, %37
  br label %56

56:                                               ; preds = %19, %26, %42, %47, %48, %50
  %57 = phi i1 [ %34, %26 ], [ false, %19 ], [ true, %47 ], [ true, %48 ], [ %55, %50 ], [ false, %42 ]
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %1, %56, %7
  %61 = phi i8 [ 1, %7 ], [ %59, %56 ], [ 1, %1 ]
  ret i8 %61
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_bb_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !196 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %59, !prof !197

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7, !prof !198

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %12, !prof !198

12:                                               ; preds = %5, %7
  %13 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !150
  %17 = icmp eq i32 %16, 2
  %18 = load ptr, ptr @profile_info, align 8, !tbaa !129
  br i1 %17, label %19, label %35, !prof !152

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !153
  %22 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !155
  %24 = zext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %18, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !157
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 42, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !158
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %28, %32
  %34 = icmp slt i64 %33, %21
  br label %56

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !160
  %38 = icmp ne ptr %18, null
  %39 = load i32, ptr @flag_branch_probabilities, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false, !prof !152
  br i1 %41, label %48, label %42, !prof !152

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 3
  switch i32 %46, label %48 [
    i32 0, label %56
    i32 2, label %47
  ], !prof !161

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42, %35
  %49 = icmp eq i32 %16, 0
  br i1 %49, label %56, label %50, !prof !152

50:                                               ; preds = %48
  %51 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %52 = getelementptr inbounds %struct.param_info, ptr %51, i64 43, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !158
  %54 = sdiv i32 10000, %53
  %55 = icmp sle i32 %54, %37
  br label %56

56:                                               ; preds = %19, %26, %42, %47, %48, %50
  %57 = phi i1 [ %34, %26 ], [ false, %19 ], [ true, %47 ], [ true, %48 ], [ %55, %50 ], [ false, %42 ]
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %1, %7, %56
  %60 = phi i8 [ 0, %7 ], [ %58, %56 ], [ 0, %1 ]
  ret i8 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !199 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %67, !prof !200

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7, !prof !201

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %67, label %12, !prof !201

12:                                               ; preds = %5, %7
  %13 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !150
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %35, !prof !179

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %20 = load i64, ptr %19, align 8, !tbaa !180
  %21 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !155
  %24 = zext i32 %23 to i64
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %21, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !157
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 42, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !158
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %28, %32
  %34 = icmp slt i64 %33, %20
  br label %63

35:                                               ; preds = %12
  %36 = load ptr, ptr %0, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %38 = load i32, ptr %37, align 8, !tbaa !160
  %39 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !183
  %41 = mul nsw i32 %40, %38
  %42 = add nsw i32 %41, 5000
  %43 = sdiv i32 %42, 10000
  %44 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %45 = icmp ne ptr %44, null
  %46 = load i32, ptr @flag_branch_probabilities, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false, !prof !179
  br i1 %48, label %55, label %49, !prof !179

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 3
  switch i32 %53, label %55 [
    i32 0, label %63
    i32 2, label %54
  ], !prof !184

54:                                               ; preds = %49
  br label %63

55:                                               ; preds = %49, %35
  %56 = icmp eq i32 %16, 0
  br i1 %56, label %63, label %57, !prof !179

57:                                               ; preds = %55
  %58 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %59 = getelementptr inbounds %struct.param_info, ptr %58, i64 43, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !158
  %61 = sdiv i32 10000, %60
  %62 = icmp sle i32 %61, %43
  br label %63

63:                                               ; preds = %18, %26, %49, %54, %55, %57
  %64 = phi i1 [ %34, %26 ], [ false, %18 ], [ true, %54 ], [ true, %55 ], [ %62, %57 ], [ false, %49 ]
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %1, %63, %7
  %68 = phi i8 [ 1, %7 ], [ %66, %63 ], [ 1, %1 ]
  ret i8 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_edge_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !202 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %66, !prof !203

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7, !prof !204

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %66, label %12, !prof !204

12:                                               ; preds = %5, %7
  %13 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !150
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %35, !prof !179

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %20 = load i64, ptr %19, align 8, !tbaa !180
  %21 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !155
  %24 = zext i32 %23 to i64
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %21, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !157
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 42, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !158
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %28, %32
  %34 = icmp slt i64 %33, %20
  br label %63

35:                                               ; preds = %12
  %36 = load ptr, ptr %0, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %38 = load i32, ptr %37, align 8, !tbaa !160
  %39 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !183
  %41 = mul nsw i32 %40, %38
  %42 = add nsw i32 %41, 5000
  %43 = sdiv i32 %42, 10000
  %44 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %45 = icmp ne ptr %44, null
  %46 = load i32, ptr @flag_branch_probabilities, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false, !prof !179
  br i1 %48, label %55, label %49, !prof !179

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 3
  switch i32 %53, label %55 [
    i32 0, label %63
    i32 2, label %54
  ], !prof !184

54:                                               ; preds = %49
  br label %63

55:                                               ; preds = %49, %35
  %56 = icmp eq i32 %16, 0
  br i1 %56, label %63, label %57, !prof !179

57:                                               ; preds = %55
  %58 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %59 = getelementptr inbounds %struct.param_info, ptr %58, i64 43, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !158
  %61 = sdiv i32 10000, %60
  %62 = icmp sle i32 %61, %43
  br label %63

63:                                               ; preds = %18, %26, %49, %54, %55, %57
  %64 = phi i1 [ %34, %26 ], [ false, %18 ], [ true, %54 ], [ true, %55 ], [ %62, %57 ], [ false, %49 ]
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %1, %7, %63
  %67 = phi i8 [ 0, %7 ], [ %65, %63 ], [ 0, %1 ]
  ret i8 %67
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #9 !prof !205 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !129
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11, !prof !206

4:                                                ; preds = %0
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6, !prof !207

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 196608
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %0, %4, %6
  %12 = phi i1 [ true, %0 ], [ false, %4 ], [ %10, %6 ]
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14, !prof !207
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #9 !prof !208 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !129
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11, !prof !209

4:                                                ; preds = %0
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6, !prof !210

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 196608
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %0, %4, %6
  %12 = phi i1 [ false, %0 ], [ true, %4 ], [ %10, %6 ]
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false, !prof !209
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_size_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !128 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = load ptr, ptr @cfun, align 8, !tbaa !129
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 196608
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7, %9
  %15 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %3), !range !215
  %16 = xor i8 %15, 1
  br label %17

17:                                               ; preds = %1, %9, %14
  %18 = phi i8 [ 1, %9 ], [ %16, %14 ], [ 1, %1 ]
  ret i8 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @optimize_loop_for_speed_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !128 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = load ptr, ptr @cfun, align 8, !tbaa !129
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 196608
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %7
  %15 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %3), !range !215
  br label %16

16:                                               ; preds = %1, %9, %14
  %17 = phi i8 [ 0, %9 ], [ %15, %14 ], [ 0, %1 ]
  ret i8 %17
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef readonly %0) local_unnamed_addr #13 !prof !128 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = load ptr, ptr @cfun, align 8, !tbaa !129
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 196608
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %7
  %15 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %3), !range !215
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %9, %1, %14
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %19, %0
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %17
  %24 = icmp eq ptr %4, null
  %25 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  br label %26

26:                                               ; preds = %23, %72
  %27 = phi ptr [ %19, %23 ], [ %73, %72 ]
  %28 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !211
  br i1 %6, label %30, label %37

30:                                               ; preds = %26
  br i1 %24, label %35, label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %25, align 8
  %33 = and i32 %32, 196608
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %30
  %36 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %29), !range !215
  br label %37

37:                                               ; preds = %26, %31, %35
  %38 = phi i8 [ 0, %31 ], [ %36, %35 ], [ 0, %26 ]
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !217
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = icmp eq ptr %27, %0
  br i1 %49, label %72, label %50

50:                                               ; preds = %48, %69
  %51 = phi ptr [ %70, %69 ], [ %27, %48 ]
  %52 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !217
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !218
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %57, align 8, !tbaa !219
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %60, %59 ], [ 0, %55 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = add i32 %62, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %57, i64 0, i32 2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !129
  br label %69

69:                                               ; preds = %61, %64
  %70 = phi ptr [ %68, %64 ], [ null, %61 ]
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %50, !llvm.loop !221

72:                                               ; preds = %50, %69, %48, %44, %40
  %73 = phi ptr [ %42, %40 ], [ %46, %44 ], [ %27, %48 ], [ %70, %69 ], [ %53, %50 ]
  %74 = icmp ne ptr %73, null
  %75 = icmp ne ptr %73, %0
  %76 = and i1 %74, %75
  br i1 %76, label %26, label %77, !llvm.loop !222

77:                                               ; preds = %37, %72, %17, %14
  %78 = phi i8 [ 1, %14 ], [ 0, %17 ], [ 0, %72 ], [ 1, %37 ]
  ret i8 %78
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %0) local_unnamed_addr #13 !prof !128 {
  %2 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef %0), !range !215
  %3 = xor i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @predictable_edge_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !223 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !150
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8, !prof !224

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !183
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 1, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !158
  %14 = mul nsw i32 %13, 100
  %15 = icmp sle i32 %10, %14
  %16 = sub nsw i32 10000, %10
  %17 = icmp sle i32 %16, %14
  %18 = select i1 %15, i1 true, i1 %17, !prof !225
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %8, %1
  %21 = phi i8 [ 0, %1 ], [ %19, %8 ]
  ret i8 %21
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rtl_profile_for_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !226 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !150
  %7 = icmp eq i32 %6, 2
  %8 = load ptr, ptr @profile_info, align 8, !tbaa !129
  br i1 %7, label %9, label %25, !prof !152

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !153
  %12 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %8, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !155
  %14 = zext i32 %13 to i64
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %8, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !157
  %19 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.param_info, ptr %19, i64 42, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !158
  %22 = sext i32 %21 to i64
  %23 = sdiv i64 %18, %22
  %24 = icmp slt i64 %23, %11
  br label %46

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !160
  %28 = icmp ne ptr %8, null
  %29 = load i32, ptr @flag_branch_probabilities, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false, !prof !152
  br i1 %31, label %38, label %32, !prof !152

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 3
  switch i32 %36, label %38 [
    i32 0, label %46
    i32 2, label %37
  ], !prof !161

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32, %25
  %39 = icmp eq i32 %6, 0
  br i1 %39, label %46, label %40, !prof !152

40:                                               ; preds = %38
  %41 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %42 = getelementptr inbounds %struct.param_info, ptr %41, i64 43, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !158
  %44 = sdiv i32 10000, %43
  %45 = icmp sle i32 %44, %27
  br label %46

46:                                               ; preds = %9, %16, %32, %37, %38, %40
  %47 = phi i1 [ %24, %16 ], [ false, %9 ], [ true, %37 ], [ true, %38 ], [ %45, %40 ], [ false, %32 ]
  %48 = zext i1 %47 to i8
  store i8 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !227
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rtl_profile_for_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !128 {
  %2 = tail call zeroext i8 @maybe_hot_edge_p(ptr noundef %0), !range !215
  store i8 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @default_rtl_profile() local_unnamed_addr #16 !prof !236 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !227
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @rtl_predicted_by_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 !prof !128 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !140
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
  %24 = load ptr, ptr %23, align 8, !tbaa !140
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !140
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %34, label %30

30:                                               ; preds = %17, %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !140
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %17, !llvm.loop !239

34:                                               ; preds = %22, %30, %11, %2
  %35 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 0, %30 ], [ 1, %22 ]
  ret i8 %35
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @gimple_predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #17 !prof !240 {
  %3 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %0) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !241

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %8, %10 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !242

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.edge_prediction, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !243
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !prof !245, !llvm.loop !246

14:                                               ; preds = %10, %6, %2
  %15 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %10 ]
  ret i8 %15
}

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @edge_probability_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !128 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !150
  switch i32 %6, label %13 [
    i32 2, label %14
    i32 1, label %7
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !183
  %10 = add i32 %9, -9900
  %11 = icmp ult i32 %10, -9799
  %12 = zext i1 %11 to i8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %7, %13
  %15 = phi i8 [ 1, %1 ], [ %12, %7 ], [ 0, %13 ]
  ret i8 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @br_prob_note_reliable_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !128 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 851968
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef nonnull @.str.3) #27
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @cfun, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !148
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !150
  switch i32 %11, label %21 [
    i32 2, label %22
    i32 1, label %12
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !140
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, -9900
  %19 = icmp ult i32 %18, -9799
  %20 = zext i1 %19 to i8
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %6, %12, %21
  %23 = phi i8 [ 1, %6 ], [ %20, %12 ], [ 0, %21 ]
  ret i8 %23
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @predict_insn_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #18 !prof !128 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !247
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8
  tail call fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @predict_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !249 !PGOFuncName !250 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !251

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 438, ptr noundef nonnull @.str.3) #27
  br label %7

7:                                                ; preds = %3, %6
  %8 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10, !prof !251

10:                                               ; preds = %7
  %11 = sext i32 %1 to i64
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %11) #27
  %13 = sext i32 %2 to i64
  %14 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %13) #27
  %15 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef 0, ptr noundef %12, ptr noundef %14) #27
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 16, ptr noundef %15) #27
  br label %16

16:                                               ; preds = %7, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @rtl_predict_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #18 !prof !128 {
  %4 = load ptr, ptr %0, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !237
  %9 = tail call i32 @any_condjump_p(ptr noundef %8) #27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !252
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = sub nsw i32 10000, %2
  %17 = select i1 %15, i32 %2, i32 %16
  tail call fastcc void @predict_insn(ptr noundef %8, i32 noundef %1, i32 noundef %17)
  br label %18

18:                                               ; preds = %3, %11
  ret void
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 !prof !253 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !129
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !150
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11, !prof !254

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef nonnull @.str.3) #27
  br label %11

11:                                               ; preds = %3, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !182
  %13 = load ptr, ptr @cfun, align 8, !tbaa !129
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = load ptr, ptr %15, align 8, !tbaa !255
  %17 = icmp eq ptr %12, %16
  br i1 %17, label %42, label %18, !prof !254

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !256
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !254

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8, !tbaa !257
  %24 = icmp ugt i32 %23, 1
  br label %25

25:                                               ; preds = %18, %22
  %26 = phi i1 [ %24, %22 ], [ false, %18 ]
  %27 = load i32, ptr @flag_guess_branch_prob, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false, !prof !259
  %30 = load i32, ptr @optimize, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false, !prof !259
  br i1 %32, label %33, label %42, !prof !259

33:                                               ; preds = %25
  %34 = tail call ptr @xmalloc(i64 noundef 24) #27
  %35 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  %36 = load ptr, ptr %0, align 8, !tbaa !182
  %37 = tail call ptr @pointer_map_insert(ptr noundef %35, ptr noundef %36) #27
  %38 = load ptr, ptr %37, align 8, !tbaa !129
  store ptr %38, ptr %34, align 8, !tbaa !260
  store ptr %34, ptr %37, align 8, !tbaa !129
  %39 = getelementptr inbounds %struct.edge_prediction, ptr %34, i64 0, i32 3
  store i32 %2, ptr %39, align 4, !tbaa !261
  %40 = getelementptr inbounds %struct.edge_prediction, ptr %34, i64 0, i32 2
  store i32 %1, ptr %40, align 8, !tbaa !243
  %41 = getelementptr inbounds %struct.edge_prediction, ptr %34, i64 0, i32 1
  store ptr %0, ptr %41, align 8, !tbaa !262
  br label %42

42:                                               ; preds = %33, %25, %11
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_predictions_associated_with_edge(ptr noundef readonly %0) local_unnamed_addr #17 !prof !263 {
  %2 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !264

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !182
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %5) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %19
  %12 = phi ptr [ %21, %19 ], [ %9, %8 ]
  %13 = phi ptr [ %20, %19 ], [ %6, %8 ]
  %14 = getelementptr inbounds %struct.edge_prediction, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !262
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 8, !tbaa !260
  tail call void @free(ptr noundef %12)
  store ptr %18, ptr %13, align 8, !tbaa !129
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %13, %17 ], [ %12, %11 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !265

23:                                               ; preds = %19, %8, %4, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind uwtable
define dso_local void @predict_edge_def(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #18 !prof !128 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !247
  %7 = icmp eq i32 %2, 1
  %8 = sub nsw i32 10000, %6
  %9 = select i1 %7, i32 %6, i32 %8
  tail call void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %9) #27
  ret void
}

declare void @predict_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @invert_br_probabilities(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !266 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5, !prof !267

5:                                                ; preds = %1, %28
  %6 = phi ptr [ %30, %28 ], [ %3, %1 ]
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %28 [
    i8 13, label %10
    i8 16, label %17
  ], !prof !268

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !140
  %15 = sub nsw i64 10000, %14
  %16 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #27
  store ptr %16, ptr %11, align 8, !tbaa !140
  br label %28

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !140
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !140
  %24 = sub nsw i64 10000, %23
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %24) #27
  %26 = load ptr, ptr %18, align 8, !tbaa !140
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %25, ptr %27, align 8, !tbaa !140
  br label %28

28:                                               ; preds = %5, %10, %17
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !140
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5, !prof !269, !llvm.loop !270

32:                                               ; preds = %28, %1
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @guess_outgoing_edge_probabilities(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !271 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %113, !prof !272

9:                                                ; preds = %1
  %10 = tail call i32 @any_condjump_p(ptr noundef nonnull %5) #27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %113, label %12, !prof !273

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !256
  %17 = icmp eq ptr %16, null
  br i1 %17, label %113, label %18, !prof !274

18:                                               ; preds = %12
  %19 = load i32, ptr %16, align 8, !tbaa !257
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %113, label %21, !prof !274

21:                                               ; preds = %18
  %22 = tail call ptr @get_condition(ptr noundef nonnull %5, ptr noundef null, i32 noundef 0, i32 noundef 0) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %113, label %24, !prof !274

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !144
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %47, !prof !275

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 1073807359
  %36 = icmp eq i32 %35, 1073741861
  br i1 %36, label %43, label %37, !prof !274

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !140
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1073807359
  %42 = icmp eq i32 %41, 1073741861
  br i1 %42, label %43, label %47, !prof !274

43:                                               ; preds = %37, %31
  %44 = trunc i32 %25 to i16
  switch i16 %44, label %113 [
    i16 81, label %45
    i16 80, label %46
  ]

45:                                               ; preds = %43
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 13, i32 noundef 1500)
  br label %113

46:                                               ; preds = %43
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 13, i32 noundef 8500)
  br label %113

47:                                               ; preds = %37, %24
  %48 = trunc i32 %25 to i16
  switch i16 %48, label %113 [
    i16 30, label %49
    i16 81, label %53
    i16 92, label %53
    i16 80, label %70
    i16 97, label %70
    i16 91, label %87
    i16 90, label %88
    i16 84, label %89
    i16 85, label %89
    i16 82, label %101
    i16 83, label %101
  ], !prof !276

49:                                               ; preds = %47
  %50 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !129
  %51 = icmp eq ptr %22, %50
  %52 = select i1 %51, i32 0, i32 10000
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 4, i32 noundef %52)
  br label %113

53:                                               ; preds = %47, %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !140
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !140
  switch i8 %61, label %62 [
    i8 8, label %113
    i8 9, label %113
    i8 11, label %113
    i8 17, label %113
  ], !prof !277

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !140
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !129
  %66 = icmp eq ptr %64, %65
  %67 = icmp eq ptr %55, %65
  %68 = or i1 %66, %67
  br i1 %68, label %113, label %69, !prof !278

69:                                               ; preds = %62
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 16, i32 noundef 2900)
  br label %113

70:                                               ; preds = %47, %47
  %71 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !140
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !140
  switch i8 %78, label %79 [
    i8 8, label %113
    i8 9, label %113
    i8 11, label %113
    i8 17, label %113
  ]

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !140
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !129
  %83 = icmp eq ptr %81, %82
  %84 = icmp eq ptr %72, %82
  %85 = or i1 %83, %84
  br i1 %85, label %113, label %86

86:                                               ; preds = %79
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 16, i32 noundef 7100)
  br label %113

87:                                               ; preds = %47
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 17, i32 noundef 9000)
  br label %113

88:                                               ; preds = %47
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 17, i32 noundef 1000)
  br label %113

89:                                               ; preds = %47, %47
  %90 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !140
  %92 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !129
  %93 = icmp eq ptr %91, %92
  %94 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %95 = icmp eq ptr %91, %94
  %96 = select i1 %93, i1 true, i1 %95, !prof !279
  %97 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %98 = icmp eq ptr %91, %97
  %99 = select i1 %96, i1 true, i1 %98, !prof !279
  br i1 %99, label %100, label %113, !prof !280

100:                                              ; preds = %89
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 15, i32 noundef 2100)
  br label %113

101:                                              ; preds = %47, %47
  %102 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !140
  %104 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !129
  %105 = icmp eq ptr %103, %104
  %106 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %107 = icmp eq ptr %103, %106
  %108 = select i1 %105, i1 true, i1 %107, !prof !281
  %109 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %110 = icmp eq ptr %103, %109
  %111 = select i1 %108, i1 true, i1 %110, !prof !281
  br i1 %111, label %112, label %113, !prof !282

112:                                              ; preds = %101
  tail call fastcc void @predict_insn(ptr noundef nonnull %5, i32 noundef 15, i32 noundef 7900)
  br label %113

113:                                              ; preds = %101, %89, %70, %70, %70, %70, %53, %53, %53, %53, %47, %9, %1, %12, %18, %21, %43, %45, %46, %49, %62, %69, %79, %86, %87, %88, %100, %112
  %114 = load ptr, ptr %2, align 8, !tbaa !140
  %115 = getelementptr inbounds %struct.rtl_bb_info, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !237
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 9
  br i1 %119, label %120, label %133, !prof !272

120:                                              ; preds = %113
  %121 = tail call i32 @any_condjump_p(ptr noundef nonnull %116) #27
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %133, label %123, !prof !273

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !140
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !256
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129, !prof !274

129:                                              ; preds = %123
  %130 = load i32, ptr %127, align 8, !tbaa !257
  %131 = icmp ugt i32 %130, 1
  %132 = zext i1 %131 to i8
  br label %133

133:                                              ; preds = %129, %123, %120, %113
  %134 = phi i8 [ 0, %120 ], [ 0, %113 ], [ %132, %129 ], [ 0, %123 ]
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %137, !prof !283

136:                                              ; preds = %133
  tail call fastcc void @set_even_probabilities(ptr noundef %0)
  br label %323

137:                                              ; preds = %133
  %138 = tail call ptr @find_reg_note(ptr noundef nonnull %116, i32 noundef 13, ptr noundef null) #27
  %139 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 1, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142, !prof !275

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !140
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !284
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %140, ptr noundef nonnull @.str.34, i32 noundef %144, i32 noundef %146)
  br label %148

148:                                              ; preds = %142, %137
  %149 = load ptr, ptr %139, align 8, !tbaa !140
  %150 = icmp eq ptr %149, null
  br i1 %150, label %201, label %151, !prof !285

151:                                              ; preds = %148, %191
  %152 = phi ptr [ %197, %191 ], [ %149, %148 ]
  %153 = phi i32 [ %195, %191 ], [ 5000, %148 ]
  %154 = phi i32 [ %194, %191 ], [ 28, %148 ]
  %155 = phi i32 [ %193, %191 ], [ 5000, %148 ]
  %156 = phi i8 [ %192, %191 ], [ 0, %148 ]
  %157 = load i32, ptr %152, align 8
  %158 = and i32 %157, 16711680
  %159 = icmp eq i32 %158, 1048576
  br i1 %159, label %160, label %191, !prof !286

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !140
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !140
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !140
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !140
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !140
  %172 = trunc i64 %171 to i32
  %173 = icmp ugt i32 %154, %167
  %174 = tail call i32 @llvm.umin.i32(i32 %154, i32 %167)
  %175 = select i1 %173, i32 %172, i32 %153, !prof !286
  %176 = mul nsw i32 %155, %172
  %177 = sub nsw i32 10000, %155
  %178 = sub nsw i32 10000, %172
  %179 = mul nsw i32 %178, %177
  %180 = add nsw i32 %179, %176
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %191, label %182, !prof !251

182:                                              ; preds = %160
  %183 = sitofp i32 %155 to double
  %184 = sitofp i32 %172 to double
  %185 = fmul double %183, %184
  %186 = fmul double %185, 1.000000e+04
  %187 = sitofp i32 %180 to double
  %188 = fdiv double %186, %187
  %189 = fadd double %188, 5.000000e-01
  %190 = fptosi double %189 to i32
  br label %191

191:                                              ; preds = %182, %160, %151
  %192 = phi i8 [ %156, %151 ], [ 1, %160 ], [ 1, %182 ]
  %193 = phi i32 [ %155, %151 ], [ 5000, %160 ], [ %190, %182 ]
  %194 = phi i32 [ %154, %151 ], [ %174, %160 ], [ %174, %182 ]
  %195 = phi i32 [ %153, %151 ], [ %175, %160 ], [ %175, %182 ]
  %196 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !140
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %151, !prof !286, !llvm.loop !287

199:                                              ; preds = %191
  %200 = icmp eq i8 %192, 0
  br label %201

201:                                              ; preds = %199, %148
  %202 = phi i1 [ true, %148 ], [ %200, %199 ]
  %203 = phi i32 [ 5000, %148 ], [ %193, %199 ]
  %204 = phi i32 [ 28, %148 ], [ %194, %199 ]
  %205 = phi i32 [ 5000, %148 ], [ %195, %199 ]
  %206 = zext nneg i32 %204 to i64
  %207 = lshr i64 536862991, %206
  %208 = and i64 %207, 1
  %209 = icmp ne i64 %208, 0
  br i1 %202, label %210, label %212, !prof !285

210:                                              ; preds = %201
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !129
  tail call fastcc void @dump_prediction(ptr noundef %211, i32 noundef 3, i32 noundef %203, ptr noundef %0, i32 noundef 1)
  br label %218

212:                                              ; preds = %201
  %213 = xor i1 %209, true
  %214 = zext i1 %213 to i32
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %216 = trunc i64 %208 to i32
  tail call fastcc void @dump_prediction(ptr noundef %215, i32 noundef 1, i32 noundef %203, ptr noundef %0, i32 noundef %216)
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !129
  tail call fastcc void @dump_prediction(ptr noundef %217, i32 noundef 2, i32 noundef %205, ptr noundef %0, i32 noundef %214)
  br label %218

218:                                              ; preds = %212, %210
  %219 = select i1 %209, i32 %203, i32 %205, !prof !275
  %220 = load ptr, ptr @dump_file, align 8, !tbaa !129
  tail call fastcc void @dump_prediction(ptr noundef %220, i32 noundef 0, i32 noundef %219, ptr noundef %0, i32 noundef 1)
  %221 = load ptr, ptr %139, align 8, !tbaa !129
  %222 = icmp eq ptr %221, null
  br i1 %222, label %255, label %223, !prof !285

223:                                              ; preds = %218, %251
  %224 = phi ptr [ %253, %251 ], [ %221, %218 ]
  %225 = phi ptr [ %252, %251 ], [ %139, %218 ]
  %226 = load i32, ptr %224, align 8
  %227 = and i32 %226, 16711680
  %228 = icmp eq i32 %227, 1048576
  br i1 %228, label %229, label %249, !prof !286

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.rtx_def, ptr %224, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !140
  %232 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !140
  %234 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !140
  %236 = trunc i64 %235 to i32
  %237 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1, i32 0, i32 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !140
  %239 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !140
  %241 = trunc i64 %240 to i32
  %242 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %243 = icmp eq i32 %204, %236
  %244 = select i1 %209, i1 true, i1 %243, !prof !286
  %245 = zext i1 %244 to i32
  tail call fastcc void @dump_prediction(ptr noundef %242, i32 noundef %236, i32 noundef %241, ptr noundef %0, i32 noundef %245)
  %246 = load ptr, ptr %225, align 8, !tbaa !129
  %247 = getelementptr inbounds %struct.rtx_def, ptr %246, i64 0, i32 1, i32 0, i32 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !140
  store ptr %248, ptr %225, align 8, !tbaa !129
  br label %251

249:                                              ; preds = %223
  %250 = getelementptr inbounds %struct.rtx_def, ptr %224, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %251

251:                                              ; preds = %249, %229
  %252 = phi ptr [ %225, %229 ], [ %250, %249 ]
  %253 = load ptr, ptr %252, align 8, !tbaa !129
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %223, !prof !286, !llvm.loop !288

255:                                              ; preds = %251, %218
  %256 = icmp eq ptr %138, null
  br i1 %256, label %257, label %286, !prof !275

257:                                              ; preds = %255
  %258 = sext i32 %219 to i64
  %259 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %258) #27
  tail call void @add_reg_note(ptr noundef nonnull %116, i32 noundef 13, ptr noundef %259) #27
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !256
  %262 = icmp eq ptr %261, null
  br i1 %262, label %266, label %263, !prof !274

263:                                              ; preds = %257
  %264 = load i32, ptr %261, align 8, !tbaa !257
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %323, label %266, !prof !274

266:                                              ; preds = %257, %263
  %267 = getelementptr inbounds %struct.VEC_edge_base, ptr %261, i64 0, i32 2, i64 0
  %268 = load ptr, ptr %267, align 8, !tbaa !129
  %269 = getelementptr inbounds %struct.edge_def, ptr %268, i64 0, i32 7
  %270 = load i32, ptr %269, align 8, !tbaa !252
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273, !prof !275

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.VEC_edge_base, ptr %261, i64 0, i32 2, i64 1
  %275 = load ptr, ptr %274, align 8, !tbaa !129
  br label %276

276:                                              ; preds = %273, %266
  %277 = phi ptr [ %275, %273 ], [ %268, %266 ]
  %278 = getelementptr inbounds %struct.edge_def, ptr %277, i64 0, i32 8
  store i32 %219, ptr %278, align 4, !tbaa !183
  %279 = sub nsw i32 10000, %219
  br i1 %272, label %280, label %283, !prof !275

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.VEC_edge_base, ptr %261, i64 0, i32 2, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !129
  br label %283

283:                                              ; preds = %280, %276
  %284 = phi ptr [ %282, %280 ], [ %268, %276 ]
  %285 = getelementptr inbounds %struct.edge_def, ptr %284, i64 0, i32 8
  store i32 %279, ptr %285, align 4, !tbaa !183
  br label %323

286:                                              ; preds = %255
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !256
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %288, align 8, !tbaa !257
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %318, label %293

293:                                              ; preds = %286, %290
  %294 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !140
  %296 = getelementptr inbounds %struct.rtx_def, ptr %295, i64 0, i32 1
  %297 = load i64, ptr %296, align 8, !tbaa !140
  %298 = trunc i64 %297 to i32
  %299 = getelementptr inbounds %struct.VEC_edge_base, ptr %288, i64 0, i32 2, i64 0
  %300 = load ptr, ptr %299, align 8, !tbaa !129
  %301 = getelementptr inbounds %struct.edge_def, ptr %300, i64 0, i32 7
  %302 = load i32, ptr %301, align 8, !tbaa !252
  %303 = and i32 %302, 1
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %293
  %306 = getelementptr inbounds %struct.VEC_edge_base, ptr %288, i64 0, i32 2, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !129
  br label %308

308:                                              ; preds = %305, %293
  %309 = phi ptr [ %307, %305 ], [ %300, %293 ]
  %310 = getelementptr inbounds %struct.edge_def, ptr %309, i64 0, i32 8
  store i32 %298, ptr %310, align 4, !tbaa !183
  %311 = sub nsw i32 10000, %298
  br i1 %304, label %312, label %315

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.VEC_edge_base, ptr %288, i64 0, i32 2, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !129
  br label %315

315:                                              ; preds = %312, %308
  %316 = phi ptr [ %314, %312 ], [ %300, %308 ]
  %317 = getelementptr inbounds %struct.edge_def, ptr %316, i64 0, i32 8
  store i32 %311, ptr %317, align 4, !tbaa !183
  br label %323

318:                                              ; preds = %290
  %319 = load ptr, ptr %287, align 8, !tbaa !256
  %320 = getelementptr inbounds %struct.VEC_edge_base, ptr %319, i64 0, i32 2, i64 0
  %321 = load ptr, ptr %320, align 8, !tbaa !129
  %322 = getelementptr inbounds %struct.edge_def, ptr %321, i64 0, i32 8
  store i32 10000, ptr %322, align 4, !tbaa !183
  br label %323

323:                                              ; preds = %136, %263, %283, %315, %318
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tree_estimate_probability() local_unnamed_addr #10 !prof !289 {
  %1 = alloca %struct.tree_niter_desc, align 8
  tail call void @add_noreturn_fake_exit_edges() #27
  tail call void @connect_infinite_loops_to_exit() #27
  tail call void @create_preheaders(i32 noundef 1) #27
  tail call void @calculate_dominance_info(i32 noundef 2) #27
  %2 = tail call ptr @pointer_map_create() #27
  store ptr %2, ptr @bb_predictions, align 8, !tbaa !129
  %3 = load ptr, ptr @cfun, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !290
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %38, %0
  %10 = phi i32 [ 0, %0 ], [ %39, %38 ]
  br i1 %8, label %11, label %12, !prof !291

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.3) #27
  br label %12

12:                                               ; preds = %11, %9
  %13 = load ptr, ptr %7, align 8, !tbaa !129
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !291

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !257
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ]
  %19 = icmp ne i32 %18, %10
  br i1 %19, label %20, label %24, !prof !292

20:                                               ; preds = %17
  %21 = zext i32 %10 to i64
  %22 = getelementptr inbounds %struct.VEC_edge_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi ptr [ %23, %20 ], [ null, %17 ]
  br i1 %19, label %26, label %40, !prof !292

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !252
  %29 = and i32 %28, 26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31, !prof !292

31:                                               ; preds = %26
  br i1 %14, label %34, label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %13, align 8, !tbaa !257
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ %33, %32 ], [ 0, %31 ]
  %36 = icmp ult i32 %10, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %38

38:                                               ; preds = %37, %34
  %39 = add i32 %10, 1
  br label %9, !llvm.loop !293

40:                                               ; preds = %26, %24
  %41 = load ptr, ptr @cfun, align 8, !tbaa !129
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !290
  %46 = icmp eq ptr %45, null
  br label %47

47:                                               ; preds = %82, %40
  %48 = phi i32 [ 0, %40 ], [ %83, %82 ]
  %49 = phi ptr [ null, %40 ], [ %67, %82 ]
  br i1 %46, label %50, label %51, !prof !291

50:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.3) #27
  br label %51

51:                                               ; preds = %50, %47
  %52 = load ptr, ptr %45, align 8, !tbaa !129
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !291

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8, !tbaa !257
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ 0, %51 ]
  %58 = icmp eq i32 %57, %48
  br i1 %58, label %63, label %59, !prof !291

59:                                               ; preds = %56
  %60 = zext i32 %48 to i64
  %61 = getelementptr inbounds %struct.VEC_edge_base, ptr %52, i64 0, i32 2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !129
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi ptr [ %62, %59 ], [ null, %56 ]
  br i1 %58, label %84, label %65, !prof !291

65:                                               ; preds = %63
  %66 = load ptr, ptr %64, align 8, !tbaa !182
  %67 = tail call ptr @last_stmt(ptr noundef %66) #27
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69, !prof !291

69:                                               ; preds = %65
  %70 = load i32, ptr %67, align 8
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %84, label %73, !prof !292

73:                                               ; preds = %69, %65
  %74 = load ptr, ptr %45, align 8, !tbaa !129
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %74, align 8, !tbaa !257
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %77, %76 ], [ 0, %73 ]
  %80 = icmp ult i32 %48, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %82

82:                                               ; preds = %81, %78
  %83 = add i32 %48, 1
  br label %47, !llvm.loop !294

84:                                               ; preds = %69, %63
  %85 = phi ptr [ %67, %69 ], [ %49, %63 ]
  %86 = icmp eq ptr %64, null
  br i1 %86, label %273, label %87, !prof !291

87:                                               ; preds = %84
  %88 = load i32, ptr %85, align 8
  %89 = and i32 %88, 255
  %90 = add nsw i32 %89, -10
  %91 = icmp ult i32 %90, -9
  br i1 %91, label %104, label %92, !prof !291

92:                                               ; preds = %87
  %93 = zext nneg i32 %89 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !144
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !295
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101, !prof !291

100:                                              ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %101

101:                                              ; preds = %100, %92
  %102 = getelementptr inbounds i8, ptr %85, i64 %98
  %103 = load ptr, ptr %102, align 8, !tbaa !129
  br label %104

104:                                              ; preds = %101, %87
  %105 = phi ptr [ %103, %101 ], [ null, %87 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %273, label %107, !prof !291

107:                                              ; preds = %104
  %108 = load i64, ptr %105, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 141
  br i1 %110, label %111, label %273, !prof !296

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_ssa_name, ptr %105, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !140
  %114 = icmp eq ptr %113, null
  br i1 %114, label %273, label %115, !prof !297

115:                                              ; preds = %111
  %116 = load i32, ptr %113, align 8
  %117 = and i32 %116, 255
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %273, !prof !298

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.gimple_statement_phi, ptr %113, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !140
  %122 = getelementptr inbounds %struct.gimple_statement_phi, ptr %113, i64 0, i32 1
  %123 = getelementptr inbounds %struct.gimple_statement_phi, ptr %113, i64 0, i32 4, i64 0, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !299
  %125 = load ptr, ptr %124, align 8, !tbaa !129
  %126 = icmp eq ptr %125, null
  br i1 %126, label %154, label %127, !prof !301

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !140
  %130 = load i64, ptr %129, align 8
  %131 = trunc i64 %130 to i16
  switch i16 %131, label %154 [
    i16 10, label %132
    i16 12, label %132
    i16 6, label %136
    i16 7, label %136
    i16 8, label %136
  ], !prof !302

132:                                              ; preds = %127, %127
  %133 = tail call i32 @integer_zerop(ptr noundef nonnull %125) #27
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 3, i32 26, !prof !303
  br label %154

136:                                              ; preds = %127, %127, %127
  %137 = load i64, ptr %125, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 23
  br i1 %139, label %140, label %143, !prof !304

140:                                              ; preds = %136
  %141 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %125) #27
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %154, label %143, !prof !305

143:                                              ; preds = %140, %136
  %144 = load i64, ptr %125, align 8
  %145 = and i64 %144, 131072
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %154, label %147, !prof !306

147:                                              ; preds = %143
  %148 = tail call i32 @integer_zerop(ptr noundef nonnull %125) #27
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154, !prof !307

150:                                              ; preds = %147
  %151 = tail call i32 @integer_onep(ptr noundef nonnull %125) #27
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 24, i32 3, !prof !308
  br label %154

154:                                              ; preds = %150, %132, %140, %119, %127, %143, %147
  %155 = phi i32 [ undef, %119 ], [ undef, %127 ], [ undef, %143 ], [ undef, %147 ], [ 0, %132 ], [ 0, %140 ], [ 1, %150 ]
  %156 = phi i32 [ 3, %119 ], [ 3, %127 ], [ 3, %143 ], [ 3, %147 ], [ %135, %132 ], [ 25, %140 ], [ %153, %150 ]
  %157 = icmp sgt i32 %121, 1
  br i1 %157, label %158, label %210, !prof !309

158:                                              ; preds = %154
  %159 = zext nneg i32 %121 to i64
  br label %160

160:                                              ; preds = %158, %205
  %161 = phi i64 [ 1, %158 ], [ %206, %205 ]
  %162 = phi i32 [ %155, %158 ], [ %202, %205 ]
  %163 = load i32, ptr %122, align 8, !tbaa !140
  %164 = zext i32 %163 to i64
  %165 = icmp ugt i64 %161, %164
  br i1 %165, label %166, label %167, !prof !310

166:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 3103, ptr noundef nonnull @.str.3) #27
  br label %167

167:                                              ; preds = %166, %160
  %168 = getelementptr inbounds %struct.gimple_statement_phi, ptr %113, i64 0, i32 4, i64 %161, i32 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !299
  %170 = load ptr, ptr %169, align 8, !tbaa !129
  %171 = icmp eq ptr %170, null
  br i1 %171, label %201, label %172, !prof !301

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.tree_common, ptr %170, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !140
  %175 = load i64, ptr %174, align 8
  %176 = trunc i64 %175 to i16
  switch i16 %176, label %201 [
    i16 10, label %177
    i16 12, label %177
    i16 6, label %182
    i16 7, label %182
    i16 8, label %182
  ], !prof !302

177:                                              ; preds = %172, %172
  %178 = tail call i32 @integer_zerop(ptr noundef nonnull %170) #27
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 %162, i32 0, !prof !303
  %181 = select i1 %179, i32 3, i32 26, !prof !303
  br label %201

182:                                              ; preds = %172, %172, %172
  %183 = load i64, ptr %170, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 23
  br i1 %185, label %186, label %189, !prof !304

186:                                              ; preds = %182
  %187 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %170) #27
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %201, label %189, !prof !305

189:                                              ; preds = %186, %182
  %190 = load i64, ptr %170, align 8
  %191 = and i64 %190, 131072
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %201, label %193, !prof !306

193:                                              ; preds = %189
  %194 = tail call i32 @integer_zerop(ptr noundef nonnull %170) #27
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201, !prof !307

196:                                              ; preds = %193
  %197 = tail call i32 @integer_onep(ptr noundef nonnull %170) #27
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 1, i32 %162, !prof !308
  %200 = select i1 %198, i32 24, i32 3, !prof !308
  br label %201

201:                                              ; preds = %196, %177, %186, %167, %172, %189, %193
  %202 = phi i32 [ %162, %167 ], [ %162, %172 ], [ %162, %189 ], [ %162, %193 ], [ %180, %177 ], [ 0, %186 ], [ %199, %196 ]
  %203 = phi i32 [ 3, %167 ], [ 3, %172 ], [ 3, %189 ], [ 3, %193 ], [ %181, %177 ], [ 25, %186 ], [ %200, %196 ]
  %204 = icmp eq i32 %156, %203
  br i1 %204, label %205, label %208, !prof !311

205:                                              ; preds = %201
  %206 = add nuw nsw i64 %161, 1
  %207 = icmp eq i64 %206, %159
  br i1 %207, label %210, label %160, !prof !312, !llvm.loop !313

208:                                              ; preds = %201
  %209 = trunc i64 %161 to i32
  br label %210

210:                                              ; preds = %208, %205, %154
  %211 = phi i32 [ 1, %154 ], [ %209, %208 ], [ %121, %205 ]
  %212 = phi i32 [ %155, %154 ], [ %202, %205 ], [ %202, %208 ]
  %213 = icmp ne i32 %211, %121
  %214 = icmp sgt i32 %121, 0
  %215 = and i1 %213, %214
  br i1 %215, label %216, label %273, !prof !314

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.gimple_statement_base, ptr %113, i64 0, i32 4
  %218 = zext i32 %121 to i64
  br label %219

219:                                              ; preds = %216, %270
  %220 = phi i64 [ 0, %216 ], [ %271, %270 ]
  %221 = phi i32 [ %212, %216 ], [ %261, %270 ]
  %222 = load i32, ptr %122, align 8, !tbaa !140
  %223 = zext i32 %222 to i64
  %224 = icmp ugt i64 %220, %223
  br i1 %224, label %225, label %226, !prof !315

225:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 3103, ptr noundef nonnull @.str.3) #27
  br label %226

226:                                              ; preds = %225, %219
  %227 = getelementptr inbounds %struct.gimple_statement_phi, ptr %113, i64 0, i32 4, i64 %220, i32 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !299
  %229 = load ptr, ptr %228, align 8, !tbaa !129
  %230 = icmp eq ptr %229, null
  br i1 %230, label %260, label %231, !prof !301

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.tree_common, ptr %229, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !140
  %234 = load i64, ptr %233, align 8
  %235 = trunc i64 %234 to i16
  switch i16 %235, label %260 [
    i16 10, label %236
    i16 12, label %236
    i16 6, label %241
    i16 7, label %241
    i16 8, label %241
  ], !prof !302

236:                                              ; preds = %231, %231
  %237 = tail call i32 @integer_zerop(ptr noundef nonnull %229) #27
  %238 = icmp eq i32 %237, 0
  %239 = select i1 %238, i32 %221, i32 0, !prof !303
  %240 = select i1 %238, i32 3, i32 26, !prof !303
  br label %260

241:                                              ; preds = %231, %231, %231
  %242 = load i64, ptr %229, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 23
  br i1 %244, label %245, label %248, !prof !304

245:                                              ; preds = %241
  %246 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %229) #27
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %260, label %248, !prof !305

248:                                              ; preds = %245, %241
  %249 = load i64, ptr %229, align 8
  %250 = and i64 %249, 131072
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %260, label %252, !prof !306

252:                                              ; preds = %248
  %253 = tail call i32 @integer_zerop(ptr noundef nonnull %229) #27
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %260, !prof !307

255:                                              ; preds = %252
  %256 = tail call i32 @integer_onep(ptr noundef nonnull %229) #27
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, i32 1, i32 %221, !prof !308
  %259 = select i1 %257, i32 24, i32 3, !prof !308
  br label %260

260:                                              ; preds = %255, %236, %245, %226, %231, %248, %252
  %261 = phi i32 [ %221, %226 ], [ %221, %231 ], [ %221, %248 ], [ %221, %252 ], [ %239, %236 ], [ 0, %245 ], [ %258, %255 ]
  %262 = phi i32 [ 3, %226 ], [ 3, %231 ], [ 3, %248 ], [ 3, %252 ], [ %240, %236 ], [ 25, %245 ], [ %259, %255 ]
  %263 = icmp eq i32 %262, 3
  br i1 %263, label %270, label %264, !prof !316

264:                                              ; preds = %260
  %265 = load ptr, ptr %217, align 8, !tbaa !140
  %266 = load ptr, ptr %265, align 8, !tbaa !317, !nonnull !318, !noundef !318
  %267 = getelementptr inbounds %struct.VEC_edge_base, ptr %266, i64 0, i32 2, i64 %220
  %268 = load ptr, ptr %267, align 8, !tbaa !129
  %269 = load ptr, ptr %268, align 8, !tbaa !182
  tail call fastcc void @predict_paths_for_bb(ptr noundef %269, ptr noundef %269, i32 noundef %262, i32 noundef %261)
  br label %270

270:                                              ; preds = %264, %260
  %271 = add nuw nsw i64 %220, 1
  %272 = icmp eq i64 %271, %218
  br i1 %272, label %273, label %219, !prof !319, !llvm.loop !320

273:                                              ; preds = %270, %210, %115, %111, %107, %104, %84
  %274 = load ptr, ptr @cfun, align 8, !tbaa !129
  %275 = getelementptr inbounds %struct.function, ptr %274, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !148
  %277 = load ptr, ptr %276, align 8, !tbaa !255
  %278 = getelementptr inbounds %struct.basic_block_def, ptr %277, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !321
  %280 = getelementptr inbounds %struct.control_flow_graph, ptr %276, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !290
  %282 = icmp eq ptr %279, %281
  br i1 %282, label %366, label %292, !prof !322

283:                                              ; preds = %362, %309
  %284 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !321
  %286 = load ptr, ptr @cfun, align 8, !tbaa !129
  %287 = getelementptr inbounds %struct.function, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !148
  %289 = getelementptr inbounds %struct.control_flow_graph, ptr %288, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !290
  %291 = icmp eq ptr %285, %290
  br i1 %291, label %366, label %292, !prof !323, !llvm.loop !324

292:                                              ; preds = %273, %283
  %293 = phi ptr [ %285, %283 ], [ %279, %273 ]
  %294 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 13
  %295 = load i32, ptr %294, align 8, !tbaa !325, !noalias !326
  %296 = and i32 %295, 512
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %304, !prof !329

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !140, !noalias !326
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302, !prof !330

302:                                              ; preds = %298
  %303 = load ptr, ptr %300, align 8, !tbaa !331, !noalias !326
  br label %304

304:                                              ; preds = %302, %298, %292
  %305 = phi ptr [ %303, %302 ], [ null, %298 ], [ null, %292 ]
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307, !prof !330

307:                                              ; preds = %304
  %308 = load ptr, ptr %305, align 8, !tbaa !333, !noalias !326
  br label %309

309:                                              ; preds = %307, %304
  %310 = phi ptr [ %308, %307 ], [ null, %304 ]
  %311 = icmp eq ptr %310, null
  br i1 %311, label %283, label %312, !prof !335

312:                                              ; preds = %309, %362
  %313 = phi ptr [ %364, %362 ], [ %310, %309 ]
  %314 = load ptr, ptr %313, align 8, !tbaa !336
  %315 = load i32, ptr %314, align 8
  %316 = trunc i32 %315 to i8
  switch i8 %316, label %362 [
    i8 8, label %317
    i8 33, label %358
  ], !prof !338

317:                                              ; preds = %312
  %318 = tail call i32 @gimple_call_flags(ptr noundef nonnull %314) #27
  %319 = and i32 %318, 8
  %320 = icmp ne i32 %319, 0
  %321 = and i1 %19, %320
  br i1 %321, label %322, label %323, !prof !339

322:                                              ; preds = %317
  tail call fastcc void @predict_paths_for_bb(ptr noundef %293, ptr noundef %293, i32 noundef 9, i32 noundef 0)
  br label %323

323:                                              ; preds = %322, %317
  %324 = load i32, ptr %314, align 8
  %325 = and i32 %324, 255
  %326 = add nsw i32 %325, -10
  %327 = icmp ult i32 %326, -9
  br i1 %327, label %341, label %328, !prof !340

328:                                              ; preds = %323
  %329 = zext nneg i32 %325 to i64
  %330 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !144
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %332
  %334 = load i64, ptr %333, align 8, !tbaa !295
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %337, !prof !340

336:                                              ; preds = %328
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %337

337:                                              ; preds = %336, %328
  %338 = getelementptr inbounds i8, ptr %314, i64 %334
  %339 = getelementptr inbounds ptr, ptr %338, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !129
  br label %341

341:                                              ; preds = %337, %323
  %342 = phi ptr [ %340, %337 ], [ null, %323 ]
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 65535
  %345 = icmp eq i64 %344, 121
  br i1 %345, label %346, label %349, !prof !341

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.tree_exp, ptr %342, i64 0, i32 3
  %348 = load ptr, ptr %347, align 8, !tbaa !140
  br label %349

349:                                              ; preds = %346, %341
  %350 = phi ptr [ %348, %346 ], [ null, %341 ]
  %351 = icmp eq ptr %350, null
  br i1 %351, label %362, label %352, !prof !340

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.tree_decl_common, ptr %350, i64 0, i32 6
  %354 = load ptr, ptr %353, align 8, !tbaa !140
  %355 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %354) #27
  %356 = icmp eq ptr %355, null
  br i1 %356, label %362, label %357, !prof !341

357:                                              ; preds = %352
  tail call fastcc void @predict_paths_for_bb(ptr noundef %293, ptr noundef %293, i32 noundef 10, i32 noundef 0)
  br label %362

358:                                              ; preds = %312
  %359 = lshr i32 %315, 16
  %360 = and i32 %359, 32767
  %361 = lshr i32 %315, 31
  tail call fastcc void @predict_paths_for_bb(ptr noundef %293, ptr noundef %293, i32 noundef %360, i32 noundef %361)
  br label %362

362:                                              ; preds = %312, %358, %357, %352, %349
  %363 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %313, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !342
  %365 = icmp eq ptr %364, null
  br i1 %365, label %283, label %312, !prof !343, !llvm.loop !344

366:                                              ; preds = %283, %273
  tail call void @record_loop_exits() #27
  %367 = load ptr, ptr @cfun, align 8, !tbaa !129
  %368 = getelementptr inbounds %struct.function, ptr %367, i64 0, i32 4
  %369 = load ptr, ptr %368, align 8, !tbaa !345
  %370 = icmp eq ptr %369, null
  br i1 %370, label %640, label %371, !prof !291

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.loops, ptr %369, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !346
  %374 = icmp eq ptr %373, null
  br i1 %374, label %640, label %375, !prof !291

375:                                              ; preds = %371
  %376 = load i32, ptr %373, align 8, !tbaa !219
  %377 = icmp ugt i32 %376, 1
  br i1 %377, label %378, label %640, !prof !291

378:                                              ; preds = %375
  br i1 %370, label %454, label %379

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.loops, ptr %369, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !346
  %382 = icmp eq ptr %381, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %379
  %384 = load i32, ptr %381, align 8, !tbaa !219
  br label %385

385:                                              ; preds = %383, %379
  %386 = phi i32 [ %384, %383 ], [ 0, %379 ]
  %387 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %386, i64 noundef 8, i64 noundef 4) #27
  %388 = load ptr, ptr @cfun, align 8, !tbaa !129
  %389 = getelementptr inbounds %struct.function, ptr %388, i64 0, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !345
  %391 = getelementptr inbounds %struct.loops, ptr %390, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !348
  br label %393

393:                                              ; preds = %406, %385
  %394 = phi ptr [ %392, %385 ], [ %407, %406 ]
  %395 = load i32, ptr %394, align 8, !tbaa !349
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %393
  %398 = load i32, ptr %387, align 4, !tbaa !350
  %399 = add i32 %398, 1
  store i32 %399, ptr %387, align 4, !tbaa !350
  %400 = zext i32 %398 to i64
  %401 = getelementptr inbounds %struct.VEC_int_base, ptr %387, i64 0, i32 2, i64 %400
  store i32 %395, ptr %401, align 4, !tbaa !144
  br label %402

402:                                              ; preds = %397, %393
  %403 = getelementptr inbounds %struct.loop, ptr %394, i64 0, i32 8
  %404 = load ptr, ptr %403, align 8, !tbaa !216
  %405 = icmp eq ptr %404, null
  br i1 %405, label %411, label %406

406:                                              ; preds = %411, %402
  %407 = phi ptr [ %404, %402 ], [ %414, %411 ]
  br label %393, !llvm.loop !352

408:                                              ; preds = %430
  %409 = icmp eq ptr %387, null
  %410 = getelementptr inbounds %struct.loops, ptr %390, i64 0, i32 1
  br label %433

411:                                              ; preds = %402, %430
  %412 = phi ptr [ %431, %430 ], [ %394, %402 ]
  %413 = getelementptr inbounds %struct.loop, ptr %412, i64 0, i32 9
  %414 = load ptr, ptr %413, align 8, !tbaa !217
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %406, !llvm.loop !352

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.loop, ptr %412, i64 0, i32 7
  %418 = load ptr, ptr %417, align 8, !tbaa !218
  %419 = icmp eq ptr %418, null
  br i1 %419, label %422, label %420

420:                                              ; preds = %416
  %421 = load i32, ptr %418, align 8, !tbaa !219
  br label %422

422:                                              ; preds = %420, %416
  %423 = phi i32 [ %421, %420 ], [ 0, %416 ]
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %430, label %425

425:                                              ; preds = %422
  %426 = add i32 %423, -1
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %418, i64 0, i32 2, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !129
  br label %430

430:                                              ; preds = %425, %422
  %431 = phi ptr [ %429, %425 ], [ null, %422 ]
  %432 = icmp eq ptr %431, null
  br i1 %432, label %408, label %411, !llvm.loop !353

433:                                              ; preds = %408, %445
  %434 = phi i32 [ %446, %445 ], [ 0, %408 ]
  br i1 %409, label %442, label %435

435:                                              ; preds = %433
  %436 = load i32, ptr %387, align 4, !tbaa !350
  %437 = icmp ugt i32 %436, %434
  br i1 %437, label %438, label %442

438:                                              ; preds = %435
  %439 = zext i32 %434 to i64
  %440 = getelementptr inbounds %struct.VEC_int_base, ptr %387, i64 0, i32 2, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !144
  br label %442

442:                                              ; preds = %438, %435, %433
  %443 = phi i32 [ %441, %438 ], [ 0, %435 ], [ 0, %433 ]
  %444 = phi i1 [ false, %438 ], [ true, %435 ], [ true, %433 ]
  br i1 %444, label %452, label %445

445:                                              ; preds = %442
  %446 = add i32 %434, 1
  %447 = load ptr, ptr %410, align 8, !tbaa !346
  %448 = zext i32 %443 to i64
  %449 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %447, i64 0, i32 2, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !129
  %451 = icmp eq ptr %450, null
  br i1 %451, label %433, label %454, !llvm.loop !354

452:                                              ; preds = %442
  br i1 %409, label %454, label %453

453:                                              ; preds = %452
  tail call void @free(ptr noundef %387)
  br label %454

454:                                              ; preds = %445, %453, %452, %378
  %455 = phi ptr [ null, %378 ], [ null, %453 ], [ null, %452 ], [ %450, %445 ]
  %456 = phi ptr [ null, %378 ], [ null, %453 ], [ null, %452 ], [ %387, %445 ]
  %457 = phi i32 [ 0, %378 ], [ %434, %453 ], [ %434, %452 ], [ %446, %445 ]
  %458 = icmp eq ptr %455, null
  br i1 %458, label %640, label %459

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 2
  br label %461

461:                                              ; preds = %459, %635
  %462 = phi i32 [ %457, %459 ], [ %638, %635 ]
  %463 = phi ptr [ %456, %459 ], [ %637, %635 ]
  %464 = phi ptr [ %455, %459 ], [ %636, %635 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #27
  %465 = call ptr @get_loop_exit_edges(ptr noundef nonnull %464) #27
  %466 = icmp eq ptr %465, null
  br i1 %466, label %469, label %467

467:                                              ; preds = %461
  %468 = load i32, ptr %465, align 8, !tbaa !257
  br label %469

469:                                              ; preds = %467, %461
  %470 = phi i32 [ %468, %467 ], [ 0, %461 ]
  %471 = icmp eq i32 %470, 1
  br label %472

472:                                              ; preds = %531, %469
  %473 = phi i32 [ 0, %469 ], [ %532, %531 ]
  br i1 %466, label %481, label %474

474:                                              ; preds = %472
  %475 = load i32, ptr %465, align 8, !tbaa !257
  %476 = icmp ugt i32 %475, %473
  br i1 %476, label %477, label %481

477:                                              ; preds = %474
  %478 = zext i32 %473 to i64
  %479 = getelementptr inbounds %struct.VEC_edge_base, ptr %465, i64 0, i32 2, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !129
  br label %481

481:                                              ; preds = %477, %474, %472
  %482 = phi ptr [ %480, %477 ], [ null, %474 ], [ null, %472 ]
  %483 = phi i1 [ false, %477 ], [ true, %474 ], [ true, %472 ]
  br i1 %483, label %533, label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr @compiler_params, align 8, !tbaa !129
  %486 = getelementptr inbounds %struct.param_info, ptr %485, i64 46, i32 1
  %487 = load i32, ptr %486, align 8, !tbaa !158
  %488 = call zeroext i8 @number_of_iterations_exit(ptr noundef nonnull %464, ptr noundef %482, ptr noundef nonnull %1, i8 noundef zeroext 0) #27
  %489 = icmp eq i8 %488, 0
  %490 = load ptr, ptr %460, align 8
  %491 = select i1 %489, ptr null, ptr %490
  %492 = icmp eq ptr %491, null
  br i1 %492, label %497, label %493

493:                                              ; preds = %484
  %494 = load i64, ptr %490, align 8
  %495 = and i64 %494, 65535
  %496 = icmp eq i64 %495, 23
  br i1 %496, label %499, label %497

497:                                              ; preds = %493, %484
  %498 = call ptr @loop_niter_by_eval(ptr noundef nonnull %464, ptr noundef %482) #27
  br label %499

499:                                              ; preds = %497, %493
  %500 = phi ptr [ %498, %497 ], [ %491, %493 ]
  %501 = load i64, ptr %500, align 8
  %502 = and i64 %501, 65535
  %503 = icmp eq i64 %502, 23
  br i1 %503, label %504, label %517

504:                                              ; preds = %499
  %505 = call i32 @host_integerp(ptr noundef nonnull %500, i32 noundef 1) #27
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %515, label %507

507:                                              ; preds = %504
  %508 = add nsw i32 %487, -1
  %509 = sext i32 %508 to i64
  %510 = call i32 @compare_tree_int(ptr noundef nonnull %500, i64 noundef %509) #27
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %512, label %515

512:                                              ; preds = %507
  %513 = call i64 @tree_low_cst(ptr noundef nonnull %500, i32 noundef 1) #27
  %514 = add nsw i64 %513, 1
  br label %524

515:                                              ; preds = %507, %504
  %516 = sext i32 %487 to i64
  br label %524

517:                                              ; preds = %499
  br i1 %471, label %518, label %531

518:                                              ; preds = %517
  %519 = call i64 @estimated_loop_iterations_int(ptr noundef nonnull %464, i8 noundef zeroext 0) #27
  %520 = icmp slt i64 %519, 0
  br i1 %520, label %531, label %521

521:                                              ; preds = %518
  %522 = sext i32 %487 to i64
  %523 = call i64 @llvm.smin.i64(i64 %519, i64 %522)
  br label %524

524:                                              ; preds = %521, %515, %512
  %525 = phi i32 [ 7, %521 ], [ 5, %515 ], [ 5, %512 ]
  %526 = phi i64 [ %523, %521 ], [ %516, %515 ], [ %514, %512 ]
  %527 = sdiv i64 %526, 2
  %528 = add nsw i64 %527, 10000
  %529 = sdiv i64 %528, %526
  %530 = trunc i64 %529 to i32
  call void @predict_edge(ptr noundef %482, i32 noundef %525, i32 noundef %530) #27
  br label %531

531:                                              ; preds = %524, %518, %517
  %532 = add i32 %473, 1
  br label %472, !llvm.loop !355

533:                                              ; preds = %481
  br i1 %466, label %535, label %534

534:                                              ; preds = %533
  call void @free(ptr noundef %465)
  br label %535

535:                                              ; preds = %534, %533
  %536 = call ptr @get_loop_body(ptr noundef nonnull %464) #27
  %537 = getelementptr inbounds %struct.loop, ptr %464, i64 0, i32 6
  %538 = load i32, ptr %537, align 4, !tbaa !356
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %608, label %540

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.loop, ptr %464, i64 0, i32 3
  %542 = getelementptr inbounds %struct.loop, ptr %464, i64 0, i32 2
  br label %543

543:                                              ; preds = %540, %603
  %544 = phi i64 [ 0, %540 ], [ %604, %603 ]
  %545 = getelementptr inbounds ptr, ptr %536, i64 %544
  %546 = load ptr, ptr %545, align 8, !tbaa !129
  %547 = call zeroext i8 @predicted_by_p(ptr noundef %546, i32 noundef 8) #27
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %549, label %603

549:                                              ; preds = %543
  %550 = load ptr, ptr %541, align 8, !tbaa !357
  %551 = icmp eq ptr %546, %550
  br i1 %551, label %552, label %557

552:                                              ; preds = %549
  %553 = load ptr, ptr %542, align 8, !tbaa !211
  %554 = call ptr @find_edge(ptr noundef %550, ptr noundef %553) #27
  %555 = icmp eq ptr %554, null
  br i1 %555, label %557, label %556

556:                                              ; preds = %552
  call void @predict_edge(ptr noundef nonnull %554, i32 noundef 11, i32 noundef 8600) #27
  br label %603

557:                                              ; preds = %552, %549
  %558 = call zeroext i8 @predicted_by_p(ptr noundef %546, i32 noundef 7) #27
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %560, label %603

560:                                              ; preds = %557
  %561 = call zeroext i8 @predicted_by_p(ptr noundef %546, i32 noundef 5) #27
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %563, label %603

563:                                              ; preds = %560
  %564 = udiv i32 900, %470
  %565 = call i32 @llvm.umax.i32(i32 %564, i32 200)
  %566 = getelementptr inbounds %struct.basic_block_def, ptr %546, i64 0, i32 1
  br label %567

567:                                              ; preds = %601, %563
  %568 = phi i32 [ 0, %563 ], [ %602, %601 ]
  %569 = load ptr, ptr %566, align 8, !tbaa !129
  %570 = icmp eq ptr %569, null
  br i1 %570, label %573, label %571

571:                                              ; preds = %567
  %572 = load i32, ptr %569, align 8, !tbaa !257
  br label %573

573:                                              ; preds = %571, %567
  %574 = phi i32 [ %572, %571 ], [ 0, %567 ]
  %575 = icmp eq i32 %574, %568
  br i1 %575, label %580, label %576

576:                                              ; preds = %573
  %577 = zext i32 %568 to i64
  %578 = getelementptr inbounds %struct.VEC_edge_base, ptr %569, i64 0, i32 2, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !129
  br label %580

580:                                              ; preds = %576, %573
  %581 = phi ptr [ %579, %576 ], [ null, %573 ]
  br i1 %575, label %603, label %582

582:                                              ; preds = %580
  %583 = getelementptr inbounds %struct.edge_def, ptr %581, i64 0, i32 1
  %584 = load ptr, ptr %583, align 8, !tbaa !358
  %585 = getelementptr inbounds %struct.basic_block_def, ptr %584, i64 0, i32 9
  %586 = load i32, ptr %585, align 8, !tbaa !284
  %587 = icmp slt i32 %586, 2
  br i1 %587, label %591, label %588

588:                                              ; preds = %582
  %589 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %464, ptr noundef %584) #27
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %588, %582
  call void @predict_edge(ptr noundef %581, i32 noundef 12, i32 noundef %565) #27
  br label %592

592:                                              ; preds = %591, %588
  %593 = load ptr, ptr %566, align 8, !tbaa !129
  %594 = icmp eq ptr %593, null
  br i1 %594, label %597, label %595

595:                                              ; preds = %592
  %596 = load i32, ptr %593, align 8, !tbaa !257
  br label %597

597:                                              ; preds = %595, %592
  %598 = phi i32 [ %596, %595 ], [ 0, %592 ]
  %599 = icmp ult i32 %568, %598
  br i1 %599, label %601, label %600

600:                                              ; preds = %597
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %601

601:                                              ; preds = %600, %597
  %602 = add i32 %568, 1
  br label %567, !llvm.loop !359

603:                                              ; preds = %580, %560, %557, %556, %543
  %604 = add nuw nsw i64 %544, 1
  %605 = load i32, ptr %537, align 4, !tbaa !356
  %606 = zext i32 %605 to i64
  %607 = icmp ult i64 %604, %606
  br i1 %607, label %543, label %608, !llvm.loop !360

608:                                              ; preds = %603, %535
  call void @free(ptr noundef %536)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %1) #27
  %609 = icmp eq ptr %463, null
  %610 = load ptr, ptr @cfun, align 8
  %611 = getelementptr inbounds %struct.function, ptr %610, i64 0, i32 4
  br label %612

612:                                              ; preds = %624, %608
  %613 = phi i32 [ %462, %608 ], [ %625, %624 ]
  br i1 %609, label %621, label %614

614:                                              ; preds = %612
  %615 = load i32, ptr %463, align 4, !tbaa !350
  %616 = icmp ugt i32 %615, %613
  br i1 %616, label %617, label %621

617:                                              ; preds = %614
  %618 = zext i32 %613 to i64
  %619 = getelementptr inbounds %struct.VEC_int_base, ptr %463, i64 0, i32 2, i64 %618
  %620 = load i32, ptr %619, align 4, !tbaa !144
  br label %621

621:                                              ; preds = %617, %614, %612
  %622 = phi i32 [ %620, %617 ], [ 0, %614 ], [ 0, %612 ]
  %623 = phi i1 [ false, %617 ], [ true, %614 ], [ true, %612 ]
  br i1 %623, label %633, label %624

624:                                              ; preds = %621
  %625 = add i32 %613, 1
  %626 = load ptr, ptr %611, align 8, !tbaa !345
  %627 = getelementptr inbounds %struct.loops, ptr %626, i64 0, i32 1
  %628 = load ptr, ptr %627, align 8, !tbaa !346
  %629 = zext i32 %622 to i64
  %630 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %628, i64 0, i32 2, i64 %629
  %631 = load ptr, ptr %630, align 8, !tbaa !129
  %632 = icmp eq ptr %631, null
  br i1 %632, label %612, label %635, !llvm.loop !354

633:                                              ; preds = %621
  br i1 %609, label %635, label %634

634:                                              ; preds = %633
  call void @free(ptr noundef %463)
  br label %635

635:                                              ; preds = %624, %634, %633
  %636 = phi ptr [ null, %634 ], [ null, %633 ], [ %631, %624 ]
  %637 = phi ptr [ null, %634 ], [ null, %633 ], [ %463, %624 ]
  %638 = phi i32 [ %613, %634 ], [ %613, %633 ], [ %625, %624 ]
  %639 = icmp eq ptr %636, null
  br i1 %639, label %640, label %461, !llvm.loop !361

640:                                              ; preds = %635, %366, %371, %454, %375
  %641 = load ptr, ptr @cfun, align 8, !tbaa !129
  %642 = getelementptr inbounds %struct.function, ptr %641, i64 0, i32 1
  %643 = load ptr, ptr %642, align 8, !tbaa !148
  %644 = load ptr, ptr %643, align 8, !tbaa !255
  %645 = getelementptr inbounds %struct.basic_block_def, ptr %644, i64 0, i32 6
  %646 = load ptr, ptr %645, align 8, !tbaa !321
  %647 = getelementptr inbounds %struct.control_flow_graph, ptr %643, i64 0, i32 1
  %648 = load ptr, ptr %647, align 8, !tbaa !290
  %649 = icmp eq ptr %646, %648
  br i1 %649, label %1020, label %650, !prof !322

650:                                              ; preds = %640, %1011
  %651 = phi ptr [ %1013, %1011 ], [ %646, %640 ]
  %652 = getelementptr inbounds %struct.basic_block_def, ptr %651, i64 0, i32 1
  %653 = getelementptr inbounds %struct.basic_block_def, ptr %651, i64 0, i32 6
  br label %654

654:                                              ; preds = %845, %650
  %655 = phi i32 [ 0, %650 ], [ %846, %845 ]
  %656 = load ptr, ptr %652, align 8, !tbaa !129
  %657 = icmp eq ptr %656, null
  br i1 %657, label %660, label %658, !prof !362

658:                                              ; preds = %654
  %659 = load i32, ptr %656, align 8, !tbaa !257
  br label %660

660:                                              ; preds = %658, %654
  %661 = phi i32 [ %659, %658 ], [ 0, %654 ]
  %662 = icmp eq i32 %661, %655
  br i1 %662, label %667, label %663, !prof !363

663:                                              ; preds = %660
  %664 = zext i32 %655 to i64
  %665 = getelementptr inbounds %struct.VEC_edge_base, ptr %656, i64 0, i32 2, i64 %664
  %666 = load ptr, ptr %665, align 8, !tbaa !129
  br label %667

667:                                              ; preds = %663, %660
  %668 = phi ptr [ %666, %663 ], [ null, %660 ]
  br i1 %662, label %847, label %669, !prof !363

669:                                              ; preds = %667
  %670 = getelementptr inbounds %struct.edge_def, ptr %668, i64 0, i32 1
  %671 = load ptr, ptr %670, align 8, !tbaa !358
  %672 = load ptr, ptr %653, align 8, !tbaa !321
  %673 = icmp eq ptr %671, %672
  br i1 %673, label %783, label %674, !prof !364

674:                                              ; preds = %669
  %675 = load ptr, ptr @cfun, align 8, !tbaa !129
  %676 = getelementptr inbounds %struct.function, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !148
  %678 = getelementptr inbounds %struct.control_flow_graph, ptr %677, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !290
  %680 = icmp eq ptr %671, %679
  br i1 %680, label %783, label %681, !prof !365

681:                                              ; preds = %674
  %682 = getelementptr inbounds %struct.basic_block_def, ptr %671, i64 0, i32 1
  %683 = load ptr, ptr %682, align 8, !tbaa !256
  %684 = icmp eq ptr %683, null
  br i1 %684, label %689, label %685, !prof !366

685:                                              ; preds = %681
  %686 = load i32, ptr %683, align 8, !tbaa !257
  %687 = icmp eq i32 %686, 1
  %688 = zext i1 %687 to i8
  br label %689

689:                                              ; preds = %685, %681
  %690 = phi i8 [ %688, %685 ], [ 0, %681 ]
  %691 = icmp eq i8 %690, 0
  br i1 %691, label %783, label %692, !prof !367

692:                                              ; preds = %689
  br i1 %684, label %696, label %693, !prof !368

693:                                              ; preds = %692
  %694 = load i32, ptr %683, align 8, !tbaa !257
  %695 = icmp eq i32 %694, 1
  br i1 %695, label %697, label %696, !prof !369

696:                                              ; preds = %693, %692
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 645, ptr noundef nonnull @.str.3) #27
  br label %697

697:                                              ; preds = %696, %693
  %698 = load ptr, ptr %682, align 8, !tbaa !256
  %699 = getelementptr inbounds %struct.VEC_edge_base, ptr %698, i64 0, i32 2, i64 0
  %700 = load ptr, ptr %699, align 8, !tbaa !129
  %701 = getelementptr inbounds %struct.edge_def, ptr %700, i64 0, i32 1
  %702 = load ptr, ptr %701, align 8, !tbaa !358
  %703 = load ptr, ptr @cfun, align 8, !tbaa !129
  %704 = getelementptr inbounds %struct.function, ptr %703, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !148
  %706 = getelementptr inbounds %struct.control_flow_graph, ptr %705, i64 0, i32 1
  %707 = load ptr, ptr %706, align 8, !tbaa !290
  %708 = icmp eq ptr %702, %707
  br i1 %708, label %709, label %783, !prof !370

709:                                              ; preds = %697
  %710 = load ptr, ptr %670, align 8, !tbaa !358
  %711 = call ptr @last_stmt(ptr noundef %710) #27
  %712 = icmp eq ptr %711, null
  br i1 %712, label %783, label %713, !prof !371

713:                                              ; preds = %709
  %714 = load i32, ptr %711, align 8
  %715 = and i32 %714, 255
  %716 = icmp eq i32 %715, 9
  br i1 %716, label %717, label %783, !prof !372

717:                                              ; preds = %713
  %718 = load ptr, ptr %652, align 8, !tbaa !256
  %719 = icmp eq ptr %718, null
  br i1 %719, label %724, label %720, !prof !373

720:                                              ; preds = %717
  %721 = load i32, ptr %718, align 8, !tbaa !257
  %722 = icmp eq i32 %721, 1
  %723 = zext i1 %722 to i8
  br label %724

724:                                              ; preds = %720, %717
  %725 = phi i8 [ %723, %720 ], [ 0, %717 ]
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %770, label %727, !prof !374

727:                                              ; preds = %724
  %728 = icmp eq ptr %651, null
  br label %729

729:                                              ; preds = %727, %768
  %730 = phi i32 [ %769, %768 ], [ 0, %727 ]
  br i1 %728, label %731, label %732, !prof !375

731:                                              ; preds = %729
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.3) #27
  br label %732

732:                                              ; preds = %731, %729
  %733 = load ptr, ptr %651, align 8, !tbaa !129
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735, !prof !375

735:                                              ; preds = %732
  %736 = load i32, ptr %733, align 8, !tbaa !257
  br label %737

737:                                              ; preds = %735, %732
  %738 = phi i32 [ %736, %735 ], [ 0, %732 ]
  %739 = icmp eq i32 %738, %730
  br i1 %739, label %744, label %740, !prof !376

740:                                              ; preds = %737
  %741 = zext i32 %730 to i64
  %742 = getelementptr inbounds %struct.VEC_edge_base, ptr %733, i64 0, i32 2, i64 %741
  %743 = load ptr, ptr %742, align 8, !tbaa !129
  br label %744

744:                                              ; preds = %740, %737
  %745 = phi ptr [ %743, %740 ], [ null, %737 ]
  br i1 %739, label %783, label %746, !prof !376

746:                                              ; preds = %744
  %747 = load ptr, ptr %745, align 8, !tbaa !182
  %748 = call zeroext i8 @predicted_by_p(ptr noundef %747, i32 noundef 26) #27
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %750, label %759, !prof !377

750:                                              ; preds = %746
  %751 = load ptr, ptr %745, align 8, !tbaa !182
  %752 = call zeroext i8 @predicted_by_p(ptr noundef %751, i32 noundef 24) #27
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %754, label %759, !prof !378

754:                                              ; preds = %750
  %755 = load ptr, ptr %745, align 8, !tbaa !182
  %756 = call zeroext i8 @predicted_by_p(ptr noundef %755, i32 noundef 25) #27
  %757 = icmp eq i8 %756, 0
  br i1 %757, label %758, label %759, !prof !379

758:                                              ; preds = %754
  call void @predict_edge(ptr noundef nonnull %745, i32 noundef 22, i32 noundef 3900) #27
  br label %759

759:                                              ; preds = %758, %754, %750, %746
  %760 = load ptr, ptr %651, align 8, !tbaa !129
  %761 = icmp eq ptr %760, null
  br i1 %761, label %764, label %762, !prof !380

762:                                              ; preds = %759
  %763 = load i32, ptr %760, align 8, !tbaa !257
  br label %764

764:                                              ; preds = %762, %759
  %765 = phi i32 [ %763, %762 ], [ 0, %759 ]
  %766 = icmp ult i32 %730, %765
  br i1 %766, label %768, label %767, !prof !377

767:                                              ; preds = %764
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %768

768:                                              ; preds = %767, %764
  %769 = add i32 %730, 1
  br label %729, !llvm.loop !381

770:                                              ; preds = %724
  %771 = load ptr, ptr %668, align 8, !tbaa !182
  %772 = call zeroext i8 @predicted_by_p(ptr noundef %771, i32 noundef 26) #27
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %774, label %783, !prof !382

774:                                              ; preds = %770
  %775 = load ptr, ptr %668, align 8, !tbaa !182
  %776 = call zeroext i8 @predicted_by_p(ptr noundef %775, i32 noundef 24) #27
  %777 = icmp eq i8 %776, 0
  br i1 %777, label %778, label %783, !prof !383

778:                                              ; preds = %774
  %779 = load ptr, ptr %668, align 8, !tbaa !182
  %780 = call zeroext i8 @predicted_by_p(ptr noundef %779, i32 noundef 25) #27
  %781 = icmp eq i8 %780, 0
  br i1 %781, label %782, label %783, !prof !384

782:                                              ; preds = %778
  call void @predict_edge(ptr noundef nonnull %668, i32 noundef 22, i32 noundef 3900) #27
  br label %783

783:                                              ; preds = %744, %782, %778, %774, %770, %713, %709, %697, %689, %674, %669
  %784 = load ptr, ptr %670, align 8, !tbaa !358
  %785 = load ptr, ptr @cfun, align 8, !tbaa !129
  %786 = getelementptr inbounds %struct.function, ptr %785, i64 0, i32 1
  %787 = load ptr, ptr %786, align 8, !tbaa !148
  %788 = getelementptr inbounds %struct.control_flow_graph, ptr %787, i64 0, i32 1
  %789 = load ptr, ptr %788, align 8, !tbaa !290
  %790 = icmp eq ptr %784, %789
  %791 = icmp eq ptr %784, %651
  %792 = or i1 %791, %790
  br i1 %792, label %836, label %793, !prof !385

793:                                              ; preds = %783
  %794 = load ptr, ptr %668, align 8, !tbaa !182
  %795 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %784, ptr noundef %794) #27
  %796 = icmp eq i8 %795, 0
  br i1 %796, label %836, label %797, !prof !386

797:                                              ; preds = %793
  %798 = load ptr, ptr %668, align 8, !tbaa !182
  %799 = load ptr, ptr %670, align 8, !tbaa !358
  %800 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %798, ptr noundef %799) #27
  %801 = icmp eq i8 %800, 0
  br i1 %801, label %802, label %836, !prof !387

802:                                              ; preds = %797
  %803 = load ptr, ptr %670, align 8, !tbaa !358
  %804 = getelementptr inbounds %struct.basic_block_def, ptr %803, i64 0, i32 13
  %805 = load i32, ptr %804, align 8, !tbaa !325, !noalias !388
  %806 = and i32 %805, 512
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %814, !prof !391

808:                                              ; preds = %802
  %809 = getelementptr inbounds %struct.basic_block_def, ptr %803, i64 0, i32 7
  %810 = load ptr, ptr %809, align 8, !tbaa !140, !noalias !388
  %811 = icmp eq ptr %810, null
  br i1 %811, label %814, label %812, !prof !392

812:                                              ; preds = %808
  %813 = load ptr, ptr %810, align 8, !tbaa !331, !noalias !388
  br label %814

814:                                              ; preds = %812, %808, %802
  %815 = phi ptr [ %813, %812 ], [ null, %808 ], [ null, %802 ]
  %816 = icmp eq ptr %815, null
  br i1 %816, label %819, label %817, !prof !392

817:                                              ; preds = %814
  %818 = load ptr, ptr %815, align 8, !tbaa !333, !noalias !388
  br label %819

819:                                              ; preds = %817, %814
  %820 = phi ptr [ %818, %817 ], [ null, %814 ]
  %821 = icmp eq ptr %820, null
  br i1 %821, label %836, label %822, !prof !393

822:                                              ; preds = %819, %832
  %823 = phi ptr [ %834, %832 ], [ %820, %819 ]
  %824 = load ptr, ptr %823, align 8, !tbaa !336
  %825 = load i32, ptr %824, align 8
  %826 = and i32 %825, 255
  %827 = icmp eq i32 %826, 8
  br i1 %827, label %828, label %832, !prof !394

828:                                              ; preds = %822
  %829 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %824) #27
  %830 = icmp eq i8 %829, 0
  br i1 %830, label %832, label %831, !prof !395

831:                                              ; preds = %828
  call void @predict_edge(ptr noundef nonnull %668, i32 noundef 21, i32 noundef 2900) #27
  br label %836

832:                                              ; preds = %822, %828
  %833 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %823, i64 0, i32 2
  %834 = load ptr, ptr %833, align 8, !tbaa !342
  %835 = icmp eq ptr %834, null
  br i1 %835, label %836, label %822, !prof !396, !llvm.loop !397

836:                                              ; preds = %832, %819, %831, %797, %793, %783
  %837 = load ptr, ptr %652, align 8, !tbaa !129
  %838 = icmp eq ptr %837, null
  br i1 %838, label %841, label %839, !prof !398

839:                                              ; preds = %836
  %840 = load i32, ptr %837, align 8, !tbaa !257
  br label %841

841:                                              ; preds = %839, %836
  %842 = phi i32 [ %840, %839 ], [ 0, %836 ]
  %843 = icmp ult i32 %655, %842
  br i1 %843, label %845, label %844, !prof !399

844:                                              ; preds = %841
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %845

845:                                              ; preds = %844, %841
  %846 = add i32 %655, 1
  br label %654, !llvm.loop !400

847:                                              ; preds = %667
  %848 = call ptr @last_stmt(ptr noundef %651) #27
  %849 = icmp eq ptr %848, null
  br i1 %849, label %1011, label %850, !prof !401

850:                                              ; preds = %847
  %851 = load i32, ptr %848, align 8
  %852 = and i32 %851, 255
  %853 = icmp eq i32 %852, 1
  br i1 %853, label %854, label %1011, !prof !402

854:                                              ; preds = %850, %881
  %855 = phi i32 [ %882, %881 ], [ 0, %850 ]
  %856 = load ptr, ptr %652, align 8, !tbaa !129
  %857 = icmp eq ptr %856, null
  br i1 %857, label %860, label %858, !prof !403

858:                                              ; preds = %854
  %859 = load i32, ptr %856, align 8, !tbaa !257
  br label %860

860:                                              ; preds = %858, %854
  %861 = phi i32 [ %859, %858 ], [ 0, %854 ]
  %862 = icmp eq i32 %861, %855
  br i1 %862, label %867, label %863, !prof !403

863:                                              ; preds = %860
  %864 = zext i32 %855 to i64
  %865 = getelementptr inbounds %struct.VEC_edge_base, ptr %856, i64 0, i32 2, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !129
  br label %867

867:                                              ; preds = %863, %860
  %868 = phi ptr [ %866, %863 ], [ null, %860 ]
  br i1 %862, label %883, label %869, !prof !403

869:                                              ; preds = %867
  %870 = getelementptr inbounds %struct.edge_def, ptr %868, i64 0, i32 7
  %871 = load i32, ptr %870, align 8, !tbaa !252
  %872 = and i32 %871, 1024
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %883, !prof !403

874:                                              ; preds = %869
  br i1 %857, label %877, label %875

875:                                              ; preds = %874
  %876 = load i32, ptr %856, align 8, !tbaa !257
  br label %877

877:                                              ; preds = %875, %874
  %878 = phi i32 [ %876, %875 ], [ 0, %874 ]
  %879 = icmp ult i32 %855, %878
  br i1 %879, label %881, label %880

880:                                              ; preds = %877
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %881

881:                                              ; preds = %880, %877
  %882 = add i32 %855, 1
  br label %854, !llvm.loop !404

883:                                              ; preds = %869, %867
  %884 = load i32, ptr %848, align 8
  %885 = and i32 %884, 255
  %886 = add nsw i32 %885, -10
  %887 = icmp ult i32 %886, -9
  br i1 %887, label %900, label %888, !prof !403

888:                                              ; preds = %883
  %889 = zext nneg i32 %885 to i64
  %890 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %889
  %891 = load i32, ptr %890, align 4, !tbaa !144
  %892 = zext i32 %891 to i64
  %893 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %892
  %894 = load i64, ptr %893, align 8, !tbaa !295
  %895 = icmp eq i64 %894, 0
  br i1 %895, label %896, label %897, !prof !403

896:                                              ; preds = %888
  call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %897

897:                                              ; preds = %896, %888
  %898 = getelementptr inbounds i8, ptr %848, i64 %894
  %899 = load ptr, ptr %898, align 8, !tbaa !129
  br label %900

900:                                              ; preds = %897, %883
  %901 = phi ptr [ %899, %897 ], [ null, %883 ]
  %902 = load i32, ptr %848, align 8
  %903 = and i32 %902, 255
  %904 = add nsw i32 %903, -10
  %905 = icmp ult i32 %904, -9
  br i1 %905, label %919, label %906, !prof !403

906:                                              ; preds = %900
  %907 = zext nneg i32 %903 to i64
  %908 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %907
  %909 = load i32, ptr %908, align 4, !tbaa !144
  %910 = zext i32 %909 to i64
  %911 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %910
  %912 = load i64, ptr %911, align 8, !tbaa !295
  %913 = icmp eq i64 %912, 0
  br i1 %913, label %914, label %915, !prof !403

914:                                              ; preds = %906
  call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %915

915:                                              ; preds = %914, %906
  %916 = getelementptr inbounds i8, ptr %848, i64 %912
  %917 = getelementptr inbounds ptr, ptr %916, i64 1
  %918 = load ptr, ptr %917, align 8, !tbaa !129
  br label %919

919:                                              ; preds = %915, %900
  %920 = phi ptr [ %918, %915 ], [ null, %900 ]
  %921 = load i32, ptr %848, align 8
  %922 = lshr i32 %921, 16
  %923 = getelementptr inbounds %struct.tree_common, ptr %901, i64 0, i32 2
  %924 = load ptr, ptr %923, align 8, !tbaa !140
  %925 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  %926 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !129
  %927 = call fastcc ptr @expr_expected_value_1(ptr noundef %926, ptr noundef %901, i32 noundef %922, ptr noundef %920, ptr noundef %925)
  call void @bitmap_obstack_free(ptr noundef %925) #27
  %928 = icmp eq ptr %927, null
  br i1 %928, label %934, label %929, !prof !405

929:                                              ; preds = %919
  %930 = call i32 @integer_zerop(ptr noundef nonnull %927) #27
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %933, label %932

932:                                              ; preds = %929
  call void @predict_edge(ptr noundef %868, i32 noundef 6, i32 noundef 4) #27
  br label %1011

933:                                              ; preds = %929
  call void @predict_edge(ptr noundef %868, i32 noundef 6, i32 noundef 9996) #27
  br label %1011

934:                                              ; preds = %919
  %935 = load i64, ptr %924, align 8
  %936 = trunc i64 %935 to i16
  switch i16 %936, label %941 [
    i16 10, label %937
    i16 12, label %937
  ], !prof !406

937:                                              ; preds = %934, %934
  %938 = trunc i32 %922 to i16
  switch i16 %938, label %1011 [
    i16 101, label %939
    i16 102, label %940
  ], !prof !407

939:                                              ; preds = %937
  call void @predict_edge(ptr noundef %868, i32 noundef 14, i32 noundef 1500) #27
  br label %1011

940:                                              ; preds = %937
  call void @predict_edge(ptr noundef %868, i32 noundef 14, i32 noundef 8500) #27
  br label %1011

941:                                              ; preds = %934
  %942 = trunc i32 %922 to i16
  switch i16 %942, label %1011 [
    i16 101, label %943
    i16 109, label %943
    i16 102, label %957
    i16 110, label %957
    i16 104, label %971
    i16 103, label %972
    i16 98, label %973
    i16 97, label %973
    i16 100, label %992
    i16 99, label %992
  ], !prof !408

943:                                              ; preds = %941, %941
  switch i16 %936, label %950 [
    i16 9, label %1011
    i16 13, label %944
    i16 14, label %944
  ], !prof !409

944:                                              ; preds = %943, %943
  %945 = getelementptr inbounds %struct.tree_common, ptr %924, i64 0, i32 2
  %946 = load ptr, ptr %945, align 8, !tbaa !140
  %947 = load i64, ptr %946, align 8
  %948 = and i64 %947, 65535
  %949 = icmp eq i64 %948, 9
  br i1 %949, label %1011, label %950

950:                                              ; preds = %944, %943
  %951 = call i32 @integer_zerop(ptr noundef %901) #27
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %1011, !prof !410

953:                                              ; preds = %950
  %954 = call i32 @integer_zerop(ptr noundef %920) #27
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %1011, !prof !411

956:                                              ; preds = %953
  call void @predict_edge(ptr noundef %868, i32 noundef 19, i32 noundef 2800) #27
  br label %1011

957:                                              ; preds = %941, %941
  switch i16 %936, label %964 [
    i16 9, label %1011
    i16 13, label %958
    i16 14, label %958
  ], !prof !412

958:                                              ; preds = %957, %957
  %959 = getelementptr inbounds %struct.tree_common, ptr %924, i64 0, i32 2
  %960 = load ptr, ptr %959, align 8, !tbaa !140
  %961 = load i64, ptr %960, align 8
  %962 = and i64 %961, 65535
  %963 = icmp eq i64 %962, 9
  br i1 %963, label %1011, label %964

964:                                              ; preds = %958, %957
  %965 = call i32 @integer_zerop(ptr noundef %901) #27
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %1011, !prof !413

967:                                              ; preds = %964
  %968 = call i32 @integer_zerop(ptr noundef %920) #27
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %970, label %1011, !prof !414

970:                                              ; preds = %967
  call void @predict_edge(ptr noundef %868, i32 noundef 19, i32 noundef 7200) #27
  br label %1011

971:                                              ; preds = %941
  call void @predict_edge(ptr noundef %868, i32 noundef 20, i32 noundef 9000) #27
  br label %1011

972:                                              ; preds = %941
  call void @predict_edge(ptr noundef %868, i32 noundef 20, i32 noundef 1000) #27
  br label %1011

973:                                              ; preds = %941, %941
  %974 = call i32 @integer_zerop(ptr noundef %920) #27
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %991, !prof !415

976:                                              ; preds = %973
  %977 = call i32 @integer_onep(ptr noundef %920) #27
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %979, label %991, !prof !416

979:                                              ; preds = %976
  %980 = call i32 @integer_all_onesp(ptr noundef %920) #27
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %991, !prof !417

982:                                              ; preds = %979
  %983 = call i32 @real_zerop(ptr noundef %920) #27
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %991, !prof !417

985:                                              ; preds = %982
  %986 = call i32 @real_onep(ptr noundef %920) #27
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %991, !prof !417

988:                                              ; preds = %985
  %989 = call i32 @real_minus_onep(ptr noundef %920) #27
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1011, label %991, !prof !417

991:                                              ; preds = %988, %985, %982, %979, %976, %973
  call void @predict_edge(ptr noundef %868, i32 noundef 18, i32 noundef 2700) #27
  br label %1011

992:                                              ; preds = %941, %941
  %993 = call i32 @integer_zerop(ptr noundef %920) #27
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %1010, !prof !417

995:                                              ; preds = %992
  %996 = call i32 @integer_onep(ptr noundef %920) #27
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1010, !prof !417

998:                                              ; preds = %995
  %999 = call i32 @integer_all_onesp(ptr noundef %920) #27
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1010, !prof !417

1001:                                             ; preds = %998
  %1002 = call i32 @real_zerop(ptr noundef %920) #27
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1010, !prof !417

1004:                                             ; preds = %1001
  %1005 = call i32 @real_onep(ptr noundef %920) #27
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1010, !prof !417

1007:                                             ; preds = %1004
  %1008 = call i32 @real_minus_onep(ptr noundef %920) #27
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1011, label %1010, !prof !417

1010:                                             ; preds = %1007, %1004, %1001, %998, %995, %992
  call void @predict_edge(ptr noundef %868, i32 noundef 18, i32 noundef 7300) #27
  br label %1011

1011:                                             ; preds = %1007, %988, %958, %957, %944, %943, %847, %850, %932, %933, %937, %939, %940, %941, %950, %953, %956, %964, %967, %970, %971, %972, %991, %1010
  %1012 = getelementptr inbounds %struct.basic_block_def, ptr %651, i64 0, i32 6
  %1013 = load ptr, ptr %1012, align 8, !tbaa !321
  %1014 = load ptr, ptr @cfun, align 8, !tbaa !129
  %1015 = getelementptr inbounds %struct.function, ptr %1014, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !148
  %1017 = getelementptr inbounds %struct.control_flow_graph, ptr %1016, i64 0, i32 1
  %1018 = load ptr, ptr %1017, align 8, !tbaa !290
  %1019 = icmp eq ptr %1013, %1018
  br i1 %1019, label %1020, label %650, !prof !323, !llvm.loop !418

1020:                                             ; preds = %1011, %640
  %1021 = phi ptr [ %643, %640 ], [ %1016, %1011 ]
  %1022 = load ptr, ptr %1021, align 8, !tbaa !255
  %1023 = getelementptr inbounds %struct.basic_block_def, ptr %1022, i64 0, i32 6
  %1024 = load ptr, ptr %1023, align 8, !tbaa !321
  %1025 = load ptr, ptr @cfun, align 8, !tbaa !129
  %1026 = getelementptr inbounds %struct.function, ptr %1025, i64 0, i32 1
  %1027 = load ptr, ptr %1026, align 8, !tbaa !148
  %1028 = getelementptr inbounds %struct.control_flow_graph, ptr %1027, i64 0, i32 1
  %1029 = load ptr, ptr %1028, align 8, !tbaa !290
  %1030 = icmp eq ptr %1024, %1029
  br i1 %1030, label %1492, label %1031, !prof !322

1031:                                             ; preds = %1020, %1483
  %1032 = phi ptr [ %1485, %1483 ], [ %1024, %1020 ]
  %1033 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 1
  br label %1034

1034:                                             ; preds = %1074, %1031
  %1035 = phi i32 [ 0, %1031 ], [ %1075, %1074 ]
  %1036 = phi i32 [ 0, %1031 ], [ %1065, %1074 ]
  %1037 = phi ptr [ null, %1031 ], [ %1066, %1074 ]
  %1038 = phi ptr [ null, %1031 ], [ %1067, %1074 ]
  %1039 = load ptr, ptr %1033, align 8, !tbaa !129
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1043, label %1041, !prof !362

1041:                                             ; preds = %1034
  %1042 = load i32, ptr %1039, align 8, !tbaa !257
  br label %1043

1043:                                             ; preds = %1041, %1034
  %1044 = phi i32 [ %1042, %1041 ], [ 0, %1034 ]
  %1045 = icmp eq i32 %1044, %1035
  br i1 %1045, label %1050, label %1046, !prof !363

1046:                                             ; preds = %1043
  %1047 = zext i32 %1035 to i64
  %1048 = getelementptr inbounds %struct.VEC_edge_base, ptr %1039, i64 0, i32 2, i64 %1047
  %1049 = load ptr, ptr %1048, align 8, !tbaa !129
  br label %1050

1050:                                             ; preds = %1046, %1043
  %1051 = phi ptr [ %1049, %1046 ], [ null, %1043 ]
  br i1 %1045, label %1076, label %1052, !prof !363

1052:                                             ; preds = %1050
  %1053 = getelementptr inbounds %struct.edge_def, ptr %1051, i64 0, i32 7
  %1054 = load i32, ptr %1053, align 8, !tbaa !252
  %1055 = and i32 %1054, 24
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1064, !prof !419

1057:                                             ; preds = %1052
  %1058 = add nsw i32 %1036, 1
  %1059 = icmp eq ptr %1037, null
  %1060 = icmp ne ptr %1038, null
  %1061 = select i1 %1059, i1 true, i1 %1060, !prof !420
  %1062 = select i1 %1061, ptr %1038, ptr %1051, !prof !421
  %1063 = select i1 %1059, ptr %1051, ptr %1037, !prof !420
  br label %1064

1064:                                             ; preds = %1057, %1052
  %1065 = phi i32 [ %1036, %1052 ], [ %1058, %1057 ]
  %1066 = phi ptr [ %1037, %1052 ], [ %1063, %1057 ]
  %1067 = phi ptr [ %1038, %1052 ], [ %1062, %1057 ]
  br i1 %1040, label %1070, label %1068, !prof !398

1068:                                             ; preds = %1064
  %1069 = load i32, ptr %1039, align 8, !tbaa !257
  br label %1070

1070:                                             ; preds = %1068, %1064
  %1071 = phi i32 [ %1069, %1068 ], [ 0, %1064 ]
  %1072 = icmp ult i32 %1035, %1071
  br i1 %1072, label %1074, label %1073, !prof !399

1073:                                             ; preds = %1070
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %1074

1074:                                             ; preds = %1073, %1070
  %1075 = add i32 %1035, 1
  br label %1034, !llvm.loop !422

1076:                                             ; preds = %1050
  %1077 = icmp eq i32 %1036, 2
  br i1 %1077, label %1102, label %1078, !prof !423

1078:                                             ; preds = %1076
  %1079 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 8
  %1080 = load i64, ptr %1079, align 8, !tbaa !153
  %1081 = icmp eq i64 %1080, 0
  br i1 %1081, label %1082, label %1083, !prof !424

1082:                                             ; preds = %1078
  call fastcc void @set_even_probabilities(ptr noundef %1032)
  br label %1083

1083:                                             ; preds = %1082, %1078
  %1084 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  %1085 = call ptr @pointer_map_contains(ptr noundef %1084, ptr noundef %1032) #27
  %1086 = icmp eq ptr %1085, null
  br i1 %1086, label %1095, label %1087, !prof !425

1087:                                             ; preds = %1083
  %1088 = load ptr, ptr %1085, align 8, !tbaa !129
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1094, label %1090, !prof !426

1090:                                             ; preds = %1087, %1090
  %1091 = phi ptr [ %1092, %1090 ], [ %1088, %1087 ]
  %1092 = load ptr, ptr %1091, align 8, !tbaa !260
  call void @free(ptr noundef %1091)
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1094, label %1090, !prof !427, !llvm.loop !428

1094:                                             ; preds = %1090, %1087
  store ptr null, ptr %1085, align 8, !tbaa !129
  br label %1095

1095:                                             ; preds = %1083, %1094
  %1096 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %1483, label %1098, !prof !424

1098:                                             ; preds = %1095
  %1099 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 9
  %1100 = load i32, ptr %1099, align 8, !tbaa !284
  %1101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1096, ptr noundef nonnull @.str.44, i32 noundef %1036, i32 noundef %1100)
  br label %1483

1102:                                             ; preds = %1076
  %1103 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1109, label %1105, !prof !429

1105:                                             ; preds = %1102
  %1106 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 9
  %1107 = load i32, ptr %1106, align 8, !tbaa !284
  %1108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1103, ptr noundef nonnull @.str.45, i32 noundef %1107)
  br label %1109

1109:                                             ; preds = %1105, %1102
  %1110 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  %1111 = call ptr @pointer_map_contains(ptr noundef %1110, ptr noundef %1032) #27
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1187, label %1113, !prof !430

1113:                                             ; preds = %1109
  %1114 = load ptr, ptr %1111, align 8, !tbaa !129
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1187, label %1116, !prof !431

1116:                                             ; preds = %1113, %1183
  %1117 = phi ptr [ %1185, %1183 ], [ %1114, %1113 ]
  %1118 = phi i32 [ %1167, %1183 ], [ 5000, %1113 ]
  %1119 = phi i32 [ %1166, %1183 ], [ 28, %1113 ]
  %1120 = phi i32 [ %1184, %1183 ], [ 5000, %1113 ]
  %1121 = getelementptr inbounds %struct.edge_prediction, ptr %1117, i64 0, i32 2
  %1122 = load i32, ptr %1121, align 8, !tbaa !243
  %1123 = getelementptr inbounds %struct.edge_prediction, ptr %1117, i64 0, i32 3
  %1124 = load i32, ptr %1123, align 4, !tbaa !261
  %1125 = getelementptr inbounds %struct.edge_prediction, ptr %1117, i64 0, i32 1
  %1126 = load ptr, ptr %1125, align 8, !tbaa !262
  %1127 = icmp eq ptr %1126, %1037
  %1128 = sub nsw i32 10000, %1124
  %1129 = select i1 %1127, i32 %1124, i32 %1128, !prof !432
  %1130 = icmp ugt i32 %1119, %1122
  br i1 %1130, label %1131, label %1165, !prof !433

1131:                                             ; preds = %1116
  %1132 = load ptr, ptr %1111, align 8, !tbaa !129
  %1133 = icmp eq ptr %1132, null
  br i1 %1133, label %1165, label %1134, !prof !434

1134:                                             ; preds = %1131, %1161
  %1135 = phi ptr [ %1163, %1161 ], [ %1132, %1131 ]
  %1136 = phi i32 [ %1162, %1161 ], [ %1129, %1131 ]
  %1137 = icmp eq ptr %1135, %1117
  br i1 %1137, label %1161, label %1138, !prof !435

1138:                                             ; preds = %1134
  %1139 = getelementptr inbounds %struct.edge_prediction, ptr %1135, i64 0, i32 2
  %1140 = load i32, ptr %1139, align 8, !tbaa !243
  %1141 = icmp eq i32 %1140, %1122
  br i1 %1141, label %1142, label %1161, !prof !436

1142:                                             ; preds = %1138
  %1143 = icmp slt i32 %1129, 5000
  %1144 = getelementptr inbounds %struct.edge_prediction, ptr %1135, i64 0, i32 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !262
  %1146 = icmp eq ptr %1145, %1037
  %1147 = select i1 %1146, i32 %1124, i32 %1128, !prof !437
  %1148 = icmp sgt i32 %1147, 4999
  %1149 = xor i1 %1143, %1148
  br i1 %1149, label %1150, label %1159, !prof !438

1150:                                             ; preds = %1142
  %1151 = icmp sgt i32 %1129, 4999
  %1152 = icmp slt i32 %1129, 5001
  %1153 = icmp sgt i32 %1147, %1129
  %1154 = and i1 %1151, %1153
  %1155 = icmp slt i32 %1147, %1129
  %1156 = and i1 %1152, %1155
  %1157 = or i1 %1154, %1156
  %1158 = select i1 %1157, i32 %1147, i32 %1136
  br label %1159

1159:                                             ; preds = %1150, %1142
  %1160 = phi i32 [ %1136, %1142 ], [ %1158, %1150 ]
  br i1 %1149, label %1161, label %1165, !prof !438

1161:                                             ; preds = %1159, %1138, %1134
  %1162 = phi i32 [ %1160, %1159 ], [ %1136, %1138 ], [ %1136, %1134 ]
  %1163 = load ptr, ptr %1135, align 8, !tbaa !129
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1165, label %1134, !prof !439, !llvm.loop !440

1165:                                             ; preds = %1159, %1161, %1131, %1116
  %1166 = phi i32 [ %1119, %1116 ], [ %1122, %1131 ], [ %1122, %1161 ], [ %1119, %1159 ]
  %1167 = phi i32 [ %1118, %1116 ], [ %1129, %1131 ], [ %1162, %1161 ], [ %1118, %1159 ]
  %1168 = mul nsw i32 %1129, %1120
  %1169 = sub nsw i32 10000, %1120
  %1170 = sub nsw i32 10000, %1129
  %1171 = mul nsw i32 %1170, %1169
  %1172 = add nsw i32 %1171, %1168
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1183, label %1174, !prof !441

1174:                                             ; preds = %1165
  %1175 = sitofp i32 %1120 to double
  %1176 = sitofp i32 %1129 to double
  %1177 = fmul double %1175, %1176
  %1178 = fmul double %1177, 1.000000e+04
  %1179 = sitofp i32 %1172 to double
  %1180 = fdiv double %1178, %1179
  %1181 = fadd double %1180, 5.000000e-01
  %1182 = fptosi double %1181 to i32
  br label %1183

1183:                                             ; preds = %1174, %1165
  %1184 = phi i32 [ %1182, %1174 ], [ 5000, %1165 ]
  %1185 = load ptr, ptr %1117, align 8, !tbaa !129
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1187, label %1116, !prof !442, !llvm.loop !443

1187:                                             ; preds = %1183, %1113, %1109
  %1188 = phi i1 [ true, %1109 ], [ true, %1113 ], [ false, %1183 ]
  %1189 = phi i32 [ 5000, %1109 ], [ 5000, %1113 ], [ %1184, %1183 ]
  %1190 = phi i32 [ 28, %1109 ], [ 28, %1113 ], [ %1166, %1183 ]
  %1191 = phi i32 [ 5000, %1109 ], [ 5000, %1113 ], [ %1167, %1183 ]
  %1192 = zext nneg i32 %1190 to i64
  %1193 = lshr i64 536862991, %1192
  %1194 = and i64 %1193, 1
  %1195 = icmp eq i64 %1194, 0
  %1196 = load ptr, ptr @dump_file, align 8, !tbaa !129
  br i1 %1188, label %1197, label %1198, !prof !430

1197:                                             ; preds = %1187
  call fastcc void @dump_prediction(ptr noundef %1196, i32 noundef 3, i32 noundef %1189, ptr noundef %1032, i32 noundef 1)
  br label %1318

1198:                                             ; preds = %1187
  %1199 = icmp eq ptr %1196, null
  br i1 %1199, label %1258, label %1200, !prof !444

1200:                                             ; preds = %1198, %1227
  %1201 = phi i32 [ %1228, %1227 ], [ 0, %1198 ]
  %1202 = load ptr, ptr %1033, align 8, !tbaa !129
  %1203 = icmp eq ptr %1202, null
  br i1 %1203, label %1206, label %1204

1204:                                             ; preds = %1200
  %1205 = load i32, ptr %1202, align 8, !tbaa !257
  br label %1206

1206:                                             ; preds = %1204, %1200
  %1207 = phi i32 [ %1205, %1204 ], [ 0, %1200 ]
  %1208 = icmp eq i32 %1207, %1201
  br i1 %1208, label %1213, label %1209

1209:                                             ; preds = %1206
  %1210 = zext i32 %1201 to i64
  %1211 = getelementptr inbounds %struct.VEC_edge_base, ptr %1202, i64 0, i32 2, i64 %1210
  %1212 = load ptr, ptr %1211, align 8, !tbaa !129
  br label %1213

1213:                                             ; preds = %1209, %1206
  %1214 = phi ptr [ %1212, %1209 ], [ null, %1206 ]
  br i1 %1208, label %1229, label %1215

1215:                                             ; preds = %1213
  %1216 = getelementptr inbounds %struct.edge_def, ptr %1214, i64 0, i32 7
  %1217 = load i32, ptr %1216, align 8, !tbaa !252
  %1218 = and i32 %1217, 1
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1229, label %1220

1220:                                             ; preds = %1215
  br i1 %1203, label %1223, label %1221

1221:                                             ; preds = %1220
  %1222 = load i32, ptr %1202, align 8, !tbaa !257
  br label %1223

1223:                                             ; preds = %1221, %1220
  %1224 = phi i32 [ %1222, %1221 ], [ 0, %1220 ]
  %1225 = icmp ult i32 %1201, %1224
  br i1 %1225, label %1227, label %1226

1226:                                             ; preds = %1223
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %1227

1227:                                             ; preds = %1226, %1223
  %1228 = add i32 %1201, 1
  br label %1200, !llvm.loop !445

1229:                                             ; preds = %1215, %1213
  %1230 = icmp eq i64 %1194, 0
  %1231 = select i1 %1230, ptr @.str.37, ptr @.str.36
  %1232 = sitofp i32 %1189 to double
  %1233 = fmul double %1232, 1.000000e+02
  %1234 = fdiv double %1233, 1.000000e+04
  %1235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1196, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.7, ptr noundef nonnull %1231, double noundef %1234)
  %1236 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 8
  %1237 = load i64, ptr %1236, align 8, !tbaa !153
  %1238 = icmp eq i64 %1237, 0
  br i1 %1238, label %1256, label %1239

1239:                                             ; preds = %1229
  %1240 = call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr nonnull %1196)
  %1241 = load i64, ptr %1236, align 8, !tbaa !153
  %1242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1196, ptr noundef nonnull @.str.39, i64 noundef %1241)
  %1243 = icmp eq ptr %1214, null
  br i1 %1243, label %1256, label %1244

1244:                                             ; preds = %1239
  %1245 = call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr nonnull %1196)
  %1246 = getelementptr inbounds %struct.edge_def, ptr %1214, i64 0, i32 9
  %1247 = load i64, ptr %1246, align 8, !tbaa !180
  %1248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1196, ptr noundef nonnull @.str.39, i64 noundef %1247)
  %1249 = load i64, ptr %1246, align 8, !tbaa !180
  %1250 = sitofp i64 %1249 to double
  %1251 = fmul double %1250, 1.000000e+02
  %1252 = load i64, ptr %1236, align 8, !tbaa !153
  %1253 = sitofp i64 %1252 to double
  %1254 = fdiv double %1251, %1253
  %1255 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1196, ptr noundef nonnull @.str.41, double noundef %1254)
  br label %1256

1256:                                             ; preds = %1244, %1239, %1229
  %1257 = call i32 @fputc(i32 10, ptr nonnull %1196)
  br label %1258

1258:                                             ; preds = %1198, %1256
  %1259 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %1260 = icmp eq ptr %1259, null
  br i1 %1260, label %1318, label %1261, !prof !444

1261:                                             ; preds = %1258, %1288
  %1262 = phi i32 [ %1289, %1288 ], [ 0, %1258 ]
  %1263 = load ptr, ptr %1033, align 8, !tbaa !129
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1267, label %1265

1265:                                             ; preds = %1261
  %1266 = load i32, ptr %1263, align 8, !tbaa !257
  br label %1267

1267:                                             ; preds = %1265, %1261
  %1268 = phi i32 [ %1266, %1265 ], [ 0, %1261 ]
  %1269 = icmp eq i32 %1268, %1262
  br i1 %1269, label %1274, label %1270

1270:                                             ; preds = %1267
  %1271 = zext i32 %1262 to i64
  %1272 = getelementptr inbounds %struct.VEC_edge_base, ptr %1263, i64 0, i32 2, i64 %1271
  %1273 = load ptr, ptr %1272, align 8, !tbaa !129
  br label %1274

1274:                                             ; preds = %1270, %1267
  %1275 = phi ptr [ %1273, %1270 ], [ null, %1267 ]
  br i1 %1269, label %1290, label %1276

1276:                                             ; preds = %1274
  %1277 = getelementptr inbounds %struct.edge_def, ptr %1275, i64 0, i32 7
  %1278 = load i32, ptr %1277, align 8, !tbaa !252
  %1279 = and i32 %1278, 1
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1290, label %1281

1281:                                             ; preds = %1276
  br i1 %1264, label %1284, label %1282

1282:                                             ; preds = %1281
  %1283 = load i32, ptr %1263, align 8, !tbaa !257
  br label %1284

1284:                                             ; preds = %1282, %1281
  %1285 = phi i32 [ %1283, %1282 ], [ 0, %1281 ]
  %1286 = icmp ult i32 %1262, %1285
  br i1 %1286, label %1288, label %1287

1287:                                             ; preds = %1284
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %1288

1288:                                             ; preds = %1287, %1284
  %1289 = add i32 %1262, 1
  br label %1261, !llvm.loop !445

1290:                                             ; preds = %1276, %1274
  %1291 = select i1 %1195, ptr @.str.36, ptr @.str.37
  %1292 = sitofp i32 %1191 to double
  %1293 = fmul double %1292, 1.000000e+02
  %1294 = fdiv double %1293, 1.000000e+04
  %1295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1259, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, ptr noundef nonnull %1291, double noundef %1294)
  %1296 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 8
  %1297 = load i64, ptr %1296, align 8, !tbaa !153
  %1298 = icmp eq i64 %1297, 0
  br i1 %1298, label %1316, label %1299

1299:                                             ; preds = %1290
  %1300 = call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr nonnull %1259)
  %1301 = load i64, ptr %1296, align 8, !tbaa !153
  %1302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1259, ptr noundef nonnull @.str.39, i64 noundef %1301)
  %1303 = icmp eq ptr %1275, null
  br i1 %1303, label %1316, label %1304

1304:                                             ; preds = %1299
  %1305 = call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr nonnull %1259)
  %1306 = getelementptr inbounds %struct.edge_def, ptr %1275, i64 0, i32 9
  %1307 = load i64, ptr %1306, align 8, !tbaa !180
  %1308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1259, ptr noundef nonnull @.str.39, i64 noundef %1307)
  %1309 = load i64, ptr %1306, align 8, !tbaa !180
  %1310 = sitofp i64 %1309 to double
  %1311 = fmul double %1310, 1.000000e+02
  %1312 = load i64, ptr %1296, align 8, !tbaa !153
  %1313 = sitofp i64 %1312 to double
  %1314 = fdiv double %1311, %1313
  %1315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1259, ptr noundef nonnull @.str.41, double noundef %1314)
  br label %1316

1316:                                             ; preds = %1304, %1299, %1290
  %1317 = call i32 @fputc(i32 10, ptr nonnull %1259)
  br label %1318

1318:                                             ; preds = %1316, %1258, %1197
  %1319 = select i1 %1195, i32 %1191, i32 %1189, !prof !446
  %1320 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1378, label %1322, !prof !444

1322:                                             ; preds = %1318, %1349
  %1323 = phi i32 [ %1350, %1349 ], [ 0, %1318 ]
  %1324 = load ptr, ptr %1033, align 8, !tbaa !129
  %1325 = icmp eq ptr %1324, null
  br i1 %1325, label %1328, label %1326

1326:                                             ; preds = %1322
  %1327 = load i32, ptr %1324, align 8, !tbaa !257
  br label %1328

1328:                                             ; preds = %1326, %1322
  %1329 = phi i32 [ %1327, %1326 ], [ 0, %1322 ]
  %1330 = icmp eq i32 %1329, %1323
  br i1 %1330, label %1335, label %1331

1331:                                             ; preds = %1328
  %1332 = zext i32 %1323 to i64
  %1333 = getelementptr inbounds %struct.VEC_edge_base, ptr %1324, i64 0, i32 2, i64 %1332
  %1334 = load ptr, ptr %1333, align 8, !tbaa !129
  br label %1335

1335:                                             ; preds = %1331, %1328
  %1336 = phi ptr [ %1334, %1331 ], [ null, %1328 ]
  br i1 %1330, label %1351, label %1337

1337:                                             ; preds = %1335
  %1338 = getelementptr inbounds %struct.edge_def, ptr %1336, i64 0, i32 7
  %1339 = load i32, ptr %1338, align 8, !tbaa !252
  %1340 = and i32 %1339, 1
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1351, label %1342

1342:                                             ; preds = %1337
  br i1 %1325, label %1345, label %1343

1343:                                             ; preds = %1342
  %1344 = load i32, ptr %1324, align 8, !tbaa !257
  br label %1345

1345:                                             ; preds = %1343, %1342
  %1346 = phi i32 [ %1344, %1343 ], [ 0, %1342 ]
  %1347 = icmp ult i32 %1323, %1346
  br i1 %1347, label %1349, label %1348

1348:                                             ; preds = %1345
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %1349

1349:                                             ; preds = %1348, %1345
  %1350 = add i32 %1323, 1
  br label %1322, !llvm.loop !445

1351:                                             ; preds = %1337, %1335
  %1352 = sitofp i32 %1319 to double
  %1353 = fmul double %1352, 1.000000e+02
  %1354 = fdiv double %1353, 1.000000e+04
  %1355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1320, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.36, double noundef %1354)
  %1356 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 8
  %1357 = load i64, ptr %1356, align 8, !tbaa !153
  %1358 = icmp eq i64 %1357, 0
  br i1 %1358, label %1376, label %1359

1359:                                             ; preds = %1351
  %1360 = call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr nonnull %1320)
  %1361 = load i64, ptr %1356, align 8, !tbaa !153
  %1362 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1320, ptr noundef nonnull @.str.39, i64 noundef %1361)
  %1363 = icmp eq ptr %1336, null
  br i1 %1363, label %1376, label %1364

1364:                                             ; preds = %1359
  %1365 = call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr nonnull %1320)
  %1366 = getelementptr inbounds %struct.edge_def, ptr %1336, i64 0, i32 9
  %1367 = load i64, ptr %1366, align 8, !tbaa !180
  %1368 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1320, ptr noundef nonnull @.str.39, i64 noundef %1367)
  %1369 = load i64, ptr %1366, align 8, !tbaa !180
  %1370 = sitofp i64 %1369 to double
  %1371 = fmul double %1370, 1.000000e+02
  %1372 = load i64, ptr %1356, align 8, !tbaa !153
  %1373 = sitofp i64 %1372 to double
  %1374 = fdiv double %1371, %1373
  %1375 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1320, ptr noundef nonnull @.str.41, double noundef %1374)
  br label %1376

1376:                                             ; preds = %1364, %1359, %1351
  %1377 = call i32 @fputc(i32 10, ptr nonnull %1320)
  br label %1378

1378:                                             ; preds = %1318, %1376
  br i1 %1112, label %1463, label %1379, !prof !430

1379:                                             ; preds = %1378
  %1380 = load ptr, ptr %1111, align 8, !tbaa !129
  %1381 = icmp eq ptr %1380, null
  br i1 %1381, label %1463, label %1382, !prof !431

1382:                                             ; preds = %1379, %1460
  %1383 = phi ptr [ %1461, %1460 ], [ %1380, %1379 ]
  %1384 = getelementptr inbounds %struct.edge_prediction, ptr %1383, i64 0, i32 2
  %1385 = load i32, ptr %1384, align 8, !tbaa !243
  %1386 = getelementptr inbounds %struct.edge_prediction, ptr %1383, i64 0, i32 3
  %1387 = load i32, ptr %1386, align 4, !tbaa !261
  %1388 = getelementptr inbounds %struct.edge_prediction, ptr %1383, i64 0, i32 1
  %1389 = load ptr, ptr %1388, align 8, !tbaa !262
  %1390 = load ptr, ptr %1033, align 8, !tbaa !256
  %1391 = getelementptr inbounds %struct.VEC_edge_base, ptr %1390, i64 0, i32 2, i64 0
  %1392 = load ptr, ptr %1391, align 8, !tbaa !129
  %1393 = icmp eq ptr %1389, %1392
  %1394 = sub nsw i32 10000, %1387
  %1395 = select i1 %1393, i32 %1387, i32 %1394, !prof !432
  %1396 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %1397 = icmp ne i32 %1190, %1385
  %1398 = select i1 %1195, i1 %1397, i1 false
  %1399 = icmp eq ptr %1396, null
  br i1 %1399, label %1460, label %1400, !prof !444

1400:                                             ; preds = %1382, %1427
  %1401 = phi i32 [ %1428, %1427 ], [ 0, %1382 ]
  %1402 = load ptr, ptr %1033, align 8, !tbaa !129
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1406, label %1404

1404:                                             ; preds = %1400
  %1405 = load i32, ptr %1402, align 8, !tbaa !257
  br label %1406

1406:                                             ; preds = %1404, %1400
  %1407 = phi i32 [ %1405, %1404 ], [ 0, %1400 ]
  %1408 = icmp eq i32 %1407, %1401
  br i1 %1408, label %1413, label %1409

1409:                                             ; preds = %1406
  %1410 = zext i32 %1401 to i64
  %1411 = getelementptr inbounds %struct.VEC_edge_base, ptr %1402, i64 0, i32 2, i64 %1410
  %1412 = load ptr, ptr %1411, align 8, !tbaa !129
  br label %1413

1413:                                             ; preds = %1409, %1406
  %1414 = phi ptr [ %1412, %1409 ], [ null, %1406 ]
  br i1 %1408, label %1429, label %1415

1415:                                             ; preds = %1413
  %1416 = getelementptr inbounds %struct.edge_def, ptr %1414, i64 0, i32 7
  %1417 = load i32, ptr %1416, align 8, !tbaa !252
  %1418 = and i32 %1417, 1
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1429, label %1420

1420:                                             ; preds = %1415
  br i1 %1403, label %1423, label %1421

1421:                                             ; preds = %1420
  %1422 = load i32, ptr %1402, align 8, !tbaa !257
  br label %1423

1423:                                             ; preds = %1421, %1420
  %1424 = phi i32 [ %1422, %1421 ], [ 0, %1420 ]
  %1425 = icmp ult i32 %1401, %1424
  br i1 %1425, label %1427, label %1426

1426:                                             ; preds = %1423
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %1427

1427:                                             ; preds = %1426, %1423
  %1428 = add i32 %1401, 1
  br label %1400, !llvm.loop !445

1429:                                             ; preds = %1415, %1413
  %1430 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 8
  %1431 = zext i32 %1385 to i64
  %1432 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %1431
  %1433 = load ptr, ptr %1432, align 16, !tbaa !447
  %1434 = select i1 %1398, ptr @.str.37, ptr @.str.36
  %1435 = sitofp i32 %1395 to double
  %1436 = fmul double %1435, 1.000000e+02
  %1437 = fdiv double %1436, 1.000000e+04
  %1438 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1396, ptr noundef nonnull @.str.35, ptr noundef %1433, ptr noundef nonnull %1434, double noundef %1437)
  %1439 = load i64, ptr %1430, align 8, !tbaa !153
  %1440 = icmp eq i64 %1439, 0
  br i1 %1440, label %1458, label %1441

1441:                                             ; preds = %1429
  %1442 = call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr nonnull %1396)
  %1443 = load i64, ptr %1430, align 8, !tbaa !153
  %1444 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1396, ptr noundef nonnull @.str.39, i64 noundef %1443)
  %1445 = icmp eq ptr %1414, null
  br i1 %1445, label %1458, label %1446

1446:                                             ; preds = %1441
  %1447 = call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr nonnull %1396)
  %1448 = getelementptr inbounds %struct.edge_def, ptr %1414, i64 0, i32 9
  %1449 = load i64, ptr %1448, align 8, !tbaa !180
  %1450 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1396, ptr noundef nonnull @.str.39, i64 noundef %1449)
  %1451 = load i64, ptr %1448, align 8, !tbaa !180
  %1452 = sitofp i64 %1451 to double
  %1453 = fmul double %1452, 1.000000e+02
  %1454 = load i64, ptr %1430, align 8, !tbaa !153
  %1455 = sitofp i64 %1454 to double
  %1456 = fdiv double %1453, %1455
  %1457 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1396, ptr noundef nonnull @.str.41, double noundef %1456)
  br label %1458

1458:                                             ; preds = %1446, %1441, %1429
  %1459 = call i32 @fputc(i32 10, ptr nonnull %1396)
  br label %1460

1460:                                             ; preds = %1382, %1458
  %1461 = load ptr, ptr %1383, align 8, !tbaa !129
  %1462 = icmp eq ptr %1461, null
  br i1 %1462, label %1463, label %1382, !prof !442, !llvm.loop !448

1463:                                             ; preds = %1460, %1379, %1378
  %1464 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  %1465 = call ptr @pointer_map_contains(ptr noundef %1464, ptr noundef %1032) #27
  %1466 = icmp eq ptr %1465, null
  br i1 %1466, label %1475, label %1467, !prof !425

1467:                                             ; preds = %1463
  %1468 = load ptr, ptr %1465, align 8, !tbaa !129
  %1469 = icmp eq ptr %1468, null
  br i1 %1469, label %1474, label %1470, !prof !426

1470:                                             ; preds = %1467, %1470
  %1471 = phi ptr [ %1472, %1470 ], [ %1468, %1467 ]
  %1472 = load ptr, ptr %1471, align 8, !tbaa !260
  call void @free(ptr noundef %1471)
  %1473 = icmp eq ptr %1472, null
  br i1 %1473, label %1474, label %1470, !prof !427, !llvm.loop !428

1474:                                             ; preds = %1470, %1467
  store ptr null, ptr %1465, align 8, !tbaa !129
  br label %1475

1475:                                             ; preds = %1463, %1474
  %1476 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 8
  %1477 = load i64, ptr %1476, align 8, !tbaa !153
  %1478 = icmp eq i64 %1477, 0
  br i1 %1478, label %1479, label %1483, !prof !429

1479:                                             ; preds = %1475
  %1480 = getelementptr inbounds %struct.edge_def, ptr %1037, i64 0, i32 8
  store i32 %1319, ptr %1480, align 4, !tbaa !183
  %1481 = sub nsw i32 10000, %1319
  %1482 = getelementptr inbounds %struct.edge_def, ptr %1038, i64 0, i32 8
  store i32 %1481, ptr %1482, align 4, !tbaa !183
  br label %1483

1483:                                             ; preds = %1095, %1098, %1475, %1479
  %1484 = getelementptr inbounds %struct.basic_block_def, ptr %1032, i64 0, i32 6
  %1485 = load ptr, ptr %1484, align 8, !tbaa !321
  %1486 = load ptr, ptr @cfun, align 8, !tbaa !129
  %1487 = getelementptr inbounds %struct.function, ptr %1486, i64 0, i32 1
  %1488 = load ptr, ptr %1487, align 8, !tbaa !148
  %1489 = getelementptr inbounds %struct.control_flow_graph, ptr %1488, i64 0, i32 1
  %1490 = load ptr, ptr %1489, align 8, !tbaa !290
  %1491 = icmp eq ptr %1485, %1490
  br i1 %1491, label %1492, label %1031, !prof !323, !llvm.loop !449

1492:                                             ; preds = %1483, %1020
  %1493 = load ptr, ptr @bb_predictions, align 8, !tbaa !129
  call void @pointer_map_destroy(ptr noundef %1493) #27
  store ptr null, ptr @bb_predictions, align 8, !tbaa !129
  call void @estimate_bb_frequencies()
  call void @free_dominance_info(i32 noundef 2) #27
  call void @remove_fake_exit_edges() #27
  ret void
}

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

declare void @connect_infinite_loops_to_exit() local_unnamed_addr #3

declare void @create_preheaders(i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

declare void @record_loop_exits() local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @estimate_bb_frequencies() local_unnamed_addr #10 !prof !450 {
  %1 = alloca %struct.sreal, align 8
  %2 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #27
  %3 = load ptr, ptr @cfun, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !150
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %43, !prof !451

9:                                                ; preds = %0
  %10 = load ptr, ptr %5, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %19, %12 ], [ %10, %9 ]
  %14 = phi i64 [ %17, %12 ], [ 0, %9 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !153
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 %14)
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !452

21:                                               ; preds = %12, %9
  %22 = phi i64 [ 0, %9 ], [ %17, %12 ]
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 1)
  %24 = load ptr, ptr %5, align 8, !tbaa !129
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = lshr i64 %23, 1
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %24, %26 ], [ %38, %28 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !153
  %32 = mul nsw i64 %31, 10000
  %33 = add nsw i64 %32, %27
  %34 = sdiv i64 %33, %23
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 11
  store i32 %35, ptr %36, align 8, !tbaa !160
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !129
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28, !llvm.loop !453

40:                                               ; preds = %28, %21
  %41 = and i64 %22, 4294967295
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %200

43:                                               ; preds = %40, %0
  %44 = load i1, ptr @estimate_bb_frequencies.real_values_initialized, align 4
  br i1 %44, label %53, label %45, !prof !454

45:                                               ; preds = %43
  store i1 true, ptr @estimate_bb_frequencies.real_values_initialized, align 4
  %46 = tail call ptr @sreal_init(ptr noundef nonnull @real_zero, i64 noundef 0, i32 noundef 0) #27
  %47 = tail call ptr @sreal_init(ptr noundef nonnull @real_one, i64 noundef 1, i32 noundef 0) #27
  %48 = tail call ptr @sreal_init(ptr noundef nonnull @real_br_prob_base, i64 noundef 10000, i32 noundef 0) #27
  %49 = tail call ptr @sreal_init(ptr noundef nonnull @real_bb_freq_max, i64 noundef 10000, i32 noundef 0) #27
  %50 = tail call ptr @sreal_init(ptr noundef nonnull @real_one_half, i64 noundef 1, i32 noundef -1) #27
  %51 = tail call ptr @sreal_div(ptr noundef nonnull @real_inv_br_prob_base, ptr noundef nonnull @real_one, ptr noundef nonnull @real_br_prob_base) #27
  %52 = tail call ptr @sreal_sub(ptr noundef nonnull @real_almost_one, ptr noundef nonnull @real_one, ptr noundef nonnull @real_inv_br_prob_base) #27
  br label %53

53:                                               ; preds = %45, %43
  %54 = tail call zeroext i8 @mark_dfs_back_edges() #27
  %55 = load ptr, ptr @cfun, align 8, !tbaa !129
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !148
  %58 = load ptr, ptr %57, align 8, !tbaa !255
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !256
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !451

62:                                               ; preds = %53
  %63 = load i32, ptr %60, align 8, !tbaa !257
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %66, label %65, !prof !455

65:                                               ; preds = %53, %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 645, ptr noundef nonnull @.str.3) #27
  br label %66

66:                                               ; preds = %62, %65
  %67 = load ptr, ptr %59, align 8, !tbaa !256
  %68 = getelementptr inbounds %struct.VEC_edge_base, ptr %67, i64 0, i32 2, i64 0
  %69 = load ptr, ptr %68, align 8, !tbaa !129
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 8
  store i32 10000, ptr %70, align 4, !tbaa !183
  tail call void @alloc_aux_for_blocks(i32 noundef 32) #27
  tail call void @alloc_aux_for_edges(i32 noundef 24) #27
  %71 = load ptr, ptr @cfun, align 8, !tbaa !129
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !148
  %74 = load ptr, ptr %73, align 8, !tbaa !129
  %75 = icmp eq ptr %74, null
  br i1 %75, label %117, label %76, !prof !456

76:                                               ; preds = %66, %113
  %77 = phi ptr [ %115, %113 ], [ %74, %66 ]
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  br label %79

79:                                               ; preds = %111, %76
  %80 = phi i32 [ 0, %76 ], [ %112, %111 ]
  %81 = load ptr, ptr %78, align 8, !tbaa !129
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !457

83:                                               ; preds = %79
  %84 = load i32, ptr %81, align 8, !tbaa !257
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i32 [ %84, %83 ], [ 0, %79 ]
  %87 = icmp eq i32 %86, %80
  br i1 %87, label %92, label %88, !prof !458

88:                                               ; preds = %85
  %89 = zext i32 %80 to i64
  %90 = getelementptr inbounds %struct.VEC_edge_base, ptr %81, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !129
  br label %92

92:                                               ; preds = %85, %88
  %93 = phi ptr [ %91, %88 ], [ null, %85 ]
  br i1 %87, label %113, label %94, !prof !458

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !459
  %97 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 8
  %98 = load i32, ptr %97, align 4, !tbaa !183
  %99 = sext i32 %98 to i64
  %100 = tail call ptr @sreal_init(ptr noundef %96, i64 noundef %99, i32 noundef 0) #27
  %101 = load ptr, ptr %95, align 8, !tbaa !459
  %102 = tail call ptr @sreal_mul(ptr noundef %101, ptr noundef %101, ptr noundef nonnull @real_inv_br_prob_base) #27
  %103 = load ptr, ptr %78, align 8, !tbaa !129
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !460

105:                                              ; preds = %94
  %106 = load i32, ptr %103, align 8, !tbaa !257
  br label %107

107:                                              ; preds = %105, %94
  %108 = phi i32 [ %106, %105 ], [ 0, %94 ]
  %109 = icmp ult i32 %80, %108
  br i1 %109, label %111, label %110, !prof !461

110:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %111

111:                                              ; preds = %107, %110
  %112 = add i32 %80, 1
  br label %79, !llvm.loop !462

113:                                              ; preds = %92
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !129
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %76, !prof !463, !llvm.loop !464

117:                                              ; preds = %113, %66
  %118 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  %119 = load ptr, ptr @cfun, align 8, !tbaa !129
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !345
  %122 = icmp eq ptr %121, null
  br i1 %122, label %135, label %123, !prof !451

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.loops, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !346
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127, !prof !451

127:                                              ; preds = %123
  %128 = load i32, ptr %125, align 8, !tbaa !219
  %129 = icmp ugt i32 %128, 1
  br i1 %129, label %130, label %135, !prof !451

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.loops, ptr %121, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !348
  %133 = getelementptr inbounds %struct.loop, ptr %132, i64 0, i32 8
  %134 = load ptr, ptr %133, align 8, !tbaa !216
  tail call fastcc void @estimate_loops_at_level(ptr noundef %134)
  br label %135

135:                                              ; preds = %117, %123, %130, %127
  %136 = load ptr, ptr @cfun, align 8, !tbaa !129
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !148
  %139 = load ptr, ptr %138, align 8, !tbaa !129
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141, !prof !456

141:                                              ; preds = %135, %141
  %142 = phi ptr [ %147, %141 ], [ %139, %135 ]
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 9
  %144 = load i32, ptr %143, align 8, !tbaa !284
  %145 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %118, i32 noundef %144) #27
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !129
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %141, !prof !463, !llvm.loop !465

149:                                              ; preds = %141, %135
  %150 = load ptr, ptr @cfun, align 8, !tbaa !129
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !148
  %153 = load ptr, ptr %152, align 8, !tbaa !255
  tail call fastcc void @propagate_freq(ptr noundef %153, ptr noundef %118)
  tail call void @bitmap_obstack_free(ptr noundef %118) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %154 = load ptr, ptr @cfun, align 8, !tbaa !129
  %155 = getelementptr inbounds %struct.function, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !148
  %157 = load ptr, ptr %156, align 8, !tbaa !255
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !321
  %160 = getelementptr inbounds %struct.control_flow_graph, ptr %156, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !290
  %162 = icmp eq ptr %159, %161
  br i1 %162, label %180, label %163, !prof !456

163:                                              ; preds = %149, %171
  %164 = phi ptr [ %173, %171 ], [ %159, %149 ]
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !466
  %167 = call i32 @sreal_compare(ptr noundef nonnull %1, ptr noundef %166) #27
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171, !prof !467

169:                                              ; preds = %163
  %170 = load ptr, ptr %165, align 8, !tbaa !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %170, i64 16, i1 false)
  br label %171

171:                                              ; preds = %163, %169
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 6
  %173 = load ptr, ptr %172, align 8, !tbaa !321
  %174 = load ptr, ptr @cfun, align 8, !tbaa !129
  %175 = getelementptr inbounds %struct.function, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !148
  %177 = getelementptr inbounds %struct.control_flow_graph, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !290
  %179 = icmp eq ptr %173, %178
  br i1 %179, label %180, label %163, !prof !468, !llvm.loop !469

180:                                              ; preds = %171, %149
  %181 = call ptr @sreal_div(ptr noundef nonnull %1, ptr noundef nonnull @real_bb_freq_max, ptr noundef nonnull %1) #27
  %182 = load ptr, ptr @cfun, align 8, !tbaa !129
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !148
  %185 = load ptr, ptr %184, align 8, !tbaa !129
  %186 = icmp eq ptr %185, null
  br i1 %186, label %199, label %187, !prof !456

187:                                              ; preds = %180, %187
  %188 = phi ptr [ %197, %187 ], [ %185, %180 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #27
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !466
  %191 = call ptr @sreal_mul(ptr noundef nonnull %2, ptr noundef %190, ptr noundef nonnull %1) #27
  %192 = call ptr @sreal_add(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @real_one_half) #27
  %193 = call i64 @sreal_to_int(ptr noundef nonnull %2) #27
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 11
  store i32 %194, ptr %195, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #27
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !129
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %187, !prof !463, !llvm.loop !470

199:                                              ; preds = %187, %180
  call void @free_aux_for_blocks() #27
  call void @free_aux_for_edges() #27
  br label %200

200:                                              ; preds = %199, %40
  call void @compute_function_frequency()
  %201 = load i32, ptr @flag_reorder_functions, align 4, !tbaa !144
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %238, label %203, !prof !451

203:                                              ; preds = %200
  %204 = load ptr, ptr @current_function_decl, align 8, !tbaa !129
  %205 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %204, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !140
  %207 = icmp eq ptr %206, null
  %208 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %209 = icmp ne i8 %208, 0
  %210 = select i1 %207, i1 %209, i1 false, !prof !455
  br i1 %210, label %211, label %238, !prof !455

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %204, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !140
  %214 = icmp ne ptr %213, null
  %215 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %214, i1 true, i1 %216, !prof !451
  br i1 %217, label %238, label %218, !prof !451

218:                                              ; preds = %211
  %219 = load ptr, ptr @cfun, align 8, !tbaa !129
  %220 = getelementptr inbounds %struct.function, ptr %219, i64 0, i32 20
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 196608
  %223 = icmp eq i32 %222, 131072
  br i1 %223, label %224, label %228, !prof !451

224:                                              ; preds = %218
  %225 = call ptr @build_string(i32 noundef 9, ptr noundef nonnull @.str.48) #27
  %226 = load ptr, ptr @current_function_decl, align 8, !tbaa !129
  %227 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %226, i64 0, i32 2
  store ptr %225, ptr %227, align 8, !tbaa !140
  br label %228

228:                                              ; preds = %224, %218
  %229 = load ptr, ptr @cfun, align 8, !tbaa !129
  %230 = getelementptr inbounds %struct.function, ptr %229, i64 0, i32 20
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, 196608
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %238, !prof !451

234:                                              ; preds = %228
  %235 = call ptr @build_string(i32 noundef 14, ptr noundef nonnull @.str.49) #27
  %236 = load ptr, ptr @current_function_decl, align 8, !tbaa !129
  %237 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %236, i64 0, i32 2
  store ptr %235, ptr %237, align 8, !tbaa !140
  br label %238

238:                                              ; preds = %234, %228, %211, %203, %200
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #27
  ret void
}

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @counts_to_freqs() local_unnamed_addr #20 !prof !128 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !129
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !153
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %8)
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !452

15:                                               ; preds = %6, %0
  %16 = phi i64 [ 0, %0 ], [ %11, %6 ]
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 1)
  %18 = load ptr, ptr %3, align 8, !tbaa !129
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = lshr i64 %17, 1
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %18, %20 ], [ %32, %22 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !153
  %26 = mul nsw i64 %25, 10000
  %27 = add nsw i64 %26, %21
  %28 = sdiv i64 %27, %17
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  store i32 %29, ptr %30, align 8, !tbaa !160
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %22, !llvm.loop !453

34:                                               ; preds = %22, %15
  %35 = trunc i64 %16 to i32
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @expensive_function_p(i32 noundef %0) local_unnamed_addr #10 !prof !471 {
  %2 = icmp slt i32 %0, 10001
  br i1 %2, label %4, label %3, !prof !472

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2047, ptr noundef nonnull @.str.3) #27
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  %8 = load ptr, ptr %7, align 8, !tbaa !255
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !160
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %58, label %12, !prof !473

12:                                               ; preds = %4
  %13 = mul nsw i32 %10, %0
  br label %14

14:                                               ; preds = %55, %12
  %15 = phi i32 [ 0, %12 ], [ %57, %55 ]
  %16 = phi ptr [ %8, %12 ], [ %18, %55 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !321
  %19 = load ptr, ptr @cfun, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !148
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !290
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %58, label %25, !prof !474

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !140
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %29 = load ptr, ptr %27, align 8, !tbaa !140
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !237
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  %34 = icmp eq ptr %29, %33
  br i1 %34, label %55, label %35, !prof !475

35:                                               ; preds = %25, %45
  %36 = phi i1 [ %54, %45 ], [ %34, %25 ]
  %37 = phi ptr [ %48, %45 ], [ %29, %25 ]
  %38 = phi i32 [ %46, %45 ], [ %15, %25 ]
  %39 = tail call i32 @active_insn_p(ptr noundef %37) #27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !476

41:                                               ; preds = %35
  %42 = load i32, ptr %28, align 8, !tbaa !160
  %43 = add i32 %42, %38
  %44 = icmp ugt i32 %43, %13
  br i1 %44, label %55, label %45, !prof !477

45:                                               ; preds = %35, %41
  %46 = phi i32 [ %43, %41 ], [ %38, %35 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !140
  %49 = load ptr, ptr %26, align 8, !tbaa !140
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !237
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !140
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %55, label %35, !prof !478, !llvm.loop !479

55:                                               ; preds = %41, %45, %25
  %56 = phi i1 [ %34, %25 ], [ %36, %41 ], [ %54, %45 ]
  %57 = phi i32 [ %15, %25 ], [ %43, %41 ], [ %46, %45 ]
  br i1 %56, label %14, label %58, !prof !480, !llvm.loop !481

58:                                               ; preds = %55, %14, %4
  %59 = phi i8 [ 1, %4 ], [ 0, %14 ], [ 1, %55 ]
  ret i8 %59
}

declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @sreal_init(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @sreal_div(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sreal_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #3

declare void @alloc_aux_for_edges(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

declare ptr @sreal_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @sreal_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sreal_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @sreal_to_int(ptr noundef) local_unnamed_addr #3

declare void @free_aux_for_blocks() local_unnamed_addr #3

declare void @free_aux_for_edges() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @compute_function_frequency() local_unnamed_addr #10 !prof !450 {
  %1 = load ptr, ptr @profile_info, align 8, !tbaa !129
  %2 = icmp ne ptr %1, null
  %3 = load i32, ptr @flag_branch_probabilities, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !451
  br i1 %5, label %29, label %6, !prof !451

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %9) #27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !455

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !129
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -196609
  store i32 %16, ptr %14, align 8
  br label %73

17:                                               ; preds = %6
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.1, ptr noundef %20) #27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %73, label %23, !prof !455

23:                                               ; preds = %17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !129
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -196609
  %28 = or disjoint i32 %27, 131072
  store i32 %28, ptr %25, align 8
  br label %73

29:                                               ; preds = %0
  %30 = load ptr, ptr @cfun, align 8, !tbaa !129
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -196609
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !148
  %36 = load ptr, ptr %35, align 8, !tbaa !255
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !321
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !290
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %73, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %1, i64 0, i32 1
  br label %44

44:                                               ; preds = %42, %66
  %45 = phi ptr [ %38, %42 ], [ %68, %66 ]
  %46 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %45), !range !215
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %31, align 8
  %50 = and i32 %49, -196609
  %51 = or disjoint i32 %50, 131072
  store i32 %51, ptr %31, align 8
  br label %73

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !153
  %55 = load i32, ptr %43, align 4, !tbaa !155
  %56 = lshr i32 %55, 1
  %57 = zext nneg i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = zext i32 %55 to i64
  %60 = sdiv i64 %58, %59
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i32, ptr %31, align 8
  %64 = and i32 %63, -196609
  %65 = or disjoint i32 %64, 65536
  store i32 %65, ptr %31, align 8
  br label %66

66:                                               ; preds = %52, %62
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !321
  %69 = load ptr, ptr %34, align 8, !tbaa !148
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !290
  %72 = icmp eq ptr %68, %71
  br i1 %72, label %73, label %44, !llvm.loop !482

73:                                               ; preds = %66, %29, %12, %23, %17, %48
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @build_predict_expr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #18 !prof !128 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !129
  %4 = zext i32 %0 to i64
  %5 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %4) #27
  %6 = tail call ptr @build1_stat(i32 noundef 185, ptr noundef %3, ptr noundef %5) #27
  %7 = load i64, ptr %6, align 8
  %8 = shl i32 %1, 18
  %9 = and i32 %8, 262144
  %10 = zext nneg i32 %9 to i64
  %11 = and i64 %7, -262145
  %12 = or disjoint i64 %11, %10
  store i64 %12, ptr %6, align 8
  ret ptr %6
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @predictor_name(i32 noundef %0) local_unnamed_addr #22 !prof !128 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 16, !tbaa !447
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_estimate_probability() #23 !prof !289 !PGOFuncName !483 {
  %1 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !144
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_estimate_probability_driver() #10 !prof !289 !PGOFuncName !484 {
  tail call void @loop_optimizer_init(i32 noundef 0) #27
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !292

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !144
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @flow_loops_dump(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #27
  br label %8

8:                                                ; preds = %7, %3, %0
  %9 = tail call zeroext i8 @mark_irreducible_loops() #27
  %10 = load ptr, ptr @cfun, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !345
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14, !prof !291

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.loops, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !346
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !291

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8, !tbaa !219
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %22, !prof !291

21:                                               ; preds = %18
  tail call void @scev_initialize() #27
  tail call void @tree_estimate_probability()
  tail call void @scev_finalize() #27
  br label %23

22:                                               ; preds = %8, %14, %18
  tail call void @tree_estimate_probability()
  br label %23

23:                                               ; preds = %22, %21
  tail call void @loop_optimizer_finalize() #27
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !129
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !292

26:                                               ; preds = %23
  %27 = load i32, ptr @dump_flags, align 4, !tbaa !144
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @gimple_dump_cfg(ptr noundef nonnull %24, i32 noundef %27) #27
  br label %31

31:                                               ; preds = %30, %26, %23
  %32 = load ptr, ptr @cfun, align 8, !tbaa !129
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !148
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !150
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !292

38:                                               ; preds = %31
  store i32 1, ptr %35, align 8, !tbaa !150
  br label %39

39:                                               ; preds = %38, %31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @strip_predict_hints() #10 !prof !471 !PGOFuncName !485 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = load ptr, ptr %4, align 8, !tbaa !255
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !321
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %132, label %11, !prof !486

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 16
  br label %14

14:                                               ; preds = %11, %123
  %15 = phi ptr [ %7, %11 ], [ %125, %123 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #27
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !325, !noalias !487
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26, !prof !490

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !140, !noalias !487
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !491

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !331, !noalias !487
  br label %26

26:                                               ; preds = %24, %20, %14
  %27 = phi ptr [ %25, %24 ], [ null, %20 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !491

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !333, !noalias !487
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  store ptr %32, ptr %1, align 8, !tbaa.struct !492
  store ptr %27, ptr %12, align 8, !tbaa.struct !493
  store ptr %15, ptr %13, align 8, !tbaa.struct !494
  %33 = icmp eq ptr %32, null
  br i1 %33, label %123, label %34, !prof !495

34:                                               ; preds = %31, %120
  %35 = phi ptr [ %121, %120 ], [ %32, %31 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !336
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 255
  %39 = trunc i32 %37 to i8
  switch i8 %39, label %116 [
    i8 33, label %40
    i8 8, label %41
  ], !prof !496

40:                                               ; preds = %34
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #27
  br label %120, !llvm.loop !497

41:                                               ; preds = %34
  %42 = add nsw i32 %38, -10
  %43 = icmp ult i32 %42, -9
  br i1 %43, label %57, label %44, !prof !498

44:                                               ; preds = %41
  %45 = zext nneg i32 %38 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !144
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !295
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53, !prof !498

52:                                               ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %53

53:                                               ; preds = %52, %44
  %54 = getelementptr inbounds i8, ptr %36, i64 %50
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !129
  br label %57

57:                                               ; preds = %53, %41
  %58 = phi ptr [ %56, %53 ], [ null, %41 ]
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 121
  br i1 %61, label %62, label %65, !prof !499

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !140
  br label %65

65:                                               ; preds = %57, %62
  %66 = phi ptr [ %64, %62 ], [ null, %57 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %116, label %68, !prof !498

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_function_decl, ptr %66, i64 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 8191
  %72 = icmp eq i32 %71, 6590
  br i1 %72, label %73, label %116, !prof !498

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %36, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !140
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %116

77:                                               ; preds = %73
  %78 = load i32, ptr %36, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -10
  %81 = icmp ult i32 %80, -9
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !144
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !295
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %91

91:                                               ; preds = %90, %82
  %92 = getelementptr inbounds i8, ptr %36, i64 %88
  %93 = load ptr, ptr %92, align 8, !tbaa !129
  br label %94

94:                                               ; preds = %77, %91
  %95 = phi ptr [ %93, %91 ], [ null, %77 ]
  %96 = load i32, ptr %36, align 8
  %97 = and i32 %96, 255
  %98 = add nsw i32 %97, -10
  %99 = icmp ult i32 %98, -9
  br i1 %99, label %113, label %100

100:                                              ; preds = %94
  %101 = zext nneg i32 %97 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !144
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !295
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %109

109:                                              ; preds = %108, %100
  %110 = getelementptr inbounds i8, ptr %36, i64 %106
  %111 = getelementptr ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8, !tbaa !129
  br label %113

113:                                              ; preds = %94, %109
  %114 = phi ptr [ %112, %109 ], [ null, %94 ]
  %115 = call ptr @gimple_build_assign_stat(ptr noundef %95, ptr noundef %114) #27
  call void @gsi_replace(ptr noundef nonnull %1, ptr noundef %115, i8 noundef zeroext 1) #27
  br label %116

116:                                              ; preds = %34, %65, %68, %73, %113
  %117 = load ptr, ptr %1, align 8, !tbaa !500
  %118 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !342
  store ptr %119, ptr %1, align 8, !tbaa !500
  br label %120

120:                                              ; preds = %116, %40
  %121 = load ptr, ptr %1, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %34, !prof !502

123:                                              ; preds = %120, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #27
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !321
  %126 = load ptr, ptr @cfun, align 8, !tbaa !129
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !148
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !290
  %131 = icmp eq ptr %125, %130
  br i1 %131, label %132, label %14, !prof !503, !llvm.loop !504

132:                                              ; preds = %123, %0
  ret i32 0
}

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @set_even_probabilities(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !505 !PGOFuncName !506 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %36, %1
  %4 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %5 = phi i32 [ 0, %1 ], [ %28, %36 ]
  %6 = load ptr, ptr %2, align 8, !tbaa !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !507

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !257
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %17, label %13, !prof !508

13:                                               ; preds = %10
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !129
  br label %17

17:                                               ; preds = %10, %13
  %18 = phi ptr [ %16, %13 ], [ null, %10 ]
  br i1 %12, label %19, label %22, !prof !508

19:                                               ; preds = %17
  %20 = lshr i32 %5, 1
  %21 = add nuw nsw i32 %20, 10000
  br label %38

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !252
  %25 = and i32 %24, 24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %5, %27
  %29 = icmp eq ptr %6, null
  br i1 %29, label %32, label %30, !prof !509

30:                                               ; preds = %22
  %31 = load i32, ptr %6, align 8, !tbaa !257
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %31, %30 ], [ 0, %22 ]
  %34 = icmp ult i32 %4, %33
  br i1 %34, label %36, label %35, !prof !510

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %36

36:                                               ; preds = %32, %35
  %37 = add i32 %4, 1
  br label %3, !llvm.loop !511

38:                                               ; preds = %19, %70
  %39 = phi i32 [ %71, %70 ], [ 0, %19 ]
  %40 = load ptr, ptr %2, align 8, !tbaa !129
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !507

42:                                               ; preds = %38
  %43 = load i32, ptr %40, align 8, !tbaa !257
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %43, %42 ], [ 0, %38 ]
  %46 = icmp eq i32 %45, %39
  br i1 %46, label %51, label %47, !prof !508

47:                                               ; preds = %44
  %48 = zext i32 %39 to i64
  %49 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !129
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi ptr [ %50, %47 ], [ null, %44 ]
  br i1 %46, label %72, label %53, !prof !508

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !252
  %56 = and i32 %55, 24
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60, !prof !512

58:                                               ; preds = %53
  %59 = udiv i32 %21, %5
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi i32 [ %59, %58 ], [ 0, %53 ]
  %62 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 8
  store i32 %61, ptr %62, align 4, !tbaa !183
  %63 = icmp eq ptr %40, null
  br i1 %63, label %66, label %64, !prof !509

64:                                               ; preds = %60
  %65 = load i32, ptr %40, align 8, !tbaa !257
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %65, %64 ], [ 0, %60 ]
  %68 = icmp ult i32 %39, %67
  br i1 %68, label %70, label %69, !prof !510

69:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %70

70:                                               ; preds = %66, %69
  %71 = add i32 %39, 1
  br label %38, !llvm.loop !513

72:                                               ; preds = %51
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dump_prediction(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #17 !prof !514 !PGOFuncName !515 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %71, label %7, !prof !444

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %37, %7
  %10 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !129
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !257
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds %struct.VEC_edge_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ]
  br i1 %17, label %39, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !252
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = icmp eq ptr %11, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %11, align 8, !tbaa !257
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ 0, %29 ]
  %35 = icmp ult i32 %10, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %37

37:                                               ; preds = %33, %36
  %38 = add i32 %10, 1
  br label %9, !llvm.loop !445

39:                                               ; preds = %24, %22
  %40 = zext i32 %1 to i64
  %41 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 16, !tbaa !447
  %43 = icmp eq i32 %4, 0
  %44 = select i1 %43, ptr @.str.37, ptr @.str.36
  %45 = sitofp i32 %2 to double
  %46 = fmul double %45, 1.000000e+02
  %47 = fdiv double %46, 1.000000e+04
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef %42, ptr noundef nonnull %44, double noundef %47)
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !153
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %39
  %53 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr nonnull %0)
  %54 = load i64, ptr %49, align 8, !tbaa !153
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i64 noundef %54)
  %56 = icmp eq ptr %23, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr nonnull %0)
  %59 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 9
  %60 = load i64, ptr %59, align 8, !tbaa !180
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i64 noundef %60)
  %62 = load i64, ptr %59, align 8, !tbaa !180
  %63 = sitofp i64 %62 to double
  %64 = fmul double %63, 1.000000e+02
  %65 = load i64, ptr %49, align 8, !tbaa !153
  %66 = sitofp i64 %65 to double
  %67 = fdiv double %64, %66
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, double noundef %67)
  br label %69

69:                                               ; preds = %52, %57, %39
  %70 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  br label %71

71:                                               ; preds = %5, %69
  ret void
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @predict_paths_for_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !516 !PGOFuncName !517 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, %0
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [29 x %struct.predictor_info], ptr @predictor_info, i64 0, i64 %7, i32 1
  %9 = icmp eq i32 %3, 1
  br label %10

10:                                               ; preds = %53, %4
  %11 = phi i32 [ 0, %4 ], [ %54, %53 ]
  br i1 %5, label %12, label %13, !prof !518

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.3) #27
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr %0, align 8, !tbaa !129
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !518

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !257
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %25, label %21, !prof !519

21:                                               ; preds = %18
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  br label %25

25:                                               ; preds = %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ]
  br i1 %20, label %55, label %27, !prof !519

27:                                               ; preds = %25
  %28 = load ptr, ptr %26, align 8, !tbaa !182
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !284
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %44, !prof !520

32:                                               ; preds = %27
  %33 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %28, ptr noundef %1) #27
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44, !prof !521

35:                                               ; preds = %32
  br i1 %6, label %40, label %36, !prof !522

36:                                               ; preds = %35
  %37 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %0, ptr noundef %1) #27
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40, !prof !523

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1776, ptr noundef nonnull @.str.3) #27
  br label %40

40:                                               ; preds = %35, %36, %39
  %41 = load i32, ptr %8, align 8, !tbaa !247
  %42 = sub nsw i32 10000, %41
  %43 = select i1 %9, i32 %41, i32 %42, !prof !524
  tail call void @predict_edge(ptr noundef nonnull %26, i32 noundef %2, i32 noundef %43) #27
  br label %44

44:                                               ; preds = %40, %32, %27
  %45 = load ptr, ptr %0, align 8, !tbaa !129
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !525

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8, !tbaa !257
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %48, %47 ], [ 0, %44 ]
  %51 = icmp ult i32 %11, %50
  br i1 %51, label %53, label %52, !prof !526

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %53

53:                                               ; preds = %49, %52
  %54 = add i32 %11, 1
  br label %10, !llvm.loop !527

55:                                               ; preds = %25
  %56 = tail call ptr @first_dom_son(i32 noundef 2, ptr noundef nonnull %0) #27
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !528

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %60, %58 ], [ %56, %55 ]
  tail call fastcc void @predict_paths_for_bb(ptr noundef nonnull %59, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %60 = tail call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %59) #27
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %58, !prof !529, !llvm.loop !530

62:                                               ; preds = %58, %55
  ret void
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @loop_niter_by_eval(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @estimated_loop_iterations_int(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @predicted_by_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @expr_expected_value_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #17 !prof !531 !PGOFuncName !532 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  br label %15

15:                                               ; preds = %193, %5
  %16 = phi ptr [ %0, %5 ], [ %119, %193 ]
  %17 = phi ptr [ %1, %5 ], [ %138, %193 ]
  %18 = phi i32 [ %2, %5 ], [ %171, %193 ]
  %19 = phi ptr [ %3, %5 ], [ %194, %193 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !140
  switch i8 %22, label %311 [
    i8 3, label %23
    i8 1, label %268
    i8 2, label %302
  ], !prof !533

23:                                               ; preds = %15
  %24 = load i64, ptr %17, align 8
  %25 = and i64 %24, 131072
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %311, !prof !534

27:                                               ; preds = %23
  %28 = icmp eq i32 %18, 141
  br i1 %28, label %29, label %311, !prof !535

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !140
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !140
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %33) #27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %311, !prof !536

36:                                               ; preds = %29
  %37 = load i32, ptr %32, align 8, !tbaa !140
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %37) #27
  %39 = load i32, ptr %31, align 8
  %40 = and i32 %39, 255
  %41 = trunc i32 %39 to i8
  switch i8 %41, label %267 [
    i8 16, label %42
    i8 6, label %89
    i8 8, label %195
  ], !prof !537

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %31, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !140
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %311, !prof !538

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gimple_statement_phi, ptr %31, i64 0, i32 1
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %31, i64 0, i32 3
  br label %49

49:                                               ; preds = %46, %85
  %50 = phi i64 [ 0, %46 ], [ %87, %85 ]
  %51 = phi ptr [ null, %46 ], [ %83, %85 ]
  %52 = load i32, ptr %47, align 8, !tbaa !140
  %53 = zext i32 %52 to i64
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %56, !prof !539

55:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 3103, ptr noundef nonnull @.str.3) #27
  br label %56

56:                                               ; preds = %49, %55
  %57 = getelementptr inbounds %struct.gimple_statement_phi, ptr %31, i64 0, i32 4, i64 %50, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !299
  %59 = load ptr, ptr %58, align 8, !tbaa !129
  %60 = load ptr, ptr %48, align 8, !tbaa !129
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %82, label %62, !prof !539

62:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #27
  %63 = load i64, ptr %59, align 8
  %64 = and i64 %63, 131072
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73, !prof !540

66:                                               ; preds = %62
  call void @extract_ops_from_tree(ptr noundef nonnull %59, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #27
  %67 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !140
  %69 = load ptr, ptr %13, align 8, !tbaa !129
  %70 = load i32, ptr %12, align 4, !tbaa !144
  %71 = load ptr, ptr %14, align 8, !tbaa !129
  %72 = call fastcc ptr @expr_expected_value_1(ptr noundef %68, ptr noundef %69, i32 noundef %70, ptr noundef %71, ptr noundef %4)
  br label %73

73:                                               ; preds = %62, %66
  %74 = phi ptr [ %72, %66 ], [ %59, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !541

76:                                               ; preds = %73
  %77 = icmp eq ptr %51, null
  br i1 %77, label %82, label %78, !prof !542

78:                                               ; preds = %76
  %79 = call i32 @operand_equal_p(ptr noundef nonnull %51, ptr noundef nonnull %74, i32 noundef 0) #27
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %78, %76, %73, %56
  %83 = phi ptr [ %51, %56 ], [ %51, %73 ], [ %74, %76 ], [ %51, %78 ]
  %84 = phi i32 [ 4, %56 ], [ 1, %73 ], [ 0, %76 ], [ %81, %78 ]
  switch i32 %84, label %311 [
    i32 0, label %85
    i32 4, label %85
  ], !prof !543

85:                                               ; preds = %82, %82
  %86 = zext nneg i32 %44 to i64
  %87 = add nuw nsw i64 %50, 1
  %88 = icmp eq i64 %87, %86
  br i1 %88, label %311, label %49, !prof !539, !llvm.loop !544

89:                                               ; preds = %36
  %90 = zext nneg i32 %40 to i64
  %91 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !144
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !295
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98, !prof !545

97:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %98

98:                                               ; preds = %97, %89
  %99 = getelementptr inbounds i8, ptr %31, i64 %95
  %100 = load ptr, ptr %99, align 8, !tbaa !129
  %101 = icmp eq ptr %100, %17
  br i1 %101, label %102, label %311, !prof !546

102:                                              ; preds = %98
  %103 = load i32, ptr %31, align 8
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -1
  %106 = icmp ult i32 %105, 9
  tail call void @llvm.assume(i1 %106)
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !144
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !295
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115, !prof !545

114:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %115

115:                                              ; preds = %114, %102
  %116 = getelementptr inbounds i8, ptr %31, i64 %112
  %117 = load ptr, ptr %116, align 8, !tbaa !129
  %118 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !140
  %120 = load i32, ptr %31, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -10
  %123 = icmp ult i32 %122, -9
  br i1 %123, label %137, label %124, !prof !545

124:                                              ; preds = %115
  %125 = zext nneg i32 %121 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !144
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !295
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133, !prof !545

132:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %133

133:                                              ; preds = %132, %124
  %134 = getelementptr inbounds i8, ptr %31, i64 %130
  %135 = getelementptr inbounds ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !129
  br label %137

137:                                              ; preds = %115, %133
  %138 = phi ptr [ %136, %133 ], [ null, %115 ]
  %139 = load i32, ptr %31, align 8
  %140 = trunc i32 %139 to i8
  switch i8 %140, label %143 [
    i8 6, label %141
    i8 1, label %141
    i8 8, label %144
  ], !prof !547

141:                                              ; preds = %137, %137
  %142 = lshr i32 %139, 16
  br label %144

143:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1446, ptr noundef nonnull @.str.3) #27
  br label %144

144:                                              ; preds = %143, %141, %137
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ], [ 59, %137 ]
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !140
  %149 = icmp eq i8 %148, 3
  br i1 %149, label %150, label %170, !prof !548

150:                                              ; preds = %144
  %151 = load i32, ptr %31, align 8
  %152 = and i32 %151, 255
  %153 = add nsw i32 %152, -1
  %154 = icmp ult i32 %153, 9
  tail call void @llvm.assume(i1 %154)
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !144
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !295
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163, !prof !549

162:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %163

163:                                              ; preds = %162, %150
  %164 = getelementptr inbounds i8, ptr %31, i64 %160
  %165 = getelementptr inbounds ptr, ptr %164, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !129
  %167 = load i64, ptr %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = and i32 %168, 65535
  br label %170

170:                                              ; preds = %144, %163
  %171 = phi i32 [ %169, %163 ], [ %145, %144 ]
  %172 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !140
  %174 = icmp ugt i32 %173, 2
  br i1 %174, label %175, label %193, !prof !550

175:                                              ; preds = %170
  %176 = load i32, ptr %31, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %193, label %180, !prof !551

180:                                              ; preds = %175
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !144
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !295
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189, !prof !551

188:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %31, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8, !tbaa !129
  br label %193

193:                                              ; preds = %170, %175, %189
  %194 = phi ptr [ null, %170 ], [ %192, %189 ], [ null, %175 ]
  br label %15

195:                                              ; preds = %36
  %196 = zext nneg i32 %40 to i64
  %197 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !144
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !295
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204, !prof !552

203:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %204

204:                                              ; preds = %203, %195
  %205 = getelementptr inbounds i8, ptr %31, i64 %201
  %206 = getelementptr inbounds ptr, ptr %205, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !129
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 121
  br i1 %210, label %211, label %214, !prof !553

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !140
  br label %214

214:                                              ; preds = %204, %211
  %215 = phi ptr [ %213, %211 ], [ null, %204 ]
  %216 = icmp eq ptr %215, null
  br i1 %216, label %264, label %217, !prof !552

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.tree_function_decl, ptr %215, i64 0, i32 5
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 8191
  %221 = icmp eq i32 %220, 6590
  br i1 %221, label %222, label %264, !prof !552

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 3
  %224 = load i32, ptr %223, align 4, !tbaa !140
  %225 = icmp eq i32 %224, 5
  br i1 %225, label %226, label %264

226:                                              ; preds = %222
  %227 = load i32, ptr %31, align 8
  %228 = and i32 %227, 255
  %229 = add nsw i32 %228, -1
  %230 = icmp ult i32 %229, 9
  tail call void @llvm.assume(i1 %230)
  %231 = zext nneg i32 %228 to i64
  %232 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !144
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !295
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %226
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %239

239:                                              ; preds = %238, %226
  %240 = getelementptr inbounds i8, ptr %31, i64 %236
  %241 = getelementptr ptr, ptr %240, i64 3
  %242 = load ptr, ptr %241, align 8, !tbaa !129
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 131072
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %264

246:                                              ; preds = %239
  %247 = load i32, ptr %31, align 8
  %248 = and i32 %247, 255
  %249 = add nsw i32 %248, -10
  %250 = icmp ult i32 %249, -9
  br i1 %250, label %264, label %251

251:                                              ; preds = %246
  %252 = zext nneg i32 %248 to i64
  %253 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !144
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !295
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 1622, ptr noundef nonnull @.str.3) #27
  br label %260

260:                                              ; preds = %259, %251
  %261 = getelementptr inbounds i8, ptr %31, i64 %257
  %262 = getelementptr ptr, ptr %261, i64 4
  %263 = load ptr, ptr %262, align 8, !tbaa !129
  br label %264

264:                                              ; preds = %260, %246, %217, %222, %239, %214
  %265 = phi i1 [ false, %214 ], [ false, %239 ], [ false, %222 ], [ true, %217 ], [ false, %246 ], [ false, %260 ]
  %266 = phi ptr [ null, %214 ], [ %242, %239 ], [ null, %222 ], [ undef, %217 ], [ null, %246 ], [ %263, %260 ]
  br i1 %265, label %267, label %311, !prof !553

267:                                              ; preds = %36, %264
  br label %311

268:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  %269 = load i64, ptr %17, align 8
  %270 = and i64 %269, 131072
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %279, !prof !540

272:                                              ; preds = %268
  call void @extract_ops_from_tree(ptr noundef nonnull %17, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #27
  %273 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !140
  %275 = load ptr, ptr %10, align 8, !tbaa !129
  %276 = load i32, ptr %9, align 4, !tbaa !144
  %277 = load ptr, ptr %11, align 8, !tbaa !129
  %278 = call fastcc ptr @expr_expected_value_1(ptr noundef %274, ptr noundef %275, i32 noundef %276, ptr noundef %277, ptr noundef %4)
  br label %279

279:                                              ; preds = %268, %272
  %280 = phi ptr [ %278, %272 ], [ %17, %268 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  %281 = icmp eq ptr %280, null
  br i1 %281, label %311, label %282, !prof !554

282:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  %283 = load i64, ptr %19, align 8
  %284 = and i64 %283, 131072
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %293, !prof !540

286:                                              ; preds = %282
  call void @extract_ops_from_tree(ptr noundef nonnull %19, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #27
  %287 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !140
  %289 = load ptr, ptr %7, align 8, !tbaa !129
  %290 = load i32, ptr %6, align 4, !tbaa !144
  %291 = load ptr, ptr %8, align 8, !tbaa !129
  %292 = call fastcc ptr @expr_expected_value_1(ptr noundef %288, ptr noundef %289, i32 noundef %290, ptr noundef %291, ptr noundef %4)
  br label %293

293:                                              ; preds = %282, %286
  %294 = phi ptr [ %292, %286 ], [ %19, %282 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  %295 = icmp eq ptr %294, null
  br i1 %295, label %311, label %296, !prof !555

296:                                              ; preds = %293
  %297 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %18, ptr noundef %16, ptr noundef nonnull %280, ptr noundef nonnull %294) #27
  %298 = load i64, ptr %297, align 8
  %299 = and i64 %298, 131072
  %300 = icmp eq i64 %299, 0
  %301 = select i1 %300, ptr null, ptr %297
  br label %311

302:                                              ; preds = %15
  %303 = tail call fastcc ptr @expr_expected_value(ptr noundef %17, ptr noundef %4)
  %304 = icmp eq ptr %303, null
  br i1 %304, label %311, label %305, !prof !556

305:                                              ; preds = %302
  %306 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %18, ptr noundef %16, ptr noundef nonnull %303) #27
  %307 = load i64, ptr %306, align 8
  %308 = and i64 %307, 131072
  %309 = icmp eq i64 %308, 0
  %310 = select i1 %309, ptr null, ptr %306
  br label %311

311:                                              ; preds = %85, %82, %42, %15, %302, %305, %279, %293, %296, %98, %29, %27, %23, %264, %267
  %312 = phi ptr [ null, %267 ], [ %266, %264 ], [ %17, %23 ], [ null, %27 ], [ null, %29 ], [ null, %98 ], [ null, %279 ], [ null, %293 ], [ %301, %296 ], [ null, %302 ], [ %310, %305 ], [ null, %15 ], [ null, %42 ], [ null, %82 ], [ %83, %85 ]
  ret ptr %312
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

declare i32 @real_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @real_onep(ptr noundef) local_unnamed_addr #3

declare i32 @real_minus_onep(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @expr_expected_value(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !557 !PGOFuncName !558 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16, !prof !540

9:                                                ; preds = %2
  call void @extract_ops_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !140
  %12 = load ptr, ptr %4, align 8, !tbaa !129
  %13 = load i32, ptr %3, align 4, !tbaa !144
  %14 = load ptr, ptr %5, align 8, !tbaa !129
  %15 = call fastcc ptr @expr_expected_value_1(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %1)
  br label %16

16:                                               ; preds = %2, %9
  %17 = phi ptr [ %15, %9 ], [ %0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret ptr %17
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @estimate_loops_at_level(ptr noundef %0) unnamed_addr #18 !prof !128 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1, %29
  %4 = phi ptr [ %33, %29 ], [ %0, %1 ]
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  %6 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  tail call fastcc void @estimate_loops_at_level(ptr noundef %7)
  %8 = tail call ptr @loop_latch_edge(ptr noundef nonnull %4) #27
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !459
  %11 = getelementptr inbounds %struct.edge_info_def, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = tail call ptr @get_loop_body(ptr noundef nonnull %4) #27
  %15 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !356
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %3 ]
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !284
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #27
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %15, align 4, !tbaa !356
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %18, label %29, !llvm.loop !559

29:                                               ; preds = %18, %3
  tail call void @free(ptr noundef %14)
  %30 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  tail call fastcc void @propagate_freq(ptr noundef %31, ptr noundef %5)
  tail call void @bitmap_obstack_free(ptr noundef %5) #27
  %32 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !217
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %3, !llvm.loop !560

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @propagate_freq(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !450 !PGOFuncName !561 {
  %3 = alloca %struct.sreal, align 8
  %4 = alloca %struct.sreal, align 8
  %5 = alloca %struct.sreal, align 8
  %6 = alloca %struct.sreal, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !562
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @bitmap_zero_bits, ptr %7, !prof !451
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !564
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !295
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %12, %16
  br label %18

18:                                               ; preds = %151, %2
  %19 = phi i32 [ 0, %2 ], [ %74, %151 ]
  %20 = phi ptr [ %9, %2 ], [ %75, %151 ]
  %21 = phi i64 [ %14, %2 ], [ %155, %151 ]
  %22 = phi i32 [ %17, %2 ], [ %156, %151 ]
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %38, label %24, !prof !566

24:                                               ; preds = %52, %18
  %25 = phi i32 [ %19, %18 ], [ %53, %52 ]
  %26 = phi ptr [ %20, %18 ], [ %43, %52 ]
  %27 = phi i64 [ %21, %18 ], [ %57, %52 ]
  %28 = phi i32 [ %22, %18 ], [ %54, %52 ]
  %29 = and i64 %27, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73, !prof !567

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %28, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %27, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !prof !568, !llvm.loop !569

38:                                               ; preds = %18
  %39 = add i32 %22, 63
  %40 = and i32 %39, -64
  %41 = add i32 %19, 1
  br label %42

42:                                               ; preds = %69, %38
  %43 = phi ptr [ %20, %38 ], [ %67, %69 ]
  %44 = phi i64 [ %21, %38 ], [ %64, %69 ]
  %45 = phi i32 [ %40, %38 ], [ %72, %69 ]
  %46 = phi i32 [ %41, %38 ], [ 0, %69 ]
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %63, label %48, !prof !570

48:                                               ; preds = %42
  %49 = add i32 %45, 128
  %50 = shl i32 %46, 6
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %61, %59 ], [ %46, %48 ]
  %54 = phi i32 [ %60, %59 ], [ %45, %48 ]
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !295
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24, !prof !571

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !prof !572, !llvm.loop !573

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %44, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %45, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %43, align 8, !tbaa !574
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69, !prof !575

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !564
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !576

73:                                               ; preds = %63, %31, %24
  %74 = phi i32 [ %25, %24 ], [ %25, %31 ], [ %66, %63 ]
  %75 = phi ptr [ %26, %24 ], [ %26, %31 ], [ %67, %63 ]
  %76 = phi i64 [ %27, %24 ], [ %34, %31 ], [ %64, %63 ]
  %77 = phi i32 [ %28, %24 ], [ %35, %31 ], [ %65, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %157, label %79, !prof !577

79:                                               ; preds = %73
  %80 = load ptr, ptr @cfun, align 8, !tbaa !129
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !148
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !578
  %85 = zext i32 %77 to i64
  %86 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %84, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !129
  %88 = icmp eq ptr %87, null
  br label %89

89:                                               ; preds = %149, %79
  %90 = phi i32 [ 0, %79 ], [ %150, %149 ]
  %91 = phi i32 [ 0, %79 ], [ %140, %149 ]
  br i1 %88, label %92, label %93, !prof !579

92:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.3) #27
  br label %93

93:                                               ; preds = %92, %89
  %94 = load ptr, ptr %87, align 8, !tbaa !129
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !457

96:                                               ; preds = %93
  %97 = load i32, ptr %94, align 8, !tbaa !257
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %97, %96 ], [ 0, %93 ]
  %100 = icmp eq i32 %99, %90
  br i1 %100, label %105, label %101, !prof !458

101:                                              ; preds = %98
  %102 = zext i32 %90 to i64
  %103 = getelementptr inbounds %struct.VEC_edge_base, ptr %94, i64 0, i32 2, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !129
  br label %105

105:                                              ; preds = %98, %101
  %106 = phi ptr [ %104, %101 ], [ null, %98 ]
  br i1 %100, label %151, label %107, !prof !458

107:                                              ; preds = %105
  %108 = load ptr, ptr %106, align 8, !tbaa !182
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !284
  %111 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %110) #27
  %112 = and i32 %111, 255
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121, !prof !461

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.edge_def, ptr %106, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !252
  %117 = and i32 %116, 32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121, !prof !461

119:                                              ; preds = %114
  %120 = add nsw i32 %91, 1
  br label %139

121:                                              ; preds = %114, %107
  %122 = load ptr, ptr @dump_file, align 8
  %123 = icmp ne ptr %122, null
  %124 = select i1 %113, i1 %123, i1 false
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.edge_def, ptr %106, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !459
  %128 = getelementptr inbounds %struct.edge_info_def, ptr %127, i64 0, i32 1
  %129 = load i8, ptr %128, align 8
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %134 = load ptr, ptr %106, align 8, !tbaa !182
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !284
  %137 = load i32, ptr %133, align 8, !tbaa !284
  %138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %122, ptr noundef nonnull @.str.47, i32 noundef %136, i32 noundef %137)
  br label %139

139:                                              ; preds = %119, %132, %125, %121
  %140 = phi i32 [ %91, %125 ], [ %91, %132 ], [ %91, %121 ], [ %120, %119 ]
  %141 = load ptr, ptr %87, align 8, !tbaa !129
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143, !prof !460

143:                                              ; preds = %139
  %144 = load i32, ptr %141, align 8, !tbaa !257
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i32 [ %144, %143 ], [ 0, %139 ]
  %147 = icmp ult i32 %90, %146
  br i1 %147, label %149, label %148, !prof !461

148:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %149

149:                                              ; preds = %145, %148
  %150 = add i32 %90, 1
  br label %89, !llvm.loop !580

151:                                              ; preds = %105
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !466
  %154 = getelementptr inbounds %struct.block_info_def, ptr %153, i64 0, i32 2
  store i32 %91, ptr %154, align 8, !tbaa !581
  %155 = lshr i64 %76, 1
  %156 = add i32 %77, 1
  br label %18, !llvm.loop !584

157:                                              ; preds = %73
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !466
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, ptr noundef nonnull align 8 dereferenceable(16) @real_one, i64 16, i1 false)
  %160 = icmp eq ptr %0, null
  br i1 %160, label %305, label %161, !prof !456

161:                                              ; preds = %157, %303
  %162 = phi ptr [ %253, %303 ], [ %0, %157 ]
  %163 = phi ptr [ %254, %303 ], [ %0, %157 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @real_zero, i64 16, i1 false)
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %162, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !466
  %166 = getelementptr inbounds %struct.block_info_def, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !585
  store ptr null, ptr %166, align 8, !tbaa !585
  %168 = icmp eq ptr %162, %0
  br i1 %168, label %233, label %169, !prof !586

169:                                              ; preds = %161, %218
  %170 = phi i32 [ %219, %218 ], [ 0, %161 ]
  %171 = load ptr, ptr %162, align 8, !tbaa !129
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173, !prof !587

173:                                              ; preds = %169
  %174 = load i32, ptr %171, align 8, !tbaa !257
  br label %175

175:                                              ; preds = %173, %169
  %176 = phi i32 [ %174, %173 ], [ 0, %169 ]
  %177 = icmp eq i32 %176, %170
  br i1 %177, label %182, label %178, !prof !588

178:                                              ; preds = %175
  %179 = zext i32 %170 to i64
  %180 = getelementptr inbounds %struct.VEC_edge_base, ptr %171, i64 0, i32 2, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !129
  br label %182

182:                                              ; preds = %175, %178
  %183 = phi ptr [ %181, %178 ], [ null, %175 ]
  br i1 %177, label %220, label %184, !prof !588

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !459
  %187 = getelementptr inbounds %struct.edge_info_def, ptr %186, i64 0, i32 1
  %188 = load i8, ptr %187, align 8
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %193, label %191, !prof !461

191:                                              ; preds = %184
  %192 = call ptr @sreal_add(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %186) #27
  br label %209

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !252
  %196 = and i32 %195, 32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %209, !prof !461

198:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  %199 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 8
  %200 = load i32, ptr %199, align 4, !tbaa !183
  %201 = sext i32 %200 to i64
  %202 = call ptr @sreal_init(ptr noundef nonnull %5, i64 noundef %201, i32 noundef 0) #27
  %203 = load ptr, ptr %183, align 8, !tbaa !182
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !466
  %206 = call ptr @sreal_mul(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %205) #27
  %207 = call ptr @sreal_mul(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull @real_inv_br_prob_base) #27
  %208 = call ptr @sreal_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  br label %209

209:                                              ; preds = %193, %198, %191
  %210 = load ptr, ptr %162, align 8, !tbaa !129
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212, !prof !460

212:                                              ; preds = %209
  %213 = load i32, ptr %210, align 8, !tbaa !257
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i32 [ %213, %212 ], [ 0, %209 ]
  %216 = icmp ult i32 %170, %215
  br i1 %216, label %218, label %217, !prof !461

217:                                              ; preds = %214
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %218

218:                                              ; preds = %214, %217
  %219 = add i32 %170, 1
  br label %169, !llvm.loop !589

220:                                              ; preds = %182
  %221 = call i32 @sreal_compare(ptr noundef nonnull %3, ptr noundef nonnull @real_zero) #27
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225, !prof !590

223:                                              ; preds = %220
  %224 = load ptr, ptr %164, align 8, !tbaa !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %224, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  br label %233

225:                                              ; preds = %220
  %226 = call i32 @sreal_compare(ptr noundef nonnull %3, ptr noundef nonnull @real_almost_one) #27
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @real_almost_one, i64 16, i1 false)
  br label %229

229:                                              ; preds = %228, %225
  %230 = call ptr @sreal_sub(ptr noundef nonnull %3, ptr noundef nonnull @real_one, ptr noundef nonnull %3) #27
  %231 = load ptr, ptr %164, align 8, !tbaa !466
  %232 = call ptr @sreal_div(ptr noundef %231, ptr noundef nonnull %4, ptr noundef nonnull %3) #27
  br label %233

233:                                              ; preds = %223, %229, %161
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %162, i64 0, i32 9
  %235 = load i32, ptr %234, align 8, !tbaa !284
  %236 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %1, i32 noundef %235) #27
  %237 = call ptr @find_edge(ptr noundef nonnull %162, ptr noundef nonnull %0) #27
  %238 = icmp eq ptr %237, null
  br i1 %238, label %249, label %239, !prof !591

239:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  %240 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %241 = load i32, ptr %240, align 4, !tbaa !183
  %242 = sext i32 %241 to i64
  %243 = call ptr @sreal_init(ptr noundef nonnull %6, i64 noundef %242, i32 noundef 0) #27
  %244 = load ptr, ptr %164, align 8, !tbaa !466
  %245 = call ptr @sreal_mul(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %244) #27
  %246 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !459
  %248 = call ptr @sreal_mul(ptr noundef %247, ptr noundef nonnull %6, ptr noundef nonnull @real_inv_br_prob_base) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  br label %249

249:                                              ; preds = %239, %233
  %250 = getelementptr inbounds %struct.basic_block_def, ptr %162, i64 0, i32 1
  br label %251

251:                                              ; preds = %301, %249
  %252 = phi i32 [ 0, %249 ], [ %302, %301 ]
  %253 = phi ptr [ %167, %249 ], [ %291, %301 ]
  %254 = phi ptr [ %163, %249 ], [ %292, %301 ]
  %255 = load ptr, ptr %250, align 8, !tbaa !129
  %256 = icmp eq ptr %255, null
  br i1 %256, label %259, label %257, !prof !457

257:                                              ; preds = %251
  %258 = load i32, ptr %255, align 8, !tbaa !257
  br label %259

259:                                              ; preds = %257, %251
  %260 = phi i32 [ %258, %257 ], [ 0, %251 ]
  %261 = icmp eq i32 %260, %252
  br i1 %261, label %266, label %262, !prof !458

262:                                              ; preds = %259
  %263 = zext i32 %252 to i64
  %264 = getelementptr inbounds %struct.VEC_edge_base, ptr %255, i64 0, i32 2, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !129
  br label %266

266:                                              ; preds = %259, %262
  %267 = phi ptr [ %265, %262 ], [ null, %259 ]
  br i1 %261, label %303, label %268, !prof !458

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.edge_def, ptr %267, i64 0, i32 7
  %270 = load i32, ptr %269, align 8, !tbaa !252
  %271 = and i32 %270, 32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %290, !prof !461

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.edge_def, ptr %267, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !358
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %275, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !466
  %278 = getelementptr inbounds %struct.block_info_def, ptr %277, i64 0, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !581
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %290, label %281, !prof !460

281:                                              ; preds = %273
  %282 = add nsw i32 %279, -1
  store i32 %282, ptr %278, align 8, !tbaa !581
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %290, !prof !592

284:                                              ; preds = %281
  %285 = icmp eq ptr %253, null
  br i1 %285, label %290, label %286, !prof !593

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !466
  %289 = getelementptr inbounds %struct.block_info_def, ptr %288, i64 0, i32 1
  store ptr %275, ptr %289, align 8, !tbaa !585
  br label %290

290:                                              ; preds = %286, %284, %281, %273, %268
  %291 = phi ptr [ %253, %268 ], [ %253, %281 ], [ %253, %273 ], [ %253, %286 ], [ %275, %284 ]
  %292 = phi ptr [ %254, %268 ], [ %254, %281 ], [ %254, %273 ], [ %275, %286 ], [ %275, %284 ]
  %293 = load ptr, ptr %250, align 8, !tbaa !129
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !460

295:                                              ; preds = %290
  %296 = load i32, ptr %293, align 8, !tbaa !257
  br label %297

297:                                              ; preds = %295, %290
  %298 = phi i32 [ %296, %295 ], [ 0, %290 ]
  %299 = icmp ult i32 %252, %298
  br i1 %299, label %301, label %300, !prof !461

300:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %301

301:                                              ; preds = %297, %300
  %302 = add i32 %252, 1
  br label %251, !llvm.loop !594

303:                                              ; preds = %266
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  %304 = icmp eq ptr %253, null
  br i1 %304, label %305, label %161, !prof !463, !llvm.loop !595

305:                                              ; preds = %303, %157
  ret void
}

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

declare void @scev_initialize() local_unnamed_addr #3

declare void @scev_finalize() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!127}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!35 = !{ptr @cgraph_maybe_hot_edge_p, ptr @lookup_attribute, i64 159246}
!36 = !{ptr @gimple_predicted_by_p, ptr @pointer_map_contains, i64 175965}
!37 = !{ptr @predict_insn, ptr @any_condjump_p, i64 198}
!38 = !{ptr @predict_insn, ptr @gen_rtx_CONST_INT, i64 396}
!39 = !{ptr @predict_insn, ptr @gen_rtx_fmt_ee_stat, i64 198}
!40 = !{ptr @predict_insn, ptr @add_reg_note, i64 198}
!41 = !{ptr @gimple_predict_edge, ptr @xmalloc, i64 266091}
!42 = !{ptr @gimple_predict_edge, ptr @pointer_map_insert, i64 266091}
!43 = !{ptr @invert_br_probabilities, ptr @gen_rtx_CONST_INT, i64 365563}
!44 = !{ptr @guess_outgoing_edge_probabilities, ptr @any_condjump_p, i64 1428}
!45 = !{ptr @guess_outgoing_edge_probabilities, ptr @get_condition, i64 691}
!46 = !{ptr @guess_outgoing_edge_probabilities, ptr @predict_insn, i64 198}
!47 = !{ptr @guess_outgoing_edge_probabilities, ptr @set_even_probabilities, i64 86}
!48 = !{ptr @guess_outgoing_edge_probabilities, ptr @find_reg_note, i64 691}
!49 = !{ptr @guess_outgoing_edge_probabilities, ptr @dump_prediction, i64 1778}
!50 = !{ptr @guess_outgoing_edge_probabilities, ptr @gen_rtx_CONST_INT, i64 691}
!51 = !{ptr @guess_outgoing_edge_probabilities, ptr @add_reg_note, i64 691}
!52 = !{ptr @tree_estimate_probability, ptr @add_noreturn_fake_exit_edges, i64 40}
!53 = !{ptr @tree_estimate_probability, ptr @connect_infinite_loops_to_exit, i64 40}
!54 = !{ptr @tree_estimate_probability, ptr @create_preheaders, i64 40}
!55 = !{ptr @tree_estimate_probability, ptr @calculate_dominance_info, i64 40}
!56 = !{ptr @tree_estimate_probability, ptr @pointer_map_create, i64 40}
!57 = !{ptr @tree_estimate_probability, ptr @last_stmt, i64 207943}
!58 = !{ptr @tree_estimate_probability, ptr @tree_int_cst_sgn, i64 70380}
!59 = !{ptr @tree_estimate_probability, ptr @integer_zerop, i64 356714}
!60 = !{ptr @tree_estimate_probability, ptr @integer_onep, i64 67919}
!61 = !{ptr @tree_estimate_probability, ptr @predict_paths_for_bb, i64 50580}
!62 = !{ptr @tree_estimate_probability, ptr @gimple_call_flags, i64 69128}
!63 = !{ptr @tree_estimate_probability, ptr @lookup_attribute, i64 69128}
!64 = !{ptr @tree_estimate_probability, ptr @record_loop_exits, i64 40}
!65 = !{ptr @tree_estimate_probability, ptr @predicted_by_p, i64 175965}
!66 = !{ptr @tree_estimate_probability, ptr @predict_edge, i64 218063}
!67 = !{ptr @tree_estimate_probability, ptr @dominated_by_p, i64 433911}
!68 = !{ptr @tree_estimate_probability, ptr @gimple_has_side_effects, i64 78205}
!69 = !{ptr @tree_estimate_probability, ptr @bitmap_obstack_alloc_stat, i64 143274}
!70 = !{ptr @tree_estimate_probability, ptr @expr_expected_value_1, i64 143274}
!71 = !{ptr @tree_estimate_probability, ptr @bitmap_obstack_free, i64 143274}
!72 = !{ptr @tree_estimate_probability, ptr @integer_all_onesp, i64 6}
!73 = !{ptr @tree_estimate_probability, ptr @real_zerop, i64 6}
!74 = !{ptr @tree_estimate_probability, ptr @real_onep, i64 6}
!75 = !{ptr @tree_estimate_probability, ptr @real_minus_onep, i64 6}
!76 = !{ptr @tree_estimate_probability, ptr @set_even_probabilities, i64 3299}
!77 = !{ptr @tree_estimate_probability, ptr @pointer_map_contains, i64 289849}
!78 = !{ptr @tree_estimate_probability, ptr @free, i64 266091}
!79 = !{ptr @tree_estimate_probability, ptr @dump_prediction, i64 8037}
!80 = !{ptr @tree_estimate_probability, ptr @pointer_map_destroy, i64 40}
!81 = !{ptr @tree_estimate_probability, ptr @estimate_bb_frequencies, i64 40}
!82 = !{ptr @tree_estimate_probability, ptr @free_dominance_info, i64 40}
!83 = !{ptr @tree_estimate_probability, ptr @remove_fake_exit_edges, i64 40}
!84 = !{ptr @estimate_bb_frequencies, ptr @sreal_init, i64 585707}
!85 = !{ptr @estimate_bb_frequencies, ptr @sreal_div, i64 79}
!86 = !{ptr @estimate_bb_frequencies, ptr @sreal_sub, i64 1}
!87 = !{ptr @estimate_bb_frequencies, ptr @mark_dfs_back_edges, i64 78}
!88 = !{ptr @estimate_bb_frequencies, ptr @alloc_aux_for_blocks, i64 78}
!89 = !{ptr @estimate_bb_frequencies, ptr @alloc_aux_for_edges, i64 78}
!90 = !{ptr @estimate_bb_frequencies, ptr @sreal_mul, i64 879088}
!91 = !{ptr @estimate_bb_frequencies, ptr @bitmap_obstack_alloc_stat, i64 78}
!92 = !{ptr @estimate_bb_frequencies, ptr @bitmap_set_bit, i64 293386}
!93 = !{ptr @estimate_bb_frequencies, ptr @propagate_freq, i64 78}
!94 = !{ptr @estimate_bb_frequencies, ptr @bitmap_obstack_free, i64 78}
!95 = !{ptr @estimate_bb_frequencies, ptr @sreal_compare, i64 293230}
!96 = !{ptr @estimate_bb_frequencies, ptr @sreal_add, i64 293386}
!97 = !{ptr @estimate_bb_frequencies, ptr @sreal_to_int, i64 293386}
!98 = !{ptr @estimate_bb_frequencies, ptr @free_aux_for_blocks, i64 78}
!99 = !{ptr @estimate_bb_frequencies, ptr @free_aux_for_edges, i64 78}
!100 = !{ptr @estimate_bb_frequencies, ptr @compute_function_frequency, i64 78}
!101 = !{ptr @expensive_function_p, ptr @active_insn_p, i64 680844}
!102 = !{ptr @compute_function_frequency, ptr @lookup_attribute, i64 156}
!103 = !{ptr @tree_estimate_probability_driver, ptr @loop_optimizer_init, i64 40}
!104 = !{ptr @tree_estimate_probability_driver, ptr @mark_irreducible_loops, i64 40}
!105 = !{ptr @tree_estimate_probability_driver, ptr @tree_estimate_probability, i64 40}
!106 = !{ptr @tree_estimate_probability_driver, ptr @loop_optimizer_finalize, i64 40}
!107 = !{ptr @predict_paths_for_bb, ptr @dominated_by_p, i64 58203}
!108 = !{ptr @predict_paths_for_bb, ptr @predict_edge, i64 58161}
!109 = !{ptr @predict_paths_for_bb, ptr @first_dom_son, i64 50607}
!110 = !{ptr @predict_paths_for_bb, ptr @predict_paths_for_bb, i64 27}
!111 = !{ptr @predict_paths_for_bb, ptr @next_dom_son, i64 27}
!112 = !{ptr @expr_expected_value_1, ptr @bitmap_bit_p, i64 241011}
!113 = !{ptr @expr_expected_value_1, ptr @bitmap_set_bit, i64 241011}
!114 = !{ptr @expr_expected_value_1, ptr @extract_ops_from_tree, i64 241008}
!115 = !{ptr @expr_expected_value_1, ptr @expr_expected_value_1, i64 241008}
!116 = !{ptr @expr_expected_value_1, ptr @operand_equal_p, i64 128}
!117 = !{ptr @expr_expected_value_1, ptr @expr_expected_value, i64 3}
!118 = !{ptr @expr_expected_value, ptr @extract_ops_from_tree, i64 2}
!119 = !{ptr @expr_expected_value, ptr @expr_expected_value_1, i64 2}
!120 = !{ptr @propagate_freq, ptr @bitmap_bit_p, i64 585702}
!121 = !{ptr @propagate_freq, ptr @sreal_init, i64 585702}
!122 = !{ptr @propagate_freq, ptr @sreal_mul, i64 1171404}
!123 = !{ptr @propagate_freq, ptr @sreal_add, i64 585702}
!124 = !{ptr @propagate_freq, ptr @sreal_compare, i64 293308}
!125 = !{ptr @propagate_freq, ptr @bitmap_clear_bit, i64 293386}
!126 = !{ptr @propagate_freq, ptr @find_edge, i64 293386}
!127 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!128 = !{!"function_entry_count", i64 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"any pointer", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !{!134, !130, i64 8}
!134 = !{!"_IO_FILE", !135, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !130, i64 104, !135, i64 112, !135, i64 116, !136, i64 120, !137, i64 128, !131, i64 130, !131, i64 131, !130, i64 136, !136, i64 144, !130, i64 152, !130, i64 160, !130, i64 168, !130, i64 176, !136, i64 184, !135, i64 192, !131, i64 196}
!135 = !{!"int", !131, i64 0}
!136 = !{!"long", !131, i64 0}
!137 = !{!"short", !131, i64 0}
!138 = !{!134, !130, i64 16}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{!131, !131, i64 0}
!141 = !{!134, !130, i64 40}
!142 = !{!134, !130, i64 48}
!143 = !{!134, !135, i64 0}
!144 = !{!135, !135, i64 0}
!145 = distinct !{!145, !146, !147}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !{!149, !130, i64 8}
!149 = !{!"function", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !135, i64 104, !135, i64 108, !135, i64 112, !135, i64 116, !135, i64 120, !135, i64 124, !130, i64 128, !135, i64 136, !135, i64 137, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139}
!150 = !{!151, !135, i64 48}
!151 = !{!"control_flow_graph", !130, i64 0, !130, i64 8, !130, i64 16, !135, i64 24, !135, i64 28, !135, i64 32, !130, i64 40, !135, i64 48, !131, i64 52, !131, i64 60, !135, i64 68, !135, i64 72}
!152 = !{!"branch_weights", i32 0, i32 5715929}
!153 = !{!154, !136, i64 72}
!154 = !{!"basic_block_def", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !131, i64 32, !130, i64 48, !130, i64 56, !131, i64 64, !136, i64 72, !135, i64 80, !135, i64 84, !135, i64 88, !135, i64 92, !135, i64 96}
!155 = !{!156, !135, i64 4}
!156 = !{!"gcov_ctr_summary", !135, i64 0, !135, i64 4, !136, i64 8, !136, i64 16, !136, i64 24}
!157 = !{!156, !136, i64 24}
!158 = !{!159, !135, i64 8}
!159 = !{!"param_info", !130, i64 0, !135, i64 8, !131, i64 12, !135, i64 16, !135, i64 20, !130, i64 24}
!160 = !{!154, !135, i64 88}
!161 = !{!"branch_weights", i32 5715929, i32 0, i32 0}
!162 = !{!"function_entry_count", i64 53082}
!163 = !{!"branch_weights", i32 0, i32 53082}
!164 = !{!165, !136, i64 0}
!165 = !{!"cgraph_edge", !136, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !135, i64 72, !135, i64 76, !135, i64 80, !135, i64 84, !137, i64 88, !135, i64 90, !135, i64 90, !135, i64 90}
!166 = !{!165, !130, i64 16}
!167 = !{!168, !130, i64 0}
!168 = !{!"cgraph_node", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !130, i64 104, !130, i64 112, !130, i64 120, !130, i64 128, !130, i64 136, !169, i64 144, !171, i64 184, !172, i64 224, !173, i64 232, !174, i64 256, !136, i64 288, !135, i64 296, !135, i64 300, !135, i64 304, !135, i64 308, !135, i64 308, !135, i64 308, !135, i64 308, !135, i64 308, !135, i64 308, !135, i64 308, !135, i64 308, !135, i64 309, !135, i64 309}
!169 = !{!"cgraph_local_info", !130, i64 0, !170, i64 8, !135, i64 32, !135, i64 32, !135, i64 32, !135, i64 32, !135, i64 32, !135, i64 32, !135, i64 32, !135, i64 32}
!170 = !{!"inline_summary", !136, i64 0, !135, i64 8, !135, i64 12, !135, i64 16, !135, i64 20}
!171 = !{!"cgraph_global_info", !136, i64 0, !136, i64 8, !130, i64 16, !135, i64 24, !135, i64 28, !135, i64 32, !131, i64 36}
!172 = !{!"cgraph_rtl_info", !135, i64 0}
!173 = !{!"cgraph_clone_info", !130, i64 0, !130, i64 8, !130, i64 16}
!174 = !{!"cgraph_thunk_info", !136, i64 0, !136, i64 8, !130, i64 16, !131, i64 24, !131, i64 25, !131, i64 26}
!175 = !{!"branch_weights", i32 53082, i32 0}
!176 = !{!165, !130, i64 8}
!177 = !{!165, !135, i64 80}
!178 = !{!"branch_weights", i32 1276, i32 51806}
!179 = !{!"branch_weights", i32 0, i32 36990}
!180 = !{!181, !136, i64 56}
!181 = !{!"edge_def", !130, i64 0, !130, i64 8, !131, i64 16, !130, i64 24, !130, i64 32, !135, i64 40, !135, i64 44, !135, i64 48, !135, i64 52, !136, i64 56}
!182 = !{!181, !130, i64 0}
!183 = !{!181, !135, i64 52}
!184 = !{!"branch_weights", i32 36990, i32 0, i32 0}
!185 = !{!"function_entry_count", i64 105693}
!186 = !{!"branch_weights", i32 0, i32 105693}
!187 = !{!"function_entry_count", i64 334956}
!188 = !{!"branch_weights", i32 334956, i32 0}
!189 = !{!"branch_weights", i32 0, i32 334956}
!190 = !{!"function_entry_count", i64 137382}
!191 = !{!"branch_weights", i32 137382, i32 0}
!192 = !{!"branch_weights", i32 0, i32 137382}
!193 = !{!"function_entry_count", i64 431411}
!194 = !{!"branch_weights", i32 431411, i32 0}
!195 = !{!"branch_weights", i32 0, i32 431411}
!196 = !{!"function_entry_count", i64 4322894}
!197 = !{!"branch_weights", i32 4322894, i32 0}
!198 = !{!"branch_weights", i32 0, i32 4322894}
!199 = !{!"function_entry_count", i64 6020}
!200 = !{!"branch_weights", i32 6020, i32 0}
!201 = !{!"branch_weights", i32 0, i32 6020}
!202 = !{!"function_entry_count", i64 30970}
!203 = !{!"branch_weights", i32 30970, i32 0}
!204 = !{!"branch_weights", i32 0, i32 30970}
!205 = !{!"function_entry_count", i64 636412}
!206 = !{!"branch_weights", i32 636412, i32 0}
!207 = !{!"branch_weights", i32 0, i32 636412}
!208 = !{!"function_entry_count", i64 229472}
!209 = !{!"branch_weights", i32 229472, i32 0}
!210 = !{!"branch_weights", i32 0, i32 229472}
!211 = !{!212, !130, i64 8}
!212 = !{!"loop", !135, i64 0, !135, i64 4, !130, i64 8, !130, i64 16, !213, i64 24, !135, i64 32, !135, i64 36, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !214, i64 80, !214, i64 96, !131, i64 112, !131, i64 113, !135, i64 116, !130, i64 120, !130, i64 128, !131, i64 136, !130, i64 144}
!213 = !{!"lpt_decision", !135, i64 0, !135, i64 4}
!214 = !{!"", !136, i64 0, !136, i64 8}
!215 = !{i8 0, i8 2}
!216 = !{!212, !130, i64 48}
!217 = !{!212, !130, i64 56}
!218 = !{!212, !130, i64 40}
!219 = !{!220, !135, i64 0}
!220 = !{!"VEC_loop_p_base", !135, i64 0, !135, i64 4, !131, i64 8}
!221 = distinct !{!221, !146, !147}
!222 = distinct !{!222, !146, !147}
!223 = !{!"function_entry_count", i64 8465}
!224 = !{!"branch_weights", i32 0, i32 8465}
!225 = !{!"branch_weights", i32 37, i32 8428}
!226 = !{!"function_entry_count", i64 961624}
!227 = !{!228, !131, i64 478}
!228 = !{!"rtl_data", !229, i64 0, !230, i64 40, !231, i64 96, !232, i64 112, !234, i64 208, !235, i64 248, !135, i64 312, !130, i64 320, !130, i64 328, !130, i64 336, !130, i64 344, !130, i64 352, !130, i64 360, !130, i64 368, !130, i64 376, !130, i64 384, !130, i64 392, !136, i64 400, !130, i64 408, !130, i64 416, !130, i64 424, !135, i64 432, !135, i64 436, !135, i64 440, !135, i64 444, !135, i64 448, !135, i64 452, !130, i64 456, !131, i64 464, !131, i64 465, !131, i64 466, !131, i64 467, !131, i64 468, !131, i64 469, !131, i64 470, !131, i64 471, !131, i64 472, !131, i64 473, !131, i64 474, !131, i64 475, !131, i64 476, !131, i64 477, !131, i64 478, !131, i64 479, !131, i64 480, !131, i64 481, !131, i64 482, !131, i64 483, !131, i64 484, !131, i64 485}
!229 = !{!"expr_status", !135, i64 0, !135, i64 4, !135, i64 8, !130, i64 16, !130, i64 24, !130, i64 32}
!230 = !{!"emit_status", !135, i64 0, !135, i64 4, !130, i64 8, !130, i64 16, !130, i64 24, !135, i64 32, !135, i64 36, !135, i64 40, !135, i64 44, !130, i64 48}
!231 = !{!"varasm_status", !130, i64 0, !135, i64 8}
!232 = !{!"incoming_args", !135, i64 0, !135, i64 4, !135, i64 8, !130, i64 16, !233, i64 24, !130, i64 88}
!233 = !{!"ix86_args", !135, i64 0, !135, i64 4, !135, i64 8, !135, i64 12, !135, i64 16, !135, i64 20, !135, i64 24, !135, i64 28, !135, i64 32, !135, i64 36, !135, i64 40, !135, i64 44, !135, i64 48, !135, i64 52, !135, i64 56, !135, i64 60}
!234 = !{!"function_subsections", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32}
!235 = !{!"rtl_eh", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !131, i64 48}
!236 = !{!"function_entry_count", i64 348}
!237 = !{!238, !130, i64 8}
!238 = !{!"rtl_bb_info", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !135, i64 32}
!239 = distinct !{!239, !146, !147}
!240 = !{!"function_entry_count", i64 175965}
!241 = !{!"branch_weights", i32 138339, i32 37626}
!242 = !{!"branch_weights", i32 22716, i32 83162}
!243 = !{!244, !135, i64 16}
!244 = !{!"edge_prediction", !130, i64 0, !130, i64 8, !135, i64 16, !135, i64 20}
!245 = !{!"branch_weights", i32 14910, i32 68252}
!246 = distinct !{!246, !146, !147}
!247 = !{!248, !135, i64 8}
!248 = !{!"predictor_info", !130, i64 0, !135, i64 8, !135, i64 12}
!249 = !{!"function_entry_count", i64 198}
!250 = !{!"predict.c;predict_insn"}
!251 = !{!"branch_weights", i32 0, i32 198}
!252 = !{!181, !135, i64 48}
!253 = !{!"function_entry_count", i64 266091}
!254 = !{!"branch_weights", i32 0, i32 266091}
!255 = !{!151, !130, i64 0}
!256 = !{!154, !130, i64 8}
!257 = !{!258, !135, i64 0}
!258 = !{!"VEC_edge_base", !135, i64 0, !135, i64 4, !131, i64 8}
!259 = !{!"branch_weights", i32 266091, i32 0}
!260 = !{!244, !130, i64 0}
!261 = !{!244, !135, i64 20}
!262 = !{!244, !130, i64 8}
!263 = !{!"function_entry_count", i64 493114}
!264 = !{!"branch_weights", i32 493114, i32 0}
!265 = distinct !{!265, !146, !147}
!266 = !{!"function_entry_count", i64 365563}
!267 = !{!"branch_weights", i32 1, i32 365562}
!268 = !{!"branch_weights", i32 366066, i32 365563, i32 0}
!269 = !{!"branch_weights", i32 365562, i32 366067}
!270 = distinct !{!270, !146, !147}
!271 = !{!"function_entry_count", i64 777}
!272 = !{!"branch_weights", i32 714, i32 63}
!273 = !{!"branch_weights", i32 23, i32 691}
!274 = !{!"branch_weights", i32 0, i32 691}
!275 = !{!"branch_weights", i32 691, i32 0}
!276 = !{!"branch_weights", i32 76, i32 0, i32 195, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 0, i32 323}
!277 = !{!"branch_weights", i32 195, i32 0, i32 0, i32 0, i32 0}
!278 = !{!"branch_weights", i32 0, i32 195}
!279 = !{!"branch_weights", i32 0, i32 97}
!280 = !{!"branch_weights", i32 2, i32 95}
!281 = !{!"branch_weights", i32 0, i32 323}
!282 = !{!"branch_weights", i32 1, i32 322}
!283 = !{!"branch_weights", i32 86, i32 691}
!284 = !{!154, !135, i64 80}
!285 = !{!"branch_weights", i32 493, i32 198}
!286 = !{!"branch_weights", i32 198, i32 0}
!287 = distinct !{!287, !146, !147}
!288 = distinct !{!288, !146, !147}
!289 = !{!"function_entry_count", i64 40}
!290 = !{!151, !130, i64 8}
!291 = !{!"branch_weights", i32 0, i32 40}
!292 = !{!"branch_weights", i32 40, i32 0}
!293 = distinct !{!293, !146, !147}
!294 = distinct !{!294, !146, !147}
!295 = !{!136, !136, i64 0}
!296 = !{!"branch_weights", i32 39, i32 1}
!297 = !{!"branch_weights", i32 0, i32 39}
!298 = !{!"branch_weights", i32 38, i32 1}
!299 = !{!300, !130, i64 24}
!300 = !{!"ssa_use_operand_d", !130, i64 0, !130, i64 8, !131, i64 16, !130, i64 24}
!301 = !{!"branch_weights", i32 0, i32 70798}
!302 = !{!"branch_weights", i32 0, i32 4, i32 0, i32 1678, i32 0, i32 69116}
!303 = !{!"branch_weights", i32 2, i32 2}
!304 = !{!"branch_weights", i32 70413, i32 381}
!305 = !{!"branch_weights", i32 0, i32 70413}
!306 = !{!"branch_weights", i32 381, i32 70413}
!307 = !{!"branch_weights", i32 67810, i32 2603}
!308 = !{!"branch_weights", i32 59813, i32 7997}
!309 = !{!"branch_weights", i32 175, i32 1}
!310 = !{!"branch_weights", i32 0, i32 10122}
!311 = !{!"branch_weights", i32 10095, i32 27}
!312 = !{!"branch_weights", i32 175, i32 161777}
!313 = distinct !{!313, !146, !147}
!314 = !{!"branch_weights", i32 5805, i32 2403}
!315 = !{!"branch_weights", i32 0, i32 60638}
!316 = !{!"branch_weights", i32 10119, i32 50519}
!317 = !{!154, !130, i64 0}
!318 = !{}
!319 = !{!"branch_weights", i32 215, i32 484889}
!320 = distinct !{!320, !146, !147}
!321 = !{!154, !130, i64 56}
!322 = !{!"branch_weights", i32 1, i32 159}
!323 = !{!"branch_weights", i32 159, i32 586137}
!324 = distinct !{!324, !146, !147}
!325 = !{!154, !135, i64 96}
!326 = !{!327}
!327 = distinct !{!327, !328, !"gsi_start_bb: argument 0"}
!328 = distinct !{!328, !"gsi_start_bb"}
!329 = !{!"branch_weights", i32 146574, i32 0}
!330 = !{!"branch_weights", i32 0, i32 146574}
!331 = !{!332, !130, i64 0}
!332 = !{!"gimple_bb_info", !130, i64 0, !130, i64 8}
!333 = !{!334, !130, i64 0}
!334 = !{!"gimple_seq_d", !130, i64 0, !130, i64 8, !130, i64 16}
!335 = !{!"branch_weights", i32 1, i32 146573}
!336 = !{!337, !130, i64 0}
!337 = !{!"gimple_seq_node_d", !130, i64 0, !130, i64 8, !130, i64 16}
!338 = !{!"branch_weights", i32 286035, i32 69128, i32 0}
!339 = !{!"branch_weights", i32 61, i32 69067}
!340 = !{!"branch_weights", i32 0, i32 69128}
!341 = !{!"branch_weights", i32 69128, i32 0}
!342 = !{!337, !130, i64 16}
!343 = !{!"branch_weights", i32 146573, i32 208590}
!344 = distinct !{!344, !146, !147}
!345 = !{!149, !130, i64 32}
!346 = !{!347, !130, i64 8}
!347 = !{!"loops", !135, i64 0, !130, i64 8, !130, i64 16, !130, i64 24}
!348 = !{!347, !130, i64 24}
!349 = !{!212, !135, i64 0}
!350 = !{!351, !135, i64 0}
!351 = !{!"VEC_int_base", !135, i64 0, !135, i64 4, !131, i64 8}
!352 = distinct !{!352, !147}
!353 = distinct !{!353, !146, !147}
!354 = distinct !{!354, !146, !147}
!355 = distinct !{!355, !146, !147}
!356 = !{!212, !135, i64 36}
!357 = !{!212, !130, i64 16}
!358 = !{!181, !130, i64 8}
!359 = distinct !{!359, !146, !147}
!360 = distinct !{!360, !146, !147}
!361 = distinct !{!361, !146, !147}
!362 = !{!"branch_weights", i32 0, i32 439323}
!363 = !{!"branch_weights", i32 146574, i32 292749}
!364 = !{!"branch_weights", i32 143509, i32 149240}
!365 = !{!"branch_weights", i32 61, i32 149179}
!366 = !{!"branch_weights", i32 0, i32 149179}
!367 = !{!"branch_weights", i32 85189, i32 63990}
!368 = !{!"branch_weights", i32 0, i32 63990}
!369 = !{!"branch_weights", i32 63990, i32 0}
!370 = !{!"branch_weights", i32 61329, i32 2661}
!371 = !{!"branch_weights", i32 0, i32 61329}
!372 = !{!"branch_weights", i32 61306, i32 23}
!373 = !{!"branch_weights", i32 0, i32 61306}
!374 = !{!"branch_weights", i32 58308, i32 2998}
!375 = !{!"branch_weights", i32 0, i32 8315}
!376 = !{!"branch_weights", i32 2998, i32 5317}
!377 = !{!"branch_weights", i32 5317, i32 0}
!378 = !{!"branch_weights", i32 2639, i32 2678}
!379 = !{!"branch_weights", i32 2639, i32 0}
!380 = !{!"branch_weights", i32 0, i32 5317}
!381 = distinct !{!381, !146, !147}
!382 = !{!"branch_weights", i32 58308, i32 0}
!383 = !{!"branch_weights", i32 46076, i32 12232}
!384 = !{!"branch_weights", i32 46076, i32 0}
!385 = !{!"branch_weights", i32 101, i32 292648}
!386 = !{!"branch_weights", i32 151385, i32 141263}
!387 = !{!"branch_weights", i32 141148, i32 115}
!388 = !{!389}
!389 = distinct !{!389, !390, !"gsi_start_bb: argument 0"}
!390 = distinct !{!390, !"gsi_start_bb"}
!391 = !{!"branch_weights", i32 141148, i32 0}
!392 = !{!"branch_weights", i32 0, i32 141148}
!393 = !{!"branch_weights", i32 1, i32 73075}
!394 = !{!"branch_weights", i32 68072, i32 203920}
!395 = !{!"branch_weights", i32 0, i32 68072}
!396 = !{!"branch_weights", i32 73075, i32 198917}
!397 = distinct !{!397, !146, !147}
!398 = !{!"branch_weights", i32 0, i32 292749}
!399 = !{!"branch_weights", i32 292749, i32 0}
!400 = distinct !{!400, !146, !147}
!401 = !{!"branch_weights", i32 2612, i32 143962}
!402 = !{!"branch_weights", i32 143274, i32 688}
!403 = !{!"branch_weights", i32 0, i32 143274}
!404 = distinct !{!404, !146, !147}
!405 = !{!"branch_weights", i32 143274, i32 0}
!406 = !{!"branch_weights", i32 143255, i32 19, i32 0}
!407 = !{!"branch_weights", i32 0, i32 0, i32 19}
!408 = !{!"branch_weights", i32 0, i32 108240, i32 0, i32 34835, i32 0, i32 0, i32 0, i32 138, i32 39, i32 3, i32 0}
!409 = !{!"branch_weights", i32 108240, i32 0, i32 0, i32 0}
!410 = !{!"branch_weights", i32 108240, i32 0}
!411 = !{!"branch_weights", i32 88157, i32 20083}
!412 = !{!"branch_weights", i32 34835, i32 0, i32 0, i32 0}
!413 = !{!"branch_weights", i32 34835, i32 0}
!414 = !{!"branch_weights", i32 2793, i32 32042}
!415 = !{!"branch_weights", i32 138, i32 39}
!416 = !{!"branch_weights", i32 3, i32 135}
!417 = !{!"branch_weights", i32 3, i32 0}
!418 = distinct !{!418, !146, !147}
!419 = !{!"branch_weights", i32 292688, i32 61}
!420 = !{!"branch_weights", i32 146513, i32 146175}
!421 = !{!"branch_weights", i32 149376, i32 143312}
!422 = distinct !{!422, !146, !147}
!423 = !{!"branch_weights", i32 143275, i32 3299}
!424 = !{!"branch_weights", i32 3299, i32 0}
!425 = !{!"branch_weights", i32 11299, i32 135275}
!426 = !{!"branch_weights", i32 1, i32 135274}
!427 = !{!"branch_weights", i32 135274, i32 130817}
!428 = distinct !{!428, !146, !147}
!429 = !{!"branch_weights", i32 143275, i32 0}
!430 = !{!"branch_weights", i32 8037, i32 135238}
!431 = !{!"branch_weights", i32 1, i32 135237}
!432 = !{!"branch_weights", i32 232778, i32 30501}
!433 = !{!"branch_weights", i32 140270, i32 123009}
!434 = !{!"branch_weights", i32 1, i32 134479}
!435 = !{!"branch_weights", i32 137653, i32 134413}
!436 = !{!"branch_weights", i32 5790, i32 128623}
!437 = !{!"branch_weights", i32 3173, i32 2617}
!438 = !{!"branch_weights", i32 0, i32 5790}
!439 = !{!"branch_weights", i32 134479, i32 137587}
!440 = distinct !{!440, !146, !147}
!441 = !{!"branch_weights", i32 0, i32 263279}
!442 = !{!"branch_weights", i32 135237, i32 128042}
!443 = distinct !{!443, !146, !147}
!444 = !{!"branch_weights", i32 686845, i32 0}
!445 = distinct !{!445, !146, !147}
!446 = !{!"branch_weights", i32 65, i32 143210}
!447 = !{!248, !130, i64 0}
!448 = distinct !{!448, !146, !147}
!449 = distinct !{!449, !146, !147}
!450 = !{!"function_entry_count", i64 78}
!451 = !{!"branch_weights", i32 0, i32 78}
!452 = distinct !{!452, !146, !147}
!453 = distinct !{!453, !146, !147}
!454 = !{!"branch_weights", i32 77, i32 1}
!455 = !{!"branch_weights", i32 78, i32 0}
!456 = !{!"branch_weights", i32 1, i32 155}
!457 = !{!"branch_weights", i32 78, i32 879010}
!458 = !{!"branch_weights", i32 293386, i32 585702}
!459 = !{!181, !130, i64 24}
!460 = !{!"branch_weights", i32 0, i32 585702}
!461 = !{!"branch_weights", i32 585702, i32 0}
!462 = distinct !{!462, !146, !147}
!463 = !{!"branch_weights", i32 155, i32 586617}
!464 = distinct !{!464, !146, !147}
!465 = distinct !{!465, !146, !147}
!466 = !{!154, !130, i64 16}
!467 = !{!"branch_weights", i32 104, i32 293126}
!468 = !{!"branch_weights", i32 155, i32 586305}
!469 = distinct !{!469, !146, !147}
!470 = distinct !{!470, !146, !147}
!471 = !{!"function_entry_count", i64 38}
!472 = !{!"branch_weights", i32 38, i32 0}
!473 = !{!"branch_weights", i32 0, i32 38}
!474 = !{!"branch_weights", i32 11, i32 119342}
!475 = !{!"branch_weights", i32 1, i32 119314}
!476 = !{!"branch_weights", i32 205422, i32 475395}
!477 = !{!"branch_weights", i32 27, i32 475368}
!478 = !{!"branch_weights", i32 119314, i32 561503}
!479 = distinct !{!479, !146, !147}
!480 = !{!"branch_weights", i32 119315, i32 27}
!481 = distinct !{!481, !146, !147}
!482 = distinct !{!482, !146, !147}
!483 = !{!"predict.c;gate_estimate_probability"}
!484 = !{!"predict.c;tree_estimate_probability_driver"}
!485 = !{!"predict.c;strip_predict_hints"}
!486 = !{!"branch_weights", i32 1, i32 151}
!487 = !{!488}
!488 = distinct !{!488, !489, !"gsi_start_bb: argument 0"}
!489 = distinct !{!489, !"gsi_start_bb"}
!490 = !{!"branch_weights", i32 146656, i32 0}
!491 = !{!"branch_weights", i32 0, i32 146656}
!492 = !{i64 0, i64 8, !129, i64 8, i64 8, !129, i64 16, i64 8, !129}
!493 = !{i64 0, i64 8, !129, i64 8, i64 8, !129}
!494 = !{i64 0, i64 8, !129}
!495 = !{!"branch_weights", i32 1, i32 146655}
!496 = !{!"branch_weights", i32 286326, i32 0, i32 69131}
!497 = distinct !{!497, !146, !147}
!498 = !{!"branch_weights", i32 0, i32 69131}
!499 = !{!"branch_weights", i32 69131, i32 0}
!500 = !{!501, !130, i64 0}
!501 = !{!"", !130, i64 0, !130, i64 8, !130, i64 16}
!502 = !{!"branch_weights", i32 146655, i32 208802}
!503 = !{!"branch_weights", i32 151, i32 586473}
!504 = distinct !{!504, !146, !147}
!505 = !{!"function_entry_count", i64 3385}
!506 = !{!"predict.c;set_even_probabilities"}
!507 = !{!"branch_weights", i32 0, i32 12347}
!508 = !{!"branch_weights", i32 3385, i32 8962}
!509 = !{!"branch_weights", i32 0, i32 8962}
!510 = !{!"branch_weights", i32 8962, i32 0}
!511 = distinct !{!511, !146, !147}
!512 = !{!"branch_weights", i32 8901, i32 61}
!513 = distinct !{!513, !146, !147}
!514 = !{!"function_entry_count", i64 9815}
!515 = !{!"predict.c;dump_prediction"}
!516 = !{!"function_entry_count", i64 50607}
!517 = !{!"predict.c;predict_paths_for_bb"}
!518 = !{!"branch_weights", i32 0, i32 108825}
!519 = !{!"branch_weights", i32 50607, i32 58218}
!520 = !{!"branch_weights", i32 58200, i32 18}
!521 = !{!"branch_weights", i32 58161, i32 39}
!522 = !{!"branch_weights", i32 58158, i32 3}
!523 = !{!"branch_weights", i32 0, i32 3}
!524 = !{!"branch_weights", i32 58095, i32 66}
!525 = !{!"branch_weights", i32 0, i32 58218}
!526 = !{!"branch_weights", i32 58218, i32 0}
!527 = distinct !{!527, !146, !147}
!528 = !{!"branch_weights", i32 50580, i32 27}
!529 = !{!"branch_weights", i32 27, i32 0}
!530 = distinct !{!530, !146, !147}
!531 = !{!"function_entry_count", i64 434409}
!532 = !{!"predict.c;expr_expected_value_1"}
!533 = !{!"branch_weights", i32 0, i32 255874, i32 178533, i32 2}
!534 = !{!"branch_weights", i32 255874, i32 0}
!535 = !{!"branch_weights", i32 178547, i32 77327}
!536 = !{!"branch_weights", i32 178547, i32 0}
!537 = !{!"branch_weights", i32 22412, i32 2398142, i32 -1771583146, i32 1475888813}
!538 = !{!"branch_weights", i32 1, i32 0}
!539 = !{!"branch_weights", i32 0, i32 202}
!540 = !{!"branch_weights", i32 178547, i32 7369}
!541 = !{!"branch_weights", i32 12, i32 190}
!542 = !{!"branch_weights", i32 95, i32 95}
!543 = !{!"branch_weights", i32 107, i32 95, i32 0}
!544 = distinct !{!544, !146, !147}
!545 = !{!"branch_weights", i32 0, i32 112588}
!546 = !{!"branch_weights", i32 112588, i32 0}
!547 = !{!"branch_weights", i32 0, i32 112588, i32 0, i32 0}
!548 = !{!"branch_weights", i32 77327, i32 35261}
!549 = !{!"branch_weights", i32 0, i32 77327}
!550 = !{!"branch_weights", i32 35259, i32 77329}
!551 = !{!"branch_weights", i32 0, i32 35259}
!552 = !{!"branch_weights", i32 0, i32 65851}
!553 = !{!"branch_weights", i32 65851, i32 0}
!554 = !{!"branch_weights", i32 171354, i32 7179}
!555 = !{!"branch_weights", i32 7179, i32 0}
!556 = !{!"branch_weights", i32 2, i32 0}
!557 = !{!"function_entry_count", i64 2}
!558 = !{!"predict.c;expr_expected_value"}
!559 = distinct !{!559, !146, !147}
!560 = distinct !{!560, !146, !147}
!561 = !{!"predict.c;propagate_freq"}
!562 = !{!563, !130, i64 0}
!563 = !{!"bitmap_head_def", !130, i64 0, !130, i64 8, !135, i64 16, !130, i64 24}
!564 = !{!565, !135, i64 16}
!565 = !{!"bitmap_element_def", !130, i64 0, !130, i64 8, !135, i64 16, !131, i64 24}
!566 = !{!"branch_weights", i32 4624, i32 288840}
!567 = !{!"branch_weights", i32 11, i32 293375}
!568 = !{!"branch_weights", i32 0, i32 11}
!569 = distinct !{!569, !146, !147}
!570 = !{!"branch_weights", i32 1, i32 2337}
!571 = !{!"branch_weights", i32 52, i32 4546}
!572 = !{!"branch_weights", i32 2337, i32 2261}
!573 = distinct !{!573, !146, !147}
!574 = !{!565, !130, i64 0}
!575 = !{!"branch_weights", i32 78, i32 2260}
!576 = distinct !{!576, !147}
!577 = !{!"branch_weights", i32 78, i32 293386}
!578 = !{!151, !130, i64 16}
!579 = !{!"branch_weights", i32 0, i32 879088}
!580 = distinct !{!580, !146, !147}
!581 = !{!582, !135, i64 24}
!582 = !{!"block_info_def", !583, i64 0, !130, i64 16, !135, i64 24}
!583 = !{!"sreal", !136, i64 0, !135, i64 8}
!584 = distinct !{!584, !146, !147}
!585 = !{!582, !130, i64 16}
!586 = !{!"branch_weights", i32 78, i32 293308}
!587 = !{!"branch_weights", i32 0, i32 879010}
!588 = !{!"branch_weights", i32 293308, i32 585702}
!589 = distinct !{!589, !146, !147}
!590 = !{!"branch_weights", i32 293308, i32 0}
!591 = !{!"branch_weights", i32 293386, i32 0}
!592 = !{!"branch_weights", i32 293308, i32 292394}
!593 = !{!"branch_weights", i32 18913, i32 274395}
!594 = distinct !{!594, !146, !147}
!595 = distinct !{!595, !146, !147}
