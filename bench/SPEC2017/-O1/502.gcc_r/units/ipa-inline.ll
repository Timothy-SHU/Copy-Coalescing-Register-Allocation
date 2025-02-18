; ModuleID = 'ipa-inline.c'
source_filename = "ipa-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.ipa_node_params = type { i32, ptr, ptr, ptr, i64, i8 }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cgraph_new_nodes = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"ipa-inline.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@overall_size = internal unnamed_addr global i32 0, align 4
@nfunctions_inlined = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"einline\00", align 1
@pass_early_inline = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @cgraph_gate_early_inlining, ptr @cgraph_early_inlining, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"einline_ipa\00", align 1
@pass_ipa_early_inline = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.3, ptr @cgraph_gate_ipa_early_inlining, ptr null, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 128 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"inline_param\00", align 1
@pass_inline_parameters = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @compute_inline_parameters_for_current, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@pass_ipa_inline = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.5, ptr null, ptr @cgraph_decide_inlining, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 256, i32 385 }, ptr @inline_generate_summary, ptr @inline_write_summary, ptr @inline_read_summary, ptr null, ptr @lto_ipa_fixup_call_notes, i32 0, ptr @inline_transform, ptr null }, align 8
@order = internal global ptr null, align 8
@gt_ggc_r_gt_ipa_inline_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @order, i64 1, i64 8, ptr @gt_ggc_ma_order, ptr @gt_pch_na_order }, %struct.ggc_root_tab zeroinitializer], align 16
@flag_early_inlining = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Iterations: %i\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"flatten\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Flattening %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Considering to always inline inline candidate %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Not inlining: recursive call.\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Not inlining: %s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Not inlining: SSA form does not match.\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Not inlining: Function body no longer available.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Considering inline candidate %s.\0A\00", align 1
@flag_inline_functions = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"Not inlining: code size would grow by %i.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Not inlining: %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Not inlining: %s.\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Hit cycle in %s, switching to always inline only.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Not inlining %s into %s to avoid cycle.\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c" Inlining %s into %s.\0A\00", align 1
@ncalls_inlined = internal unnamed_addr global i32 0, align 4
@flag_indirect_inlining = external local_unnamed_addr global i32, align 4
@flag_inline_small_functions = external local_unnamed_addr global i32, align 4
@in_lto_p = external local_unnamed_addr global i8, align 1
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"Analyzing function body size: %s\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@eni_time_weights = external global %struct.eni_weights_d, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"  freq:%6i size:%3i time:%3i \00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    Likely eliminated\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Overall function body time: %i-%i size: %i-%i\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"With function call overhead time: %i-%i size: %i-%i\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@max_count = internal unnamed_addr global i64 0, align 8
@max_benefit = internal unnamed_addr global i64 0, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [48 x i8] c"\0ADeciding on inlining.  Starting with size %i.\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\0AInlining always_inline functions:\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\0AConsidering %s size:%i (always inline)\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c" Inlined into %s which now has size %i.\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c" Inlined for a net change of %+i size.\0A\00", align 1
@flag_inline_functions_called_once = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [37 x i8] c"\0ADeciding on functions called once:\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"\0AConsidering %s size %i.\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c" Called once from %s %i insns.\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c" Inlined into %s which now has %i size for a net change of %+i size.\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c" Not inlining: %s.\0A\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"\0AInlined %i calls, eliminated %i functions, size %i turned to %i size.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"\0ADeciding on smaller functions:\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"\0AConsidering %s with %i size\0A\00", align 1
@.str.40 = private unnamed_addr constant [138 x i8] c" to be inlined into %s in %s:%i\0A Estimated growth after inlined into all callees is %+i insns.\0A Estimated badness is %i, frequency %.2f.\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c" Called %ldx\0A\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c" inline_failed:Recursive inlining performed only for function itself.\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c" inline_failed:%s.\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c" Not inlining into %s:%s.\0A\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c" Inlined into %s which now has size %i and self time %i,net change of %+i.\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"New minimal size reached: %i\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Inlining failed: %s\0A\00", align 1
@flag_guess_branch_prob = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [39 x i8] c"  Performing recursive inlining on %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"   maximal depth reached\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"   Not inlining cold call\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"   Probability of edge is too small\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"   Inlining call of depth %i\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c" called approx. %.2f times per call\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"    Recursive inlining growth limit met.\0A\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"\0A   Inlined %i times, body grown from size %i to %i, time %i to %i\0A\00", align 1
@lookup_recursive_calls.priority = internal unnamed_addr global i32 0, align 4
@ipa_node_params_vector = external local_unnamed_addr global ptr, align 8
@cgraph_max_uid = external local_unnamed_addr global i32, align 4
@ipa_edge_args_vector = external local_unnamed_addr global ptr, align 8
@cgraph_edge_max_uid = external local_unnamed_addr global i32, align 4
@flag_ipa_cp = external local_unnamed_addr global i32, align 4
@warn_inline = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !111 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !112
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !111 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !112
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !111 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !122

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !116
  %11 = load i8, ptr %3, align 1, !tbaa !123
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !111 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !122

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !116
  %11 = load i8, ptr %3, align 1, !tbaa !123
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !111 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !112
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !122

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !116
  %11 = load i8, ptr %3, align 1, !tbaa !123
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !111 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !112
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !111 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !122

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !124
  store i8 %12, ptr %4, align 1, !tbaa !123
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !111 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !122

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !124
  store i8 %12, ptr %4, align 1, !tbaa !123
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !111 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !122

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !124
  store i8 %12, ptr %4, align 1, !tbaa !123
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !111 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !111 {
  %2 = load i32, ptr %0, align 8, !tbaa !126
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !111 {
  %2 = load i32, ptr %0, align 8, !tbaa !126
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !111 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !127
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !111 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !127
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !111 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !111 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !111 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !111 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !128

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !111 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_clone_inlined_nodes(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !131 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %72, label %5, !prof !132

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %64, !prof !144

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 27
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %64, !prof !145

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !tbaa !146
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !147

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 18, i32 2
  %26 = load i8, ptr %25, align 8
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %64, !prof !145

29:                                               ; preds = %18, %24
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 14
  %31 = load ptr, ptr %30, align 8, !tbaa !148
  %32 = icmp ne ptr %31, null
  %33 = load ptr, ptr @cgraph_new_nodes, align 8
  %34 = icmp ne ptr %33, null
  %35 = select i1 %32, i1 true, i1 %34, !prof !149
  br i1 %35, label %64, label %36, !prof !149

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 19, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !147

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 257, ptr noundef nonnull @.str.1) #20
  br label %41

41:                                               ; preds = %36, %40
  %42 = load ptr, ptr %6, align 8, !tbaa !133
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 27
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 32
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %54, label %47, !prof !149

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 19, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !151
  %50 = load i32, ptr @overall_size, align 4, !tbaa !127
  %51 = sub nsw i32 %50, %49
  store i32 %51, ptr @overall_size, align 4, !tbaa !127
  %52 = load i32, ptr @nfunctions_inlined, align 4, !tbaa !127
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr @nfunctions_inlined, align 4, !tbaa !127
  br label %54

54:                                               ; preds = %47, %41
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 18, i32 2
  %56 = load i8, ptr %55, align 8
  %57 = and i8 %56, -3
  store i8 %57, ptr %55, align 8
  %58 = load ptr, ptr %6, align 8, !tbaa !133
  %59 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !152
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %62 = load i16, ptr %61, align 8, !tbaa !153
  %63 = zext i16 %62 to i32
  tail call fastcc void @update_noncloned_frequencies(ptr noundef %58, i32 noundef %60, i32 noundef %63)
  br label %72

64:                                               ; preds = %13, %29, %24, %5
  %65 = load i64, ptr %0, align 8, !tbaa !154
  %66 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %67 = load i32, ptr %66, align 8, !tbaa !152
  %68 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %69 = load i16, ptr %68, align 8, !tbaa !153
  %70 = zext i16 %69 to i32
  %71 = tail call ptr @cgraph_clone_node(ptr noundef %7, i64 noundef %65, i32 noundef %67, i32 noundef %70, i8 noundef zeroext %2, ptr noundef null) #20
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %0, ptr noundef %71) #20
  br label %72

72:                                               ; preds = %54, %64, %3
  %73 = phi i8 [ %1, %64 ], [ 0, %54 ], [ 0, %3 ]
  %74 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !155
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %75, i64 0, i32 19, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !150
  %78 = icmp eq ptr %77, null
  %79 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !133
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %80, i64 0, i32 19, i32 2
  %82 = select i1 %78, ptr %75, ptr %77, !prof !156
  store ptr %82, ptr %81, align 8, !tbaa !150
  %83 = getelementptr inbounds %struct.cgraph_node, ptr %75, i64 0, i32 19, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !157
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %75, i64 0, i32 18, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !158
  %87 = add nsw i64 %86, %84
  %88 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !133
  %90 = getelementptr inbounds %struct.cgraph_node, ptr %89, i64 0, i32 19, i32 1
  store i64 %87, ptr %90, align 8, !tbaa !157
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %89, i64 0, i32 18, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !158
  %93 = add nsw i64 %92, %87
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %89, i64 0, i32 19, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !150
  %96 = getelementptr inbounds %struct.cgraph_node, ptr %95, i64 0, i32 19
  %97 = load i64, ptr %96, align 8, !tbaa !159
  %98 = icmp slt i64 %97, %93
  br i1 %98, label %99, label %100, !prof !132

99:                                               ; preds = %72
  store i64 %93, ptr %96, align 8, !tbaa !159
  br label %100

100:                                              ; preds = %99, %72
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %89, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !112
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104, !prof !160

104:                                              ; preds = %100, %110
  %105 = phi ptr [ %112, %110 ], [ %102, %100 ]
  %106 = getelementptr inbounds %struct.cgraph_edge, ptr %105, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !161
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110, !prof !162

109:                                              ; preds = %104
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %105, i8 noundef zeroext %73, i8 noundef zeroext %2)
  br label %110

110:                                              ; preds = %104, %109
  %111 = getelementptr inbounds %struct.cgraph_edge, ptr %105, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !112
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %104, !prof !163, !llvm.loop !164

114:                                              ; preds = %110, %100
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_noncloned_frequencies(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !165 !PGOFuncName !166 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8, !prof !167

8:                                                ; preds = %3
  %9 = trunc i32 %2 to i16
  %10 = sext i32 %4 to i64
  br label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %6, %8 ], [ %31, %29 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !153
  %15 = add i16 %14, %9
  store i16 %15, ptr %13, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, %10
  %20 = sdiv i64 %19, 1000
  %21 = trunc i64 %20 to i32
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 100000)
  store i32 %22, ptr %16, align 8, !tbaa !152
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !161
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29, !prof !168

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !133
  tail call fastcc void @update_noncloned_frequencies(ptr noundef %28, i32 noundef %4, i32 noundef %2)
  br label %29

29:                                               ; preds = %11, %26
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !112
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11, !prof !169, !llvm.loop !170

33:                                               ; preds = %29, %3
  ret void
}

declare ptr @cgraph_clone_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_early_inlining() #11 !prof !171 !PGOFuncName !172 {
  %1 = load i32, ptr @flag_early_inlining, align 4, !tbaa !127
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @cgraph_early_inlining() #9 !prof !171 !PGOFuncName !173 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !112
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #20
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %5 = load i32, ptr %4, align 4, !tbaa !127
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %52, !prof !174

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !127
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52, !prof !174

11:                                               ; preds = %7
  %12 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %13 = getelementptr inbounds %struct.param_info, ptr %12, i64 9, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !175
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40, !prof !169

16:                                               ; preds = %11, %35
  %17 = phi i32 [ %31, %35 ], [ 0, %11 ]
  %18 = phi i32 [ %30, %35 ], [ 0, %11 ]
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %19, i32 3, i32 2, !prof !177
  %21 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %2, i32 noundef %20, i32 noundef 0), !range !178
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23, !prof !177

23:                                               ; preds = %16
  %24 = load i8, ptr @timevar_enable, align 1, !tbaa !123
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !169

26:                                               ; preds = %23
  tail call void @timevar_push_1(i32 noundef 47) #20
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr @current_function_decl, align 8, !tbaa !112
  %29 = tail call i32 @optimize_inline_calls(ptr noundef %28) #20
  %30 = or i32 %29, %18
  %31 = add nuw nsw i32 %17, 1
  %32 = load i8, ptr @timevar_enable, align 1, !tbaa !123
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34, !prof !169

34:                                               ; preds = %27
  tail call void @timevar_pop_1(i32 noundef 47) #20
  br label %35

35:                                               ; preds = %34, %27
  %36 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %37 = getelementptr inbounds %struct.param_info, ptr %36, i64 9, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !175
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %16, label %40, !prof !179, !llvm.loop !180

40:                                               ; preds = %16, %35, %11
  %41 = phi i32 [ 0, %11 ], [ %18, %16 ], [ %30, %35 ]
  %42 = phi i32 [ 0, %11 ], [ %17, %16 ], [ %31, %35 ]
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !174

45:                                               ; preds = %40
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.6, i32 noundef %42)
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr @cfun, align 8, !tbaa !112
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 20
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 33554432
  store i32 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %0, %7, %47
  %53 = phi i32 [ %41, %47 ], [ 0, %7 ], [ 0, %0 ]
  ret i32 %53
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_ipa_early_inlining() #12 !prof !181 !PGOFuncName !182 {
  %1 = load i32, ptr @flag_early_inlining, align 4, !tbaa !127
  %2 = icmp eq i32 %1, 0
  %3 = load i8, ptr @in_lto_p, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !168
  br i1 %5, label %16, label %6, !prof !168

6:                                                ; preds = %0
  %7 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !127
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr @flag_test_coverage, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10, !prof !168
  br i1 %11, label %16, label %12, !prof !168

12:                                               ; preds = %6
  %13 = load i32, ptr @profile_arc_flag, align 4, !tbaa !127
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %12, %0
  %17 = phi i8 [ 0, %0 ], [ 1, %6 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @compute_inline_parameters(ptr noundef %0) local_unnamed_addr #9 !prof !183 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !184

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1865, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, ptr @optimize, align 4, !tbaa !127
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !185

10:                                               ; preds = %7
  %11 = tail call i64 @estimated_stack_frame_size() #20
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !158
  store i64 %13, ptr %2, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 1
  store i64 0, ptr %15, align 8, !tbaa !157
  %16 = load ptr, ptr %0, align 8, !tbaa !146
  %17 = tail call zeroext i8 @tree_inlinable_function_p(ptr noundef %16) #20
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = shl i8 %17, 3
  %21 = and i8 %20, 8
  %22 = and i8 %19, -9
  %23 = or disjoint i8 %22, %21
  store i8 %23, ptr %18, align 8
  %24 = and i8 %17, 1
  %25 = icmp ne i8 %24, 0
  %26 = and i8 %19, 16
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 %27, i1 false, !prof !184
  br i1 %28, label %29, label %37, !prof !184

29:                                               ; preds = %12
  %30 = load ptr, ptr %0, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 22
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 16
  %36 = or disjoint i8 %35, %23
  store i8 %36, ptr %18, align 8
  br label %37

37:                                               ; preds = %29, %12
  %38 = load ptr, ptr %0, align 8, !tbaa !146
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !123
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !184

45:                                               ; preds = %37
  %46 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #20
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.21, ptr noundef %46)
  br label %48

48:                                               ; preds = %45, %37
  %49 = icmp eq ptr %40, null
  br i1 %49, label %54, label %50, !prof !185

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !186
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55, !prof !185

54:                                               ; preds = %50, %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1793, ptr noundef nonnull @.str.1) #20
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !186
  %58 = load ptr, ptr %57, align 8, !tbaa !188
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !190
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !192
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %410, label %75, !prof !193

64:                                               ; preds = %401, %98
  %65 = phi i32 [ %80, %98 ], [ %394, %401 ]
  %66 = phi i32 [ %79, %98 ], [ %123, %401 ]
  %67 = phi i64 [ %78, %98 ], [ %395, %401 ]
  %68 = phi i64 [ %77, %98 ], [ %122, %401 ]
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !190
  %71 = load ptr, ptr %56, align 8, !tbaa !186
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %405, label %75, !prof !194, !llvm.loop !195

75:                                               ; preds = %55, %64
  %76 = phi ptr [ %70, %64 ], [ %60, %55 ]
  %77 = phi i64 [ %68, %64 ], [ 0, %55 ]
  %78 = phi i64 [ %67, %64 ], [ 0, %55 ]
  %79 = phi i32 [ %66, %64 ], [ 0, %55 ]
  %80 = phi i32 [ %65, %64 ], [ 0, %55 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !146
  %82 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %81, ptr noundef %76) #20
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 13
  %84 = load i32, ptr %83, align 8, !tbaa !196, !noalias !197
  %85 = and i32 %84, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93, !prof !200

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !123, !noalias !197
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91, !prof !201

91:                                               ; preds = %87
  %92 = load ptr, ptr %89, align 8, !tbaa !202, !noalias !197
  br label %93

93:                                               ; preds = %91, %87, %75
  %94 = phi ptr [ %92, %91 ], [ null, %87 ], [ null, %75 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !201

96:                                               ; preds = %93
  %97 = load ptr, ptr %94, align 8, !tbaa !204, !noalias !197
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi ptr [ %97, %96 ], [ null, %93 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %64, label %101, !prof !206

101:                                              ; preds = %98, %401
  %102 = phi i64 [ %122, %401 ], [ %77, %98 ]
  %103 = phi i64 [ %395, %401 ], [ %78, %98 ]
  %104 = phi i32 [ %123, %401 ], [ %79, %98 ]
  %105 = phi i32 [ %394, %401 ], [ %80, %98 ]
  %106 = phi ptr [ %403, %401 ], [ %99, %98 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !207
  %108 = tail call i32 @estimate_num_insns(ptr noundef %107, ptr noundef nonnull @eni_size_weights) #20
  %109 = tail call i32 @estimate_num_insns(ptr noundef %107, ptr noundef nonnull @eni_time_weights) #20
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112, !prof !209

112:                                              ; preds = %101
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !127
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.22, i32 noundef %82, i32 noundef %108, i32 noundef %109)
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !112
  tail call void @print_gimple_stmt(ptr noundef %118, ptr noundef %107, i32 noundef 0, i32 noundef 0) #20
  br label %119

119:                                              ; preds = %116, %112, %101
  %120 = mul nsw i32 %109, %82
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %102, %121
  %123 = add nsw i32 %108, %104
  %124 = load i32, ptr %107, align 8
  %125 = trunc i32 %124 to i8
  switch i8 %125, label %393 [
    i8 9, label %382
    i8 6, label %126
  ], !prof !210

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %107, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !123
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %393, !prof !211

130:                                              ; preds = %126
  switch i8 %125, label %133 [
    i8 6, label %131
    i8 1, label %131
    i8 8, label %134
  ], !prof !212

131:                                              ; preds = %130, %130
  %132 = lshr i32 %124, 16
  br label %134

133:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %134

134:                                              ; preds = %133, %131, %130
  %135 = phi i32 [ %132, %131 ], [ 0, %133 ], [ 59, %130 ]
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !123
  %139 = icmp eq i8 %138, 3
  br i1 %139, label %140, label %160, !prof !213

140:                                              ; preds = %134
  %141 = load i32, ptr %107, align 8
  %142 = and i32 %141, 255
  %143 = add nsw i32 %142, -1
  %144 = icmp ult i32 %143, 9
  tail call void @llvm.assume(i1 %144)
  %145 = zext nneg i32 %142 to i64
  %146 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !127
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !214
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153, !prof !215

152:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %153

153:                                              ; preds = %152, %140
  %154 = getelementptr inbounds i8, ptr %107, i64 %150
  %155 = getelementptr inbounds ptr, ptr %154, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !112
  %157 = load i64, ptr %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = and i32 %158, 65535
  br label %160

160:                                              ; preds = %153, %134
  %161 = phi i32 [ %159, %153 ], [ %135, %134 ]
  %162 = icmp eq i32 %161, 113
  br i1 %162, label %271, label %163, !prof !216

163:                                              ; preds = %160
  %164 = load i32, ptr %107, align 8
  %165 = trunc i32 %164 to i8
  switch i8 %165, label %168 [
    i8 6, label %166
    i8 1, label %166
    i8 8, label %169
  ], !prof !212

166:                                              ; preds = %163, %163
  %167 = lshr i32 %164, 16
  br label %169

168:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %169

169:                                              ; preds = %168, %166, %163
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ], [ 59, %163 ]
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !123
  %174 = icmp eq i8 %173, 3
  br i1 %174, label %175, label %195, !prof !213

175:                                              ; preds = %169
  %176 = load i32, ptr %107, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -1
  %179 = icmp ult i32 %178, 9
  tail call void @llvm.assume(i1 %179)
  %180 = zext nneg i32 %177 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !127
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !214
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188, !prof !215

187:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %188

188:                                              ; preds = %187, %175
  %189 = getelementptr inbounds i8, ptr %107, i64 %185
  %190 = getelementptr inbounds ptr, ptr %189, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !112
  %192 = load i64, ptr %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = and i32 %193, 65535
  br label %195

195:                                              ; preds = %188, %169
  %196 = phi i32 [ %194, %188 ], [ %170, %169 ]
  %197 = icmp eq i32 %196, 116
  br i1 %197, label %271, label %198, !prof !217

198:                                              ; preds = %195
  %199 = load i32, ptr %107, align 8
  %200 = trunc i32 %199 to i8
  switch i8 %200, label %203 [
    i8 6, label %201
    i8 1, label %201
    i8 8, label %204
  ], !prof !218

201:                                              ; preds = %198, %198
  %202 = lshr i32 %199, 16
  br label %204

203:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %204

204:                                              ; preds = %203, %201, %198
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ], [ 59, %198 ]
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !123
  %209 = icmp eq i8 %208, 3
  br i1 %209, label %210, label %230, !prof !219

210:                                              ; preds = %204
  %211 = load i32, ptr %107, align 8
  %212 = and i32 %211, 255
  %213 = add nsw i32 %212, -1
  %214 = icmp ult i32 %213, 9
  tail call void @llvm.assume(i1 %214)
  %215 = zext nneg i32 %212 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !127
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !214
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223, !prof !215

222:                                              ; preds = %210
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %223

223:                                              ; preds = %222, %210
  %224 = getelementptr inbounds i8, ptr %107, i64 %220
  %225 = getelementptr inbounds ptr, ptr %224, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !112
  %227 = load i64, ptr %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = and i32 %228, 65535
  br label %230

230:                                              ; preds = %223, %204
  %231 = phi i32 [ %229, %223 ], [ %205, %204 ]
  %232 = icmp eq i32 %231, 118
  br i1 %232, label %271, label %233, !prof !215

233:                                              ; preds = %230
  %234 = load i32, ptr %107, align 8
  %235 = trunc i32 %234 to i8
  switch i8 %235, label %238 [
    i8 6, label %236
    i8 1, label %236
    i8 8, label %239
  ], !prof !218

236:                                              ; preds = %233, %233
  %237 = lshr i32 %234, 16
  br label %239

238:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %239

239:                                              ; preds = %238, %236, %233
  %240 = phi i32 [ %237, %236 ], [ 0, %238 ], [ 59, %233 ]
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !123
  %244 = icmp eq i8 %243, 3
  br i1 %244, label %245, label %265, !prof !219

245:                                              ; preds = %239
  %246 = load i32, ptr %107, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -1
  %249 = icmp ult i32 %248, 9
  tail call void @llvm.assume(i1 %249)
  %250 = zext nneg i32 %247 to i64
  %251 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !127
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !214
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258, !prof !215

257:                                              ; preds = %245
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %258

258:                                              ; preds = %257, %245
  %259 = getelementptr inbounds i8, ptr %107, i64 %255
  %260 = getelementptr inbounds ptr, ptr %259, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !112
  %262 = load i64, ptr %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = and i32 %263, 65535
  br label %265

265:                                              ; preds = %258, %239
  %266 = phi i32 [ %264, %258 ], [ %240, %239 ]
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !123
  %270 = icmp eq i8 %269, 3
  br i1 %270, label %271, label %393, !prof !219

271:                                              ; preds = %265, %230, %195, %160
  %272 = load i32, ptr %107, align 8
  %273 = and i32 %272, 255
  %274 = add nsw i32 %273, -10
  %275 = icmp ult i32 %274, -9
  br i1 %275, label %289, label %276, !prof !216

276:                                              ; preds = %271
  %277 = zext nneg i32 %273 to i64
  %278 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !127
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !214
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285, !prof !216

284:                                              ; preds = %276
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %285

285:                                              ; preds = %284, %276
  %286 = getelementptr inbounds i8, ptr %107, i64 %282
  %287 = getelementptr inbounds ptr, ptr %286, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !112
  br label %289

289:                                              ; preds = %285, %271
  %290 = phi ptr [ %288, %285 ], [ null, %271 ]
  %291 = load i32, ptr %107, align 8
  %292 = and i32 %291, 255
  %293 = add nsw i32 %292, -10
  %294 = icmp ult i32 %293, -9
  br i1 %294, label %307, label %295, !prof !216

295:                                              ; preds = %289
  %296 = zext nneg i32 %292 to i64
  %297 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !127
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %299
  %301 = load i64, ptr %300, align 8, !tbaa !214
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %304, !prof !216

303:                                              ; preds = %295
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %304

304:                                              ; preds = %303, %295
  %305 = getelementptr inbounds i8, ptr %107, i64 %301
  %306 = load ptr, ptr %305, align 8, !tbaa !112
  br label %307

307:                                              ; preds = %304, %289
  %308 = phi ptr [ %306, %304 ], [ null, %289 ]
  br label %309

309:                                              ; preds = %316, %307
  %310 = phi ptr [ %308, %307 ], [ %318, %316 ]
  %311 = load i64, ptr %310, align 8
  %312 = trunc i64 %311 to i16
  switch i16 %312, label %313 [
    i16 42, label %316
    i16 41, label %316
    i16 45, label %316
    i16 46, label %316
    i16 118, label %316
    i16 43, label %316
    i16 44, label %316
  ], !prof !220

313:                                              ; preds = %309
  %314 = and i64 %311, 65535
  %315 = icmp eq i64 %314, 47
  br i1 %315, label %316, label %319, !prof !221

316:                                              ; preds = %309, %309, %309, %309, %309, %309, %313, %309
  %317 = getelementptr inbounds %struct.tree_exp, ptr %310, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !123
  br label %309, !llvm.loop !222

319:                                              ; preds = %313, %323
  %320 = phi ptr [ %325, %323 ], [ %290, %313 ]
  %321 = load i64, ptr %320, align 8
  %322 = trunc i64 %321 to i16
  switch i16 %322, label %336 [
    i16 42, label %323
    i16 41, label %323
    i16 45, label %323
    i16 46, label %323
    i16 118, label %323
    i16 43, label %323
    i16 44, label %323
    i16 121, label %323
    i16 47, label %323
    i16 34, label %335
    i16 141, label %326
  ], !prof !223

323:                                              ; preds = %319, %319, %319, %319, %319, %319, %319, %319, %319
  %324 = getelementptr inbounds %struct.tree_exp, ptr %320, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !123
  br label %319, !llvm.loop !224

326:                                              ; preds = %319
  %327 = and i64 %321, 4294967296
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %336, label %329, !prof !225

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.tree_ssa_name, ptr %320, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !123
  %332 = load i64, ptr %331, align 8
  %333 = and i64 %332, 65535
  %334 = icmp eq i64 %333, 34
  br i1 %334, label %335, label %336, !prof !226

335:                                              ; preds = %319, %329
  br label %336

336:                                              ; preds = %319, %329, %335, %326
  %337 = phi i1 [ false, %335 ], [ true, %326 ], [ true, %329 ], [ true, %319 ]
  %338 = phi i8 [ 1, %335 ], [ 0, %326 ], [ 0, %329 ], [ 0, %319 ]
  br i1 %337, label %343, label %339, !prof !227

339:                                              ; preds = %336
  %340 = tail call zeroext i8 @is_gimple_reg(ptr noundef %308) #20
  %341 = icmp ne i8 %340, 0
  %342 = zext i1 %341 to i8
  br label %343

343:                                              ; preds = %339, %336
  %344 = phi i8 [ 0, %336 ], [ %342, %339 ]
  %345 = load i64, ptr %310, align 8
  %346 = trunc i64 %345 to i16
  switch i16 %346, label %368 [
    i16 34, label %358
    i16 141, label %347
    i16 36, label %367
  ], !prof !228

347:                                              ; preds = %343
  %348 = and i64 %345, 4294967296
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %360, label %350, !prof !229

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.tree_ssa_name, ptr %310, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !123
  %353 = load i64, ptr %352, align 8
  %354 = and i64 %353, 65535
  %355 = icmp ne i64 %354, 34
  %356 = icmp eq ptr %310, %308
  %357 = select i1 %355, i1 true, i1 %356, !prof !149
  br i1 %357, label %360, label %367, !prof !149

358:                                              ; preds = %343
  %359 = icmp eq ptr %310, %308
  br i1 %359, label %360, label %367, !prof !168

360:                                              ; preds = %358, %350, %347
  switch i16 %346, label %368 [
    i16 36, label %367
    i16 141, label %361
  ], !prof !230

361:                                              ; preds = %360
  %362 = getelementptr inbounds %struct.tree_ssa_name, ptr %310, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !123
  %364 = load i64, ptr %363, align 8
  %365 = and i64 %364, 65535
  %366 = icmp eq i64 %365, 36
  br i1 %366, label %367, label %368, !prof !231

367:                                              ; preds = %343, %350, %361, %360, %358
  br label %368

368:                                              ; preds = %361, %343, %367, %360
  %369 = phi i8 [ 1, %367 ], [ %344, %360 ], [ %344, %343 ], [ %344, %361 ]
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %378, label %371, !prof !232

371:                                              ; preds = %368
  %372 = tail call zeroext i8 @is_gimple_reg(ptr noundef %290) #20
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %377, !prof !233

374:                                              ; preds = %371
  %375 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %290) #20
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %378, label %377, !prof !234

377:                                              ; preds = %374, %371
  br label %378

378:                                              ; preds = %377, %374, %368
  %379 = phi i8 [ 1, %377 ], [ %338, %374 ], [ %338, %368 ]
  %380 = icmp eq i8 %379, 0
  %381 = or i1 %370, %380
  br i1 %381, label %393, label %382, !prof !232

382:                                              ; preds = %378, %119
  %383 = add nsw i32 %108, %105
  %384 = add nsw i64 %103, %121
  %385 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %386 = icmp eq ptr %385, null
  br i1 %386, label %393, label %387, !prof !235

387:                                              ; preds = %382
  %388 = load i32, ptr @dump_flags, align 4, !tbaa !127
  %389 = and i32 %388, 8
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %387
  %392 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr nonnull %385)
  br label %393

393:                                              ; preds = %382, %119, %265, %378, %126, %391, %387
  %394 = phi i32 [ %383, %391 ], [ %383, %387 ], [ %105, %126 ], [ %105, %378 ], [ %105, %265 ], [ %105, %119 ], [ %383, %382 ]
  %395 = phi i64 [ %384, %391 ], [ %384, %387 ], [ %103, %126 ], [ %103, %378 ], [ %103, %265 ], [ %103, %119 ], [ %384, %382 ]
  %396 = icmp sgt i64 %122, -1
  br i1 %396, label %398, label %397, !prof !209

397:                                              ; preds = %393
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1819, ptr noundef nonnull @.str.1) #20
  br label %398

398:                                              ; preds = %397, %393
  %399 = icmp sgt i32 %123, -1
  br i1 %399, label %401, label %400, !prof !209

400:                                              ; preds = %398
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #20
  br label %401

401:                                              ; preds = %400, %398
  %402 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %106, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !236
  %404 = icmp eq ptr %403, null
  br i1 %404, label %64, label %101, !prof !237, !llvm.loop !238

405:                                              ; preds = %64
  %406 = add nsw i64 %68, 500
  %407 = sdiv i64 %406, 1000
  %408 = add nsw i64 %67, 500
  %409 = sdiv i64 %408, 1000
  br label %410

410:                                              ; preds = %405, %55
  %411 = phi i32 [ 0, %55 ], [ %65, %405 ]
  %412 = phi i32 [ 0, %55 ], [ %66, %405 ]
  %413 = phi i64 [ 0, %55 ], [ %409, %405 ]
  %414 = phi i64 [ 0, %55 ], [ %407, %405 ]
  %415 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %416 = icmp eq ptr %415, null
  br i1 %416, label %421, label %417, !prof !184

417:                                              ; preds = %410
  %418 = trunc i64 %414 to i32
  %419 = trunc i64 %413 to i32
  %420 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %415, ptr noundef nonnull @.str.24, i32 noundef %418, i32 noundef %419, i32 noundef %412, i32 noundef %411)
  br label %421

421:                                              ; preds = %417, %410
  %422 = load i32, ptr @eni_time_weights, align 4, !tbaa !239
  %423 = zext i32 %422 to i64
  %424 = add nsw i64 %413, %423
  %425 = load i32, ptr @eni_size_weights, align 4, !tbaa !239
  %426 = add i32 %425, %411
  %427 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !123
  %429 = load i64, ptr %428, align 8
  %430 = and i64 %429, 65535
  %431 = icmp eq i64 %430, 19
  br i1 %431, label %437, label %432, !prof !185

432:                                              ; preds = %421
  %433 = tail call i32 @estimate_move_cost(ptr noundef nonnull %428) #20
  %434 = sext i32 %433 to i64
  %435 = add nsw i64 %424, %434
  %436 = add nsw i32 %433, %426
  br label %437

437:                                              ; preds = %432, %421
  %438 = phi i32 [ %426, %421 ], [ %436, %432 ]
  %439 = phi i64 [ %424, %421 ], [ %435, %432 ]
  %440 = load ptr, ptr %0, align 8, !tbaa !146
  %441 = getelementptr inbounds %struct.tree_decl_non_common, ptr %440, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !123
  %443 = icmp eq ptr %442, null
  br i1 %443, label %464, label %444, !prof !193

444:                                              ; preds = %437, %458
  %445 = phi ptr [ %462, %458 ], [ %442, %437 ]
  %446 = phi i64 [ %460, %458 ], [ %439, %437 ]
  %447 = phi i32 [ %459, %458 ], [ %438, %437 ]
  %448 = getelementptr inbounds %struct.tree_common, ptr %445, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !123
  %450 = load i64, ptr %449, align 8
  %451 = and i64 %450, 65535
  %452 = icmp eq i64 %451, 19
  br i1 %452, label %458, label %453, !prof !185

453:                                              ; preds = %444
  %454 = tail call i32 @estimate_move_cost(ptr noundef nonnull %449) #20
  %455 = sext i32 %454 to i64
  %456 = add nsw i64 %446, %455
  %457 = add nsw i32 %454, %447
  br label %458

458:                                              ; preds = %453, %444
  %459 = phi i32 [ %447, %444 ], [ %457, %453 ]
  %460 = phi i64 [ %446, %444 ], [ %456, %453 ]
  %461 = getelementptr inbounds %struct.tree_common, ptr %445, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !123
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %444, !prof !241, !llvm.loop !242

464:                                              ; preds = %458, %437
  %465 = phi i32 [ %438, %437 ], [ %459, %458 ]
  %466 = phi i64 [ %439, %437 ], [ %460, %458 ]
  %467 = tail call i64 @llvm.smin.i64(i64 %466, i64 1000000000)
  %468 = tail call i64 @llvm.smin.i64(i64 %414, i64 1000000000)
  %469 = trunc i64 %468 to i32
  %470 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 3
  store i32 %469, ptr %470, align 8, !tbaa !243
  %471 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  store i32 %412, ptr %471, align 8, !tbaa !244
  %472 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %473 = icmp eq ptr %472, null
  br i1 %473, label %477, label %474, !prof !184

474:                                              ; preds = %464
  %475 = trunc i64 %467 to i32
  %476 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %472, ptr noundef nonnull @.str.25, i32 noundef %469, i32 noundef %475, i32 noundef %412, i32 noundef %465)
  br label %477

477:                                              ; preds = %464, %474
  %478 = trunc i64 %467 to i32
  %479 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 4
  store i32 %478, ptr %479, align 4, !tbaa !245
  %480 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 2
  store i32 %465, ptr %480, align 4, !tbaa !246
  %481 = load i32, ptr %470, align 8, !tbaa !243
  %482 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 3
  store i32 %481, ptr %482, align 8, !tbaa !247
  %483 = load i32, ptr %471, align 8, !tbaa !244
  %484 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  store i32 %483, ptr %484, align 4, !tbaa !151
  ret i32 0
}

declare i64 @estimated_stack_frame_size() local_unnamed_addr #3

declare zeroext i8 @tree_inlinable_function_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @compute_inline_parameters_for_current() #9 !prof !248 !PGOFuncName !249 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !112
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #20
  %3 = tail call i32 @compute_inline_parameters(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cgraph_decide_inlining() #9 !prof !181 !PGOFuncName !250 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !127
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #20
  %8 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !112
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %8) #20
  %9 = load i8, ptr @in_lto_p, align 1, !tbaa !123
  %10 = icmp ne i8 %9, 0
  %11 = load i32, ptr @flag_indirect_inlining, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false, !prof !168
  br i1 %13, label %14, label %15, !prof !168

14:                                               ; preds = %0
  tail call void @ipa_update_after_lto_read() #20
  br label %15

15:                                               ; preds = %14, %0
  store i64 0, ptr @max_count, align 8, !tbaa !214
  store i64 0, ptr @max_benefit, align 8, !tbaa !214
  %16 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %18, !prof !251

18:                                               ; preds = %15, %58
  %19 = phi ptr [ %61, %58 ], [ %16, %15 ]
  %20 = phi i32 [ %59, %58 ], [ 0, %15 ]
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 27
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %58, label %25, !prof !252

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 18, i32 1, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !244
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 19, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !151
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %32, label %31, !prof !253

31:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1157, ptr noundef nonnull @.str.1) #20
  br label %32

32:                                               ; preds = %25, %31
  %33 = load i32, ptr %28, align 4, !tbaa !151
  %34 = add nsw i32 %33, %20
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !112
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38, !prof !254

38:                                               ; preds = %32
  %39 = load i64, ptr @max_count, align 8, !tbaa !214
  br label %40

40:                                               ; preds = %38, %46
  %41 = phi ptr [ %49, %46 ], [ %36, %38 ]
  %42 = phi i64 [ %47, %46 ], [ %39, %38 ]
  %43 = load i64, ptr %41, align 8, !tbaa !154
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46, !prof !255

45:                                               ; preds = %40
  store i64 %43, ptr @max_count, align 8, !tbaa !214
  br label %46

46:                                               ; preds = %40, %45
  %47 = phi i64 [ %42, %40 ], [ %43, %45 ]
  %48 = getelementptr inbounds %struct.cgraph_edge, ptr %41, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !112
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %40, !prof !256, !llvm.loop !257

51:                                               ; preds = %46, %32
  %52 = load i64, ptr @max_benefit, align 8, !tbaa !214
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 18, i32 1, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !245
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %58, !prof !258

57:                                               ; preds = %51
  store i64 %55, ptr @max_benefit, align 8, !tbaa !214
  br label %58

58:                                               ; preds = %51, %57, %18
  %59 = phi i32 [ %20, %18 ], [ %34, %57 ], [ %34, %51 ]
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !112
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %18, !prof !259, !llvm.loop !260

63:                                               ; preds = %58, %15
  %64 = phi i32 [ 0, %15 ], [ %59, %58 ]
  %65 = load i8, ptr @in_lto_p, align 1, !tbaa !123
  %66 = icmp eq i8 %65, 0
  %67 = load i64, ptr @max_count, align 8
  %68 = icmp ne i64 %67, 0
  %69 = select i1 %66, i1 %68, i1 false, !prof !169
  br i1 %69, label %70, label %77, !prof !168

70:                                               ; preds = %63
  %71 = load ptr, ptr @profile_info, align 8, !tbaa !112
  %72 = icmp ne ptr %71, null
  %73 = load i32, ptr @flag_branch_probabilities, align 4
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1167, ptr noundef nonnull @.str.1) #20
  br label %77

77:                                               ; preds = %63, %70, %76
  store i32 %64, ptr @overall_size, align 4, !tbaa !127
  %78 = tail call i32 @cgraph_postorder(ptr noundef %7) #20
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !169

81:                                               ; preds = %77
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.27, i32 noundef %64)
  br label %83

83:                                               ; preds = %81, %77
  %84 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !112
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86, !prof !251

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %90, %86 ], [ %84, %83 ]
  %88 = getelementptr inbounds %struct.cgraph_node, ptr %87, i64 0, i32 16
  store ptr null, ptr %88, align 8, !tbaa !261
  %89 = getelementptr inbounds %struct.cgraph_node, ptr %87, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !112
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %86, !prof !259, !llvm.loop !262

92:                                               ; preds = %86, %83
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95, !prof !169

95:                                               ; preds = %92
  %96 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 35, i64 1, ptr nonnull %93)
  br label %97

97:                                               ; preds = %95, %92
  %98 = icmp sgt i32 %78, 0
  %99 = zext i32 %78 to i64
  br label %103

100:                                              ; preds = %212, %103
  %101 = phi i8 [ 0, %103 ], [ %213, %212 ]
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %215, label %103, !prof !169, !llvm.loop !263

103:                                              ; preds = %97, %100
  br i1 %98, label %104, label %100, !prof !264

104:                                              ; preds = %103, %212
  %105 = phi i64 [ %107, %212 ], [ %99, %103 ]
  %106 = phi i8 [ %213, %212 ], [ 0, %103 ]
  %107 = add nsw i64 %105, -1
  %108 = getelementptr inbounds ptr, ptr %7, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !112
  %110 = load ptr, ptr %109, align 8, !tbaa !146
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %110, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !123
  %113 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %112) #20
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115, !prof !265

115:                                              ; preds = %104
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = tail call ptr @cgraph_node_name(ptr noundef nonnull %109) #20
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %116, ptr noundef nonnull @.str.8, ptr noundef %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef nonnull %109, i32 noundef 4, i32 noundef 0), !range !178
  br label %123

123:                                              ; preds = %121, %104
  %124 = getelementptr inbounds %struct.cgraph_node, ptr %109, i64 0, i32 18, i32 2
  %125 = load i8, ptr %124, align 8
  %126 = and i8 %125, 16
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %212, label %128, !prof !265

128:                                              ; preds = %123
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = tail call ptr @cgraph_node_name(ptr noundef nonnull %109) #20
  %133 = getelementptr inbounds %struct.cgraph_node, ptr %109, i64 0, i32 19, i32 4
  %134 = load i32, ptr %133, align 4, !tbaa !151
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %129, ptr noundef nonnull @.str.29, ptr noundef %132, i32 noundef %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, ptr @overall_size, align 4, !tbaa !127
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %109, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !135
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %192, %136
  %142 = phi i8 [ %106, %136 ], [ %193, %192 ]
  %143 = load ptr, ptr %138, align 8, !tbaa !112
  %144 = icmp eq ptr %143, null
  br i1 %144, label %205, label %195

145:                                              ; preds = %136, %192
  %146 = phi ptr [ %149, %192 ], [ %139, %136 ]
  %147 = phi i8 [ %193, %192 ], [ %106, %136 ]
  %148 = getelementptr inbounds %struct.cgraph_edge, ptr %146, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !143
  %150 = getelementptr inbounds %struct.cgraph_edge, ptr %146, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !161
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %192, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.cgraph_edge, ptr %146, i64 0, i32 14
  %155 = load i8, ptr %154, align 2
  %156 = and i8 %155, 2
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %192

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.cgraph_edge, ptr %146, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !155
  %161 = getelementptr inbounds %struct.cgraph_edge, ptr %146, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !133
  %163 = getelementptr inbounds %struct.cgraph_node, ptr %160, i64 0, i32 19, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !150
  %165 = icmp eq ptr %164, null
  %166 = load ptr, ptr %162, align 8, !tbaa !146
  %167 = select i1 %165, ptr %160, ptr %164
  %168 = load ptr, ptr %167, align 8, !tbaa !146
  %169 = icmp eq ptr %166, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %158
  %171 = getelementptr inbounds %struct.cgraph_node, ptr %162, i64 0, i32 18, i32 2
  %172 = load i8, ptr %171, align 8
  %173 = and i8 %172, 16
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %174, i32 1, i32 12
  store i32 %175, ptr %150, align 4, !tbaa !127
  br label %192

176:                                              ; preds = %158
  %177 = tail call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %146) #20
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %176
  %180 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %146, i8 noundef zeroext 1, ptr noundef null)
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, i8 %147, i8 1
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %184 = icmp eq ptr %183, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %179
  %186 = load ptr, ptr %159, align 8, !tbaa !155
  %187 = tail call ptr @cgraph_node_name(ptr noundef %186) #20
  %188 = load ptr, ptr %159, align 8, !tbaa !155
  %189 = getelementptr inbounds %struct.cgraph_node, ptr %188, i64 0, i32 19, i32 4
  %190 = load i32, ptr %189, align 4, !tbaa !151
  %191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.30, ptr noundef %187, i32 noundef %190)
  br label %192

192:                                              ; preds = %170, %179, %185, %176, %145, %153
  %193 = phi i8 [ %147, %153 ], [ %147, %170 ], [ %182, %185 ], [ %182, %179 ], [ %147, %176 ], [ %147, %145 ]
  %194 = icmp eq ptr %149, null
  br i1 %194, label %141, label %145, !llvm.loop !266

195:                                              ; preds = %141, %201
  %196 = phi ptr [ %203, %201 ], [ %143, %141 ]
  %197 = getelementptr inbounds %struct.cgraph_edge, ptr %196, i64 0, i32 9
  %198 = load i32, ptr %197, align 8, !tbaa !161
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  store i32 12, ptr %197, align 8, !tbaa !161
  br label %201

201:                                              ; preds = %195, %200
  %202 = getelementptr inbounds %struct.cgraph_edge, ptr %196, i64 0, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !112
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %195, !llvm.loop !267

205:                                              ; preds = %201, %141
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = load i32, ptr @overall_size, align 4, !tbaa !127
  %210 = sub nsw i32 %209, %137
  %211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %206, ptr noundef nonnull @.str.31, i32 noundef %210)
  br label %212

212:                                              ; preds = %205, %208, %123
  %213 = phi i8 [ %106, %123 ], [ %142, %208 ], [ %142, %205 ]
  %214 = icmp sgt i64 %105, 1
  br i1 %214, label %104, label %100, !prof !268, !llvm.loop !269

215:                                              ; preds = %100
  %216 = tail call ptr @fibheap_new() #20
  %217 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !112
  %218 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220, !prof !168

220:                                              ; preds = %215
  %221 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #20
  store ptr %221, ptr %3, align 8, !tbaa !112
  br label %222

222:                                              ; preds = %220, %215
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225, !prof !169

225:                                              ; preds = %222
  %226 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 32, i64 1, ptr nonnull %223)
  br label %227

227:                                              ; preds = %225, %222
  %228 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !112
  %229 = icmp eq ptr %228, null
  br i1 %229, label %333, label %230, !prof !251

230:                                              ; preds = %227, %328
  %231 = phi ptr [ %331, %328 ], [ %228, %227 ]
  %232 = phi i32 [ %329, %328 ], [ undef, %227 ]
  %233 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 18, i32 2
  %234 = load i8, ptr %233, align 8
  %235 = and i8 %234, 8
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %328, label %237, !prof !252

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !135
  %240 = icmp ne ptr %239, null
  %241 = and i8 %234, 16
  %242 = icmp eq i8 %241, 0
  %243 = and i1 %242, %240
  br i1 %243, label %244, label %328, !prof !270

244:                                              ; preds = %237
  %245 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247, !prof !271

247:                                              ; preds = %244
  %248 = tail call ptr @cgraph_node_name(ptr noundef nonnull %231) #20
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %245, ptr noundef nonnull @.str.14, ptr noundef %248)
  br label %250

250:                                              ; preds = %247, %244
  %251 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %251, align 8, !tbaa !272
  %252 = load ptr, ptr %231, align 8, !tbaa !146
  %253 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !127
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %260, !prof !273

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.tree_function_decl, ptr %252, i64 0, i32 5
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 2097152
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %284, label %260

260:                                              ; preds = %255, %250
  %261 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 27
  %262 = load i16, ptr %261, align 4
  %263 = and i16 %262, 32
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %284, label %265, !prof !273

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.tree_function_decl, ptr %252, i64 0, i32 5
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 2097152
  %269 = icmp eq i32 %268, 0
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 19, i32 4
  %271 = load i32, ptr %270, align 4, !tbaa !151
  %272 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  br i1 %269, label %278, label %273, !prof !274

273:                                              ; preds = %265
  %274 = getelementptr inbounds %struct.param_info, ptr %272, i64 2, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !175
  %276 = icmp slt i32 %271, %275
  br i1 %276, label %284, label %277, !prof !174

277:                                              ; preds = %273
  br label %284

278:                                              ; preds = %265
  %279 = getelementptr inbounds %struct.param_info, ptr %272, i64 3, i32 1
  %280 = load i32, ptr %279, align 8, !tbaa !175
  %281 = icmp slt i32 %271, %280
  %282 = select i1 %281, i32 %232, i32 10, !prof !275
  %283 = zext i1 %281 to i8
  br label %284

284:                                              ; preds = %278, %260, %255, %273, %277
  %285 = phi i32 [ %232, %273 ], [ 9, %277 ], [ 6, %255 ], [ 3, %260 ], [ %282, %278 ]
  %286 = phi i8 [ 1, %273 ], [ 0, %277 ], [ 0, %255 ], [ 0, %260 ], [ %283, %278 ]
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288, !prof !276

288:                                              ; preds = %284
  %289 = load ptr, ptr %238, align 8, !tbaa !112
  %290 = icmp eq ptr %289, null
  br i1 %290, label %328, label %310, !prof !277

291:                                              ; preds = %284
  %292 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294, !prof !278

294:                                              ; preds = %291
  %295 = tail call ptr @cgraph_inline_failed_string(i32 noundef %285) #20
  %296 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %292, ptr noundef nonnull @.str.47, ptr noundef %295)
  br label %297

297:                                              ; preds = %294, %291
  %298 = load ptr, ptr %238, align 8, !tbaa !112
  %299 = icmp eq ptr %298, null
  br i1 %299, label %328, label %300, !prof !279

300:                                              ; preds = %297, %306
  %301 = phi ptr [ %308, %306 ], [ %298, %297 ]
  %302 = getelementptr inbounds %struct.cgraph_edge, ptr %301, i64 0, i32 9
  %303 = load i32, ptr %302, align 8, !tbaa !161
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305, !prof !280

305:                                              ; preds = %300
  store i32 %285, ptr %302, align 8, !tbaa !161
  br label %306

306:                                              ; preds = %305, %300
  %307 = getelementptr inbounds %struct.cgraph_edge, ptr %301, i64 0, i32 4
  %308 = load ptr, ptr %307, align 8, !tbaa !112
  %309 = icmp eq ptr %308, null
  br i1 %309, label %328, label %300, !prof !281, !llvm.loop !282

310:                                              ; preds = %288, %324
  %311 = phi ptr [ %326, %324 ], [ %289, %288 ]
  %312 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 9
  %313 = load i32, ptr %312, align 8, !tbaa !161
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %324, label %315, !prof !283

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 8
  %317 = load ptr, ptr %316, align 8, !tbaa !284
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319, !prof !285

319:                                              ; preds = %315
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 935, ptr noundef nonnull @.str.1) #20
  br label %320

320:                                              ; preds = %319, %315
  %321 = tail call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %311)
  %322 = sext i32 %321 to i64
  %323 = tail call ptr @fibheap_insert(ptr noundef %216, i64 noundef %322, ptr noundef nonnull %311) #20
  store ptr %323, ptr %316, align 8, !tbaa !284
  br label %324

324:                                              ; preds = %320, %310
  %325 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 4
  %326 = load ptr, ptr %325, align 8, !tbaa !112
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %310, !prof !286, !llvm.loop !287

328:                                              ; preds = %324, %306, %288, %297, %237, %230
  %329 = phi i32 [ %232, %230 ], [ %232, %237 ], [ %285, %297 ], [ %285, %288 ], [ %285, %306 ], [ %285, %324 ]
  %330 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !112
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %230, !prof !259, !llvm.loop !288

333:                                              ; preds = %328, %227
  %334 = load i32, ptr @overall_size, align 4, !tbaa !127
  %335 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %336 = getelementptr inbounds %struct.param_info, ptr %335, i64 17, i32 1
  %337 = load i32, ptr %336, align 8, !tbaa !175
  %338 = tail call i32 @llvm.smax.i32(i32 %337, i32 %334)
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.param_info, ptr %335, i64 18, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !175
  %342 = add nsw i32 %341, 100
  %343 = sext i32 %342 to i64
  %344 = mul nsw i64 %343, %339
  %345 = sdiv i64 %344, 100
  %346 = trunc i64 %345 to i32
  %347 = load i32, ptr @overall_size, align 4, !tbaa !127
  %348 = icmp sgt i32 %347, %346
  br i1 %348, label %906, label %349, !prof !168

349:                                              ; preds = %333, %901
  %350 = phi i32 [ %903, %901 ], [ %346, %333 ]
  %351 = phi i32 [ %902, %901 ], [ %334, %333 ]
  %352 = call ptr @fibheap_extract_min(ptr noundef %216) #20
  %353 = icmp eq ptr %352, null
  br i1 %353, label %906, label %354, !prof !289

354:                                              ; preds = %349
  %355 = load i32, ptr @overall_size, align 4, !tbaa !127
  %356 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !155
  %358 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !133
  %360 = getelementptr inbounds %struct.cgraph_node, ptr %359, i64 0, i32 19, i32 4
  %361 = load i32, ptr %360, align 4, !tbaa !151
  %362 = getelementptr inbounds %struct.cgraph_node, ptr %359, i64 0, i32 18, i32 1, i32 2
  %363 = load i32, ptr %362, align 4, !tbaa !246
  %364 = sub nsw i32 %361, %363
  %365 = getelementptr inbounds %struct.cgraph_node, ptr %357, i64 0, i32 19, i32 4
  %366 = load i32, ptr %365, align 4, !tbaa !151
  %367 = add nsw i32 %364, %366
  %368 = icmp sgt i32 %367, -1
  br i1 %368, label %370, label %369, !prof !285

369:                                              ; preds = %354
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %370

370:                                              ; preds = %369, %354
  %371 = load ptr, ptr %356, align 8, !tbaa !155
  %372 = getelementptr inbounds %struct.cgraph_node, ptr %371, i64 0, i32 19, i32 4
  %373 = load i32, ptr %372, align 4, !tbaa !151
  %374 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %375 = icmp eq ptr %374, null
  br i1 %375, label %409, label %376, !prof !285

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  %378 = load ptr, ptr %358, align 8, !tbaa !133
  %379 = call ptr @cgraph_node_name(ptr noundef %378) #20
  %380 = load ptr, ptr %358, align 8, !tbaa !133
  %381 = getelementptr inbounds %struct.cgraph_node, ptr %380, i64 0, i32 19, i32 4
  %382 = load i32, ptr %381, align 4, !tbaa !151
  %383 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %374, ptr noundef nonnull @.str.39, ptr noundef %379, i32 noundef %382)
  %384 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %385 = load ptr, ptr %356, align 8, !tbaa !155
  %386 = call ptr @cgraph_node_name(ptr noundef %385) #20
  %387 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 7
  %388 = load ptr, ptr %387, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  %389 = getelementptr inbounds %struct.gimple_statement_base, ptr %388, i64 0, i32 2
  %390 = load i32, ptr %389, align 8, !tbaa !123
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %390) #20
  %391 = load ptr, ptr %2, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  %392 = load ptr, ptr %387, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1)
  %393 = getelementptr inbounds %struct.gimple_statement_base, ptr %392, i64 0, i32 2
  %394 = load i32, ptr %393, align 8, !tbaa !123
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %394) #20
  %395 = load i32, ptr %377, align 8, !tbaa !293
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1)
  %396 = load ptr, ptr %358, align 8, !tbaa !133
  %397 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %396)
  %398 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %352)
  %399 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 11
  %400 = load i32, ptr %399, align 8, !tbaa !152
  %401 = sitofp i32 %400 to double
  %402 = fdiv double %401, 1.000000e+03
  %403 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef nonnull @.str.40, ptr noundef %386, ptr noundef %391, i32 noundef %395, i32 noundef %397, i32 noundef %398, double noundef %402)
  %404 = load i64, ptr %352, align 8, !tbaa !154
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %376
  %407 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %408 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %407, ptr noundef nonnull @.str.41, i64 noundef %404)
  br label %409

409:                                              ; preds = %406, %376, %370
  %410 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 8
  %411 = load ptr, ptr %410, align 8, !tbaa !284
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %414, !prof !283

413:                                              ; preds = %409
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 973, ptr noundef nonnull @.str.1) #20
  br label %414

414:                                              ; preds = %413, %409
  store ptr null, ptr %410, align 8, !tbaa !284
  %415 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 9
  %416 = load i32, ptr %415, align 8, !tbaa !161
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %901, label %418, !prof !283, !llvm.loop !294

418:                                              ; preds = %414
  %419 = load i64, ptr %352, align 8, !tbaa !154
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %456, !prof !285

421:                                              ; preds = %418
  %422 = load ptr, ptr %356, align 8, !tbaa !155
  %423 = getelementptr inbounds %struct.cgraph_node, ptr %422, i64 0, i32 19, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !150
  %425 = icmp eq ptr %424, null
  br i1 %425, label %456, label %426, !prof !169

426:                                              ; preds = %421
  %427 = load ptr, ptr %358, align 8, !tbaa !133
  %428 = load ptr, ptr %427, align 8, !tbaa !146
  %429 = load ptr, ptr %422, align 8, !tbaa !146
  %430 = icmp eq ptr %429, %428
  br i1 %430, label %443, label %434

431:                                              ; preds = %434
  %432 = load ptr, ptr %439, align 8, !tbaa !146
  %433 = icmp eq ptr %432, %428
  br i1 %433, label %443, label %434, !llvm.loop !295

434:                                              ; preds = %426, %431
  %435 = phi ptr [ %439, %431 ], [ %422, %426 ]
  %436 = getelementptr inbounds %struct.cgraph_node, ptr %435, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !135
  %438 = getelementptr inbounds %struct.cgraph_edge, ptr %437, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !155
  %440 = getelementptr inbounds %struct.cgraph_node, ptr %439, i64 0, i32 19, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !150
  %442 = icmp eq ptr %441, null
  br i1 %442, label %456, label %431, !prof !169, !llvm.loop !295

443:                                              ; preds = %431, %426
  %444 = phi i1 [ %425, %426 ], [ %442, %431 ]
  br i1 %444, label %456, label %445, !prof !285

445:                                              ; preds = %443
  %446 = load ptr, ptr %358, align 8, !tbaa !133
  %447 = getelementptr inbounds %struct.cgraph_node, ptr %446, i64 0, i32 18, i32 2
  %448 = load i8, ptr %447, align 8
  %449 = and i8 %448, 16
  %450 = icmp eq i8 %449, 0
  %451 = select i1 %450, i32 1, i32 12
  store i32 %451, ptr %415, align 8, !tbaa !161
  %452 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %453 = icmp eq ptr %452, null
  br i1 %453, label %901, label %454, !llvm.loop !294

454:                                              ; preds = %445
  %455 = call i64 @fwrite(ptr nonnull @.str.42, i64 70, i64 1, ptr nonnull %452)
  br label %901, !llvm.loop !294

456:                                              ; preds = %434, %421, %443, %418
  %457 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %352) #20
  %458 = icmp eq i8 %457, 0
  %459 = select i1 %458, i32 13, i32 0, !prof !296
  %460 = load i32, ptr @flag_inline_functions, align 4, !tbaa !127
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %470, !prof !283

462:                                              ; preds = %456
  %463 = load ptr, ptr %358, align 8, !tbaa !133
  %464 = load ptr, ptr %463, align 8, !tbaa !146
  %465 = getelementptr inbounds %struct.tree_function_decl, ptr %464, i64 0, i32 5
  %466 = load i32, ptr %465, align 8
  %467 = and i32 %466, 2097152
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %468, i32 14, i32 %459
  br label %470

470:                                              ; preds = %462, %456
  %471 = phi i32 [ %459, %456 ], [ %469, %462 ]
  %472 = load ptr, ptr %356, align 8, !tbaa !155
  %473 = load ptr, ptr %472, align 8, !tbaa !146
  %474 = getelementptr inbounds %struct.tree_function_decl, ptr %473, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !123
  %476 = call zeroext i8 @optimize_function_for_size_p(ptr noundef %475) #20
  %477 = icmp eq i8 %476, 0
  %478 = select i1 %477, i32 %471, i32 15, !prof !285
  %479 = icmp ne i32 %478, 0
  %480 = icmp sgt i32 %367, %373
  %481 = select i1 %479, i1 %480, i1 false, !prof !296
  br i1 %481, label %482, label %508, !prof !296

482:                                              ; preds = %470
  %483 = load ptr, ptr %358, align 8, !tbaa !133
  %484 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %483)
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %508, !prof !297

486:                                              ; preds = %482
  %487 = load ptr, ptr %356, align 8, !tbaa !155
  %488 = load ptr, ptr %358, align 8, !tbaa !133
  %489 = getelementptr inbounds %struct.cgraph_node, ptr %487, i64 0, i32 19, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !150
  %491 = icmp eq ptr %490, null
  %492 = load ptr, ptr %488, align 8, !tbaa !146
  %493 = select i1 %491, ptr %487, ptr %490, !prof !297
  %494 = load ptr, ptr %493, align 8, !tbaa !146
  %495 = icmp eq ptr %492, %494
  br i1 %495, label %496, label %502, !prof !298

496:                                              ; preds = %486
  %497 = getelementptr inbounds %struct.cgraph_node, ptr %488, i64 0, i32 18, i32 2
  %498 = load i8, ptr %497, align 8
  %499 = and i8 %498, 16
  %500 = icmp eq i8 %499, 0
  %501 = select i1 %500, i32 1, i32 12
  store i32 %501, ptr %415, align 4, !tbaa !127
  br label %901, !llvm.loop !294

502:                                              ; preds = %486
  store i32 %478, ptr %415, align 8, !tbaa !161
  %503 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %504 = icmp eq ptr %503, null
  br i1 %504, label %901, label %505, !prof !297, !llvm.loop !294

505:                                              ; preds = %502
  %506 = call ptr @cgraph_inline_failed_string(i32 noundef %478) #20
  %507 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %503, ptr noundef nonnull @.str.43, ptr noundef %506)
  br label %901, !llvm.loop !294

508:                                              ; preds = %482, %470
  %509 = load ptr, ptr %358, align 8, !tbaa !133
  %510 = load ptr, ptr %509, align 8, !tbaa !146
  %511 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !127
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %518, !prof !273

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.tree_function_decl, ptr %510, i64 0, i32 5
  %515 = load i32, ptr %514, align 8
  %516 = and i32 %515, 2097152
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %539, label %518

518:                                              ; preds = %513, %508
  %519 = getelementptr inbounds %struct.cgraph_node, ptr %509, i64 0, i32 27
  %520 = load i16, ptr %519, align 4
  %521 = and i16 %520, 32
  %522 = icmp eq i16 %521, 0
  br i1 %522, label %539, label %523, !prof !273

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.tree_function_decl, ptr %510, i64 0, i32 5
  %525 = load i32, ptr %524, align 8
  %526 = and i32 %525, 2097152
  %527 = icmp eq i32 %526, 0
  %528 = getelementptr inbounds %struct.cgraph_node, ptr %509, i64 0, i32 19, i32 4
  %529 = load i32, ptr %528, align 4, !tbaa !151
  %530 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  br i1 %527, label %535, label %531, !prof !274

531:                                              ; preds = %523
  %532 = getelementptr inbounds %struct.param_info, ptr %530, i64 2, i32 1
  %533 = load i32, ptr %532, align 8, !tbaa !175
  %534 = icmp slt i32 %529, %533
  br i1 %534, label %562, label %539, !prof !174

535:                                              ; preds = %523
  %536 = getelementptr inbounds %struct.param_info, ptr %530, i64 3, i32 1
  %537 = load i32, ptr %536, align 8, !tbaa !175
  %538 = icmp slt i32 %529, %537
  br i1 %538, label %562, label %539, !prof !275

539:                                              ; preds = %535, %531, %518, %513
  %540 = phi i32 [ 6, %513 ], [ 3, %518 ], [ 9, %531 ], [ 10, %535 ]
  store i32 %540, ptr %415, align 4, !tbaa !127
  %541 = load ptr, ptr %356, align 8, !tbaa !155
  %542 = getelementptr inbounds %struct.cgraph_node, ptr %541, i64 0, i32 19, i32 2
  %543 = load ptr, ptr %542, align 8, !tbaa !150
  %544 = icmp eq ptr %543, null
  %545 = select i1 %544, ptr %541, ptr %543
  %546 = load ptr, ptr %545, align 8, !tbaa !146
  %547 = icmp eq ptr %510, %546
  br i1 %547, label %548, label %554

548:                                              ; preds = %539
  %549 = getelementptr inbounds %struct.cgraph_node, ptr %509, i64 0, i32 18, i32 2
  %550 = load i8, ptr %549, align 8
  %551 = and i8 %550, 16
  %552 = icmp eq i8 %551, 0
  %553 = select i1 %552, i32 1, i32 12
  store i32 %553, ptr %415, align 4, !tbaa !127
  br label %554

554:                                              ; preds = %548, %539
  %555 = load ptr, ptr @dump_file, align 8
  %556 = icmp eq ptr %555, null
  %557 = select i1 %547, i1 true, i1 %556
  br i1 %557, label %901, label %558, !llvm.loop !294

558:                                              ; preds = %554
  %559 = load i32, ptr %415, align 8, !tbaa !161
  %560 = call ptr @cgraph_inline_failed_string(i32 noundef %559) #20
  %561 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %555, ptr noundef nonnull @.str.43, ptr noundef %560)
  br label %901, !llvm.loop !294

562:                                              ; preds = %535, %531
  %563 = call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %352) #20
  %564 = icmp eq i8 %563, 0
  br i1 %564, label %565, label %572, !prof !299

565:                                              ; preds = %562
  %566 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %567 = icmp eq ptr %566, null
  br i1 %567, label %901, label %568, !llvm.loop !294

568:                                              ; preds = %565
  %569 = load i32, ptr %415, align 8, !tbaa !161
  %570 = call ptr @cgraph_inline_failed_string(i32 noundef %569) #20
  %571 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %566, ptr noundef nonnull @.str.43, ptr noundef %570)
  br label %901, !llvm.loop !294

572:                                              ; preds = %562
  %573 = load ptr, ptr %356, align 8, !tbaa !155
  %574 = load ptr, ptr %358, align 8, !tbaa !133
  %575 = getelementptr inbounds %struct.cgraph_node, ptr %573, i64 0, i32 19, i32 2
  %576 = load ptr, ptr %575, align 8, !tbaa !150
  %577 = icmp eq ptr %576, null
  %578 = load ptr, ptr %574, align 8, !tbaa !146
  %579 = select i1 %577, ptr %573, ptr %576, !prof !174
  %580 = load ptr, ptr %579, align 8, !tbaa !146
  %581 = icmp eq ptr %578, %580
  br i1 %581, label %582, label %816, !prof !299

582:                                              ; preds = %572
  %583 = getelementptr inbounds %struct.cgraph_node, ptr %574, i64 0, i32 18, i32 2
  %584 = load i8, ptr %583, align 8
  %585 = and i8 %584, 16
  %586 = icmp eq i8 %585, 0
  %587 = select i1 %586, i32 1, i32 12
  store i32 %587, ptr %415, align 4, !tbaa !127
  %588 = select i1 %577, ptr %573, ptr %576
  %589 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %590 = icmp eq i32 %589, 0
  %591 = select i1 %590, ptr null, ptr %3
  %592 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %593 = getelementptr inbounds %struct.param_info, ptr %592, i64 5, i32 1
  %594 = load i32, ptr %593, align 8, !tbaa !175
  %595 = getelementptr inbounds %struct.param_info, ptr %592, i64 7, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !175
  %597 = getelementptr inbounds %struct.param_info, ptr %592, i64 8, i32 1
  %598 = load i32, ptr %597, align 8, !tbaa !175
  %599 = load ptr, ptr %588, align 8, !tbaa !146
  %600 = getelementptr inbounds %struct.tree_function_decl, ptr %599, i64 0, i32 1
  %601 = load ptr, ptr %600, align 8, !tbaa !123
  %602 = call zeroext i8 @optimize_function_for_size_p(ptr noundef %601) #20
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %604, label %807

604:                                              ; preds = %582
  %605 = load i32, ptr @flag_inline_functions, align 4, !tbaa !127
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %613

607:                                              ; preds = %604
  %608 = load ptr, ptr %588, align 8, !tbaa !146
  %609 = getelementptr inbounds %struct.tree_function_decl, ptr %608, i64 0, i32 5
  %610 = load i32, ptr %609, align 8
  %611 = and i32 %610, 2097152
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %807, label %613

613:                                              ; preds = %607, %604
  %614 = load ptr, ptr %588, align 8, !tbaa !146
  %615 = getelementptr inbounds %struct.tree_function_decl, ptr %614, i64 0, i32 5
  %616 = load i32, ptr %615, align 8
  %617 = and i32 %616, 2097152
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %625, label %619

619:                                              ; preds = %613
  %620 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %621 = getelementptr inbounds %struct.param_info, ptr %620, i64 4, i32 1
  %622 = load i32, ptr %621, align 8, !tbaa !175
  %623 = getelementptr inbounds %struct.param_info, ptr %620, i64 6, i32 1
  %624 = load i32, ptr %623, align 8, !tbaa !175
  br label %625

625:                                              ; preds = %619, %613
  %626 = phi i32 [ %624, %619 ], [ %596, %613 ]
  %627 = phi i32 [ %622, %619 ], [ %594, %613 ]
  %628 = icmp eq i32 %626, 0
  br i1 %628, label %807, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.cgraph_node, ptr %588, i64 0, i32 19, i32 4
  %631 = load i32, ptr %630, align 4, !tbaa !151
  %632 = getelementptr inbounds %struct.cgraph_node, ptr %588, i64 0, i32 18, i32 1, i32 2
  %633 = load i32, ptr %632, align 4, !tbaa !246
  %634 = sub nsw i32 %631, %633
  %635 = add nsw i32 %634, %631
  %636 = icmp sgt i32 %635, -1
  br i1 %636, label %638, label %637

637:                                              ; preds = %629
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %638

638:                                              ; preds = %637, %629
  %639 = icmp slt i32 %635, %627
  br i1 %639, label %640, label %807

640:                                              ; preds = %638
  %641 = call ptr @fibheap_new() #20
  call fastcc void @lookup_recursive_calls(ptr noundef nonnull %588, ptr noundef nonnull %588, ptr noundef %641)
  %642 = call i32 @fibheap_empty(ptr noundef %641) #20
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %645, label %644

644:                                              ; preds = %640
  call void @fibheap_delete(ptr noundef %641) #20
  br label %807

645:                                              ; preds = %640
  %646 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %647 = icmp eq ptr %646, null
  br i1 %647, label %651, label %648

648:                                              ; preds = %645
  %649 = call ptr @cgraph_node_name(ptr noundef nonnull %588) #20
  %650 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %646, ptr noundef nonnull @.str.48, ptr noundef %649)
  br label %651

651:                                              ; preds = %648, %645
  %652 = getelementptr inbounds %struct.cgraph_node, ptr %588, i64 0, i32 23
  %653 = load i64, ptr %652, align 8, !tbaa !300
  %654 = call ptr @cgraph_clone_node(ptr noundef nonnull %588, i64 noundef %653, i32 noundef 1000, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #20
  %655 = getelementptr inbounds %struct.cgraph_node, ptr %654, i64 0, i32 27
  %656 = load i16, ptr %655, align 4
  %657 = or i16 %656, 1
  store i16 %657, ptr %655, align 4
  %658 = getelementptr inbounds %struct.cgraph_node, ptr %654, i64 0, i32 1
  %659 = load ptr, ptr %658, align 8, !tbaa !112
  %660 = icmp eq ptr %659, null
  br i1 %660, label %661, label %668

661:                                              ; preds = %674, %651
  %662 = call i32 @fibheap_empty(ptr noundef %641) #20
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %770

664:                                              ; preds = %661
  %665 = getelementptr inbounds %struct.cgraph_node, ptr %654, i64 0, i32 19, i32 4
  %666 = getelementptr inbounds %struct.cgraph_node, ptr %654, i64 0, i32 18, i32 1, i32 2
  %667 = sext i32 %598 to i64
  br label %678

668:                                              ; preds = %651, %674
  %669 = phi ptr [ %676, %674 ], [ %659, %651 ]
  %670 = getelementptr inbounds %struct.cgraph_edge, ptr %669, i64 0, i32 9
  %671 = load i32, ptr %670, align 8, !tbaa !161
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %674

673:                                              ; preds = %668
  call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %669, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %674

674:                                              ; preds = %673, %668
  %675 = getelementptr inbounds %struct.cgraph_edge, ptr %669, i64 0, i32 6
  %676 = load ptr, ptr %675, align 8, !tbaa !112
  %677 = icmp eq ptr %676, null
  br i1 %677, label %661, label %668, !llvm.loop !301

678:                                              ; preds = %664, %766
  %679 = phi i32 [ 0, %664 ], [ %767, %766 ]
  %680 = load i32, ptr %665, align 4, !tbaa !151
  %681 = load i32, ptr %666, align 4, !tbaa !246
  %682 = sub nsw i32 %680, %681
  %683 = load i32, ptr %630, align 4, !tbaa !151
  %684 = add nsw i32 %682, %683
  %685 = icmp sgt i32 %684, -1
  br i1 %685, label %687, label %686

686:                                              ; preds = %678
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %687

687:                                              ; preds = %686, %678
  %688 = icmp sgt i32 %684, %627
  br i1 %688, label %770, label %689

689:                                              ; preds = %687
  %690 = call ptr @fibheap_extract_min(ptr noundef %641) #20
  %691 = getelementptr inbounds %struct.cgraph_edge, ptr %690, i64 0, i32 1
  %692 = load ptr, ptr %691, align 8, !tbaa !155
  %693 = getelementptr inbounds %struct.cgraph_node, ptr %692, i64 0, i32 19, i32 2
  %694 = load ptr, ptr %693, align 8, !tbaa !150
  %695 = icmp eq ptr %694, null
  br i1 %695, label %714, label %696

696:                                              ; preds = %689
  %697 = load ptr, ptr %588, align 8, !tbaa !146
  %698 = getelementptr inbounds %struct.cgraph_edge, ptr %690, i64 0, i32 2
  %699 = load ptr, ptr %698, align 8, !tbaa !133
  %700 = load ptr, ptr %699, align 8, !tbaa !146
  %701 = icmp eq ptr %697, %700
  %702 = zext i1 %701 to i32
  br label %703

703:                                              ; preds = %696, %703
  %704 = phi ptr [ %692, %696 ], [ %710, %703 ]
  %705 = phi i32 [ 1, %696 ], [ %706, %703 ]
  %706 = add nuw nsw i32 %705, %702
  %707 = getelementptr inbounds %struct.cgraph_node, ptr %704, i64 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !135
  %709 = getelementptr inbounds %struct.cgraph_edge, ptr %708, i64 0, i32 1
  %710 = load ptr, ptr %709, align 8, !tbaa !155
  %711 = getelementptr inbounds %struct.cgraph_node, ptr %710, i64 0, i32 19, i32 2
  %712 = load ptr, ptr %711, align 8, !tbaa !150
  %713 = icmp eq ptr %712, null
  br i1 %713, label %714, label %703, !llvm.loop !302

714:                                              ; preds = %703, %689
  %715 = phi i32 [ 1, %689 ], [ %706, %703 ]
  %716 = icmp sgt i32 %715, %626
  br i1 %716, label %717, label %722

717:                                              ; preds = %714
  %718 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %719 = icmp eq ptr %718, null
  br i1 %719, label %766, label %720, !llvm.loop !303

720:                                              ; preds = %717
  %721 = call i64 @fwrite(ptr nonnull @.str.49, i64 25, i64 1, ptr nonnull %718)
  br label %766, !llvm.loop !303

722:                                              ; preds = %714
  %723 = load i64, ptr @max_count, align 8, !tbaa !214
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %744, label %725

725:                                              ; preds = %722
  %726 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef %690) #20
  %727 = icmp eq i8 %726, 0
  br i1 %727, label %728, label %733

728:                                              ; preds = %725
  %729 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %730 = icmp eq ptr %729, null
  br i1 %730, label %766, label %731, !llvm.loop !303

731:                                              ; preds = %728
  %732 = call i64 @fwrite(ptr nonnull @.str.50, i64 26, i64 1, ptr nonnull %729)
  br label %766, !llvm.loop !303

733:                                              ; preds = %725
  %734 = load i64, ptr %690, align 8, !tbaa !154
  %735 = mul nsw i64 %734, 100
  %736 = load i64, ptr %652, align 8, !tbaa !300
  %737 = sdiv i64 %735, %736
  %738 = icmp slt i64 %737, %667
  br i1 %738, label %739, label %744

739:                                              ; preds = %733
  %740 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %741 = icmp eq ptr %740, null
  br i1 %741, label %766, label %742, !llvm.loop !303

742:                                              ; preds = %739
  %743 = call i64 @fwrite(ptr nonnull @.str.51, i64 36, i64 1, ptr nonnull %740)
  br label %766, !llvm.loop !303

744:                                              ; preds = %733, %722
  %745 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %746 = icmp eq ptr %745, null
  br i1 %746, label %761, label %747

747:                                              ; preds = %744
  %748 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %745, ptr noundef nonnull @.str.52, i32 noundef %715)
  %749 = load i64, ptr %652, align 8, !tbaa !300
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %758, label %751

751:                                              ; preds = %747
  %752 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %753 = load i64, ptr %690, align 8, !tbaa !154
  %754 = sitofp i64 %753 to double
  %755 = sitofp i64 %749 to double
  %756 = fdiv double %754, %755
  %757 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %752, ptr noundef nonnull @.str.53, double noundef %756)
  br label %758

758:                                              ; preds = %751, %747
  %759 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %760 = call i32 @fputc(i32 10, ptr %759)
  br label %761

761:                                              ; preds = %758, %744
  call void @cgraph_redirect_edge_callee(ptr noundef %690, ptr noundef %654) #20
  %762 = call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef %690, i8 noundef zeroext 0, ptr noundef %591)
  %763 = getelementptr inbounds %struct.cgraph_edge, ptr %690, i64 0, i32 2
  %764 = load ptr, ptr %763, align 8, !tbaa !133
  call fastcc void @lookup_recursive_calls(ptr noundef nonnull %588, ptr noundef %764, ptr noundef %641)
  %765 = add nsw i32 %679, 1
  br label %766

766:                                              ; preds = %761, %742, %739, %731, %728, %720, %717
  %767 = phi i32 [ %765, %761 ], [ %679, %720 ], [ %679, %717 ], [ %679, %731 ], [ %679, %728 ], [ %679, %742 ], [ %679, %739 ]
  %768 = call i32 @fibheap_empty(ptr noundef %641) #20
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %678, label %770

770:                                              ; preds = %766, %687, %661
  %771 = phi i32 [ 0, %661 ], [ %767, %766 ], [ %679, %687 ]
  %772 = call i32 @fibheap_empty(ptr noundef %641) #20
  %773 = icmp eq i32 %772, 0
  %774 = load ptr, ptr @dump_file, align 8
  %775 = icmp ne ptr %774, null
  %776 = select i1 %773, i1 %775, i1 false
  br i1 %776, label %777, label %779

777:                                              ; preds = %770
  %778 = call i64 @fwrite(ptr nonnull @.str.55, i64 41, i64 1, ptr nonnull %774)
  br label %779

779:                                              ; preds = %777, %770
  call void @fibheap_delete(ptr noundef %641) #20
  %780 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %781 = icmp eq ptr %780, null
  br i1 %781, label %791, label %782

782:                                              ; preds = %779
  %783 = getelementptr inbounds %struct.cgraph_node, ptr %654, i64 0, i32 19, i32 4
  %784 = load i32, ptr %783, align 4, !tbaa !151
  %785 = load i32, ptr %630, align 4, !tbaa !151
  %786 = getelementptr inbounds %struct.cgraph_node, ptr %654, i64 0, i32 19, i32 3
  %787 = load i32, ptr %786, align 8, !tbaa !247
  %788 = getelementptr inbounds %struct.cgraph_node, ptr %588, i64 0, i32 19, i32 3
  %789 = load i32, ptr %788, align 8, !tbaa !247
  %790 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %780, ptr noundef nonnull @.str.56, i32 noundef %771, i32 noundef %784, i32 noundef %785, i32 noundef %787, i32 noundef %789)
  br label %791

791:                                              ; preds = %782, %779
  %792 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !112
  %793 = icmp eq ptr %792, %654
  br i1 %793, label %804, label %794

794:                                              ; preds = %791, %802
  %795 = phi ptr [ %797, %802 ], [ %792, %791 ]
  %796 = getelementptr inbounds %struct.cgraph_node, ptr %795, i64 0, i32 3
  %797 = load ptr, ptr %796, align 8, !tbaa !304
  %798 = getelementptr inbounds %struct.cgraph_node, ptr %795, i64 0, i32 19, i32 2
  %799 = load ptr, ptr %798, align 8, !tbaa !150
  %800 = icmp eq ptr %799, %654
  br i1 %800, label %801, label %802

801:                                              ; preds = %794
  call void @cgraph_remove_node(ptr noundef %795) #20
  br label %802

802:                                              ; preds = %801, %794
  %803 = icmp eq ptr %797, %654
  br i1 %803, label %804, label %794, !llvm.loop !305

804:                                              ; preds = %802, %791
  call void @cgraph_remove_node(ptr noundef %654) #20
  %805 = icmp sgt i32 %771, 0
  %806 = zext i1 %805 to i8
  br label %807

807:                                              ; preds = %804, %644, %638, %625, %607, %582
  %808 = phi i8 [ 0, %644 ], [ %806, %804 ], [ 0, %607 ], [ 0, %582 ], [ 0, %638 ], [ 0, %625 ]
  %809 = icmp eq i8 %808, 0
  br i1 %809, label %901, label %810, !llvm.loop !294

810:                                              ; preds = %807
  %811 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %815, label %813

813:                                              ; preds = %810
  %814 = load ptr, ptr %3, align 8, !tbaa !112
  call fastcc void @add_new_edges_to_heap(ptr noundef %216, ptr noundef %814)
  br label %815

815:                                              ; preds = %813, %810
  call fastcc void @update_callee_keys(ptr noundef %216, ptr noundef nonnull %588, ptr noundef %217)
  br label %862

816:                                              ; preds = %572
  %817 = getelementptr inbounds %struct.cgraph_edge, ptr %352, i64 0, i32 14
  %818 = load i8, ptr %817, align 2
  %819 = and i8 %818, 2
  %820 = icmp eq i8 %819, 0
  br i1 %820, label %821, label %824, !prof !174

821:                                              ; preds = %816
  %822 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef %573, ptr noundef nonnull %574, ptr noundef nonnull %415, i8 noundef zeroext 1), !range !178
  %823 = icmp eq i8 %822, 0
  br i1 %823, label %824, label %833, !prof !299

824:                                              ; preds = %821, %816
  %825 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %826 = icmp eq ptr %825, null
  br i1 %826, label %901, label %827, !llvm.loop !294

827:                                              ; preds = %824
  %828 = load ptr, ptr %356, align 8, !tbaa !155
  %829 = call ptr @cgraph_node_name(ptr noundef %828) #20
  %830 = load i32, ptr %415, align 8, !tbaa !161
  %831 = call ptr @cgraph_inline_failed_string(i32 noundef %830) #20
  %832 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %825, ptr noundef nonnull @.str.44, ptr noundef %829, ptr noundef %831)
  br label %901, !llvm.loop !294

833:                                              ; preds = %821
  %834 = load ptr, ptr %358, align 8, !tbaa !133
  %835 = call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %352, i8 noundef zeroext 1, ptr noundef nonnull %3)
  %836 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %861, label %838, !prof !299

838:                                              ; preds = %833
  %839 = load ptr, ptr %3, align 8, !tbaa !112
  %840 = icmp eq ptr %839, null
  br label %841

841:                                              ; preds = %857, %838
  br i1 %840, label %844, label %842, !prof !299

842:                                              ; preds = %841
  %843 = load i32, ptr %839, align 8, !tbaa !306
  br label %844

844:                                              ; preds = %842, %841
  %845 = phi i32 [ %843, %842 ], [ 0, %841 ]
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %861, label %847, !prof !174

847:                                              ; preds = %844
  %848 = load i32, ptr %839, align 8, !tbaa !306
  %849 = add i32 %848, -1
  store i32 %849, ptr %839, align 8, !tbaa !306
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %839, i64 0, i32 2, i64 %850
  %852 = load ptr, ptr %851, align 8, !tbaa !112
  %853 = getelementptr inbounds %struct.cgraph_edge, ptr %852, i64 0, i32 8
  %854 = load ptr, ptr %853, align 8, !tbaa !284
  %855 = icmp eq ptr %854, null
  br i1 %855, label %857, label %856

856:                                              ; preds = %847
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 885, ptr noundef nonnull @.str.1) #20
  br label %857

857:                                              ; preds = %856, %847
  %858 = call fastcc i32 @cgraph_edge_badness(ptr noundef %852)
  %859 = sext i32 %858 to i64
  %860 = call ptr @fibheap_insert(ptr noundef %216, i64 noundef %859, ptr noundef %852) #20
  store ptr %860, ptr %853, align 8, !tbaa !284
  br label %841, !llvm.loop !308

861:                                              ; preds = %844, %833
  call fastcc void @update_callee_keys(ptr noundef %216, ptr noundef %834, ptr noundef %217)
  br label %862

862:                                              ; preds = %861, %815
  %863 = load ptr, ptr %356, align 8, !tbaa !155
  %864 = getelementptr inbounds %struct.cgraph_node, ptr %863, i64 0, i32 19, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !150
  %866 = icmp eq ptr %865, null
  %867 = select i1 %866, ptr %863, ptr %865, !prof !174
  call fastcc void @update_caller_keys(ptr noundef %216, ptr noundef %867, ptr noundef %217)
  call void @bitmap_clear(ptr noundef %217) #20
  %868 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %869 = icmp eq ptr %868, null
  br i1 %869, label %881, label %870, !prof !174

870:                                              ; preds = %862
  %871 = load ptr, ptr %356, align 8, !tbaa !155
  %872 = call ptr @cgraph_node_name(ptr noundef %871) #20
  %873 = load ptr, ptr %356, align 8, !tbaa !155
  %874 = getelementptr inbounds %struct.cgraph_node, ptr %873, i64 0, i32 19, i32 3
  %875 = load i32, ptr %874, align 8, !tbaa !247
  %876 = getelementptr inbounds %struct.cgraph_node, ptr %873, i64 0, i32 19, i32 4
  %877 = load i32, ptr %876, align 4, !tbaa !151
  %878 = load i32, ptr @overall_size, align 4, !tbaa !127
  %879 = sub nsw i32 %878, %355
  %880 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %868, ptr noundef nonnull @.str.45, ptr noundef %872, i32 noundef %875, i32 noundef %877, i32 noundef %879)
  br label %881

881:                                              ; preds = %870, %862
  %882 = load i32, ptr @overall_size, align 4, !tbaa !127
  %883 = icmp sgt i32 %351, %882
  br i1 %883, label %884, label %901, !prof !299

884:                                              ; preds = %881
  %885 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %886 = getelementptr inbounds %struct.param_info, ptr %885, i64 17, i32 1
  %887 = load i32, ptr %886, align 8, !tbaa !175
  %888 = call i32 @llvm.smax.i32(i32 %887, i32 %882)
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds %struct.param_info, ptr %885, i64 18, i32 1
  %891 = load i32, ptr %890, align 8, !tbaa !175
  %892 = add nsw i32 %891, 100
  %893 = sext i32 %892 to i64
  %894 = mul nsw i64 %893, %889
  %895 = sdiv i64 %894, 100
  %896 = trunc i64 %895 to i32
  %897 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %898 = icmp eq ptr %897, null
  br i1 %898, label %901, label %899

899:                                              ; preds = %884
  %900 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %897, ptr noundef nonnull @.str.46, i32 noundef %882)
  br label %901

901:                                              ; preds = %496, %899, %884, %881, %827, %824, %807, %568, %565, %558, %554, %505, %502, %454, %445, %414
  %902 = phi i32 [ %351, %414 ], [ %351, %454 ], [ %351, %445 ], [ %351, %502 ], [ %351, %505 ], [ %351, %496 ], [ %351, %558 ], [ %351, %554 ], [ %351, %568 ], [ %351, %565 ], [ %351, %807 ], [ %351, %824 ], [ %351, %827 ], [ %882, %899 ], [ %882, %884 ], [ %351, %881 ]
  %903 = phi i32 [ %350, %414 ], [ %350, %454 ], [ %350, %445 ], [ %350, %502 ], [ %350, %505 ], [ %350, %496 ], [ %350, %558 ], [ %350, %554 ], [ %350, %568 ], [ %350, %565 ], [ %350, %807 ], [ %350, %824 ], [ %350, %827 ], [ %896, %899 ], [ %896, %884 ], [ %350, %881 ]
  %904 = load i32, ptr @overall_size, align 4, !tbaa !127
  %905 = icmp sgt i32 %904, %903
  br i1 %905, label %906, label %349, !prof !309

906:                                              ; preds = %901, %349, %333
  %907 = call ptr @fibheap_extract_min(ptr noundef %216) #20
  %908 = icmp eq ptr %907, null
  br i1 %908, label %941, label %909, !prof !169

909:                                              ; preds = %906, %938
  %910 = phi ptr [ %939, %938 ], [ %907, %906 ]
  %911 = getelementptr inbounds %struct.cgraph_edge, ptr %910, i64 0, i32 8
  %912 = load ptr, ptr %911, align 8, !tbaa !284
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %915

914:                                              ; preds = %909
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1117, ptr noundef nonnull @.str.1) #20
  br label %915

915:                                              ; preds = %914, %909
  store ptr null, ptr %911, align 8, !tbaa !284
  %916 = getelementptr inbounds %struct.cgraph_edge, ptr %910, i64 0, i32 2
  %917 = load ptr, ptr %916, align 8, !tbaa !133
  %918 = getelementptr inbounds %struct.cgraph_node, ptr %917, i64 0, i32 18, i32 2
  %919 = load i8, ptr %918, align 8
  %920 = and i8 %919, 16
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %922, label %938

922:                                              ; preds = %915
  %923 = getelementptr inbounds %struct.cgraph_edge, ptr %910, i64 0, i32 9
  %924 = load i32, ptr %923, align 8, !tbaa !161
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %938, label %926

926:                                              ; preds = %922
  %927 = getelementptr inbounds %struct.cgraph_edge, ptr %910, i64 0, i32 1
  %928 = load ptr, ptr %927, align 8, !tbaa !155
  %929 = getelementptr inbounds %struct.cgraph_node, ptr %928, i64 0, i32 19, i32 2
  %930 = load ptr, ptr %929, align 8, !tbaa !150
  %931 = icmp eq ptr %930, null
  %932 = load ptr, ptr %917, align 8, !tbaa !146
  %933 = select i1 %931, ptr %928, ptr %930
  %934 = load ptr, ptr %933, align 8, !tbaa !146
  %935 = icmp eq ptr %932, %934
  br i1 %935, label %936, label %937

936:                                              ; preds = %926
  store i32 1, ptr %923, align 4, !tbaa !127
  br label %938

937:                                              ; preds = %926
  store i32 11, ptr %923, align 8, !tbaa !161
  br label %938

938:                                              ; preds = %936, %937, %922, %915
  %939 = call ptr @fibheap_extract_min(ptr noundef %216) #20
  %940 = icmp eq ptr %939, null
  br i1 %940, label %941, label %909, !prof !169, !llvm.loop !310

941:                                              ; preds = %938, %906
  %942 = load ptr, ptr %3, align 8, !tbaa !112
  %943 = icmp eq ptr %942, null
  br i1 %943, label %945, label %944, !prof !168

944:                                              ; preds = %941
  call void @free(ptr noundef %942)
  store ptr null, ptr %3, align 8, !tbaa !112
  br label %945

945:                                              ; preds = %941, %944
  call void @fibheap_delete(ptr noundef %216) #20
  call void @bitmap_obstack_free(ptr noundef %217) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %946 = load i32, ptr @flag_inline_functions_called_once, align 4, !tbaa !127
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %1067, label %948, !prof !168

948:                                              ; preds = %945
  %949 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %950 = icmp eq ptr %949, null
  br i1 %950, label %953, label %951, !prof !169

951:                                              ; preds = %948
  %952 = call i64 @fwrite(ptr nonnull @.str.32, i64 36, i64 1, ptr nonnull %949)
  br label %953

953:                                              ; preds = %951, %948
  %954 = icmp sgt i32 %78, 0
  br i1 %954, label %955, label %1067, !prof !264

955:                                              ; preds = %953, %1065
  %956 = phi i64 [ %957, %1065 ], [ %99, %953 ]
  %957 = add nsw i64 %956, -1
  %958 = getelementptr inbounds ptr, ptr %7, i64 %957
  %959 = load ptr, ptr %958, align 8, !tbaa !112
  %960 = getelementptr inbounds %struct.cgraph_node, ptr %959, i64 0, i32 2
  %961 = load ptr, ptr %960, align 8, !tbaa !135
  %962 = icmp eq ptr %961, null
  br i1 %962, label %1065, label %963, !prof !311

963:                                              ; preds = %955
  %964 = getelementptr inbounds %struct.cgraph_edge, ptr %961, i64 0, i32 4
  %965 = load ptr, ptr %964, align 8, !tbaa !143
  %966 = icmp eq ptr %965, null
  br i1 %966, label %967, label %1065, !prof !312

967:                                              ; preds = %963
  %968 = getelementptr inbounds %struct.cgraph_node, ptr %959, i64 0, i32 27
  %969 = load i16, ptr %968, align 4
  %970 = and i16 %969, 1
  %971 = icmp eq i16 %970, 0
  br i1 %971, label %972, label %978, !prof !145

972:                                              ; preds = %967
  %973 = getelementptr inbounds %struct.cgraph_node, ptr %959, i64 0, i32 18, i32 2
  %974 = load i8, ptr %973, align 8
  %975 = lshr i8 %974, 1
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  br label %978

978:                                              ; preds = %967, %972
  %979 = phi i8 [ 0, %967 ], [ %977, %972 ]
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %1065, label %981, !prof !313

981:                                              ; preds = %978
  %982 = getelementptr inbounds %struct.cgraph_node, ptr %959, i64 0, i32 18, i32 2
  %983 = load i8, ptr %982, align 8
  %984 = and i8 %983, 8
  %985 = icmp eq i8 %984, 0
  br i1 %985, label %1065, label %986, !prof !167

986:                                              ; preds = %981
  %987 = getelementptr inbounds %struct.cgraph_edge, ptr %961, i64 0, i32 9
  %988 = load i32, ptr %987, align 8, !tbaa !161
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1065, label %990, !prof !169

990:                                              ; preds = %986
  %991 = getelementptr inbounds %struct.cgraph_edge, ptr %961, i64 0, i32 1
  %992 = load ptr, ptr %991, align 8, !tbaa !155
  %993 = icmp eq ptr %992, %959
  br i1 %993, label %1065, label %994

994:                                              ; preds = %990
  %995 = getelementptr inbounds %struct.cgraph_node, ptr %992, i64 0, i32 19, i32 2
  %996 = load ptr, ptr %995, align 8, !tbaa !150
  %997 = icmp eq ptr %996, %959
  br i1 %997, label %1065, label %998

998:                                              ; preds = %994
  %999 = getelementptr inbounds %struct.cgraph_edge, ptr %961, i64 0, i32 14
  %1000 = load i8, ptr %999, align 2
  %1001 = and i8 %1000, 2
  %1002 = icmp eq i8 %1001, 0
  br i1 %1002, label %1003, label %1065

1003:                                             ; preds = %998
  %1004 = load ptr, ptr %959, align 8, !tbaa !146
  %1005 = getelementptr inbounds %struct.tree_decl_common, ptr %1004, i64 0, i32 2
  %1006 = load i64, ptr %1005, align 8
  %1007 = and i64 %1006, 33554432
  %1008 = icmp eq i64 %1007, 0
  br i1 %1008, label %1009, label %1065

1009:                                             ; preds = %1003
  %1010 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1004, i64 0, i32 4
  %1011 = load i32, ptr %1010, align 8
  %1012 = and i32 %1011, 512
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1065

1014:                                             ; preds = %1009
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %1015 = load i32, ptr @overall_size, align 4, !tbaa !127
  %1016 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1034, label %1018

1018:                                             ; preds = %1014
  %1019 = call ptr @cgraph_node_name(ptr noundef nonnull %959) #20
  %1020 = getelementptr inbounds %struct.cgraph_node, ptr %959, i64 0, i32 19, i32 4
  %1021 = load i32, ptr %1020, align 4, !tbaa !151
  %1022 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1016, ptr noundef nonnull @.str.33, ptr noundef %1019, i32 noundef %1021)
  %1023 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %1024 = load ptr, ptr %960, align 8, !tbaa !135
  %1025 = getelementptr inbounds %struct.cgraph_edge, ptr %1024, i64 0, i32 1
  %1026 = load ptr, ptr %1025, align 8, !tbaa !155
  %1027 = call ptr @cgraph_node_name(ptr noundef %1026) #20
  %1028 = load ptr, ptr %960, align 8, !tbaa !135
  %1029 = getelementptr inbounds %struct.cgraph_edge, ptr %1028, i64 0, i32 1
  %1030 = load ptr, ptr %1029, align 8, !tbaa !155
  %1031 = getelementptr inbounds %struct.cgraph_node, ptr %1030, i64 0, i32 19, i32 4
  %1032 = load i32, ptr %1031, align 4, !tbaa !151
  %1033 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1023, ptr noundef nonnull @.str.34, ptr noundef %1027, i32 noundef %1032)
  br label %1034

1034:                                             ; preds = %1018, %1014
  %1035 = load ptr, ptr %960, align 8, !tbaa !135
  %1036 = getelementptr inbounds %struct.cgraph_edge, ptr %1035, i64 0, i32 1
  %1037 = load ptr, ptr %1036, align 8, !tbaa !155
  %1038 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef %1037, ptr noundef nonnull %959, ptr noundef nonnull %4, i8 noundef zeroext 0), !range !178
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1057, label %1040

1040:                                             ; preds = %1034
  %1041 = load ptr, ptr %960, align 8, !tbaa !135
  call fastcc void @cgraph_mark_inline(ptr noundef %1041)
  %1042 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1064, label %1044

1044:                                             ; preds = %1040
  %1045 = load ptr, ptr %960, align 8, !tbaa !135
  %1046 = getelementptr inbounds %struct.cgraph_edge, ptr %1045, i64 0, i32 1
  %1047 = load ptr, ptr %1046, align 8, !tbaa !155
  %1048 = call ptr @cgraph_node_name(ptr noundef %1047) #20
  %1049 = load ptr, ptr %960, align 8, !tbaa !135
  %1050 = getelementptr inbounds %struct.cgraph_edge, ptr %1049, i64 0, i32 1
  %1051 = load ptr, ptr %1050, align 8, !tbaa !155
  %1052 = getelementptr inbounds %struct.cgraph_node, ptr %1051, i64 0, i32 19, i32 4
  %1053 = load i32, ptr %1052, align 4, !tbaa !151
  %1054 = load i32, ptr @overall_size, align 4, !tbaa !127
  %1055 = sub nsw i32 %1054, %1015
  %1056 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1042, ptr noundef nonnull @.str.35, ptr noundef %1048, i32 noundef %1053, i32 noundef %1055)
  br label %1064

1057:                                             ; preds = %1034
  %1058 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1064, label %1060

1060:                                             ; preds = %1057
  %1061 = load i32, ptr %4, align 4, !tbaa !127
  %1062 = call ptr @cgraph_inline_failed_string(i32 noundef %1061) #20
  %1063 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1058, ptr noundef nonnull @.str.36, ptr noundef %1062)
  br label %1064

1064:                                             ; preds = %1057, %1060, %1040, %1044
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %1065

1065:                                             ; preds = %955, %963, %978, %981, %986, %990, %994, %998, %1003, %1009, %1064
  %1066 = icmp sgt i64 %956, 1
  br i1 %1066, label %955, label %1067, !prof !268, !llvm.loop !314

1067:                                             ; preds = %1065, %953, %945
  %1068 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1071, label %1070, !prof !168

1070:                                             ; preds = %1067
  call void @free_all_ipa_structures_after_iinln() #20
  br label %1071

1071:                                             ; preds = %1070, %1067
  %1072 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1079, label %1074, !prof !169

1074:                                             ; preds = %1071
  %1075 = load i32, ptr @ncalls_inlined, align 4, !tbaa !127
  %1076 = load i32, ptr @nfunctions_inlined, align 4, !tbaa !127
  %1077 = load i32, ptr @overall_size, align 4, !tbaa !127
  %1078 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1072, ptr noundef nonnull @.str.37, i32 noundef %1075, i32 noundef %1076, i32 noundef %64, i32 noundef %1077)
  br label %1079

1079:                                             ; preds = %1074, %1071
  call void @free(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @inline_generate_summary() #9 !prof !181 !PGOFuncName !315 {
  %1 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #20
  store ptr %1, ptr @function_insertion_hook_holder, align 8, !tbaa !112
  %2 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %96, label %4, !prof !168

4:                                                ; preds = %0
  tail call void @ipa_register_cgraph_hooks() #20
  %5 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !112
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !168

7:                                                ; preds = %4
  %8 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !127
  %9 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %8, i64 noundef 8, i64 noundef 48) #20
  store ptr %9, ptr @ipa_node_params_vector, align 8, !tbaa !112
  br label %10

10:                                               ; preds = %7, %4
  %11 = load ptr, ptr @ipa_node_params_vector, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !168

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8, !tbaa !316
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %17 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !127
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %50, label %19, !prof !169

19:                                               ; preds = %15
  %20 = add nsw i32 %17, 1
  br i1 %12, label %23, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %11, align 8, !tbaa !316
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %22, %21 ], [ 0, %19 ]
  br i1 %12, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %11, align 8, !tbaa !316
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = sub nsw i32 %20, %28
  br i1 %12, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %11, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !318
  %33 = load i32, ptr %11, align 8, !tbaa !316
  %34 = sub i32 %32, %33
  %35 = icmp uge i32 %34, %29
  br label %38

36:                                               ; preds = %27
  %37 = icmp eq i32 %28, %20
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i1 [ %35, %30 ], [ %37, %36 ]
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %11, i32 noundef %29, i64 noundef 8, i64 noundef 48) #20
  store ptr %41, ptr @ipa_node_params_vector, align 8, !tbaa !112
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !112, !nonnull !319, !noundef !319
  store i32 %20, ptr %43, align 8, !tbaa !316
  %44 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %43, i64 0, i32 2
  %45 = sext i32 %24 to i64
  %46 = getelementptr inbounds %struct.ipa_node_params, ptr %44, i64 %45
  %47 = sub nsw i32 %20, %24
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %46, i8 0, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %15, %42
  %51 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !112
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56, !prof !168

53:                                               ; preds = %50
  %54 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !127
  %55 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %54, i64 noundef 8, i64 noundef 16) #20
  store ptr %55, ptr @ipa_edge_args_vector, align 8, !tbaa !112
  br label %56

56:                                               ; preds = %53, %50
  %57 = load ptr, ptr @ipa_edge_args_vector, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !168

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !320
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %60, %59 ], [ 0, %56 ]
  %63 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !127
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %96, label %65, !prof !169

65:                                               ; preds = %61
  %66 = add nsw i32 %63, 1
  br i1 %58, label %69, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %57, align 8, !tbaa !320
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %68, %67 ], [ 0, %65 ]
  br i1 %58, label %73, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %57, align 8, !tbaa !320
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %72, %71 ], [ 0, %69 ]
  %75 = sub nsw i32 %66, %74
  br i1 %58, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %57, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !322
  %79 = load i32, ptr %57, align 8, !tbaa !320
  %80 = sub i32 %78, %79
  %81 = icmp uge i32 %80, %75
  br label %84

82:                                               ; preds = %73
  %83 = icmp eq i32 %74, %66
  br label %84

84:                                               ; preds = %82, %76
  %85 = phi i1 [ %81, %76 ], [ %83, %82 ]
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  %87 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %57, i32 noundef %75, i64 noundef 8, i64 noundef 16) #20
  store ptr %87, ptr @ipa_edge_args_vector, align 8, !tbaa !112
  br label %88

88:                                               ; preds = %86, %84
  %89 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !112, !nonnull !319, !noundef !319
  store i32 %66, ptr %89, align 8, !tbaa !320
  %90 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %89, i64 0, i32 2
  %91 = sext i32 %70 to i64
  %92 = getelementptr inbounds %struct.ipa_edge_args, ptr %90, i64 %91
  %93 = sub nsw i32 %66, %70
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %92, i8 0, i64 %95, i1 false)
  br label %96

96:                                               ; preds = %88, %61, %0
  %97 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !112
  %98 = icmp eq ptr %97, null
  br i1 %98, label %110, label %99, !prof !251

99:                                               ; preds = %96, %106
  %100 = phi ptr [ %108, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %100, i64 0, i32 27
  %102 = load i16, ptr %101, align 4
  %103 = and i16 %102, 32
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105, !prof !252

105:                                              ; preds = %99
  tail call fastcc void @analyze_function(ptr noundef nonnull %100)
  br label %106

106:                                              ; preds = %99, %105
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %100, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !112
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %99, !prof !259, !llvm.loop !323

110:                                              ; preds = %106, %96
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @inline_write_summary(ptr noundef %0) #13 !prof !111 {
  %2 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @flag_ipa_cp, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @ipa_prop_write_jump_functions(ptr noundef %0) #20
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @inline_read_summary() #13 !prof !111 {
  %1 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  tail call void @ipa_register_cgraph_hooks() #20
  %4 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @ipa_prop_read_jump_functions() #20
  br label %7

7:                                                ; preds = %3, %6, %0
  %8 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #20
  store ptr %8, ptr @function_insertion_hook_holder, align 8, !tbaa !112
  ret void
}

declare void @lto_ipa_fixup_call_notes(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @inline_transform(ptr noundef %0) #9 !prof !324 !PGOFuncName !325 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48, !prof !326

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !146
  %9 = tail call zeroext i8 @cgraph_preserve_function_body_p(ptr noundef %8) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !327

11:                                               ; preds = %7
  %12 = tail call ptr @save_inline_function_body(ptr noundef nonnull %0) #20
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17, !prof !168

17:                                               ; preds = %13
  %18 = load i32, ptr @warn_inline, align 4
  %19 = freeze i32 %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %30

21:                                               ; preds = %25
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25, !prof !328, !llvm.loop !329

25:                                               ; preds = %17, %21
  %26 = phi ptr [ %23, %21 ], [ %15, %17 ]
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !161
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %21, !prof !330

30:                                               ; preds = %25, %17
  %31 = load i8, ptr @timevar_enable, align 1, !tbaa !123
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33, !prof !326

33:                                               ; preds = %30
  tail call void @timevar_push_1(i32 noundef 47) #20
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @current_function_decl, align 8, !tbaa !112
  %36 = tail call i32 @optimize_inline_calls(ptr noundef %35) #20
  %37 = load i8, ptr @timevar_enable, align 1, !tbaa !123
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39, !prof !326

39:                                               ; preds = %34
  tail call void @timevar_pop_1(i32 noundef 47) #20
  br label %40

40:                                               ; preds = %21, %13, %34, %39
  %41 = phi i32 [ %36, %39 ], [ %36, %34 ], [ 0, %13 ], [ 0, %21 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !112
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 20
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, 50331648
  store i32 %45, ptr %43, align 8
  %46 = tail call i32 @execute_fixup_cfg() #20
  %47 = or i32 %46, %41
  br label %48

48:                                               ; preds = %1, %40
  %49 = phi i32 [ %47, %40 ], [ 0, %1 ]
  ret i32 %49
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_ggc_ma_order(ptr nocapture readnone %0) #13 !prof !111 {
  %2 = load ptr, ptr @order, align 8, !tbaa !112
  %3 = icmp ult ptr %2, inttoptr (i64 2 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %2) #20
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_na_order(ptr nocapture readnone %0) #13 !prof !111 {
  %2 = load ptr, ptr @order, align 8, !tbaa !112
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %2, ptr noundef nonnull @order, ptr noundef nonnull @gt_pch_pa_order, i32 noundef 217) #20
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !331 !PGOFuncName !332 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !261
  %7 = add i32 %1, -3
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %9, label %22, !prof !177

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !146
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !174

15:                                               ; preds = %9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @indent_to(ptr noundef nonnull %16, i32 noundef %2) #20
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %20 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #20
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef %20)
  br label %22

22:                                               ; preds = %15, %18, %9, %3
  %23 = phi i32 [ %1, %9 ], [ %1, %3 ], [ 4, %18 ], [ 4, %15 ]
  %24 = zext i32 %23 to i64
  %25 = inttoptr i64 %24 to ptr
  store ptr %25, ptr %5, align 8, !tbaa !261
  %26 = icmp eq i32 %23, 2
  br i1 %26, label %155, label %27, !prof !333

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !112
  %30 = icmp eq ptr %29, null
  br i1 %30, label %155, label %31, !prof !277

31:                                               ; preds = %27
  %32 = icmp ne i32 %23, 4
  br label %33

33:                                               ; preds = %31, %150
  %34 = phi ptr [ %29, %31 ], [ %153, %150 ]
  %35 = phi i8 [ 0, %31 ], [ %151, %150 ]
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !133
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 18, i32 2
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46, !prof !334

42:                                               ; preds = %33
  %43 = and i8 %39, 8
  %44 = icmp eq i8 %43, 0
  %45 = or i1 %32, %44
  br i1 %45, label %150, label %46, !prof !334

46:                                               ; preds = %42, %33
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 14
  %48 = load i8, ptr %47, align 2
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %150

51:                                               ; preds = %46
  %52 = icmp eq i32 %23, 4
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !161
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = tail call fastcc zeroext i8 @try_inline(ptr noundef nonnull %34, i32 noundef 4, i32 noundef %2), !range !178
  %59 = or i8 %58, %35
  br label %150

60:                                               ; preds = %51
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  tail call void @indent_to(ptr noundef nonnull %61, i32 noundef %2) #20
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %65 = load ptr, ptr %36, align 8, !tbaa !133
  %66 = tail call ptr @cgraph_node_name(ptr noundef %65) #20
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.9, ptr noundef %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %70 = load ptr, ptr %36, align 8, !tbaa !133
  %71 = load ptr, ptr %69, align 8, !tbaa !150
  %72 = icmp eq ptr %71, null
  %73 = load ptr, ptr %70, align 8, !tbaa !146
  %74 = select i1 %72, ptr %0, ptr %71
  %75 = load ptr, ptr %74, align 8, !tbaa !146
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 18, i32 2
  %79 = load i8, ptr %78, align 8
  %80 = and i8 %79, 16
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i32 1, i32 12
  store i32 %82, ptr %53, align 4, !tbaa !127
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %84 = icmp eq ptr %83, null
  br i1 %84, label %150, label %85

85:                                               ; preds = %77
  tail call void @indent_to(ptr noundef nonnull %83, i32 noundef %2) #20
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %87 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 30, i64 1, ptr %86)
  br label %150

88:                                               ; preds = %68
  %89 = tail call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %34) #20
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %93 = icmp eq ptr %92, null
  br i1 %93, label %150, label %94

94:                                               ; preds = %91
  tail call void @indent_to(ptr noundef nonnull %92, i32 noundef %2) #20
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %96 = load i32, ptr %53, align 8, !tbaa !161
  %97 = tail call ptr @cgraph_inline_failed_string(i32 noundef %96) #20
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.11, ptr noundef %97)
  br label %150

99:                                               ; preds = %88
  %100 = load ptr, ptr %0, align 8, !tbaa !146
  %101 = getelementptr inbounds %struct.tree_function_decl, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !123
  %103 = icmp eq ptr %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !335
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.gimple_df, ptr %106, i64 0, i32 10
  %110 = load i8, ptr %109, align 8
  %111 = and i8 %110, 1
  br label %112

112:                                              ; preds = %99, %104, %108
  %113 = phi i8 [ 0, %104 ], [ 0, %99 ], [ %111, %108 ]
  %114 = load ptr, ptr %36, align 8, !tbaa !133
  %115 = load ptr, ptr %114, align 8, !tbaa !146
  %116 = getelementptr inbounds %struct.tree_function_decl, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !123
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !335
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.gimple_df, ptr %121, i64 0, i32 10
  %125 = load i8, ptr %124, align 8
  %126 = and i8 %125, 1
  br label %127

127:                                              ; preds = %112, %119, %123
  %128 = phi i8 [ 0, %119 ], [ 0, %112 ], [ %126, %123 ]
  %129 = icmp eq i8 %113, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133

133:                                              ; preds = %130
  tail call void @indent_to(ptr noundef nonnull %131, i32 noundef %2) #20
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %135 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 39, i64 1, ptr %134)
  br label %150

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.cgraph_node, ptr %114, i64 0, i32 27
  %138 = load i16, ptr %137, align 4
  %139 = and i16 %138, 32
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  tail call void @indent_to(ptr noundef nonnull %142, i32 noundef %2) #20
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %146 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr %145)
  br label %150

147:                                              ; preds = %136
  %148 = tail call fastcc zeroext i8 @try_inline(ptr noundef nonnull %34, i32 noundef %23, i32 noundef %2), !range !178
  %149 = or i8 %148, %35
  br label %150

150:                                              ; preds = %141, %144, %130, %133, %91, %94, %77, %85, %46, %42, %147, %57
  %151 = phi i8 [ %35, %46 ], [ %59, %57 ], [ %35, %85 ], [ %35, %77 ], [ %35, %133 ], [ %35, %130 ], [ %149, %147 ], [ %35, %144 ], [ %35, %141 ], [ %35, %94 ], [ %35, %91 ], [ %35, %42 ]
  %152 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !112
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %33, !prof !336, !llvm.loop !337

155:                                              ; preds = %150, %27, %22
  %156 = phi i8 [ 0, %22 ], [ 0, %27 ], [ %151, %150 ]
  switch i32 %23, label %157 [
    i32 4, label %416
    i32 1, label %416
  ], !prof !338

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %159 = load i8, ptr %158, align 8
  %160 = and i8 %159, 16
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %416, !prof !179

162:                                              ; preds = %157
  %163 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %164 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !112
  %166 = icmp eq ptr %165, null
  br i1 %166, label %414, label %167, !prof !339

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %169 = and i32 %23, -2
  %170 = icmp eq i32 %169, 2
  br label %171

171:                                              ; preds = %167, %409
  %172 = phi ptr [ %165, %167 ], [ %412, %409 ]
  %173 = phi i8 [ %156, %167 ], [ %410, %409 ]
  %174 = getelementptr inbounds %struct.cgraph_edge, ptr %172, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !133
  %176 = getelementptr inbounds %struct.cgraph_node, ptr %175, i64 0, i32 18, i32 2
  %177 = load i8, ptr %176, align 8
  %178 = and i8 %177, 8
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %409, label %180, !prof !340

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.cgraph_edge, ptr %172, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !161
  %183 = icmp ne i32 %182, 0
  %184 = and i8 %177, 16
  %185 = icmp eq i8 %184, 0
  %186 = and i1 %185, %183
  br i1 %186, label %187, label %409, !prof !341

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %175, i64 0, i32 24
  %189 = load i32, ptr %188, align 8, !tbaa !342
  %190 = call zeroext i8 @bitmap_set_bit(ptr noundef %163, i32 noundef %189) #20
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %409, label %192, !prof !343

192:                                              ; preds = %187
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195, !prof !344

195:                                              ; preds = %192
  %196 = load ptr, ptr %174, align 8, !tbaa !133
  %197 = call ptr @cgraph_node_name(ptr noundef %196) #20
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %193, ptr noundef nonnull @.str.14, ptr noundef %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load ptr, ptr %174, align 8, !tbaa !133
  %201 = load ptr, ptr %168, align 8, !tbaa !150
  %202 = icmp eq ptr %201, null
  %203 = load ptr, ptr %200, align 8, !tbaa !146
  %204 = select i1 %202, ptr %0, ptr %201, !prof !344
  %205 = load ptr, ptr %204, align 8, !tbaa !146
  %206 = icmp eq ptr %203, %205
  br i1 %206, label %207, label %218, !prof !345

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.cgraph_node, ptr %200, i64 0, i32 18, i32 2
  %209 = load i8, ptr %208, align 8
  %210 = and i8 %209, 16
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %211, i32 1, i32 12
  store i32 %212, ptr %181, align 4, !tbaa !127
  %213 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %214 = icmp eq ptr %213, null
  br i1 %214, label %409, label %215

215:                                              ; preds = %207
  call void @indent_to(ptr noundef nonnull %213, i32 noundef %2) #20
  %216 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %217 = call i64 @fwrite(ptr nonnull @.str.10, i64 30, i64 1, ptr %216)
  br label %409

218:                                              ; preds = %199
  %219 = load ptr, ptr %0, align 8, !tbaa !146
  %220 = getelementptr inbounds %struct.tree_function_decl, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !123
  %222 = icmp eq ptr %221, null
  br i1 %222, label %231, label %223, !prof !345

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.function, ptr %221, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !335
  %226 = icmp eq ptr %225, null
  br i1 %226, label %231, label %227, !prof !345

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.gimple_df, ptr %225, i64 0, i32 10
  %229 = load i8, ptr %228, align 8
  %230 = and i8 %229, 1
  br label %231

231:                                              ; preds = %218, %223, %227
  %232 = phi i8 [ 0, %223 ], [ 0, %218 ], [ %230, %227 ]
  %233 = load ptr, ptr %200, align 8, !tbaa !146
  %234 = getelementptr inbounds %struct.tree_function_decl, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !123
  %236 = icmp eq ptr %235, null
  br i1 %236, label %245, label %237, !prof !345

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.function, ptr %235, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !335
  %240 = icmp eq ptr %239, null
  br i1 %240, label %245, label %241, !prof !345

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.gimple_df, ptr %239, i64 0, i32 10
  %243 = load i8, ptr %242, align 8
  %244 = and i8 %243, 1
  br label %245

245:                                              ; preds = %231, %237, %241
  %246 = phi i8 [ 0, %237 ], [ 0, %231 ], [ %244, %241 ]
  %247 = icmp eq i8 %232, %246
  br i1 %247, label %254, label %248, !prof !344

248:                                              ; preds = %245
  %249 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %250 = icmp eq ptr %249, null
  br i1 %250, label %409, label %251

251:                                              ; preds = %248
  call void @indent_to(ptr noundef nonnull %249, i32 noundef %2) #20
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %253 = call i64 @fwrite(ptr nonnull @.str.12, i64 39, i64 1, ptr %252)
  br label %409

254:                                              ; preds = %245
  %255 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %172) #20
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %303, label %257, !prof !345

257:                                              ; preds = %254
  %258 = load ptr, ptr %174, align 8, !tbaa !133
  %259 = getelementptr inbounds %struct.cgraph_node, ptr %258, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !112
  %261 = icmp eq ptr %260, null
  br i1 %261, label %295, label %262, !prof !251

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.cgraph_edge, ptr %260, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !133
  %265 = load ptr, ptr %264, align 8, !tbaa !146
  %266 = getelementptr inbounds %struct.tree_function_decl, ptr %265, i64 0, i32 5
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 6144
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %293, label %282, !prof !169

270:                                              ; preds = %282
  %271 = getelementptr inbounds %struct.cgraph_edge, ptr %285, i64 0, i32 6
  %272 = load ptr, ptr %271, align 8, !tbaa !112
  %273 = icmp eq ptr %272, null
  br i1 %273, label %295, label %274, !prof !346, !llvm.loop !347

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.cgraph_edge, ptr %272, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !133
  %277 = load ptr, ptr %276, align 8, !tbaa !146
  %278 = getelementptr inbounds %struct.tree_function_decl, ptr %277, i64 0, i32 5
  %279 = load i32, ptr %278, align 8
  %280 = and i32 %279, 6144
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %293, label %282, !prof !169, !llvm.loop !347

282:                                              ; preds = %262, %274
  %283 = phi i32 [ %279, %274 ], [ %267, %262 ]
  %284 = phi ptr [ %277, %274 ], [ %265, %262 ]
  %285 = phi ptr [ %272, %274 ], [ %260, %262 ]
  %286 = phi i1 [ %273, %274 ], [ %261, %262 ]
  %287 = load i64, ptr %284, align 8
  %288 = and i64 %287, 1048576
  %289 = icmp ne i64 %288, 0
  %290 = and i32 %283, 134217728
  %291 = icmp eq i32 %290, 0
  %292 = and i1 %291, %289
  br i1 %292, label %270, label %293

293:                                              ; preds = %282, %274, %262
  %294 = phi i1 [ %261, %262 ], [ %286, %282 ], [ %273, %274 ]
  br i1 %294, label %295, label %303, !prof !348

295:                                              ; preds = %270, %257, %293
  %296 = load ptr, ptr @cfun, align 8, !tbaa !112
  %297 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %296) #20
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %303, label %299, !prof !168

299:                                              ; preds = %295
  %300 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %301 = getelementptr inbounds %struct.param_info, ptr %300, i64 20, i32 1
  %302 = load i32, ptr %301, align 8, !tbaa !175
  br label %303

303:                                              ; preds = %299, %295, %293, %254
  %304 = phi i32 [ %302, %299 ], [ 0, %295 ], [ 0, %293 ], [ 0, %254 ]
  br i1 %170, label %315, label %305, !prof !344

305:                                              ; preds = %303
  %306 = load i32, ptr @flag_inline_functions, align 4, !tbaa !127
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %362

308:                                              ; preds = %305
  %309 = load ptr, ptr %174, align 8, !tbaa !133
  %310 = load ptr, ptr %309, align 8, !tbaa !146
  %311 = getelementptr inbounds %struct.tree_function_decl, ptr %310, i64 0, i32 5
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 2097152
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %362

315:                                              ; preds = %308, %303
  %316 = getelementptr inbounds %struct.cgraph_edge, ptr %172, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !155
  %318 = load ptr, ptr %174, align 8, !tbaa !133
  %319 = getelementptr inbounds %struct.cgraph_node, ptr %318, i64 0, i32 19, i32 4
  %320 = load i32, ptr %319, align 4, !tbaa !151
  %321 = getelementptr inbounds %struct.cgraph_node, ptr %318, i64 0, i32 18, i32 1, i32 2
  %322 = load i32, ptr %321, align 4, !tbaa !246
  %323 = sub nsw i32 %320, %322
  %324 = getelementptr inbounds %struct.cgraph_node, ptr %317, i64 0, i32 19, i32 4
  %325 = load i32, ptr %324, align 4, !tbaa !151
  %326 = add nsw i32 %323, %325
  %327 = icmp sgt i32 %326, -1
  br i1 %327, label %329, label %328, !prof !344

328:                                              ; preds = %315
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %329

329:                                              ; preds = %315, %328
  %330 = load ptr, ptr %316, align 8, !tbaa !155
  %331 = getelementptr inbounds %struct.cgraph_node, ptr %330, i64 0, i32 19, i32 4
  %332 = load i32, ptr %331, align 4, !tbaa !151
  %333 = add nsw i32 %332, %304
  %334 = icmp sgt i32 %326, %333
  br i1 %334, label %335, label %362, !prof !349

335:                                              ; preds = %329
  %336 = load ptr, ptr %174, align 8, !tbaa !133
  %337 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %336)
  %338 = icmp sgt i32 %337, %304
  br i1 %338, label %339, label %362, !prof !350

339:                                              ; preds = %335
  %340 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %341 = icmp eq ptr %340, null
  br i1 %341, label %409, label %342, !prof !350

342:                                              ; preds = %339
  call void @indent_to(ptr noundef nonnull %340, i32 noundef %2) #20
  %343 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %344 = load ptr, ptr %316, align 8, !tbaa !155
  %345 = load ptr, ptr %174, align 8, !tbaa !133
  %346 = getelementptr inbounds %struct.cgraph_node, ptr %345, i64 0, i32 19, i32 4
  %347 = load i32, ptr %346, align 4, !tbaa !151
  %348 = getelementptr inbounds %struct.cgraph_node, ptr %345, i64 0, i32 18, i32 1, i32 2
  %349 = load i32, ptr %348, align 4, !tbaa !246
  %350 = sub nsw i32 %347, %349
  %351 = getelementptr inbounds %struct.cgraph_node, ptr %344, i64 0, i32 19, i32 4
  %352 = load i32, ptr %351, align 4, !tbaa !151
  %353 = add nsw i32 %350, %352
  %354 = icmp sgt i32 %353, -1
  br i1 %354, label %356, label %355

355:                                              ; preds = %342
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %356

356:                                              ; preds = %342, %355
  %357 = load ptr, ptr %316, align 8, !tbaa !155
  %358 = getelementptr inbounds %struct.cgraph_node, ptr %357, i64 0, i32 19, i32 4
  %359 = load i32, ptr %358, align 4, !tbaa !151
  %360 = sub nsw i32 %353, %359
  %361 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef nonnull @.str.15, i32 noundef %360)
  br label %409

362:                                              ; preds = %308, %335, %329, %305
  %363 = load ptr, ptr %174, align 8, !tbaa !133
  %364 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef nonnull %0, ptr noundef %363, ptr noundef nonnull %181, i8 noundef zeroext 0), !range !178
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %371, label %366, !prof !168

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.cgraph_edge, ptr %172, i64 0, i32 14
  %368 = load i8, ptr %367, align 2
  %369 = and i8 %368, 2
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %379, label %371, !prof !169

371:                                              ; preds = %366, %362
  %372 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %373 = icmp eq ptr %372, null
  br i1 %373, label %409, label %374

374:                                              ; preds = %371
  call void @indent_to(ptr noundef nonnull %372, i32 noundef %2) #20
  %375 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %376 = load i32, ptr %181, align 8, !tbaa !161
  %377 = call ptr @cgraph_inline_failed_string(i32 noundef %376) #20
  %378 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %375, ptr noundef nonnull @.str.16, ptr noundef %377)
  br label %409

379:                                              ; preds = %366
  %380 = load ptr, ptr %174, align 8, !tbaa !133
  %381 = getelementptr inbounds %struct.cgraph_node, ptr %380, i64 0, i32 27
  %382 = load i16, ptr %381, align 4
  %383 = and i16 %382, 32
  %384 = icmp eq i16 %383, 0
  br i1 %384, label %385, label %391, !prof !168

385:                                              ; preds = %379
  %386 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %387 = icmp eq ptr %386, null
  br i1 %387, label %409, label %388

388:                                              ; preds = %385
  call void @indent_to(ptr noundef nonnull %386, i32 noundef %2) #20
  %389 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %390 = call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr %389)
  br label %409

391:                                              ; preds = %379
  %392 = call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %172) #20
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %402, !prof !168

394:                                              ; preds = %391
  %395 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %396 = icmp eq ptr %395, null
  br i1 %396, label %409, label %397

397:                                              ; preds = %394
  call void @indent_to(ptr noundef nonnull %395, i32 noundef %2) #20
  %398 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %399 = load i32, ptr %181, align 8, !tbaa !161
  %400 = call ptr @cgraph_inline_failed_string(i32 noundef %399) #20
  %401 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.17, ptr noundef %400)
  br label %409

402:                                              ; preds = %391
  %403 = load ptr, ptr %174, align 8, !tbaa !133
  %404 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef %403, ptr noundef nonnull %4), !range !178
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %409, label %406, !prof !168

406:                                              ; preds = %402
  %407 = call fastcc zeroext i8 @try_inline(ptr noundef nonnull %172, i32 noundef %23, i32 noundef %2), !range !178
  %408 = or i8 %407, %173
  br label %409

409:                                              ; preds = %402, %406, %394, %397, %385, %388, %371, %374, %339, %356, %248, %251, %207, %215, %187, %171, %180
  %410 = phi i8 [ %173, %180 ], [ %173, %171 ], [ %173, %187 ], [ %173, %215 ], [ %173, %207 ], [ %173, %251 ], [ %173, %248 ], [ %173, %356 ], [ %173, %339 ], [ %173, %374 ], [ %173, %371 ], [ %173, %388 ], [ %173, %385 ], [ %173, %397 ], [ %173, %394 ], [ %408, %406 ], [ %173, %402 ]
  %411 = getelementptr inbounds %struct.cgraph_edge, ptr %172, i64 0, i32 6
  %412 = load ptr, ptr %411, align 8, !tbaa !112
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %171, !prof !351, !llvm.loop !352

414:                                              ; preds = %409, %162
  %415 = phi i8 [ %156, %162 ], [ %410, %409 ]
  call void @bitmap_obstack_free(ptr noundef %163) #20
  br label %416

416:                                              ; preds = %155, %155, %414, %157
  %417 = phi i8 [ %156, %157 ], [ %415, %414 ], [ %156, %155 ], [ %156, %155 ]
  %418 = ptrtoint ptr %6 to i64
  %419 = and i64 %418, 4294967295
  %420 = inttoptr i64 %419 to ptr
  store ptr %420, ptr %5, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i8 %417
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare i32 @optimize_inline_calls(ptr noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @indent_to(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @try_inline(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 !prof !181 !PGOFuncName !353 {
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !261
  %8 = ptrtoint ptr %7 to i64
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 18, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = lshr i8 %10, 4
  %12 = and i8 %11, 1
  %13 = and i64 %8, 4294967295
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %42, label %15, !prof !169

15:                                               ; preds = %3
  %16 = icmp ne i8 %12, 0
  %17 = icmp ne i32 %1, 1
  %18 = and i1 %17, %16
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %18, label %21, label %26

21:                                               ; preds = %15
  br i1 %20, label %42, label %22

22:                                               ; preds = %21
  tail call void @indent_to(ptr noundef nonnull %19, i32 noundef %2) #20
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %24 = tail call ptr @cgraph_node_name(ptr noundef %5) #20
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.18, ptr noundef %24)
  br label %42

26:                                               ; preds = %15
  br i1 %20, label %34, label %27

27:                                               ; preds = %26
  tail call void @indent_to(ptr noundef nonnull %19, i32 noundef %2) #20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %29 = tail call ptr @cgraph_node_name(ptr noundef %5) #20
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !155
  %32 = tail call ptr @cgraph_node_name(ptr noundef %31) #20
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.19, ptr noundef %29, ptr noundef %32)
  br label %34

34:                                               ; preds = %27, %26
  %35 = load ptr, ptr %4, align 8, !tbaa !133
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 18, i32 2
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 1, i32 12
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 %40, ptr %41, align 8, !tbaa !161
  br label %71

42:                                               ; preds = %21, %22, %3
  %43 = phi i32 [ %1, %3 ], [ 1, %22 ], [ 1, %21 ]
  %44 = zext i32 %43 to i64
  %45 = inttoptr i64 %44 to ptr
  store ptr %45, ptr %6, align 8, !tbaa !261
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48, !prof !169

48:                                               ; preds = %42
  tail call void @indent_to(ptr noundef nonnull %46, i32 noundef %2) #20
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %50 = load ptr, ptr %4, align 8, !tbaa !133
  %51 = tail call ptr @cgraph_node_name(ptr noundef %50) #20
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !155
  %54 = tail call ptr @cgraph_node_name(ptr noundef %53) #20
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.20, ptr noundef %51, ptr noundef %54)
  br label %56

56:                                               ; preds = %48, %42
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !161
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60, !prof !168

60:                                               ; preds = %56
  tail call fastcc void @cgraph_mark_inline(ptr noundef %0)
  %61 = icmp eq i32 %43, 4
  %62 = icmp ne i8 %12, 0
  %63 = select i1 %61, i1 true, i1 %62, !prof !168
  br i1 %63, label %64, label %68, !prof !168

64:                                               ; preds = %60
  %65 = load ptr, ptr %4, align 8, !tbaa !133
  %66 = add nsw i32 %2, 1
  %67 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %65, i32 noundef %43, i32 noundef %66), !range !178
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = phi i8 [ 0, %56 ], [ 1, %60 ], [ 1, %64 ]
  %70 = inttoptr i64 %13 to ptr
  store ptr %70, ptr %6, align 8, !tbaa !261
  br label %71

71:                                               ; preds = %68, %34
  %72 = phi i8 [ %69, %68 ], [ 0, %34 ]
  ret i8 %72
}

declare zeroext i8 @tree_can_inline_p(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_inline_failed_string(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cgraph_estimate_growth(ptr noundef %0) unnamed_addr #9 !prof !354 !PGOFuncName !355 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !272
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %5, label %70, !prof !356

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9, !prof !357

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 2
  br label %12

12:                                               ; preds = %9, %38
  %13 = phi ptr [ %7, %9 ], [ %41, %38 ]
  %14 = phi i8 [ 0, %9 ], [ %19, %38 ]
  %15 = phi i32 [ 0, %9 ], [ %39, %38 ]
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, %0
  %19 = select i1 %18, i8 1, i8 %14, !prof !358
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !161
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23, !prof !358

23:                                               ; preds = %12
  %24 = load i32, ptr %10, align 4, !tbaa !151
  %25 = load i32, ptr %11, align 4, !tbaa !246
  %26 = sub nsw i32 %24, %25
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 19, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !151
  %29 = add nsw i32 %26, %28
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %32, label %31, !prof !359

31:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %32

32:                                               ; preds = %23, %31
  %33 = load ptr, ptr %16, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %33, i64 0, i32 19, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !151
  %36 = add i32 %29, %15
  %37 = sub i32 %36, %35
  br label %38

38:                                               ; preds = %12, %32
  %39 = phi i32 [ %37, %32 ], [ %15, %12 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %12, !prof !360, !llvm.loop !361

43:                                               ; preds = %38
  %44 = icmp ne i8 %19, 0
  br label %45

45:                                               ; preds = %43, %5
  %46 = phi i32 [ 0, %5 ], [ %39, %43 ]
  %47 = phi i1 [ false, %5 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %68, !prof !362

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %54 = load i8, ptr %53, align 8
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %68, !prof !362

57:                                               ; preds = %52
  %58 = load ptr, ptr %0, align 8, !tbaa !146
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 33554432
  %62 = icmp ne i64 %61, 0
  %63 = select i1 %62, i1 true, i1 %47, !prof !149
  br i1 %63, label %68, label %64, !prof !149

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !151
  %67 = sub nsw i32 %46, %66
  br label %68

68:                                               ; preds = %45, %64, %57, %52
  %69 = phi i32 [ %46, %57 ], [ %67, %64 ], [ %46, %52 ], [ %46, %45 ]
  store i32 %69, ptr %2, align 8, !tbaa !272
  br label %70

70:                                               ; preds = %1, %68
  %71 = phi i32 [ %69, %68 ], [ %3, %1 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @cgraph_check_inline_limits(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef writeonly %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !331 !PGOFuncName !363 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %21, !prof !333

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10, !prof !251

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %17, %10 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !133
  %15 = icmp eq ptr %14, %1
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %12, %16
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !prof !364, !llvm.loop !365

21:                                               ; preds = %10, %6, %4
  %22 = phi i32 [ 1, %4 ], [ 0, %6 ], [ %17, %10 ]
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %0, ptr %24, !prof !179
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 18, i32 1
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 18, i32 1, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !244
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !244
  %33 = icmp sgt i32 %29, %32
  %34 = select i1 %33, ptr %27, ptr %30, !prof !179
  %35 = getelementptr inbounds %struct.inline_summary, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !244
  %37 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %38 = getelementptr inbounds %struct.param_info, ptr %37, i64 16, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !175
  %40 = mul nsw i32 %39, %36
  %41 = sdiv i32 %40, 100
  %42 = add nsw i32 %41, %36
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !151
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !246
  %47 = sub nsw i32 %44, %46
  %48 = mul nsw i32 %47, %22
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !151
  %51 = add nsw i32 %48, %50
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %54, label %53, !prof !179

53:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %21, %53
  %55 = load i32, ptr %49, align 4, !tbaa !151
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %66, label %57, !prof !333

57:                                               ; preds = %54
  %58 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %59 = getelementptr inbounds %struct.param_info, ptr %58, i64 15, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !175
  %61 = icmp sgt i32 %51, %60
  %62 = icmp sgt i32 %51, %42
  %63 = select i1 %61, i1 %62, i1 false, !prof !366
  br i1 %63, label %64, label %66, !prof !299

64:                                               ; preds = %57
  %65 = icmp eq ptr %2, null
  br i1 %65, label %91, label %89

66:                                               ; preds = %57, %54
  %67 = load i64, ptr %27, align 8, !tbaa !158
  %68 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  %69 = getelementptr inbounds %struct.param_info, ptr %68, i64 22, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !175
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %67, %71
  %73 = sdiv i64 %72, 100
  %74 = add nsw i64 %73, %67
  %75 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !157
  %77 = add nsw i64 %76, %67
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19
  %79 = load i64, ptr %78, align 8, !tbaa !159
  %80 = add nsw i64 %77, %79
  %81 = icmp sgt i64 %80, %74
  br i1 %81, label %82, label %91, !prof !367

82:                                               ; preds = %66
  %83 = getelementptr inbounds %struct.param_info, ptr %68, i64 21, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !175
  %85 = sext i32 %84 to i64
  %86 = icmp sgt i64 %80, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = icmp eq ptr %2, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %87, %64
  %90 = phi i32 [ 7, %64 ], [ 8, %87 ]
  store i32 %90, ptr %2, align 4, !tbaa !127
  br label %91

91:                                               ; preds = %89, %66, %82, %87, %64
  %92 = phi i8 [ 0, %64 ], [ 0, %87 ], [ 1, %82 ], [ 1, %66 ], [ 0, %89 ]
  ret i8 %92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @cgraph_default_inline_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #14 !prof !181 !PGOFuncName !368 {
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  %4 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13, !prof !273

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = icmp eq ptr %1, null
  br i1 %12, label %42, label %40

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 32
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %20, !prof !273

18:                                               ; preds = %13
  %19 = icmp eq ptr %1, null
  br i1 %19, label %42, label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !151
  %27 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  br i1 %24, label %34, label %28, !prof !274

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.param_info, ptr %27, i64 2, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !175
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %42, label %32, !prof !174

32:                                               ; preds = %28
  %33 = icmp eq ptr %1, null
  br i1 %33, label %42, label %40

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.param_info, ptr %27, i64 3, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !175
  %37 = icmp slt i32 %26, %36
  br i1 %37, label %42, label %38, !prof !275

38:                                               ; preds = %34
  %39 = icmp eq ptr %1, null
  br i1 %39, label %42, label %40, !prof !369

40:                                               ; preds = %38, %32, %18, %11
  %41 = phi i32 [ 6, %11 ], [ 3, %18 ], [ 9, %32 ], [ 10, %38 ]
  store i32 %41, ptr %1, align 4, !tbaa !127
  br label %42

42:                                               ; preds = %40, %28, %34, %38, %32, %18, %11
  %43 = phi i8 [ 0, %11 ], [ 0, %18 ], [ 0, %32 ], [ 0, %38 ], [ 1, %34 ], [ 1, %28 ], [ 0, %40 ]
  ret i8 %43
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @cgraph_mark_inline(ptr noundef readonly %0) unnamed_addr #13 !prof !181 !PGOFuncName !370 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !169

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %1, %10
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !135
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15, !prof !251

15:                                               ; preds = %11, %31
  %16 = phi ptr [ %32, %31 ], [ %0, %11 ]
  %17 = phi ptr [ %19, %31 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !155
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %31, !prof !371

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !161
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !372

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %17, i8 noundef zeroext 1, ptr noundef null)
  %29 = icmp eq ptr %17, %16
  %30 = select i1 %29, ptr %19, ptr %16, !prof !371
  br label %31

31:                                               ; preds = %27, %15, %23
  %32 = phi ptr [ %16, %23 ], [ %16, %15 ], [ %30, %27 ]
  %33 = icmp eq ptr %19, null
  br i1 %33, label %34, label %15, !prof !373, !llvm.loop !374

34:                                               ; preds = %31, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #9 !prof !375 !PGOFuncName !376 {
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 19, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !151
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !377

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 311, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %3, %11
  store i32 0, ptr %8, align 8, !tbaa !161
  %13 = load ptr, ptr %4, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 6
  %15 = load i8, ptr %14, align 4, !tbaa !378
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22, !prof !379

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !146
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 65536
  store i32 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load ptr, ptr %4, align 8, !tbaa !133
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 19, i32 6
  store i8 1, ptr %24, align 4, !tbaa !378
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !135
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %50, !prof !379

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 27
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %50, !prof !145

35:                                               ; preds = %30
  %36 = load ptr, ptr %23, align 8, !tbaa !146
  %37 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46, !prof !147

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 18, i32 2
  %43 = load i8, ptr %42, align 8
  %44 = and i8 %43, 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50, !prof !145

46:                                               ; preds = %35, %41
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !148
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !147

50:                                               ; preds = %30, %46, %41, %22
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i1 [ false, %50 ], [ true, %46 ]
  tail call void @cgraph_clone_inlined_nodes(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %1)
  %53 = load ptr, ptr %4, align 8, !tbaa !133
  %54 = icmp eq ptr %0, null
  br i1 %54, label %102, label %55, !prof !380

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %57 = load i32, ptr %56, align 8, !tbaa !152
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 19, i32 4
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 18, i32 1, i32 2
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 19, i32 3
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 18, i32 1, i32 4
  %62 = sext i32 %57 to i64
  %63 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !161
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %102, !prof !381

66:                                               ; preds = %82
  %67 = getelementptr inbounds %struct.cgraph_edge, ptr %100, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !161
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %102, !prof !382, !llvm.loop !383

70:                                               ; preds = %55, %66
  %71 = phi ptr [ %100, %66 ], [ %0, %55 ]
  %72 = getelementptr inbounds %struct.cgraph_edge, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !155
  %74 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 19, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !151
  %76 = load i32, ptr %58, align 4, !tbaa !151
  %77 = load i32, ptr %59, align 4, !tbaa !246
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, %75
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %82, label %81, !prof !163

81:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %82

82:                                               ; preds = %70, %81
  store i32 %79, ptr %74, align 4, !tbaa !151
  %83 = load i32, ptr %60, align 8, !tbaa !247
  %84 = sext i32 %83 to i64
  %85 = load i32, ptr %61, align 4, !tbaa !245
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = mul nsw i64 %87, %62
  %89 = add nsw i64 %88, 500
  %90 = sdiv i64 %89, 1000
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 19, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !247
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = tail call i64 @llvm.smax.i64(i64 %94, i64 0)
  %96 = tail call i64 @llvm.umin.i64(i64 %95, i64 1000000000)
  %97 = trunc i64 %96 to i32
  store i32 %97, ptr %91, align 8, !tbaa !247
  %98 = load ptr, ptr %72, align 8, !tbaa !155
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !135
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %66, !prof !384, !llvm.loop !383

102:                                              ; preds = %82, %66, %55, %51
  %103 = phi ptr [ null, %51 ], [ null, %55 ], [ %73, %66 ], [ %73, %82 ]
  %104 = phi i32 [ 0, %51 ], [ 0, %55 ], [ %79, %66 ], [ %79, %82 ]
  %105 = phi i32 [ 0, %51 ], [ 0, %55 ], [ %75, %66 ], [ %75, %82 ]
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 19, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = icmp eq ptr %107, %103
  br i1 %108, label %110, label %109, !prof !163

109:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #20
  br label %110

110:                                              ; preds = %102, %109
  %111 = icmp sgt i32 %104, %105
  br i1 %111, label %112, label %116, !prof !385

112:                                              ; preds = %110
  %113 = sub i32 %104, %105
  %114 = load i32, ptr @overall_size, align 4, !tbaa !127
  %115 = add nsw i32 %113, %114
  store i32 %115, ptr @overall_size, align 4, !tbaa !127
  br label %116

116:                                              ; preds = %112, %110
  br i1 %52, label %117, label %120, !prof !162

117:                                              ; preds = %116
  %118 = load i32, ptr @overall_size, align 4, !tbaa !127
  %119 = sub nsw i32 %118, %7
  store i32 %119, ptr @overall_size, align 4, !tbaa !127
  br label %120

120:                                              ; preds = %117, %116
  %121 = load i32, ptr @ncalls_inlined, align 4, !tbaa !127
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr @ncalls_inlined, align 4, !tbaa !127
  %123 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !377

125:                                              ; preds = %120
  %126 = tail call zeroext i8 @ipa_propagate_indirect_call_infos(ptr noundef %0, ptr noundef %2) #20
  br label %127

127:                                              ; preds = %120, %125
  %128 = phi i8 [ %126, %125 ], [ 0, %120 ]
  ret i8 %128
}

declare zeroext i8 @ipa_propagate_indirect_call_infos(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @estimate_move_cost(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

declare void @ipa_update_after_lto_read() local_unnamed_addr #3

declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #3

declare void @free_all_ipa_structures_after_iinln() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

declare ptr @fibheap_new() local_unnamed_addr #3

declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cgraph_edge_badness(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !386 !PGOFuncName !387 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 19, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !151
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 18, i32 1, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !246
  %10 = sub nsw i32 %7, %9
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 19, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !151
  %13 = add nsw i32 %10, %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15, !prof !388

15:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %16

16:                                               ; preds = %1, %15
  %17 = load ptr, ptr %2, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 19, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !151
  %20 = sub nsw i32 %13, %19
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25, !prof !389

22:                                               ; preds = %16
  %23 = sub nsw i32 -2147483648, %20
  %24 = zext i32 %23 to i64
  br label %95

25:                                               ; preds = %16
  %26 = load i64, ptr @max_count, align 8, !tbaa !214
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %46, label %28, !prof !388

28:                                               ; preds = %25
  %29 = load i64, ptr %0, align 8, !tbaa !154
  %30 = sitofp i64 %29 to double
  %31 = fmul double %30, 0xC1E0000000000000
  %32 = sitofp i64 %26 to double
  %33 = fdiv double %31, %32
  %34 = load i64, ptr @max_benefit, align 8, !tbaa !214
  %35 = add nsw i64 %34, 1
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %33, %36
  %38 = fptosi double %37 to i32
  %39 = load ptr, ptr %4, align 8, !tbaa !133
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %39, i64 0, i32 18, i32 1, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !245
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %42, %38
  %44 = sdiv i32 %43, %20
  %45 = zext i32 %44 to i64
  br label %95

46:                                               ; preds = %25
  %47 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !127
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %82, label %49, !prof !389

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !152
  %52 = sdiv i32 %51, 10
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %20, 10000
  %55 = load ptr, ptr %4, align 8, !tbaa !133
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 18, i32 1, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !245
  %58 = mul nsw i32 %57, 100
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 19, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !247
  %61 = add nsw i32 %60, 1
  %62 = sdiv i32 %58, %61
  %63 = icmp slt i32 %62, 99
  %64 = add nsw i32 %62, 1
  %65 = select i1 %63, i32 %64, i32 100, !prof !390
  %66 = mul nsw i32 %65, %53
  %67 = icmp sgt i32 %66, 10000
  br i1 %67, label %68, label %72, !prof !391

68:                                               ; preds = %49
  %69 = zext nneg i32 %66 to i64
  %70 = tail call i32 @ceil_log2(i64 noundef %69) #20
  %71 = add nsw i32 %70, 9992
  br label %72

72:                                               ; preds = %49, %68
  %73 = phi i32 [ %71, %68 ], [ %66, %49 ]
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 1)
  %75 = udiv i32 %54, %74
  %76 = zext nneg i32 %75 to i64
  %77 = load ptr, ptr %4, align 8, !tbaa !133
  %78 = tail call fastcc i32 @cgraph_estimate_growth(ptr noundef %77)
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %76
  %81 = tail call i64 @llvm.smin.i64(i64 %80, i64 2147483647)
  br label %95

82:                                               ; preds = %46
  %83 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %84 = load i16, ptr %83, align 8, !tbaa !153
  %85 = tail call i16 @llvm.umin.i16(i16 %84, i16 8)
  %86 = zext nneg i16 %85 to i64
  %87 = load ptr, ptr %4, align 8, !tbaa !133
  %88 = tail call fastcc i32 @cgraph_estimate_growth(ptr noundef %87)
  %89 = shl nsw i32 %88, 8
  %90 = sext i32 %89 to i64
  %91 = icmp sgt i32 %88, 0
  %92 = lshr i64 %90, %86
  %93 = shl nsw i64 %90, %86
  %94 = select i1 %91, i64 %92, i64 %93
  br label %95

95:                                               ; preds = %28, %82, %72, %22
  %96 = phi i64 [ %24, %22 ], [ %45, %28 ], [ %81, %72 ], [ %94, %82 ]
  %97 = load ptr, ptr %2, align 8, !tbaa !155
  %98 = load ptr, ptr %4, align 8, !tbaa !133
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %97, i64 0, i32 19, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !150
  %101 = icmp eq ptr %100, null
  %102 = load ptr, ptr %98, align 8, !tbaa !146
  %103 = select i1 %101, ptr %97, ptr %100, !prof !388
  %104 = load ptr, ptr %103, align 8, !tbaa !146
  %105 = icmp eq ptr %102, %104
  %106 = trunc i64 %96 to i32
  %107 = zext i1 %105 to i32
  %108 = add i32 %107, %106
  ret i32 %108
}

declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @add_new_edges_to_heap(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !111 !PGOFuncName !392 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %20, %2
  br i1 %3, label %7, label %5, !prof !299

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 8, !tbaa !306
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %4 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10, !prof !174

10:                                               ; preds = %7
  %11 = load i32, ptr %1, align 8, !tbaa !306
  %12 = add i32 %11, -1
  store i32 %12, ptr %1, align 8, !tbaa !306
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %1, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !284
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 885, ptr noundef nonnull @.str.1) #20
  br label %20

20:                                               ; preds = %10, %19
  %21 = tail call fastcc i32 @cgraph_edge_badness(ptr noundef %15)
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @fibheap_insert(ptr noundef %0, i64 noundef %22, ptr noundef %15) #20
  store ptr %23, ptr %16, align 8, !tbaa !284
  br label %4, !llvm.loop !308

24:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_callee_keys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !prof !393 !PGOFuncName !394 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %4, align 8, !tbaa !272
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !prof !380

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %19, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !161
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !133
  br i1 %12, label %16, label %15, !prof !162

15:                                               ; preds = %8
  tail call fastcc void @update_caller_keys(ptr noundef %0, ptr noundef %14, ptr noundef %2)
  br label %17

16:                                               ; preds = %8
  tail call fastcc void @update_callee_keys(ptr noundef %0, ptr noundef %14, ptr noundef %2)
  br label %17

17:                                               ; preds = %15, %16
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !prof !395, !llvm.loop !396

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_caller_keys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !prof !397 !PGOFuncName !398 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 24
  %7 = icmp eq i8 %6, 8
  br i1 %7, label %8, label %111, !prof !399

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %111, !prof !174

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %14 = load i32, ptr %13, align 8, !tbaa !342
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %111, !prof !174

17:                                               ; preds = %12
  %18 = load i32, ptr %13, align 8, !tbaa !342
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %18) #20
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %20, align 8, !tbaa !272
  %21 = load i8, ptr %4, align 8
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %111, label %24, !prof !299

24:                                               ; preds = %17
  %25 = load ptr, ptr %1, align 8, !tbaa !146
  %26 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !127
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33, !prof !273

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 2097152
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 32
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %55, label %38, !prof !273

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 2097152
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !151
  %45 = load ptr, ptr @compiler_params, align 8, !tbaa !112
  br i1 %42, label %51, label %46, !prof !274

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.param_info, ptr %45, i64 2, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !175
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %55, label %50, !prof !174

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.param_info, ptr %45, i64 3, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !175
  %54 = icmp sge i32 %44, %53
  br label %55

55:                                               ; preds = %51, %33, %28, %46, %50
  %56 = phi i32 [ undef, %46 ], [ 9, %50 ], [ 6, %28 ], [ 3, %33 ], [ 10, %51 ]
  %57 = phi i1 [ false, %46 ], [ true, %50 ], [ true, %28 ], [ true, %33 ], [ %54, %51 ]
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !112
  %60 = icmp eq ptr %59, null
  br i1 %57, label %61, label %77, !prof !400

61:                                               ; preds = %55
  br i1 %60, label %111, label %62, !prof !357

62:                                               ; preds = %61, %73
  %63 = phi ptr [ %75, %73 ], [ %59, %61 ]
  %64 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !284
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67, !prof !401

67:                                               ; preds = %62
  %68 = tail call ptr @fibheap_delete_node(ptr noundef %0, ptr noundef nonnull %65) #20
  store ptr null, ptr %64, align 8, !tbaa !284
  %69 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !161
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 %56, ptr %69, align 8, !tbaa !161
  br label %73

73:                                               ; preds = %62, %72, %67
  %74 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !112
  %76 = icmp eq ptr %75, null
  br i1 %76, label %111, label %62, !prof !402, !llvm.loop !403

77:                                               ; preds = %55
  br i1 %60, label %111, label %78, !prof !404

78:                                               ; preds = %77, %107
  %79 = phi ptr [ %109, %107 ], [ %59, %77 ]
  %80 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !161
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %107, label %83, !prof !405

83:                                               ; preds = %78
  %84 = tail call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %79)
  %85 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !284
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %88, !prof !405

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.fibnode, ptr %86, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !406
  %91 = icmp eq ptr %90, %79
  br i1 %91, label %93, label %92, !prof !408

92:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 658, ptr noundef nonnull @.str.1) #20
  br label %93

93:                                               ; preds = %88, %92
  %94 = getelementptr inbounds %struct.fibnode, ptr %86, i64 0, i32 4
  %95 = load i64, ptr %94, align 8, !tbaa !409
  %96 = sext i32 %84 to i64
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %107, label %98, !prof !405

98:                                               ; preds = %93
  %99 = tail call i64 @fibheap_replace_key(ptr noundef %0, ptr noundef nonnull %86, i64 noundef %96) #20
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107, !prof !405

101:                                              ; preds = %98
  %102 = load ptr, ptr %85, align 8, !tbaa !284
  %103 = tail call ptr @fibheap_delete_node(ptr noundef %0, ptr noundef %102) #20
  br label %104

104:                                              ; preds = %101, %83
  %105 = sext i32 %84 to i64
  %106 = tail call ptr @fibheap_insert(ptr noundef %0, i64 noundef %105, ptr noundef nonnull %79) #20
  store ptr %106, ptr %85, align 8, !tbaa !284
  br label %107

107:                                              ; preds = %104, %98, %93, %78
  %108 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !112
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %78, !prof !410, !llvm.loop !411

111:                                              ; preds = %107, %73, %77, %61, %17, %12, %3, %8
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ceil_log2(i64 noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lookup_recursive_calls(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #13 !prof !111 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %31, %3
  %8 = load ptr, ptr %4, align 8, !tbaa !112
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %35

10:                                               ; preds = %3, %31
  %11 = phi ptr [ %33, %31 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64, ptr @max_count, align 8, !tbaa !214
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, ptr @lookup_recursive_calls.priority, align 4, !tbaa !127
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @lookup_recursive_calls.priority, align 4, !tbaa !127
  %21 = sext i32 %19 to i64
  br label %28

22:                                               ; preds = %15
  %23 = load i64, ptr %11, align 8, !tbaa !154
  %24 = add nsw i64 %16, 16777215
  %25 = sdiv i64 %24, 16777216
  %26 = sdiv i64 %23, %25
  %27 = sub nsw i64 0, %26
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i64 [ %21, %18 ], [ %27, %22 ]
  %30 = tail call ptr @fibheap_insert(ptr noundef %2, i64 noundef %29, ptr noundef nonnull %11) #20
  br label %31

31:                                               ; preds = %10, %28
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = icmp eq ptr %33, null
  br i1 %34, label %7, label %10, !llvm.loop !412

35:                                               ; preds = %7, %43
  %36 = phi ptr [ %45, %43 ], [ %8, %7 ]
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !161
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !133
  tail call fastcc void @lookup_recursive_calls(ptr noundef %0, ptr noundef %42, ptr noundef %2)
  br label %43

43:                                               ; preds = %35, %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !112
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %35, !llvm.loop !413

47:                                               ; preds = %43, %7
  ret void
}

declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @fibheap_replace_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #13 !prof !111 {
  tail call fastcc void @analyze_function(ptr noundef %0)
  ret void
}

declare void @ipa_register_cgraph_hooks() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #9 !prof !414 !PGOFuncName !415 {
  %2 = load ptr, ptr %0, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  tail call void @push_cfun(ptr noundef %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !146
  store ptr %5, ptr @current_function_decl, align 8, !tbaa !112
  %6 = tail call i32 @compute_inline_parameters(ptr noundef nonnull %0)
  %7 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !127
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9, !prof !416

9:                                                ; preds = %1
  %10 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !127
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !416

12:                                               ; preds = %9
  tail call void @ipa_initialize_node_params(ptr noundef nonnull %0) #20
  tail call void @ipa_detect_param_modifications(ptr noundef nonnull %0) #20
  br label %13

13:                                               ; preds = %12, %9
  tail call void @ipa_analyze_params_uses(ptr noundef nonnull %0) #20
  %14 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !127
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25, !prof !416

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %23, %20 ], [ %18, %16 ]
  tail call void @ipa_count_arguments(ptr noundef nonnull %21) #20
  tail call void @ipa_compute_jump_functions(ptr noundef nonnull %21) #20
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !417

25:                                               ; preds = %20, %16, %13
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !253

28:                                               ; preds = %25
  tail call void @ipa_print_node_params(ptr noundef nonnull %26, ptr noundef nonnull %0) #20
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !112
  tail call void @ipa_print_node_jump_functions(ptr noundef %29, ptr noundef nonnull %0) #20
  br label %30

30:                                               ; preds = %28, %25, %1
  store ptr null, ptr @current_function_decl, align 8, !tbaa !112
  tail call void @pop_cfun() #20
  ret void
}

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare void @ipa_initialize_node_params(ptr noundef) local_unnamed_addr #3

declare void @ipa_detect_param_modifications(ptr noundef) local_unnamed_addr #3

declare void @ipa_analyze_params_uses(ptr noundef) local_unnamed_addr #3

declare void @ipa_count_arguments(ptr noundef) local_unnamed_addr #3

declare void @ipa_compute_jump_functions(ptr noundef) local_unnamed_addr #3

declare void @ipa_print_node_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ipa_print_node_jump_functions(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ipa_prop_write_jump_functions(ptr noundef) local_unnamed_addr #3

declare void @ipa_prop_read_jump_functions() local_unnamed_addr #3

declare zeroext i8 @cgraph_preserve_function_body_p(ptr noundef) local_unnamed_addr #3

declare ptr @save_inline_function_body(ptr noundef) local_unnamed_addr #3

declare i32 @execute_fixup_cfg() local_unnamed_addr #3

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_pa_order(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #13 !prof !111 {
  %5 = load ptr, ptr @order, align 8, !tbaa !112
  %6 = icmp ne ptr %5, null
  %7 = icmp eq ptr %0, @order
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void %2(ptr noundef nonnull @order, ptr noundef %3) #20
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!110}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!35 = !{ptr @cgraph_clone_inlined_nodes, ptr @update_noncloned_frequencies, i64 1}
!36 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_clone_node, i64 47}
!37 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_redirect_edge_callee, i64 47}
!38 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_clone_inlined_nodes, i64 2}
!39 = !{ptr @cgraph_early_inlining, ptr @cgraph_node, i64 40}
!40 = !{ptr @cgraph_early_inlining, ptr @cgraph_decide_inlining_incrementally, i64 41}
!41 = !{ptr @cgraph_early_inlining, ptr @optimize_inline_calls, i64 1}
!42 = !{ptr @compute_inline_parameters, ptr @estimated_stack_frame_size, i64 119}
!43 = !{ptr @compute_inline_parameters, ptr @tree_inlinable_function_p, i64 119}
!44 = !{ptr @compute_inline_parameters, ptr @compute_call_stmt_bb_frequency, i64 480471}
!45 = !{ptr @compute_inline_parameters, ptr @estimate_num_insns, i64 2228272}
!46 = !{ptr @compute_inline_parameters, ptr @is_gimple_reg, i64 481}
!47 = !{ptr @compute_inline_parameters, ptr @is_gimple_min_invariant, i64 239}
!48 = !{ptr @compute_inline_parameters, ptr @estimate_move_cost, i64 238}
!49 = !{ptr @compute_inline_parameters_for_current, ptr @cgraph_node, i64 80}
!50 = !{ptr @compute_inline_parameters_for_current, ptr @compute_inline_parameters, i64 80}
!51 = !{ptr @cgraph_decide_inlining, ptr @xcalloc, i64 1}
!52 = !{ptr @cgraph_decide_inlining, ptr @cgraph_remove_function_insertion_hook, i64 1}
!53 = !{ptr @cgraph_decide_inlining, ptr @cgraph_postorder, i64 1}
!54 = !{ptr @cgraph_decide_inlining, ptr @lookup_attribute, i64 74}
!55 = !{ptr @cgraph_decide_inlining, ptr @fibheap_new, i64 1}
!56 = !{ptr @cgraph_decide_inlining, ptr @bitmap_obstack_alloc_stat, i64 1}
!57 = !{ptr @cgraph_decide_inlining, ptr @vec_heap_p_reserve_exact, i64 1}
!58 = !{ptr @cgraph_decide_inlining, ptr @cgraph_edge_badness, i64 142}
!59 = !{ptr @cgraph_decide_inlining, ptr @fibheap_insert, i64 142}
!60 = !{ptr @cgraph_decide_inlining, ptr @fibheap_extract_min, i64 144}
!61 = !{ptr @cgraph_decide_inlining, ptr @cgraph_maybe_hot_edge_p, i64 142}
!62 = !{ptr @cgraph_decide_inlining, ptr @optimize_function_for_size_p, i64 142}
!63 = !{ptr @cgraph_decide_inlining, ptr @cgraph_estimate_growth, i64 102}
!64 = !{ptr @cgraph_decide_inlining, ptr @cgraph_inline_failed_string, i64 10}
!65 = !{ptr @cgraph_decide_inlining, ptr @fprintf, i64 10}
!66 = !{ptr @cgraph_decide_inlining, ptr @tree_can_inline_p, i64 20}
!67 = !{ptr @cgraph_decide_inlining, ptr @cgraph_check_inline_limits, i64 20}
!68 = !{ptr @cgraph_decide_inlining, ptr @cgraph_mark_inline_edge, i64 20}
!69 = !{ptr @cgraph_decide_inlining, ptr @update_callee_keys, i64 20}
!70 = !{ptr @cgraph_decide_inlining, ptr @update_caller_keys, i64 20}
!71 = !{ptr @cgraph_decide_inlining, ptr @bitmap_clear, i64 20}
!72 = !{ptr @cgraph_decide_inlining, ptr @free, i64 2}
!73 = !{ptr @cgraph_decide_inlining, ptr @fibheap_delete, i64 1}
!74 = !{ptr @cgraph_decide_inlining, ptr @bitmap_obstack_free, i64 1}
!75 = !{ptr @cgraph_decide_inlining, ptr @free_all_ipa_structures_after_iinln, i64 1}
!76 = !{ptr @inline_generate_summary, ptr @cgraph_add_function_insertion_hook, i64 1}
!77 = !{ptr @inline_generate_summary, ptr @ipa_register_cgraph_hooks, i64 1}
!78 = !{ptr @inline_generate_summary, ptr @analyze_function, i64 39}
!79 = !{ptr @inline_transform, ptr @cgraph_preserve_function_body_p, i64 38}
!80 = !{ptr @inline_transform, ptr @save_inline_function_body, i64 1}
!81 = !{ptr @inline_transform, ptr @optimize_inline_calls, i64 38}
!82 = !{ptr @inline_transform, ptr @execute_fixup_cfg, i64 38}
!83 = !{ptr @cgraph_decide_inlining_incrementally, ptr @lookup_attribute, i64 40}
!84 = !{ptr @cgraph_decide_inlining_incrementally, ptr @bitmap_obstack_alloc_stat, i64 41}
!85 = !{ptr @cgraph_decide_inlining_incrementally, ptr @bitmap_set_bit, i64 52784}
!86 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_maybe_hot_edge_p, i64 196}
!87 = !{ptr @cgraph_decide_inlining_incrementally, ptr @optimize_function_for_speed_p, i64 3}
!88 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_estimate_growth, i64 195}
!89 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_check_inline_limits, i64 1}
!90 = !{ptr @cgraph_decide_inlining_incrementally, ptr @tree_can_inline_p, i64 1}
!91 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_default_inline_p, i64 1}
!92 = !{ptr @cgraph_decide_inlining_incrementally, ptr @try_inline, i64 1}
!93 = !{ptr @cgraph_decide_inlining_incrementally, ptr @bitmap_obstack_free, i64 41}
!94 = !{ptr @try_inline, ptr @cgraph_mark_inline, i64 1}
!95 = !{ptr @cgraph_mark_inline, ptr @cgraph_mark_inline_edge, i64 6}
!96 = !{ptr @cgraph_mark_inline_edge, ptr @cgraph_clone_inlined_nodes, i64 46}
!97 = !{ptr @cgraph_mark_inline_edge, ptr @ipa_propagate_indirect_call_infos, i64 46}
!98 = !{ptr @cgraph_edge_badness, ptr @ceil_log2, i64 38}
!99 = !{ptr @cgraph_edge_badness, ptr @cgraph_estimate_growth, i64 246}
!100 = !{ptr @update_callee_keys, ptr @update_caller_keys, i64 44}
!101 = !{ptr @update_callee_keys, ptr @update_callee_keys, i64 2}
!102 = !{ptr @update_caller_keys, ptr @bitmap_bit_p, i64 40}
!103 = !{ptr @update_caller_keys, ptr @bitmap_set_bit, i64 40}
!104 = !{ptr @update_caller_keys, ptr @cgraph_edge_badness, i64 104}
!105 = !{ptr @update_caller_keys, ptr @fibheap_replace_key, i64 104}
!106 = !{ptr @analyze_function, ptr @push_cfun, i64 39}
!107 = !{ptr @analyze_function, ptr @compute_inline_parameters, i64 39}
!108 = !{ptr @analyze_function, ptr @ipa_analyze_params_uses, i64 39}
!109 = !{ptr @analyze_function, ptr @pop_cfun, i64 39}
!110 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!111 = !{!"function_entry_count", i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!117, !113, i64 8}
!117 = !{!"_IO_FILE", !118, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96, !113, i64 104, !118, i64 112, !118, i64 116, !119, i64 120, !120, i64 128, !114, i64 130, !114, i64 131, !113, i64 136, !119, i64 144, !113, i64 152, !113, i64 160, !113, i64 168, !113, i64 176, !119, i64 184, !118, i64 192, !114, i64 196}
!118 = !{!"int", !114, i64 0}
!119 = !{!"long", !114, i64 0}
!120 = !{!"short", !114, i64 0}
!121 = !{!117, !113, i64 16}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!114, !114, i64 0}
!124 = !{!117, !113, i64 40}
!125 = !{!117, !113, i64 48}
!126 = !{!117, !118, i64 0}
!127 = !{!118, !118, i64 0}
!128 = distinct !{!128, !129, !130}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!"llvm.loop.unroll.disable"}
!131 = !{!"function_entry_count", i64 48}
!132 = !{!"branch_weights", i32 0, i32 48}
!133 = !{!134, !113, i64 16}
!134 = !{!"cgraph_edge", !119, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !118, i64 72, !118, i64 76, !118, i64 80, !118, i64 84, !120, i64 88, !118, i64 90, !118, i64 90, !118, i64 90}
!135 = !{!136, !113, i64 16}
!136 = !{!"cgraph_node", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96, !113, i64 104, !113, i64 112, !113, i64 120, !113, i64 128, !113, i64 136, !137, i64 144, !139, i64 184, !140, i64 224, !141, i64 232, !142, i64 256, !119, i64 288, !118, i64 296, !118, i64 300, !118, i64 304, !118, i64 308, !118, i64 308, !118, i64 308, !118, i64 308, !118, i64 308, !118, i64 308, !118, i64 308, !118, i64 308, !118, i64 309, !118, i64 309}
!137 = !{!"cgraph_local_info", !113, i64 0, !138, i64 8, !118, i64 32, !118, i64 32, !118, i64 32, !118, i64 32, !118, i64 32, !118, i64 32, !118, i64 32, !118, i64 32}
!138 = !{!"inline_summary", !119, i64 0, !118, i64 8, !118, i64 12, !118, i64 16, !118, i64 20}
!139 = !{!"cgraph_global_info", !119, i64 0, !119, i64 8, !113, i64 16, !118, i64 24, !118, i64 28, !118, i64 32, !114, i64 36}
!140 = !{!"cgraph_rtl_info", !118, i64 0}
!141 = !{!"cgraph_clone_info", !113, i64 0, !113, i64 8, !113, i64 16}
!142 = !{!"cgraph_thunk_info", !119, i64 0, !119, i64 8, !113, i64 16, !114, i64 24, !114, i64 25, !114, i64 26}
!143 = !{!134, !113, i64 32}
!144 = !{!"branch_weights", i32 3, i32 45}
!145 = !{!"branch_weights", i32 2, i32 1}
!146 = !{!136, !113, i64 0}
!147 = !{!"branch_weights", i32 2, i32 0}
!148 = !{!136, !113, i64 112}
!149 = !{!"branch_weights", i32 0, i32 2}
!150 = !{!136, !113, i64 200}
!151 = !{!136, !118, i64 212}
!152 = !{!134, !118, i64 80}
!153 = !{!134, !120, i64 88}
!154 = !{!134, !119, i64 0}
!155 = !{!134, !113, i64 8}
!156 = !{!"branch_weights", i32 46, i32 2}
!157 = !{!136, !119, i64 192}
!158 = !{!138, !119, i64 0}
!159 = !{!136, !119, i64 184}
!160 = !{!"branch_weights", i32 2, i32 46}
!161 = !{!134, !118, i64 72}
!162 = !{!"branch_weights", i32 2, i32 44}
!163 = !{!"branch_weights", i32 46, i32 0}
!164 = distinct !{!164, !129, !130}
!165 = !{!"function_entry_count", i64 2}
!166 = !{!"ipa-inline.c;update_noncloned_frequencies"}
!167 = !{!"branch_weights", i32 1, i32 1}
!168 = !{!"branch_weights", i32 0, i32 1}
!169 = !{!"branch_weights", i32 1, i32 0}
!170 = distinct !{!170, !129, !130}
!171 = !{!"function_entry_count", i64 40}
!172 = !{!"ipa-inline.c;cgraph_gate_early_inlining"}
!173 = !{!"ipa-inline.c;cgraph_early_inlining"}
!174 = !{!"branch_weights", i32 40, i32 0}
!175 = !{!176, !118, i64 8}
!176 = !{!"param_info", !113, i64 0, !118, i64 8, !114, i64 12, !118, i64 16, !118, i64 20, !113, i64 24}
!177 = !{!"branch_weights", i32 40, i32 1}
!178 = !{i8 0, i8 2}
!179 = !{!"branch_weights", i32 41, i32 0}
!180 = distinct !{!180, !129, !130}
!181 = !{!"function_entry_count", i64 1}
!182 = !{!"ipa-inline.c;cgraph_gate_ipa_early_inlining"}
!183 = !{!"function_entry_count", i64 119}
!184 = !{!"branch_weights", i32 119, i32 0}
!185 = !{!"branch_weights", i32 0, i32 119}
!186 = !{!187, !113, i64 8}
!187 = !{!"function", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96, !118, i64 104, !118, i64 108, !118, i64 112, !118, i64 116, !118, i64 120, !118, i64 124, !113, i64 128, !118, i64 136, !118, i64 137, !118, i64 138, !118, i64 138, !118, i64 138, !118, i64 138, !118, i64 138, !118, i64 138, !118, i64 138, !118, i64 139, !118, i64 139, !118, i64 139, !118, i64 139, !118, i64 139, !118, i64 139, !118, i64 139}
!188 = !{!189, !113, i64 0}
!189 = !{!"control_flow_graph", !113, i64 0, !113, i64 8, !113, i64 16, !118, i64 24, !118, i64 28, !118, i64 32, !113, i64 40, !118, i64 48, !114, i64 52, !114, i64 60, !118, i64 68, !118, i64 72}
!190 = !{!191, !113, i64 56}
!191 = !{!"basic_block_def", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !114, i64 32, !113, i64 48, !113, i64 56, !114, i64 64, !119, i64 72, !118, i64 80, !118, i64 84, !118, i64 88, !118, i64 92, !118, i64 96}
!192 = !{!189, !113, i64 8}
!193 = !{!"branch_weights", i32 1, i32 237}
!194 = !{!"branch_weights", i32 237, i32 960705}
!195 = distinct !{!195, !129, !130}
!196 = !{!191, !118, i64 96}
!197 = !{!198}
!198 = distinct !{!198, !199, !"gsi_start_bb: argument 0"}
!199 = distinct !{!199, !"gsi_start_bb"}
!200 = !{!"branch_weights", i32 480471, i32 0}
!201 = !{!"branch_weights", i32 0, i32 480471}
!202 = !{!203, !113, i64 0}
!203 = !{!"gimple_bb_info", !113, i64 0, !113, i64 8}
!204 = !{!205, !113, i64 0}
!205 = !{!"gimple_seq_d", !113, i64 0, !113, i64 8, !113, i64 16}
!206 = !{!"branch_weights", i32 1, i32 480470}
!207 = !{!208, !113, i64 0}
!208 = !{!"gimple_seq_node_d", !113, i64 0, !113, i64 8, !113, i64 16}
!209 = !{!"branch_weights", i32 1114135, i32 0}
!210 = !{!"branch_weights", i32 646292, i32 119, i32 467724}
!211 = !{!"branch_weights", i32 322809, i32 144915}
!212 = !{!"branch_weights", i32 0, i32 322809, i32 0, i32 0}
!213 = !{!"branch_weights", i32 317829, i32 4980}
!214 = !{!119, !119, i64 0}
!215 = !{!"branch_weights", i32 0, i32 317829}
!216 = !{!"branch_weights", i32 0, i32 322809}
!217 = !{!"branch_weights", i32 4980, i32 317829}
!218 = !{!"branch_weights", i32 0, i32 317829, i32 0, i32 0}
!219 = !{!"branch_weights", i32 317829, i32 0}
!220 = !{!"branch_weights", i32 322812, i32 0, i32 9, i32 3, i32 0, i32 0, i32 0, i32 0}
!221 = !{!"branch_weights", i32 3, i32 322809}
!222 = distinct !{!222, !129, !130}
!223 = !{!"branch_weights", i32 322304, i32 0, i32 38168, i32 44526, i32 0, i32 0, i32 0, i32 0, i32 32, i32 569, i32 80, i32 425}
!224 = distinct !{!224, !129, !130}
!225 = !{!"branch_weights", i32 266, i32 159}
!226 = !{!"branch_weights", i32 159, i32 0}
!227 = !{!"branch_weights", i32 322570, i32 239}
!228 = !{!"branch_weights", i32 -1849130526, i32 17485, i32 -1096465836, i32 0}
!229 = !{!"branch_weights", i32 182925, i32 2}
!230 = !{!"branch_weights", i32 139881, i32 0, i32 182925}
!231 = !{!"branch_weights", i32 0, i32 182925}
!232 = !{!"branch_weights", i32 322567, i32 242}
!233 = !{!"branch_weights", i32 239, i32 3}
!234 = !{!"branch_weights", i32 239, i32 0}
!235 = !{!"branch_weights", i32 361, i32 0}
!236 = !{!208, !113, i64 16}
!237 = !{!"branch_weights", i32 480470, i32 633665}
!238 = distinct !{!238, !129, !130}
!239 = !{!240, !118, i64 0}
!240 = !{!"eni_weights_d", !118, i64 0, !118, i64 4, !118, i64 8, !118, i64 12, !114, i64 16}
!241 = !{!"branch_weights", i32 237, i32 1}
!242 = distinct !{!242, !129, !130}
!243 = !{!138, !118, i64 16}
!244 = !{!138, !118, i64 8}
!245 = !{!138, !118, i64 20}
!246 = !{!138, !118, i64 12}
!247 = !{!136, !118, i64 208}
!248 = !{!"function_entry_count", i64 80}
!249 = !{!"ipa-inline.c;compute_inline_parameters_for_current"}
!250 = !{!"ipa-inline.c;cgraph_decide_inlining"}
!251 = !{!"branch_weights", i32 1, i32 127}
!252 = !{!"branch_weights", i32 35, i32 39}
!253 = !{!"branch_weights", i32 39, i32 0}
!254 = !{!"branch_weights", i32 1, i32 155}
!255 = !{!"branch_weights", i32 0, i32 69128}
!256 = !{!"branch_weights", i32 155, i32 276357}
!257 = distinct !{!257, !129, !130}
!258 = !{!"branch_weights", i32 3, i32 36}
!259 = !{!"branch_weights", i32 127, i32 9345}
!260 = distinct !{!260, !129, !130}
!261 = !{!136, !113, i64 128}
!262 = distinct !{!262, !129, !130}
!263 = distinct !{!263, !129, !130}
!264 = !{!"branch_weights", i32 127, i32 1}
!265 = !{!"branch_weights", i32 74, i32 0}
!266 = distinct !{!266, !129, !130}
!267 = distinct !{!267, !129, !130}
!268 = !{!"branch_weights", i32 9345, i32 127}
!269 = distinct !{!269, !129, !130}
!270 = !{!"branch_weights", i32 24, i32 15}
!271 = !{!"branch_weights", i32 24, i32 0}
!272 = !{!136, !118, i64 216}
!273 = !{!"branch_weights", i32 0, i32 105}
!274 = !{!"branch_weights", i32 65, i32 40}
!275 = !{!"branch_weights", i32 13, i32 52}
!276 = !{!"branch_weights", i32 19, i32 5}
!277 = !{!"branch_weights", i32 1, i32 159}
!278 = !{!"branch_weights", i32 19, i32 0}
!279 = !{!"branch_weights", i32 1, i32 151}
!280 = !{!"branch_weights", i32 0, i32 52640}
!281 = !{!"branch_weights", i32 151, i32 420969}
!282 = distinct !{!282, !129, !130}
!283 = !{!"branch_weights", i32 0, i32 142}
!284 = !{!134, !113, i64 64}
!285 = !{!"branch_weights", i32 142, i32 0}
!286 = !{!"branch_weights", i32 159, i32 4385}
!287 = distinct !{!287, !129, !130}
!288 = distinct !{!288, !129, !130}
!289 = !{!"branch_weights", i32 1, i32 142}
!290 = !{!134, !113, i64 56}
!291 = !{!292, !113, i64 0}
!292 = !{!"", !113, i64 0, !118, i64 8, !118, i64 12, !114, i64 16}
!293 = !{!292, !118, i64 8}
!294 = distinct !{!294, !129, !130}
!295 = distinct !{!295, !129, !130}
!296 = !{!"branch_weights", i32 102, i32 40}
!297 = !{!"branch_weights", i32 102, i32 0}
!298 = !{!"branch_weights", i32 0, i32 102}
!299 = !{!"branch_weights", i32 0, i32 40}
!300 = !{!136, !119, i64 288}
!301 = distinct !{!301, !129, !130}
!302 = distinct !{!302, !129, !130}
!303 = distinct !{!303, !129, !130}
!304 = !{!136, !113, i64 24}
!305 = distinct !{!305, !129, !130}
!306 = !{!307, !118, i64 0}
!307 = !{!"VEC_cgraph_edge_p_base", !118, i64 0, !118, i64 4, !114, i64 8}
!308 = distinct !{!308, !129, !130}
!309 = !{!"branch_weights", i32 0, i32 143}
!310 = distinct !{!310, !129, !130}
!311 = !{!"branch_weights", i32 16, i32 58}
!312 = !{!"branch_weights", i32 3, i32 55}
!313 = !{!"branch_weights", i32 1, i32 2}
!314 = distinct !{!314, !129, !130}
!315 = !{!"ipa-inline.c;inline_generate_summary"}
!316 = !{!317, !118, i64 0}
!317 = !{!"VEC_ipa_node_params_t_base", !118, i64 0, !118, i64 4, !114, i64 8}
!318 = !{!317, !118, i64 4}
!319 = !{}
!320 = !{!321, !118, i64 0}
!321 = !{!"VEC_ipa_edge_args_t_base", !118, i64 0, !118, i64 4, !114, i64 8}
!322 = !{!321, !118, i64 4}
!323 = distinct !{!323, !129, !130}
!324 = !{!"function_entry_count", i64 38}
!325 = !{!"ipa-inline.c;inline_transform"}
!326 = !{!"branch_weights", i32 38, i32 0}
!327 = !{!"branch_weights", i32 37, i32 1}
!328 = !{!"branch_weights", i32 0, i32 69021}
!329 = distinct !{!329, !129, !130}
!330 = !{!"branch_weights", i32 38, i32 68983}
!331 = !{!"function_entry_count", i64 41}
!332 = !{!"ipa-inline.c;cgraph_decide_inlining_incrementally"}
!333 = !{!"branch_weights", i32 1, i32 40}
!334 = !{!"branch_weights", i32 69134, i32 0}
!335 = !{!187, !113, i64 24}
!336 = !{!"branch_weights", i32 159, i32 276377}
!337 = distinct !{!337, !129, !130}
!338 = !{!"branch_weights", i32 41, i32 0, i32 0}
!339 = !{!"branch_weights", i32 1, i32 163}
!340 = !{!"branch_weights", i32 16357, i32 52789}
!341 = !{!"branch_weights", i32 52784, i32 5}
!342 = !{!136, !118, i64 296}
!343 = !{!"branch_weights", i32 52588, i32 196}
!344 = !{!"branch_weights", i32 196, i32 0}
!345 = !{!"branch_weights", i32 0, i32 196}
!346 = !{!"branch_weights", i32 127, i32 24833}
!347 = distinct !{!347, !129, !130}
!348 = !{!"branch_weights", i32 1, i32 195}
!349 = !{!"branch_weights", i32 195, i32 1}
!350 = !{!"branch_weights", i32 195, i32 0}
!351 = !{!"branch_weights", i32 163, i32 276421}
!352 = distinct !{!352, !129, !130}
!353 = !{!"ipa-inline.c;try_inline"}
!354 = !{!"function_entry_count", i64 543}
!355 = !{!"ipa-inline.c;cgraph_estimate_growth"}
!356 = !{!"branch_weights", i32 33, i32 510}
!357 = !{!"branch_weights", i32 1, i32 131}
!358 = !{!"branch_weights", i32 0, i32 53028}
!359 = !{!"branch_weights", i32 53028, i32 0}
!360 = !{!"branch_weights", i32 131, i32 211981}
!361 = distinct !{!361, !129, !130}
!362 = !{!"branch_weights", i32 2, i32 31}
!363 = !{!"ipa-inline.c;cgraph_check_inline_limits"}
!364 = !{!"branch_weights", i32 127, i32 2177}
!365 = distinct !{!365, !129, !130}
!366 = !{!"branch_weights", i32 8, i32 32}
!367 = !{!"branch_weights", i32 0, i32 41}
!368 = !{!"ipa-inline.c;cgraph_default_inline_p"}
!369 = !{!"branch_weights", i32 0, i32 52}
!370 = !{!"ipa-inline.c;cgraph_mark_inline"}
!371 = !{!"branch_weights", i32 6, i32 0}
!372 = !{!"branch_weights", i32 0, i32 6}
!373 = !{!"branch_weights", i32 127, i32 641}
!374 = distinct !{!374, !129, !130}
!375 = !{!"function_entry_count", i64 46}
!376 = !{!"ipa-inline.c;cgraph_mark_inline_edge"}
!377 = !{!"branch_weights", i32 0, i32 46}
!378 = !{!136, !114, i64 220}
!379 = !{!"branch_weights", i32 3, i32 43}
!380 = !{!"branch_weights", i32 1, i32 167}
!381 = !{!"branch_weights", i32 199, i32 1}
!382 = !{!"branch_weights", i32 169, i32 199}
!383 = distinct !{!383, !129, !130}
!384 = !{!"branch_weights", i32 167, i32 401}
!385 = !{!"branch_weights", i32 40, i32 6}
!386 = !{!"function_entry_count", i64 246}
!387 = !{!"ipa-inline.c;cgraph_edge_badness"}
!388 = !{!"branch_weights", i32 246, i32 0}
!389 = !{!"branch_weights", i32 0, i32 246}
!390 = !{!"branch_weights", i32 208, i32 38}
!391 = !{!"branch_weights", i32 38, i32 208}
!392 = !{!"ipa-inline.c;add_new_edges_to_heap"}
!393 = !{!"function_entry_count", i64 42}
!394 = !{!"ipa-inline.c;update_callee_keys"}
!395 = !{!"branch_weights", i32 167, i32 17}
!396 = distinct !{!396, !129, !130}
!397 = !{!"function_entry_count", i64 84}
!398 = !{!"ipa-inline.c;update_caller_keys"}
!399 = !{!"branch_weights", i32 40, i32 44}
!400 = !{!"branch_weights", i32 33, i32 7}
!401 = !{!"branch_weights", i32 52732, i32 0}
!402 = !{!"branch_weights", i32 131, i32 210797}
!403 = distinct !{!403, !129, !130}
!404 = !{!"branch_weights", i32 1, i32 223}
!405 = !{!"branch_weights", i32 0, i32 104}
!406 = !{!407, !113, i64 40}
!407 = !{!"fibnode", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !119, i64 32, !113, i64 40, !118, i64 48, !118, i64 51}
!408 = !{!"branch_weights", i32 104, i32 0}
!409 = !{!407, !119, i64 32}
!410 = !{!"branch_weights", i32 223, i32 3105}
!411 = distinct !{!411, !129, !130}
!412 = distinct !{!412, !129, !130}
!413 = distinct !{!413, !129, !130}
!414 = !{!"function_entry_count", i64 39}
!415 = !{!"ipa-inline.c;analyze_function"}
!416 = !{!"branch_weights", i32 0, i32 39}
!417 = distinct !{!417, !129, !130}
