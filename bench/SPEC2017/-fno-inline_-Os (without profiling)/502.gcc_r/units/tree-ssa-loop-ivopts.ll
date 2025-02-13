; ModuleID = 'tree-ssa-loop-ivopts.c'
source_filename = "tree-ssa-loop-ivopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.iv = type { ptr, ptr, ptr, ptr, i8, i8, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.iv_use = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.ivopts_data = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.iv_cand = type { i32, i8, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.mbc_entry = type { i64, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_sbitmap_base = type { i32, i32, [1 x ptr] }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_iv_use_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.version_info = type { ptr, ptr, i8, i32, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.cost_pair = type { ptr, %struct.comp_cost, ptr, ptr }
%struct.comp_cost = type { i32, i32 }
%struct.iv_ca = type { i32, i32, ptr, ptr, ptr, i32, i32, %struct.comp_cost, i32, ptr, %struct.comp_cost }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.ifs_ivopts_data = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_iv_cand_p_base = type { i32, i32, [1 x ptr] }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.anon = type { i64, i64, [2 x [2 x [2 x [2 x i32]]]] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.VEC_address_cost_data_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.iv_ca_delta = type { ptr, ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"ssa name \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  type \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"  base \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  step \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  invariant \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  base object \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"  is a biv\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"use %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"  generic\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"  address\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"  compare\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"tree-ssa-loop-ivopts.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"  in statement \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"  at position \00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  related candidates \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"candidate %d%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c" (important)\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"  depends on \00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"  final value replacement\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"  incremented before exit test\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"  incremented before use %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"  incremented after use %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"  incremented at end\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"  original biv\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@multiply_by_cost.costs = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [37 x i8] c"Multiplication by %d in %s costs %d\0A\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@multiplier_allowed_in_address_p.valid_mult_list = internal unnamed_addr global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.28 = private unnamed_addr constant [23 x i8] c"  allowed multipliers:\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@decl_rtl_to_reset = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [20 x i8] c"Processing loop %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"  single exit %d -> %d, exit condition \00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [24 x i8] c"  number of iterations \00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Induction variables:\0A\0A\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"Uses:\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c" is invariant (%d)%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c", eliminable\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@extract_cond_operands.const_iv = internal global %struct.iv zeroinitializer, align 8
@extract_cond_operands.zero = internal unnamed_addr global ptr null, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"ivtmp\00", align 1
@fd_ivopts_data = internal unnamed_addr global ptr null, align 8
@.str.43 = private unnamed_addr constant [27 x i8] c"Candidate %d is important\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Candidate %d is related to use %d\0A\00", align 1
@target_spill_cost = external local_unnamed_addr global [2 x i32], align 4
@force_expr_to_var_cost.costs_initialized = internal unnamed_addr global i1 false, align 1
@force_expr_to_var_cost.integer_cost = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@force_expr_to_var_cost.symbol_cost = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@force_expr_to_var_cost.address_cost = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.45 = private unnamed_addr constant [9 x i8] c"test_var\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"force_expr_to_var_cost %s costs:\0A\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"  integer %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"  symbol %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"  address %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"  other %d\0A\00", align 1
@add_cost.costs = internal unnamed_addr global [87 x i32] zeroinitializer, align 16
@.str.53 = private unnamed_addr constant [25 x i8] c"Addition in %s costs %d\0A\00", align 1
@get_address_cost.address_cost_data_list = internal unnamed_addr global ptr null, align 8
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [19 x i8] c"get_address_cost:\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"  min offset %s %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"  max offset %s %d\0A\00", align 1
@cse_not_expected = external local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [16 x i8] c"Address costs:\0A\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"sym + \00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"var + \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"cst + \00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"rat * \00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"index costs %d\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.64 = private unnamed_addr constant [18 x i8] c"Candidate costs:\0A\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"  cand\09cost\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"  %d\09%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"Use-candidate costs:\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"Use %d:\0A\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"  cand\09cost\09compl.\09depends on\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"  %d\09%d\09%d\09\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"Global costs:\0A\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"  target_avail_regs %d\0A\00", align 1
@target_avail_regs = external local_unnamed_addr global i32, align 4
@.str.73 = private unnamed_addr constant [22 x i8] c"  target_reg_cost %d\0A\00", align 1
@target_reg_cost = external local_unnamed_addr global [2 x i32], align 4
@.str.74 = private unnamed_addr constant [24 x i8] c"  target_spill_cost %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"  regs_used %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"  cost for size:\0A\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"  ivs\09cost\0A\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"Unable to substitute for ivs, failed.\0A\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Initial set of candidates:\0A\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"Improved to:\0A\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"Final cost %d (complexity %d)\0A\0A\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"  invariants \00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"  cost %d (complexity %d)\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"  candidates \00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @single_dom_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @single_exit(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !5
  %6 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %5) #20
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr null, ptr %2
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %8, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_iv(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 9, i64 1, ptr %0)
  %8 = load ptr, ptr %3, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %8, i32 noundef 2) #20
  %9 = tail call i32 @fputc(i32 10, ptr %0)
  br label %10

10:                                               ; preds = %6, %2
  %11 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %0)
  %12 = load ptr, ptr %1, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %14, i32 noundef 2) #20
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  %16 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %0)
  %21 = load ptr, ptr %1, align 8, !tbaa !14
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 2) #20
  %22 = tail call i32 @fputc(i32 10, ptr %0)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 7, i64 1, ptr %0)
  br label %26

24:                                               ; preds = %10
  %25 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %0)
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %1, %24 ], [ %16, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %28, i32 noundef 2) #20
  %29 = tail call i32 @fputc(i32 10, ptr %0)
  %30 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 14, i64 1, ptr %0)
  %35 = load ptr, ptr %30, align 8, !tbaa !18
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %35, i32 noundef 2) #20
  %36 = tail call i32 @fputc(i32 10, ptr %0)
  br label %37

37:                                               ; preds = %33, %26
  %38 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 4
  %39 = load i8, ptr %38, align 8, !tbaa !19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %0)
  br label %43

43:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_use(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8, !tbaa !20
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %3) #21
  %5 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !22
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
  ]

7:                                                ; preds = %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %0)
  br label %14

9:                                                ; preds = %2
  %10 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 10, i64 1, ptr %0)
  br label %14

11:                                               ; preds = %2
  %12 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 10, i64 1, ptr %0)
  br label %14

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 455, ptr noundef nonnull @.str.13) #20
  br label %14

14:                                               ; preds = %13, %11, %9, %7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 15, i64 1, ptr %0)
  %16 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %17, i32 noundef 0, i32 noundef 0) #20
  %18 = tail call i32 @fputc(i32 10, ptr %0)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 14, i64 1, ptr %0)
  %20 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %21, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %24, i32 noundef 2) #20
  br label %25

25:                                               ; preds = %23, %14
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  %27 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  tail call void @dump_iv(ptr noundef %0, ptr noundef %28) #21
  %29 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %34 = load ptr, ptr %29, align 8, !tbaa !26
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1) #20
  br label %35

35:                                               ; preds = %32, %25
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_uses(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @n_iv_uses(ptr noundef %1) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @iv_use(ptr noundef %1, i32 noundef %6) #21
  tail call void @dump_use(ptr noundef %0, ptr noundef %7) #21
  %8 = tail call i32 @fputc(i32 10, ptr %0)
  %9 = add nuw i32 %6, 1
  %10 = tail call fastcc i32 @n_iv_uses(ptr noundef %1) #21
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %5, label %12, !llvm.loop !27

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @n_iv_uses(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = tail call fastcc i32 @VEC_iv_use_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_use(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = tail call fastcc ptr @VEC_iv_use_p_base_index(ptr noundef %4, i32 noundef %1) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cand(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = load i32, ptr %1, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @.str.17, ptr @.str.19
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %5, ptr noundef nonnull %9) #21
  %11 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 13, i64 1, ptr %0)
  %16 = load ptr, ptr %11, align 8, !tbaa !35
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1) #20
  br label %17

17:                                               ; preds = %14, %2
  %18 = icmp eq ptr %4, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 26, i64 1, ptr %0)
  br label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !36
  switch i32 %23, label %40 [
    i32 0, label %24
    i32 2, label %26
    i32 3, label %31
    i32 1, label %36
    i32 4, label %38
  ]

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 31, i64 1, ptr %0)
  br label %40

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %29) #21
  br label %40

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %34) #21
  br label %40

36:                                               ; preds = %21
  %37 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr %0)
  br label %40

38:                                               ; preds = %21
  %39 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 15, i64 1, ptr %0)
  br label %40

40:                                               ; preds = %21, %38, %36, %31, %26, %24
  tail call void @dump_iv(ptr noundef %0, ptr noundef nonnull %4) #21
  br label %41

41:                                               ; preds = %40, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = trunc i64 %4 to i16
  switch i16 %8, label %13 [
    i16 141, label %9
    i16 23, label %36
  ]

9:                                                ; preds = %3
  %10 = lshr i64 %4, 22
  %11 = trunc i64 %10 to i8
  %12 = and i8 %11, 1
  br label %36

13:                                               ; preds = %3
  %14 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = icmp eq i64 %5, 121
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %20 = tail call zeroext i8 @for_each_index(ptr noundef nonnull %19, ptr noundef nonnull @idx_contains_abnormal_ssa_name_p, ptr noundef null) #20
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i8
  br label %36

23:                                               ; preds = %16
  switch i32 %7, label %34 [
    i32 7, label %24
    i32 5, label %24
    i32 6, label %29
  ]

24:                                               ; preds = %23, %23
  %25 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %26) #21, !range !39
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %23
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %31) #21, !range !39
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %36

34:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 703, ptr noundef nonnull @.str.13) #20
  br label %35

35:                                               ; preds = %29, %34
  br label %36

36:                                               ; preds = %29, %24, %13, %3, %1, %35, %18, %9
  %37 = phi i8 [ %12, %9 ], [ %22, %18 ], [ 0, %35 ], [ 0, %1 ], [ 0, %3 ], [ 0, %13 ], [ 1, %24 ], [ 1, %29 ]
  ret i8 %37
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @idx_contains_abnormal_ssa_name_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #4 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -45
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = tail call fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef %11) #21, !range !39
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = tail call fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef %16) #21, !range !39
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3, %14
  %20 = load ptr, ptr %1, align 8, !tbaa !17
  %21 = tail call fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef %20) #21, !range !39
  %22 = xor i8 %21, 1
  br label %23

23:                                               ; preds = %14, %9, %19
  %24 = phi i8 [ %22, %19 ], [ 0, %9 ], [ 0, %14 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1290, ptr noundef nonnull @.str.13) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %16) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18, %13
  br label %41

22:                                               ; preds = %9
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %24 = load i32, ptr %23, align 4, !tbaa !38
  %25 = add i32 %24, -4
  %26 = icmp ult i32 %25, 7
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %1) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = zext i32 %28 to i64
  br label %35

32:                                               ; preds = %35
  %33 = add nuw nsw i64 %36, 1
  %34 = icmp eq i64 %33, %31
  br i1 %34, label %41, label %35, !llvm.loop !40

35:                                               ; preds = %30, %32
  %36 = phi i64 [ 0, %30 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %38) #21, !range !39
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %32

41:                                               ; preds = %35, %32, %27, %22, %18, %6, %21
  %42 = phi i8 [ 1, %21 ], [ 1, %6 ], [ 0, %18 ], [ 0, %22 ], [ 1, %27 ], [ 0, %35 ], [ 1, %32 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !15
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @stmt_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1326, ptr noundef nonnull @.str.13) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call ptr @gimple_get_lhs(ptr noundef %1) #20
  %8 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %17
  %11 = phi i32 [ %18, %17 ], [ 0, %6 ]
  %12 = tail call fastcc ptr @gimple_op(ptr noundef %1, i32 noundef %11) #21
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %12) #21, !range !39
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %10
  %18 = add nuw i32 %11, 1
  %19 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #21
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %10, label %21, !llvm.loop !45

21:                                               ; preds = %14, %17, %6
  %22 = phi i8 [ 1, %6 ], [ 1, %17 ], [ 0, %14 ]
  ret i8 %22
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !15
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !39
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @tree_int_cst_sign_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 64
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %11 = add nsw i32 %6, -65
  %12 = select i1 %8, i32 %7, i32 %11
  %13 = select i1 %8, ptr %9, ptr %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = zext nneg i32 %12 to i64
  %16 = lshr i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 1
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @multiply_by_cost(i64 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mbc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr @multiply_by_cost.costs, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @mbc_entry_hash, ptr noundef nonnull @mbc_entry_eq, ptr noundef nonnull @free) #20
  store ptr %8, ptr @multiply_by_cost.costs, align 8, !tbaa !17
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.mbc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !46
  store i64 %0, ptr %4, align 8, !tbaa !48
  %12 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 1) #20
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mbc_entry, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !49
  br label %41

18:                                               ; preds = %9
  %19 = call ptr @xmalloc(i64 noundef 16) #20
  store ptr %19, ptr %12, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.mbc_entry, ptr %19, i64 0, i32 1
  store i32 %1, ptr %20, align 8, !tbaa !46
  store i64 %0, ptr %19, align 8, !tbaa !48
  call void @start_sequence() #20
  %21 = call ptr @gen_raw_REG(i32 noundef %1, i32 noundef 58) #20
  %22 = call ptr @gen_int_mode(i64 noundef %0, i32 noundef %1) #20
  %23 = call ptr @expand_mult(i32 noundef %1, ptr noundef %21, ptr noundef %22, ptr noundef null, i32 noundef 0) #20
  %24 = call ptr @get_insns() #20
  call void @end_sequence() #20
  %25 = call fastcc i32 @seq_cost(ptr noundef %24, i8 noundef zeroext %2) #21
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = trunc i64 %0 to i32
  %34 = zext i32 %1 to i64
  %35 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.27, i32 noundef %33, ptr noundef %36, i32 noundef %25) #21
  br label %38

38:                                               ; preds = %32, %28, %18
  %39 = load ptr, ptr %12, align 8, !tbaa !17
  %40 = getelementptr inbounds %struct.mbc_entry, ptr %39, i64 0, i32 2
  store i32 %25, ptr %40, align 4, !tbaa !49
  br label %41

41:                                               ; preds = %38, %15
  %42 = phi i32 [ %17, %15 ], [ %25, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mbc_entry_hash(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.mbc_entry, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = mul i32 %3, 57
  %5 = load i64, ptr %0, align 8, !tbaa !48
  %6 = srem i64 %5, 877
  %7 = trunc i64 %6 to i32
  %8 = add i32 %4, %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mbc_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.mbc_entry, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.mbc_entry, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8, !tbaa !48
  %10 = load i64, ptr %1, align 8, !tbaa !48
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_mult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2, %23
  %5 = phi ptr [ %27, %23 ], [ %0, %2 ]
  %6 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %22 = tail call i32 @rtx_cost(ptr noundef nonnull %21, i32 noundef 23, i8 noundef zeroext %1) #20
  br label %23

23:                                               ; preds = %4, %17, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %17 ], [ 1, %4 ]
  %25 = add i32 %24, %6
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !llvm.loop !50

29:                                               ; preds = %23, %2
  %30 = phi i32 [ 0, %2 ], [ %25, %23 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = mul nuw nsw i32 %4, 87
  %6 = add nsw i32 %5, %1
  %7 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  %8 = tail call fastcc i32 @VEC_sbitmap_base_length(ptr noundef %7) #21
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = add i32 %6, 1
  tail call fastcc void @VEC_sbitmap_heap_safe_grow_cleared(i32 noundef %11) #21
  %12 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %7, %3 ]
  %15 = tail call fastcc ptr @VEC_sbitmap_base_index(ptr noundef %14, i32 noundef %6) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !51
  %19 = tail call i32 %18(i8 noundef zeroext %2) #20
  %20 = tail call ptr @gen_raw_REG(i32 noundef %19, i32 noundef 58) #20
  %21 = tail call ptr @sbitmap_alloc(i32 noundef 257) #20
  tail call void @sbitmap_zero(ptr noundef %21) #20
  %22 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %19, ptr noundef %20, ptr noundef null) #20
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %24

24:                                               ; preds = %17, %32
  %25 = phi i64 [ -128, %17 ], [ %33, %32 ]
  %26 = tail call ptr @gen_int_mode(i64 noundef %25, i32 noundef %19) #20
  store ptr %26, ptr %23, align 8, !tbaa !15
  %27 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %22, i8 noundef zeroext %2) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = trunc i64 %25 to i32
  %31 = add i32 %30, 128
  tail call fastcc void @SET_BIT(ptr noundef %21, i32 noundef %31) #21
  br label %32

32:                                               ; preds = %24, %29
  %33 = add nsw i64 %25, 1
  %34 = icmp eq i64 %33, 129
  br i1 %34, label %35, label %24, !llvm.loop !63

35:                                               ; preds = %32
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 22, i64 1, ptr nonnull %36)
  br label %44

44:                                               ; preds = %42, %58
  %45 = phi i64 [ -128, %42 ], [ %59, %58 ]
  %46 = add nsw i64 %45, 128
  %47 = lshr i64 %46, 6
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !64
  %50 = and i64 %45, 63
  %51 = shl nuw i64 1, %50
  %52 = and i64 %49, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %56 = trunc i64 %45 to i32
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.29, i32 noundef %56) #21
  br label %58

58:                                               ; preds = %44, %54
  %59 = add nsw i64 %45, 1
  %60 = icmp eq i64 %59, 129
  br i1 %60, label %61, label %44, !llvm.loop !65

61:                                               ; preds = %58
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %63 = tail call i32 @fputc(i32 10, ptr %62)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %65 = tail call i32 @fputc(i32 10, ptr %64)
  br label %66

66:                                               ; preds = %61, %38, %35
  %67 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  tail call fastcc void @VEC_sbitmap_base_replace(ptr noundef %67, i32 noundef %6, ptr noundef %21) #21
  br label %68

68:                                               ; preds = %66, %13
  %69 = phi ptr [ %15, %13 ], [ %21, %66 ]
  %70 = add i64 %0, -129
  %71 = icmp ult i64 %70, -257
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = add nsw i64 %0, 128
  %74 = lshr i64 %73, 6
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %69, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !64
  %77 = and i64 %0, 63
  %78 = lshr i64 %76, %77
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  br label %81

81:                                               ; preds = %68, %72
  %82 = phi i8 [ %80, %72 ], [ 0, %68 ]
  ret i8 %82
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sbitmap_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !66
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sbitmap_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_sbitmap_base_length(ptr noundef %2) #21
  tail call fastcc void @VEC_sbitmap_heap_safe_grow(i32 noundef %0) #21
  %4 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !17
  %5 = tail call fastcc ptr @VEC_sbitmap_base_address(ptr noundef %4) #21
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_sbitmap_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !64
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !15
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !15
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !64
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_sbitmap_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_ssa_iv_optimize() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ivopts_data, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call fastcc void @tree_ssa_iv_optimize_init(ptr noundef nonnull %2) #21
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1) #21
  %4 = load ptr, ptr %1, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %0, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %0 ]
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call void @flow_loop_dump(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i32 noundef 1) #20
  br label %15

15:                                               ; preds = %14, %10, %6
  call fastcc void @tree_ssa_iv_optimize_loop(ptr noundef nonnull %2, ptr noundef nonnull %7) #21
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #21
  %16 = load ptr, ptr %1, align 8, !tbaa !17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !70

18:                                               ; preds = %15, %0
  call fastcc void @tree_ssa_iv_optimize_finalize(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_iv_optimize_init(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #21
  %8 = shl i32 %7, 1
  %9 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !77
  %10 = zext i32 %8 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 32) #20
  %12 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !78
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %14 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !79
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %16 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  store i32 0, ptr %17, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !82
  %19 = tail call fastcc ptr @VEC_iv_use_p_heap_alloc() #21
  %20 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !29
  %21 = tail call fastcc ptr @VEC_iv_cand_p_heap_alloc() #21
  %22 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  store ptr %21, ptr %22, align 8, !tbaa !83
  %23 = tail call fastcc ptr @VEC_tree_heap_alloc() #21
  store ptr %23, ptr @decl_rtl_to_reset, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !84
  %4 = load ptr, ptr @cfun, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !87
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #21
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #21
  store ptr %11, ptr %0, align 8, !tbaa !87
  %12 = load ptr, ptr @cfun, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !91

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !87
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #21
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !90
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !llvm.loop !94

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %32, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %32 ]
  br label %22

42:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: optsize
declare void @flow_loop_dump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_iv_optimize_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5787, ptr noundef nonnull @.str.13) #20
  br label %8

8:                                                ; preds = %2, %7
  store ptr %1, ptr %0, align 8, !tbaa !95
  %9 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %1) #20
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  store i8 %9, ptr %10, align 1, !tbaa !96
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 8, !tbaa !92
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.31, i32 noundef %18) #21
  %20 = tail call ptr @single_dom_exit(ptr noundef nonnull %1) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %24 = load ptr, ptr %20, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !99
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !97
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.32, i32 noundef %26, i32 noundef %30) #21
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %33 = load ptr, ptr %20, align 8, !tbaa !5
  %34 = tail call ptr @last_stmt(ptr noundef %33) #20
  tail call void @print_gimple_stmt(ptr noundef %32, ptr noundef %34, i32 noundef 0, i32 noundef 2) #20
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %36 = tail call i32 @fputc(i32 10, ptr %35)
  br label %37

37:                                               ; preds = %22, %17
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %39 = tail call i32 @fputc(i32 10, ptr %38)
  br label %40

40:                                               ; preds = %37, %13, %8
  %41 = tail call ptr @get_loop_body(ptr noundef %1) #20
  %42 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !100
  tail call void @renumber_gimple_stmt_uids_in_blocks(ptr noundef %41, i32 noundef %43) #20
  tail call void @free(ptr noundef %41) #21
  %44 = tail call fastcc zeroext i8 @find_induction_variables(ptr noundef nonnull %0) #21, !range !39
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  tail call fastcc void @find_interesting_uses(ptr noundef nonnull %0) #21
  %47 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %48 = load ptr, ptr @compiler_params, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.param_info, ptr %48, i64 61, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !101
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  tail call fastcc void @find_iv_candidates(ptr noundef nonnull %0) #21
  tail call fastcc void @determine_iv_costs(ptr noundef nonnull %0) #21
  tail call fastcc void @determine_use_iv_costs(ptr noundef nonnull %0) #21
  tail call fastcc void @determine_set_costs(ptr noundef nonnull %0) #21
  %53 = tail call fastcc ptr @find_optimal_iv_set(ptr noundef nonnull %0) #21
  store ptr %53, ptr %3, align 8, !tbaa !17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @create_new_ivs(ptr noundef nonnull %0, ptr noundef nonnull %53) #21
  call fastcc void @iv_ca_free(ptr noundef nonnull %3) #21
  tail call fastcc void @rewrite_uses(ptr noundef nonnull %0) #21
  tail call fastcc void @remove_unused_ivs(ptr noundef nonnull %0) #21
  tail call void @scev_reset() #20
  br label %56

56:                                               ; preds = %52, %46, %40, %55
  tail call fastcc void @free_loop_data(ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !84
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !87
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #21, !range !103
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !84
  %13 = load i32, ptr %3, align 4, !tbaa !38
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #21
  store ptr %14, ptr %1, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !104

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #21
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_iv_optimize_finalize(ptr nocapture noundef %0) unnamed_addr #0 {
  tail call fastcc void @free_loop_data(ptr noundef %0) #21
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  tail call void @free(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  store ptr null, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %6, align 8, !tbaa !80
  tail call fastcc void @VEC_tree_heap_free() #21
  %8 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  tail call fastcc void @VEC_iv_use_p_heap_free(ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_iv_cand_p_heap_free(ptr noundef nonnull %9) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_use_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !105
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_iv_use_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = lshr i64 %4, 22
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %3, %1, %7
  %12 = phi i8 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !107
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !109
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !109
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !38
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sbitmap_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !66
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sbitmap_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !17, !nonnull !110, !noundef !110
  store i32 %0, ptr %9, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sbitmap_base_address(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sbitmap_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_sbitmap_base_space(ptr noundef %2, i32 noundef %0) #21, !range !103
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sbitmap_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !111
  %7 = load i32, ptr %0, align 8, !tbaa !66
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !112
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_iv_use_p_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_iv_cand_p_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !17
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #21
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 4, !tbaa !115
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !115
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #21
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @renumber_gimple_stmt_uids_in_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_induction_variables(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call fastcc zeroext i8 @find_bivs(ptr noundef %0) #21, !range !39
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  tail call fastcc void @find_givs(ptr noundef %0) #21
  tail call fastcc void @mark_bivs(ptr noundef %0) #21
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @niter_for_single_dom_exit(ptr noundef %0) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %18 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 23, i64 1, ptr %17)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %19, ptr noundef nonnull %14, i32 noundef 2) #20
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %21 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %20)
  br label %22

22:                                               ; preds = %16, %13
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %24 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 22, i64 1, ptr %23)
  %25 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull %2) #21
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22, %37
  %30 = load i32, ptr %2, align 4, !tbaa !38
  %31 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %30) #21
  %32 = getelementptr inbounds %struct.version_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @dump_iv(ptr noundef %36, ptr noundef nonnull %33) #21
  br label %37

37:                                               ; preds = %29, %35
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %29, !llvm.loop !119

40:                                               ; preds = %37, %22, %6, %9, %1
  %41 = phi i8 [ 0, %1 ], [ 1, %9 ], [ 1, %6 ], [ 1, %22 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %8 = load ptr, ptr %0, align 8, !tbaa !95
  %9 = tail call ptr @get_loop_body(ptr noundef %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr nonnull %10)
  br label %18

18:                                               ; preds = %16, %12, %1
  %19 = load ptr, ptr %0, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !100
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  br label %25

25:                                               ; preds = %23, %71
  %26 = phi i64 [ 0, %23 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !120
  store ptr %30, ptr %24, align 8, !tbaa.struct !121
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %4) #21, !range !39
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %25, %48
  %34 = load ptr, ptr %4, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !99
  %37 = load ptr, ptr @cfun, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !122
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !123
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load ptr, ptr %0, align 8, !tbaa !95
  %45 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %44, ptr noundef %36) #20
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call fastcc void @find_interesting_uses_outside(ptr noundef nonnull %0, ptr noundef nonnull %34) #21
  br label %48

48:                                               ; preds = %33, %43, %47
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %24, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #21, !range !39
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %33, !llvm.loop !125

53:                                               ; preds = %48, %25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %28) #20
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %56
  %57 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  call fastcc void @find_interesting_uses_stmt(ptr noundef nonnull %0, ptr noundef %57) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %58 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %56, label %60, !llvm.loop !126

60:                                               ; preds = %56, %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %28) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60, %68
  %64 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %65 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %64) #21, !range !39
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call fastcc void @find_interesting_uses_stmt(ptr noundef nonnull %0, ptr noundef %64) #21
  br label %68

68:                                               ; preds = %63, %67
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %63, label %71, !llvm.loop !128

71:                                               ; preds = %68, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  %72 = add nuw nsw i64 %26, 1
  %73 = load ptr, ptr %0, align 8, !tbaa !95
  %74 = getelementptr inbounds %struct.loop, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !100
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %25, label %78, !llvm.loop !129

78:                                               ; preds = %71
  %79 = trunc i64 %72 to i32
  br label %80

80:                                               ; preds = %78, %18
  %81 = phi i32 [ 0, %18 ], [ %79, %78 ]
  store i32 %81, ptr %3, align 4, !tbaa !38
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  %89 = call i32 @fputc(i32 10, ptr nonnull %82)
  %90 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %91, ptr noundef nonnull %3) #21
  %92 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %3) #21, !range !39
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %88, %112
  %95 = load i32, ptr %3, align 4, !tbaa !38
  %96 = call fastcc ptr @ver_info(ptr noundef nonnull %0, i32 noundef %95) #21
  %97 = getelementptr inbounds %struct.version_info, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !130
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %102 = call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %101)
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %104 = load ptr, ptr %96, align 8, !tbaa !131
  call void @print_generic_expr(ptr noundef %103, ptr noundef %104, i32 noundef 2) #20
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %106 = load i32, ptr %97, align 4, !tbaa !130
  %107 = getelementptr inbounds %struct.version_info, ptr %96, i64 0, i32 2
  %108 = load i8, ptr %107, align 8, !tbaa !132
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, ptr @.str.39, ptr @.str.17
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.38, i32 noundef %106, ptr noundef nonnull %110) #21
  br label %112

112:                                              ; preds = %94, %100
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %3) #21
  %113 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %3) #21, !range !39
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %94, !llvm.loop !133

115:                                              ; preds = %112, %88
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %117 = call i32 @fputc(i32 10, ptr %116)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  br label %118

118:                                              ; preds = %115, %84, %80
  call void @free(ptr noundef %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_iv_candidates(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @add_standard_iv_candidates(ptr noundef %0) #21
  tail call fastcc void @add_old_ivs_candidates(ptr noundef %0) #21
  tail call fastcc void @add_derived_ivs_candidates(ptr noundef %0) #21
  tail call fastcc void @set_autoinc_for_original_candidates(ptr noundef %0) #21
  tail call fastcc void @record_important_candidates(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_iv_costs(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 17, i64 1, ptr nonnull %2)
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %11 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 12, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %8, %4, %1
  %13 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %17 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %16) #21
  tail call fastcc void @determine_iv_cost(ptr noundef %0, ptr noundef %17) #21
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.iv_cand, ptr %17, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !134
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.66, i32 noundef %16, i32 noundef %26) #21
  br label %28

28:                                               ; preds = %24, %20, %15
  %29 = add nuw i32 %16, 1
  %30 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %15, label %32, !llvm.loop !135

32:                                               ; preds = %28, %12
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @fputc(i32 10, ptr nonnull %33)
  br label %41

41:                                               ; preds = %39, %35, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_use_iv_costs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  tail call fastcc void @alloc_use_cost_map(ptr noundef %0) #21
  %5 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  br label %9

9:                                                ; preds = %7, %46
  %10 = phi i32 [ 0, %7 ], [ %47, %46 ]
  %11 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %10) #21
  %12 = load i8, ptr %8, align 4, !tbaa !136
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @n_iv_cands(ptr noundef nonnull %0) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %21, %17 ], [ 0, %14 ]
  %19 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %18) #21
  %20 = tail call fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef %11, ptr noundef %19) #21, !range !39
  %21 = add nuw i32 %18, 1
  %22 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %17, label %44, !llvm.loop !137

24:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %25 = getelementptr inbounds %struct.iv_use, ptr %11, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull %2) #21
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24, %36
  %30 = load i32, ptr %2, align 4, !tbaa !38
  %31 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %30) #21
  %32 = tail call fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef %11, ptr noundef %31) #21, !range !39
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %30) #20
  br label %36

36:                                               ; preds = %29, %34
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %29, !llvm.loop !138

39:                                               ; preds = %36
  %40 = load ptr, ptr %25, align 8, !tbaa !26
  br label %41

41:                                               ; preds = %39, %24
  %42 = phi ptr [ %40, %39 ], [ %26, %24 ]
  %43 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %42, ptr noundef %4) #20
  tail call void @bitmap_clear(ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br label %46

44:                                               ; preds = %17, %14
  %45 = phi i32 [ 0, %14 ], [ %21, %17 ]
  store i32 %45, ptr %2, align 4, !tbaa !38
  br label %46

46:                                               ; preds = %44, %41
  %47 = add nuw i32 %10, 1
  %48 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %9, label %50, !llvm.loop !139

50:                                               ; preds = %46, %1
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %116, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %116, label %57

57:                                               ; preds = %53
  %58 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 21, i64 1, ptr nonnull %51)
  %59 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %113, label %61

61:                                               ; preds = %57, %107
  %62 = phi i32 [ %110, %107 ], [ 0, %57 ]
  %63 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %62) #21
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.68, i32 noundef %62) #21
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %67 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %66)
  %68 = getelementptr inbounds %struct.iv_use, ptr %63, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !140
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.iv_use, ptr %63, i64 0, i32 7
  br label %73

73:                                               ; preds = %71, %102
  %74 = phi i32 [ %69, %71 ], [ %103, %102 ]
  %75 = phi i64 [ 0, %71 ], [ %104, %102 ]
  %76 = load ptr, ptr %72, align 8, !tbaa !141
  %77 = getelementptr inbounds %struct.cost_pair, ptr %76, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !142
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.cost_pair, ptr %76, i64 %75, i32 1
  %82 = load i64, ptr %81, align 8
  %83 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %82) #21, !range !39
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = lshr i64 %82, 32
  %87 = trunc i64 %86 to i32
  %88 = trunc i64 %82 to i32
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %90 = load i32, ptr %78, align 8, !tbaa !33
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.70, i32 noundef %90, i32 noundef %88, i32 noundef %87) #21
  %92 = load ptr, ptr %72, align 8, !tbaa !141
  %93 = getelementptr inbounds %struct.cost_pair, ptr %92, i64 %75, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !145
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @bitmap_print(ptr noundef %97, ptr noundef nonnull %94, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #20
  br label %98

98:                                               ; preds = %96, %85
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %100 = tail call i32 @fputc(i32 10, ptr %99)
  %101 = load i32, ptr %68, align 8, !tbaa !140
  br label %102

102:                                              ; preds = %73, %80, %98
  %103 = phi i32 [ %74, %73 ], [ %74, %80 ], [ %101, %98 ]
  %104 = add nuw nsw i64 %75, 1
  %105 = zext i32 %103 to i64
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %73, label %107, !llvm.loop !146

107:                                              ; preds = %102, %61
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %109 = tail call i32 @fputc(i32 10, ptr %108)
  %110 = add nuw i32 %62, 1
  %111 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %61, label %113, !llvm.loop !147

113:                                              ; preds = %107, %57
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %115 = tail call i32 @fputc(i32 10, ptr %114)
  br label %116

116:                                              ; preds = %113, %53, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_set_costs(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 14, i64 1, ptr nonnull %6)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %15 = load i32, ptr @target_avail_regs, align 4, !tbaa !38
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.72, i32 noundef %15) #21
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %19 = load i8, ptr %18, align 1, !tbaa !96
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !38
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.73, i32 noundef %22) #21
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %25 = load i8, ptr %18, align 1, !tbaa !96
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.74, i32 noundef %28) #21
  br label %30

30:                                               ; preds = %12, %8, %1
  %31 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !148
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %32) #20
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !39
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30, %47
  %36 = phi i32 [ %48, %47 ], [ 0, %30 ]
  %37 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %38 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %37) #21
  %39 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %38) #21
  %40 = call zeroext i8 @is_gimple_reg(ptr noundef %39) #20
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %39) #21
  %44 = icmp eq ptr %43, null
  %45 = zext i1 %44 to i32
  %46 = add i32 %36, %45
  br label %47

47:                                               ; preds = %42, %35
  %48 = phi i32 [ %36, %35 ], [ %46, %42 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %49 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !39
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %35, label %51, !llvm.loop !149

51:                                               ; preds = %47, %30
  %52 = phi i32 [ 0, %30 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %54, ptr noundef nonnull %2) #21
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !39
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %51, %70
  %58 = phi i32 [ %71, %70 ], [ %52, %51 ]
  %59 = load i32, ptr %2, align 4, !tbaa !38
  %60 = call fastcc ptr @ver_info(ptr noundef nonnull %0, i32 noundef %59) #21
  %61 = getelementptr inbounds %struct.version_info, ptr %60, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !130
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.version_info, ptr %60, i64 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !132
  %67 = icmp ne i8 %66, 0
  %68 = zext i1 %67 to i32
  %69 = add i32 %58, %68
  br label %70

70:                                               ; preds = %64, %57
  %71 = phi i32 [ %58, %57 ], [ %69, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #21
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !39
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %57, !llvm.loop !150

74:                                               ; preds = %70, %51
  %75 = phi i32 [ %52, %51 ], [ %71, %70 ]
  %76 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  store i32 %75, ptr %76, align 8, !tbaa !151
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %78 = icmp eq ptr %77, null
  br i1 %78, label %108, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.75, i32 noundef %75) #21
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %86 = icmp eq ptr %85, null
  br i1 %86, label %108, label %87

87:                                               ; preds = %79, %83
  %88 = phi ptr [ %85, %83 ], [ %77, %79 ]
  %89 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %87
  %93 = call i64 @fwrite(ptr nonnull @.str.76, i64 17, i64 1, ptr nonnull %88)
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %95 = call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr %94)
  br label %96

96:                                               ; preds = %92, %96
  %97 = phi i32 [ 0, %92 ], [ %101, %96 ]
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %99 = call fastcc i32 @ivopts_global_cost_for_size(ptr noundef nonnull %0, i32 noundef %97) #21
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.66, i32 noundef %97, i32 noundef %99) #21
  %101 = add nuw i32 %97, 1
  %102 = load i32, ptr @target_avail_regs, align 4, !tbaa !38
  %103 = shl i32 %102, 1
  %104 = icmp ult i32 %97, %103
  br i1 %104, label %96, label %105, !llvm.loop !152

105:                                              ; preds = %96
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %107 = call i32 @fputc(i32 10, ptr %106)
  br label %108

108:                                              ; preds = %74, %105, %87, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_optimal_iv_set(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_initial_solution(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %3, label %6, label %13

6:                                                ; preds = %1
  br i1 %5, label %62, label %7

7:                                                ; preds = %6
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 38, i64 1, ptr nonnull %4)
  br label %62

13:                                               ; preds = %1
  br i1 %5, label %21, label %14

14:                                               ; preds = %13
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 27, i64 1, ptr nonnull %4)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call fastcc void @iv_ca_dump(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %2) #21
  br label %21

21:                                               ; preds = %18, %14, %13
  %22 = tail call fastcc zeroext i8 @try_improve_iv_set(ptr noundef %0, ptr noundef nonnull %2) #21, !range !39
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21, %34
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 13, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call fastcc void @iv_ca_dump(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %2) #21
  br label %34

34:                                               ; preds = %31, %27, %24
  %35 = tail call fastcc zeroext i8 @try_improve_iv_set(ptr noundef %0, ptr noundef nonnull %2) #21, !range !39
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %24, !llvm.loop !153

37:                                               ; preds = %34, %21
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = tail call fastcc i64 @iv_ca_cost(ptr noundef nonnull %2) #21
  %46 = trunc i64 %45 to i32
  %47 = lshr i64 %45, 32
  %48 = trunc i64 %47 to i32
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.81, i32 noundef %46, i32 noundef %48) #21
  br label %50

50:                                               ; preds = %44, %40, %37
  %51 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50, %53
  %54 = phi i32 [ %59, %53 ], [ 0, %50 ]
  %55 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %54) #21
  %56 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef nonnull %2, ptr noundef %55) #21
  %57 = load ptr, ptr %56, align 8, !tbaa !142
  %58 = getelementptr inbounds %struct.iv_use, ptr %55, i64 0, i32 8
  store ptr %57, ptr %58, align 8, !tbaa !154
  %59 = add nuw i32 %54, 1
  %60 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %53, label %62, !llvm.loop !155

62:                                               ; preds = %53, %50, %6, %7, %11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_ivs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !39
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2, %9
  %10 = load i32, ptr %3, align 4, !tbaa !38
  %11 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %10) #21
  tail call fastcc void @create_new_iv(ptr noundef %0, ptr noundef %11) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !39
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !158

14:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  tail call void @free(ptr noundef %4) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.iv_ca, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  tail call void @free(ptr noundef %7) #21
  %8 = load ptr, ptr %0, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.iv_ca, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  tail call void @bitmap_obstack_free(ptr noundef %10) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.iv_ca, ptr %11, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !156
  %13 = load ptr, ptr %0, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.iv_ca, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  tail call void @free(ptr noundef %15) #21
  %16 = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %16) #21
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_uses(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %11
  %5 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %6 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5654, ptr noundef nonnull @.str.13) #20
  br label %11

11:                                               ; preds = %4, %10
  tail call fastcc void @rewrite_use(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %8) #21
  %12 = add nuw i32 %5, 1
  %13 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !162

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unused_ivs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %2) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %1, %39
  %10 = load i32, ptr %2, align 4, !tbaa !38
  %11 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %10) #21
  %12 = getelementptr inbounds %struct.version_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.iv, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = tail call i32 @integer_zerop(ptr noundef %17) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.version_info, ptr %11, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !130
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load ptr, ptr %12, align 8, !tbaa !117
  %26 = getelementptr inbounds %struct.iv, ptr %25, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !163
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.version_info, ptr %11, i64 0, i32 4
  %31 = load i8, ptr %30, align 8, !tbaa !164
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.iv, ptr %25, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !15
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %37) #20
  br label %39

39:                                               ; preds = %33, %29, %24, %20, %15, %9
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %9, !llvm.loop !165

42:                                               ; preds = %39, %1
  tail call void @release_defs_bitset(ptr noundef %4) #20
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_loop_data(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @pointer_map_destroy(ptr noundef nonnull %6) #20
  store ptr null, ptr %5, align 8, !tbaa !82
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %11, ptr noundef nonnull %2) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9, %21
  %15 = load i32, ptr %2, align 4, !tbaa !38
  %16 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @free(ptr noundef nonnull %18) #21
  br label %21

21:                                               ; preds = %20, %14
  store ptr null, ptr %17, align 8, !tbaa !117
  %22 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 2
  store i8 0, ptr %22, align 8, !tbaa !132
  %23 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 4
  store i8 0, ptr %23, align 8, !tbaa !164
  %24 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !130
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %14, !llvm.loop !166

27:                                               ; preds = %21
  %28 = load ptr, ptr %10, align 8, !tbaa !79
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi ptr [ %28, %27 ], [ %11, %9 ]
  tail call void @bitmap_clear(ptr noundef %30) #20
  %31 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  tail call void @bitmap_clear(ptr noundef %32) #20
  %33 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %29, %64
  %36 = phi i32 [ %66, %64 ], [ 0, %29 ]
  %37 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %36) #21
  %38 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  tail call void @free(ptr noundef %39) #21
  %40 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  tail call void @bitmap_obstack_free(ptr noundef %41) #20
  store ptr null, ptr %40, align 8, !tbaa !26
  %42 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !140
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !141
  br i1 %44, label %64, label %47

47:                                               ; preds = %35, %58
  %48 = phi i32 [ %59, %58 ], [ %43, %35 ]
  %49 = phi ptr [ %60, %58 ], [ %46, %35 ]
  %50 = phi i64 [ %61, %58 ], [ 0, %35 ]
  %51 = getelementptr inbounds %struct.cost_pair, ptr %49, i64 %50, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !145
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  tail call void @bitmap_obstack_free(ptr noundef nonnull %52) #20
  %55 = load ptr, ptr %45, align 8, !tbaa !141
  %56 = getelementptr inbounds %struct.cost_pair, ptr %55, i64 %50, i32 2
  store ptr null, ptr %56, align 8, !tbaa !145
  %57 = load i32, ptr %42, align 8, !tbaa !140
  br label %58

58:                                               ; preds = %47, %54
  %59 = phi i32 [ %48, %47 ], [ %57, %54 ]
  %60 = phi ptr [ %49, %47 ], [ %55, %54 ]
  %61 = add nuw nsw i64 %50, 1
  %62 = zext i32 %59 to i64
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %47, label %64, !llvm.loop !167

64:                                               ; preds = %58, %35
  %65 = phi ptr [ %46, %35 ], [ %60, %58 ]
  tail call void @free(ptr noundef %65) #21
  tail call void @free(ptr noundef nonnull %37) #21
  %66 = add nuw i32 %36, 1
  %67 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %35, label %69, !llvm.loop !168

69:                                               ; preds = %64, %29
  %70 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !29
  tail call fastcc void @VEC_iv_use_p_base_truncate(ptr noundef %71) #21
  %72 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %69, %86
  %75 = phi i32 [ %87, %86 ], [ 0, %69 ]
  %76 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %75) #21
  %77 = getelementptr inbounds %struct.iv_cand, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !31
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @free(ptr noundef nonnull %78) #21
  br label %81

81:                                               ; preds = %80, %74
  %82 = getelementptr inbounds %struct.iv_cand, ptr %76, i64 0, i32 10
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void @bitmap_obstack_free(ptr noundef nonnull %83) #20
  br label %86

86:                                               ; preds = %85, %81
  tail call void @free(ptr noundef nonnull %76) #21
  %87 = add nuw i32 %75, 1
  %88 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %74, label %90, !llvm.loop !169

90:                                               ; preds = %86, %69
  %91 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !83
  tail call fastcc void @VEC_iv_cand_p_base_truncate(ptr noundef %92) #21
  %93 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !77
  %95 = load ptr, ptr @cfun, align 8, !tbaa !17
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !71
  %98 = getelementptr inbounds %struct.gimple_df, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !73
  %100 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %99) #21
  %101 = icmp ult i32 %94, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %90
  %103 = shl i32 %100, 1
  store i32 %103, ptr %93, align 4, !tbaa !77
  %104 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !78
  tail call void @free(ptr noundef %105) #21
  %106 = load i32, ptr %93, align 4, !tbaa !77
  %107 = zext i32 %106 to i64
  %108 = tail call ptr @xcalloc(i64 noundef %107, i64 noundef 32) #20
  store ptr %108, ptr %104, align 8, !tbaa !78
  br label %109

109:                                              ; preds = %102, %90
  %110 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  store i32 0, ptr %110, align 8, !tbaa !81
  %111 = load ptr, ptr @decl_rtl_to_reset, align 8
  %112 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %111, i32 noundef 0, ptr noundef nonnull %4) #21, !range !103
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %109, %114
  %115 = phi i32 [ %117, %114 ], [ 0, %109 ]
  %116 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @set_decl_rtl(ptr noundef %116, ptr noundef null) #20
  %117 = add i32 %115, 1
  %118 = load ptr, ptr @decl_rtl_to_reset, align 8
  %119 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %118, i32 noundef %117, ptr noundef nonnull %4) #21, !range !103
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %114, !llvm.loop !170

121:                                              ; preds = %114, %109
  %122 = phi ptr [ %111, %109 ], [ %118, %114 ]
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %122) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_bivs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #20
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %1, %46
  %9 = phi i8 [ %47, %46 ], [ 0, %1 ]
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %11 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %10) #21
  %12 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #21
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 4194304
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %8
  %17 = call fastcc ptr @determine_biv_step(ptr noundef %10) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  %20 = call ptr @loop_preheader_edge(ptr noundef %3) #20
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !171
  %23 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %10, i32 noundef %22) #21
  %24 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %23) #21
  %25 = call ptr @expand_simple_operations(ptr noundef %24) #20
  %26 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %25) #21, !range !39
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef nonnull %17) #21, !range !39
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #21
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %34, ptr noundef %25) #20
  %36 = load i64, ptr %34, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %41 [
    i16 10, label %38
    i16 12, label %38
  ]

38:                                               ; preds = %31, %31
  %39 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %40 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %39, ptr noundef nonnull %17) #20
  br label %43

41:                                               ; preds = %31
  %42 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %34, ptr noundef nonnull %17) #20
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi ptr [ %40, %38 ], [ %42, %41 ]
  %45 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #21
  call fastcc void @set_iv(ptr noundef nonnull %0, ptr noundef %45, ptr noundef %35, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %19, %28, %16, %8, %43
  %47 = phi i8 [ %9, %8 ], [ %9, %19 ], [ %9, %28 ], [ 1, %43 ], [ %9, %16 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %48 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %8, label %50, !llvm.loop !172

50:                                               ; preds = %46, %1
  %51 = phi i8 [ 0, %1 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_givs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  tail call fastcc void @find_givs_in_bb(ptr noundef nonnull %0, ptr noundef %10) #21
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %4, align 4, !tbaa !100
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !173

15:                                               ; preds = %7, %1
  tail call void @free(ptr noundef %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_bivs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #20
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1, %38
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %10 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %9) #21
  %11 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %10) #21
  %12 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %11) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = call ptr @loop_latch_edge(ptr noundef %3) #20
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !171
  %18 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %9, i32 noundef %17) #21
  %19 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #21
  %20 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %19) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = call fastcc ptr @gimple_bb(ptr noundef %24) #21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !174
  %28 = load ptr, ptr %0, align 8, !tbaa !95
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !175
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.iv, ptr %12, i64 0, i32 4
  store i8 1, ptr %36, align 8, !tbaa !19
  %37 = getelementptr inbounds %struct.iv, ptr %20, i64 0, i32 4
  store i8 1, ptr %37, align 8, !tbaa !19
  br label %38

38:                                               ; preds = %22, %30, %14, %8, %35
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !39
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %8, label %41, !llvm.loop !176

41:                                               ; preds = %38, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @niter_for_single_dom_exit(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = tail call ptr @single_dom_exit(ptr noundef %2) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @niter_for_exit(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = load ptr, ptr %1, align 8, !tbaa !177
  store ptr %4, ptr %0, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !181
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !179
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !182
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !184
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !185
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !185
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !38
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !186

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !38
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !38
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !184
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !179
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !184
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !64
  store i64 %35, ptr %3, align 8, !tbaa !185
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !38
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !38
  %40 = load i32, ptr %23, align 8, !tbaa !184
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !184
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !187

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !188
  store ptr %44, ptr %0, align 8, !tbaa !179
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !182
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !38
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !185
  store i32 %16, ptr %1, align 4, !tbaa !38
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ver_info(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.version_info, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !185
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !185
  %6 = load i32, ptr %1, align 4, !tbaa !38
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @determine_biv_step(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.affine_iv, align 8
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #21
  %7 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = call zeroext i8 @simple_iv(ptr noundef %5, ptr noundef %5, ptr noundef %7, ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !193
  %16 = call i32 @integer_zerop(ptr noundef %15) #20
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %14, align 8
  %19 = select i1 %17, ptr %18, ptr null
  br label %20

20:                                               ; preds = %10, %1, %13
  %21 = phi ptr [ %19, %13 ], [ null, %1 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_simple_operations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_iv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %1) #21
  %6 = getelementptr inbounds %struct.version_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 858, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !15
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #20
  %16 = tail call fastcc ptr @alloc_iv(ptr noundef %2, ptr noundef %3) #21
  store ptr %16, ptr %6, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.iv, ptr %16, i64 0, i32 3
  store ptr %1, ptr %17, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  store ptr %4, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @name_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %4) #21
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 838, ptr noundef nonnull @.str.13) #20
  br label %6

6:                                                ; preds = %2, %5
  store ptr %0, ptr %3, align 8, !tbaa !14
  %7 = tail call fastcc ptr @determine_base_object(ptr noundef %0) #21
  %8 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 4
  store i8 0, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 5
  store i8 0, ptr %11, align 1, !tbaa !163
  %12 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 6
  store i32 0, ptr %12, align 4, !tbaa !198
  %13 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @determine_base_object(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %9, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %10 [
    i16 116, label %6
    i16 113, label %6
  ]

6:                                                ; preds = %15, %21, %2, %2
  %7 = phi ptr [ %3, %2 ], [ %3, %2 ], [ %19, %21 ], [ %3, %15 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  br label %2

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %33 [
    i16 10, label %15
    i16 12, label %15
  ]

15:                                               ; preds = %10, %10
  switch i16 %5, label %30 [
    i16 23, label %33
    i16 121, label %16
    i16 66, label %6
    i16 63, label %29
    i16 64, label %29
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call ptr @get_base_address(ptr noundef %18) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 47
  br i1 %24, label %6, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !17
  %27 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %19) #20
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %26, ptr noundef %27) #20
  br label %33

29:                                               ; preds = %15, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 824, ptr noundef nonnull @.str.13) #20
  br label %30

30:                                               ; preds = %15, %29
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !17
  %32 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %31, ptr noundef nonnull %3) #20
  br label %33

33:                                               ; preds = %16, %15, %10, %30, %25
  %34 = phi ptr [ %32, %30 ], [ %28, %25 ], [ %3, %16 ], [ null, %15 ], [ null, %10 ]
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_givs_in_bb(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !39
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2, %6
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  tail call fastcc void @find_givs_in_stmt(ptr noundef %0, ptr noundef %7) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !39
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !llvm.loop !199

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !201
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_givs_in_stmt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = call fastcc zeroext i8 @find_givs_in_stmt_scev(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #21, !range !39
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !202
  %9 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  call fastcc void @set_iv(ptr noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %10) #21
  br label %11

11:                                               ; preds = %2, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !175
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !203
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
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_givs_in_stmt_scev(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !109
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #21
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #21
  %15 = tail call zeroext i8 @simple_iv(ptr noundef %4, ptr noundef %14, ptr noundef nonnull %9, ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 8, !tbaa !202
  %19 = tail call ptr @expand_simple_operations(ptr noundef %18) #20
  store ptr %19, ptr %2, align 8, !tbaa !202
  %20 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %19) #21, !range !39
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !193
  %24 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %23) #21, !range !39
  %25 = xor i8 %24, 1
  br label %26

26:                                               ; preds = %22, %17, %13, %8, %3
  %27 = phi i8 [ 0, %3 ], [ 0, %8 ], [ 0, %13 ], [ 0, %17 ], [ %25, %22 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_iv(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %27 [
    i16 10, label %7
    i16 12, label %7
    i16 6, label %7
    i16 7, label %7
    i16 8, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef nonnull %1) #21
  %9 = getelementptr inbounds %struct.version_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !95
  %19 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %18, ptr noundef nonnull %15) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %12
  %22 = tail call ptr @build_int_cst(ptr noundef nonnull %4, i64 noundef 0) #20
  tail call fastcc void @set_iv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %22) #21
  br label %23

23:                                               ; preds = %17, %21, %7
  %24 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef nonnull %1) #21
  %25 = getelementptr inbounds %struct.version_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !117
  br label %27

27:                                               ; preds = %2, %23
  %28 = phi ptr [ %26, %23 ], [ null, %2 ]
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @niter_for_exit(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @pointer_map_create() #20
  store ptr %8, ptr %4, align 8, !tbaa !82
  br label %12

9:                                                ; preds = %2
  %10 = tail call ptr @pointer_map_contains(ptr noundef nonnull %5, ptr noundef %1) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %7, %9
  %13 = load ptr, ptr %0, align 8, !tbaa !95
  %14 = call zeroext i8 @number_of_iterations_exit(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !207
  %19 = call i32 @integer_zerop(ptr noundef %18) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !209
  %24 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %23) #21, !range !39
  %25 = icmp eq i8 %24, 0
  %26 = load ptr, ptr %22, align 8
  %27 = select i1 %25, ptr %26, ptr null
  br label %28

28:                                               ; preds = %21, %12, %16
  %29 = phi ptr [ null, %16 ], [ null, %12 ], [ %27, %21 ]
  %30 = load ptr, ptr %4, align 8, !tbaa !82
  %31 = call ptr @pointer_map_insert(ptr noundef %30, ptr noundef %1) #20
  store ptr %29, ptr %31, align 8, !tbaa !17
  br label %34

32:                                               ; preds = %9
  %33 = load ptr, ptr %10, align 8, !tbaa !17
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #22
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !39
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_outside(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #20
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !39
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %19
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %12 = load i32, ptr %9, align 4, !tbaa !171
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #21
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #21
  %15 = call zeroext i8 @is_gimple_reg(ptr noundef %14) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %14) #21
  br label %19

19:                                               ; preds = %10, %17
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !39
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !llvm.loop !210

22:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 738, ptr noundef nonnull @.str.13) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !211
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !211
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  tail call fastcc void @find_invariants_stmt(ptr noundef %0, ptr noundef %1) #21
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !109
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @find_interesting_uses_cond(ptr noundef %0, ptr noundef %1) #21
  br label %108

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #21, !range !39
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %1) #21
  %12 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %1) #21
  %13 = load ptr, ptr %11, align 8, !tbaa !17
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %13) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.iv, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %108, label %25

25:                                               ; preds = %17, %20, %10
  %26 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #21, !range !213
  %27 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %26) #21, !range !109
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 8, !tbaa !17
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %30) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %12, align 8, !tbaa !17
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !38
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %29, %39
  tail call fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12) #21
  br label %49

47:                                               ; preds = %39
  %48 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef nonnull %40) #21
  br label %49

49:                                               ; preds = %47, %46
  %50 = load ptr, ptr %11, align 8, !tbaa !17
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !38
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %108

56:                                               ; preds = %49
  tail call fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #21
  br label %108

57:                                               ; preds = %36, %25
  %58 = zext nneg i32 %26 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call fastcc void @find_interesting_uses_cond(ptr noundef %0, ptr noundef %1) #21
  br label %108

63:                                               ; preds = %57, %7
  %64 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !109
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %68 = load ptr, ptr %0, align 8, !tbaa !95
  %69 = getelementptr inbounds %struct.loop, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !148
  %71 = icmp eq ptr %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #21
  %74 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %73) #21
  %75 = tail call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %74) #21
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.iv, ptr %75, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !16
  %80 = tail call i32 @integer_zerop(ptr noundef %79) #20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %72, %77, %66, %63
  %83 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !109
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %1) #21
  br label %89

87:                                               ; preds = %82
  %88 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %1) #21
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi ptr [ %86, %85 ], [ %88, %87 ]
  %91 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %89, %104
  %94 = phi ptr [ %105, %104 ], [ %90, %89 ]
  %95 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %94) #21
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %95) #21
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef nonnull %95) #21
  br label %104

104:                                              ; preds = %99, %93, %102
  %105 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %106 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %93, label %108, !llvm.loop !214

108:                                              ; preds = %104, %89, %77, %49, %56, %20, %62, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !109
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !215
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 687, ptr noundef nonnull @.str.13) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_interesting_uses_op(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !163
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !198
  %16 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.iv_use, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1170, ptr noundef nonnull @.str.13) #20
  br label %41

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = tail call i32 @integer_zerop(ptr noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call fastcc void @record_invariant(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %41

27:                                               ; preds = %21
  store i8 1, ptr %10, align 1, !tbaa !163
  %28 = tail call ptr @xmalloc(i64 noundef 40) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !217
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = tail call fastcc i32 @gimple_code(ptr noundef %30) #21, !range !109
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %30) #21, !range !39
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1186, ptr noundef nonnull @.str.13) #20
  br label %37

37:                                               ; preds = %27, %33, %36
  %38 = tail call fastcc ptr @record_use(ptr noundef %0, ptr noundef null, ptr noundef nonnull %28, ptr noundef %30, i32 noundef 0) #21
  %39 = load i32, ptr %38, align 8, !tbaa !20
  %40 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 6
  store i32 %39, ptr %40, align 4, !tbaa !198
  br label %41

41:                                               ; preds = %20, %13, %6, %2, %37, %26
  %42 = phi ptr [ null, %26 ], [ %38, %37 ], [ null, %2 ], [ null, %6 ], [ %16, %13 ], [ %16, %20 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_invariant(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !95
  %17 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %16, ptr noundef nonnull %13) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15, %10
  %20 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef nonnull %1) #21
  store ptr %1, ptr %20, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.version_info, ptr %20, i64 0, i32 2
  %22 = load i8, ptr %21, align 8, !tbaa !132
  %23 = or i8 %22, %2
  store i8 %23, ptr %21, align 8, !tbaa !132
  %24 = getelementptr inbounds %struct.version_info, ptr %20, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !130
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !81
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !81
  store i32 %30, ptr %24, align 4, !tbaa !130
  br label %31

31:                                               ; preds = %27, %19
  %32 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !79
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !15
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %35) #20
  br label %37

37:                                               ; preds = %15, %3, %7, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !109
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @record_use(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #20
  %7 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  store i32 %7, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 1
  store i32 %4, ptr %8, align 4, !tbaa !22
  %9 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 4
  store ptr %1, ptr %11, align 8, !tbaa !24
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %13 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.iv, ptr %2, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !12
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @dump_use(ptr noundef nonnull %15, ptr noundef nonnull %6) #21
  br label %22

22:                                               ; preds = %21, %17, %5
  %23 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  tail call fastcc void @VEC_iv_use_p_heap_safe_push(ptr noundef nonnull %23, ptr noundef nonnull %6) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_use_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_iv_use_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  tail call fastcc void @VEC_iv_use_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_use_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_iv_use_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_iv_use_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !105
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !105
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_use_p_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !218
  %6 = load i32, ptr %0, align 8, !tbaa !105
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariants_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !109
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %1) #21
  br label %10

8:                                                ; preds = %2
  %9 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %1) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %11, %10 ]
  %16 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %15) #21
  tail call fastcc void @record_invariant(ptr noundef %0, ptr noundef %16, i8 noundef zeroext 0) #21
  %17 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %18 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20, !llvm.loop !219

20:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_cond(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #21, !range !39
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !17
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %10) #21
  %12 = load ptr, ptr %4, align 8, !tbaa !17
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %13) #21
  br label %19

15:                                               ; preds = %2
  %16 = call ptr @xmalloc(i64 noundef 40) #20
  %17 = load ptr, ptr %5, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !217
  %18 = call fastcc ptr @record_use(ptr noundef %0, ptr noundef null, ptr noundef %16, ptr noundef %1, i32 noundef 2) #21
  br label %19

19:                                               ; preds = %15, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !213
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #21, !range !109
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ifs_ivopts_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %6 = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %6, ptr %4, align 8, !tbaa !17
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %8 = tail call ptr @build_int_cst(ptr noundef %7, i64 noundef 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %9 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %1) #21, !range !39
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %129

11:                                               ; preds = %3
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 42
  br i1 %14, label %129, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @unshare_expr(ptr noundef nonnull %6) #20
  store ptr %16, ptr %4, align 8, !tbaa !17
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 152
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = tail call ptr @build_pointer_type(ptr noundef %22) #20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = load i64, ptr %25, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %25) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %129, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !14
  store ptr %35, ptr %24, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.iv, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  br label %38

38:                                               ; preds = %34, %27, %20
  %39 = phi ptr [ %37, %34 ], [ %8, %27 ], [ %8, %20 ]
  %40 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %38
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 141
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %41) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %129, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !14
  store ptr %51, ptr %40, align 8, !tbaa !15
  %52 = getelementptr inbounds %struct.iv, ptr %48, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %23, ptr noundef nonnull %57, ptr noundef nonnull %53) #20
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %53, %55 ]
  %63 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %23, ptr noundef %39, ptr noundef %62) #20
  br label %64

64:                                               ; preds = %50, %61, %43, %38
  %65 = phi ptr [ %63, %61 ], [ %39, %50 ], [ %39, %43 ], [ %39, %38 ]
  %66 = tail call i32 @integer_zerop(ptr noundef %65) #20
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %129

68:                                               ; preds = %64
  %69 = tail call ptr @tree_mem_ref_addr(ptr noundef %23, ptr noundef nonnull %16) #20
  store ptr %69, ptr %4, align 8, !tbaa !17
  br label %124

70:                                               ; preds = %15
  store ptr %0, ptr %5, align 8, !tbaa !220
  %71 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %5, i64 0, i32 1
  store ptr %1, ptr %71, align 8, !tbaa !222
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %73 = tail call ptr @build_int_cst(ptr noundef %72, i64 noundef 0) #20
  %74 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %5, i64 0, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !223
  %75 = call zeroext i8 @for_each_index(ptr noundef nonnull %4, ptr noundef nonnull @idx_find_step, ptr noundef nonnull %5) #20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %129, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %74, align 8, !tbaa !223
  %79 = call i32 @integer_zerop(ptr noundef %78) #20
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %129

81:                                               ; preds = %77
  %82 = load ptr, ptr %74, align 8, !tbaa !223
  %83 = load ptr, ptr %4, align 8, !tbaa !17
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 48
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1669, ptr noundef nonnull @.str.13) #20
  %88 = load ptr, ptr %4, align 8, !tbaa !17
  %89 = load i64, ptr %88, align 8
  br label %90

90:                                               ; preds = %81, %87
  %91 = phi i64 [ %84, %81 ], [ %89, %87 ]
  %92 = phi ptr [ %83, %81 ], [ %88, %87 ]
  %93 = and i64 %91, 65535
  %94 = icmp eq i64 %93, 49
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1670, ptr noundef nonnull @.str.13) #20
  %96 = load ptr, ptr %4, align 8, !tbaa !17
  br label %97

97:                                               ; preds = %90, %95
  %98 = phi ptr [ %92, %90 ], [ %96, %95 ]
  %99 = call fastcc zeroext i8 @may_be_nonaddressable_p(ptr noundef %98) #21, !range !39
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !17
  %103 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %102) #20
  store ptr %103, ptr %4, align 8, !tbaa !17
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 121
  br i1 %106, label %107, label %124

107:                                              ; preds = %101, %107
  %108 = phi ptr [ %110, %107 ], [ %103, %101 ]
  %109 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !17
  %111 = call fastcc zeroext i8 @handled_component_p(ptr noundef %110) #21, !range !39
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %107, !llvm.loop !224

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %115 = load i64, ptr %110, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 47
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !15
  %121 = call ptr @gimple_fold_indirect_ref(ptr noundef %120) #20
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store ptr %121, ptr %114, align 8, !tbaa !17
  br label %124

124:                                              ; preds = %68, %113, %123, %118, %101
  %125 = phi ptr [ %65, %68 ], [ %82, %101 ], [ %82, %118 ], [ %82, %123 ], [ %82, %113 ]
  %126 = load ptr, ptr %4, align 8, !tbaa !17
  %127 = call fastcc ptr @alloc_iv(ptr noundef %126, ptr noundef %125) #21
  %128 = call fastcc ptr @record_use(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %127, ptr noundef %1, i32 noundef 1) #21
  br label %131

129:                                              ; preds = %64, %47, %31, %97, %70, %77, %11, %3
  %130 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @idx_record_use, ptr noundef %0) #20
  br label %131

131:                                              ; preds = %129, %124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #21
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #21
  store i8 0, ptr %0, align 8, !tbaa !225
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !225
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !227
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #21
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !228
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !229
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #21
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !229
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !225
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !231
  store ptr %7, ptr %2, align 8, !tbaa !230
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !233
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !228
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !227
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !233
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !225
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @extract_cond_operands(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !109
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %1) #21
  %11 = tail call fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %1) #21
  br label %15

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %1) #21
  %14 = tail call fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %1) #21
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %11, %9 ], [ %14, %12 ]
  %17 = phi ptr [ %10, %9 ], [ %13, %12 ]
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !17
  store ptr %18, ptr @extract_cond_operands.zero, align 8, !tbaa !17
  store ptr %18, ptr getelementptr inbounds (%struct.iv, ptr @extract_cond_operands.const_iv, i64 0, i32 2), align 8, !tbaa !16
  %19 = load ptr, ptr %17, align 8, !tbaa !17
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %19) #21
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ @extract_cond_operands.const_iv, %15 ]
  %27 = load ptr, ptr %16, align 8, !tbaa !17
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %27) #21
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ @extract_cond_operands.const_iv, %25 ]
  %35 = icmp ne ptr %26, null
  %36 = icmp ne ptr %34, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.iv, ptr %26, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = tail call i32 @integer_zerop(ptr noundef %40) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi ptr [ %17, %43 ], [ %16, %38 ]
  %46 = phi ptr [ %34, %43 ], [ %26, %38 ]
  %47 = phi ptr [ %26, %43 ], [ %34, %38 ]
  %48 = phi ptr [ %16, %43 ], [ %17, %38 ]
  %49 = getelementptr inbounds %struct.iv, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !16
  %51 = tail call i32 @integer_zerop(ptr noundef %50) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.iv, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !16
  %56 = tail call i32 @integer_zerop(ptr noundef %55) #20
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %44, %53, %33
  %60 = phi ptr [ %16, %33 ], [ %45, %53 ], [ %45, %44 ]
  %61 = phi ptr [ %26, %33 ], [ %46, %53 ], [ %46, %44 ]
  %62 = phi ptr [ %34, %33 ], [ %47, %53 ], [ %47, %44 ]
  %63 = phi ptr [ %17, %33 ], [ %48, %53 ], [ %48, %44 ]
  %64 = phi i8 [ 0, %33 ], [ %58, %53 ], [ 0, %44 ]
  %65 = icmp eq ptr %2, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store ptr %63, ptr %2, align 8, !tbaa !17
  br label %67

67:                                               ; preds = %66, %59
  %68 = icmp eq ptr %4, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  store ptr %61, ptr %4, align 8, !tbaa !17
  br label %70

70:                                               ; preds = %69, %67
  %71 = icmp eq ptr %3, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  store ptr %60, ptr %3, align 8, !tbaa !17
  br label %73

73:                                               ; preds = %72, %70
  %74 = icmp eq ptr %5, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  store ptr %62, ptr %5, align 8, !tbaa !17
  br label %76

76:                                               ; preds = %75, %73
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !39
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !109
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1446, ptr noundef nonnull @.str.13) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !39
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_mem_ref_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @idx_find_step(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %2, align 8, !tbaa !220
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %31 [
    i16 49, label %79
    i16 48, label %79
    i16 41, label %10
    i16 45, label %13
    i16 46, label %13
  ]

10:                                               ; preds = %3
  %11 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %0) #20
  %12 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %11) #21, !range !39
  br label %79

13:                                               ; preds = %3, %3
  %14 = and i64 %8, 65535
  %15 = icmp eq i64 %14, 46
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %20) #21, !range !39
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %16, %13
  %24 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #20
  %25 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #20
  %26 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %24) #21, !range !39
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %23
  %29 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %25) #21, !range !39
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %79, label %31

31:                                               ; preds = %3, %28
  %32 = load ptr, ptr %1, align 8, !tbaa !17
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %79

36:                                               ; preds = %31
  %37 = load ptr, ptr %2, align 8, !tbaa !220
  %38 = tail call fastcc ptr @get_iv(ptr noundef %37, ptr noundef nonnull %32) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !14
  store ptr %41, ptr %1, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.iv, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = tail call i32 @integer_zerop(ptr noundef %43) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load i64, ptr %0, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -45
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #20
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %60, label %79

57:                                               ; preds = %46
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %59 = tail call ptr @build_int_cst(ptr noundef %58, i64 noundef 1) #20
  br label %60

60:                                               ; preds = %52, %57
  %61 = phi ptr [ %53, %52 ], [ %59, %57 ]
  %62 = load ptr, ptr %38, align 8, !tbaa !14
  store ptr %62, ptr %4, align 8, !tbaa !17
  %63 = load ptr, ptr %42, align 8, !tbaa !16
  store ptr %63, ptr %5, align 8, !tbaa !17
  %64 = load ptr, ptr %2, align 8, !tbaa !220
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %67 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %2, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !222
  %69 = call zeroext i8 @convert_affine_scev(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %68, i8 noundef zeroext 0) #20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %60
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %73 = load ptr, ptr %5, align 8, !tbaa !17
  %74 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %72, ptr noundef %61, ptr noundef %73) #20
  %75 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %76 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %2, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !223
  %78 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %75, ptr noundef %77, ptr noundef %74) #20
  store ptr %78, ptr %76, align 8, !tbaa !223
  br label %79

79:                                               ; preds = %60, %52, %40, %36, %31, %23, %28, %16, %3, %3, %71, %10
  %80 = phi i8 [ %12, %10 ], [ 1, %71 ], [ 0, %3 ], [ 0, %3 ], [ 0, %16 ], [ 0, %28 ], [ 0, %23 ], [ 1, %31 ], [ 0, %36 ], [ 1, %40 ], [ 0, %52 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @may_be_nonaddressable_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %13 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %25 [
    i16 113, label %26
    i16 41, label %6
    i16 118, label %16
    i16 45, label %13
    i16 46, label %13
    i16 116, label %26
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2, %2, %21, %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  br label %2

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call zeroext i8 @is_gimple_reg(ptr noundef %18) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !15
  %23 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %22) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %13

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %16, %21, %6, %2, %2, %25
  %27 = phi i8 [ 0, %25 ], [ 1, %2 ], [ 1, %2 ], [ 1, %6 ], [ 1, %21 ], [ 1, %16 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @idx_record_use(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !17
  %5 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %4) #21
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -45
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #20
  %13 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %12) #21
  %14 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #20
  %15 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %14) #21
  br label %16

16:                                               ; preds = %3, %11
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !109
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @convert_affine_scev(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_addressable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !234
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !230
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !231
  store ptr %11, ptr %5, align 8, !tbaa !230
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !225
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !39
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !39
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_standard_iv_candidates(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @add_standard_iv_candidates_for_size(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_old_ivs_candidates(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #21
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1, %24
  %9 = load i32, ptr %2, align 4, !tbaa !38
  %10 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %9) #21
  %11 = getelementptr inbounds %struct.version_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.iv, ptr %12, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.iv, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = tail call i32 @integer_zerop(ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @add_old_iv_candidates(ptr noundef %0, ptr noundef nonnull %12) #21
  br label %24

24:                                               ; preds = %8, %14, %18, %23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %8, !llvm.loop !235

27:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_derived_ivs_candidates(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %1, %16
  %5 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %6 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  tail call fastcc void @add_iv_value_candidates(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6) #21
  br label %16

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2417, ptr noundef nonnull @.str.13) #20
  br label %16

16:                                               ; preds = %12, %15, %4
  %17 = add nuw i32 %5, 1
  %18 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %4, label %20, !llvm.loop !236

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_autoinc_for_original_candidates(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %52, label %4

4:                                                ; preds = %1, %48
  %5 = phi i32 [ %49, %48 ], [ 0, %1 ]
  %6 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.iv_cand, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !36
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %48

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.iv_cand, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !237
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #21
  br label %17

17:                                               ; preds = %13, %37
  %18 = phi i32 [ 0, %13 ], [ %39, %37 ]
  %19 = phi ptr [ null, %13 ], [ %38, %37 ]
  %20 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %18) #21
  %21 = getelementptr inbounds %struct.iv_use, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = tail call fastcc i32 @gimple_uid(ptr noundef %22) #21
  %24 = tail call fastcc ptr @gimple_bb(ptr noundef %22) #21
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = tail call fastcc i32 @gimple_uid(ptr noundef %15) #21
  %28 = icmp ugt i32 %23, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = icmp eq ptr %19, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.iv_use, ptr %19, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = tail call fastcc i32 @gimple_uid(ptr noundef %33) #21
  %35 = icmp ugt i32 %23, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %29
  br label %37

37:                                               ; preds = %31, %36, %17, %26
  %38 = phi ptr [ %19, %26 ], [ %19, %17 ], [ %20, %36 ], [ %19, %31 ]
  %39 = add nuw i32 %18, 1
  %40 = icmp eq i32 %39, %11
  br i1 %40, label %41, label %17, !llvm.loop !238

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = tail call fastcc zeroext i8 @autoinc_possible_for_pair(ptr noundef %0, ptr noundef nonnull %38, ptr noundef nonnull %6) #21, !range !39
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.iv_cand, ptr %6, i64 0, i32 9
  store ptr %38, ptr %47, align 8, !tbaa !37
  br label %48

48:                                               ; preds = %10, %41, %43, %4, %46
  %49 = add nuw i32 %5, 1
  %50 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %4, label %52, !llvm.loop !239

52:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_important_candidates(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  store i8 1, ptr %5, align 4, !tbaa !136
  br label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %6, %17
  %9 = phi i32 [ 0, %6 ], [ %18, %17 ]
  %10 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %9) #21
  %11 = getelementptr inbounds %struct.iv_cand, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !80
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %9) #20
  br label %17

17:                                               ; preds = %14, %8
  %18 = add nuw i32 %9, 1
  %19 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %8, label %21, !llvm.loop !240

21:                                               ; preds = %17
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 60, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !101
  %25 = icmp ule i32 %19, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  store i8 %26, ptr %27, align 4, !tbaa !136
  br i1 %25, label %33, label %28

28:                                               ; preds = %21
  %29 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %44

33:                                               ; preds = %4, %21
  %34 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %33, %36
  %37 = phi i32 [ %41, %36 ], [ 0, %33 ]
  %38 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %37) #21
  %39 = getelementptr inbounds %struct.iv_use, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  tail call void @bitmap_obstack_free(ptr noundef %40) #20
  store ptr null, ptr %39, align 8, !tbaa !26
  %41 = add nuw i32 %37, 1
  %42 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %36, label %54, !llvm.loop !241

44:                                               ; preds = %31, %44
  %45 = phi i32 [ 0, %31 ], [ %51, %44 ]
  %46 = tail call fastcc ptr @iv_use(ptr noundef nonnull %0, i32 noundef %45) #21
  %47 = getelementptr inbounds %struct.iv_use, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = load ptr, ptr %32, align 8, !tbaa !80
  %50 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %48, ptr noundef %49) #20
  %51 = add nuw i32 %45, 1
  %52 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %44, label %54, !llvm.loop !242

54:                                               ; preds = %44, %36, %28, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_standard_iv_candidates_for_size(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !243
  %3 = tail call ptr %2(i32 noundef 32, i32 noundef 1) #20
  %4 = tail call ptr @build_int_cst(ptr noundef %3, i64 noundef 0) #20
  %5 = tail call ptr @build_int_cst(ptr noundef %3, i64 noundef 1) #20
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_candidate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !95
  %7 = tail call ptr @ip_normal_pos(ptr noundef %6) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef null) #21
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %0, align 8, !tbaa !95
  %13 = tail call ptr @ip_end_pos(ptr noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !95
  %17 = tail call fastcc zeroext i8 @allow_ip_end_pos_p(ptr noundef %16) #21, !range !39
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 1, ptr noundef %4, ptr noundef null) #21
  br label %21

21:                                               ; preds = %19, %15, %11
  %22 = icmp eq ptr %4, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.iv_use, ptr %4, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call fastcc void @add_autoinc_candidates(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %4) #21
  br label %28

28:                                               ; preds = %27, %23, %21
  ret void
}

; Function Attrs: optsize
declare ptr @ip_normal_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_candidate_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  store ptr %2, ptr %8, align 8, !tbaa !17
  %9 = icmp eq ptr %1, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = tail call fastcc ptr @generic_type_for(ptr noundef %12) #21
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef nonnull %1) #20
  %17 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %2) #20
  store ptr %17, ptr %8, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %10, %15, %7
  %19 = phi ptr [ %17, %15 ], [ %2, %10 ], [ %2, %7 ]
  %20 = phi ptr [ %16, %15 ], [ %1, %10 ], [ null, %7 ]
  %21 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %64, label %23

23:                                               ; preds = %18
  %24 = and i32 %4, -2
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %20, null
  %27 = icmp ne ptr %19, null
  %28 = select i1 %26, i1 true, i1 %27
  br label %29

29:                                               ; preds = %23, %60
  %30 = phi i32 [ 0, %23 ], [ %61, %60 ]
  %31 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %30) #21
  %32 = getelementptr inbounds %struct.iv_cand, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !36
  %34 = icmp eq i32 %33, %4
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.iv_cand, ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !237
  %38 = icmp eq ptr %37, %6
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  br i1 %25, label %40, label %44

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.iv_cand, ptr %31, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !37
  %43 = icmp eq ptr %42, %5
  br i1 %43, label %44, label %60

44:                                               ; preds = %39, %40
  %45 = getelementptr inbounds %struct.iv_cand, ptr %31, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !31
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br i1 %28, label %60, label %64

49:                                               ; preds = %44
  br i1 %28, label %50, label %60

50:                                               ; preds = %49
  %51 = load ptr, ptr %46, align 8, !tbaa !14
  %52 = tail call i32 @operand_equal_p(ptr noundef %20, ptr noundef %51, i32 noundef 0) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %45, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct.iv, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  %58 = tail call i32 @operand_equal_p(ptr noundef %19, ptr noundef %57, i32 noundef 0) #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50, %54, %49, %48, %35, %40, %29
  %61 = add nuw i32 %30, 1
  %62 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %29, label %64, !llvm.loop !251

64:                                               ; preds = %60, %48, %54, %18
  %65 = phi i32 [ 0, %18 ], [ %30, %54 ], [ %30, %48 ], [ %61, %60 ]
  %66 = phi ptr [ null, %18 ], [ %31, %54 ], [ %31, %48 ], [ %31, %60 ]
  %67 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #20
  store i32 %65, ptr %70, align 8, !tbaa !33
  %71 = icmp ne ptr %20, null
  %72 = icmp ne ptr %19, null
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @alloc_iv(ptr noundef %20, ptr noundef %19) #21
  %76 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 6
  store ptr %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 2
  store i32 %4, ptr %77, align 8, !tbaa !36
  %78 = icmp eq i32 %4, 4
  %79 = icmp eq ptr %75, null
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %90, label %84

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 6
  store ptr null, ptr %82, align 8
  %83 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 2
  store i32 %4, ptr %83, align 8, !tbaa !36
  br label %90

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  %87 = tail call ptr @create_tmp_var_raw(ptr noundef %86, ptr noundef nonnull @.str.42) #20
  %88 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 4
  store ptr %87, ptr %88, align 8, !tbaa !252
  %89 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 5
  store ptr %87, ptr %89, align 8, !tbaa !253
  br label %90

90:                                               ; preds = %81, %84, %74
  %91 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 1
  store i8 %3, ptr %91, align 4, !tbaa !34
  %92 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 3
  store ptr %6, ptr %92, align 8, !tbaa !237
  %93 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_iv_cand_p_heap_safe_push(ptr noundef nonnull %93, ptr noundef nonnull %70) #21
  %94 = icmp eq ptr %19, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %19, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 23
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !17
  %100 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 10
  %101 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @find_depends, ptr noundef nonnull %100, ptr noundef null, ptr noundef null) #20
  br label %102

102:                                              ; preds = %99, %95, %90
  %103 = and i32 %4, -2
  %104 = icmp eq i32 %103, 2
  %105 = select i1 %104, ptr %5, ptr null
  %106 = getelementptr inbounds %struct.iv_cand, ptr %70, i64 0, i32 9
  store ptr %105, ptr %106, align 8
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @dump_cand(ptr noundef nonnull %107, ptr noundef nonnull %70) #21
  br label %114

114:                                              ; preds = %102, %109, %113, %64
  %115 = phi ptr [ %70, %113 ], [ %70, %109 ], [ %70, %102 ], [ %66, %64 ]
  %116 = icmp eq i8 %3, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.iv_cand, ptr %115, i64 0, i32 1
  %119 = load i8, ptr %118, align 4, !tbaa !34
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  store i8 1, ptr %118, align 4, !tbaa !34
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %115, align 8, !tbaa !33
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %122, ptr noundef nonnull @.str.43, i32 noundef %129) #21
  br label %131

131:                                              ; preds = %121, %124, %128, %117, %114
  %132 = icmp eq ptr %5, null
  br i1 %132, label %147, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.iv_use, ptr %5, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !26
  %136 = call zeroext i8 @bitmap_set_bit(ptr noundef %135, i32 noundef %65) #20
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %133
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %115, align 8, !tbaa !33
  %145 = load i32, ptr %5, align 8, !tbaa !20
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %137, ptr noundef nonnull @.str.44, i32 noundef %144, i32 noundef %145) #21
  br label %147

147:                                              ; preds = %133, %139, %143, %131
  ret ptr %115
}

; Function Attrs: optsize
declare ptr @ip_end_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @allow_ip_end_pos_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @ip_normal_pos(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ip_end_pos(ptr noundef %0) #20
  %6 = tail call zeroext i8 @empty_block_p(ptr noundef %5) #20
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_autoinc_candidates(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !174
  %9 = load ptr, ptr %0, align 8, !tbaa !95
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !254
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %13, ptr noundef nonnull %6) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !tbaa !23
  %18 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %17) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %1) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = tail call i64 @int_cst_value(ptr noundef %1) #20
  %25 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #20
  br label %35

35:                                               ; preds = %33, %23, %3, %11, %16, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @generic_type_for(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 10, label %7
    i16 12, label %7
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 2097152
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1, %1
  %8 = tail call ptr @unsigned_type_for(ptr noundef nonnull %0) #20
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %0, %4 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @n_iv_cands(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call fastcc i32 @VEC_iv_cand_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_cand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = tail call fastcc ptr @VEC_iv_cand_p_base_index(ptr noundef %4, i32 noundef %1) #21
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_cand_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_iv_cand_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  tail call fastcc void @VEC_iv_cand_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @find_depends(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load ptr, ptr @fd_ivopts_data, align 8, !tbaa !17
  %10 = tail call fastcc ptr @name_info(ptr noundef %9, ptr noundef nonnull %4) #21
  %11 = getelementptr inbounds %struct.version_info, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !130
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.version_info, ptr %10, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !132
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %22, ptr %2, align 8, !tbaa !17
  %23 = load i32, ptr %11, align 4, !tbaa !130
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %23, %21 ], [ %12, %18 ]
  %26 = phi ptr [ %22, %21 ], [ %19, %18 ]
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %26, i32 noundef %25) #20
  br label %28

28:                                               ; preds = %8, %14, %3, %24
  ret ptr null
}

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_cand_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !255
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_iv_cand_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_cand_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_iv_cand_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_iv_cand_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !255
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !255
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_cand_p_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !257
  %6 = load i32, ptr %0, align 8, !tbaa !255
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cst_and_fits_in_hwi(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_old_iv_candidates(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #21
  %6 = load ptr, ptr %1, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %13 [
    i16 10, label %11
    i16 12, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 0) #20
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @build_int_cst(ptr noundef nonnull %8, i64 noundef 0) #20
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !16
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %16, ptr noundef %17, i8 noundef zeroext 1, ptr noundef null) #21
  %18 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #21, !range !109
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load ptr, ptr %0, align 8, !tbaa !95
  %26 = tail call ptr @loop_latch_edge(ptr noundef %25) #20
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !171
  %29 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %21, i32 noundef %28) #21
  %30 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %29) #21
  %31 = load ptr, ptr %1, align 8, !tbaa !14
  %32 = load ptr, ptr %4, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %31, ptr noundef %32, i8 noundef zeroext 1, i32 noundef 4, ptr noundef null, ptr noundef %34) #21
  %36 = load ptr, ptr %18, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.iv_cand, ptr %35, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !252
  %38 = getelementptr inbounds %struct.iv_cand, ptr %35, i64 0, i32 5
  store ptr %30, ptr %38, align 8, !tbaa !253
  br label %39

39:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_iv_value_candidates(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 0, ptr noundef %2) #21
  %8 = load ptr, ptr %1, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %15 [
    i16 10, label %13
    i16 12, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi ptr [ %14, %13 ], [ %10, %3 ]
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 0) #20
  %18 = load ptr, ptr %6, align 8, !tbaa !16
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %17, ptr noundef %18, i8 noundef zeroext 1, ptr noundef %2) #21
  %19 = load ptr, ptr %1, align 8, !tbaa !14
  %20 = call fastcc ptr @strip_offset(ptr noundef %19, ptr noundef nonnull %4) #21
  %21 = load i64, ptr %4, align 8, !tbaa !64
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load ptr, ptr %1, align 8, !tbaa !14
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %15
  %27 = load ptr, ptr %6, align 8, !tbaa !16
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %20, ptr noundef %27, i8 noundef zeroext 0, ptr noundef %2) #21
  br label %28

28:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @strip_offset(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @strip_offset_1(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @strip_offset_1(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %9 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  store i64 0, ptr %3, align 8, !tbaa !64
  %15 = trunc i64 %12 to i16
  switch i16 %15, label %160 [
    i16 23, label %16
    i16 66, label %25
    i16 63, label %25
    i16 64, label %25
    i16 65, label %57
    i16 45, label %79
    i16 46, label %79
    i16 41, label %103
    i16 121, label %118
    i16 47, label %130
  ]

16:                                               ; preds = %4
  %17 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef nonnull %9) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %160, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @integer_zerop(ptr noundef nonnull %9) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %160

22:                                               ; preds = %19
  %23 = tail call i64 @int_cst_value(ptr noundef nonnull %9) #20
  store i64 %23, ptr %3, align 8, !tbaa !64
  %24 = tail call ptr @build_int_cst(ptr noundef %8, i64 noundef 0) #20
  br label %160

25:                                               ; preds = %4, %4, %4
  %26 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = call fastcc ptr @strip_offset_1(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5) #21
  %31 = call fastcc ptr @strip_offset_1(ptr noundef %29, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %6) #21
  %32 = icmp eq i32 %14, 64
  %33 = load i64, ptr %5, align 8, !tbaa !64
  %34 = load i64, ptr %6, align 8, !tbaa !64
  %35 = sub i64 0, %34
  %36 = select i1 %32, i64 %35, i64 %34
  %37 = add i64 %33, %36
  store i64 %37, ptr %3, align 8, !tbaa !64
  %38 = load ptr, ptr %26, align 8, !tbaa !15
  %39 = icmp eq ptr %30, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load ptr, ptr %28, align 8, !tbaa !15
  %42 = icmp eq ptr %31, %41
  br i1 %42, label %160, label %43

43:                                               ; preds = %40, %25
  %44 = tail call i32 @integer_zerop(ptr noundef %31) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = tail call i32 @integer_zerop(ptr noundef %30) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  br i1 %32, label %50, label %54

50:                                               ; preds = %49
  %51 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %11, ptr noundef %31) #20
  br label %54

52:                                               ; preds = %46
  %53 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %14, ptr noundef %11, ptr noundef %30, ptr noundef %31) #20
  br label %54

54:                                               ; preds = %49, %43, %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ], [ %30, %43 ], [ %31, %49 ]
  %56 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %55) #20
  br label %160

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  %60 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %59) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %160, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !15
  %65 = call fastcc ptr @strip_offset_1(ptr noundef %64, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5) #21
  %66 = load ptr, ptr %63, align 8, !tbaa !15
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %160, label %68

68:                                               ; preds = %62
  %69 = load i64, ptr %5, align 8, !tbaa !64
  %70 = tail call i64 @int_cst_value(ptr noundef %59) #20
  %71 = mul i64 %70, %69
  store i64 %71, ptr %3, align 8, !tbaa !64
  %72 = tail call i32 @integer_zerop(ptr noundef %65) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %11, ptr noundef %65, ptr noundef %59) #20
  br label %76

76:                                               ; preds = %68, %74
  %77 = phi ptr [ %75, %74 ], [ %65, %68 ]
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %77) #20
  br label %160

79:                                               ; preds = %4, %4
  %80 = icmp eq i8 %1, 0
  br i1 %80, label %160, label %81

81:                                               ; preds = %79
  %82 = tail call ptr @array_ref_element_size(ptr noundef nonnull %9) #20
  %83 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %82) #20
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %130, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @int_cst_value(ptr noundef %82) #20
  %87 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %88 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !15
  %90 = call fastcc ptr @strip_offset_1(ptr noundef %89, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %6) #21
  %91 = load i64, ptr %6, align 8, !tbaa !64
  %92 = mul i64 %91, %86
  store i64 %92, ptr %3, align 8, !tbaa !64
  %93 = icmp eq i8 %2, 0
  br i1 %93, label %130, label %94

94:                                               ; preds = %85
  %95 = tail call i32 @integer_zerop(ptr noundef %90) #20
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %87, align 8, !tbaa !15
  %99 = call fastcc ptr @strip_offset_1(ptr noundef %98, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef nonnull %5) #21
  %100 = load i64, ptr %5, align 8, !tbaa !64
  %101 = load i64, ptr %3, align 8, !tbaa !64
  %102 = add i64 %101, %100
  store i64 %102, ptr %3, align 8, !tbaa !64
  br label %160

103:                                              ; preds = %4
  %104 = icmp eq i8 %1, 0
  br i1 %104, label %160, label %105

105:                                              ; preds = %103
  %106 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %9) #20
  %107 = icmp eq i8 %2, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %106) #20
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = call fastcc ptr @strip_offset_1(ptr noundef %113, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef nonnull %5) #21
  %115 = load i64, ptr %5, align 8, !tbaa !64
  %116 = tail call i64 @int_cst_value(ptr noundef %106) #20
  %117 = add i64 %116, %115
  store i64 %117, ptr %3, align 8, !tbaa !64
  br label %160

118:                                              ; preds = %4
  %119 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !15
  %121 = call fastcc ptr @strip_offset_1(ptr noundef %120, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %5) #21
  %122 = load i64, ptr %5, align 8, !tbaa !64
  %123 = load i64, ptr %3, align 8, !tbaa !64
  %124 = add i64 %123, %122
  store i64 %124, ptr %3, align 8, !tbaa !64
  %125 = load ptr, ptr %119, align 8, !tbaa !15
  %126 = icmp eq ptr %121, %125
  br i1 %126, label %160, label %127

127:                                              ; preds = %118
  %128 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %121) #20
  %129 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %128) #20
  br label %160

130:                                              ; preds = %4, %105, %108, %85, %94, %81
  %131 = phi ptr [ null, %108 ], [ null, %105 ], [ %90, %94 ], [ %90, %85 ], [ null, %81 ], [ null, %4 ]
  %132 = phi i8 [ 1, %108 ], [ 1, %105 ], [ 1, %94 ], [ 1, %85 ], [ 1, %81 ], [ 0, %4 ]
  %133 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !15
  %135 = call fastcc ptr @strip_offset_1(ptr noundef %134, i8 noundef zeroext %132, i8 noundef zeroext 0, ptr noundef nonnull %5) #21
  %136 = load i64, ptr %5, align 8, !tbaa !64
  %137 = load i64, ptr %3, align 8, !tbaa !64
  %138 = add i64 %137, %136
  store i64 %138, ptr %3, align 8, !tbaa !64
  %139 = load ptr, ptr %133, align 8, !tbaa !15
  %140 = icmp eq ptr %135, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %130
  %142 = icmp eq ptr %131, null
  br i1 %142, label %160, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !15
  %146 = icmp eq ptr %131, %145
  br i1 %146, label %160, label %147

147:                                              ; preds = %143
  %148 = tail call ptr @copy_node_stat(ptr noundef nonnull %9) #20
  %149 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 3
  store ptr %135, ptr %149, align 8, !tbaa !15
  br label %154

150:                                              ; preds = %130
  %151 = tail call ptr @copy_node_stat(ptr noundef nonnull %9) #20
  %152 = getelementptr inbounds %struct.tree_exp, ptr %151, i64 0, i32 3
  store ptr %135, ptr %152, align 8, !tbaa !15
  %153 = icmp eq ptr %131, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %147, %150
  %155 = phi ptr [ %148, %147 ], [ %151, %150 ]
  %156 = getelementptr inbounds %struct.tree_exp, ptr %155, i64 1
  store ptr %131, ptr %156, align 8, !tbaa !15
  br label %157

157:                                              ; preds = %154, %150
  %158 = phi ptr [ %155, %154 ], [ %151, %150 ]
  %159 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef nonnull %158) #20
  br label %160

160:                                              ; preds = %141, %143, %4, %118, %103, %79, %62, %57, %40, %16, %19, %157, %127, %111, %97, %76, %54, %22
  %161 = phi ptr [ %159, %157 ], [ %129, %127 ], [ %114, %111 ], [ %99, %97 ], [ %78, %76 ], [ %56, %54 ], [ %24, %22 ], [ %0, %19 ], [ %0, %16 ], [ %0, %40 ], [ %0, %57 ], [ %0, %62 ], [ %0, %79 ], [ %0, %103 ], [ %0, %118 ], [ %0, %4 ], [ %0, %143 ], [ %0, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %161
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !15
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @autoinc_possible_for_pair(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %11 = load ptr, ptr %4, align 8, !tbaa !17
  call void @bitmap_obstack_free(ptr noundef %11) #20
  %12 = call fastcc zeroext i8 @infinite_cost_p(i64 %10) #21, !range !39
  %13 = icmp eq i8 %12, 0
  %14 = load i8, ptr %5, align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi i8 [ %17, %9 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_computation_cost(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call fastcc i64 @get_computation_cost_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %8, ptr noundef %5) #21
  ret i64 %9
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @infinite_cost_p(i64 %0) unnamed_addr #9 {
  %2 = and i64 %0, 4294967295
  %3 = icmp eq i64 %2, 10000000
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_computation_cost_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.double_int, align 8
  %12 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.iv, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store i64 0, ptr %8, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  %19 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %20 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %19) #20
  store ptr null, ptr %4, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = icmp eq ptr %22, null
  br i1 %23, label %278, label %24

24:                                               ; preds = %7
  %25 = load ptr, ptr %22, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.iv, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1023
  %33 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1023
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %278, label %37

37:                                               ; preds = %24
  %38 = icmp eq i8 %3, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %12, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.iv, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.iv, ptr %22, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @operand_equal_p(ptr noundef nonnull %42, ptr noundef nonnull %46, i32 noundef 0) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %278, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %30, align 4
  %53 = load i32, ptr %33, align 4
  %54 = and i32 %52, 1023
  %55 = and i32 %53, 1023
  br label %56

56:                                               ; preds = %51, %39, %44, %37
  %57 = phi i32 [ %55, %51 ], [ %35, %39 ], [ %35, %44 ], [ %35, %37 ]
  %58 = phi i32 [ %54, %51 ], [ %32, %39 ], [ %32, %44 ], [ %32, %37 ]
  %59 = icmp ult i32 %58, %57
  br i1 %59, label %258, label %60

60:                                               ; preds = %56
  %61 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %27) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call i64 @int_cst_value(ptr noundef %27) #20
  br label %65

65:                                               ; preds = %60, %63
  %66 = phi i64 [ %64, %63 ], [ 0, %60 ]
  %67 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %16, ptr noundef %27, ptr noundef nonnull %11) #21, !range !39
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %278, label %69

69:                                               ; preds = %65
  %70 = load i64, ptr %11, align 8
  %71 = getelementptr inbounds { i64, i64 }, ptr %11, i64 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %70, i64 %72) #20
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %278, label %75

75:                                               ; preds = %69
  %76 = tail call i64 @double_int_to_shwi(i64 %70, i64 %72) #20
  %77 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %25) #20
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !15
  %80 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %77) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = tail call i64 @int_cst_value(ptr noundef nonnull %77) #20
  %84 = mul i64 %76, %83
  %85 = sub i64 0, %84
  store i64 %85, ptr %8, align 8, !tbaa !64
  %86 = tail call ptr @build_int_cst(ptr noundef nonnull %18, i64 noundef 0) #20
  %87 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %86, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  br label %147

88:                                               ; preds = %75
  %89 = icmp eq i64 %76, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %77, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  br label %147

92:                                               ; preds = %88
  br i1 %38, label %122, label %93

93:                                               ; preds = %92
  %94 = load i64, ptr %79, align 8
  %95 = trunc i64 %94 to i16
  switch i16 %95, label %96 [
    i16 10, label %122
    i16 12, label %122
  ]

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !15
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 14
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = tail call i32 @vector_type_mode(ptr noundef nonnull %98) #20
  %104 = load ptr, ptr %97, align 8, !tbaa !15
  %105 = load i64, ptr %104, align 8
  br label %111

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i64 [ %105, %102 ], [ %99, %106 ]
  %113 = phi i32 [ %103, %102 ], [ %110, %106 ]
  %114 = lshr i64 %112, 56
  %115 = trunc i64 %114 to i8
  %116 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %76, i32 noundef %113, i8 noundef zeroext %115) #21, !range !39
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = tail call ptr @build_int_cst(ptr noundef nonnull %79, i64 noundef %76) #20
  %120 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %79, ptr noundef nonnull %77, ptr noundef %119) #20
  %121 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %120, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  br label %147

122:                                              ; preds = %93, %93, %111, %92
  %123 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %4) #21
  %124 = trunc i64 %123 to i32
  %125 = and i64 %123, -4294967296
  %126 = load i64, ptr %79, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 14
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #20
  br label %136

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  br label %136

136:                                              ; preds = %131, %129
  %137 = phi i32 [ %130, %129 ], [ %135, %131 ]
  %138 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %139 = load i8, ptr %138, align 1, !tbaa !96
  %140 = tail call fastcc i32 @add_cost(i32 noundef %137, i8 noundef zeroext %139) #21
  %141 = add i32 %140, %124
  %142 = tail call ptr @build_int_cst(ptr noundef nonnull %18, i64 noundef 0) #20
  %143 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %142, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  %144 = zext i32 %141 to i64
  %145 = or disjoint i64 %125, %144
  %146 = tail call fastcc i64 @add_costs(i64 %145, i64 %143) #21
  br label %147

147:                                              ; preds = %90, %136, %118, %82
  %148 = phi i64 [ %87, %82 ], [ %91, %90 ], [ %146, %136 ], [ %121, %118 ]
  %149 = and i64 %148, -4294967296
  %150 = trunc i64 %148 to i32
  %151 = load ptr, ptr %0, align 8, !tbaa !95
  %152 = tail call fastcc zeroext i8 @stmt_after_increment(ptr noundef %151, ptr noundef nonnull %2, ptr noundef %5) #21, !range !39
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %147
  %155 = mul i64 %76, %66
  %156 = load i64, ptr %8, align 8, !tbaa !64
  %157 = sub i64 %156, %155
  store i64 %157, ptr %8, align 8, !tbaa !64
  br label %158

158:                                              ; preds = %154, %147
  %159 = load i8, ptr %10, align 1, !tbaa !15
  br i1 %38, label %186, label %160

160:                                              ; preds = %158
  %161 = load i8, ptr %9, align 1, !tbaa !15
  %162 = load i64, ptr %8, align 8, !tbaa !64
  %163 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !15
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 14
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = tail call i32 @vector_type_mode(ptr noundef nonnull %164) #20
  %170 = load ptr, ptr %163, align 8, !tbaa !15
  %171 = load i64, ptr %170, align 8
  br label %177

172:                                              ; preds = %160
  %173 = getelementptr inbounds %struct.tree_type, ptr %164, i64 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  br label %177

177:                                              ; preds = %172, %168
  %178 = phi i64 [ %171, %168 ], [ %165, %172 ]
  %179 = phi i32 [ %169, %168 ], [ %176, %172 ]
  %180 = lshr i64 %178, 56
  %181 = trunc i64 %180 to i8
  %182 = tail call fastcc i64 @get_address_cost(i8 noundef zeroext %159, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %76, i32 noundef %179, i8 noundef zeroext %181, i8 noundef zeroext %20, ptr noundef %6) #21
  %183 = tail call fastcc i64 @add_costs(i64 %148, i64 %182) #21
  %184 = trunc i64 %183 to i32
  %185 = and i64 %183, -4294967296
  br label %278

186:                                              ; preds = %158
  %187 = icmp ne i8 %159, 0
  %188 = load i8, ptr %9, align 1
  %189 = icmp ne i8 %188, 0
  %190 = select i1 %187, i1 true, i1 %189
  %191 = load i64, ptr %8, align 8
  %192 = icmp ne i64 %191, 0
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %211, label %194

194:                                              ; preds = %186
  %195 = icmp eq i64 %76, 1
  br i1 %195, label %278, label %196

196:                                              ; preds = %194
  %197 = load i64, ptr %79, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 14
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #20
  br label %207

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %202, %200
  %208 = phi i32 [ %201, %200 ], [ %206, %202 ]
  %209 = tail call i32 @multiply_by_cost(i64 noundef %76, i32 noundef %208, i8 noundef zeroext %20) #21
  %210 = add i32 %209, %150
  br label %278

211:                                              ; preds = %186
  %212 = select i1 %187, i1 true, i1 %192
  %213 = select i1 %189, i1 %212, i1 false
  br i1 %213, label %214, label %228

214:                                              ; preds = %211
  %215 = load i64, ptr %79, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 14
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #20
  br label %225

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = lshr i32 %222, 16
  %224 = and i32 %223, 255
  br label %225

225:                                              ; preds = %220, %218
  %226 = phi i32 [ %219, %218 ], [ %224, %220 ]
  %227 = tail call fastcc i32 @add_cost(i32 noundef %226, i8 noundef zeroext %20) #21
  br label %228

228:                                              ; preds = %225, %211
  %229 = load i64, ptr %79, align 8
  %230 = and i64 %229, 65535
  %231 = icmp eq i64 %230, 14
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #20
  br label %239

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %236 = load i32, ptr %235, align 4
  %237 = lshr i32 %236, 16
  %238 = and i32 %237, 255
  br label %239

239:                                              ; preds = %234, %232
  %240 = phi i32 [ %233, %232 ], [ %238, %234 ]
  %241 = tail call fastcc i32 @add_cost(i32 noundef %240, i8 noundef zeroext %20) #21
  %242 = tail call i64 @llvm.abs.i64(i64 %76, i1 true)
  %243 = icmp eq i64 %242, 1
  br i1 %243, label %258, label %244

244:                                              ; preds = %239
  %245 = load i64, ptr %79, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 14
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #20
  br label %255

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi i32 [ %249, %248 ], [ %254, %250 ]
  %257 = tail call i32 @multiply_by_cost(i64 noundef %242, i32 noundef %256, i8 noundef zeroext %20) #21
  br label %258

258:                                              ; preds = %239, %255, %56
  %259 = icmp eq ptr %6, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %258
  store i8 0, ptr %6, align 1, !tbaa !15
  br label %261

261:                                              ; preds = %260, %258
  %262 = load ptr, ptr %0, align 8, !tbaa !95
  %263 = tail call fastcc ptr @get_computation_at(ptr noundef %262, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %5) #21
  %264 = icmp eq ptr %263, null
  br i1 %264, label %278, label %265

265:                                              ; preds = %261
  br i1 %38, label %272, label %266

266:                                              ; preds = %265
  %267 = getelementptr inbounds %struct.tree_common, ptr %263, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !15
  %269 = getelementptr inbounds %struct.tree_common, ptr %268, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !15
  %271 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %270, ptr noundef nonnull %263) #20
  br label %272

272:                                              ; preds = %266, %265
  %273 = phi ptr [ %271, %266 ], [ %263, %265 ]
  %274 = tail call fastcc i32 @computation_cost(ptr noundef %273, i8 noundef zeroext %20) #21
  %275 = tail call fastcc i64 @new_cost(i32 noundef %274, i32 noundef 0) #21, !range !258
  %276 = trunc i64 %275 to i32
  %277 = and i64 %275, 30064771072
  br label %278

278:                                              ; preds = %272, %261, %194, %207, %69, %65, %48, %24, %7, %177
  %279 = phi i32 [ %184, %177 ], [ 10000000, %7 ], [ 10000000, %24 ], [ 10000000, %48 ], [ 10000000, %65 ], [ 10000000, %69 ], [ %210, %207 ], [ %150, %194 ], [ %276, %272 ], [ 10000000, %261 ]
  %280 = phi i64 [ %185, %177 ], [ 42949672960000000, %7 ], [ 42949672960000000, %24 ], [ 42949672960000000, %48 ], [ 42949672960000000, %65 ], [ 42949672960000000, %69 ], [ %149, %207 ], [ %149, %194 ], [ %277, %272 ], [ 42949672960000000, %261 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %281 = zext i32 %279 to i64
  %282 = or disjoint i64 %280, %281
  ret i64 %282
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @constant_multiple_of(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.double_int, align 8
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1023
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #20
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #20
  %14 = tail call i32 @operand_equal_p(ptr noundef %12, ptr noundef %13, i32 noundef 0) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #21
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  store i64 %18, ptr %2, align 8, !tbaa.struct !259
  %20 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %19, ptr %20, align 8, !tbaa.struct !260
  br label %113

21:                                               ; preds = %3
  %22 = load i64, ptr %12, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %113 [
    i16 65, label %24
    i16 63, label %49
    i16 64, label %49
    i16 23, label %82
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 23
  br i1 %29, label %30, label %113

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %32, ptr noundef %13, ptr noundef nonnull %4) #21, !range !39
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %113, label %35

35:                                               ; preds = %30
  %36 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %26) #20
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  %39 = load i64, ptr %4, align 8
  %40 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = tail call { i64, i64 } @double_int_mul(i64 %39, i64 %41, i64 %37, i64 %38) #20
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  %45 = tail call { i64, i64 } @double_int_sext(i64 %43, i64 %44, i32 noundef %11) #20
  %46 = extractvalue { i64, i64 } %45, 0
  %47 = extractvalue { i64, i64 } %45, 1
  store i64 %46, ptr %2, align 8, !tbaa.struct !259
  %48 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %47, ptr %48, align 8, !tbaa.struct !260
  br label %113

49:                                               ; preds = %21, %21
  %50 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %51, ptr noundef %13, ptr noundef nonnull %5) #21, !range !39
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %113, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %56, ptr noundef %13, ptr noundef nonnull %6) #21, !range !39
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %113, label %59

59:                                               ; preds = %54
  %60 = and i64 %22, 65535
  %61 = icmp eq i64 %60, 64
  %62 = load i64, ptr %6, align 8
  %63 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %64 = load i64, ptr %63, align 8
  br i1 %61, label %65, label %69

65:                                               ; preds = %59
  %66 = tail call { i64, i64 } @double_int_neg(i64 %62, i64 %64) #20
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = extractvalue { i64, i64 } %66, 1
  br label %69

69:                                               ; preds = %59, %65
  %70 = phi i64 [ %68, %65 ], [ %64, %59 ]
  %71 = phi i64 [ %67, %65 ], [ %62, %59 ]
  %72 = load i64, ptr %5, align 8
  %73 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = tail call { i64, i64 } @double_int_add(i64 %72, i64 %74, i64 %71, i64 %70) #20
  %76 = extractvalue { i64, i64 } %75, 0
  %77 = extractvalue { i64, i64 } %75, 1
  %78 = tail call { i64, i64 } @double_int_sext(i64 %76, i64 %77, i32 noundef %11) #20
  %79 = extractvalue { i64, i64 } %78, 0
  %80 = extractvalue { i64, i64 } %78, 1
  store i64 %79, ptr %2, align 8, !tbaa.struct !259
  %81 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %80, ptr %81, align 8, !tbaa.struct !260
  br label %113

82:                                               ; preds = %21
  %83 = load i64, ptr %13, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 23
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %12) #20
  %88 = extractvalue { i64, i64 } %87, 0
  %89 = extractvalue { i64, i64 } %87, 1
  %90 = tail call { i64, i64 } @double_int_sext(i64 %88, i64 %89, i32 noundef %11) #20
  %91 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %13) #20
  %92 = extractvalue { i64, i64 } %91, 0
  %93 = extractvalue { i64, i64 } %91, 1
  %94 = tail call { i64, i64 } @double_int_sext(i64 %92, i64 %93, i32 noundef %11) #20
  %95 = extractvalue { i64, i64 } %94, 0
  %96 = extractvalue { i64, i64 } %94, 1
  %97 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %95, i64 %96) #21, !range !39
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %86
  %100 = extractvalue { i64, i64 } %90, 1
  %101 = extractvalue { i64, i64 } %90, 0
  %102 = call { i64, i64 } @double_int_sdivmod(i64 %101, i64 %100, i64 %95, i64 %96, i32 noundef 69, ptr noundef nonnull %4) #20
  %103 = extractvalue { i64, i64 } %102, 0
  %104 = extractvalue { i64, i64 } %102, 1
  %105 = call { i64, i64 } @double_int_sext(i64 %103, i64 %104, i32 noundef %11) #20
  %106 = extractvalue { i64, i64 } %105, 0
  %107 = extractvalue { i64, i64 } %105, 1
  store i64 %106, ptr %2, align 8, !tbaa.struct !259
  %108 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %107, ptr %108, align 8, !tbaa.struct !260
  %109 = load i64, ptr %4, align 8
  %110 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %111 = load i64, ptr %110, align 8
  %112 = call fastcc zeroext i8 @double_int_zero_p(i64 %109, i64 %111) #21, !range !39
  br label %113

113:                                              ; preds = %21, %86, %82, %49, %54, %30, %24, %99, %69, %35, %16
  %114 = phi i8 [ 1, %16 ], [ %112, %99 ], [ 1, %69 ], [ 1, %35 ], [ 0, %24 ], [ 0, %30 ], [ 0, %54 ], [ 0, %49 ], [ 0, %82 ], [ 0, %86 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret i8 %114
}

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.affine_tree_combination, align 8
  %11 = alloca %struct.affine_tree_combination, align 8
  %12 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #20
  br label %24

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %11) #22
  %26 = call fastcc ptr @strip_offset(ptr noundef nonnull %1, ptr noundef nonnull %8) #21
  %27 = call fastcc ptr @strip_offset(ptr noundef %2, ptr noundef nonnull %9) #21
  %28 = load i64, ptr %8, align 8, !tbaa !64
  %29 = load i64, ptr %9, align 8, !tbaa !64
  %30 = sub i64 %28, %29
  %31 = load i64, ptr %5, align 8, !tbaa !64
  %32 = add i64 %30, %31
  store i64 %32, ptr %5, align 8, !tbaa !64
  %33 = tail call ptr @tree_strip_nop_conversions(ptr noundef %26) #20
  %34 = tail call ptr @tree_strip_nop_conversions(ptr noundef %27) #20
  %35 = load i64, ptr %33, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 121
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = tail call fastcc i64 @ptr_difference_cost(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %34, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) #21
  %40 = trunc i64 %39 to i32
  %41 = and i64 %39, -4294967296
  br label %75

42:                                               ; preds = %24
  store i8 0, ptr %3, align 1, !tbaa !15
  %43 = tail call i32 @operand_equal_p(ptr noundef nonnull %33, ptr noundef %34, i32 noundef 0) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i8 0, ptr %4, align 1, !tbaa !15
  br label %75

46:                                               ; preds = %42
  store i8 1, ptr %4, align 1, !tbaa !15
  %47 = tail call i32 @integer_zerop(ptr noundef %34) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %6) #21
  %51 = trunc i64 %50 to i32
  %52 = and i64 %50, -4294967296
  br label %75

53:                                               ; preds = %46
  %54 = tail call i32 @integer_zerop(ptr noundef nonnull %33) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %34, ptr noundef %6) #21
  %58 = trunc i64 %57 to i32
  %59 = and i64 %57, -4294967296
  %60 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %61 = load i8, ptr %60, align 1, !tbaa !96
  %62 = tail call i32 @multiply_by_cost(i64 noundef -1, i32 noundef %25, i8 noundef zeroext %61) #21
  %63 = add i32 %62, %58
  br label %75

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = tail call ptr @signed_type_for(ptr noundef %66) #20
  call void @tree_to_aff_combination(ptr noundef nonnull %33, ptr noundef %67, ptr noundef nonnull %10) #20
  call void @tree_to_aff_combination(ptr noundef %34, ptr noundef %67, ptr noundef nonnull %11) #20
  %68 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #21
  %69 = extractvalue { i64, i64 } %68, 0
  %70 = extractvalue { i64, i64 } %68, 1
  call void @aff_combination_scale(ptr noundef nonnull %11, i64 %69, i64 %70) #20
  call void @aff_combination_add(ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  %71 = call ptr @aff_combination_to_tree(ptr noundef nonnull %10) #20
  %72 = call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %71, ptr noundef %6) #21
  %73 = trunc i64 %72 to i32
  %74 = and i64 %72, -4294967296
  br label %75

75:                                               ; preds = %64, %56, %49, %45, %38
  %76 = phi i32 [ %40, %38 ], [ 0, %45 ], [ %51, %49 ], [ %63, %56 ], [ %73, %64 ]
  %77 = phi i64 [ %41, %38 ], [ 0, %45 ], [ %52, %49 ], [ %59, %56 ], [ %74, %64 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %78 = zext i32 %76 to i64
  %79 = or disjoint i64 %77, %78
  ret i64 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !17
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !17
  %7 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_depends, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #20
  %8 = load ptr, ptr %4, align 8, !tbaa !17
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %12 = load i8, ptr %11, align 1, !tbaa !96
  %13 = call fastcc i64 @force_expr_to_var_cost(ptr noundef %10, i8 noundef zeroext %12) #21
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @add_cost(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i32], ptr @add_cost.costs, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  tail call void @start_sequence() #20
  %8 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 58) #20
  %9 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 59) #20
  %10 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %8, ptr noundef %9) #20
  %11 = tail call ptr @force_operand(ptr noundef %10, ptr noundef null) #20
  %12 = tail call ptr @get_insns() #20
  tail call void @end_sequence() #20
  %13 = tail call fastcc i32 @seq_cost(ptr noundef %12, i8 noundef zeroext %1) #21
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 1)
  store i32 %14, ptr %4, align 4, !tbaa !38
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %3
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.53, ptr noundef %23, i32 noundef %14) #21
  br label %25

25:                                               ; preds = %7, %17, %21, %2
  %26 = phi i32 [ %5, %2 ], [ %14, %21 ], [ %14, %17 ], [ %14, %7 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @add_costs(i64 %0, i64 %1) unnamed_addr #9 {
  %3 = and i64 %0, -4294967296
  %4 = add i64 %1, %0
  %5 = add i64 %3, %1
  %6 = and i64 %5, -4294967296
  %7 = and i64 %4, 4294967295
  %8 = or disjoint i64 %6, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !36
  switch i32 %5, label %12 [
    i32 1, label %13
    i32 0, label %6
    i32 4, label %8
    i32 3, label %8
    i32 2, label %10
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @stmt_after_ip_normal_pos(ptr noundef %0, ptr noundef %2) #21, !range !39
  br label %13

8:                                                ; preds = %3, %3
  %9 = tail call fastcc zeroext i8 @stmt_after_inc_pos(ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 0) #21, !range !39
  br label %13

10:                                               ; preds = %3
  %11 = tail call fastcc zeroext i8 @stmt_after_inc_pos(ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 1) #21, !range !39
  br label %13

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 622, ptr noundef nonnull @.str.13) #20
  br label %13

13:                                               ; preds = %3, %12, %10, %8, %6
  %14 = phi i8 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ 0, %3 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_address_cost(i8 noundef zeroext %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef writeonly %7) unnamed_addr #0 {
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !51
  %10 = tail call i32 %9(i8 noundef zeroext %5) #20
  %11 = zext i8 %5 to i32
  %12 = mul nuw nsw i32 %11, 87
  %13 = add nsw i32 %12, %4
  %14 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  %15 = tail call fastcc i32 @VEC_address_cost_data_base_length(ptr noundef %14) #21
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = add i32 %13, 1
  tail call fastcc void @VEC_address_cost_data_heap_safe_grow_cleared(i32 noundef %18) #21
  %19 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  br label %20

20:                                               ; preds = %17, %8
  %21 = phi ptr [ %19, %17 ], [ %14, %8 ]
  %22 = tail call fastcc ptr @VEC_address_cost_data_base_index(ptr noundef %21, i32 noundef %13) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %221

24:                                               ; preds = %20
  %25 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !38
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i64 16, i64 32
  %29 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #20
  %30 = tail call ptr @gen_raw_REG(i32 noundef %10, i32 noundef 58) #20
  %31 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef %30, ptr noundef null) #20
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %33

33:                                               ; preds = %24, %38
  %34 = phi i64 [ %28, %24 ], [ %39, %38 ]
  %35 = tail call ptr @gen_int_mode(i64 noundef %34, i32 noundef %10) #20
  store ptr %35, ptr %32, align 8, !tbaa !15
  %36 = tail call i32 @memory_address_addr_space_p(i32 noundef %4, ptr noundef %31, i8 noundef zeroext %5) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = shl i64 %34, 1
  %40 = icmp slt i64 %39, 1048577
  br i1 %40, label %33, label %41, !llvm.loop !261

41:                                               ; preds = %33, %38
  %42 = phi i64 [ %34, %33 ], [ %39, %38 ]
  %43 = icmp eq i64 %42, %28
  %44 = ashr exact i64 %42, 1
  %45 = select i1 %43, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 1
  store i64 %45, ptr %46, align 8, !tbaa !262
  br label %47

47:                                               ; preds = %41, %53
  %48 = phi i64 [ %28, %41 ], [ %54, %53 ]
  %49 = sub nsw i64 0, %48
  %50 = tail call ptr @gen_int_mode(i64 noundef %49, i32 noundef %10) #20
  store ptr %50, ptr %32, align 8, !tbaa !15
  %51 = tail call i32 @memory_address_addr_space_p(i32 noundef %4, ptr noundef nonnull %31, i8 noundef zeroext %5) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = shl i64 %48, 1
  %55 = icmp slt i64 %54, 1048577
  br i1 %55, label %47, label %56, !llvm.loop !264

56:                                               ; preds = %47, %53
  %57 = phi i64 [ %48, %47 ], [ %54, %53 ]
  %58 = icmp eq i64 %57, %28
  %59 = ashr exact i64 %57, 1
  %60 = sub nsw i64 0, %59
  %61 = select i1 %58, i64 0, i64 %60
  store i64 %61, ptr %29, align 8, !tbaa !265
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %56
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr nonnull %62)
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %71 = zext i32 %4 to i64
  %72 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  %74 = load i64, ptr %29, align 8, !tbaa !265
  %75 = trunc i64 %74 to i32
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.55, ptr noundef %73, i32 noundef %75) #21
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %78 = load i64, ptr %46, align 8, !tbaa !262
  %79 = trunc i64 %78 to i32
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.56, ptr noundef %73, i32 noundef %79) #21
  br label %81

81:                                               ; preds = %68, %64, %56
  br label %82

82:                                               ; preds = %81, %86
  %83 = phi i64 [ %87, %86 ], [ 2, %81 ]
  %84 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %83, i32 noundef %4, i8 noundef zeroext %5) #21, !range !39
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = add nuw nsw i64 %83, 1
  %88 = icmp eq i64 %87, 129
  br i1 %88, label %89, label %82, !llvm.loop !266

89:                                               ; preds = %82, %86
  %90 = phi i64 [ 1, %86 ], [ %83, %82 ]
  %91 = tail call ptr @gen_raw_REG(i32 noundef %10, i32 noundef 58) #20
  %92 = tail call ptr @gen_raw_REG(i32 noundef %10, i32 noundef 59) #20
  br label %93

93:                                               ; preds = %89, %133
  %94 = phi i64 [ 0, %89 ], [ %145, %133 ]
  %95 = trunc i64 %94 to i32
  %96 = lshr i32 %95, 1
  %97 = and i32 %96, 1
  %98 = lshr i32 %95, 2
  %99 = and i32 %98, 1
  %100 = lshr i64 %94, 3
  %101 = icmp ult i64 %94, 8
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = tail call ptr @gen_int_mode(i64 noundef %90, i32 noundef %10) #20
  %104 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %10, ptr noundef %91, ptr noundef %103) #20
  br label %105

105:                                              ; preds = %102, %93
  %106 = phi ptr [ %104, %102 ], [ %91, %93 ]
  %107 = icmp eq i32 %97, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef %106, ptr noundef %92) #20
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi ptr [ %109, %108 ], [ %106, %105 ]
  %112 = and i64 %94, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %110
  %115 = tail call ptr @ggc_alloc_string(ptr noundef nonnull @.str.17, i32 noundef -1) #20
  %116 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %10, ptr noundef %115) #20
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %117, align 8, !tbaa !15
  %118 = icmp eq i32 %99, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = tail call ptr @gen_int_mode(i64 noundef %45, i32 noundef %10) #20
  %121 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef nonnull %116, ptr noundef %120) #20
  %122 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %10, ptr noundef %121) #20
  br label %127

123:                                              ; preds = %110
  %124 = icmp eq i32 %99, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %123
  %126 = tail call ptr @gen_int_mode(i64 noundef %45, i32 noundef %10) #20
  br label %127

127:                                              ; preds = %125, %119
  %128 = phi ptr [ %122, %119 ], [ %126, %125 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %114, %127
  %131 = phi ptr [ %128, %127 ], [ %116, %114 ]
  %132 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef %111, ptr noundef nonnull %131) #20
  br label %133

133:                                              ; preds = %123, %130, %127
  %134 = phi ptr [ %132, %130 ], [ %111, %127 ], [ %111, %123 ]
  tail call void @start_sequence() #20
  %135 = load i32, ptr @cse_not_expected, align 4, !tbaa !38
  store i32 1, ptr @cse_not_expected, align 4, !tbaa !38
  %136 = tail call ptr @memory_address_addr_space(i32 noundef %4, ptr noundef %134, i8 noundef zeroext %5) #20
  store i32 %135, ptr @cse_not_expected, align 4, !tbaa !38
  %137 = tail call ptr @get_insns() #20
  tail call void @end_sequence() #20
  %138 = tail call fastcc i32 @seq_cost(ptr noundef %137, i8 noundef zeroext %6) #21
  %139 = tail call i32 @address_cost(ptr noundef %136, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #20
  %140 = add i32 %139, %138
  %141 = tail call i32 @llvm.umax.i32(i32 %140, i32 1)
  %142 = zext nneg i32 %97 to i64
  %143 = zext nneg i32 %99 to i64
  %144 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 %112, i64 %142, i64 %143, i64 %100
  store i32 %141, ptr %144, align 4, !tbaa !38
  %145 = add nuw nsw i64 %94, 1
  %146 = icmp eq i64 %145, 16
  br i1 %146, label %147, label %93, !llvm.loop !267

147:                                              ; preds = %133
  %148 = tail call fastcc i32 @add_cost(i32 noundef %10, i8 noundef zeroext %6) #21
  %149 = add i32 %148, 1
  br label %150

150:                                              ; preds = %147, %165
  %151 = phi i64 [ 0, %147 ], [ %166, %165 ]
  %152 = lshr i64 %151, 1
  %153 = and i64 %152, 1
  %154 = lshr i64 %151, 2
  %155 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 0, i64 1, i64 %153, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !38
  %157 = and i64 %151, 1
  %158 = icmp eq i64 %157, 0
  %159 = select i1 %158, i32 1, i32 %149
  %160 = add i32 %159, %156
  %161 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 1, i64 %157, i64 %153, i64 %154
  %162 = load i32, ptr %161, align 4, !tbaa !38
  %163 = icmp ult i32 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  store i32 %160, ptr %161, align 4, !tbaa !38
  br label %165

165:                                              ; preds = %150, %164
  %166 = add nuw nsw i64 %151, 1
  %167 = icmp eq i64 %166, 8
  br i1 %167, label %168, label %150, !llvm.loop !268

168:                                              ; preds = %165
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %170 = icmp eq ptr %169, null
  br i1 %170, label %219, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %173 = and i32 %172, 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %219, label %175

175:                                              ; preds = %171
  %176 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 15, i64 1, ptr nonnull %169)
  br label %177

177:                                              ; preds = %175, %207
  %178 = phi i64 [ 0, %175 ], [ %214, %207 ]
  %179 = trunc i64 %178 to i32
  %180 = lshr i32 %179, 1
  %181 = and i32 %180, 1
  %182 = lshr i32 %179, 2
  %183 = and i32 %182, 1
  %184 = lshr i64 %178, 3
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %186 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %185)
  %187 = and i64 %178, 1
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %177
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %191 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %190)
  br label %192

192:                                              ; preds = %189, %177
  %193 = icmp eq i32 %181, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %192
  %195 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %196 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 6, i64 1, ptr %195)
  br label %197

197:                                              ; preds = %194, %192
  %198 = icmp eq i32 %183, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %197
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %201 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 6, i64 1, ptr %200)
  br label %202

202:                                              ; preds = %199, %197
  %203 = icmp ult i64 %178, 8
  br i1 %203, label %207, label %204

204:                                              ; preds = %202
  %205 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %206 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 6, i64 1, ptr %205)
  br label %207

207:                                              ; preds = %204, %202
  %208 = zext nneg i32 %181 to i64
  %209 = zext nneg i32 %183 to i64
  %210 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 %187, i64 %208, i64 %209, i64 %184
  %211 = load i32, ptr %210, align 4, !tbaa !38
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.62, i32 noundef %211) #21
  %214 = add nuw nsw i64 %178, 1
  %215 = icmp eq i64 %214, 16
  br i1 %215, label %216, label %177, !llvm.loop !269

216:                                              ; preds = %207
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %218 = tail call i32 @fputc(i32 10, ptr %217)
  br label %219

219:                                              ; preds = %216, %171, %168
  %220 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  tail call fastcc void @VEC_address_cost_data_base_replace(ptr noundef %220, i32 noundef %13, ptr noundef nonnull %29) #21
  br label %221

221:                                              ; preds = %219, %20
  %222 = phi ptr [ %22, %20 ], [ %29, %219 ]
  %223 = zext i32 %10 to i64
  %224 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !15
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 3
  %228 = add nuw nsw i64 %227, 4294967295
  %229 = and i64 %228, 4294967295
  %230 = shl i64 -2, %229
  %231 = xor i64 %230, -1
  %232 = and i64 %231, %2
  %233 = shl nuw i64 1, %229
  %234 = and i64 %232, %233
  %235 = icmp eq i64 %234, 0
  %236 = or i64 %230, %2
  %237 = select i1 %235, i64 %232, i64 %236
  %238 = icmp eq i64 %3, 1
  %239 = icmp eq i64 %237, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %221
  %241 = load i64, ptr %222, align 8, !tbaa !265
  %242 = icmp sgt i64 %241, %237
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.anon, ptr %222, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !262
  %246 = icmp sle i64 %237, %245
  %247 = zext i1 %246 to i8
  br label %248

248:                                              ; preds = %243, %240, %221
  %249 = phi i8 [ 0, %240 ], [ 0, %221 ], [ %247, %243 ]
  br i1 %238, label %255, label %250

250:                                              ; preds = %248
  %251 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %3, i32 noundef %4, i8 noundef zeroext %5) #21, !range !39
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = tail call i32 @multiply_by_cost(i64 noundef %3, i32 noundef %10, i8 noundef zeroext %6) #21
  br label %255

255:                                              ; preds = %248, %253, %250
  %256 = phi i8 [ 1, %250 ], [ 0, %253 ], [ 0, %248 ]
  %257 = phi i32 [ 0, %250 ], [ %254, %253 ], [ 0, %248 ]
  %258 = or i8 %249, %0
  %259 = icmp ne i8 %258, 0
  %260 = select i1 %239, i1 true, i1 %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = tail call fastcc i32 @add_cost(i32 noundef %10, i8 noundef zeroext %6) #21
  %263 = add i32 %262, %257
  br label %264

264:                                              ; preds = %261, %255
  %265 = phi i32 [ %257, %255 ], [ %263, %261 ]
  %266 = icmp eq ptr %7, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %264
  store i8 0, ptr %7, align 1, !tbaa !15
  br label %268

268:                                              ; preds = %267, %264
  %269 = icmp ne i8 %1, 0
  %270 = icmp ne i8 %0, 0
  %271 = zext i8 %0 to i64
  %272 = zext i8 %1 to i64
  %273 = zext nneg i8 %249 to i64
  %274 = zext nneg i8 %256 to i64
  %275 = getelementptr inbounds %struct.anon, ptr %222, i64 0, i32 2, i64 %271, i64 %272, i64 %273, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !38
  %277 = zext i1 %270 to i32
  %278 = zext i1 %269 to i32
  %279 = add nuw nsw i32 %278, %277
  %280 = zext nneg i8 %249 to i32
  %281 = add nuw nsw i32 %279, %280
  %282 = zext nneg i8 %256 to i32
  %283 = add nuw nsw i32 %281, %282
  %284 = add i32 %276, %265
  %285 = tail call fastcc i64 @new_cost(i32 noundef %284, i32 noundef %283) #21, !range !258
  ret i64 %285
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_computation_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = call fastcc zeroext i8 @get_computation_aff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #21, !range !39
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  call void @unshare_aff_combination(ptr noundef nonnull %5) #20
  %14 = call ptr @aff_combination_to_tree(ptr noundef nonnull %5) #20
  %15 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %14) #20
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi ptr [ %15, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #22
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @new_cost(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext nneg i32 %1 to i64
  %4 = shl nuw nsw i64 %3, 32
  %5 = zext i32 %0 to i64
  %6 = or disjoint i64 %4, %5
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @computation_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 58, ptr %4, align 4, !tbaa !38
  %7 = load ptr, ptr @cfun, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = and i32 %9, -196609
  %12 = or disjoint i32 %11, 65536
  store i32 %12, ptr %8, align 8
  store i8 %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !270
  %13 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @prepare_decl_rtl, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #20
  call void @start_sequence() #20
  %14 = load ptr, ptr %3, align 8, !tbaa !17
  %15 = load i64, ptr %6, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @vector_type_mode(ptr noundef nonnull %6) #20
  br label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = call fastcc ptr @expand_expr(ptr noundef %14, i32 noundef %26) #21
  %28 = call ptr @get_insns() #20
  call void @end_sequence() #20
  call void @default_rtl_profile() #20
  %29 = load ptr, ptr @cfun, align 8, !tbaa !17
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 20
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -196609
  %33 = or disjoint i32 %32, %10
  store i32 %33, ptr %30, align 8
  %34 = call fastcc i32 @seq_cost(ptr noundef %28, i8 noundef zeroext %1) #21
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %59

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = load i64, ptr %6, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @vector_type_mode(ptr noundef nonnull %6) #20
  %46 = load i64, ptr %6, align 8
  br label %52

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i64 [ %46, %44 ], [ %41, %47 ]
  %54 = phi i32 [ %45, %44 ], [ %51, %47 ]
  %55 = lshr i64 %53, 56
  %56 = trunc i64 %55 to i8
  %57 = call i32 @address_cost(ptr noundef %40, i32 noundef %54, i8 noundef zeroext %56, i8 noundef zeroext %1) #20
  %58 = add i32 %57, %34
  br label %59

59:                                               ; preds = %52, %25
  %60 = phi i32 [ %58, %52 ], [ %34, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %60
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %0) unnamed_addr #9 {
  %2 = ashr i64 %0, 63
  %3 = insertvalue { i64, i64 } poison, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #9 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_sdivmod(i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ptr_difference_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.affine_tree_combination, align 8
  %10 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store i64 0, ptr %8, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #22
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 121
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3607, ptr noundef nonnull @.str.13) #20
  br label %15

15:                                               ; preds = %7, %14
  %16 = call zeroext i8 @ptr_difference_const(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %8, align 8, !tbaa !64
  %20 = load i64, ptr %5, align 8, !tbaa !64
  %21 = add i64 %20, %19
  store i64 %21, ptr %5, align 8, !tbaa !64
  store i8 0, ptr %3, align 1, !tbaa !15
  store i8 0, ptr %4, align 1, !tbaa !15
  br label %38

22:                                               ; preds = %15
  %23 = call i32 @integer_zerop(ptr noundef %2) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = call fastcc i64 @split_address_cost(ptr noundef %0, ptr noundef %27, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #21
  br label %38

29:                                               ; preds = %22
  store i8 0, ptr %3, align 1, !tbaa !15
  store i8 1, ptr %4, align 1, !tbaa !15
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = call ptr @signed_type_for(ptr noundef %31) #20
  call void @tree_to_aff_combination(ptr noundef nonnull %1, ptr noundef %32, ptr noundef nonnull %9) #20
  call void @tree_to_aff_combination(ptr noundef %2, ptr noundef %32, ptr noundef nonnull %10) #20
  %33 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #21
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = extractvalue { i64, i64 } %33, 1
  call void @aff_combination_scale(ptr noundef nonnull %10, i64 %34, i64 %35) #20
  call void @aff_combination_add(ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %36 = call ptr @aff_combination_to_tree(ptr noundef nonnull %9) #20
  %37 = call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %36, ptr noundef %6) #21
  br label %38

38:                                               ; preds = %29, %25, %18
  %39 = phi i64 [ 0, %18 ], [ %28, %25 ], [ %37, %29 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret i64 %39
}

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tree_to_aff_combination(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_scale(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @aff_combination_to_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ptr_difference_const(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @split_address_cost(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %1, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  %14 = call ptr @get_inner_reference(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext 0) #20
  %15 = load ptr, ptr %10, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = load i64, ptr %9, align 8, !tbaa !64
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, ptr %14, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %17, %6
  store i8 0, ptr %2, align 1, !tbaa !15
  store i8 1, ptr %3, align 1, !tbaa !15
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !17
  %26 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @find_depends, ptr noundef %5, ptr noundef null, ptr noundef null) #20
  %27 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %28 = load i8, ptr %27, align 1, !tbaa !96
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !38
  %32 = call fastcc i64 @new_cost(i32 noundef %31, i32 noundef 0) #21, !range !258
  br label %47

33:                                               ; preds = %21
  %34 = ashr exact i64 %18, 3
  %35 = load i64, ptr %4, align 8, !tbaa !64
  %36 = add i64 %35, %34
  store i64 %36, ptr %4, align 8, !tbaa !64
  %37 = load i64, ptr %14, align 8
  %38 = and i64 %37, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 33554432
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %33
  store i8 1, ptr %2, align 1, !tbaa !15
  store i8 0, ptr %3, align 1, !tbaa !15
  br label %47

46:                                               ; preds = %40
  store i8 0, ptr %2, align 1, !tbaa !15
  store i8 1, ptr %3, align 1, !tbaa !15
  br label %47

47:                                               ; preds = %46, %45, %25
  %48 = phi i64 [ %32, %25 ], [ 0, %45 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret i64 %48
}

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @force_expr_to_var_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i1, ptr @force_expr_to_var_cost.costs_initialized, align 1
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !17
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #20
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !17
  %8 = tail call ptr @create_tmp_var_raw(ptr noundef %7, ptr noundef nonnull @.str.45) #20
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %9, 67108864
  store i64 %10, ptr %8, align 8
  %11 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %8, ptr noundef null) #21
  tail call void @set_decl_rtl(ptr noundef nonnull %8, ptr noundef %11) #20
  %12 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %6, ptr noundef nonnull %8) #20
  br label %13

13:                                               ; preds = %4, %54
  %14 = phi ptr [ @.str.48, %4 ], [ @.str.47, %54 ]
  %15 = phi i1 [ true, %4 ], [ false, %54 ]
  %16 = phi i64 [ 0, %4 ], [ 1, %54 ]
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !17
  %18 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef 2000) #20
  %19 = trunc i64 %16 to i8
  %20 = tail call fastcc i32 @computation_cost(ptr noundef %18, i8 noundef zeroext %19) #21
  %21 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.integer_cost, i64 0, i64 %16
  store i32 %20, ptr %21, align 4, !tbaa !38
  %22 = tail call fastcc i32 @computation_cost(ptr noundef %12, i8 noundef zeroext %19) #21
  %23 = add i32 %22, 1
  %24 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.symbol_cost, i64 0, i64 %16
  store i32 %23, ptr %24, align 4, !tbaa !38
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %26 = tail call ptr @build_int_cst(ptr noundef %25, i64 noundef 2000) #20
  %27 = tail call ptr @build2_stat(i32 noundef 66, ptr noundef %6, ptr noundef %12, ptr noundef %26) #20
  %28 = tail call fastcc i32 @computation_cost(ptr noundef %27, i8 noundef zeroext %19) #21
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.address_cost, i64 0, i64 %16
  store i32 %29, ptr %30, align 4, !tbaa !38
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %13
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !38
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %31, ptr noundef nonnull @.str.46, ptr noundef nonnull %14) #21
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %40 = load i32, ptr %21, align 4, !tbaa !38
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.49, i32 noundef %40) #21
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %43 = load i32, ptr %24, align 4, !tbaa !38
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.50, i32 noundef %43) #21
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %46 = load i32, ptr %30, align 4, !tbaa !38
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.51, i32 noundef %46) #21
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %49 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %16
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.52, i32 noundef %50) #21
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %13, %33, %37
  br i1 %15, label %13, label %55, !llvm.loop !279

55:                                               ; preds = %54
  store i1 true, ptr @force_expr_to_var_cost.costs_initialized, align 1
  br label %56

56:                                               ; preds = %55, %2
  %57 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #20
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %65 [
    i16 32, label %192
    i16 34, label %192
    i16 36, label %192
    i16 141, label %60
  ]

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !15
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %65 [
    i16 32, label %192
    i16 34, label %192
    i16 36, label %192
  ]

65:                                               ; preds = %60, %56
  %66 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %57) #20
  %67 = icmp eq i8 %66, 0
  %68 = load i64, ptr %57, align 8
  %69 = trunc i64 %68 to i16
  br i1 %67, label %97, label %70

70:                                               ; preds = %65
  switch i16 %69, label %90 [
    i16 23, label %71
    i16 121, label %78
  ]

71:                                               ; preds = %70
  %72 = zext i8 %1 to i64
  %73 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.integer_cost, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !38
  %75 = tail call fastcc i64 @new_cost(i32 noundef %74, i32 noundef 0) #21, !range !258
  %76 = trunc i64 %75 to i32
  %77 = and i64 %75, 30064771072
  br label %192

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %90 [
    i16 32, label %83
    i16 34, label %83
    i16 36, label %83
  ]

83:                                               ; preds = %78, %78, %78
  %84 = zext i8 %1 to i64
  %85 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.symbol_cost, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !38
  %87 = tail call fastcc i64 @new_cost(i32 noundef %86, i32 noundef 0) #21, !range !258
  %88 = trunc i64 %87 to i32
  %89 = and i64 %87, 30064771072
  br label %192

90:                                               ; preds = %78, %70
  %91 = zext i8 %1 to i64
  %92 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.address_cost, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !38
  %94 = tail call fastcc i64 @new_cost(i32 noundef %93, i32 noundef 0) #21, !range !258
  %95 = trunc i64 %94 to i32
  %96 = and i64 %94, 30064771072
  br label %192

97:                                               ; preds = %65
  switch i16 %69, label %123 [
    i16 66, label %98
    i16 63, label %98
    i16 64, label %98
    i16 65, label %98
    i16 79, label %115
  ]

98:                                               ; preds = %97, %97, %97, %97
  %99 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !15
  %101 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !15
  %103 = tail call ptr @tree_strip_nop_conversions(ptr noundef %100) #20
  %104 = tail call ptr @tree_strip_nop_conversions(ptr noundef %102) #20
  %105 = tail call zeroext i8 @is_gimple_val(ptr noundef %103) #20
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %103, i8 noundef zeroext %1) #21
  br label %109

109:                                              ; preds = %98, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %98 ]
  %111 = tail call zeroext i8 @is_gimple_val(ptr noundef %104) #20
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %104, i8 noundef zeroext %1) #21
  br label %130

115:                                              ; preds = %97
  %116 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !15
  %118 = tail call ptr @tree_strip_nop_conversions(ptr noundef %117) #20
  %119 = tail call zeroext i8 @is_gimple_val(ptr noundef %118) #20
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %118, i8 noundef zeroext %1) #21
  br label %130

123:                                              ; preds = %97
  %124 = zext i8 %1 to i64
  %125 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !38
  %127 = tail call fastcc i64 @new_cost(i32 noundef %126, i32 noundef 0) #21, !range !258
  %128 = trunc i64 %127 to i32
  %129 = and i64 %127, 30064771072
  br label %192

130:                                              ; preds = %121, %115, %109, %113
  %131 = phi i64 [ %114, %113 ], [ 0, %109 ], [ 0, %115 ], [ 0, %121 ]
  %132 = phi i64 [ %110, %113 ], [ %110, %109 ], [ 0, %115 ], [ %122, %121 ]
  %133 = phi ptr [ %104, %113 ], [ %104, %109 ], [ null, %115 ], [ null, %121 ]
  %134 = phi ptr [ %103, %113 ], [ %103, %109 ], [ %118, %115 ], [ %118, %121 ]
  %135 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !15
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 14
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = tail call i32 @vector_type_mode(ptr noundef nonnull %136) #20
  br label %147

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = lshr i32 %144, 16
  %146 = and i32 %145, 255
  br label %147

147:                                              ; preds = %142, %140
  %148 = phi i32 [ %141, %140 ], [ %146, %142 ]
  %149 = load i64, ptr %57, align 8
  %150 = trunc i64 %149 to i16
  switch i16 %150, label %178 [
    i16 66, label %151
    i16 63, label %151
    i16 64, label %151
    i16 79, label %151
    i16 65, label %155
  ]

151:                                              ; preds = %147, %147, %147, %147
  %152 = tail call fastcc i32 @add_cost(i32 noundef %148, i8 noundef zeroext %1) #21
  %153 = tail call fastcc i64 @new_cost(i32 noundef %152, i32 noundef 0) #21, !range !258
  %154 = and i64 %153, 30064771072
  br label %179

155:                                              ; preds = %147
  %156 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %134) #20
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = tail call i64 @int_cst_value(ptr noundef %134) #20
  %160 = tail call i32 @multiply_by_cost(i64 noundef %159, i32 noundef %148, i8 noundef zeroext %1) #21
  %161 = tail call fastcc i64 @new_cost(i32 noundef %160, i32 noundef 0) #21, !range !258
  %162 = and i64 %161, 30064771072
  br label %179

163:                                              ; preds = %155
  %164 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %133) #20
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = tail call i64 @int_cst_value(ptr noundef %133) #20
  %168 = tail call i32 @multiply_by_cost(i64 noundef %167, i32 noundef %148, i8 noundef zeroext %1) #21
  %169 = tail call fastcc i64 @new_cost(i32 noundef %168, i32 noundef 0) #21, !range !258
  %170 = and i64 %169, 30064771072
  br label %179

171:                                              ; preds = %163
  %172 = zext i8 %1 to i64
  %173 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !38
  %175 = tail call fastcc i64 @new_cost(i32 noundef %174, i32 noundef 0) #21, !range !258
  %176 = trunc i64 %175 to i32
  %177 = and i64 %175, 30064771072
  br label %192

178:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3515, ptr noundef nonnull @.str.13) #20
  br label %179

179:                                              ; preds = %158, %166, %178, %151
  %180 = phi i64 [ 0, %178 ], [ %161, %158 ], [ %169, %166 ], [ %153, %151 ]
  %181 = phi i64 [ 0, %178 ], [ %162, %158 ], [ %170, %166 ], [ %154, %151 ]
  %182 = and i64 %180, 4294967295
  %183 = or disjoint i64 %181, %182
  %184 = tail call fastcc i64 @add_costs(i64 %183, i64 %132) #21
  %185 = tail call fastcc i64 @add_costs(i64 %184, i64 %131) #21
  %186 = trunc i64 %185 to i32
  %187 = and i64 %185, -4294967296
  %188 = zext i8 %1 to i64
  %189 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !38
  %191 = tail call i32 @llvm.smin.i32(i32 %190, i32 %186)
  br label %192

192:                                              ; preds = %83, %56, %56, %56, %60, %60, %60, %179, %171, %123, %90, %71
  %193 = phi i32 [ %76, %71 ], [ %95, %90 ], [ %88, %83 ], [ %128, %123 ], [ %191, %179 ], [ %176, %171 ], [ 0, %60 ], [ 0, %60 ], [ 0, %60 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ]
  %194 = phi i64 [ %77, %71 ], [ %96, %90 ], [ %89, %83 ], [ %129, %123 ], [ %187, %179 ], [ %177, %171 ], [ 0, %60 ], [ 0, %60 ], [ 0, %60 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ]
  %195 = zext i32 %193 to i64
  %196 = or disjoint i64 %194, %195
  ret i64 %196
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @produce_memory_decl_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load i64, ptr %4, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !51
  %9 = tail call i32 %8(i8 noundef zeroext %7) #20
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 33554432
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %13, %2
  %19 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #20
  %20 = getelementptr inbounds %struct.tree_identifier, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %9, ptr noundef %21) #20
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 67108864
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2661, ptr noundef nonnull @.str.13) #20
  br label %27

27:                                               ; preds = %18, %26
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 255
  %33 = tail call ptr @gen_rtx_MEM(i32 noundef %32, ptr noundef nonnull %22) #20
  tail call void @set_mem_addr_space(ptr noundef %33, i8 noundef zeroext %7) #20
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !280
  tail call void %34(ptr noundef nonnull %0, ptr noundef %33, i32 noundef 1) #20
  br label %43

35:                                               ; preds = %13
  %36 = load i32, ptr %1, align 4, !tbaa !38
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %1, align 4, !tbaa !38
  %38 = tail call ptr @gen_raw_REG(i32 noundef %9, i32 noundef %36) #20
  %39 = load i64, ptr %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 255
  %42 = tail call ptr @gen_rtx_MEM(i32 noundef %41, ptr noundef %38) #20
  tail call void @set_mem_addr_space(ptr noundef %42, i8 noundef zeroext %7) #20
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi ptr [ %33, %27 ], [ %42, %35 ]
  ret ptr %44
}

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_after_ip_normal_pos(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @ip_normal_pos(ptr noundef %0) #20
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 567, ptr noundef nonnull @.str.13) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !254
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %4, %3
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = tail call ptr @last_stmt(ptr noundef %3) #20
  %15 = icmp eq ptr %14, %1
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %11, %7, %13
  %18 = phi i8 [ %16, %13 ], [ 1, %7 ], [ 0, %11 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_after_inc_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_cand, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %8 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %7, ptr noundef %6) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %7, %6
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = icmp eq i8 %2, 0
  %14 = load ptr, ptr %4, align 8, !tbaa !237
  br i1 %13, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gimple_uid(ptr noundef %1) #21
  %17 = tail call fastcc i32 @gimple_uid(ptr noundef %14) #21
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %12
  %20 = tail call fastcc i32 @gimple_uid(ptr noundef %1) #21
  %21 = tail call fastcc i32 @gimple_uid(ptr noundef %14) #21
  %22 = icmp ugt i32 %20, %21
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %15, %10, %3, %19
  %25 = phi i8 [ %23, %19 ], [ 0, %3 ], [ 1, %10 ], [ 1, %15 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_address_cost_data_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !281
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_address_cost_data_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_address_cost_data_base_length(ptr noundef %2) #21
  tail call fastcc void @VEC_address_cost_data_heap_safe_grow(i32 noundef %0) #21
  %4 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !17
  %5 = tail call fastcc ptr @VEC_address_cost_data_base_address(ptr noundef %4) #21
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_address_cost_data_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_address_cost_data_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_address_cost_data_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !281
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_address_cost_data_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !17, !nonnull !110, !noundef !110
  store i32 %0, ptr %9, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_address_cost_data_base_address(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_address_cost_data_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_address_cost_data_base_space(ptr noundef %2, i32 noundef %0) #21, !range !103
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_address_cost_data_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !283
  %7 = load i32, ptr %0, align 8, !tbaa !281
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @get_computation_aff(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.affine_tree_combination, align 8
  %9 = alloca %struct.affine_tree_combination, align 8
  %10 = alloca %struct.double_int, align 8
  %11 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %12 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  store ptr %14, ptr %6, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.iv, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %17 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  store ptr %19, ptr %7, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.iv, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  %26 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1023
  %29 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %72, label %33

33:                                               ; preds = %5
  %34 = tail call fastcc ptr @var_at_stmt(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #21
  %35 = tail call ptr @unsigned_type_for(ptr noundef nonnull %23) #20
  %36 = load i32, ptr %26, align 4
  %37 = and i32 %36, 1023
  %38 = load i32, ptr %29, align 4
  %39 = and i32 %38, 1023
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef %21) #20
  %43 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef nonnull %19) #20
  store ptr %43, ptr %7, align 8, !tbaa !17
  %44 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef %34) #20
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi ptr [ %44, %41 ], [ %34, %33 ]
  %47 = phi ptr [ %42, %41 ], [ %21, %33 ]
  %48 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %16, ptr noundef %47, ptr noundef nonnull %10) #21, !range !39
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %45
  %51 = call fastcc ptr @determine_common_wider_type(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %52 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void @tree_to_aff_combination(ptr noundef %52, ptr noundef %51, ptr noundef %4) #20
  %53 = load ptr, ptr %7, align 8, !tbaa !17
  call void @tree_to_aff_combination(ptr noundef %53, ptr noundef %51, ptr noundef nonnull %8) #20
  call void @tree_to_aff_combination(ptr noundef %46, ptr noundef %35, ptr noundef nonnull %9) #20
  %54 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #21, !range !39
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %11) #22
  %57 = icmp eq ptr %51, %35
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %51, ptr noundef %47) #20
  br label %60

60:                                               ; preds = %56, %58
  %61 = phi ptr [ %59, %58 ], [ %47, %56 ]
  call void @tree_to_aff_combination(ptr noundef %61, ptr noundef %51, ptr noundef nonnull %11) #20
  call void @aff_combination_add(ptr noundef nonnull %8, ptr noundef nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %11) #22
  br label %62

62:                                               ; preds = %60, %50
  %63 = load i64, ptr %10, align 8
  %64 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = call { i64, i64 } @double_int_neg(i64 %63, i64 %65) #20
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = extractvalue { i64, i64 } %66, 1
  call void @aff_combination_scale(ptr noundef nonnull %8, i64 %67, i64 %68) #20
  call void @aff_combination_add(ptr noundef %4, ptr noundef nonnull %8) #20
  %69 = icmp eq ptr %51, %35
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  call void @aff_combination_convert(ptr noundef %4, ptr noundef %35) #20
  br label %71

71:                                               ; preds = %70, %62
  call void @aff_combination_scale(ptr noundef nonnull %9, i64 %63, i64 %65) #20
  call void @aff_combination_add(ptr noundef %4, ptr noundef nonnull %9) #20
  br label %72

72:                                               ; preds = %45, %5, %71
  %73 = phi i8 [ 1, %71 ], [ 0, %5 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i8 %73
}

; Function Attrs: optsize
declare void @unshare_aff_combination(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @var_at_stmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21, !range !39
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @determine_common_wider_type(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %35 [
    i16 116, label %8
    i16 113, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  %16 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %8
  %21 = load ptr, ptr %1, align 8, !tbaa !17
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %35 [
    i16 116, label %24
    i16 113, label %24
  ]

24:                                               ; preds = %20, %20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %14
  %32 = and i32 %31, 1023
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store ptr %10, ptr %0, align 8, !tbaa !17
  store ptr %26, ptr %1, align 8, !tbaa !17
  br label %35

35:                                               ; preds = %20, %24, %2, %8, %34
  %36 = phi ptr [ %12, %34 ], [ %5, %8 ], [ %5, %2 ], [ %5, %24 ], [ %5, %20 ]
  ret ptr %36
}

; Function Attrs: optsize
declare void @aff_combination_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @prepare_decl_rtl(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %76 [
    i16 121, label %7
    i16 141, label %29
    i16 32, label %49
    i16 34, label %49
    i16 36, label %49
  ]

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %4, %3 ]
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %10) #21, !range !39
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !284

13:                                               ; preds = %7
  %14 = load i64, ptr %10, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %76

19:                                               ; preds = %13
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %76

27:                                               ; preds = %23, %19
  %28 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %10, ptr noundef %2) #21
  br label %71

29:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %33, i64 11
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %31, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %76

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 255
  %46 = load i32, ptr %2, align 4, !tbaa !38
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %2, align 4, !tbaa !38
  %48 = tail call ptr @gen_raw_REG(i32 noundef %45, i32 noundef %46) #20
  br label %71

49:                                               ; preds = %3, %3, %3
  store i32 0, ptr %1, align 4, !tbaa !38
  %50 = load i64, ptr %4, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %51, i64 11
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %55, %49
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %4, ptr noundef %2) #21
  br label %71

67:                                               ; preds = %59
  %68 = load i32, ptr %2, align 4, !tbaa !38
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %2, align 4, !tbaa !38
  %70 = tail call ptr @gen_raw_REG(i32 noundef %63, i32 noundef %68) #20
  br label %71

71:                                               ; preds = %65, %67, %41, %27
  %72 = phi ptr [ %4, %65 ], [ %4, %67 ], [ %31, %41 ], [ %10, %27 ]
  %73 = phi ptr [ %66, %65 ], [ %70, %67 ], [ %48, %41 ], [ %28, %27 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %72) #21
  tail call void @set_decl_rtl(ptr noundef nonnull %72, ptr noundef nonnull %73) #20
  br label %76

76:                                               ; preds = %13, %23, %37, %55, %3, %75, %71
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef 0, ptr noundef null) #20
  ret ptr %3
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve() #21
  %2 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !17
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !17
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #20
  store ptr %5, ptr @decl_rtl_to_reset, align 8, !tbaa !17
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !112
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !112
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !285
  %6 = load i32, ptr %0, align 8, !tbaa !112
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_iv_cost(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 7
  store i32 0, ptr %7, align 8, !tbaa !134
  br label %59

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !14
  %10 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %9, ptr noundef null) #21
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #20
  br label %24

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %27 = load i8, ptr %26, align 1, !tbaa !96
  %28 = tail call fastcc i32 @add_cost(i32 noundef %25, i8 noundef zeroext %27) #21
  %29 = sdiv i32 %11, 5
  %30 = add i32 %28, %29
  %31 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !36
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !252
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 12
  %43 = and i32 %42, 1
  %44 = add i32 %43, %30
  br label %55

45:                                               ; preds = %24
  %46 = add i32 %30, 1
  %47 = icmp eq i32 %32, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8, !tbaa !95
  %50 = tail call ptr @ip_end_pos(ptr noundef %49) #20
  %51 = tail call zeroext i8 @empty_block_p(ptr noundef %50) #20
  %52 = icmp eq i8 %51, 0
  %53 = add i32 %30, 2
  %54 = select i1 %52, i32 %46, i32 %53
  br label %55

55:                                               ; preds = %34, %48, %45
  %56 = phi i32 [ %46, %45 ], [ %54, %48 ], [ %44, %34 ]
  %57 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 7
  store i32 %56, ptr %57, align 8, !tbaa !134
  %58 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 8
  store i32 %28, ptr %58, align 4, !tbaa !286
  br label %59

59:                                               ; preds = %55, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_use_cost_map(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %4 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi i32 [ 0, %6 ], [ %37, %31 ]
  %10 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %11 = load i8, ptr %7, align 4, !tbaa !136
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @n_iv_cands(ptr noundef nonnull %0) #21
  br label %31

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.iv_use, ptr %10, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %17, ptr noundef nonnull %2) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %22, %15
  %21 = phi i32 [ 0, %15 ], [ %24, %22 ]
  br label %27

22:                                               ; preds = %15, %22
  %23 = phi i32 [ %24, %22 ], [ 0, %15 ]
  %24 = add i32 %23, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !39
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %20, label %22, !llvm.loop !287

27:                                               ; preds = %27, %20
  %28 = phi i32 [ %30, %27 ], [ 1, %20 ]
  %29 = icmp ult i32 %28, %21
  %30 = shl i32 %28, 1
  br i1 %29, label %27, label %31, !llvm.loop !288

31:                                               ; preds = %27, %13
  %32 = phi i32 [ %14, %13 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.iv_use, ptr %10, i64 0, i32 6
  store i32 %32, ptr %33, align 8, !tbaa !140
  %34 = zext i32 %32 to i64
  %35 = tail call ptr @xcalloc(i64 noundef %34, i64 noundef 32) #20
  %36 = getelementptr inbounds %struct.iv_use, ptr %10, i64 0, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  %37 = add nuw i32 %9, 1
  %38 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %8, label %40, !llvm.loop !289

40:                                               ; preds = %31, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !22
  switch i32 %5, label %12 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @determine_use_iv_cost_generic(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !39
  br label %13

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @determine_use_iv_cost_address(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !39
  br label %13

10:                                               ; preds = %3
  %11 = tail call fastcc zeroext i8 @determine_use_iv_cost_condition(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !39
  br label %13

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4182, ptr noundef nonnull @.str.13) #20
  br label %13

13:                                               ; preds = %12, %10, %8, %6
  %14 = phi i8 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ]
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost_generic(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !237
  %11 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 0, ptr noundef null, ptr noundef null) #21
  br label %20

15:                                               ; preds = %8, %3
  %16 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef nonnull %4, ptr noundef null) #21
  %17 = load ptr, ptr %4, align 8, !tbaa !17
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 %16, ptr noundef %17, ptr noundef null) #21
  %18 = call fastcc zeroext i8 @infinite_cost_p(i64 %16) #21, !range !39
  %19 = xor i8 %18, 1
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i8 [ 1, %14 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost_address(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %6 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %6, 32
  %9 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i8, ptr %5, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !286
  %18 = sub i32 %7, %17
  br label %26

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !36
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, i64 10000000, i64 %8
  %25 = select i1 %23, i32 10000000, i32 %7
  br label %26

26:                                               ; preds = %19, %15, %3
  %27 = phi i64 [ %8, %15 ], [ %8, %3 ], [ %24, %19 ]
  %28 = phi i32 [ %18, %15 ], [ %7, %3 ], [ %25, %19 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !17
  %30 = shl nuw i64 %27, 32
  %31 = zext i32 %28 to i64
  %32 = or disjoint i64 %30, %31
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 %32, ptr noundef %29, ptr noundef null) #21
  %33 = call fastcc zeroext i8 @infinite_cost_p(i64 %32) #21, !range !39
  %34 = xor i8 %33, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost_condition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %10 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 42949672970000000, ptr noundef null, ptr noundef null) #21
  br label %85

14:                                               ; preds = %3
  %15 = call fastcc zeroext i8 @may_eliminate_iv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #21, !range !39
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !tbaa !17
  %19 = call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %6) #21
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, -4294967296
  %22 = sdiv i32 %20, 5
  br label %23

23:                                               ; preds = %14, %17
  %24 = phi i32 [ %22, %17 ], [ 10000000, %14 ]
  %25 = phi i64 [ %21, %17 ], [ 42949672960000000, %14 ]
  %26 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %5) #21, !range !39
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4119, ptr noundef nonnull @.str.13) #20
  br label %31

31:                                               ; preds = %23, %30
  %32 = zext i32 %24 to i64
  %33 = or disjoint i64 %25, %32
  %34 = call fastcc zeroext i8 @infinite_cost_p(i64 %33) #21, !range !39
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load ptr, ptr %9, align 8, !tbaa !17
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = call i32 @integer_zerop(ptr noundef %38) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %8, align 8, !tbaa !17
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !253
  %46 = call i32 @operand_equal_p(ptr noundef %43, ptr noundef %45, i32 noundef 0) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load ptr, ptr %8, align 8, !tbaa !17
  %50 = load ptr, ptr %49, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !252
  %53 = call i32 @operand_equal_p(ptr noundef %50, ptr noundef %52, i32 noundef 0) #20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48, %41
  %56 = add nsw i32 %24, -1
  %57 = zext i32 %56 to i64
  %58 = or disjoint i64 %25, %57
  br label %59

59:                                               ; preds = %55, %48, %36, %31
  %60 = phi i64 [ %58, %55 ], [ %33, %48 ], [ %33, %36 ], [ %33, %31 ]
  %61 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef nonnull %7, ptr noundef null) #21
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !17
  %62 = load ptr, ptr %5, align 8, !tbaa !17
  %63 = call ptr @walk_tree_1(ptr noundef %62, ptr noundef nonnull @find_depends, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #20
  %64 = call fastcc i32 @compare_costs(i64 %60, i64 %61) #21
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load ptr, ptr %6, align 8, !tbaa !17
  store ptr null, ptr %6, align 8, !tbaa !17
  %68 = load ptr, ptr %4, align 8, !tbaa !17
  br label %71

69:                                               ; preds = %59
  %70 = load ptr, ptr %7, align 8, !tbaa !17
  store ptr null, ptr %7, align 8, !tbaa !17
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %68, %66 ], [ null, %69 ]
  %73 = phi i64 [ %60, %66 ], [ %61, %69 ]
  %74 = phi ptr [ %67, %66 ], [ %70, %69 ]
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 %73, ptr noundef %74, ptr noundef %72) #21
  %75 = load ptr, ptr %6, align 8, !tbaa !17
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  call void @bitmap_obstack_free(ptr noundef nonnull %75) #20
  store ptr null, ptr %6, align 8, !tbaa !17
  br label %78

78:                                               ; preds = %77, %71
  %79 = load ptr, ptr %7, align 8, !tbaa !17
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @bitmap_obstack_free(ptr noundef nonnull %79) #20
  br label %82

82:                                               ; preds = %81, %78
  %83 = call fastcc zeroext i8 @infinite_cost_p(i64 %73) #21, !range !39
  %84 = xor i8 %83, 1
  br label %85

85:                                               ; preds = %82, %13
  %86 = phi i8 [ %84, %82 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_use_iv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %3) #21, !range !39
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  br label %75

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %12 = load i8, ptr %11, align 4, !tbaa !136
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = load i32, ptr %2, align 8, !tbaa !33
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cost_pair, ptr %16, i64 %18
  store ptr %2, ptr %19, align 8, !tbaa !142
  %20 = getelementptr inbounds %struct.cost_pair, ptr %16, i64 %18, i32 1
  store i64 %3, ptr %20, align 8, !tbaa.struct !290
  %21 = load ptr, ptr %15, align 8, !tbaa !141
  %22 = load i32, ptr %2, align 8, !tbaa !33
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cost_pair, ptr %21, i64 %23, i32 2
  store ptr %4, ptr %24, align 8, !tbaa !145
  %25 = getelementptr inbounds %struct.cost_pair, ptr %21, i64 %23, i32 3
  store ptr %5, ptr %25, align 8, !tbaa !291
  br label %75

26:                                               ; preds = %10
  %27 = load i32, ptr %2, align 8, !tbaa !33
  %28 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !140
  %30 = add i32 %29, -1
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !141
  %36 = zext i32 %31 to i64
  %37 = zext i32 %29 to i64
  br label %43

38:                                               ; preds = %48, %26
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !141
  br label %51

43:                                               ; preds = %33, %48
  %44 = phi i64 [ %36, %33 ], [ %49, %48 ]
  %45 = getelementptr inbounds %struct.cost_pair, ptr %35, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !142
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp ult i64 %49, %37
  br i1 %50, label %43, label %38, !llvm.loop !292

51:                                               ; preds = %40, %57
  %52 = phi i32 [ 0, %40 ], [ %58, %57 ]
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cost_pair, ptr %42, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !142
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = add nuw i32 %52, 1
  %59 = icmp eq i32 %58, %31
  br i1 %59, label %60, label %51, !llvm.loop !293

60:                                               ; preds = %57, %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2585, ptr noundef nonnull @.str.13) #20
  %61 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !141
  br label %65

63:                                               ; preds = %43
  %64 = trunc i64 %44 to i32
  br label %65

65:                                               ; preds = %51, %63, %60
  %66 = phi ptr [ %62, %60 ], [ %35, %63 ], [ %42, %51 ]
  %67 = phi i32 [ %31, %60 ], [ %64, %63 ], [ %52, %51 ]
  %68 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.cost_pair, ptr %66, i64 %69
  store ptr %2, ptr %70, align 8, !tbaa !142
  %71 = getelementptr inbounds %struct.cost_pair, ptr %66, i64 %69, i32 1
  store i64 %3, ptr %71, align 8, !tbaa.struct !290
  %72 = load ptr, ptr %68, align 8, !tbaa !141
  %73 = getelementptr inbounds %struct.cost_pair, ptr %72, i64 %69, i32 2
  store ptr %4, ptr %73, align 8, !tbaa !145
  %74 = getelementptr inbounds %struct.cost_pair, ptr %72, i64 %69, i32 3
  store ptr %5, ptr %74, align 8, !tbaa !291
  br label %75

75:                                               ; preds = %65, %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @may_eliminate_iv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #22
  %8 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.iv, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %81

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %17) #21
  %19 = tail call ptr @last_stmt(ptr noundef %18) #20
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !23
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #21, !range !109
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %81

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !254
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %27, ptr noundef %18) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !294
  %33 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %32, i32 noundef 0) #21
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !99
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %7, ptr noundef %35) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %31, align 8, !tbaa !294
  %40 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %39, i32 noundef 1) #21
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi ptr [ %40, %38 ], [ %33, %30 ]
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !99
  %45 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %7, ptr noundef %44) #20
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = tail call fastcc ptr @niter_for_exit(ptr noundef nonnull %0, ptr noundef nonnull %42) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %81, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %8, align 8, !tbaa !31
  %52 = tail call fastcc ptr @iv_period(ptr noundef %51) #21
  %53 = load i64, ptr %48, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 23
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %48, ptr noundef %52) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %74

59:                                               ; preds = %50
  %60 = tail call zeroext i8 @loop_only_exit_p(ptr noundef nonnull %7, ptr noundef nonnull %42) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %63 = call zeroext i8 @estimated_loop_iterations(ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef nonnull %6) #20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  %66 = call { i64, i64 } @tree_to_double_int(ptr noundef %52) #20
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = extractvalue { i64, i64 } %66, 1
  %69 = load i64, ptr %6, align 8
  %70 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = call i32 @double_int_ucmp(i64 %69, i64 %71, i64 %67, i64 %68) #20
  %73 = icmp slt i32 %72, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br i1 %73, label %74, label %81

74:                                               ; preds = %65, %56
  %75 = load ptr, ptr %16, align 8, !tbaa !23
  call fastcc void @cand_value_at(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %75, ptr noundef nonnull %48, ptr noundef nonnull %5) #21
  %76 = call ptr @aff_combination_to_tree(ptr noundef nonnull %5) #20
  store ptr %76, ptr %3, align 8, !tbaa !17
  %77 = call zeroext i8 @expression_expensive_p(ptr noundef %76) #20
  %78 = icmp eq i8 %77, 0
  %79 = zext i1 %78 to i8
  br label %81

80:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %81

81:                                               ; preds = %74, %59, %80, %56, %47, %41, %15, %21, %25, %4, %65
  %82 = phi i8 [ 0, %65 ], [ 0, %4 ], [ 0, %25 ], [ 0, %21 ], [ 0, %15 ], [ 0, %41 ], [ 0, %47 ], [ 0, %56 ], [ 0, %80 ], [ 0, %59 ], [ %79, %74 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #22
  ret i8 %82
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @compare_costs(i64 %0, i64 %1) unnamed_addr #9 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = icmp eq i32 %3, %4
  %6 = lshr i64 %1, 32
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %0, 32
  %9 = trunc i64 %8 to i32
  %10 = sub i32 %9, %7
  %11 = sub nsw i32 %3, %4
  %12 = select i1 %5, i32 %10, i32 %11
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @iv_period(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iv, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3979, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call ptr @num_ending_zeros(ptr noundef %3) #20
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = tail call ptr @unsigned_type_for(ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #20
  %19 = trunc i64 %18 to i32
  %20 = sub i32 %17, %19
  %21 = tail call ptr @build_low_bits_mask(ptr noundef %14, i32 noundef %20) #20
  ret ptr %21
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @loop_only_exit_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @estimated_loop_iterations(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cand_value_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.affine_tree_combination, align 8
  %7 = alloca %struct.affine_tree_combination, align 8
  %8 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %18 [
    i16 10, label %16
    i16 12, label %16
  ]

16:                                               ; preds = %5, %5
  %17 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  br label %18

18:                                               ; preds = %5, %16
  %19 = phi ptr [ %17, %16 ], [ %13, %5 ]
  %20 = getelementptr inbounds %struct.iv, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  call void @tree_to_aff_combination(ptr noundef %21, ptr noundef %19, ptr noundef nonnull %6) #20
  %22 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  call void @tree_to_aff_combination(ptr noundef %3, ptr noundef %23, ptr noundef nonnull %8) #20
  call void @aff_combination_convert(ptr noundef nonnull %8, ptr noundef %19) #20
  call void @aff_combination_mult(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %24 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !39
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  call void @aff_combination_add(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  br label %27

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %10, align 8, !tbaa !14
  call void @tree_to_aff_combination(ptr noundef %28, ptr noundef nonnull %13, ptr noundef %4) #20
  call void @aff_combination_add(ptr noundef %4, ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @expression_expensive_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @num_ending_zeros(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_low_bits_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_mult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ivopts_global_cost_for_size(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 1, !tbaa !96
  %7 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %1, i32 noundef %4, i8 noundef zeroext %6) #20
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @estimate_reg_pressure_cost(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_initial_solution(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = tail call fastcc ptr @iv_ca_new(ptr noundef %0) #21
  store ptr %3, ptr %2, align 8, !tbaa !17
  %4 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %10

6:                                                ; preds = %10
  %7 = add nuw i32 %11, 1
  %8 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %16, !llvm.loop !295

10:                                               ; preds = %1, %6
  %11 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %12 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %11) #21
  %13 = tail call fastcc zeroext i8 @try_add_cand_for(ptr noundef %0, ptr noundef %3, ptr noundef %12) #21, !range !39
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6

15:                                               ; preds = %10
  call fastcc void @iv_ca_free(ptr noundef nonnull %2) #21
  br label %16

16:                                               ; preds = %6, %1, %15
  %17 = phi ptr [ null, %15 ], [ %3, %1 ], [ %3, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_dump(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i64 @iv_ca_cost(ptr noundef %2) #21
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %5, i32 noundef %7) #21
  %9 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %10, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1) #20
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !81
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 9
  br label %16

16:                                               ; preds = %14, %28
  %17 = phi i32 [ %12, %14 ], [ %29, %28 ]
  %18 = phi ptr [ @.str.82, %14 ], [ %30, %28 ]
  %19 = phi i32 [ 1, %14 ], [ %31, %28 ]
  %20 = load ptr, ptr %15, align 8, !tbaa !161
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef %18, i32 noundef %19) #21
  %27 = load i32, ptr %11, align 8, !tbaa !81
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi i32 [ %27, %25 ], [ %17, %16 ]
  %30 = phi ptr [ @.str.86, %25 ], [ %18, %16 ]
  %31 = add i32 %19, 1
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %33, label %16, !llvm.loop !296

33:                                               ; preds = %28, %3
  %34 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_improve_iv_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %7 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %8 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %2, %38
  %11 = phi ptr [ %39, %38 ], [ null, %2 ]
  %12 = phi i32 [ %41, %38 ], [ 0, %2 ]
  %13 = phi i64 [ %40, %38 ], [ %7, %2 ]
  %14 = call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %12) #21
  %15 = call fastcc zeroext i8 @iv_ca_cand_used_p(ptr noundef %1, ptr noundef %14) #21, !range !39
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = call fastcc i64 @iv_ca_extend(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %3) #21
  %19 = load ptr, ptr %5, align 8, !tbaa !17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4, !tbaa !38
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 62, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !101
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, i8 noundef zeroext 1) #21
  %28 = call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef nonnull %6) #21
  call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, i8 noundef zeroext 0) #21
  %29 = load ptr, ptr %6, align 8, !tbaa !17
  %30 = call fastcc ptr @iv_ca_delta_join(ptr noundef nonnull %19, ptr noundef %29) #21
  store ptr %30, ptr %5, align 8, !tbaa !17
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi ptr [ %30, %27 ], [ %19, %21 ]
  %33 = phi i64 [ %28, %27 ], [ %18, %21 ]
  %34 = call fastcc i32 @compare_costs(i64 %33, i64 %13) #21
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %4) #21
  store ptr %32, ptr %4, align 8, !tbaa !17
  br label %38

37:                                               ; preds = %31
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %5) #21
  br label %38

38:                                               ; preds = %36, %37, %17, %10
  %39 = phi ptr [ %11, %10 ], [ %32, %36 ], [ %11, %37 ], [ %11, %17 ]
  %40 = phi i64 [ %13, %10 ], [ %33, %36 ], [ %13, %37 ], [ %13, %17 ]
  %41 = add nuw i32 %12, 1
  %42 = call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %10, label %44, !llvm.loop !297

44:                                               ; preds = %38
  %45 = icmp eq ptr %39, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %2, %44
  %47 = call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %4) #21
  %48 = load ptr, ptr %4, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %44
  %51 = phi ptr [ %39, %44 ], [ %48, %46 ]
  %52 = phi i64 [ %40, %44 ], [ %47, %46 ]
  call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %51, i8 noundef zeroext 1) #21
  %53 = call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %54 = call fastcc i32 @compare_costs(i64 %52, i64 %53) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5245, ptr noundef nonnull @.str.13) #20
  br label %57

57:                                               ; preds = %50, %56
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %4) #21
  br label %58

58:                                               ; preds = %46, %57
  %59 = phi i8 [ 1, %57 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i8 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @iv_ca_cost(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !298
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 10
  %7 = load i64, ptr %6, align 8, !tbaa.struct !290
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %7, %5 ], [ 42949672970000000, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_ca_cand_for_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = load i32, ptr %1, align 8, !tbaa !20
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @iv_ca_new(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 72) #20
  store i32 0, ptr %2, align 8, !tbaa !299
  %3 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !298
  %4 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #20
  %7 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !159
  %8 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #20
  %11 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !160
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %13 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !156
  %14 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  %16 = load i32, ptr %15, align 8, !tbaa !81
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 4) #20
  %20 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !161
  %21 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 10
  store i64 0, ptr %21, align 8
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_add_cand_for(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  tail call fastcc void @iv_ca_add_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %8 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %9 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef %2) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %2, ptr noundef null, ptr noundef nonnull %9, ptr noundef null) #21
  store ptr %12, ptr %6, align 8, !tbaa !17
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %16, ptr noundef nonnull %4) #21
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !39
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %13, %43
  %20 = phi ptr [ %44, %43 ], [ %14, %13 ]
  %21 = phi i64 [ %45, %43 ], [ %8, %13 ]
  %22 = load i32, ptr %4, align 4, !tbaa !38
  %23 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %22) #21
  %24 = getelementptr inbounds %struct.iv_cand, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  %26 = getelementptr inbounds %struct.iv, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %19
  %30 = tail call fastcc zeroext i8 @iv_ca_cand_used_p(ptr noundef %1, ptr noundef nonnull %23) #21, !range !39
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %23) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %33) #21
  %36 = call fastcc i64 @iv_ca_extend(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %7, ptr noundef null) #21
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %37 = load ptr, ptr %7, align 8, !tbaa !17
  %38 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %2, ptr noundef null, ptr noundef nonnull %33, ptr noundef %37) #21
  store ptr %38, ptr %7, align 8, !tbaa !17
  %39 = tail call fastcc i32 @compare_costs(i64 %36, i64 %21) #21
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  store ptr %38, ptr %6, align 8, !tbaa !17
  br label %43

42:                                               ; preds = %35
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %7) #21
  br label %43

43:                                               ; preds = %41, %42, %32, %29, %19
  %44 = phi ptr [ %20, %19 ], [ %20, %29 ], [ %38, %41 ], [ %20, %42 ], [ %20, %32 ]
  %45 = phi i64 [ %21, %19 ], [ %21, %29 ], [ %36, %41 ], [ %21, %42 ], [ %21, %32 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !39
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %19, !llvm.loop !300

48:                                               ; preds = %43, %13
  %49 = phi ptr [ %14, %13 ], [ %44, %43 ]
  %50 = phi i64 [ %8, %13 ], [ %45, %43 ]
  %51 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %50) #21, !range !39
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %99, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !140
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 7
  br label %59

59:                                               ; preds = %57, %92
  %60 = phi ptr [ %49, %57 ], [ %93, %92 ]
  %61 = phi i64 [ 0, %57 ], [ %95, %92 ]
  %62 = phi i64 [ %50, %57 ], [ %94, %92 ]
  %63 = load ptr, ptr %58, align 8, !tbaa !141
  %64 = getelementptr inbounds %struct.cost_pair, ptr %63, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !142
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.iv_cand, ptr %65, i64 0, i32 1
  %69 = load i8, ptr %68, align 4, !tbaa !34
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.iv_cand, ptr %65, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !31
  %74 = getelementptr inbounds %struct.iv, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %71, %67
  %78 = tail call fastcc zeroext i8 @iv_ca_cand_used_p(ptr noundef %1, ptr noundef nonnull %65) #21, !range !39
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  store ptr null, ptr %7, align 8, !tbaa !17
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %64) #21
  %81 = call fastcc i64 @iv_ca_extend(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %65, ptr noundef nonnull %7, ptr noundef null) #21
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #21
  %82 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef nonnull %2) #21
  %83 = load ptr, ptr %7, align 8, !tbaa !17
  %84 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef nonnull %2, ptr noundef %82, ptr noundef nonnull %64, ptr noundef %83) #21
  store ptr %84, ptr %7, align 8, !tbaa !17
  %85 = tail call fastcc i32 @compare_costs(i64 %81, i64 %62) #21
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = icmp eq ptr %60, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %87
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  br label %90

90:                                               ; preds = %89, %87
  store ptr %84, ptr %6, align 8, !tbaa !17
  br label %92

91:                                               ; preds = %80
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %7) #21
  br label %92

92:                                               ; preds = %90, %91, %77, %71, %59
  %93 = phi ptr [ %60, %71 ], [ %60, %77 ], [ %84, %90 ], [ %60, %91 ], [ %60, %59 ]
  %94 = phi i64 [ %62, %71 ], [ %62, %77 ], [ %81, %90 ], [ %62, %91 ], [ %62, %59 ]
  %95 = add nuw nsw i64 %61, 1
  %96 = load i32, ptr %54, align 8, !tbaa !140
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %59, label %99, !llvm.loop !301

99:                                               ; preds = %92, %53, %48
  %100 = phi ptr [ %49, %48 ], [ %49, %53 ], [ %93, %92 ]
  %101 = phi i64 [ %50, %48 ], [ %50, %53 ], [ %94, %92 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %100, i8 noundef zeroext 1) #21
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  %102 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %101) #21, !range !39
  %103 = xor i8 %102, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i8 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_add_use(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %6 = load i32, ptr %1, align 8, !tbaa !299
  %7 = load i32, ptr %2, align 8, !tbaa !20
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4657, ptr noundef nonnull @.str.13) #20
  %10 = load i32, ptr %1, align 8, !tbaa !299
  %11 = load i32, ptr %2, align 8, !tbaa !20
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ %7, %3 ], [ %11, %9 ]
  %14 = phi i32 [ %6, %3 ], [ %10, %9 ]
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = add i32 %13, 1
  store i32 %17, ptr %1, align 8, !tbaa !299
  %18 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !298
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !298
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %23, ptr noundef nonnull %5) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !39
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %33, %26 ], [ null, %21 ]
  %28 = load i32, ptr %5, align 4, !tbaa !38
  %29 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %28) #21
  %30 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %29) #21
  %31 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef %30, ptr noundef %27) #21, !range !39
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr %27, ptr %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !39
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %26, !llvm.loop !302

36:                                               ; preds = %26, %21
  %37 = phi ptr [ null, %21 ], [ %33, %26 ]
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %37) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @iv_ca_delta_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %0, ptr %5, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !305
  %7 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !306
  %8 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !307
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_set_no_cp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 8, !tbaa !142
  %13 = load i32, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !298
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !298
  store ptr null, ptr %8, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = zext i32 %13 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !38
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !38
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %26, i32 noundef %13) #20
  %28 = load ptr, ptr %9, align 8, !tbaa !142
  %29 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !308
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4, !tbaa !308
  br label %36

36:                                               ; preds = %32, %24
  %37 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !309
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 8, !tbaa !309
  %40 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !134
  %42 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !310
  %44 = sub i32 %43, %41
  store i32 %44, ptr %42, align 8, !tbaa !310
  %45 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  tail call fastcc void @iv_ca_set_remove_invariants(ptr noundef nonnull %1, ptr noundef %46) #21
  br label %47

47:                                               ; preds = %36, %11
  %48 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %49 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 1
  %50 = load i64, ptr %48, align 8
  %51 = load i64, ptr %49, align 8
  %52 = tail call fastcc i64 @sub_costs(i64 %50, i64 %51) #21
  store i64 %52, ptr %48, align 8, !tbaa.struct !290
  %53 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !145
  tail call fastcc void @iv_ca_set_remove_invariants(ptr noundef nonnull %1, ptr noundef %54) #21
  tail call fastcc void @iv_ca_recount_cost(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %55

55:                                               ; preds = %3, %47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @iv_ca_cand_used_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = load i32, ptr %1, align 8, !tbaa !33
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_iv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #15 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !136
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = load i32, ptr %2, align 8, !tbaa !33
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cost_pair, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !142
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr null, ptr %14
  br label %52

18:                                               ; preds = %5
  %19 = load i32, ptr %2, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !140
  %22 = add i32 %21, -1
  %23 = and i32 %22, %19
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !141
  %28 = zext i32 %23 to i64
  %29 = zext i32 %21 to i64
  br label %39

30:                                               ; preds = %39
  %31 = add nuw nsw i64 %40, 1
  %32 = icmp ult i64 %31, %29
  br i1 %32, label %39, label %33, !llvm.loop !311

33:                                               ; preds = %30, %18
  %34 = icmp eq i32 %23, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !141
  %38 = zext i32 %23 to i64
  br label %47

39:                                               ; preds = %25, %30
  %40 = phi i64 [ %28, %25 ], [ %31, %30 ]
  %41 = getelementptr inbounds %struct.cost_pair, ptr %27, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !142
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %52, label %30

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %52, label %47, !llvm.loop !312

47:                                               ; preds = %35, %44
  %48 = phi i64 [ 0, %35 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.cost_pair, ptr %37, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !142
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %52, label %44

52:                                               ; preds = %39, %47, %44, %33, %9, %3
  %53 = phi ptr [ null, %3 ], [ %17, %9 ], [ null, %33 ], [ %49, %47 ], [ null, %44 ], [ %41, %39 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_set_cp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %63, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8, !tbaa !142
  %19 = load i32, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !298
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !298
  %23 = load ptr, ptr %6, align 8, !tbaa !159
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr %3, ptr %24, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !160
  %27 = zext i32 %19 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !38
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !38
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !156
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %19) #20
  %36 = load ptr, ptr %3, align 8, !tbaa !142
  %37 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !31
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !308
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !308
  br label %44

44:                                               ; preds = %40, %32
  %45 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !309
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !309
  %48 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !134
  %50 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !310
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 8, !tbaa !310
  %53 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  tail call fastcc void @iv_ca_set_add_invariants(ptr noundef nonnull %1, ptr noundef %54) #21
  br label %55

55:                                               ; preds = %44, %17
  %56 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %57 = getelementptr inbounds %struct.cost_pair, ptr %3, i64 0, i32 1
  %58 = load i64, ptr %56, align 8
  %59 = load i64, ptr %57, align 8
  %60 = tail call fastcc i64 @add_costs(i64 %58, i64 %59) #21
  store i64 %60, ptr %56, align 8, !tbaa.struct !290
  %61 = getelementptr inbounds %struct.cost_pair, ptr %3, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !145
  tail call fastcc void @iv_ca_set_add_invariants(ptr noundef nonnull %1, ptr noundef %62) #21
  tail call fastcc void @iv_ca_recount_cost(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %63

63:                                               ; preds = %15, %55, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @iv_ca_extend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) unnamed_addr #0 {
  store ptr null, ptr %3, align 8, !tbaa !17
  %6 = load i32, ptr %1, align 8, !tbaa !299
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5, %28
  %9 = phi i32 [ %29, %28 ], [ 0, %5 ]
  %10 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %9) #21
  %11 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef nonnull %1, ptr noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !142
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %8
  %17 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %10, ptr noundef %2) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef nonnull %1, ptr noundef nonnull %17) #21, !range !39
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef nonnull %17, ptr noundef %11) #21, !range !39
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !17
  %27 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %17, ptr noundef %26) #21
  store ptr %27, ptr %3, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %22, %19, %16, %13, %25
  %29 = add nuw i32 %9, 1
  %30 = load i32, ptr %1, align 8, !tbaa !299
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %8, label %32, !llvm.loop !313

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8, !tbaa !17
  br label %34

34:                                               ; preds = %32, %5
  %35 = phi ptr [ %33, %32 ], [ null, %5 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %35, i8 noundef zeroext 1) #21
  %36 = tail call fastcc i64 @iv_ca_cost(ptr noundef nonnull %1) #21
  %37 = icmp eq ptr %4, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @iv_ca_n_cands(ptr noundef nonnull %1) #21
  store i32 %39, ptr %4, align 4, !tbaa !38
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %3, align 8, !tbaa !17
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %41, i8 noundef zeroext 0) #21
  ret i64 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_delta_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !307
  tail call void @free(ptr noundef nonnull %5) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !314

9:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_delta_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @iv_ca_delta_reverse(ptr noundef %2) #21
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %2, %4 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8, %22
  %12 = phi ptr [ %25, %22 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.iv_ca_delta, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = getelementptr inbounds %struct.iv_ca_delta, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !306
  %17 = load ptr, ptr %12, align 8, !tbaa !303
  %18 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef %17) #21
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4794, ptr noundef nonnull @.str.13) #20
  %21 = load ptr, ptr %12, align 8, !tbaa !303
  br label %22

22:                                               ; preds = %11, %20
  %23 = phi ptr [ %17, %11 ], [ %21, %20 ]
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef %23, ptr noundef %16) #21
  %24 = getelementptr inbounds %struct.iv_ca_delta, ptr %12, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !307
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !315

27:                                               ; preds = %22, %8
  br i1 %5, label %28, label %30

28:                                               ; preds = %27
  %29 = tail call fastcc ptr @iv_ca_delta_reverse(ptr noundef %9) #21
  br label %30

30:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cheaper_cost_pair(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cost_pair, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.cost_pair, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %7, align 8
  %10 = load i64, ptr %8, align 8
  %11 = tail call fastcc i32 @compare_costs(i64 %9, i64 %10) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %6
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8, !tbaa !142
  %17 = getelementptr inbounds %struct.iv_cand, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !134
  %19 = load ptr, ptr %1, align 8, !tbaa !142
  %20 = getelementptr inbounds %struct.iv_cand, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !134
  %22 = icmp ult i32 %18, %21
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %15, %13, %6, %4, %2
  %25 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 1, %6 ], [ 0, %13 ], [ %23, %15 ]
  ret i8 %25
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @iv_ca_set_remove_invariants(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #16 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !39
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %9, %23
  %14 = load i32, ptr %4, align 4, !tbaa !38
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4, !tbaa !38
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %12, align 4, !tbaa !308
  %22 = add i32 %21, -1
  store i32 %22, ptr %12, align 4, !tbaa !308
  br label %23

23:                                               ; preds = %13, %20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !39
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !llvm.loop !316

26:                                               ; preds = %23, %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @sub_costs(i64 %0, i64 %1) unnamed_addr #9 {
  %3 = and i64 %1, -4294967296
  %4 = sub i64 %0, %1
  %5 = sub i64 %0, %3
  %6 = and i64 %5, -4294967296
  %7 = and i64 %4, 4294967295
  %8 = or disjoint i64 %6, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_recount_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa.struct !290
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa.struct !317
  %7 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !310
  %9 = add i32 %8, %4
  %10 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !308
  %12 = tail call fastcc i32 @ivopts_global_cost_for_size(ptr noundef %0, i32 noundef %11) #21
  %13 = add i32 %9, %12
  %14 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa.struct !290
  %15 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10, i32 1
  store i32 %6, ptr %15, align 4, !tbaa.struct !317
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @iv_ca_set_add_invariants(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #16 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !39
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %9, %23
  %14 = load i32, ptr %4, align 4, !tbaa !38
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !38
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %12, align 4, !tbaa !308
  %22 = add i32 %21, 1
  store i32 %22, ptr %12, align 4, !tbaa !308
  br label %23

23:                                               ; preds = %13, %20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !39
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !llvm.loop !318

26:                                               ; preds = %23, %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @iv_ca_has_deps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.cost_pair, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %3) #21
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !39
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  br label %14

14:                                               ; preds = %11, %20
  %15 = load i32, ptr %3, align 4, !tbaa !38
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !39
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %14, !llvm.loop !319

23:                                               ; preds = %14, %20, %8, %2
  %24 = phi i8 [ 1, %2 ], [ 1, %8 ], [ 0, %14 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @iv_ca_n_cands(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !309
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_ca_delta_reverse(ptr noundef %0) unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = phi ptr [ %4, %3 ], [ null, %1 ]
  %6 = getelementptr inbounds %struct.iv_ca_delta, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !307
  store ptr %5, ptr %6, align 8, !tbaa !307
  %8 = getelementptr inbounds %struct.iv_ca_delta, ptr %4, i64 0, i32 1
  %9 = load <2 x ptr>, ptr %8, align 8, !tbaa !17
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %10, ptr %8, align 8, !tbaa !17
  %11 = icmp eq ptr %7, null
  br i1 %11, label %12, label %3, !llvm.loop !320

12:                                               ; preds = %3, %1
  %13 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @iv_ca_prune(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store ptr null, ptr %7, align 8, !tbaa !17
  %9 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %10 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %11, ptr noundef nonnull %8) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %8) #21, !range !39
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %4, %27
  %15 = phi ptr [ %28, %27 ], [ null, %4 ]
  %16 = phi i64 [ %29, %27 ], [ %9, %4 ]
  %17 = load i32, ptr %8, align 4, !tbaa !38
  %18 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %17) #21
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = call fastcc i64 @iv_ca_narrow(ptr noundef %0, ptr noundef %1, ptr noundef %18, ptr noundef nonnull %6) #21
  %22 = tail call fastcc i32 @compare_costs(i64 %21, i64 %16) #21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %7) #21
  %25 = load ptr, ptr %6, align 8, !tbaa !17
  store ptr %25, ptr %7, align 8, !tbaa !17
  br label %27

26:                                               ; preds = %20
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  br label %27

27:                                               ; preds = %24, %26, %14
  %28 = phi ptr [ %15, %14 ], [ %25, %24 ], [ %15, %26 ]
  %29 = phi i64 [ %16, %14 ], [ %21, %24 ], [ %16, %26 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %8) #21
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %8) #21, !range !39
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !llvm.loop !321

32:                                               ; preds = %27
  %33 = icmp eq ptr %28, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, i8 noundef zeroext 1) #21
  %35 = tail call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, i8 noundef zeroext 0) #21
  %36 = load ptr, ptr %3, align 8, !tbaa !17
  %37 = tail call fastcc ptr @iv_ca_delta_join(ptr noundef nonnull %28, ptr noundef %36) #21
  br label %38

38:                                               ; preds = %4, %32, %34
  %39 = phi ptr [ %37, %34 ], [ null, %32 ], [ null, %4 ]
  %40 = phi i64 [ %35, %34 ], [ %29, %32 ], [ %9, %4 ]
  store ptr %39, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret i64 %40
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @iv_ca_delta_join(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %4 ]
  %8 = getelementptr inbounds %struct.iv_ca_delta, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !307
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !322

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.iv_ca_delta, ptr %7, i64 0, i32 3
  store ptr %1, ptr %12, align 8, !tbaa !307
  br label %13

13:                                               ; preds = %4, %2, %11
  %14 = phi ptr [ %0, %11 ], [ %0, %2 ], [ %1, %4 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @iv_ca_narrow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  store ptr null, ptr %3, align 8, !tbaa !17
  %7 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %84, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %79
  %13 = phi ptr [ null, %9 ], [ %80, %79 ]
  %14 = phi i32 [ 0, %9 ], [ %81, %79 ]
  %15 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %14) #21
  %16 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef %15) #21
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %79

19:                                               ; preds = %12
  %20 = load i8, ptr %10, align 4, !tbaa !136
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8, !tbaa !156
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %23, ptr noundef nonnull %5) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !39
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %75, label %26

26:                                               ; preds = %22, %42
  %27 = phi ptr [ %43, %42 ], [ null, %22 ]
  %28 = load i32, ptr %5, align 4, !tbaa !38
  %29 = load i32, ptr %2, align 8, !tbaa !33
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %28) #21
  %33 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %15, ptr noundef %32) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef %1, ptr noundef nonnull %33) #21, !range !39
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef nonnull %33, ptr noundef %27) #21, !range !39
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %27, ptr %33
  br label %42

42:                                               ; preds = %38, %35, %31, %26
  %43 = phi ptr [ %27, %26 ], [ %27, %35 ], [ %27, %31 ], [ %41, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %44 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !39
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %72, label %26, !llvm.loop !323

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.iv_use, ptr %15, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = load ptr, ptr %11, align 8, !tbaa !156
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %6, ptr noundef %48, ptr noundef %49, ptr noundef nonnull %5) #21
  %50 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !39
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %46, %68
  %53 = phi ptr [ %69, %68 ], [ null, %46 ]
  %54 = load i32, ptr %5, align 4, !tbaa !38
  %55 = load i32, ptr %2, align 8, !tbaa !33
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %54) #21
  %59 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %15, ptr noundef %58) #21
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef %1, ptr noundef nonnull %59) #21, !range !39
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef nonnull %59, ptr noundef %53) #21, !range !39
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, ptr %53, ptr %59
  br label %68

68:                                               ; preds = %64, %61, %57, %52
  %69 = phi ptr [ %53, %52 ], [ %53, %61 ], [ %53, %57 ], [ %67, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %70 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !39
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %52, !llvm.loop !324

72:                                               ; preds = %42, %68
  %73 = phi ptr [ %69, %68 ], [ %43, %42 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %22, %46, %72
  tail call fastcc void @iv_ca_delta_free(ptr noundef nonnull %3) #21
  br label %88

76:                                               ; preds = %72
  %77 = load ptr, ptr %3, align 8, !tbaa !17
  %78 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %73, ptr noundef %77) #21
  store ptr %78, ptr %3, align 8, !tbaa !17
  br label %79

79:                                               ; preds = %12, %76
  %80 = phi ptr [ %13, %12 ], [ %78, %76 ]
  %81 = add nuw i32 %14, 1
  %82 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %12, label %84, !llvm.loop !325

84:                                               ; preds = %79, %4
  %85 = phi ptr [ null, %4 ], [ %80, %79 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %85, i8 noundef zeroext 1) #21
  %86 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %87 = load ptr, ptr %3, align 8, !tbaa !17
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %87, i8 noundef zeroext 0) #21
  br label %88

88:                                               ; preds = %84, %75
  %89 = phi i64 [ 42949672970000000, %75 ], [ %86, %84 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret i64 %89
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = load ptr, ptr %1, align 8, !tbaa !177
  store ptr %5, ptr %0, align 8, !tbaa !179
  %6 = load ptr, ptr %2, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = select i1 %8, ptr null, ptr %6
  store ptr %9, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  br label %15

13:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !181
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !179
  %14 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !182
  br label %26

15:                                               ; preds = %11, %21
  %16 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !182
  %19 = load i32, ptr %12, align 8, !tbaa !182
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !188
  store ptr %22, ptr %7, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %13, label %15

24:                                               ; preds = %15
  %25 = icmp eq i32 %19, %18
  br i1 %25, label %26, label %36

26:                                               ; preds = %13, %24
  %27 = phi ptr [ @bitmap_zero_bits, %13 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %13 ], [ %16, %24 ]
  %29 = phi i32 [ %14, %13 ], [ %18, %24 ]
  %30 = shl i32 %29, 7
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !64
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !64
  %35 = and i64 %34, %32
  br label %36

36:                                               ; preds = %24, %26
  %37 = phi i32 [ 0, %26 ], [ 1, %24 ]
  %38 = phi i64 [ %35, %26 ], [ 0, %24 ]
  %39 = phi i32 [ %30, %26 ], [ 0, %24 ]
  %40 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %37, ptr %40, align 8
  %41 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %38, ptr %41, align 8
  %42 = icmp eq i64 %38, 0
  %43 = zext i1 %42 to i32
  %44 = or disjoint i32 %39, %43
  store i32 %44, ptr %3, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !185
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !38
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !llvm.loop !326

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !38
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !38
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !184
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !179
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !184
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !181
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !64
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !185
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !38
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !38
  %46 = load i32, ptr %23, align 8, !tbaa !184
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !184
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !llvm.loop !327

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !188
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !182
  %57 = load ptr, ptr %26, align 8, !tbaa !181
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !182
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !328

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !179
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !182
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !188
  store ptr %69, ptr %26, align 8, !tbaa !181
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !llvm.loop !329

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !38
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !185
  store i32 %16, ptr %1, align 4, !tbaa !38
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !179
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_iv(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !36
  switch i32 %9, label %32 [
    i32 0, label %10
    i32 1, label %13
    i32 3, label %16
    i32 2, label %17
    i32 4, label %21
  ]

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !95
  %12 = tail call ptr @ip_normal_pos(ptr noundef %11) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #21
  br label %32

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !95
  %15 = tail call ptr @ip_end_pos(ptr noundef %14) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %15) #21
  br label %32

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi i8 [ 0, %7 ], [ 1, %16 ]
  %19 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !237
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %20) #20
  br label %32

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !252
  %24 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %23) #21
  %25 = getelementptr inbounds %struct.version_info, ptr %24, i64 0, i32 4
  store i8 1, ptr %25, align 8, !tbaa !164
  %26 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !253
  %28 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %27) #21
  %29 = getelementptr inbounds %struct.version_info, ptr %28, i64 0, i32 4
  store i8 1, ptr %29, align 8, !tbaa !164
  %30 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %27) #21
  %31 = getelementptr inbounds %struct.iv_use, ptr %30, i64 0, i32 8
  store ptr %1, ptr %31, align 8, !tbaa !154
  br label %48

32:                                               ; preds = %7, %17, %13, %10
  %33 = phi i8 [ 0, %7 ], [ %18, %17 ], [ 1, %13 ], [ 0, %10 ]
  %34 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !252
  call void @gimple_add_tmp_var(ptr noundef %35) #20
  %36 = load ptr, ptr %34, align 8, !tbaa !252
  %37 = call zeroext i8 @add_referenced_var(ptr noundef %36) #20
  %38 = load ptr, ptr %4, align 8, !tbaa !31
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = call ptr @unshare_expr(ptr noundef %39) #20
  %41 = load ptr, ptr %4, align 8, !tbaa !31
  %42 = getelementptr inbounds %struct.iv, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = call ptr @unshare_expr(ptr noundef %43) #20
  %45 = load ptr, ptr %34, align 8, !tbaa !252
  %46 = load ptr, ptr %0, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 5
  call void @create_iv(ptr noundef %40, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef nonnull %3, i8 noundef zeroext %33, ptr noundef nonnull %34, ptr noundef nonnull %47) #20
  br label %48

48:                                               ; preds = %2, %32, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !201
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_add_tmp_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !330
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !22
  switch i32 %5, label %9 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
  ]

6:                                                ; preds = %3
  tail call fastcc void @rewrite_use_nonlinear_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21
  br label %10

7:                                                ; preds = %3
  tail call fastcc void @rewrite_use_address(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21
  br label %10

8:                                                ; preds = %3
  tail call fastcc void @rewrite_use_compare(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21
  br label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5635, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %9, %8, %7, %6
  %11 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  tail call fastcc void @update_stmt(ptr noundef %12) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use_nonlinear_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %86

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  %12 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %9
  %16 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %11) #21, !range !39
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5390, ptr noundef nonnull @.str.13) #20
  %19 = load ptr, ptr %12, align 8, !tbaa !23
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %11, %15 ], [ %19, %18 ]
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #21
  %23 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !253
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5391, ptr noundef nonnull @.str.13) #20
  %27 = load ptr, ptr %23, align 8, !tbaa !253
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %22, %20 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.iv, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = load i64, ptr %33, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 79
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !15
  br label %44

44:                                               ; preds = %41, %28
  %45 = phi ptr [ %43, %41 ], [ %33, %28 ]
  %46 = phi i32 [ 64, %41 ], [ 63, %28 ]
  %47 = load ptr, ptr %12, align 8, !tbaa !23
  %48 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %47) #21, !range !213
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %79 [
    i16 66, label %50
    i16 64, label %50
    i16 63, label %50
  ]

50:                                               ; preds = %44, %44, %44
  %51 = load ptr, ptr %12, align 8, !tbaa !23
  %52 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %51) #21
  %53 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !252
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load ptr, ptr %12, align 8, !tbaa !23
  %58 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %57) #21
  br label %69

59:                                               ; preds = %50
  %60 = icmp eq i32 %48, 64
  br i1 %60, label %79, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %12, align 8, !tbaa !23
  %63 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %62) #21
  %64 = load ptr, ptr %53, align 8, !tbaa !252
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load ptr, ptr %12, align 8, !tbaa !23
  %68 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %67) #21
  br label %69

69:                                               ; preds = %56, %66
  %70 = phi ptr [ %58, %56 ], [ %68, %66 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr %70, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 23
  br i1 %75, label %123, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @operand_equal_p(ptr noundef nonnull %70, ptr noundef %45, i32 noundef 0) #20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %44, %59, %61, %69, %76
  %80 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !252
  %82 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef %81) #20
  %83 = tail call ptr @unshare_expr(ptr noundef %45) #20
  %84 = tail call ptr @build2_stat(i32 noundef %46, ptr noundef %35, ptr noundef %82, ptr noundef %83) #20
  %85 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %37, ptr noundef %84) #20
  br label %91

86:                                               ; preds = %9, %3
  %87 = load ptr, ptr %0, align 8, !tbaa !95
  %88 = tail call fastcc ptr @get_computation(ptr noundef %87, ptr noundef %1, ptr noundef nonnull %2) #21
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5438, ptr noundef nonnull @.str.13) #20
  br label %91

91:                                               ; preds = %79, %90, %86
  %92 = phi ptr [ %85, %79 ], [ %88, %86 ], [ null, %90 ]
  %93 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !23
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %94) #21, !range !109
  %96 = trunc i32 %95 to i8
  switch i8 %96, label %109 [
    i8 16, label %97
    i8 6, label %106
  ]

97:                                               ; preds = %91
  %98 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %94) #21
  %99 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %98) #21
  %100 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %99) #21
  %101 = getelementptr inbounds %struct.version_info, ptr %100, i64 0, i32 4
  %102 = load i8, ptr %101, align 8, !tbaa !164
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %97
  %105 = tail call fastcc ptr @gimple_bb(ptr noundef %94) #21
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %105) #21
  br label %110

106:                                              ; preds = %91
  %107 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %94) #21
  %108 = load ptr, ptr %93, align 8, !tbaa !23
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %108) #20
  br label %110

109:                                              ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5459, ptr noundef nonnull @.str.13) #20
  br label %110

110:                                              ; preds = %109, %106, %104
  %111 = phi ptr [ undef, %109 ], [ %107, %106 ], [ %99, %104 ]
  %112 = getelementptr inbounds %struct.tree_ssa_name, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %92, i8 noundef zeroext 0, ptr noundef %113, i8 noundef zeroext 1, i32 noundef 1) #20
  %115 = load ptr, ptr %93, align 8, !tbaa !23
  %116 = call fastcc i32 @gimple_code(ptr noundef %115) #21, !range !109
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %111, ptr noundef %114) #20
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %119, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %120 = load ptr, ptr %93, align 8, !tbaa !23
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %120) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  br label %123

121:                                              ; preds = %110
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %114) #20
  %122 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  store ptr %122, ptr %93, align 8, !tbaa !23
  br label %123

123:                                              ; preds = %72, %76, %118, %121, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use_address(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %7) #20
  %8 = load ptr, ptr %0, align 8, !tbaa !95
  %9 = load ptr, ptr %6, align 8, !tbaa !23
  %10 = call fastcc zeroext i8 @get_computation_aff(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef nonnull %4) #21, !range !39
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5546, ptr noundef nonnull @.str.13) #20
  br label %13

13:                                               ; preds = %3, %12
  call void @unshare_aff_combination(ptr noundef nonnull %4) #20
  %14 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.iv, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !95
  %21 = load ptr, ptr %6, align 8, !tbaa !23
  %22 = call fastcc ptr @var_at_stmt(ptr noundef %20, ptr noundef nonnull %2, ptr noundef %21) #21
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %22, %19 ], [ null, %13 ]
  %25 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %31 = load i8, ptr %30, align 1, !tbaa !96
  %32 = call ptr @create_mem_ref(ptr noundef nonnull %5, ptr noundef %29, ptr noundef nonnull %4, ptr noundef %24, i8 noundef zeroext %31) #20
  %33 = load ptr, ptr %25, align 8, !tbaa !24
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  call fastcc void @copy_ref_info(ptr noundef %32, ptr noundef %34) #21
  %35 = load ptr, ptr %25, align 8, !tbaa !24
  store ptr %32, ptr %35, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %7 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %8) #20
  %9 = call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %10 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !291
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %0, align 8, !tbaa !95
  br i1 %12, label %34, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !tbaa !23
  %16 = call fastcc ptr @var_at_stmt(ptr noundef %13, ptr noundef %2, ptr noundef %15) #21
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %19 = call fastcc i32 @iv_elimination_compare(ptr noundef nonnull %0, ptr noundef nonnull %1) #21, !range !331
  %20 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %18, ptr noundef nonnull %11) #20
  %21 = call ptr @unshare_expr(ptr noundef %20) #20
  %22 = call ptr @force_gimple_operand(ptr noundef %21, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #20
  %23 = load ptr, ptr %6, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %0, align 8, !tbaa !95
  %27 = call ptr @loop_preheader_edge(ptr noundef %26) #20
  %28 = load ptr, ptr %6, align 8, !tbaa !17
  %29 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %27, ptr noundef %28) #20
  br label %30

30:                                               ; preds = %25, %14
  %31 = load ptr, ptr %7, align 8, !tbaa !23
  call fastcc void @gimple_cond_set_lhs(ptr noundef %31, ptr noundef nonnull %16) #21
  %32 = load ptr, ptr %7, align 8, !tbaa !23
  call fastcc void @gimple_cond_set_code(ptr noundef %32, i32 noundef %19) #21
  %33 = load ptr, ptr %7, align 8, !tbaa !23
  call fastcc void @gimple_cond_set_rhs(ptr noundef %33, ptr noundef %22) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %50

34:                                               ; preds = %3
  %35 = call fastcc ptr @get_computation(ptr noundef %13, ptr noundef nonnull %1, ptr noundef %2) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5606, ptr noundef nonnull @.str.13) #20
  br label %38

38:                                               ; preds = %34, %37
  %39 = load ptr, ptr %7, align 8, !tbaa !23
  %40 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef nonnull %0, ptr noundef %39, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #21, !range !39
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5609, ptr noundef nonnull @.str.13) #20
  br label %43

43:                                               ; preds = %38, %42
  %44 = load ptr, ptr %4, align 8, !tbaa !17
  %45 = load ptr, ptr %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !15
  %48 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %35, i8 noundef zeroext 1, ptr noundef %47, i8 noundef zeroext 1, i32 noundef 1) #20
  %49 = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %48, ptr %49, align 8, !tbaa !17
  br label %50

50:                                               ; preds = %43, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !39
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_computation(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call fastcc ptr @get_computation_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5) #21
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !39
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #21, !range !109
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !39
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !332

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_mem_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_ref_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 152
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @copy_mem_ref_info(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %19

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @unshare_and_remove_ssa_names(ptr noundef nonnull %1) #21
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !15
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65536
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, -65537
  %14 = or disjoint i64 %13, %11
  store i64 %14, ptr %0, align 8
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 524288
  %17 = and i64 %14, -524289
  %18 = or disjoint i64 %17, %16
  store i64 %18, ptr %0, align 8
  br label %19

19:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: optsize
declare void @copy_mem_ref_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unshare_and_remove_ssa_names(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @unshare_expr(ptr noundef %0) #20
  store ptr %3, ptr %2, align 8, !tbaa !17
  %4 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @idx_remove_ssa_names, ptr noundef null) #20
  %5 = load ptr, ptr %2, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @idx_remove_ssa_names(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #11 {
  %4 = load ptr, ptr %1, align 8, !tbaa !17
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  store ptr %10, ptr %1, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i64, ptr %0, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -45
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  store ptr %27, ptr %18, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %25, %21, %17
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  store ptr %38, ptr %29, align 8, !tbaa !17
  br label %39

39:                                               ; preds = %11, %28, %32, %36
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iv_elimination_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !294
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef 0) #21
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %3, ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 8, !tbaa !294
  %16 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %15, i32 noundef 1) #21
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !333
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 102, i32 101
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !39
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1665, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs_bitset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_iv_use_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !105
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_iv_cand_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !255
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !112
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !17
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !112
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !115
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !38
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !38
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #21
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #17 {
  %1 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @decl_rtl_to_reset, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_iv_use_p_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_iv_cand_p_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !7, i64 24}
!13 = !{!"iv", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 33, !10, i64 36}
!14 = !{!13, !7, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!13, !7, i64 16}
!17 = !{!7, !7, i64 0}
!18 = !{!13, !7, i64 8}
!19 = !{!13, !8, i64 32}
!20 = !{!21, !10, i64 0}
!21 = !{!"iv_use", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !7, i64 48, !7, i64 56}
!22 = !{!21, !10, i64 4}
!23 = !{!21, !7, i64 16}
!24 = !{!21, !7, i64 24}
!25 = !{!21, !7, i64 8}
!26 = !{!21, !7, i64 32}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !7, i64 40}
!30 = !{!"ivopts_data", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !8, i64 68, !8, i64 69}
!31 = !{!32, !7, i64 40}
!32 = !{!"iv_cand", !10, i64 0, !8, i64 4, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !10, i64 52, !7, i64 56, !7, i64 64}
!33 = !{!32, !10, i64 0}
!34 = !{!32, !8, i64 4}
!35 = !{!32, !7, i64 64}
!36 = !{!32, !10, i64 8}
!37 = !{!32, !7, i64 56}
!38 = !{!10, !10, i64 0}
!39 = !{i8 0, i8 2}
!40 = distinct !{!40, !28}
!41 = !{!42, !7, i64 40}
!42 = !{!"loop", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !43, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !44, i64 80, !44, i64 96, !8, i64 112, !8, i64 113, !10, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!43 = !{!"lpt_decision", !10, i64 0, !10, i64 4}
!44 = !{!"", !11, i64 0, !11, i64 8}
!45 = distinct !{!45, !28}
!46 = !{!47, !10, i64 8}
!47 = !{!"mbc_entry", !11, i64 0, !10, i64 8, !10, i64 12}
!48 = !{!47, !11, i64 0}
!49 = !{!47, !10, i64 12}
!50 = distinct !{!50, !28}
!51 = !{!52, !7, i64 1184}
!52 = !{!"gcc_target", !53, i64 0, !55, i64 368, !56, i64 664, !10, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !11, i64 1064, !11, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !57, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !11, i64 1464, !58, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !59, i64 1784, !60, i64 1792, !61, i64 1896, !62, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!53 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !54, i64 24, !54, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!54 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!55 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!56 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!57 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!58 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!59 = !{!"c", !7, i64 0}
!60 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!61 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!62 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!63 = distinct !{!63, !28}
!64 = !{!11, !11, i64 0}
!65 = distinct !{!65, !28}
!66 = !{!67, !10, i64 0}
!67 = !{!"VEC_sbitmap_base", !10, i64 0, !10, i64 4, !8, i64 8}
!68 = !{!69, !7, i64 0}
!69 = !{!"simple_bitmap_def", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!70 = distinct !{!70, !28}
!71 = !{!72, !7, i64 24}
!72 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!73 = !{!74, !7, i64 16}
!74 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !75, i64 32, !75, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !76, i64 104}
!75 = !{!"pt_solution", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !7, i64 8}
!76 = !{!"ssa_operands", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!77 = !{!30, !10, i64 20}
!78 = !{!30, !7, i64 24}
!79 = !{!30, !7, i64 32}
!80 = !{!30, !7, i64 56}
!81 = !{!30, !10, i64 64}
!82 = !{!30, !7, i64 8}
!83 = !{!30, !7, i64 48}
!84 = !{!85, !10, i64 8}
!85 = !{!"", !7, i64 0, !10, i64 8}
!86 = !{!72, !7, i64 32}
!87 = !{!85, !7, i64 0}
!88 = !{!89, !7, i64 24}
!89 = !{!"loops", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!90 = !{!42, !7, i64 48}
!91 = distinct !{!91, !28}
!92 = !{!42, !10, i64 0}
!93 = !{!42, !7, i64 56}
!94 = distinct !{!94, !28}
!95 = !{!30, !7, i64 0}
!96 = !{!30, !8, i64 69}
!97 = !{!98, !10, i64 80}
!98 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!99 = !{!6, !7, i64 8}
!100 = !{!42, !10, i64 36}
!101 = !{!102, !10, i64 8}
!102 = !{!"param_info", !7, i64 0, !10, i64 8, !8, i64 12, !10, i64 16, !10, i64 20, !7, i64 24}
!103 = !{i32 0, i32 2}
!104 = distinct !{!104, !28}
!105 = !{!106, !10, i64 0}
!106 = !{!"VEC_iv_use_p_base", !10, i64 0, !10, i64 4, !8, i64 8}
!107 = !{!108, !10, i64 0}
!108 = !{!"VEC_loop_p_base", !10, i64 0, !10, i64 4, !8, i64 8}
!109 = !{i32 0, i32 256}
!110 = !{}
!111 = !{!67, !10, i64 4}
!112 = !{!113, !10, i64 0}
!113 = !{!"VEC_tree_base", !10, i64 0, !10, i64 4, !8, i64 8}
!114 = !{!89, !7, i64 8}
!115 = !{!116, !10, i64 0}
!116 = !{!"VEC_int_base", !10, i64 0, !10, i64 4, !8, i64 8}
!117 = !{!118, !7, i64 8}
!118 = !{!"version_info", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 20, !8, i64 24}
!119 = distinct !{!119, !28}
!120 = !{i64 0, i64 4, !38, i64 8, i64 8, !17}
!121 = !{i64 0, i64 8, !17}
!122 = !{!72, !7, i64 8}
!123 = !{!124, !7, i64 8}
!124 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28}
!127 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17}
!128 = distinct !{!128, !28}
!129 = distinct !{!129, !28}
!130 = !{!118, !10, i64 20}
!131 = !{!118, !7, i64 0}
!132 = !{!118, !8, i64 16}
!133 = distinct !{!133, !28}
!134 = !{!32, !10, i64 48}
!135 = distinct !{!135, !28}
!136 = !{!30, !8, i64 68}
!137 = distinct !{!137, !28}
!138 = distinct !{!138, !28}
!139 = distinct !{!139, !28}
!140 = !{!21, !10, i64 40}
!141 = !{!21, !7, i64 48}
!142 = !{!143, !7, i64 0}
!143 = !{!"cost_pair", !7, i64 0, !144, i64 8, !7, i64 16, !7, i64 24}
!144 = !{!"", !10, i64 0, !10, i64 4}
!145 = !{!143, !7, i64 16}
!146 = distinct !{!146, !28}
!147 = distinct !{!147, !28}
!148 = !{!42, !7, i64 8}
!149 = distinct !{!149, !28}
!150 = distinct !{!150, !28}
!151 = !{!30, !10, i64 16}
!152 = distinct !{!152, !28}
!153 = distinct !{!153, !28}
!154 = !{!21, !7, i64 56}
!155 = distinct !{!155, !28}
!156 = !{!157, !7, i64 24}
!157 = !{!"iv_ca", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !144, i64 40, !10, i64 48, !7, i64 56, !144, i64 64}
!158 = distinct !{!158, !28}
!159 = !{!157, !7, i64 8}
!160 = !{!157, !7, i64 16}
!161 = !{!157, !7, i64 56}
!162 = distinct !{!162, !28}
!163 = !{!13, !8, i64 33}
!164 = !{!118, !8, i64 24}
!165 = distinct !{!165, !28}
!166 = distinct !{!166, !28}
!167 = distinct !{!167, !28}
!168 = distinct !{!168, !28}
!169 = distinct !{!169, !28}
!170 = distinct !{!170, !28}
!171 = !{!6, !10, i64 44}
!172 = distinct !{!172, !28}
!173 = distinct !{!173, !28}
!174 = !{!98, !7, i64 24}
!175 = !{!98, !10, i64 96}
!176 = distinct !{!176, !28}
!177 = !{!178, !7, i64 0}
!178 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24}
!179 = !{!180, !7, i64 0}
!180 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 24}
!181 = !{!180, !7, i64 8}
!182 = !{!183, !10, i64 16}
!183 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24}
!184 = !{!180, !10, i64 16}
!185 = !{!180, !11, i64 24}
!186 = distinct !{!186, !28}
!187 = distinct !{!187, !28}
!188 = !{!183, !7, i64 0}
!189 = !{!190, !7, i64 0}
!190 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!191 = !{!192, !7, i64 0}
!192 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!193 = !{!194, !7, i64 8}
!194 = !{!"", !7, i64 0, !7, i64 8, !8, i64 16}
!195 = !{!196, !7, i64 24}
!196 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!197 = !{!192, !7, i64 16}
!198 = !{!13, !10, i64 36}
!199 = distinct !{!199, !28}
!200 = !{!190, !7, i64 8}
!201 = !{!190, !7, i64 16}
!202 = !{!194, !7, i64 0}
!203 = !{!204, !7, i64 0}
!204 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!205 = !{!206, !7, i64 0}
!206 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!207 = !{!208, !7, i64 8}
!208 = !{!"tree_niter_desc", !7, i64 0, !7, i64 8, !7, i64 16, !44, i64 24, !194, i64 40, !7, i64 64, !10, i64 72}
!209 = !{!208, !7, i64 16}
!210 = distinct !{!210, !28}
!211 = !{!212, !10, i64 0}
!212 = !{!"", !10, i64 0, !7, i64 8}
!213 = !{i32 0, i32 65536}
!214 = distinct !{!214, !28}
!215 = !{!216, !10, i64 0}
!216 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !8, i64 8}
!217 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 1, !15, i64 33, i64 1, !15, i64 36, i64 4, !38}
!218 = !{!106, !10, i64 4}
!219 = distinct !{!219, !28}
!220 = !{!221, !7, i64 0}
!221 = !{!"ifs_ivopts_data", !7, i64 0, !7, i64 8, !7, i64 16}
!222 = !{!221, !7, i64 8}
!223 = !{!221, !7, i64 16}
!224 = distinct !{!224, !28}
!225 = !{!226, !8, i64 0}
!226 = !{!"ssa_operand_iterator_d", !8, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32}
!227 = !{!226, !7, i64 32}
!228 = !{!226, !10, i64 28}
!229 = !{!226, !10, i64 4}
!230 = !{!226, !7, i64 16}
!231 = !{!232, !7, i64 0}
!232 = !{!"use_optype_d", !7, i64 0, !196, i64 8}
!233 = !{!226, !10, i64 24}
!234 = !{!226, !7, i64 8}
!235 = distinct !{!235, !28}
!236 = distinct !{!236, !28}
!237 = !{!32, !7, i64 16}
!238 = distinct !{!238, !28}
!239 = distinct !{!239, !28}
!240 = distinct !{!240, !28}
!241 = distinct !{!241, !28}
!242 = distinct !{!242, !28}
!243 = !{!244, !7, i64 456}
!244 = !{!"lang_hooks", !7, i64 0, !11, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !245, i64 240, !246, i64 248, !247, i64 256, !248, i64 272, !249, i64 432, !250, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!245 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!246 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!247 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!248 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!249 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!250 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!251 = distinct !{!251, !28}
!252 = !{!32, !7, i64 24}
!253 = !{!32, !7, i64 32}
!254 = !{!42, !7, i64 16}
!255 = !{!256, !10, i64 0}
!256 = !{!"VEC_iv_cand_p_base", !10, i64 0, !10, i64 4, !8, i64 8}
!257 = !{!256, !10, i64 4}
!258 = !{i64 0, i64 34359738368}
!259 = !{i64 0, i64 8, !64, i64 8, i64 8, !64}
!260 = !{i64 0, i64 8, !64}
!261 = distinct !{!261, !28}
!262 = !{!263, !11, i64 8}
!263 = !{!"", !11, i64 0, !11, i64 8, !8, i64 16}
!264 = distinct !{!264, !28}
!265 = !{!263, !11, i64 0}
!266 = distinct !{!266, !28}
!267 = distinct !{!267, !28}
!268 = distinct !{!268, !28}
!269 = distinct !{!269, !28}
!270 = !{!271, !8, i64 478}
!271 = !{!"rtl_data", !272, i64 0, !273, i64 40, !274, i64 96, !275, i64 112, !277, i64 208, !278, i64 248, !10, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !11, i64 400, !7, i64 408, !7, i64 416, !7, i64 424, !10, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !7, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!272 = !{!"expr_status", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!273 = !{!"emit_status", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !7, i64 48}
!274 = !{!"varasm_status", !7, i64 0, !10, i64 8}
!275 = !{!"incoming_args", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !276, i64 24, !7, i64 88}
!276 = !{!"ix86_args", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60}
!277 = !{!"function_subsections", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!278 = !{!"rtl_eh", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48}
!279 = distinct !{!279, !28}
!280 = !{!52, !7, i64 1128}
!281 = !{!282, !10, i64 0}
!282 = !{!"VEC_address_cost_data_base", !10, i64 0, !10, i64 4, !8, i64 8}
!283 = !{!282, !10, i64 4}
!284 = distinct !{!284, !28}
!285 = !{!113, !10, i64 4}
!286 = !{!32, !10, i64 52}
!287 = distinct !{!287, !28}
!288 = distinct !{!288, !28}
!289 = distinct !{!289, !28}
!290 = !{i64 0, i64 4, !38, i64 4, i64 4, !38}
!291 = !{!143, !7, i64 24}
!292 = distinct !{!292, !28}
!293 = distinct !{!293, !28}
!294 = !{!98, !7, i64 8}
!295 = distinct !{!295, !28}
!296 = distinct !{!296, !28}
!297 = distinct !{!297, !28}
!298 = !{!157, !10, i64 4}
!299 = !{!157, !10, i64 0}
!300 = distinct !{!300, !28}
!301 = distinct !{!301, !28}
!302 = distinct !{!302, !28}
!303 = !{!304, !7, i64 0}
!304 = !{!"iv_ca_delta", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!305 = !{!304, !7, i64 8}
!306 = !{!304, !7, i64 16}
!307 = !{!304, !7, i64 24}
!308 = !{!157, !10, i64 36}
!309 = !{!157, !10, i64 32}
!310 = !{!157, !10, i64 48}
!311 = distinct !{!311, !28}
!312 = distinct !{!312, !28}
!313 = distinct !{!313, !28}
!314 = distinct !{!314, !28}
!315 = distinct !{!315, !28}
!316 = distinct !{!316, !28}
!317 = !{i64 0, i64 4, !38}
!318 = distinct !{!318, !28}
!319 = distinct !{!319, !28}
!320 = distinct !{!320, !28}
!321 = distinct !{!321, !28}
!322 = distinct !{!322, !28}
!323 = distinct !{!323, !28}
!324 = distinct !{!324, !28}
!325 = distinct !{!325, !28}
!326 = distinct !{!326, !28}
!327 = distinct !{!327, !28}
!328 = distinct !{!328, !28}
!329 = distinct !{!329, !28}
!330 = !{!206, !7, i64 8}
!331 = !{i32 101, i32 103}
!332 = distinct !{!332, !28}
!333 = !{!6, !10, i64 48}
