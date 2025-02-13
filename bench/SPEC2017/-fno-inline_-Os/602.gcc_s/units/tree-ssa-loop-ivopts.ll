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
%struct.VEC_iv_use_p_base = type { i32, i32, [1 x ptr] }
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
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@multiply_by_cost.costs = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [37 x i8] c"Multiplication by %d in %s costs %d\0A\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@multiplier_allowed_in_address_p.valid_mult_list = internal unnamed_addr global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.29 = private unnamed_addr constant [23 x i8] c"  allowed multipliers:\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
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
define dso_local ptr @single_dom_exit(ptr noundef %0) local_unnamed_addr #0 !prof !995 {
  %2 = tail call ptr @single_exit(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !996

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !997
  %6 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %5) #20
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr null, ptr %2, !prof !1004
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
define dso_local void @dump_iv(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1005 {
  %3 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1006
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 9, i64 1, ptr %0)
  %8 = load ptr, ptr %3, align 8, !tbaa !1006
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %8, i32 noundef 2) #20
  %9 = tail call i32 @fputc(i32 10, ptr %0)
  br label %10

10:                                               ; preds = %6, %2
  %11 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %0)
  %12 = load ptr, ptr %1, align 8, !tbaa !1008
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1009
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %14, i32 noundef 2) #20
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  %16 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1010
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %0)
  %21 = load ptr, ptr %1, align 8, !tbaa !1008
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 2) #20
  %22 = tail call i32 @fputc(i32 10, ptr %0)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 7, i64 1, ptr %0)
  br label %26

24:                                               ; preds = %10
  %25 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %0)
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %1, %24 ], [ %16, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !1011
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %28, i32 noundef 2) #20
  %29 = tail call i32 @fputc(i32 10, ptr %0)
  %30 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1012
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 14, i64 1, ptr %0)
  %35 = load ptr, ptr %30, align 8, !tbaa !1012
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %35, i32 noundef 2) #20
  %36 = tail call i32 @fputc(i32 10, ptr %0)
  br label %37

37:                                               ; preds = %33, %26
  %38 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 4
  %39 = load i8, ptr %38, align 8, !tbaa !1013
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
define dso_local void @dump_use(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1005 {
  %3 = load i32, ptr %1, align 8, !tbaa !1014
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %3) #21
  %5 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1016
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
  %17 = load ptr, ptr %16, align 8, !tbaa !1017
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %17, i32 noundef 0, i32 noundef 0) #20
  %18 = tail call i32 @fputc(i32 10, ptr %0)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 14, i64 1, ptr %0)
  %20 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !1018
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %21, align 8, !tbaa !1011
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %24, i32 noundef 2) #20
  br label %25

25:                                               ; preds = %23, %14
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  %27 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !1019
  tail call void @dump_iv(ptr noundef %0, ptr noundef %28) #21
  %29 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !1020
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %34 = load ptr, ptr %29, align 8, !tbaa !1020
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
define dso_local void @dump_uses(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1005 {
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
  br i1 %11, label %5, label %12, !llvm.loop !1021

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @n_iv_uses(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1023 !PGOFuncName !1024 {
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !1025
  %4 = tail call fastcc i32 @VEC_iv_use_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_use(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1027 !PGOFuncName !1028 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !1025
  %5 = tail call fastcc ptr @VEC_iv_use_p_base_index(ptr noundef %4, i32 noundef %1) #21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_use_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1023 !PGOFuncName !1029 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1030

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1031
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_iv_use_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1027 !PGOFuncName !1033 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cand(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1005 {
  %3 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !1034
  %5 = load i32, ptr %1, align 8, !tbaa !1036
  %6 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4, !tbaa !1037
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @.str.17, ptr @.str.19
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %5, ptr noundef nonnull %9) #21
  %11 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !1038
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 13, i64 1, ptr %0)
  %16 = load ptr, ptr %11, align 8, !tbaa !1038
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
  %23 = load i32, ptr %22, align 8, !tbaa !1039
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
  %28 = load ptr, ptr %27, align 8, !tbaa !1040
  %29 = load i32, ptr %28, align 8, !tbaa !1014
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %29) #21
  br label %40

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !1040
  %34 = load i32, ptr %33, align 8, !tbaa !1014
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
define dso_local zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %0) local_unnamed_addr #0 !prof !1041 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3, !prof !1042

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !1043
  %8 = trunc i64 %4 to i16
  switch i16 %8, label %13 [
    i16 141, label %9
    i16 23, label %36
  ], !prof !1044

9:                                                ; preds = %3
  %10 = lshr i64 %4, 22
  %11 = trunc i64 %10 to i8
  %12 = and i8 %11, 1
  br label %36

13:                                               ; preds = %3
  %14 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %36, !prof !1045

16:                                               ; preds = %13
  %17 = icmp eq i64 %5, 121
  br i1 %17, label %18, label %23, !prof !1046

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
  ], !prof !1047

24:                                               ; preds = %23, %23
  %25 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1009
  %27 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %26) #21, !range !1048
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36, !prof !1049

29:                                               ; preds = %24, %23
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1009
  %32 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %31) #21, !range !1048
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %36, !prof !1050

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
define internal zeroext i8 @idx_contains_abnormal_ssa_name_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #4 !prof !1005 !PGOFuncName !1051 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -45
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1009
  %12 = tail call fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef %11) #21, !range !1048
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1009
  %17 = tail call fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef %16) #21, !range !1048
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3, %14
  %20 = load ptr, ptr %1, align 8, !tbaa !1011
  %21 = tail call fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef %20) #21, !range !1048
  %22 = xor i8 %21, 1
  br label %23

23:                                               ; preds = %14, %9, %19
  %24 = phi i8 [ %22, %19 ], [ 0, %9 ], [ 0, %14 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @abnormal_ssa_name_p(ptr noundef readonly %0) unnamed_addr #5 !prof !1005 !PGOFuncName !1052 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1053 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !1054

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1290, ptr noundef nonnull @.str.13) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %40, !prof !1055

9:                                                ; preds = %6
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %22, !prof !1056

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1009
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !1057

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %16) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %40, !prof !1058

21:                                               ; preds = %18, %13
  br label %40

22:                                               ; preds = %9
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %24 = load i32, ptr %23, align 4, !tbaa !1043
  %25 = add i32 %24, -4
  %26 = icmp ult i32 %25, 7
  br i1 %26, label %27, label %40, !prof !1059

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %1) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %34, !prof !1060

30:                                               ; preds = %34
  %31 = zext i32 %28 to i64
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %40, label %34, !prof !1061, !llvm.loop !1062

34:                                               ; preds = %27, %30
  %35 = phi i64 [ %32, %30 ], [ 0, %27 ]
  %36 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !1009
  %38 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %37) #21, !range !1048
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %30, !prof !1063

40:                                               ; preds = %34, %30, %27, %22, %18, %6, %21
  %41 = phi i8 [ 1, %21 ], [ 1, %6 ], [ 0, %18 ], [ 0, %22 ], [ 1, %27 ], [ 0, %34 ], [ 1, %30 ]
  ret i8 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1053 !PGOFuncName !1064 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1065
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1069 !PGOFuncName !1070 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1009
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1071 !PGOFuncName !1072 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !1043
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13, !prof !1073

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1009
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !1009
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !1009
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1074 !PGOFuncName !1075 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1076

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1077
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @stmt_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1005 {
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
  %15 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %12) #21, !range !1048
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %10
  %18 = add nuw i32 %11, 1
  %19 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #21
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %10, label %21, !llvm.loop !1079

21:                                               ; preds = %14, %17, %6
  %22 = phi i8 [ 1, %6 ], [ 1, %17 ], [ 0, %14 ]
  ret i8 %22
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1080 !PGOFuncName !1081 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !1009
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1082 !PGOFuncName !1083 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !1048
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1084

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !1011
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1085 !PGOFuncName !1086 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !1087
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !1088 !PGOFuncName !1089 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !1090
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1091

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1622, ptr noundef nonnull @.str.13) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1092 !PGOFuncName !1093 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1088 !PGOFuncName !1094 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !1087
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !1088 !PGOFuncName !1095 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !1043
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @tree_int_cst_sign_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !1096 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1009
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %9, label %11, !prof !1097

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %13 = add nsw i32 %6, -65
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %7, %9 ], [ %13, %11 ]
  %16 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %17 = load i64, ptr %16, align 8, !tbaa !1009
  %18 = zext nneg i32 %15 to i64
  %19 = lshr i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 1
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @multiply_by_cost(i64 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !1098 {
  %4 = alloca %struct.mbc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr @multiply_by_cost.costs, align 8, !tbaa !1011
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !1099

7:                                                ; preds = %3
  %8 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @mbc_entry_hash, ptr noundef nonnull @mbc_entry_eq, ptr noundef nonnull @free) #20
  store ptr %8, ptr @multiply_by_cost.costs, align 8, !tbaa !1011
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.mbc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !1100
  store i64 %0, ptr %4, align 8, !tbaa !1102
  %12 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 1) #20
  %13 = load ptr, ptr %12, align 8, !tbaa !1011
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !1103

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mbc_entry, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !1104
  br label %41

18:                                               ; preds = %9
  %19 = call ptr @xmalloc(i64 noundef 16) #20
  store ptr %19, ptr %12, align 8, !tbaa !1011
  %20 = getelementptr inbounds %struct.mbc_entry, ptr %19, i64 0, i32 1
  store i32 %1, ptr %20, align 8, !tbaa !1100
  store i64 %0, ptr %19, align 8, !tbaa !1102
  call void @start_sequence() #20
  %21 = call ptr @gen_raw_REG(i32 noundef %1, i32 noundef 58) #20
  %22 = call ptr @gen_int_mode(i64 noundef %0, i32 noundef %1) #20
  %23 = call ptr @expand_mult(i32 noundef %1, ptr noundef %21, ptr noundef %22, ptr noundef null, i32 noundef 0) #20
  %24 = call ptr @get_insns() #20
  call void @end_sequence() #20
  %25 = call fastcc i32 @seq_cost(ptr noundef %24, i8 noundef zeroext %2) #21
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28, !prof !1105

28:                                               ; preds = %18
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = trunc i64 %0 to i32
  %34 = zext i32 %1 to i64
  %35 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !1011
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.28, i32 noundef %33, ptr noundef %36, i32 noundef %25) #21
  br label %38

38:                                               ; preds = %32, %28, %18
  %39 = load ptr, ptr %12, align 8, !tbaa !1011
  %40 = getelementptr inbounds %struct.mbc_entry, ptr %39, i64 0, i32 2
  store i32 %25, ptr %40, align 4, !tbaa !1104
  br label %41

41:                                               ; preds = %38, %15
  %42 = phi i32 [ %17, %15 ], [ %25, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mbc_entry_hash(ptr nocapture noundef readonly %0) #5 !prof !1098 !PGOFuncName !1106 {
  %2 = getelementptr inbounds %struct.mbc_entry, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !1100
  %4 = mul i32 %3, 57
  %5 = load i64, ptr %0, align 8, !tbaa !1102
  %6 = srem i64 %5, 877
  %7 = trunc i64 %6 to i32
  %8 = add i32 %4, %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mbc_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !1107 !PGOFuncName !1108 {
  %3 = getelementptr inbounds %struct.mbc_entry, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !1100
  %5 = getelementptr inbounds %struct.mbc_entry, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !1100
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %13, !prof !1109

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8, !tbaa !1102
  %10 = load i64, ptr %1, align 8, !tbaa !1102
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #7

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
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1110 !PGOFuncName !1111 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4, !prof !1112

4:                                                ; preds = %2, %23
  %5 = phi ptr [ %27, %23 ], [ %0, %2 ]
  %6 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %23, !prof !1113

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1009
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %20, label %17, !prof !1114

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !1115

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %22 = tail call i32 @rtx_cost(ptr noundef nonnull %21, i32 noundef 23, i8 noundef zeroext %1) #20
  br label %23

23:                                               ; preds = %4, %17, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %17 ], [ 1, %4 ]
  %25 = add i32 %24, %6
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !1009
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !prof !1116, !llvm.loop !1117

29:                                               ; preds = %23, %2
  %30 = phi i32 [ 0, %2 ], [ %25, %23 ]
  ret i32 %30
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !1118 {
  %4 = zext i8 %2 to i32
  %5 = mul nuw nsw i32 %4, 87
  %6 = add nsw i32 %5, %1
  %7 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  %8 = tail call fastcc i32 @VEC_sbitmap_base_length(ptr noundef %7) #21
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %13, label %10, !prof !1119

10:                                               ; preds = %3
  %11 = add i32 %6, 1
  tail call fastcc void @VEC_sbitmap_heap_safe_grow_cleared(i32 noundef %11) #21
  %12 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %7, %3 ]
  %15 = tail call fastcc ptr @VEC_sbitmap_base_index(ptr noundef %14, i32 noundef %6) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %68, !prof !1120

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !1121
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
  store ptr %26, ptr %23, align 8, !tbaa !1009
  %27 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %22, i8 noundef zeroext %2) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !1133

29:                                               ; preds = %24
  %30 = trunc i64 %25 to i32
  %31 = add i32 %30, 128
  tail call fastcc void @SET_BIT(ptr noundef %21, i32 noundef %31) #21
  br label %32

32:                                               ; preds = %24, %29
  %33 = add nsw i64 %25, 1
  %34 = icmp eq i64 %33, 129
  br i1 %34, label %35, label %24, !prof !1134, !llvm.loop !1135

35:                                               ; preds = %32
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38, !prof !1136

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 22, i64 1, ptr nonnull %36)
  br label %44

44:                                               ; preds = %42, %58
  %45 = phi i64 [ -128, %42 ], [ %59, %58 ]
  %46 = add nsw i64 %45, 128
  %47 = lshr i64 %46, 6
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !1090
  %50 = and i64 %45, 63
  %51 = shl nuw i64 1, %50
  %52 = and i64 %49, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %56 = trunc i64 %45 to i32
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.30, i32 noundef %56) #21
  br label %58

58:                                               ; preds = %44, %54
  %59 = add nsw i64 %45, 1
  %60 = icmp eq i64 %59, 129
  br i1 %60, label %61, label %44, !llvm.loop !1137

61:                                               ; preds = %58
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %63 = tail call i32 @fputc(i32 10, ptr %62)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !1011
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
  br i1 %71, label %81, label %72, !prof !1138

72:                                               ; preds = %68
  %73 = add nsw i64 %0, 128
  %74 = lshr i64 %73, 6
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %69, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !1090
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
define internal fastcc i32 @VEC_sbitmap_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1139 !PGOFuncName !1140 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1141

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1142
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sbitmap_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !1144 !PGOFuncName !1145 {
  %2 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !1011
  %3 = tail call fastcc i32 @VEC_sbitmap_base_length(ptr noundef %2) #21
  tail call fastcc void @VEC_sbitmap_heap_safe_grow(i32 noundef %0) #21
  %4 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !1011
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
define internal fastcc ptr @VEC_sbitmap_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1118 !PGOFuncName !1146 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
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
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !1147 !PGOFuncName !1148 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1151

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
  %15 = load i64, ptr %14, align 8, !tbaa !1090
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !1009
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !1009
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !1090
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !1090
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_sbitmap_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !1152 !PGOFuncName !1153 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !1011
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sbitmap_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !1144 !PGOFuncName !1154 {
  %2 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !1155

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !1142
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sbitmap_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !1011, !nonnull !1156, !noundef !1156
  store i32 %0, ptr %9, align 8, !tbaa !1142
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sbitmap_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !1144 !PGOFuncName !1157 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1158
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sbitmap_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !1144 !PGOFuncName !1159 {
  %2 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !1011
  %3 = tail call fastcc i32 @VEC_sbitmap_base_space(ptr noundef %2, i32 noundef %0) #21, !range !1160
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1161

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !1011
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sbitmap_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1144 !PGOFuncName !1162 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1155

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1163
  %7 = load i32, ptr %0, align 8, !tbaa !1142
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_ssa_iv_optimize() local_unnamed_addr #0 !prof !1164 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ivopts_data, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call fastcc void @tree_ssa_iv_optimize_init(ptr noundef nonnull %2) #21
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1) #21
  %4 = load ptr, ptr %1, align 8, !tbaa !1011
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !1165

6:                                                ; preds = %0, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %0 ]
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !1166

10:                                               ; preds = %6
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call void @flow_loop_dump(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i32 noundef 1) #20
  br label %15

15:                                               ; preds = %14, %10, %6
  call fastcc void @tree_ssa_iv_optimize_loop(ptr noundef nonnull %2, ptr noundef nonnull %7) #21
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #21
  %16 = load ptr, ptr %1, align 8, !tbaa !1011
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !prof !1167, !llvm.loop !1168

18:                                               ; preds = %15, %0
  call fastcc void @tree_ssa_iv_optimize_finalize(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_iv_optimize_init(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !1164 !PGOFuncName !1169 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1170
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1172
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #21
  %8 = shl i32 %7, 1
  %9 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !1176
  %10 = zext i32 %8 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 32) #20
  %12 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !1177
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %14 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !1178
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %16 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !1179
  %17 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  store i32 0, ptr %17, align 8, !tbaa !1180
  %18 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !1181
  %19 = tail call fastcc ptr @VEC_iv_use_p_heap_alloc() #21
  %20 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !1025
  %21 = tail call fastcc ptr @VEC_iv_cand_p_heap_alloc() #21
  %22 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  store ptr %21, ptr %22, align 8, !tbaa !1182
  %23 = tail call fastcc ptr @VEC_tree_heap_alloc() #21
  store ptr %23, ptr @decl_rtl_to_reset, align 8, !tbaa !1011
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1164 !PGOFuncName !1183 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !1184
  %4 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !1186
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !1187

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !1188
  store ptr null, ptr %1, align 8, !tbaa !1011
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #21
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #21
  store ptr %11, ptr %0, align 8, !tbaa !1188
  %12 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1186
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1189
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !1191
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !1192, !llvm.loop !1193

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !1194
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28, !prof !1195

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !1188
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #21
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !1196
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !1197

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !1191
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !prof !1198, !llvm.loop !1199

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !1200

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
define internal fastcc void @tree_ssa_iv_optimize_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1201 !PGOFuncName !1202 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1181
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !1166

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5787, ptr noundef nonnull @.str.13) #20
  br label %8

8:                                                ; preds = %2, %7
  store ptr %1, ptr %0, align 8, !tbaa !1203
  %9 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %1) #20
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  store i8 %9, ptr %10, align 1, !tbaa !1204
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13, !prof !1166

13:                                               ; preds = %8
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 8, !tbaa !1194
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.31, i32 noundef %18) #21
  %20 = tail call ptr @single_dom_exit(ptr noundef nonnull %1) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %24 = load ptr, ptr %20, align 8, !tbaa !997
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !1205
  %27 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !1207
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !1205
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.32, i32 noundef %26, i32 noundef %30) #21
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %33 = load ptr, ptr %20, align 8, !tbaa !997
  %34 = tail call ptr @last_stmt(ptr noundef %33) #20
  tail call void @print_gimple_stmt(ptr noundef %32, ptr noundef %34, i32 noundef 0, i32 noundef 2) #20
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %36 = tail call i32 @fputc(i32 10, ptr %35)
  br label %37

37:                                               ; preds = %22, %17
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %39 = tail call i32 @fputc(i32 10, ptr %38)
  br label %40

40:                                               ; preds = %37, %13, %8
  %41 = tail call ptr @get_loop_body(ptr noundef %1) #20
  %42 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !1208
  tail call void @renumber_gimple_stmt_uids_in_blocks(ptr noundef %41, i32 noundef %43) #20
  tail call void @free(ptr noundef %41) #21
  %44 = tail call fastcc zeroext i8 @find_induction_variables(ptr noundef nonnull %0) #21, !range !1048
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46, !prof !1209

46:                                               ; preds = %40
  tail call fastcc void @find_interesting_uses(ptr noundef nonnull %0) #21
  %47 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %48 = load ptr, ptr @compiler_params, align 8, !tbaa !1011
  %49 = getelementptr inbounds %struct.param_info, ptr %48, i64 61, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !1210
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %56, label %52, !prof !1212

52:                                               ; preds = %46
  tail call fastcc void @find_iv_candidates(ptr noundef nonnull %0) #21
  tail call fastcc void @determine_iv_costs(ptr noundef nonnull %0) #21
  tail call fastcc void @determine_use_iv_costs(ptr noundef nonnull %0) #21
  tail call fastcc void @determine_set_costs(ptr noundef nonnull %0) #21
  %53 = tail call fastcc ptr @find_optimal_iv_set(ptr noundef nonnull %0) #21
  store ptr %53, ptr %3, align 8, !tbaa !1011
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !1212

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
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1213 !PGOFuncName !1214 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !1184
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !1188
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #21, !range !1160
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !1215

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !1184
  %13 = load i32, ptr %3, align 4, !tbaa !1043
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #21
  store ptr %14, ptr %1, align 8, !tbaa !1011
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !1216, !llvm.loop !1217

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #21
  store ptr null, ptr %1, align 8, !tbaa !1011
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_iv_optimize_finalize(ptr nocapture noundef %0) unnamed_addr #0 !prof !1164 !PGOFuncName !1218 {
  tail call fastcc void @free_loop_data(ptr noundef %0) #21
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1177
  tail call void @free(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !1178
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  store ptr null, ptr %4, align 8, !tbaa !1178
  %6 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !1179
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %6, align 8, !tbaa !1179
  tail call fastcc void @VEC_tree_heap_free() #21
  %8 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  tail call fastcc void @VEC_iv_use_p_heap_free(ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_iv_cand_p_heap_free(ptr noundef nonnull %9) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1219 !PGOFuncName !1220 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1221

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1222
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
define internal fastcc ptr @VEC_iv_use_p_heap_alloc() unnamed_addr #0 !prof !1164 !PGOFuncName !1224 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_iv_cand_p_heap_alloc() unnamed_addr #0 !prof !1164 !PGOFuncName !1225 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !1164 !PGOFuncName !1226 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1164 !PGOFuncName !1227 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 !prof !1164 !PGOFuncName !1228 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1187

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1229
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #21
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !1201 !PGOFuncName !1230 {
  %3 = load i32, ptr %0, align 4, !tbaa !1231
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1231
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !1043
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1233 !PGOFuncName !1234 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1065
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !1235

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
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1236 !PGOFuncName !1237 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
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
define internal fastcc noundef zeroext i8 @find_induction_variables(ptr nocapture noundef %0) unnamed_addr #0 !prof !1201 !PGOFuncName !1238 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call fastcc zeroext i8 @find_bivs(ptr noundef %0) #21, !range !1048
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %40, label %6, !prof !1209

6:                                                ; preds = %1
  tail call fastcc void @find_givs(ptr noundef %0) #21
  tail call fastcc void @mark_bivs(ptr noundef %0) #21
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9, !prof !1239

9:                                                ; preds = %6
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @niter_for_single_dom_exit(ptr noundef %0) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %18 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 23, i64 1, ptr %17)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  tail call void @print_generic_expr(ptr noundef %19, ptr noundef nonnull %14, i32 noundef 2) #20
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %21 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %20)
  br label %22

22:                                               ; preds = %16, %13
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %24 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 22, i64 1, ptr %23)
  %25 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !1178
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull %2) #21
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22, %37
  %30 = load i32, ptr %2, align 4, !tbaa !1043
  %31 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %30) #21
  %32 = getelementptr inbounds %struct.version_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !1240
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  tail call void @dump_iv(ptr noundef %36, ptr noundef nonnull %33) #21
  br label %37

37:                                               ; preds = %29, %35
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %29, !llvm.loop !1242

40:                                               ; preds = %37, %22, %6, %9, %1
  %41 = phi i8 [ 0, %1 ], [ 1, %9 ], [ 1, %6 ], [ 1, %22 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1244 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %8 = load ptr, ptr %0, align 8, !tbaa !1203
  %9 = tail call ptr @get_loop_body(ptr noundef %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !1239

12:                                               ; preds = %1
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr nonnull %10)
  br label %18

18:                                               ; preds = %16, %12, %1
  %19 = load ptr, ptr %0, align 8, !tbaa !1203
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !1208
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %80, label %23, !prof !1245

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  br label %25

25:                                               ; preds = %23, %71
  %26 = phi i64 [ 0, %23 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !1011
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !1246
  store ptr %30, ptr %24, align 8, !tbaa.struct !1247
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %4) #21, !range !1048
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %53, label %33, !prof !1248

33:                                               ; preds = %25, %48
  %34 = load ptr, ptr %4, align 8, !tbaa !1011
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !1207
  %37 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !1249
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !1250
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %48, label %43, !prof !1252

43:                                               ; preds = %33
  %44 = load ptr, ptr %0, align 8, !tbaa !1203
  %45 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %44, ptr noundef %36) #20
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !1253

47:                                               ; preds = %43
  call fastcc void @find_interesting_uses_outside(ptr noundef nonnull %0, ptr noundef nonnull %34) #21
  br label %48

48:                                               ; preds = %33, %43, %47
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %24, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #21, !range !1048
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %33, !prof !1254, !llvm.loop !1255

53:                                               ; preds = %48, %25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %28) #20
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60, !prof !1256

56:                                               ; preds = %53, %56
  %57 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  call fastcc void @find_interesting_uses_stmt(ptr noundef nonnull %0, ptr noundef %57) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %58 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %56, label %60, !prof !1257, !llvm.loop !1258

60:                                               ; preds = %56, %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %28) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1259
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %71, !prof !1260

63:                                               ; preds = %60, %68
  %64 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %65 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %64) #21, !range !1048
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68, !prof !1261

67:                                               ; preds = %63
  call fastcc void @find_interesting_uses_stmt(ptr noundef nonnull %0, ptr noundef %64) #21
  br label %68

68:                                               ; preds = %63, %67
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %63, label %71, !prof !1262, !llvm.loop !1263

71:                                               ; preds = %68, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  %72 = add nuw nsw i64 %26, 1
  %73 = load ptr, ptr %0, align 8, !tbaa !1203
  %74 = getelementptr inbounds %struct.loop, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !1208
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %25, label %78, !prof !1264, !llvm.loop !1265

78:                                               ; preds = %71
  %79 = trunc i64 %72 to i32
  br label %80

80:                                               ; preds = %78, %18
  %81 = phi i32 [ 0, %18 ], [ %79, %78 ]
  store i32 %81, ptr %3, align 4, !tbaa !1043
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84, !prof !1239

84:                                               ; preds = %80
  %85 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  %89 = call i32 @fputc(i32 10, ptr nonnull %82)
  %90 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !1178
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %91, ptr noundef nonnull %3) #21
  %92 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %3) #21, !range !1048
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %88, %112
  %95 = load i32, ptr %3, align 4, !tbaa !1043
  %96 = call fastcc ptr @ver_info(ptr noundef nonnull %0, i32 noundef %95) #21
  %97 = getelementptr inbounds %struct.version_info, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !1266
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %102 = call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %101)
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %104 = load ptr, ptr %96, align 8, !tbaa !1267
  call void @print_generic_expr(ptr noundef %103, ptr noundef %104, i32 noundef 2) #20
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %106 = load i32, ptr %97, align 4, !tbaa !1266
  %107 = getelementptr inbounds %struct.version_info, ptr %96, i64 0, i32 2
  %108 = load i8, ptr %107, align 8, !tbaa !1268
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, ptr @.str.39, ptr @.str.17
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.38, i32 noundef %106, ptr noundef nonnull %110) #21
  br label %112

112:                                              ; preds = %94, %100
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %3) #21
  %113 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %3) #21, !range !1048
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %94, !llvm.loop !1269

115:                                              ; preds = %112, %88
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !1011
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
define internal fastcc void @find_iv_candidates(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1270 {
  tail call fastcc void @add_standard_iv_candidates(ptr noundef %0) #21
  tail call fastcc void @add_old_ivs_candidates(ptr noundef %0) #21
  tail call fastcc void @add_derived_ivs_candidates(ptr noundef %0) #21
  tail call fastcc void @set_autoinc_for_original_candidates(ptr noundef %0) #21
  tail call fastcc void @record_important_candidates(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_iv_costs(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1271 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !1239

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 17, i64 1, ptr nonnull %2)
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %11 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 12, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %8, %4, %1
  %13 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15, !prof !1245

15:                                               ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %17 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %16) #21
  tail call fastcc void @determine_iv_cost(ptr noundef %0, ptr noundef %17) #21
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20, !prof !1272

20:                                               ; preds = %15
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.iv_cand, ptr %17, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !1273
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.66, i32 noundef %16, i32 noundef %26) #21
  br label %28

28:                                               ; preds = %24, %20, %15
  %29 = add nuw i32 %16, 1
  %30 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %15, label %32, !prof !1274, !llvm.loop !1275

32:                                               ; preds = %28, %12
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35, !prof !1239

35:                                               ; preds = %32
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !1043
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
define internal fastcc void @determine_use_iv_costs(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1276 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  tail call fastcc void @alloc_use_cost_map(ptr noundef %0) #21
  %5 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7, !prof !1245

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  br label %9

9:                                                ; preds = %7, %46
  %10 = phi i32 [ 0, %7 ], [ %47, %46 ]
  %11 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %10) #21
  %12 = load i8, ptr %8, align 4, !tbaa !1277
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14, !prof !1278

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @n_iv_cands(ptr noundef nonnull %0) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17, !prof !1279

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %21, %17 ], [ 0, %14 ]
  %19 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %18) #21
  %20 = tail call fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef %11, ptr noundef %19) #21, !range !1048
  %21 = add nuw i32 %18, 1
  %22 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %17, label %44, !prof !1280, !llvm.loop !1281

24:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %25 = getelementptr inbounds %struct.iv_use, ptr %11, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !1020
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull %2) #21
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %41, label %29, !prof !1282

29:                                               ; preds = %24, %36
  %30 = load i32, ptr %2, align 4, !tbaa !1043
  %31 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %30) #21
  %32 = tail call fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef %11, ptr noundef %31) #21, !range !1048
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36, !prof !1283

34:                                               ; preds = %29
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %30) #20
  br label %36

36:                                               ; preds = %29, %34
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %29, !prof !1284, !llvm.loop !1285

39:                                               ; preds = %36
  %40 = load ptr, ptr %25, align 8, !tbaa !1020
  br label %41

41:                                               ; preds = %39, %24
  %42 = phi ptr [ %40, %39 ], [ %26, %24 ]
  %43 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %42, ptr noundef %4) #20
  tail call void @bitmap_clear(ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br label %46

44:                                               ; preds = %17, %14
  %45 = phi i32 [ 0, %14 ], [ %21, %17 ]
  store i32 %45, ptr %2, align 4, !tbaa !1043
  br label %46

46:                                               ; preds = %44, %41
  %47 = add nuw i32 %10, 1
  %48 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %9, label %50, !prof !1286, !llvm.loop !1287

50:                                               ; preds = %46, %1
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %52 = icmp eq ptr %51, null
  br i1 %52, label %116, label %53, !prof !1239

53:                                               ; preds = %50
  %54 = load i32, ptr @dump_flags, align 4, !tbaa !1043
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
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.68, i32 noundef %62) #21
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %67 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %66)
  %68 = getelementptr inbounds %struct.iv_use, ptr %63, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !1288
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.iv_use, ptr %63, i64 0, i32 7
  br label %73

73:                                               ; preds = %71, %102
  %74 = phi i32 [ %69, %71 ], [ %103, %102 ]
  %75 = phi i64 [ 0, %71 ], [ %104, %102 ]
  %76 = load ptr, ptr %72, align 8, !tbaa !1289
  %77 = getelementptr inbounds %struct.cost_pair, ptr %76, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !1290
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.cost_pair, ptr %76, i64 %75, i32 1
  %82 = load i64, ptr %81, align 8
  %83 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %82) #21, !range !1048
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = lshr i64 %82, 32
  %87 = trunc i64 %86 to i32
  %88 = trunc i64 %82 to i32
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %90 = load i32, ptr %78, align 8, !tbaa !1036
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.70, i32 noundef %90, i32 noundef %88, i32 noundef %87) #21
  %92 = load ptr, ptr %72, align 8, !tbaa !1289
  %93 = getelementptr inbounds %struct.cost_pair, ptr %92, i64 %75, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !1293
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  tail call void @bitmap_print(ptr noundef %97, ptr noundef nonnull %94, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #20
  br label %98

98:                                               ; preds = %96, %85
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %100 = tail call i32 @fputc(i32 10, ptr %99)
  %101 = load i32, ptr %68, align 8, !tbaa !1288
  br label %102

102:                                              ; preds = %73, %80, %98
  %103 = phi i32 [ %74, %73 ], [ %74, %80 ], [ %101, %98 ]
  %104 = add nuw nsw i64 %75, 1
  %105 = zext i32 %103 to i64
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %73, label %107, !llvm.loop !1294

107:                                              ; preds = %102, %61
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %109 = tail call i32 @fputc(i32 10, ptr %108)
  %110 = add nuw i32 %62, 1
  %111 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %61, label %113, !llvm.loop !1295

113:                                              ; preds = %107, %57
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %115 = tail call i32 @fputc(i32 10, ptr %114)
  br label %116

116:                                              ; preds = %113, %53, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_set_costs(ptr nocapture noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1296 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !1203
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8, !prof !1239

8:                                                ; preds = %1
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 14, i64 1, ptr nonnull %6)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %15 = load i32, ptr @target_avail_regs, align 4, !tbaa !1043
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.72, i32 noundef %15) #21
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %18 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %19 = load i8, ptr %18, align 1, !tbaa !1204
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !1043
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.73, i32 noundef %22) #21
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %25 = load i8, ptr %18, align 1, !tbaa !1204
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !1043
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.74, i32 noundef %28) #21
  br label %30

30:                                               ; preds = %12, %8, %1
  %31 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !1297
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %32) #20
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !1048
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %51, !prof !1298

35:                                               ; preds = %30, %47
  %36 = phi i32 [ %48, %47 ], [ 0, %30 ]
  %37 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %38 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %37) #21
  %39 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %38) #21
  %40 = call zeroext i8 @is_gimple_reg(ptr noundef %39) #20
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %47, label %42, !prof !1299

42:                                               ; preds = %35
  %43 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %39) #21
  %44 = icmp eq ptr %43, null
  %45 = zext i1 %44 to i32
  %46 = add i32 %36, %45
  br label %47

47:                                               ; preds = %42, %35
  %48 = phi i32 [ %36, %35 ], [ %46, %42 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %49 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !1048
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %35, label %51, !prof !1300, !llvm.loop !1301

51:                                               ; preds = %47, %30
  %52 = phi i32 [ 0, %30 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !1178
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %54, ptr noundef nonnull %2) #21
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !1048
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %74, label %57, !prof !1245

57:                                               ; preds = %51, %70
  %58 = phi i32 [ %71, %70 ], [ %52, %51 ]
  %59 = load i32, ptr %2, align 4, !tbaa !1043
  %60 = call fastcc ptr @ver_info(ptr noundef nonnull %0, i32 noundef %59) #21
  %61 = getelementptr inbounds %struct.version_info, ptr %60, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !1266
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64, !prof !1302

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.version_info, ptr %60, i64 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !1268
  %67 = icmp ne i8 %66, 0
  %68 = zext i1 %67 to i32
  %69 = add i32 %58, %68
  br label %70

70:                                               ; preds = %64, %57
  %71 = phi i32 [ %58, %57 ], [ %69, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #21
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !1048
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %57, !prof !1303, !llvm.loop !1304

74:                                               ; preds = %70, %51
  %75 = phi i32 [ %52, %51 ], [ %71, %70 ]
  %76 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  store i32 %75, ptr %76, align 8, !tbaa !1305
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %78 = icmp eq ptr %77, null
  br i1 %78, label %108, label %79, !prof !1239

79:                                               ; preds = %74
  %80 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.75, i32 noundef %75) #21
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %86 = icmp eq ptr %85, null
  br i1 %86, label %108, label %87, !prof !1306

87:                                               ; preds = %79, %83
  %88 = phi ptr [ %85, %83 ], [ %77, %79 ]
  %89 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %87
  %93 = call i64 @fwrite(ptr nonnull @.str.76, i64 17, i64 1, ptr nonnull %88)
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %95 = call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr %94)
  br label %96

96:                                               ; preds = %92, %96
  %97 = phi i32 [ 0, %92 ], [ %101, %96 ]
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %99 = call fastcc i32 @ivopts_global_cost_for_size(ptr noundef nonnull %0, i32 noundef %97) #21
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.66, i32 noundef %97, i32 noundef %99) #21
  %101 = add nuw i32 %97, 1
  %102 = load i32, ptr @target_avail_regs, align 4, !tbaa !1043
  %103 = shl i32 %102, 1
  %104 = icmp ult i32 %97, %103
  br i1 %104, label %96, label %105, !llvm.loop !1307

105:                                              ; preds = %96
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %107 = call i32 @fputc(i32 10, ptr %106)
  br label %108

108:                                              ; preds = %74, %105, %87, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_optimal_iv_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1308 {
  %2 = tail call fastcc ptr @get_initial_solution(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %5 = icmp eq ptr %4, null
  br i1 %3, label %6, label %13, !prof !1212

6:                                                ; preds = %1
  br i1 %5, label %62, label %7

7:                                                ; preds = %6
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 38, i64 1, ptr nonnull %4)
  br label %62

13:                                               ; preds = %1
  br i1 %5, label %21, label %14, !prof !1239

14:                                               ; preds = %13
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 27, i64 1, ptr nonnull %4)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  tail call fastcc void @iv_ca_dump(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %2) #21
  br label %21

21:                                               ; preds = %18, %14, %13
  %22 = tail call fastcc zeroext i8 @try_improve_iv_set(ptr noundef %0, ptr noundef nonnull %2) #21, !range !1048
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24, !prof !1309

24:                                               ; preds = %21, %34
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27, !prof !1310

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 13, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  tail call fastcc void @iv_ca_dump(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %2) #21
  br label %34

34:                                               ; preds = %31, %27, %24
  %35 = tail call fastcc zeroext i8 @try_improve_iv_set(ptr noundef %0, ptr noundef nonnull %2) #21, !range !1048
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %24, !prof !1311, !llvm.loop !1312

37:                                               ; preds = %34, %21
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40, !prof !1239

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !1043
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
  br i1 %52, label %62, label %53, !prof !1245

53:                                               ; preds = %50, %53
  %54 = phi i32 [ %59, %53 ], [ 0, %50 ]
  %55 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %54) #21
  %56 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef nonnull %2, ptr noundef %55) #21
  %57 = load ptr, ptr %56, align 8, !tbaa !1290
  %58 = getelementptr inbounds %struct.iv_use, ptr %55, i64 0, i32 8
  store ptr %57, ptr %58, align 8, !tbaa !1313
  %59 = add nuw i32 %54, 1
  %60 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %53, label %62, !prof !1286, !llvm.loop !1314

62:                                               ; preds = %53, %50, %6, %7, %11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_ivs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1243 !PGOFuncName !1315 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !1316
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !1048
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !1245

9:                                                ; preds = %2, %9
  %10 = load i32, ptr %3, align 4, !tbaa !1043
  %11 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %10) #21
  tail call fastcc void @create_new_iv(ptr noundef %0, ptr noundef %11) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !1048
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %9, !prof !1318, !llvm.loop !1319

14:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1320 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1321
  tail call void @free(ptr noundef %4) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !1011
  %6 = getelementptr inbounds %struct.iv_ca, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1322
  tail call void @free(ptr noundef %7) #21
  %8 = load ptr, ptr %0, align 8, !tbaa !1011
  %9 = getelementptr inbounds %struct.iv_ca, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !1316
  tail call void @bitmap_obstack_free(ptr noundef %10) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !1011
  %12 = getelementptr inbounds %struct.iv_ca, ptr %11, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !1316
  %13 = load ptr, ptr %0, align 8, !tbaa !1011
  %14 = getelementptr inbounds %struct.iv_ca, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !1323
  tail call void @free(ptr noundef %15) #21
  %16 = load ptr, ptr %0, align 8, !tbaa !1011
  tail call void @free(ptr noundef %16) #21
  store ptr null, ptr %0, align 8, !tbaa !1011
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_uses(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1324 {
  %2 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4, !prof !1245

4:                                                ; preds = %1, %11
  %5 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %6 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !1313
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !1325

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5654, ptr noundef nonnull @.str.13) #20
  br label %11

11:                                               ; preds = %4, %10
  tail call fastcc void @rewrite_use(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %8) #21
  %12 = add nuw i32 %5, 1
  %13 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %4, label %15, !prof !1326, !llvm.loop !1327

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unused_ivs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1328 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !1178
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %2) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %42, label %9, !prof !1245

9:                                                ; preds = %1, %39
  %10 = load i32, ptr %2, align 4, !tbaa !1043
  %11 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %10) #21
  %12 = getelementptr inbounds %struct.version_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1240
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15, !prof !1329

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.iv, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1010
  %18 = tail call i32 @integer_zerop(ptr noundef %17) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39, !prof !1330

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.version_info, ptr %11, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !1266
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39, !prof !1331

24:                                               ; preds = %20
  %25 = load ptr, ptr %12, align 8, !tbaa !1240
  %26 = getelementptr inbounds %struct.iv, ptr %25, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !1332
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %39, !prof !1333

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.version_info, ptr %11, i64 0, i32 4
  %31 = load i8, ptr %30, align 8, !tbaa !1334
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39, !prof !1335

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.iv, ptr %25, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !1006
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !1009
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %37) #20
  br label %39

39:                                               ; preds = %33, %29, %24, %20, %15, %9
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %9, !prof !1303, !llvm.loop !1336

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
define internal fastcc void @free_loop_data(ptr nocapture noundef %0) unnamed_addr #0 !prof !1213 !PGOFuncName !1337 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1181
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !1338

8:                                                ; preds = %1
  tail call void @pointer_map_destroy(ptr noundef nonnull %6) #20
  store ptr null, ptr %5, align 8, !tbaa !1181
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !1178
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %11, ptr noundef nonnull %2) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14, !prof !1339

14:                                               ; preds = %9, %21
  %15 = load i32, ptr %2, align 4, !tbaa !1043
  %16 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1240
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !1329

20:                                               ; preds = %14
  tail call void @free(ptr noundef nonnull %18) #21
  br label %21

21:                                               ; preds = %20, %14
  store ptr null, ptr %17, align 8, !tbaa !1240
  %22 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 2
  store i8 0, ptr %22, align 8, !tbaa !1268
  %23 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 4
  store i8 0, ptr %23, align 8, !tbaa !1334
  %24 = getelementptr inbounds %struct.version_info, ptr %16, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !1266
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %14, !prof !1340, !llvm.loop !1341

27:                                               ; preds = %21
  %28 = load ptr, ptr %10, align 8, !tbaa !1178
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi ptr [ %28, %27 ], [ %11, %9 ]
  tail call void @bitmap_clear(ptr noundef %30) #20
  %31 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !1179
  tail call void @bitmap_clear(ptr noundef %32) #20
  %33 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %69, label %35, !prof !1339

35:                                               ; preds = %29, %64
  %36 = phi i32 [ %66, %64 ], [ 0, %29 ]
  %37 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %36) #21
  %38 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !1019
  tail call void @free(ptr noundef %39) #21
  %40 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !1020
  tail call void @bitmap_obstack_free(ptr noundef %41) #20
  store ptr null, ptr %40, align 8, !tbaa !1020
  %42 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !1288
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.iv_use, ptr %37, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !1289
  br i1 %44, label %64, label %47, !prof !1342

47:                                               ; preds = %35, %58
  %48 = phi i32 [ %59, %58 ], [ %43, %35 ]
  %49 = phi ptr [ %60, %58 ], [ %46, %35 ]
  %50 = phi i64 [ %61, %58 ], [ 0, %35 ]
  %51 = getelementptr inbounds %struct.cost_pair, ptr %49, i64 %50, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !1293
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !1343

54:                                               ; preds = %47
  tail call void @bitmap_obstack_free(ptr noundef nonnull %52) #20
  %55 = load ptr, ptr %45, align 8, !tbaa !1289
  %56 = getelementptr inbounds %struct.cost_pair, ptr %55, i64 %50, i32 2
  store ptr null, ptr %56, align 8, !tbaa !1293
  %57 = load i32, ptr %42, align 8, !tbaa !1288
  br label %58

58:                                               ; preds = %47, %54
  %59 = phi i32 [ %48, %47 ], [ %57, %54 ]
  %60 = phi ptr [ %49, %47 ], [ %55, %54 ]
  %61 = add nuw nsw i64 %50, 1
  %62 = zext i32 %59 to i64
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %47, label %64, !prof !1344, !llvm.loop !1345

64:                                               ; preds = %58, %35
  %65 = phi ptr [ %46, %35 ], [ %60, %58 ]
  tail call void @free(ptr noundef %65) #21
  tail call void @free(ptr noundef nonnull %37) #21
  %66 = add nuw i32 %36, 1
  %67 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %35, label %69, !prof !1346, !llvm.loop !1347

69:                                               ; preds = %64, %29
  %70 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !1025
  tail call fastcc void @VEC_iv_use_p_base_truncate(ptr noundef %71) #21
  %72 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74, !prof !1339

74:                                               ; preds = %69, %86
  %75 = phi i32 [ %87, %86 ], [ 0, %69 ]
  %76 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %75) #21
  %77 = getelementptr inbounds %struct.iv_cand, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !1034
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !1348

80:                                               ; preds = %74
  tail call void @free(ptr noundef nonnull %78) #21
  br label %81

81:                                               ; preds = %80, %74
  %82 = getelementptr inbounds %struct.iv_cand, ptr %76, i64 0, i32 10
  %83 = load ptr, ptr %82, align 8, !tbaa !1038
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85, !prof !1349

85:                                               ; preds = %81
  tail call void @bitmap_obstack_free(ptr noundef nonnull %83) #20
  br label %86

86:                                               ; preds = %85, %81
  tail call void @free(ptr noundef nonnull %76) #21
  %87 = add nuw i32 %75, 1
  %88 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %74, label %90, !prof !1350, !llvm.loop !1351

90:                                               ; preds = %86, %69
  %91 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !1182
  tail call fastcc void @VEC_iv_cand_p_base_truncate(ptr noundef %92) #21
  %93 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !1176
  %95 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !1170
  %98 = getelementptr inbounds %struct.gimple_df, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !1172
  %100 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %99) #21
  %101 = icmp ult i32 %94, %100
  br i1 %101, label %102, label %109, !prof !1352

102:                                              ; preds = %90
  %103 = shl i32 %100, 1
  store i32 %103, ptr %93, align 4, !tbaa !1176
  %104 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !1177
  tail call void @free(ptr noundef %105) #21
  %106 = load i32, ptr %93, align 4, !tbaa !1176
  %107 = zext i32 %106 to i64
  %108 = tail call ptr @xcalloc(i64 noundef %107, i64 noundef 32) #20
  store ptr %108, ptr %104, align 8, !tbaa !1177
  br label %109

109:                                              ; preds = %102, %90
  %110 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  store i32 0, ptr %110, align 8, !tbaa !1180
  %111 = load ptr, ptr @decl_rtl_to_reset, align 8
  %112 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %111, i32 noundef 0, ptr noundef nonnull %4) #21, !range !1160
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114, !prof !1339

114:                                              ; preds = %109, %114
  %115 = phi i32 [ %117, %114 ], [ 0, %109 ]
  %116 = load ptr, ptr %4, align 8, !tbaa !1011
  tail call void @set_decl_rtl(ptr noundef %116, ptr noundef null) #20
  %117 = add i32 %115, 1
  %118 = load ptr, ptr @decl_rtl_to_reset, align 8
  %119 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %118, i32 noundef %117, ptr noundef nonnull %4) #21, !range !1160
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %114, !prof !1353, !llvm.loop !1354

121:                                              ; preds = %114, %109
  %122 = phi ptr [ %111, %109 ], [ %118, %114 ]
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %122) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_bivs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1201 !PGOFuncName !1355 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !1203
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1297
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #20
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %50, !prof !1356

8:                                                ; preds = %1, %46
  %9 = phi i8 [ %47, %46 ], [ 0, %1 ]
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %11 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %10) #21
  %12 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #21
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 4194304
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %46, !prof !1357

16:                                               ; preds = %8
  %17 = call fastcc ptr @determine_biv_step(ptr noundef %10) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19, !prof !1358

19:                                               ; preds = %16
  %20 = call ptr @loop_preheader_edge(ptr noundef %3) #20
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !1359
  %23 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %10, i32 noundef %22) #21
  %24 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %23) #21
  %25 = call ptr @expand_simple_operations(ptr noundef %24) #20
  %26 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %25) #21, !range !1048
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %46, !prof !1360

28:                                               ; preds = %19
  %29 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef nonnull %17) #21, !range !1048
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %46, !prof !1360

31:                                               ; preds = %28
  %32 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #21
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !1009
  %35 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %34, ptr noundef %25) #20
  %36 = load i64, ptr %34, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %41 [
    i16 10, label %38
    i16 12, label %38
  ], !prof !1361

38:                                               ; preds = %31, %31
  %39 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
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
  %48 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %8, label %50, !prof !1362, !llvm.loop !1363

50:                                               ; preds = %46, %1
  %51 = phi i8 [ 0, %1 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_givs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1364 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1203
  %3 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !1208
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7, !prof !1245

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1011
  tail call fastcc void @find_givs_in_bb(ptr noundef nonnull %0, ptr noundef %10) #21
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %4, align 4, !tbaa !1208
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %7, label %15, !prof !1264, !llvm.loop !1365

15:                                               ; preds = %7, %1
  tail call void @free(ptr noundef %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_bivs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1366 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !1203
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1297
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #20
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %41, !prof !1298

8:                                                ; preds = %1, %38
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %10 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %9) #21
  %11 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %10) #21
  %12 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %11) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14, !prof !1367

14:                                               ; preds = %8
  %15 = call ptr @loop_latch_edge(ptr noundef %3) #20
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !1359
  %18 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %9, i32 noundef %17) #21
  %19 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #21
  %20 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %19) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22, !prof !1368

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !1009
  %25 = call fastcc ptr @gimple_bb(ptr noundef %24) #21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1369
  %28 = load ptr, ptr %0, align 8, !tbaa !1203
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %38, !prof !1370

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !1371
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38, !prof !1370

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.iv, ptr %12, i64 0, i32 4
  store i8 1, ptr %36, align 8, !tbaa !1013
  %37 = getelementptr inbounds %struct.iv, ptr %20, i64 0, i32 4
  store i8 1, ptr %37, align 8, !tbaa !1013
  br label %38

38:                                               ; preds = %22, %30, %14, %8, %35
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !1048
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %8, label %41, !prof !1300, !llvm.loop !1372

41:                                               ; preds = %38, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @niter_for_single_dom_exit(ptr nocapture noundef %0) unnamed_addr #0 !prof !1005 !PGOFuncName !1373 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1203
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !1374 !PGOFuncName !1375 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1376
  store ptr %4, ptr %0, align 8, !tbaa !1378
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1380
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1381

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1378
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1382
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1384
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !1090
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1385
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !1043
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !1386 !PGOFuncName !1387 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1385
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1388

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1389

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !1043
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1390, !llvm.loop !1391

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !1043
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !1043
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1384
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1378
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1384
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1392

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !1090
  store i64 %35, ptr %3, align 8, !tbaa !1385
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1393

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !1043
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !1043
  %40 = load i32, ptr %23, align 8, !tbaa !1384
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1384
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1394, !llvm.loop !1395

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1396
  store ptr %44, ptr %0, align 8, !tbaa !1378
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1397

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1382
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !1043
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1385
  store i32 %16, ptr %1, align 4, !tbaa !1043
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ver_info(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1398 !PGOFuncName !1399 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !1177
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.version_info, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !1400 !PGOFuncName !1401 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1385
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1385
  %6 = load i32, ptr %1, align 4, !tbaa !1043
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !1043
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !1402 !PGOFuncName !1403 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1404
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !1406 !PGOFuncName !1407 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1404
  %3 = load ptr, ptr %2, align 8, !tbaa !1408
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1410 !PGOFuncName !1411 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #6 !prof !1410 !PGOFuncName !1412 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @determine_biv_step(ptr noundef readonly %0) unnamed_addr #0 !prof !1413 !PGOFuncName !1414 {
  %2 = alloca %struct.affine_iv, align 8
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1369
  %6 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #21
  %7 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10, !prof !1415

10:                                               ; preds = %1
  %11 = call zeroext i8 @simple_iv(ptr noundef %5, ptr noundef %5, ptr noundef %7, ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13, !prof !1416

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1417
  %16 = call i32 @integer_zerop(ptr noundef %15) #20
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %14, align 8
  %19 = select i1 %17, ptr %18, ptr null, !prof !1419
  br label %20

20:                                               ; preds = %10, %1, %13
  %21 = phi ptr [ %19, %13 ], [ null, %1 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1420 !PGOFuncName !1421 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1422
  %4 = load ptr, ptr %3, align 8, !tbaa !1011
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1424 !PGOFuncName !1425 {
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
define internal fastcc void @set_iv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1426 !PGOFuncName !1427 {
  %5 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %1) #21
  %6 = getelementptr inbounds %struct.version_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1240
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !1428

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 858, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !1178
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !1009
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #20
  %16 = tail call fastcc ptr @alloc_iv(ptr noundef %2, ptr noundef %3) #21
  store ptr %16, ptr %6, align 8, !tbaa !1240
  %17 = getelementptr inbounds %struct.iv, ptr %16, i64 0, i32 3
  store ptr %1, ptr %17, align 8, !tbaa !1006
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !1429 !PGOFuncName !1430 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1404
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1431
  store ptr %4, ptr %0, align 8, !tbaa !1404
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1424 !PGOFuncName !1432 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !1009
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1433

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3103, ptr noundef nonnull @.str.13) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @name_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !1434 !PGOFuncName !1435 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !1009
  %5 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %4) #21
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1436 !PGOFuncName !1437 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !1438

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 838, ptr noundef nonnull @.str.13) #20
  br label %6

6:                                                ; preds = %2, %5
  store ptr %0, ptr %3, align 8, !tbaa !1008
  %7 = tail call fastcc ptr @determine_base_object(ptr noundef %0) #21
  %8 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !1012
  %9 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !1010
  %10 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 4
  store i8 0, ptr %10, align 8, !tbaa !1013
  %11 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 5
  store i8 0, ptr %11, align 1, !tbaa !1332
  %12 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 6
  store i32 0, ptr %12, align 4, !tbaa !1439
  %13 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !1006
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @determine_base_object(ptr noundef %0) unnamed_addr #0 !prof !1440 !PGOFuncName !1441 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %9, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %10 [
    i16 116, label %6
    i16 113, label %6
  ], !prof !1442

6:                                                ; preds = %15, %21, %2, %2
  %7 = phi ptr [ %3, %2 ], [ %3, %2 ], [ %19, %21 ], [ %3, %15 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1009
  br label %2

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1009
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %33 [
    i16 10, label %15
    i16 12, label %15
  ], !prof !1443

15:                                               ; preds = %10, %10
  switch i16 %5, label %30 [
    i16 23, label %33
    i16 121, label %16
    i16 66, label %6
    i16 63, label %29
    i16 64, label %29
  ], !prof !1444

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1009
  %19 = tail call ptr @get_base_address(ptr noundef %18) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21, !prof !1445

21:                                               ; preds = %16
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 47
  br i1 %24, label %6, label %25, !prof !1446

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !1011
  %27 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %19) #20
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %26, ptr noundef %27) #20
  br label %33

29:                                               ; preds = %15, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 824, ptr noundef nonnull @.str.13) #20
  br label %30

30:                                               ; preds = %15, %29
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !1011
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
define internal fastcc void @find_givs_in_bb(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1447 !PGOFuncName !1448 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !1048
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !1260

6:                                                ; preds = %2, %6
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  tail call fastcc void @find_givs_in_stmt(ptr noundef %0, ptr noundef %7) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !1048
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !prof !1262, !llvm.loop !1449

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !1450 !PGOFuncName !1451 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !1404
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1452
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1453
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_givs_in_stmt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1454 !PGOFuncName !1455 {
  %3 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = call fastcc zeroext i8 @find_givs_in_stmt_scev(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #21, !range !1048
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !1456

6:                                                ; preds = %2
  %7 = call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !1457
  %9 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1417
  call fastcc void @set_iv(ptr noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %10) #21
  br label %11

11:                                               ; preds = %2, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1458 !PGOFuncName !1459 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1371
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1460

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !1009
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1461

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1462
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !1450 !PGOFuncName !1464 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1465

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1466
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_givs_in_stmt_scev(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1454 !PGOFuncName !1468 {
  %4 = load ptr, ptr %0, align 8, !tbaa !1203
  %5 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !1087
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %26, !prof !1469

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #21
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %26, !prof !1470

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #21
  %15 = tail call zeroext i8 @simple_iv(ptr noundef %4, ptr noundef %14, ptr noundef nonnull %9, ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17, !prof !1471

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 8, !tbaa !1457
  %19 = tail call ptr @expand_simple_operations(ptr noundef %18) #20
  store ptr %19, ptr %2, align 8, !tbaa !1457
  %20 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %19) #21, !range !1048
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26, !prof !1472

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !1417
  %24 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %23) #21, !range !1048
  %25 = xor i8 %24, 1
  br label %26

26:                                               ; preds = %22, %17, %13, %8, %3
  %27 = phi i8 [ 0, %3 ], [ 0, %8 ], [ 0, %13 ], [ 0, %17 ], [ %25, %22 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !1473 !PGOFuncName !1474 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1475 !PGOFuncName !1476 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !1477

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1369
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_iv(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1478 !PGOFuncName !1479 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1009
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %27 [
    i16 10, label %7
    i16 12, label %7
    i16 6, label %7
    i16 7, label %7
    i16 8, label %7
  ], !prof !1480

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef nonnull %1) #21
  %9 = getelementptr inbounds %struct.version_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1240
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23, !prof !1481

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1009
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !1482

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !1203
  %19 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %18, ptr noundef nonnull %15) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !1483

21:                                               ; preds = %17, %12
  %22 = tail call ptr @build_int_cst(ptr noundef nonnull %4, i64 noundef 0) #20
  tail call fastcc void @set_iv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %22) #21
  br label %23

23:                                               ; preds = %17, %21, %7
  %24 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef nonnull %1) #21
  %25 = getelementptr inbounds %struct.version_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1240
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
define internal fastcc ptr @niter_for_exit(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1484 !PGOFuncName !1485 {
  %3 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1181
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !1486

7:                                                ; preds = %2
  %8 = tail call ptr @pointer_map_create() #20
  store ptr %8, ptr %4, align 8, !tbaa !1181
  br label %12

9:                                                ; preds = %2
  %10 = tail call ptr @pointer_map_contains(ptr noundef nonnull %5, ptr noundef %1) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %32, !prof !1487

12:                                               ; preds = %7, %9
  %13 = load ptr, ptr %0, align 8, !tbaa !1203
  %14 = call zeroext i8 @number_of_iterations_exit(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16, !prof !1488

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1489
  %19 = call i32 @integer_zerop(ptr noundef %18) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21, !prof !1491

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1492
  %24 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %23) #21, !range !1048
  %25 = icmp eq i8 %24, 0
  %26 = load ptr, ptr %22, align 8
  %27 = select i1 %25, ptr %26, ptr null, !prof !1493
  br label %28

28:                                               ; preds = %21, %12, %16
  %29 = phi ptr [ null, %16 ], [ null, %12 ], [ %27, %21 ]
  %30 = load ptr, ptr %4, align 8, !tbaa !1181
  %31 = call ptr @pointer_map_insert(ptr noundef %30, ptr noundef %1) #20
  store ptr %29, ptr %31, align 8, !tbaa !1011
  br label %34

32:                                               ; preds = %9
  %33 = load ptr, ptr %10, align 8, !tbaa !1011
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !1447 !PGOFuncName !1494 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1495 !PGOFuncName !1496 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !1048
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1497

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !1011
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_outside(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1498 !PGOFuncName !1499 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1207
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #20
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !1048
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22, !prof !1500

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %19
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %12 = load i32, ptr %9, align 4, !tbaa !1359
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #21
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #21
  %15 = call zeroext i8 @is_gimple_reg(ptr noundef %14) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !1501

17:                                               ; preds = %10
  %18 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %14) #21
  br label %19

19:                                               ; preds = %10, %17
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !1048
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !prof !1502, !llvm.loop !1503

22:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1504 !PGOFuncName !1505 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1252

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1506

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 738, ptr noundef nonnull @.str.13) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1507
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1507
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1509 !PGOFuncName !1510 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  tail call fastcc void @find_invariants_stmt(ptr noundef %0, ptr noundef %1) #21
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !1087
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7, !prof !1511

6:                                                ; preds = %2
  tail call fastcc void @find_interesting_uses_cond(ptr noundef %0, ptr noundef %1) #21
  br label %108

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #21, !range !1048
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %63, label %10, !prof !1512

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %1) #21
  %12 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %1) #21
  %13 = load ptr, ptr %11, align 8, !tbaa !1011
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %25, !prof !1470

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %13) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !1471

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.iv, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1010
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %108, label %25, !prof !1513

25:                                               ; preds = %17, %20, %10
  %26 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #21, !range !1514
  %27 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %26) #21, !range !1087
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %57, !prof !1515

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 8, !tbaa !1011
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !1043
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %46, label %36, !prof !1516

36:                                               ; preds = %29
  %37 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %30) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %39, !prof !1517

39:                                               ; preds = %36
  %40 = load ptr, ptr %12, align 8, !tbaa !1011
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !1043
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %47, !prof !1306

46:                                               ; preds = %29, %39
  tail call fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12) #21
  br label %49

47:                                               ; preds = %39
  %48 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef nonnull %40) #21
  br label %49

49:                                               ; preds = %47, %46
  %50 = load ptr, ptr %11, align 8, !tbaa !1011
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !1043
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %108, !prof !1518

56:                                               ; preds = %49
  tail call fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #21
  br label %108

57:                                               ; preds = %36, %25
  %58 = zext nneg i32 %26 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !1043
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %63, !prof !1519

62:                                               ; preds = %57
  tail call fastcc void @find_interesting_uses_cond(ptr noundef %0, ptr noundef %1) #21
  br label %108

63:                                               ; preds = %57, %7
  %64 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !1087
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %82, !prof !1520

66:                                               ; preds = %63
  %67 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %68 = load ptr, ptr %0, align 8, !tbaa !1203
  %69 = getelementptr inbounds %struct.loop, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !1297
  %71 = icmp eq ptr %67, %70
  br i1 %71, label %72, label %82, !prof !1521

72:                                               ; preds = %66
  %73 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #21
  %74 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %73) #21
  %75 = tail call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %74) #21
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77, !prof !1367

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.iv, ptr %75, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !1010
  %80 = tail call i32 @integer_zerop(ptr noundef %79) #20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %108, label %82, !prof !1360

82:                                               ; preds = %72, %77, %66, %63
  %83 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !1087
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %87, !prof !1522

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
  br i1 %92, label %93, label %108, !prof !1523

93:                                               ; preds = %89, %104
  %94 = phi ptr [ %105, %104 ], [ %90, %89 ]
  %95 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %94) #21
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %99, label %104, !prof !1524

99:                                               ; preds = %93
  %100 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %95) #21
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !1525

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef nonnull %95) #21
  br label %104

104:                                              ; preds = %99, %93, %102
  %105 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %106 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %93, label %108, !prof !1526, !llvm.loop !1527

108:                                              ; preds = %104, %89, %77, %49, %56, %20, %62, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1454 !PGOFuncName !1528 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !1087
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1495 !PGOFuncName !1529 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1530

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1504 !PGOFuncName !1531 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1252

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1532 !PGOFuncName !1533 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1534

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1535
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1537 !PGOFuncName !1538 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1539

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 687, ptr noundef nonnull @.str.13) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !1011
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1540 !PGOFuncName !1541 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_interesting_uses_op(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1542 !PGOFuncName !1543 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %41, !prof !1544

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9, !prof !1545

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !1332
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13, !prof !1546

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !1439
  %16 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.iv_use, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !1016
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20, !prof !1547

20:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1170, ptr noundef nonnull @.str.13) #20
  br label %41

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1010
  %24 = tail call i32 @integer_zerop(ptr noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !1548

26:                                               ; preds = %21
  tail call fastcc void @record_invariant(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %41

27:                                               ; preds = %21
  store i8 1, ptr %10, align 1, !tbaa !1332
  %28 = tail call ptr @xmalloc(i64 noundef 40) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !1549
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !1009
  %31 = tail call fastcc i32 @gimple_code(ptr noundef %30) #21, !range !1087
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %37, label %33, !prof !1550

33:                                               ; preds = %27
  %34 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %30) #21, !range !1048
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37, !prof !1551

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1186, ptr noundef nonnull @.str.13) #20
  br label %37

37:                                               ; preds = %27, %33, %36
  %38 = tail call fastcc ptr @record_use(ptr noundef %0, ptr noundef null, ptr noundef nonnull %28, ptr noundef %30, i32 noundef 0) #21
  %39 = load i32, ptr %38, align 8, !tbaa !1014
  %40 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 6
  store i32 %39, ptr %40, align 4, !tbaa !1439
  br label %41

41:                                               ; preds = %20, %13, %6, %2, %37, %26
  %42 = phi ptr [ null, %26 ], [ %38, %37 ], [ null, %2 ], [ null, %6 ], [ %16, %13 ], [ %16, %20 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_invariant(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1552 !PGOFuncName !1553 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %37, !prof !1554

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %37, label %10, !prof !1555

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1009
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !1556

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !1203
  %17 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %16, ptr noundef nonnull %13) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %37, !prof !1557

19:                                               ; preds = %15, %10
  %20 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef nonnull %1) #21
  store ptr %1, ptr %20, align 8, !tbaa !1267
  %21 = getelementptr inbounds %struct.version_info, ptr %20, i64 0, i32 2
  %22 = load i8, ptr %21, align 8, !tbaa !1268
  %23 = or i8 %22, %2
  store i8 %23, ptr %21, align 8, !tbaa !1268
  %24 = getelementptr inbounds %struct.version_info, ptr %20, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !1266
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !1558

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !1180
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !1180
  store i32 %30, ptr %24, align 4, !tbaa !1266
  br label %31

31:                                               ; preds = %27, %19
  %32 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !1178
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !1009
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %35) #20
  br label %37

37:                                               ; preds = %15, %3, %7, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1559 !PGOFuncName !1560 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !1087
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @record_use(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !1561 !PGOFuncName !1562 {
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #20
  %7 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  store i32 %7, ptr %6, align 8, !tbaa !1014
  %8 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 1
  store i32 %4, ptr %8, align 4, !tbaa !1016
  %9 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !1019
  %10 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !1017
  %11 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 4
  store ptr %1, ptr %11, align 8, !tbaa !1018
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %13 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !1020
  %14 = getelementptr inbounds %struct.iv, ptr %2, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !1006
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !1563

17:                                               ; preds = %5
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !1043
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
define internal fastcc void @VEC_iv_use_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1561 !PGOFuncName !1564 {
  tail call fastcc void @VEC_iv_use_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !1011
  tail call fastcc void @VEC_iv_use_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_use_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1561 !PGOFuncName !1565 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = tail call fastcc i32 @VEC_iv_use_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1566

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !1011
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_iv_use_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !1561 !PGOFuncName !1567 {
  %3 = load i32, ptr %0, align 8, !tbaa !1031
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1031
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !1011
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_use_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !1561 !PGOFuncName !1568 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1325

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1569
  %6 = load i32, ptr %0, align 8, !tbaa !1031
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
define internal fastcc void @find_invariants_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1509 !PGOFuncName !1570 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !1087
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %8, !prof !1571

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
  br i1 %13, label %14, label %20, !prof !1572

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %11, %10 ]
  %16 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %15) #21
  tail call fastcc void @record_invariant(ptr noundef %0, ptr noundef %16, i8 noundef zeroext 0) #21
  %17 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %18 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20, !prof !1573, !llvm.loop !1574

20:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_cond(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1575 !PGOFuncName !1576 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #21, !range !1048
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15, !prof !1577

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !1011
  %10 = load ptr, ptr %9, align 8, !tbaa !1011
  %11 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %10) #21
  %12 = load ptr, ptr %4, align 8, !tbaa !1011
  %13 = load ptr, ptr %12, align 8, !tbaa !1011
  %14 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %13) #21
  br label %19

15:                                               ; preds = %2
  %16 = call ptr @xmalloc(i64 noundef 40) #20
  %17 = load ptr, ptr %5, align 8, !tbaa !1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !1549
  %18 = call fastcc ptr @record_use(ptr noundef %0, ptr noundef null, ptr noundef %16, ptr noundef %1, i32 noundef 2) #21
  br label %19

19:                                               ; preds = %15, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !1578 !PGOFuncName !1579 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 !prof !1580 !PGOFuncName !1581 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !1582 !PGOFuncName !1583 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !1514
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #21, !range !1087
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1584

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 !prof !1585 !PGOFuncName !1586 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !1009
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1587 !PGOFuncName !1588 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ifs_ivopts_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %6 = load ptr, ptr %2, align 8, !tbaa !1011
  store ptr %6, ptr %4, align 8, !tbaa !1011
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %8 = tail call ptr @build_int_cst(ptr noundef %7, i64 noundef 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %9 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %1) #21, !range !1048
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %129, !prof !1589

11:                                               ; preds = %3
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 42
  br i1 %14, label %129, label %15, !prof !1590

15:                                               ; preds = %11
  %16 = tail call ptr @unshare_expr(ptr noundef nonnull %6) #20
  store ptr %16, ptr %4, align 8, !tbaa !1011
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 152
  br i1 %19, label %20, label %70, !prof !1591

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1009
  %23 = tail call ptr @build_pointer_type(ptr noundef %22) #20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1009
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27, !prof !1592

27:                                               ; preds = %20
  %28 = load i64, ptr %25, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %38, !prof !1593

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %25) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %129, label %34, !prof !1594

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !1008
  store ptr %35, ptr %24, align 8, !tbaa !1009
  %36 = getelementptr inbounds %struct.iv, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !1010
  br label %38

38:                                               ; preds = %34, %27, %20
  %39 = phi ptr [ %37, %34 ], [ %8, %27 ], [ %8, %20 ]
  %40 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !1009
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43, !prof !1595

43:                                               ; preds = %38
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 141
  br i1 %46, label %47, label %64, !prof !1596

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %41) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %129, label %50, !prof !1596

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !1008
  store ptr %51, ptr %40, align 8, !tbaa !1009
  %52 = getelementptr inbounds %struct.iv, ptr %48, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !1010
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !1009
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
  store ptr %69, ptr %4, align 8, !tbaa !1011
  br label %124

70:                                               ; preds = %15
  store ptr %0, ptr %5, align 8, !tbaa !1597
  %71 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %5, i64 0, i32 1
  store ptr %1, ptr %71, align 8, !tbaa !1599
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %73 = tail call ptr @build_int_cst(ptr noundef %72, i64 noundef 0) #20
  %74 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %5, i64 0, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !1600
  %75 = call zeroext i8 @for_each_index(ptr noundef nonnull %4, ptr noundef nonnull @idx_find_step, ptr noundef nonnull %5) #20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %129, label %77, !prof !1601

77:                                               ; preds = %70
  %78 = load ptr, ptr %74, align 8, !tbaa !1600
  %79 = call i32 @integer_zerop(ptr noundef %78) #20
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %129, !prof !1602

81:                                               ; preds = %77
  %82 = load ptr, ptr %74, align 8, !tbaa !1600
  %83 = load ptr, ptr %4, align 8, !tbaa !1011
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 48
  br i1 %86, label %87, label %90, !prof !1603

87:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1669, ptr noundef nonnull @.str.13) #20
  %88 = load ptr, ptr %4, align 8, !tbaa !1011
  %89 = load i64, ptr %88, align 8
  br label %90

90:                                               ; preds = %81, %87
  %91 = phi i64 [ %84, %81 ], [ %89, %87 ]
  %92 = phi ptr [ %83, %81 ], [ %88, %87 ]
  %93 = and i64 %91, 65535
  %94 = icmp eq i64 %93, 49
  br i1 %94, label %95, label %97, !prof !1603

95:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1670, ptr noundef nonnull @.str.13) #20
  %96 = load ptr, ptr %4, align 8, !tbaa !1011
  br label %97

97:                                               ; preds = %90, %95
  %98 = phi ptr [ %92, %90 ], [ %96, %95 ]
  %99 = call fastcc zeroext i8 @may_be_nonaddressable_p(ptr noundef %98) #21, !range !1048
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %129, !prof !1604

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !1011
  %103 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %102) #20
  store ptr %103, ptr %4, align 8, !tbaa !1011
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 121
  br i1 %106, label %107, label %124, !prof !1605

107:                                              ; preds = %101, %107
  %108 = phi ptr [ %110, %107 ], [ %103, %101 ]
  %109 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !1011
  %111 = call fastcc zeroext i8 @handled_component_p(ptr noundef %110) #21, !range !1048
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %107, !prof !1606, !llvm.loop !1607

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %115 = load i64, ptr %110, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 47
  br i1 %117, label %118, label %124, !prof !1608

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !1009
  %121 = call ptr @gimple_fold_indirect_ref(ptr noundef %120) #20
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123, !prof !1609

123:                                              ; preds = %118
  store ptr %121, ptr %114, align 8, !tbaa !1011
  br label %124

124:                                              ; preds = %68, %113, %123, %118, %101
  %125 = phi ptr [ %65, %68 ], [ %82, %101 ], [ %82, %118 ], [ %82, %123 ], [ %82, %113 ]
  %126 = load ptr, ptr %4, align 8, !tbaa !1011
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
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1610 !PGOFuncName !1611 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #21
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #21
  store i8 0, ptr %0, align 8, !tbaa !1612
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !1614

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !1612
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !1615
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #21
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !1616
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !1617
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #21
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1618 !PGOFuncName !1619 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !1617
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1620 !PGOFuncName !1621 {
  %2 = load i8, ptr %0, align 8, !tbaa !1612
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1622 !PGOFuncName !1623 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1624
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1625

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1626
  store ptr %7, ptr %2, align 8, !tbaa !1624
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1628
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1616
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1629

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1615
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1628
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1612
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @extract_cond_operands(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #0 !prof !1630 !PGOFuncName !1631 {
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !1087
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12, !prof !1632

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
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1011
  store ptr %18, ptr @extract_cond_operands.zero, align 8, !tbaa !1011
  store ptr %18, ptr getelementptr inbounds (%struct.iv, ptr @extract_cond_operands.const_iv, i64 0, i32 2), align 8, !tbaa !1010
  %19 = load ptr, ptr %17, align 8, !tbaa !1011
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %25, !prof !1633

23:                                               ; preds = %15
  %24 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %19) #21
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ @extract_cond_operands.const_iv, %15 ]
  %27 = load ptr, ptr %16, align 8, !tbaa !1011
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %33, !prof !1634

31:                                               ; preds = %25
  %32 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %27) #21
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ @extract_cond_operands.const_iv, %25 ]
  %35 = icmp ne ptr %26, null
  %36 = icmp ne ptr %34, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %59, !prof !1635

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.iv, ptr %26, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !1010
  %41 = tail call i32 @integer_zerop(ptr noundef %40) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !1636

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi ptr [ %17, %43 ], [ %16, %38 ]
  %46 = phi ptr [ %34, %43 ], [ %26, %38 ]
  %47 = phi ptr [ %26, %43 ], [ %34, %38 ]
  %48 = phi ptr [ %16, %43 ], [ %17, %38 ]
  %49 = getelementptr inbounds %struct.iv, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !1010
  %51 = tail call i32 @integer_zerop(ptr noundef %50) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59, !prof !1637

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.iv, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !1010
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
  br i1 %65, label %67, label %66, !prof !1638

66:                                               ; preds = %59
  store ptr %63, ptr %2, align 8, !tbaa !1011
  br label %67

67:                                               ; preds = %66, %59
  %68 = icmp eq ptr %4, null
  br i1 %68, label %70, label %69, !prof !1639

69:                                               ; preds = %67
  store ptr %61, ptr %4, align 8, !tbaa !1011
  br label %70

70:                                               ; preds = %69, %67
  %71 = icmp eq ptr %3, null
  br i1 %71, label %73, label %72, !prof !1640

72:                                               ; preds = %70
  store ptr %60, ptr %3, align 8, !tbaa !1011
  br label %73

73:                                               ; preds = %72, %70
  %74 = icmp eq ptr %5, null
  br i1 %74, label %76, label %75, !prof !1641

75:                                               ; preds = %73
  store ptr %62, ptr %5, align 8, !tbaa !1011
  br label %76

76:                                               ; preds = %75, %73
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !1642 !PGOFuncName !1643 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !1642 !PGOFuncName !1644 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %0) unnamed_addr #0 !prof !1645 !PGOFuncName !1646 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1647 !PGOFuncName !1648 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !1048
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !1649

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
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1582 !PGOFuncName !1650 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !1087
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1651

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1446, ptr noundef nonnull @.str.13) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !1652 !PGOFuncName !1653 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1587 !PGOFuncName !1654 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !1048
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1655

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
define internal noundef zeroext i8 @idx_find_step(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 !prof !1656 !PGOFuncName !1657 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %2, align 8, !tbaa !1597
  %7 = load ptr, ptr %6, align 8, !tbaa !1203
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %31 [
    i16 49, label %79
    i16 48, label %79
    i16 41, label %10
    i16 45, label %13
    i16 46, label %13
  ], !prof !1658

10:                                               ; preds = %3
  %11 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %0) #20
  %12 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %11) #21, !range !1048
  br label %79

13:                                               ; preds = %3, %3
  %14 = and i64 %8, 65535
  %15 = icmp eq i64 %14, 46
  br i1 %15, label %16, label %23, !prof !1659

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1009
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1009
  %21 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %20) #21, !range !1048
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %16, %13
  %24 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #20
  %25 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #20
  %26 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %24) #21, !range !1048
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %79, label %28, !prof !1659

28:                                               ; preds = %23
  %29 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %25) #21, !range !1048
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %79, label %31, !prof !1659

31:                                               ; preds = %3, %28
  %32 = load ptr, ptr %1, align 8, !tbaa !1011
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %79, !prof !1660

36:                                               ; preds = %31
  %37 = load ptr, ptr %2, align 8, !tbaa !1597
  %38 = tail call fastcc ptr @get_iv(ptr noundef %37, ptr noundef nonnull %32) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40, !prof !1661

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !1008
  store ptr %41, ptr %1, align 8, !tbaa !1011
  %42 = getelementptr inbounds %struct.iv, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1010
  %44 = tail call i32 @integer_zerop(ptr noundef %43) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %79, !prof !1662

46:                                               ; preds = %40
  %47 = load i64, ptr %0, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -45
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %57, !prof !1663

52:                                               ; preds = %46
  %53 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #20
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %60, label %79, !prof !1664

57:                                               ; preds = %46
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %59 = tail call ptr @build_int_cst(ptr noundef %58, i64 noundef 1) #20
  br label %60

60:                                               ; preds = %52, %57
  %61 = phi ptr [ %53, %52 ], [ %59, %57 ]
  %62 = load ptr, ptr %38, align 8, !tbaa !1008
  store ptr %62, ptr %4, align 8, !tbaa !1011
  %63 = load ptr, ptr %42, align 8, !tbaa !1010
  store ptr %63, ptr %5, align 8, !tbaa !1011
  %64 = load ptr, ptr %2, align 8, !tbaa !1597
  %65 = load ptr, ptr %64, align 8, !tbaa !1203
  %66 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %67 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %2, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !1599
  %69 = call zeroext i8 @convert_affine_scev(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %68, i8 noundef zeroext 0) #20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71, !prof !1665

71:                                               ; preds = %60
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %73 = load ptr, ptr %5, align 8, !tbaa !1011
  %74 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %72, ptr noundef %61, ptr noundef %73) #20
  %75 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %76 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %2, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !1600
  %78 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %75, ptr noundef %77, ptr noundef %74) #20
  store ptr %78, ptr %76, align 8, !tbaa !1600
  br label %79

79:                                               ; preds = %60, %52, %40, %36, %31, %23, %28, %16, %3, %3, %71, %10
  %80 = phi i8 [ %12, %10 ], [ 1, %71 ], [ 0, %3 ], [ 0, %3 ], [ 0, %16 ], [ 0, %28 ], [ 0, %23 ], [ 1, %31 ], [ 0, %36 ], [ 1, %40 ], [ 0, %52 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @may_be_nonaddressable_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1666 !PGOFuncName !1667 {
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
  ], !prof !1668

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1009
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26, !prof !1669

13:                                               ; preds = %2, %2, %21, %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1009
  br label %2

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1009
  %19 = tail call zeroext i8 @is_gimple_reg(ptr noundef %18) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !1009
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
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1670 !PGOFuncName !1671 {
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
  ], !prof !1672

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @idx_record_use(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 !prof !1673 !PGOFuncName !1674 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1011
  %5 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %4) #21
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -45
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %16, !prof !1675

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
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1676 !PGOFuncName !1677 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !1087
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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1610 !PGOFuncName !1678 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1009
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #14 !prof !1610 !PGOFuncName !1679 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1612
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1680 !PGOFuncName !1681 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !1009
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !1618 !PGOFuncName !1682 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !1683
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1624
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7, !prof !1684

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1685

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !1626
  store ptr %11, ptr %5, align 8, !tbaa !1624
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !1612
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1618 !PGOFuncName !1686 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !1048
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1687

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1009
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1688 !PGOFuncName !1689 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !1048
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1690

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1009
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_standard_iv_candidates(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1691 {
  tail call fastcc void @add_standard_iv_candidates_for_size(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_old_ivs_candidates(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1692 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !1178
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #21
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8, !prof !1245

8:                                                ; preds = %1, %24
  %9 = load i32, ptr %2, align 4, !tbaa !1043
  %10 = tail call fastcc ptr @ver_info(ptr noundef %0, i32 noundef %9) #21
  %11 = getelementptr inbounds %struct.version_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1240
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !1329

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.iv, ptr %12, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !1013
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18, !prof !1693

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.iv, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1010
  %21 = tail call i32 @integer_zerop(ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !1694

23:                                               ; preds = %18
  tail call fastcc void @add_old_iv_candidates(ptr noundef %0, ptr noundef nonnull %12) #21
  br label %24

24:                                               ; preds = %8, %14, %18, %23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %8, !prof !1303, !llvm.loop !1695

27:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_derived_ivs_candidates(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1696 {
  %2 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %20, label %4, !prof !1245

4:                                                ; preds = %1, %16
  %5 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %6 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !1697

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !1016
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %15, !prof !1698

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1019
  tail call fastcc void @add_iv_value_candidates(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6) #21
  br label %16

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2417, ptr noundef nonnull @.str.13) #20
  br label %16

16:                                               ; preds = %12, %15, %4
  %17 = add nuw i32 %5, 1
  %18 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %4, label %20, !prof !1286, !llvm.loop !1699

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_autoinc_for_original_candidates(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1700 {
  %2 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %52, label %4, !prof !1245

4:                                                ; preds = %1, %48
  %5 = phi i32 [ %49, %48 ], [ 0, %1 ]
  %6 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.iv_cand, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !1039
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %48, !prof !1701

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13, !prof !1702

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.iv_cand, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1703
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #21
  br label %17

17:                                               ; preds = %13, %37
  %18 = phi i32 [ 0, %13 ], [ %39, %37 ]
  %19 = phi ptr [ null, %13 ], [ %38, %37 ]
  %20 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %18) #21
  %21 = getelementptr inbounds %struct.iv_use, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !1017
  %23 = tail call fastcc i32 @gimple_uid(ptr noundef %22) #21
  %24 = tail call fastcc ptr @gimple_bb(ptr noundef %22) #21
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %37, !prof !1704

26:                                               ; preds = %17
  %27 = tail call fastcc i32 @gimple_uid(ptr noundef %15) #21
  %28 = icmp ugt i32 %23, %27
  br i1 %28, label %37, label %29, !prof !1705

29:                                               ; preds = %26
  %30 = icmp eq ptr %19, null
  br i1 %30, label %36, label %31, !prof !1706

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.iv_use, ptr %19, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1017
  %34 = tail call fastcc i32 @gimple_uid(ptr noundef %33) #21
  %35 = icmp ugt i32 %23, %34
  br i1 %35, label %36, label %37, !prof !1707

36:                                               ; preds = %31, %29
  br label %37

37:                                               ; preds = %31, %36, %17, %26
  %38 = phi ptr [ %19, %26 ], [ %19, %17 ], [ %20, %36 ], [ %19, %31 ]
  %39 = add nuw i32 %18, 1
  %40 = icmp eq i32 %39, %11
  br i1 %40, label %41, label %17, !prof !1708, !llvm.loop !1709

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, null
  br i1 %42, label %48, label %43, !prof !1710

43:                                               ; preds = %41
  %44 = tail call fastcc zeroext i8 @autoinc_possible_for_pair(ptr noundef %0, ptr noundef nonnull %38, ptr noundef nonnull %6) #21, !range !1048
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46, !prof !1711

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.iv_cand, ptr %6, i64 0, i32 9
  store ptr %38, ptr %47, align 8, !tbaa !1040
  br label %48

48:                                               ; preds = %10, %41, %43, %4, %46
  %49 = add nuw i32 %5, 1
  %50 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %4, label %52, !prof !1274, !llvm.loop !1712

52:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_important_candidates(ptr nocapture noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1713 {
  %2 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !1245

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  store i8 1, ptr %5, align 4, !tbaa !1277
  br label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %6, %17
  %9 = phi i32 [ 0, %6 ], [ %18, %17 ]
  %10 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %9) #21
  %11 = getelementptr inbounds %struct.iv_cand, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !1037
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !1714

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !1179
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %9) #20
  br label %17

17:                                               ; preds = %14, %8
  %18 = add nuw i32 %9, 1
  %19 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %8, label %21, !prof !1274, !llvm.loop !1715

21:                                               ; preds = %17
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !1011
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 60, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !1210
  %25 = icmp ule i32 %19, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  store i8 %26, ptr %27, align 4, !tbaa !1277
  br i1 %25, label %33, label %28, !prof !1716

28:                                               ; preds = %21
  %29 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31, !prof !1717

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %44

33:                                               ; preds = %4, %21
  %34 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36, !prof !1718

36:                                               ; preds = %33, %36
  %37 = phi i32 [ %41, %36 ], [ 0, %33 ]
  %38 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %37) #21
  %39 = getelementptr inbounds %struct.iv_use, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !1020
  tail call void @bitmap_obstack_free(ptr noundef %40) #20
  store ptr null, ptr %39, align 8, !tbaa !1020
  %41 = add nuw i32 %37, 1
  %42 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %36, label %54, !prof !1719, !llvm.loop !1720

44:                                               ; preds = %31, %44
  %45 = phi i32 [ 0, %31 ], [ %51, %44 ]
  %46 = tail call fastcc ptr @iv_use(ptr noundef nonnull %0, i32 noundef %45) #21
  %47 = getelementptr inbounds %struct.iv_use, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !1020
  %49 = load ptr, ptr %32, align 8, !tbaa !1179
  %50 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %48, ptr noundef %49) #20
  %51 = add nuw i32 %45, 1
  %52 = tail call fastcc i32 @n_iv_uses(ptr noundef nonnull %0) #21
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %44, label %54, !prof !1721, !llvm.loop !1722

54:                                               ; preds = %44, %36, %28, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_standard_iv_candidates_for_size(ptr noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1723 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !1724
  %3 = tail call ptr %2(i32 noundef 32, i32 noundef 1) #20
  %4 = tail call ptr @build_int_cst(ptr noundef %3, i64 noundef 0) #20
  %5 = tail call ptr @build_int_cst(ptr noundef %3, i64 noundef 1) #20
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_candidate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 !prof !1732 !PGOFuncName !1733 {
  %6 = load ptr, ptr %0, align 8, !tbaa !1203
  %7 = tail call ptr @ip_normal_pos(ptr noundef %6) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !1734

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef null) #21
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %0, align 8, !tbaa !1203
  %13 = tail call ptr @ip_end_pos(ptr noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !1735

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !1203
  %17 = tail call fastcc zeroext i8 @allow_ip_end_pos_p(ptr noundef %16) #21, !range !1048
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19, !prof !1736

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 1, ptr noundef %4, ptr noundef null) #21
  br label %21

21:                                               ; preds = %19, %15, %11
  %22 = icmp eq ptr %4, null
  br i1 %22, label %28, label %23, !prof !1737

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.iv_use, ptr %4, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !1016
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28, !prof !1738

27:                                               ; preds = %23
  tail call fastcc void @add_autoinc_candidates(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %4) #21
  br label %28

28:                                               ; preds = %27, %23, %21
  ret void
}

; Function Attrs: optsize
declare ptr @ip_normal_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_candidate_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !1739 !PGOFuncName !1740 {
  %8 = alloca ptr, align 8
  store ptr %2, ptr %8, align 8, !tbaa !1011
  %9 = icmp eq ptr %1, null
  br i1 %9, label %18, label %10, !prof !1741

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1009
  %13 = tail call fastcc ptr @generic_type_for(ptr noundef %12) #21
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %18, label %15, !prof !1742

15:                                               ; preds = %10
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef nonnull %1) #20
  %17 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %2) #20
  store ptr %17, ptr %8, align 8, !tbaa !1011
  br label %18

18:                                               ; preds = %10, %15, %7
  %19 = phi ptr [ %17, %15 ], [ %2, %10 ], [ %2, %7 ]
  %20 = phi ptr [ %16, %15 ], [ %1, %10 ], [ null, %7 ]
  %21 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %67, label %23, !prof !1743

23:                                               ; preds = %18
  %24 = and i32 %4, -2
  %25 = icmp eq i32 %24, 2
  %26 = icmp eq ptr %20, null
  br label %27

27:                                               ; preds = %23, %63
  %28 = phi i32 [ 0, %23 ], [ %64, %63 ]
  %29 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %28) #21
  %30 = getelementptr inbounds %struct.iv_cand, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !1039
  %32 = icmp eq i32 %31, %4
  br i1 %32, label %33, label %63, !prof !1744

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.iv_cand, ptr %29, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !1703
  %36 = icmp eq ptr %35, %6
  br i1 %36, label %37, label %63, !prof !1745

37:                                               ; preds = %33
  br i1 %25, label %38, label %42, !prof !1746

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.iv_cand, ptr %29, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !1040
  %41 = icmp eq ptr %40, %5
  br i1 %41, label %42, label %63

42:                                               ; preds = %37, %38
  %43 = getelementptr inbounds %struct.iv_cand, ptr %29, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !1034
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50, !prof !1747

46:                                               ; preds = %42
  %47 = icmp ne ptr %20, null
  %48 = icmp ne ptr %19, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %63, label %67

50:                                               ; preds = %42
  br i1 %26, label %51, label %53, !prof !1747

51:                                               ; preds = %50
  %52 = icmp eq ptr %19, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %51, %50
  %54 = load ptr, ptr %44, align 8, !tbaa !1008
  %55 = tail call i32 @operand_equal_p(ptr noundef %20, ptr noundef %54, i32 noundef 0) #20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57, !prof !1748

57:                                               ; preds = %53
  %58 = load ptr, ptr %43, align 8, !tbaa !1034
  %59 = getelementptr inbounds %struct.iv, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !1010
  %61 = tail call i32 @operand_equal_p(ptr noundef %19, ptr noundef %60, i32 noundef 0) #20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67, !prof !1749

63:                                               ; preds = %53, %57, %51, %46, %33, %38, %27
  %64 = add nuw i32 %28, 1
  %65 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %27, label %67, !prof !1750, !llvm.loop !1751

67:                                               ; preds = %63, %46, %57, %18
  %68 = phi i32 [ 0, %18 ], [ %28, %57 ], [ %28, %46 ], [ %64, %63 ]
  %69 = phi ptr [ null, %18 ], [ %29, %57 ], [ %29, %46 ], [ %29, %63 ]
  %70 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %117, !prof !1752

72:                                               ; preds = %67
  %73 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #20
  store i32 %68, ptr %73, align 8, !tbaa !1036
  %74 = icmp eq ptr %20, null
  br i1 %74, label %75, label %77, !prof !1348

75:                                               ; preds = %72
  %76 = icmp eq ptr %19, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %72, %75
  %78 = tail call fastcc ptr @alloc_iv(ptr noundef %20, ptr noundef %19) #21
  %79 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 6
  store ptr %78, ptr %79, align 8, !tbaa !1034
  %80 = icmp eq ptr %78, null
  %81 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 2
  store i32 %4, ptr %81, align 8, !tbaa !1039
  %82 = icmp eq i32 %4, 4
  %83 = select i1 %82, i1 true, i1 %80
  br i1 %83, label %93, label %87, !prof !1753

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 6
  store ptr null, ptr %85, align 8, !tbaa !1034
  %86 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 2
  store i32 %4, ptr %86, align 8, !tbaa !1039
  br label %93

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !1009
  %90 = tail call ptr @create_tmp_var_raw(ptr noundef %89, ptr noundef nonnull @.str.42) #20
  %91 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 4
  store ptr %90, ptr %91, align 8, !tbaa !1754
  %92 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 5
  store ptr %90, ptr %92, align 8, !tbaa !1755
  br label %93

93:                                               ; preds = %77, %84, %87
  %94 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 1
  store i8 %3, ptr %94, align 4, !tbaa !1037
  %95 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 3
  store ptr %6, ptr %95, align 8, !tbaa !1703
  %96 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_iv_cand_p_heap_safe_push(ptr noundef nonnull %96, ptr noundef nonnull %73) #21
  %97 = icmp eq ptr %19, null
  br i1 %97, label %105, label %98, !prof !1348

98:                                               ; preds = %93
  %99 = load i64, ptr %19, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 23
  br i1 %101, label %105, label %102, !prof !1756

102:                                              ; preds = %98
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !1011
  %103 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 10
  %104 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @find_depends, ptr noundef nonnull %103, ptr noundef null, ptr noundef null) #20
  br label %105

105:                                              ; preds = %102, %98, %93
  %106 = and i32 %4, -2
  %107 = icmp eq i32 %106, 2
  %108 = select i1 %107, ptr %5, ptr null, !prof !1757
  %109 = getelementptr inbounds %struct.iv_cand, ptr %73, i64 0, i32 9
  store ptr %108, ptr %109, align 8
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112, !prof !1272

112:                                              ; preds = %105
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @dump_cand(ptr noundef nonnull %110, ptr noundef nonnull %73) #21
  br label %117

117:                                              ; preds = %105, %112, %116, %67
  %118 = phi ptr [ %73, %116 ], [ %73, %112 ], [ %73, %105 ], [ %69, %67 ]
  %119 = icmp eq i8 %3, 0
  br i1 %119, label %134, label %120, !prof !1758

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.iv_cand, ptr %118, i64 0, i32 1
  %122 = load i8, ptr %121, align 4, !tbaa !1037
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %134, !prof !1759

124:                                              ; preds = %120
  store i8 1, ptr %121, align 4, !tbaa !1037
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127, !prof !1760

127:                                              ; preds = %124
  %128 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %129 = and i32 %128, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %118, align 8, !tbaa !1036
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.43, i32 noundef %132) #21
  br label %134

134:                                              ; preds = %124, %127, %131, %120, %117
  %135 = icmp eq ptr %5, null
  br i1 %135, label %150, label %136, !prof !1761

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.iv_use, ptr %5, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !1020
  %139 = call zeroext i8 @bitmap_set_bit(ptr noundef %138, i32 noundef %68) #20
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %141 = icmp eq ptr %140, null
  br i1 %141, label %150, label %142, !prof !1762

142:                                              ; preds = %136
  %143 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %118, align 8, !tbaa !1036
  %148 = load i32, ptr %5, align 8, !tbaa !1014
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %140, ptr noundef nonnull @.str.44, i32 noundef %147, i32 noundef %148) #21
  br label %150

150:                                              ; preds = %136, %142, %146, %134
  ret ptr %118
}

; Function Attrs: optsize
declare ptr @ip_end_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @allow_ip_end_pos_p(ptr noundef %0) unnamed_addr #0 !prof !1732 !PGOFuncName !1763 {
  %2 = tail call ptr @ip_normal_pos(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !1734

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
define internal fastcc void @add_autoinc_candidates(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1764 !PGOFuncName !1765 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1017
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1369
  %9 = load ptr, ptr %0, align 8, !tbaa !1203
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %35, !prof !1766

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1767
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %13, ptr noundef nonnull %6) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %35, label %16, !prof !1768

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !tbaa !1017
  %18 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %17) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %35, !prof !1769

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %1) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23, !prof !1770

23:                                               ; preds = %20
  %24 = tail call i64 @int_cst_value(ptr noundef %1) #20
  %25 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !1018
  %27 = load ptr, ptr %26, align 8, !tbaa !1011
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1009
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35, !prof !1771

33:                                               ; preds = %23
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #20
  br label %35

35:                                               ; preds = %33, %23, %3, %11, %16, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @generic_type_for(ptr noundef %0) unnamed_addr #0 !prof !1739 !PGOFuncName !1772 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 10, label %7
    i16 12, label %7
  ], !prof !1773

4:                                                ; preds = %1
  %5 = and i64 %2, 2097152
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9, !prof !1774

7:                                                ; preds = %4, %1, %1
  %8 = tail call ptr @unsigned_type_for(ptr noundef nonnull %0) #20
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %0, %4 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @n_iv_cands(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1775 !PGOFuncName !1776 {
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1182
  %4 = tail call fastcc i32 @VEC_iv_cand_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_cand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1777 !PGOFuncName !1778 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !1182
  %5 = tail call fastcc ptr @VEC_iv_cand_p_base_index(ptr noundef %4, i32 noundef %1) #21
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_cand_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1779 !PGOFuncName !1780 {
  tail call fastcc void @VEC_iv_cand_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !1011
  tail call fastcc void @VEC_iv_cand_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @find_depends(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 !prof !1781 !PGOFuncName !1782 {
  %4 = load ptr, ptr %0, align 8, !tbaa !1011
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %28, !prof !1783

8:                                                ; preds = %3
  %9 = load ptr, ptr @fd_ivopts_data, align 8, !tbaa !1011
  %10 = tail call fastcc ptr @name_info(ptr noundef %9, ptr noundef nonnull %4) #21
  %11 = getelementptr inbounds %struct.version_info, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !1266
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14, !prof !1784

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.version_info, ptr %10, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !1268
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28, !prof !1785

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !1011
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24, !prof !1786

21:                                               ; preds = %18
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %22, ptr %2, align 8, !tbaa !1011
  %23 = load i32, ptr %11, align 4, !tbaa !1266
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
define internal fastcc i32 @VEC_iv_cand_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1775 !PGOFuncName !1787 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1788

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1789
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_iv_cand_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1777 !PGOFuncName !1791 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_iv_cand_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1779 !PGOFuncName !1792 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = tail call fastcc i32 @VEC_iv_cand_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1793

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !1011
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_iv_cand_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !1779 !PGOFuncName !1794 {
  %3 = load i32, ptr %0, align 8, !tbaa !1789
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1789
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !1011
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_iv_cand_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !1779 !PGOFuncName !1795 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1348

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1796
  %6 = load i32, ptr %0, align 8, !tbaa !1789
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
define internal fastcc void @add_old_iv_candidates(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1797 !PGOFuncName !1798 {
  %3 = load ptr, ptr %1, align 8, !tbaa !1008
  %4 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1010
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #21
  %6 = load ptr, ptr %1, align 8, !tbaa !1008
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1009
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %13 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !1799

11:                                               ; preds = %2, %2
  %12 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 0) #20
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @build_int_cst(ptr noundef nonnull %8, i64 noundef 0) #20
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !1010
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %16, ptr noundef %17, i8 noundef zeroext 1, ptr noundef null) #21
  %18 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1006
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1009
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #21, !range !1087
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %39, !prof !1800

24:                                               ; preds = %15
  %25 = load ptr, ptr %0, align 8, !tbaa !1203
  %26 = tail call ptr @loop_latch_edge(ptr noundef %25) #20
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !1359
  %29 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %21, i32 noundef %28) #21
  %30 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %29) #21
  %31 = load ptr, ptr %1, align 8, !tbaa !1008
  %32 = load ptr, ptr %4, align 8, !tbaa !1010
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !1009
  %35 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %31, ptr noundef %32, i8 noundef zeroext 1, i32 noundef 4, ptr noundef null, ptr noundef %34) #21
  %36 = load ptr, ptr %18, align 8, !tbaa !1006
  %37 = getelementptr inbounds %struct.iv_cand, ptr %35, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !1754
  %38 = getelementptr inbounds %struct.iv_cand, ptr %35, i64 0, i32 5
  store ptr %30, ptr %38, align 8, !tbaa !1755
  br label %39

39:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_iv_value_candidates(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !1801 !PGOFuncName !1802 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %1, align 8, !tbaa !1008
  %6 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1010
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 0, ptr noundef %2) #21
  %8 = load ptr, ptr %1, align 8, !tbaa !1008
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1009
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %15 [
    i16 10, label %13
    i16 12, label %13
  ], !prof !1803

13:                                               ; preds = %3, %3
  %14 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi ptr [ %14, %13 ], [ %10, %3 ]
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 0) #20
  %18 = load ptr, ptr %6, align 8, !tbaa !1010
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %17, ptr noundef %18, i8 noundef zeroext 1, ptr noundef %2) #21
  %19 = load ptr, ptr %1, align 8, !tbaa !1008
  %20 = call fastcc ptr @strip_offset(ptr noundef %19, ptr noundef nonnull %4) #21
  %21 = load i64, ptr %4, align 8, !tbaa !1090
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26, !prof !1804

23:                                               ; preds = %15
  %24 = load ptr, ptr %1, align 8, !tbaa !1008
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %28, label %26, !prof !1805

26:                                               ; preds = %23, %15
  %27 = load ptr, ptr %6, align 8, !tbaa !1010
  tail call fastcc void @add_candidate(ptr noundef %0, ptr noundef %20, ptr noundef %27, i8 noundef zeroext 0, ptr noundef %2) #21
  br label %28

28:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @strip_offset(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1806 !PGOFuncName !1807 {
  %3 = tail call fastcc ptr @strip_offset_1(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @strip_offset_1(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1808 !PGOFuncName !1809 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %9 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1009
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  store i64 0, ptr %3, align 8, !tbaa !1090
  %15 = trunc i64 %12 to i16
  switch i16 %15, label %163 [
    i16 23, label %16
    i16 66, label %25
    i16 63, label %25
    i16 64, label %25
    i16 65, label %60
    i16 45, label %82
    i16 46, label %82
    i16 41, label %106
    i16 121, label %121
    i16 47, label %133
  ], !prof !1810

16:                                               ; preds = %4
  %17 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef nonnull %9) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %163, label %19, !prof !1811

19:                                               ; preds = %16
  %20 = tail call i32 @integer_zerop(ptr noundef nonnull %9) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %163, !prof !1812

22:                                               ; preds = %19
  %23 = tail call i64 @int_cst_value(ptr noundef nonnull %9) #20
  store i64 %23, ptr %3, align 8, !tbaa !1090
  %24 = tail call ptr @build_int_cst(ptr noundef %8, i64 noundef 0) #20
  br label %163

25:                                               ; preds = %4, %4, %4
  %26 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1009
  %28 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1009
  %30 = call fastcc ptr @strip_offset_1(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5) #21
  %31 = call fastcc ptr @strip_offset_1(ptr noundef %29, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %6) #21
  %32 = icmp eq i32 %14, 64
  %33 = load i64, ptr %5, align 8, !tbaa !1090
  %34 = load i64, ptr %6, align 8, !tbaa !1090
  br i1 %32, label %35, label %37, !prof !1813

35:                                               ; preds = %25
  %36 = sub i64 %33, %34
  br label %39

37:                                               ; preds = %25
  %38 = add i64 %34, %33
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, ptr %3, align 8, !tbaa !1090
  %41 = load ptr, ptr %26, align 8, !tbaa !1009
  %42 = icmp eq ptr %30, %41
  br i1 %42, label %43, label %46, !prof !1814

43:                                               ; preds = %39
  %44 = load ptr, ptr %28, align 8, !tbaa !1009
  %45 = icmp eq ptr %31, %44
  br i1 %45, label %163, label %46, !prof !1815

46:                                               ; preds = %43, %39
  %47 = tail call i32 @integer_zerop(ptr noundef %31) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57, !prof !1816

49:                                               ; preds = %46
  %50 = tail call i32 @integer_zerop(ptr noundef %30) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52, !prof !1817

52:                                               ; preds = %49
  br i1 %32, label %53, label %57, !prof !1818

53:                                               ; preds = %52
  %54 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %11, ptr noundef %31) #20
  br label %57

55:                                               ; preds = %49
  %56 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %14, ptr noundef %11, ptr noundef %30, ptr noundef %31) #20
  br label %57

57:                                               ; preds = %52, %46, %55, %53
  %58 = phi ptr [ %54, %53 ], [ %56, %55 ], [ %30, %46 ], [ %31, %52 ]
  %59 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %58) #20
  br label %163

60:                                               ; preds = %4
  %61 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !1009
  %63 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %62) #20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %163, label %65, !prof !1819

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !1009
  %68 = call fastcc ptr @strip_offset_1(ptr noundef %67, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5) #21
  %69 = load ptr, ptr %66, align 8, !tbaa !1009
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %163, label %71, !prof !1820

71:                                               ; preds = %65
  %72 = load i64, ptr %5, align 8, !tbaa !1090
  %73 = tail call i64 @int_cst_value(ptr noundef %62) #20
  %74 = mul i64 %73, %72
  store i64 %74, ptr %3, align 8, !tbaa !1090
  %75 = tail call i32 @integer_zerop(ptr noundef %68) #20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79, !prof !1821

77:                                               ; preds = %71
  %78 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %11, ptr noundef %68, ptr noundef %62) #20
  br label %79

79:                                               ; preds = %71, %77
  %80 = phi ptr [ %78, %77 ], [ %68, %71 ]
  %81 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %80) #20
  br label %163

82:                                               ; preds = %4, %4
  %83 = icmp eq i8 %1, 0
  br i1 %83, label %163, label %84, !prof !1822

84:                                               ; preds = %82
  %85 = tail call ptr @array_ref_element_size(ptr noundef nonnull %9) #20
  %86 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %85) #20
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %133, label %88, !prof !1822

88:                                               ; preds = %84
  %89 = tail call i64 @int_cst_value(ptr noundef %85) #20
  %90 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %91 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !1009
  %93 = call fastcc ptr @strip_offset_1(ptr noundef %92, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %6) #21
  %94 = load i64, ptr %6, align 8, !tbaa !1090
  %95 = mul i64 %94, %89
  store i64 %95, ptr %3, align 8, !tbaa !1090
  %96 = icmp eq i8 %2, 0
  br i1 %96, label %133, label %97, !prof !1823

97:                                               ; preds = %88
  %98 = tail call i32 @integer_zerop(ptr noundef %93) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %133, label %100, !prof !1824

100:                                              ; preds = %97
  %101 = load ptr, ptr %90, align 8, !tbaa !1009
  %102 = call fastcc ptr @strip_offset_1(ptr noundef %101, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef nonnull %5) #21
  %103 = load i64, ptr %5, align 8, !tbaa !1090
  %104 = load i64, ptr %3, align 8, !tbaa !1090
  %105 = add i64 %104, %103
  store i64 %105, ptr %3, align 8, !tbaa !1090
  br label %163

106:                                              ; preds = %4
  %107 = icmp eq i8 %1, 0
  br i1 %107, label %163, label %108, !prof !1825

108:                                              ; preds = %106
  %109 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %9) #20
  %110 = icmp eq i8 %2, 0
  br i1 %110, label %133, label %111, !prof !1826

111:                                              ; preds = %108
  %112 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %109) #20
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %133, label %114, !prof !1827

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !1009
  %117 = call fastcc ptr @strip_offset_1(ptr noundef %116, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef nonnull %5) #21
  %118 = load i64, ptr %5, align 8, !tbaa !1090
  %119 = tail call i64 @int_cst_value(ptr noundef %109) #20
  %120 = add i64 %119, %118
  store i64 %120, ptr %3, align 8, !tbaa !1090
  br label %163

121:                                              ; preds = %4
  %122 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !1009
  %124 = call fastcc ptr @strip_offset_1(ptr noundef %123, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %5) #21
  %125 = load i64, ptr %5, align 8, !tbaa !1090
  %126 = load i64, ptr %3, align 8, !tbaa !1090
  %127 = add i64 %126, %125
  store i64 %127, ptr %3, align 8, !tbaa !1090
  %128 = load ptr, ptr %122, align 8, !tbaa !1009
  %129 = icmp eq ptr %124, %128
  br i1 %129, label %163, label %130, !prof !1828

130:                                              ; preds = %121
  %131 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %124) #20
  %132 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %131) #20
  br label %163

133:                                              ; preds = %4, %108, %111, %88, %97, %84
  %134 = phi ptr [ null, %111 ], [ null, %108 ], [ %93, %97 ], [ %93, %88 ], [ null, %84 ], [ null, %4 ]
  %135 = phi i8 [ 1, %111 ], [ 1, %108 ], [ 1, %97 ], [ 1, %88 ], [ 1, %84 ], [ 0, %4 ]
  %136 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !1009
  %138 = call fastcc ptr @strip_offset_1(ptr noundef %137, i8 noundef zeroext %135, i8 noundef zeroext 0, ptr noundef nonnull %5) #21
  %139 = load i64, ptr %5, align 8, !tbaa !1090
  %140 = load i64, ptr %3, align 8, !tbaa !1090
  %141 = add i64 %140, %139
  store i64 %141, ptr %3, align 8, !tbaa !1090
  %142 = load ptr, ptr %136, align 8, !tbaa !1009
  %143 = icmp eq ptr %138, %142
  br i1 %143, label %144, label %153, !prof !1829

144:                                              ; preds = %133
  %145 = icmp eq ptr %134, null
  br i1 %145, label %163, label %146, !prof !1830

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !1009
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %163, label %150, !prof !1831

150:                                              ; preds = %146
  %151 = tail call ptr @copy_node_stat(ptr noundef nonnull %9) #20
  %152 = getelementptr inbounds %struct.tree_exp, ptr %151, i64 0, i32 3
  store ptr %138, ptr %152, align 8, !tbaa !1009
  br label %157

153:                                              ; preds = %133
  %154 = tail call ptr @copy_node_stat(ptr noundef nonnull %9) #20
  %155 = getelementptr inbounds %struct.tree_exp, ptr %154, i64 0, i32 3
  store ptr %138, ptr %155, align 8, !tbaa !1009
  %156 = icmp eq ptr %134, null
  br i1 %156, label %160, label %157, !prof !1832

157:                                              ; preds = %150, %153
  %158 = phi ptr [ %151, %150 ], [ %154, %153 ]
  %159 = getelementptr inbounds %struct.tree_exp, ptr %158, i64 1
  store ptr %134, ptr %159, align 8, !tbaa !1009
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi ptr [ %158, %157 ], [ %154, %153 ]
  %162 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef nonnull %161) #20
  br label %163

163:                                              ; preds = %144, %146, %4, %121, %106, %82, %65, %60, %43, %16, %19, %160, %130, %114, %100, %79, %57, %22
  %164 = phi ptr [ %162, %160 ], [ %132, %130 ], [ %117, %114 ], [ %102, %100 ], [ %81, %79 ], [ %59, %57 ], [ %24, %22 ], [ %0, %19 ], [ %0, %16 ], [ %0, %43 ], [ %0, %60 ], [ %0, %65 ], [ %0, %82 ], [ %0, %106 ], [ %0, %121 ], [ %0, %4 ], [ %0, %146 ], [ %0, %144 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %164
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1833 !PGOFuncName !1834 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !1009
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @autoinc_possible_for_pair(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1835 !PGOFuncName !1836 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !1016
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18, !prof !1837

9:                                                ; preds = %3
  %10 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %11 = load ptr, ptr %4, align 8, !tbaa !1011
  call void @bitmap_obstack_free(ptr noundef %11) #20
  %12 = call fastcc zeroext i8 @infinite_cost_p(i64 %10) #21, !range !1048
  %13 = icmp eq i8 %12, 0
  %14 = load i8, ptr %5, align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false, !prof !1838
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi i8 [ %17, %9 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_computation_cost(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !1839 !PGOFuncName !1840 {
  %7 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1017
  %9 = tail call fastcc i64 @get_computation_cost_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %8, ptr noundef %5) #21
  ret i64 %9
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @infinite_cost_p(i64 %0) unnamed_addr #6 !prof !1841 !PGOFuncName !1842 {
  %2 = and i64 %0, 4294967295
  %3 = icmp eq i64 %2, 10000000
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_computation_cost_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !1839 !PGOFuncName !1843 {
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.double_int, align 8
  %12 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1019
  %14 = load ptr, ptr %13, align 8, !tbaa !1008
  %15 = getelementptr inbounds %struct.iv, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1010
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store i64 0, ptr %8, align 8, !tbaa !1090
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  %19 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %20 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %19) #20
  store ptr null, ptr %4, align 8, !tbaa !1011
  %21 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !1034
  %23 = icmp eq ptr %22, null
  br i1 %23, label %278, label %24, !prof !1844

24:                                               ; preds = %7
  %25 = load ptr, ptr %22, align 8, !tbaa !1008
  %26 = getelementptr inbounds %struct.iv, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !1010
  %28 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1009
  %30 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1023
  %33 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1023
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %278, label %37, !prof !1845

37:                                               ; preds = %24
  %38 = icmp eq i8 %3, 0
  br i1 %38, label %56, label %39, !prof !1846

39:                                               ; preds = %37
  %40 = load ptr, ptr %12, align 8, !tbaa !1019
  %41 = getelementptr inbounds %struct.iv, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !1012
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44, !prof !1847

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.iv, ptr %22, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !1012
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48, !prof !1848

48:                                               ; preds = %44
  %49 = tail call i32 @operand_equal_p(ptr noundef nonnull %42, ptr noundef nonnull %46, i32 noundef 0) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %278, label %51, !prof !1849

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
  br i1 %59, label %258, label %60, !prof !1850

60:                                               ; preds = %56
  %61 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %27) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63, !prof !1851

63:                                               ; preds = %60
  %64 = tail call i64 @int_cst_value(ptr noundef %27) #20
  br label %65

65:                                               ; preds = %60, %63
  %66 = phi i64 [ %64, %63 ], [ 0, %60 ]
  %67 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %16, ptr noundef %27, ptr noundef nonnull %11) #21, !range !1048
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %278, label %69, !prof !1852

69:                                               ; preds = %65
  %70 = load i64, ptr %11, align 8
  %71 = getelementptr inbounds { i64, i64 }, ptr %11, i64 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %70, i64 %72) #20
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %278, label %75, !prof !1853

75:                                               ; preds = %69
  %76 = tail call i64 @double_int_to_shwi(i64 %70, i64 %72) #20
  %77 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %25) #20
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !1009
  %80 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %77) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %88, label %82, !prof !1854

82:                                               ; preds = %75
  %83 = tail call i64 @int_cst_value(ptr noundef nonnull %77) #20
  %84 = mul i64 %76, %83
  %85 = sub i64 0, %84
  store i64 %85, ptr %8, align 8, !tbaa !1090
  %86 = tail call ptr @build_int_cst(ptr noundef nonnull %18, i64 noundef 0) #20
  %87 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %86, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  br label %147

88:                                               ; preds = %75
  %89 = icmp eq i64 %76, 1
  br i1 %89, label %90, label %92, !prof !1855

90:                                               ; preds = %88
  %91 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %77, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  br label %147

92:                                               ; preds = %88
  br i1 %38, label %122, label %93, !prof !1856

93:                                               ; preds = %92
  %94 = load i64, ptr %79, align 8
  %95 = trunc i64 %94 to i16
  switch i16 %95, label %96 [
    i16 10, label %122
    i16 12, label %122
  ], !prof !1857

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !1009
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 14
  br i1 %101, label %102, label %106, !prof !1858

102:                                              ; preds = %96
  %103 = tail call i32 @vector_type_mode(ptr noundef nonnull %98) #20
  %104 = load ptr, ptr %97, align 8, !tbaa !1009
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
  %116 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %76, i32 noundef %113, i8 noundef zeroext %115) #21, !range !1048
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118, !prof !1859

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
  br i1 %128, label %129, label %131, !prof !1860

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
  %139 = load i8, ptr %138, align 1, !tbaa !1204
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
  %151 = load ptr, ptr %0, align 8, !tbaa !1203
  %152 = tail call fastcc zeroext i8 @stmt_after_increment(ptr noundef %151, ptr noundef nonnull %2, ptr noundef %5) #21, !range !1048
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154, !prof !1861

154:                                              ; preds = %147
  %155 = mul i64 %76, %66
  %156 = load i64, ptr %8, align 8, !tbaa !1090
  %157 = sub i64 %156, %155
  store i64 %157, ptr %8, align 8, !tbaa !1090
  br label %158

158:                                              ; preds = %154, %147
  %159 = load i8, ptr %10, align 1, !tbaa !1009
  br i1 %38, label %186, label %160, !prof !1862

160:                                              ; preds = %158
  %161 = load i8, ptr %9, align 1, !tbaa !1009
  %162 = load i64, ptr %8, align 8, !tbaa !1090
  %163 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !1009
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 14
  br i1 %167, label %168, label %172, !prof !1863

168:                                              ; preds = %160
  %169 = tail call i32 @vector_type_mode(ptr noundef nonnull %164) #20
  %170 = load ptr, ptr %163, align 8, !tbaa !1009
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
  br i1 %193, label %211, label %194, !prof !1864

194:                                              ; preds = %186
  %195 = icmp eq i64 %76, 1
  br i1 %195, label %278, label %196, !prof !1865

196:                                              ; preds = %194
  %197 = load i64, ptr %79, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 14
  br i1 %199, label %200, label %202, !prof !1866

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
  br i1 %213, label %214, label %228, !prof !1867

214:                                              ; preds = %211
  %215 = load i64, ptr %79, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 14
  br i1 %217, label %218, label %220, !prof !1868

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
  br i1 %231, label %232, label %234, !prof !1869

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
  br i1 %243, label %258, label %244, !prof !1870

244:                                              ; preds = %239
  %245 = load i64, ptr %79, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 14
  br i1 %247, label %248, label %250, !prof !1871

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
  br i1 %259, label %261, label %260, !prof !1872

260:                                              ; preds = %258
  store i8 0, ptr %6, align 1, !tbaa !1009
  br label %261

261:                                              ; preds = %260, %258
  %262 = load ptr, ptr %0, align 8, !tbaa !1203
  %263 = tail call fastcc ptr @get_computation_at(ptr noundef %262, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %5) #21
  %264 = icmp eq ptr %263, null
  br i1 %264, label %278, label %265, !prof !1873

265:                                              ; preds = %261
  br i1 %38, label %272, label %266, !prof !1874

266:                                              ; preds = %265
  %267 = getelementptr inbounds %struct.tree_common, ptr %263, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !1009
  %269 = getelementptr inbounds %struct.tree_common, ptr %268, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !1009
  %271 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %270, ptr noundef nonnull %263) #20
  br label %272

272:                                              ; preds = %266, %265
  %273 = phi ptr [ %271, %266 ], [ %263, %265 ]
  %274 = tail call fastcc i32 @computation_cost(ptr noundef %273, i8 noundef zeroext %20) #21
  %275 = tail call fastcc i64 @new_cost(i32 noundef %274, i32 noundef 0) #21, !range !1875
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
define internal fastcc zeroext i8 @constant_multiple_of(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1876 !PGOFuncName !1877 {
  %4 = alloca %struct.double_int, align 8
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1009
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1023
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #20
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #20
  %14 = tail call i32 @operand_equal_p(ptr noundef %12, ptr noundef %13, i32 noundef 0) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !1878

16:                                               ; preds = %3
  %17 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #21
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  store i64 %18, ptr %2, align 8, !tbaa.struct !1879
  %20 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %19, ptr %20, align 8, !tbaa.struct !1880
  br label %113

21:                                               ; preds = %3
  %22 = load i64, ptr %12, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %113 [
    i16 65, label %24
    i16 63, label %49
    i16 64, label %49
    i16 23, label %82
  ], !prof !1881

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1009
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 23
  br i1 %29, label %30, label %113, !prof !1882

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !1009
  %33 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %32, ptr noundef %13, ptr noundef nonnull %4) #21, !range !1048
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %113, label %35, !prof !1882

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
  store i64 %46, ptr %2, align 8, !tbaa.struct !1879
  %48 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %47, ptr %48, align 8, !tbaa.struct !1880
  br label %113

49:                                               ; preds = %21, %21
  %50 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !1009
  %52 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %51, ptr noundef %13, ptr noundef nonnull %5) #21, !range !1048
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %113, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !1009
  %57 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %56, ptr noundef %13, ptr noundef nonnull %6) #21, !range !1048
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
  store i64 %79, ptr %2, align 8, !tbaa.struct !1879
  %81 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %80, ptr %81, align 8, !tbaa.struct !1880
  br label %113

82:                                               ; preds = %21
  %83 = load i64, ptr %13, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 23
  br i1 %85, label %86, label %113, !prof !1883

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
  %97 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %95, i64 %96) #21, !range !1048
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %113, !prof !1884

99:                                               ; preds = %86
  %100 = extractvalue { i64, i64 } %90, 1
  %101 = extractvalue { i64, i64 } %90, 0
  %102 = call { i64, i64 } @double_int_sdivmod(i64 %101, i64 %100, i64 %95, i64 %96, i32 noundef 69, ptr noundef nonnull %4) #20
  %103 = extractvalue { i64, i64 } %102, 0
  %104 = extractvalue { i64, i64 } %102, 1
  %105 = call { i64, i64 } @double_int_sext(i64 %103, i64 %104, i32 noundef %11) #20
  %106 = extractvalue { i64, i64 } %105, 0
  %107 = extractvalue { i64, i64 } %105, 1
  store i64 %106, ptr %2, align 8, !tbaa.struct !1879
  %108 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %107, ptr %108, align 8, !tbaa.struct !1880
  %109 = load i64, ptr %4, align 8
  %110 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %111 = load i64, ptr %110, align 8
  %112 = call fastcc zeroext i8 @double_int_zero_p(i64 %109, i64 %111) #21, !range !1048
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
define internal fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 !prof !1885 !PGOFuncName !1886 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.affine_tree_combination, align 8
  %11 = alloca %struct.affine_tree_combination, align 8
  %12 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1009
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19, !prof !1853

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
  %28 = load i64, ptr %8, align 8, !tbaa !1090
  %29 = load i64, ptr %9, align 8, !tbaa !1090
  %30 = sub i64 %28, %29
  %31 = load i64, ptr %5, align 8, !tbaa !1090
  %32 = add i64 %30, %31
  store i64 %32, ptr %5, align 8, !tbaa !1090
  %33 = tail call ptr @tree_strip_nop_conversions(ptr noundef %26) #20
  %34 = tail call ptr @tree_strip_nop_conversions(ptr noundef %27) #20
  %35 = load i64, ptr %33, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 121
  br i1 %37, label %38, label %42, !prof !1887

38:                                               ; preds = %24
  %39 = tail call fastcc i64 @ptr_difference_cost(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %34, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) #21
  %40 = trunc i64 %39 to i32
  %41 = and i64 %39, -4294967296
  br label %75

42:                                               ; preds = %24
  store i8 0, ptr %3, align 1, !tbaa !1009
  %43 = tail call i32 @operand_equal_p(ptr noundef nonnull %33, ptr noundef %34, i32 noundef 0) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !1888

45:                                               ; preds = %42
  store i8 0, ptr %4, align 1, !tbaa !1009
  br label %75

46:                                               ; preds = %42
  store i8 1, ptr %4, align 1, !tbaa !1009
  %47 = tail call i32 @integer_zerop(ptr noundef %34) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !1889

49:                                               ; preds = %46
  %50 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %6) #21
  %51 = trunc i64 %50 to i32
  %52 = and i64 %50, -4294967296
  br label %75

53:                                               ; preds = %46
  %54 = tail call i32 @integer_zerop(ptr noundef nonnull %33) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56, !prof !1890

56:                                               ; preds = %53
  %57 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %34, ptr noundef %6) #21
  %58 = trunc i64 %57 to i32
  %59 = and i64 %57, -4294967296
  %60 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %61 = load i8, ptr %60, align 1, !tbaa !1204
  %62 = tail call i32 @multiply_by_cost(i64 noundef -1, i32 noundef %25, i8 noundef zeroext %61) #21
  %63 = add i32 %62, %58
  br label %75

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !1009
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
define internal fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1891 !PGOFuncName !1892 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !1011
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6, !prof !1893

6:                                                ; preds = %3
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !1011
  %7 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_depends, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #20
  %8 = load ptr, ptr %4, align 8, !tbaa !1011
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %12 = load i8, ptr %11, align 1, !tbaa !1204
  %13 = call fastcc i64 @force_expr_to_var_cost(ptr noundef %10, i8 noundef zeroext %12) #21
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @add_cost(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1894 !PGOFuncName !1895 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i32], ptr @add_cost.costs, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !1043
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25, !prof !1896

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
  store i32 %14, ptr %4, align 4, !tbaa !1043
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !1897

17:                                               ; preds = %7
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %3
  %23 = load ptr, ptr %22, align 8, !tbaa !1011
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.53, ptr noundef %23, i32 noundef %14) #21
  br label %25

25:                                               ; preds = %7, %17, %21, %2
  %26 = phi i32 [ %5, %2 ], [ %14, %21 ], [ %14, %17 ], [ %14, %7 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @add_costs(i64 %0, i64 %1) unnamed_addr #6 !prof !1898 !PGOFuncName !1899 {
  %3 = and i64 %0, -4294967296
  %4 = add i64 %1, %0
  %5 = add i64 %3, %1
  %6 = and i64 %5, -4294967296
  %7 = and i64 %4, 4294967295
  %8 = or disjoint i64 %6, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !1900 !PGOFuncName !1901 {
  %4 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !1039
  switch i32 %5, label %12 [
    i32 1, label %13
    i32 0, label %6
    i32 4, label %8
    i32 3, label %8
    i32 2, label %10
  ], !prof !1902

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @stmt_after_ip_normal_pos(ptr noundef %0, ptr noundef %2) #21, !range !1048
  br label %13

8:                                                ; preds = %3, %3
  %9 = tail call fastcc zeroext i8 @stmt_after_inc_pos(ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 0) #21, !range !1048
  br label %13

10:                                               ; preds = %3
  %11 = tail call fastcc zeroext i8 @stmt_after_inc_pos(ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 1) #21, !range !1048
  br label %13

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 622, ptr noundef nonnull @.str.13) #20
  br label %13

13:                                               ; preds = %3, %12, %10, %8, %6
  %14 = phi i8 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ 0, %3 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_address_cost(i8 noundef zeroext %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef writeonly %7) unnamed_addr #0 !prof !1903 !PGOFuncName !1904 {
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !1121
  %10 = tail call i32 %9(i8 noundef zeroext %5) #20
  %11 = zext i8 %5 to i32
  %12 = mul nuw nsw i32 %11, 87
  %13 = add nsw i32 %12, %4
  %14 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  %15 = tail call fastcc i32 @VEC_address_cost_data_base_length(ptr noundef %14) #21
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %20, label %17, !prof !1905

17:                                               ; preds = %8
  %18 = add i32 %13, 1
  tail call fastcc void @VEC_address_cost_data_heap_safe_grow_cleared(i32 noundef %18) #21
  %19 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  br label %20

20:                                               ; preds = %17, %8
  %21 = phi ptr [ %19, %17 ], [ %14, %8 ]
  %22 = tail call fastcc ptr @VEC_address_cost_data_base_index(ptr noundef %21, i32 noundef %13) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %221, !prof !1906

24:                                               ; preds = %20
  %25 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !1043
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
  store ptr %35, ptr %32, align 8, !tbaa !1009
  %36 = tail call i32 @memory_address_addr_space_p(i32 noundef %4, ptr noundef %31, i8 noundef zeroext %5) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38, !prof !1907

38:                                               ; preds = %33
  %39 = shl i64 %34, 1
  %40 = icmp slt i64 %39, 1048577
  br i1 %40, label %33, label %41, !prof !1908, !llvm.loop !1909

41:                                               ; preds = %33, %38
  %42 = phi i64 [ %34, %33 ], [ %39, %38 ]
  %43 = icmp eq i64 %42, %28
  %44 = ashr exact i64 %42, 1
  %45 = select i1 %43, i64 0, i64 %44, !prof !1910
  %46 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 1
  store i64 %45, ptr %46, align 8, !tbaa !1911
  br label %47

47:                                               ; preds = %41, %53
  %48 = phi i64 [ %28, %41 ], [ %54, %53 ]
  %49 = sub nsw i64 0, %48
  %50 = tail call ptr @gen_int_mode(i64 noundef %49, i32 noundef %10) #20
  store ptr %50, ptr %32, align 8, !tbaa !1009
  %51 = tail call i32 @memory_address_addr_space_p(i32 noundef %4, ptr noundef nonnull %31, i8 noundef zeroext %5) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53, !prof !1907

53:                                               ; preds = %47
  %54 = shl i64 %48, 1
  %55 = icmp slt i64 %54, 1048577
  br i1 %55, label %47, label %56, !prof !1908, !llvm.loop !1913

56:                                               ; preds = %47, %53
  %57 = phi i64 [ %48, %47 ], [ %54, %53 ]
  %58 = icmp eq i64 %57, %28
  %59 = ashr exact i64 %57, 1
  %60 = sub nsw i64 0, %59
  %61 = select i1 %58, i64 0, i64 %60, !prof !1910
  store i64 %61, ptr %29, align 8, !tbaa !1914
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64, !prof !1136

64:                                               ; preds = %56
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr nonnull %62)
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %71 = zext i32 %4 to i64
  %72 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !1011
  %74 = load i64, ptr %29, align 8, !tbaa !1914
  %75 = trunc i64 %74 to i32
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.55, ptr noundef %73, i32 noundef %75) #21
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %78 = load i64, ptr %46, align 8, !tbaa !1911
  %79 = trunc i64 %78 to i32
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.56, ptr noundef %73, i32 noundef %79) #21
  br label %81

81:                                               ; preds = %68, %64, %56
  br label %82

82:                                               ; preds = %81, %86
  %83 = phi i64 [ %87, %86 ], [ 2, %81 ]
  %84 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %83, i32 noundef %4, i8 noundef zeroext %5) #21, !range !1048
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %89, !prof !1910

86:                                               ; preds = %82
  %87 = add nuw nsw i64 %83, 1
  %88 = icmp eq i64 %87, 129
  br i1 %88, label %89, label %82, !prof !1915, !llvm.loop !1916

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
  br i1 %101, label %105, label %102, !prof !1917

102:                                              ; preds = %93
  %103 = tail call ptr @gen_int_mode(i64 noundef %90, i32 noundef %10) #20
  %104 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %10, ptr noundef %91, ptr noundef %103) #20
  br label %105

105:                                              ; preds = %102, %93
  %106 = phi ptr [ %104, %102 ], [ %91, %93 ]
  %107 = icmp eq i32 %97, 0
  br i1 %107, label %110, label %108, !prof !1917

108:                                              ; preds = %105
  %109 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef %106, ptr noundef %92) #20
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi ptr [ %109, %108 ], [ %106, %105 ]
  %112 = and i64 %94, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %123, label %114, !prof !1917

114:                                              ; preds = %110
  %115 = tail call ptr @ggc_alloc_string(ptr noundef nonnull @.str.17, i32 noundef -1) #20
  %116 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %10, ptr noundef %115) #20
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %117, align 8, !tbaa !1009
  %118 = icmp eq i32 %99, 0
  br i1 %118, label %130, label %119, !prof !1918

119:                                              ; preds = %114
  %120 = tail call ptr @gen_int_mode(i64 noundef %45, i32 noundef %10) #20
  %121 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef nonnull %116, ptr noundef %120) #20
  %122 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %10, ptr noundef %121) #20
  br label %127

123:                                              ; preds = %110
  %124 = icmp eq i32 %99, 0
  br i1 %124, label %133, label %125, !prof !1918

125:                                              ; preds = %123
  %126 = tail call ptr @gen_int_mode(i64 noundef %45, i32 noundef %10) #20
  br label %127

127:                                              ; preds = %125, %119
  %128 = phi ptr [ %122, %119 ], [ %126, %125 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130, !prof !1919

130:                                              ; preds = %114, %127
  %131 = phi ptr [ %128, %127 ], [ %116, %114 ]
  %132 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %10, ptr noundef %111, ptr noundef nonnull %131) #20
  br label %133

133:                                              ; preds = %123, %130, %127
  %134 = phi ptr [ %132, %130 ], [ %111, %127 ], [ %111, %123 ]
  tail call void @start_sequence() #20
  %135 = load i32, ptr @cse_not_expected, align 4, !tbaa !1043
  store i32 1, ptr @cse_not_expected, align 4, !tbaa !1043
  %136 = tail call ptr @memory_address_addr_space(i32 noundef %4, ptr noundef %134, i8 noundef zeroext %5) #20
  store i32 %135, ptr @cse_not_expected, align 4, !tbaa !1043
  %137 = tail call ptr @get_insns() #20
  tail call void @end_sequence() #20
  %138 = tail call fastcc i32 @seq_cost(ptr noundef %137, i8 noundef zeroext %6) #21
  %139 = tail call i32 @address_cost(ptr noundef %136, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #20
  %140 = add i32 %139, %138
  %141 = tail call i32 @llvm.umax.i32(i32 %140, i32 1)
  %142 = zext nneg i32 %97 to i64
  %143 = zext nneg i32 %99 to i64
  %144 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 %112, i64 %142, i64 %143, i64 %100
  store i32 %141, ptr %144, align 4, !tbaa !1043
  %145 = add nuw nsw i64 %94, 1
  %146 = icmp eq i64 %145, 16
  br i1 %146, label %147, label %93, !prof !1920, !llvm.loop !1921

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
  %156 = load i32, ptr %155, align 4, !tbaa !1043
  %157 = and i64 %151, 1
  %158 = icmp eq i64 %157, 0
  %159 = select i1 %158, i32 1, i32 %149, !prof !1918
  %160 = add i32 %159, %156
  %161 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 1, i64 %157, i64 %153, i64 %154
  %162 = load i32, ptr %161, align 4, !tbaa !1043
  %163 = icmp ult i32 %160, %162
  br i1 %163, label %164, label %165, !prof !1922

164:                                              ; preds = %150
  store i32 %160, ptr %161, align 4, !tbaa !1043
  br label %165

165:                                              ; preds = %150, %164
  %166 = add nuw nsw i64 %151, 1
  %167 = icmp eq i64 %166, 8
  br i1 %167, label %168, label %150, !prof !1923, !llvm.loop !1924

168:                                              ; preds = %165
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %170 = icmp eq ptr %169, null
  br i1 %170, label %219, label %171, !prof !1136

171:                                              ; preds = %168
  %172 = load i32, ptr @dump_flags, align 4, !tbaa !1043
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
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %186 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %185)
  %187 = and i64 %178, 1
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %177
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %191 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %190)
  br label %192

192:                                              ; preds = %189, %177
  %193 = icmp eq i32 %181, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %192
  %195 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %196 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 6, i64 1, ptr %195)
  br label %197

197:                                              ; preds = %194, %192
  %198 = icmp eq i32 %183, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %197
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %201 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 6, i64 1, ptr %200)
  br label %202

202:                                              ; preds = %199, %197
  %203 = icmp ult i64 %178, 8
  br i1 %203, label %207, label %204

204:                                              ; preds = %202
  %205 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %206 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 6, i64 1, ptr %205)
  br label %207

207:                                              ; preds = %204, %202
  %208 = zext nneg i32 %181 to i64
  %209 = zext nneg i32 %183 to i64
  %210 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 2, i64 %187, i64 %208, i64 %209, i64 %184
  %211 = load i32, ptr %210, align 4, !tbaa !1043
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.62, i32 noundef %211) #21
  %214 = add nuw nsw i64 %178, 1
  %215 = icmp eq i64 %214, 16
  br i1 %215, label %216, label %177, !llvm.loop !1925

216:                                              ; preds = %207
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !1011
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
  %225 = load i8, ptr %224, align 1, !tbaa !1009
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
  %237 = select i1 %235, i64 %232, i64 %236, !prof !1926
  %238 = icmp eq i64 %3, 1
  %239 = icmp eq i64 %237, 0
  br i1 %239, label %248, label %240, !prof !1927

240:                                              ; preds = %221
  %241 = load i64, ptr %222, align 8, !tbaa !1914
  %242 = icmp sgt i64 %241, %237
  br i1 %242, label %248, label %243, !prof !1928

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.anon, ptr %222, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !1911
  %246 = icmp sle i64 %237, %245
  %247 = zext i1 %246 to i8
  br label %248

248:                                              ; preds = %243, %240, %221
  %249 = phi i8 [ 0, %240 ], [ 0, %221 ], [ %247, %243 ]
  br i1 %238, label %255, label %250, !prof !1929

250:                                              ; preds = %248
  %251 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %3, i32 noundef %4, i8 noundef zeroext %5) #21, !range !1048
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %255, !prof !1930

253:                                              ; preds = %250
  %254 = tail call i32 @multiply_by_cost(i64 noundef %3, i32 noundef %10, i8 noundef zeroext %6) #21
  br label %255

255:                                              ; preds = %248, %253, %250
  %256 = phi i8 [ 1, %250 ], [ 0, %253 ], [ 0, %248 ]
  %257 = phi i32 [ 0, %250 ], [ %254, %253 ], [ 0, %248 ]
  %258 = icmp ne i8 %249, 0
  %259 = select i1 %239, i1 true, i1 %258
  br i1 %259, label %265, label %260, !prof !1931

260:                                              ; preds = %255
  %261 = icmp eq i8 %0, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %260
  %263 = tail call fastcc i32 @add_cost(i32 noundef %10, i8 noundef zeroext %6) #21
  %264 = add i32 %263, %257
  br label %265

265:                                              ; preds = %262, %260, %255
  %266 = phi i32 [ %257, %255 ], [ %257, %260 ], [ %264, %262 ]
  %267 = icmp eq ptr %7, null
  br i1 %267, label %269, label %268, !prof !1932

268:                                              ; preds = %265
  store i8 0, ptr %7, align 1, !tbaa !1009
  br label %269

269:                                              ; preds = %268, %265
  %270 = icmp ne i8 %1, 0
  %271 = icmp ne i8 %0, 0
  %272 = zext i8 %0 to i64
  %273 = zext i8 %1 to i64
  %274 = zext nneg i8 %249 to i64
  %275 = zext nneg i8 %256 to i64
  %276 = getelementptr inbounds %struct.anon, ptr %222, i64 0, i32 2, i64 %272, i64 %273, i64 %274, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !1043
  %278 = zext i1 %271 to i32
  %279 = zext i1 %270 to i32
  %280 = add nuw nsw i32 %279, %278
  %281 = zext nneg i8 %249 to i32
  %282 = add nuw nsw i32 %280, %281
  %283 = zext nneg i8 %256 to i32
  %284 = add nuw nsw i32 %282, %283
  %285 = add i32 %277, %266
  %286 = tail call fastcc i64 @new_cost(i32 noundef %285, i32 noundef %284) #21, !range !1875
  ret i64 %286
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_computation_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !1933 !PGOFuncName !1934 {
  %5 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1019
  %8 = load ptr, ptr %7, align 8, !tbaa !1008
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1009
  %11 = call fastcc zeroext i8 @get_computation_aff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #21, !range !1048
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13, !prof !1935

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
define internal fastcc i64 @new_cost(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1936 !PGOFuncName !1937 {
  %3 = zext nneg i32 %1 to i64
  %4 = shl nuw nsw i64 %3, 32
  %5 = zext i32 %0 to i64
  %6 = or disjoint i64 %4, %5
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @computation_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1938 !PGOFuncName !1939 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !1011
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1009
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 58, ptr %4, align 4, !tbaa !1043
  %7 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = and i32 %9, -196609
  %12 = or disjoint i32 %11, 65536
  store i32 %12, ptr %8, align 8
  store i8 %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !1940
  %13 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @prepare_decl_rtl, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #20
  call void @start_sequence() #20
  %14 = load ptr, ptr %3, align 8, !tbaa !1011
  %15 = load i64, ptr %6, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20, !prof !1949

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
  %29 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 20
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -196609
  %33 = or disjoint i32 %32, %10
  store i32 %33, ptr %30, align 8
  %34 = call fastcc i32 @seq_cost(ptr noundef %28, i8 noundef zeroext %1) #21
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %59, !prof !1949

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1009
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
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %0) unnamed_addr #6 !prof !1950 !PGOFuncName !1951 {
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
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #6 !prof !1952 !PGOFuncName !1953 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false, !prof !1954
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_sdivmod(i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ptr_difference_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 !prof !1955 !PGOFuncName !1956 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.affine_tree_combination, align 8
  %10 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store i64 0, ptr %8, align 8, !tbaa !1090
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #22
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 121
  br i1 %13, label %15, label %14, !prof !1957

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3607, ptr noundef nonnull @.str.13) #20
  br label %15

15:                                               ; preds = %7, %14
  %16 = call zeroext i8 @ptr_difference_const(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18, !prof !1958

18:                                               ; preds = %15
  %19 = load i64, ptr %8, align 8, !tbaa !1090
  %20 = load i64, ptr %5, align 8, !tbaa !1090
  %21 = add i64 %20, %19
  store i64 %21, ptr %5, align 8, !tbaa !1090
  store i8 0, ptr %3, align 1, !tbaa !1009
  store i8 0, ptr %4, align 1, !tbaa !1009
  br label %38

22:                                               ; preds = %15
  %23 = call i32 @integer_zerop(ptr noundef %2) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !1959

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1009
  %28 = call fastcc i64 @split_address_cost(ptr noundef %0, ptr noundef %27, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #21
  br label %38

29:                                               ; preds = %22
  store i8 0, ptr %3, align 1, !tbaa !1009
  store i8 1, ptr %4, align 1, !tbaa !1009
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1009
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
define internal fastcc i64 @split_address_cost(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 !prof !1960 !PGOFuncName !1961 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %1, ptr %7, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  %14 = call ptr @get_inner_reference(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext 0) #20
  %15 = load ptr, ptr %10, align 8, !tbaa !1011
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25, !prof !1962

17:                                               ; preds = %6
  %18 = load i64, ptr %9, align 8, !tbaa !1090
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25, !prof !1963

21:                                               ; preds = %17
  %22 = load i64, ptr %14, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %33, label %25, !prof !1964

25:                                               ; preds = %21, %17, %6
  store i8 0, ptr %2, align 1, !tbaa !1009
  store i8 1, ptr %3, align 1, !tbaa !1009
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !1011
  %26 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @find_depends, ptr noundef %5, ptr noundef null, ptr noundef null) #20
  %27 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %28 = load i8, ptr %27, align 1, !tbaa !1204
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !1043
  %32 = call fastcc i64 @new_cost(i32 noundef %31, i32 noundef 0) #21, !range !1875
  br label %47

33:                                               ; preds = %21
  %34 = ashr exact i64 %18, 3
  %35 = load i64, ptr %4, align 8, !tbaa !1090
  %36 = add i64 %35, %34
  store i64 %36, ptr %4, align 8, !tbaa !1090
  %37 = load i64, ptr %14, align 8
  %38 = and i64 %37, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45, !prof !1965

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 33554432
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45, !prof !1966

45:                                               ; preds = %40, %33
  store i8 1, ptr %2, align 1, !tbaa !1009
  store i8 0, ptr %3, align 1, !tbaa !1009
  br label %47

46:                                               ; preds = %40
  store i8 0, ptr %2, align 1, !tbaa !1009
  store i8 1, ptr %3, align 1, !tbaa !1009
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
define internal fastcc i64 @force_expr_to_var_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1967 !PGOFuncName !1968 {
  %3 = load i1, ptr @force_expr_to_var_cost.costs_initialized, align 1
  br i1 %3, label %56, label %4, !prof !1969

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !1011
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #20
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !1011
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
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !1011
  %18 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef 2000) #20
  %19 = trunc i64 %16 to i8
  %20 = tail call fastcc i32 @computation_cost(ptr noundef %18, i8 noundef zeroext %19) #21
  %21 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.integer_cost, i64 0, i64 %16
  store i32 %20, ptr %21, align 4, !tbaa !1043
  %22 = tail call fastcc i32 @computation_cost(ptr noundef %12, i8 noundef zeroext %19) #21
  %23 = add i32 %22, 1
  %24 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.symbol_cost, i64 0, i64 %16
  store i32 %23, ptr %24, align 4, !tbaa !1043
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  %26 = tail call ptr @build_int_cst(ptr noundef %25, i64 noundef 2000) #20
  %27 = tail call ptr @build2_stat(i32 noundef 66, ptr noundef %6, ptr noundef %12, ptr noundef %26) #20
  %28 = tail call fastcc i32 @computation_cost(ptr noundef %27, i8 noundef zeroext %19) #21
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.address_cost, i64 0, i64 %16
  store i32 %29, ptr %30, align 4, !tbaa !1043
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33, !prof !1970

33:                                               ; preds = %13
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !1043
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %31, ptr noundef nonnull @.str.46, ptr noundef nonnull %14) #21
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %40 = load i32, ptr %21, align 4, !tbaa !1043
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.49, i32 noundef %40) #21
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %43 = load i32, ptr %24, align 4, !tbaa !1043
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.50, i32 noundef %43) #21
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %46 = load i32, ptr %30, align 4, !tbaa !1043
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.51, i32 noundef %46) #21
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %49 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %16
  %50 = load i32, ptr %49, align 4, !tbaa !1043
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.52, i32 noundef %50) #21
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !1011
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %13, %33, %37
  br i1 %15, label %13, label %55, !prof !1971, !llvm.loop !1972

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
  ], !prof !1973

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !1009
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %65 [
    i16 32, label %192
    i16 34, label %192
    i16 36, label %192
  ], !prof !1974

65:                                               ; preds = %60, %56
  %66 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %57) #20
  %67 = icmp eq i8 %66, 0
  %68 = load i64, ptr %57, align 8
  %69 = trunc i64 %68 to i16
  br i1 %67, label %97, label %70, !prof !1975

70:                                               ; preds = %65
  switch i16 %69, label %90 [
    i16 23, label %71
    i16 121, label %78
  ], !prof !1976

71:                                               ; preds = %70
  %72 = zext i8 %1 to i64
  %73 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.integer_cost, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !1043
  %75 = tail call fastcc i64 @new_cost(i32 noundef %74, i32 noundef 0) #21, !range !1875
  %76 = trunc i64 %75 to i32
  %77 = and i64 %75, 30064771072
  br label %192

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !1009
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %90 [
    i16 32, label %83
    i16 34, label %83
    i16 36, label %83
  ], !prof !1977

83:                                               ; preds = %78, %78, %78
  %84 = zext i8 %1 to i64
  %85 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.symbol_cost, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !1043
  %87 = tail call fastcc i64 @new_cost(i32 noundef %86, i32 noundef 0) #21, !range !1875
  %88 = trunc i64 %87 to i32
  %89 = and i64 %87, 30064771072
  br label %192

90:                                               ; preds = %78, %70
  %91 = zext i8 %1 to i64
  %92 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.address_cost, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !1043
  %94 = tail call fastcc i64 @new_cost(i32 noundef %93, i32 noundef 0) #21, !range !1875
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
  ], !prof !1978

98:                                               ; preds = %97, %97, %97, %97
  %99 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !1009
  %101 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !1009
  %103 = tail call ptr @tree_strip_nop_conversions(ptr noundef %100) #20
  %104 = tail call ptr @tree_strip_nop_conversions(ptr noundef %102) #20
  %105 = tail call zeroext i8 @is_gimple_val(ptr noundef %103) #20
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %109, !prof !1979

107:                                              ; preds = %98
  %108 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %103, i8 noundef zeroext %1) #21
  br label %109

109:                                              ; preds = %98, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %98 ]
  %111 = tail call zeroext i8 @is_gimple_val(ptr noundef %104) #20
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %130, !prof !1980

113:                                              ; preds = %109
  %114 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %104, i8 noundef zeroext %1) #21
  br label %130

115:                                              ; preds = %97
  %116 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !1009
  %118 = tail call ptr @tree_strip_nop_conversions(ptr noundef %117) #20
  %119 = tail call zeroext i8 @is_gimple_val(ptr noundef %118) #20
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %130, !prof !1981

121:                                              ; preds = %115
  %122 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %118, i8 noundef zeroext %1) #21
  br label %130

123:                                              ; preds = %97
  %124 = zext i8 %1 to i64
  %125 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !1043
  %127 = tail call fastcc i64 @new_cost(i32 noundef %126, i32 noundef 0) #21, !range !1875
  %128 = trunc i64 %127 to i32
  %129 = and i64 %127, 30064771072
  br label %192

130:                                              ; preds = %121, %115, %109, %113
  %131 = phi i64 [ %114, %113 ], [ 0, %109 ], [ 0, %115 ], [ 0, %121 ]
  %132 = phi i64 [ %110, %113 ], [ %110, %109 ], [ 0, %115 ], [ %122, %121 ]
  %133 = phi ptr [ %104, %113 ], [ %104, %109 ], [ null, %115 ], [ null, %121 ]
  %134 = phi ptr [ %103, %113 ], [ %103, %109 ], [ %118, %115 ], [ %118, %121 ]
  %135 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !1009
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 14
  br i1 %139, label %140, label %142, !prof !1982

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
  ], !prof !1983

151:                                              ; preds = %147, %147, %147, %147
  %152 = tail call fastcc i32 @add_cost(i32 noundef %148, i8 noundef zeroext %1) #21
  %153 = tail call fastcc i64 @new_cost(i32 noundef %152, i32 noundef 0) #21, !range !1875
  %154 = and i64 %153, 30064771072
  br label %179

155:                                              ; preds = %147
  %156 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %134) #20
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %163, label %158, !prof !1984

158:                                              ; preds = %155
  %159 = tail call i64 @int_cst_value(ptr noundef %134) #20
  %160 = tail call i32 @multiply_by_cost(i64 noundef %159, i32 noundef %148, i8 noundef zeroext %1) #21
  %161 = tail call fastcc i64 @new_cost(i32 noundef %160, i32 noundef 0) #21, !range !1875
  %162 = and i64 %161, 30064771072
  br label %179

163:                                              ; preds = %155
  %164 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %133) #20
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %171, label %166, !prof !1985

166:                                              ; preds = %163
  %167 = tail call i64 @int_cst_value(ptr noundef %133) #20
  %168 = tail call i32 @multiply_by_cost(i64 noundef %167, i32 noundef %148, i8 noundef zeroext %1) #21
  %169 = tail call fastcc i64 @new_cost(i32 noundef %168, i32 noundef 0) #21, !range !1875
  %170 = and i64 %169, 30064771072
  br label %179

171:                                              ; preds = %163
  %172 = zext i8 %1 to i64
  %173 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !1043
  %175 = tail call fastcc i64 @new_cost(i32 noundef %174, i32 noundef 0) #21, !range !1875
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
  %190 = load i32, ptr %189, align 4, !tbaa !1043
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
define internal fastcc noundef ptr @produce_memory_decl_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1986 !PGOFuncName !1987 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1009
  %5 = load i64, ptr %4, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !1121
  %9 = tail call i32 %8(i8 noundef zeroext %7) #20
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18, !prof !1988

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 33554432
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %35, label %18, !prof !1989

18:                                               ; preds = %13, %2
  %19 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #20
  %20 = getelementptr inbounds %struct.tree_identifier, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1009
  %22 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %9, ptr noundef %21) #20
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 67108864
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !1151

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2661, ptr noundef nonnull @.str.13) #20
  br label %27

27:                                               ; preds = %18, %26
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %28, align 8, !tbaa !1009
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 255
  %33 = tail call ptr @gen_rtx_MEM(i32 noundef %32, ptr noundef nonnull %22) #20
  tail call void @set_mem_addr_space(ptr noundef %33, i8 noundef zeroext %7) #20
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !1990
  tail call void %34(ptr noundef nonnull %0, ptr noundef %33, i32 noundef 1) #20
  br label %43

35:                                               ; preds = %13
  %36 = load i32, ptr %1, align 4, !tbaa !1043
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %1, align 4, !tbaa !1043
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
define internal fastcc zeroext i8 @stmt_after_ip_normal_pos(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1991 !PGOFuncName !1992 {
  %3 = tail call ptr @ip_normal_pos(ptr noundef %0) #20
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %7, !prof !1993

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 567, ptr noundef nonnull @.str.13) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1767
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %17, label %11, !prof !1994

11:                                               ; preds = %7
  %12 = icmp eq ptr %4, %3
  br i1 %12, label %13, label %17, !prof !1995

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
define internal fastcc zeroext i8 @stmt_after_inc_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1996 !PGOFuncName !1997 {
  %4 = getelementptr inbounds %struct.iv_cand, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1703
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %8 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %7, ptr noundef %6) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10, !prof !1998

10:                                               ; preds = %3
  %11 = icmp eq ptr %7, %6
  br i1 %11, label %12, label %24, !prof !1999

12:                                               ; preds = %10
  %13 = icmp eq i8 %2, 0
  %14 = load ptr, ptr %4, align 8, !tbaa !1703
  br i1 %13, label %19, label %15, !prof !2000

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
define internal fastcc i32 @VEC_address_cost_data_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !2001 !PGOFuncName !2002 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !2003

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !2004
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_address_cost_data_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !1144 !PGOFuncName !2006 {
  %2 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !1011
  %3 = tail call fastcc i32 @VEC_address_cost_data_base_length(ptr noundef %2) #21
  tail call fastcc void @VEC_address_cost_data_heap_safe_grow(i32 noundef %0) #21
  %4 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !1011
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
define internal fastcc ptr @VEC_address_cost_data_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1903 !PGOFuncName !2007 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
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
define internal fastcc void @VEC_address_cost_data_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !1152 !PGOFuncName !2008 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !1011
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_address_cost_data_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !1144 !PGOFuncName !2009 {
  %2 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !1155

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !2004
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_address_cost_data_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !1011, !nonnull !1156, !noundef !1156
  store i32 %0, ptr %9, align 8, !tbaa !2004
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_address_cost_data_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !1144 !PGOFuncName !2010 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1158
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_address_cost_data_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !1144 !PGOFuncName !2011 {
  %2 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !1011
  %3 = tail call fastcc i32 @VEC_address_cost_data_base_space(ptr noundef %2, i32 noundef %0) #21, !range !1160
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1161

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !1011
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_address_cost_data_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1144 !PGOFuncName !2012 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1155

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !2013
  %7 = load i32, ptr %0, align 8, !tbaa !2004
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
define internal fastcc noundef zeroext i8 @get_computation_aff(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !2014 !PGOFuncName !2015 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.affine_tree_combination, align 8
  %9 = alloca %struct.affine_tree_combination, align 8
  %10 = alloca %struct.double_int, align 8
  %11 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %12 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1019
  %14 = load ptr, ptr %13, align 8, !tbaa !1008
  store ptr %14, ptr %6, align 8, !tbaa !1011
  %15 = getelementptr inbounds %struct.iv, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %17 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !1034
  %19 = load ptr, ptr %18, align 8, !tbaa !1008
  store ptr %19, ptr %7, align 8, !tbaa !1011
  %20 = getelementptr inbounds %struct.iv, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1010
  %22 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1009
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !1009
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
  br i1 %32, label %72, label %33, !prof !2016

33:                                               ; preds = %5
  %34 = tail call fastcc ptr @var_at_stmt(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #21
  %35 = tail call ptr @unsigned_type_for(ptr noundef nonnull %23) #20
  %36 = load i32, ptr %26, align 4
  %37 = and i32 %36, 1023
  %38 = load i32, ptr %29, align 4
  %39 = and i32 %38, 1023
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %45, !prof !2017

41:                                               ; preds = %33
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef %21) #20
  %43 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef nonnull %19) #20
  store ptr %43, ptr %7, align 8, !tbaa !1011
  %44 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef %34) #20
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi ptr [ %44, %41 ], [ %34, %33 ]
  %47 = phi ptr [ %42, %41 ], [ %21, %33 ]
  %48 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %16, ptr noundef %47, ptr noundef nonnull %10) #21, !range !1048
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %72, label %50, !prof !2018

50:                                               ; preds = %45
  %51 = call fastcc ptr @determine_common_wider_type(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %52 = load ptr, ptr %6, align 8, !tbaa !1011
  tail call void @tree_to_aff_combination(ptr noundef %52, ptr noundef %51, ptr noundef %4) #20
  %53 = load ptr, ptr %7, align 8, !tbaa !1011
  call void @tree_to_aff_combination(ptr noundef %53, ptr noundef %51, ptr noundef nonnull %8) #20
  call void @tree_to_aff_combination(ptr noundef %46, ptr noundef %35, ptr noundef nonnull %9) #20
  %54 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #21, !range !1048
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56, !prof !2019

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %11) #22
  %57 = icmp eq ptr %51, %35
  br i1 %57, label %60, label %58, !prof !2020

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
  br i1 %69, label %71, label %70, !prof !2021

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
define internal fastcc ptr @var_at_stmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !2022 !PGOFuncName !2023 {
  %4 = tail call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21, !range !1048
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %8 = select i1 %5, ptr %7, ptr %6, !prof !2024
  %9 = load ptr, ptr %8, align 8, !tbaa !1011
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @determine_common_wider_type(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !2025 !PGOFuncName !2026 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1011
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1009
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %35 [
    i16 116, label %8
    i16 113, label %8
  ], !prof !2027

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1009
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1009
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  %16 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %35, label %20, !prof !2028

20:                                               ; preds = %8
  %21 = load ptr, ptr %1, align 8, !tbaa !1011
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %35 [
    i16 116, label %24
    i16 113, label %24
  ], !prof !2029

24:                                               ; preds = %20, %20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !1009
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !1009
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %14
  %32 = and i32 %31, 1023
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35, !prof !2030

34:                                               ; preds = %24
  store ptr %10, ptr %0, align 8, !tbaa !1011
  store ptr %26, ptr %1, align 8, !tbaa !1011
  br label %35

35:                                               ; preds = %20, %24, %2, %8, %34
  %36 = phi ptr [ %12, %34 ], [ %5, %8 ], [ %5, %2 ], [ %5, %24 ], [ %5, %20 ]
  ret ptr %36
}

; Function Attrs: optsize
declare void @aff_combination_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @prepare_decl_rtl(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 !prof !2031 !PGOFuncName !2032 {
  %4 = load ptr, ptr %0, align 8, !tbaa !1011
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %76 [
    i16 121, label %7
    i16 141, label %29
    i16 32, label %49
    i16 34, label %49
    i16 36, label %49
  ], !prof !2033

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %4, %3 ]
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1011
  %11 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %10) #21, !range !1048
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %7, !prof !2034, !llvm.loop !2035

13:                                               ; preds = %7
  %14 = load i64, ptr %10, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !1043
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %76, !prof !2036

19:                                               ; preds = %13
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !1009
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !2037

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1009
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %76, !prof !2038

27:                                               ; preds = %23, %19
  %28 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %10, ptr noundef %2) #21
  br label %71

29:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !1043
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1009
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %33, i64 11
  %35 = load i8, ptr %34, align 1, !tbaa !1009
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37, !prof !2039

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %31, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !1009
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %76, !prof !2040

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 255
  %46 = load i32, ptr %2, align 4, !tbaa !1043
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %2, align 4, !tbaa !1043
  %48 = tail call ptr @gen_raw_REG(i32 noundef %45, i32 noundef %46) #20
  br label %71

49:                                               ; preds = %3, %3, %3
  store i32 0, ptr %1, align 4, !tbaa !1043
  %50 = load i64, ptr %4, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %51, i64 11
  %53 = load i8, ptr %52, align 1, !tbaa !1009
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55, !prof !2041

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !1009
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %76, !prof !2042

59:                                               ; preds = %55, %49
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67, !prof !2043

65:                                               ; preds = %59
  %66 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %4, ptr noundef %2) #21
  br label %71

67:                                               ; preds = %59
  %68 = load i32, ptr %2, align 4, !tbaa !1043
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %2, align 4, !tbaa !1043
  %70 = tail call ptr @gen_raw_REG(i32 noundef %63, i32 noundef %68) #20
  br label %71

71:                                               ; preds = %65, %67, %41, %27
  %72 = phi ptr [ %4, %65 ], [ %4, %67 ], [ %31, %41 ], [ %10, %27 ]
  %73 = phi ptr [ %66, %65 ], [ %70, %67 ], [ %48, %41 ], [ %28, %27 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75, !prof !2044

75:                                               ; preds = %71
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %72) #21
  tail call void @set_decl_rtl(ptr noundef nonnull %72, ptr noundef nonnull %73) #20
  br label %76

76:                                               ; preds = %13, %23, %37, %55, %3, %75, %71
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1938 !PGOFuncName !2045 {
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef 0, ptr noundef null) #20
  ret ptr %3
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !2046 !PGOFuncName !2047 {
  tail call fastcc void @VEC_tree_heap_reserve() #21
  %2 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !1011
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve() unnamed_addr #0 !prof !2046 !PGOFuncName !2048 {
  %1 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !1011
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !2049

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #20
  store ptr %5, ptr @decl_rtl_to_reset, align 8, !tbaa !1011
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !2046 !PGOFuncName !2050 {
  %3 = load i32, ptr %0, align 8, !tbaa !1222
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1222
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !1011
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !2046 !PGOFuncName !2051 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !2052

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !2053
  %6 = load i32, ptr %0, align 8, !tbaa !1222
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
define internal fastcc void @determine_iv_cost(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1779 !PGOFuncName !2054 {
  %3 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !1034
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !1348

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 7
  store i32 0, ptr %7, align 8, !tbaa !1273
  br label %59

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !1008
  %10 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %9, ptr noundef null) #21
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1009
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19, !prof !1348

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
  %27 = load i8, ptr %26, align 1, !tbaa !1204
  %28 = tail call fastcc i32 @add_cost(i32 noundef %25, i8 noundef zeroext %27) #21
  %29 = sdiv i32 %11, 5
  %30 = add i32 %28, %29
  %31 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !1039
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %45, !prof !1701

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !1754
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1009
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
  br i1 %47, label %48, label %55, !prof !2055

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8, !tbaa !1203
  %50 = tail call ptr @ip_end_pos(ptr noundef %49) #20
  %51 = tail call zeroext i8 @empty_block_p(ptr noundef %50) #20
  %52 = icmp eq i8 %51, 0
  %53 = add i32 %30, 2
  %54 = select i1 %52, i32 %46, i32 %53, !prof !2056
  br label %55

55:                                               ; preds = %34, %48, %45
  %56 = phi i32 [ %46, %45 ], [ %54, %48 ], [ %44, %34 ]
  %57 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 7
  store i32 %56, ptr %57, align 8, !tbaa !1273
  %58 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 8
  store i32 %28, ptr %58, align 4, !tbaa !2057
  br label %59

59:                                               ; preds = %55, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_use_cost_map(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !2058 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %4 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6, !prof !1245

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi i32 [ 0, %6 ], [ %37, %31 ]
  %10 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %11 = load i8, ptr %7, align 4, !tbaa !1277
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !1278

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @n_iv_cands(ptr noundef nonnull %0) #21
  br label %31

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.iv_use, ptr %10, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !1020
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %17, ptr noundef nonnull %2) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22, !prof !1282

20:                                               ; preds = %22, %15
  %21 = phi i32 [ 0, %15 ], [ %24, %22 ]
  br label %27

22:                                               ; preds = %15, %22
  %23 = phi i32 [ %24, %22 ], [ 0, %15 ]
  %24 = add i32 %23, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !1048
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %20, label %22, !prof !1284, !llvm.loop !2059

27:                                               ; preds = %27, %20
  %28 = phi i32 [ %30, %27 ], [ 1, %20 ]
  %29 = icmp ult i32 %28, %21
  %30 = shl i32 %28, 1
  br i1 %29, label %27, label %31, !prof !2060, !llvm.loop !2061

31:                                               ; preds = %27, %13
  %32 = phi i32 [ %14, %13 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.iv_use, ptr %10, i64 0, i32 6
  store i32 %32, ptr %33, align 8, !tbaa !1288
  %34 = zext i32 %32 to i64
  %35 = tail call ptr @xcalloc(i64 noundef %34, i64 noundef 32) #20
  %36 = getelementptr inbounds %struct.iv_use, ptr %10, i64 0, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !1289
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  %37 = add nuw i32 %9, 1
  %38 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %8, label %40, !prof !1286, !llvm.loop !2062

40:                                               ; preds = %31, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2063 !PGOFuncName !2064 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1016
  switch i32 %5, label %12 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
  ], !prof !2065

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @determine_use_iv_cost_generic(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !1048
  br label %13

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @determine_use_iv_cost_address(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !1048
  br label %13

10:                                               ; preds = %3
  %11 = tail call fastcc zeroext i8 @determine_use_iv_cost_condition(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !1048
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
define internal fastcc zeroext i8 @determine_use_iv_cost_generic(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !2066 !PGOFuncName !2067 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1039
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %15, !prof !2068

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1703
  %11 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1017
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %15, !prof !2069

14:                                               ; preds = %8
  tail call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 0, ptr noundef null, ptr noundef null) #21
  br label %20

15:                                               ; preds = %8, %3
  %16 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef nonnull %4, ptr noundef null) #21
  %17 = load ptr, ptr %4, align 8, !tbaa !1011
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 %16, ptr noundef %17, ptr noundef null) #21
  %18 = call fastcc zeroext i8 @infinite_cost_p(i64 %16) #21, !range !1048
  %19 = xor i8 %18, 1
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i8 [ 1, %14 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost_address(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !2070 !PGOFuncName !2071 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %6 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %6, 32
  %9 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !1040
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %26, !prof !2072

12:                                               ; preds = %3
  %13 = load i8, ptr %5, align 1, !tbaa !1009
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !2057
  %18 = sub i32 %7, %17
  br label %26

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !1039
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, i64 10000000, i64 %8
  %25 = select i1 %23, i32 10000000, i32 %7
  br label %26

26:                                               ; preds = %19, %15, %3
  %27 = phi i64 [ %8, %15 ], [ %8, %3 ], [ %24, %19 ]
  %28 = phi i32 [ %18, %15 ], [ %7, %3 ], [ %25, %19 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !1011
  %30 = shl nuw i64 %27, 32
  %31 = zext i32 %28 to i64
  %32 = or disjoint i64 %30, %31
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 %32, ptr noundef %29, ptr noundef null) #21
  %33 = call fastcc zeroext i8 @infinite_cost_p(i64 %32) #21, !range !1048
  %34 = xor i8 %33, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost_condition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !2073 !PGOFuncName !2074 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %10 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !1034
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !2075

13:                                               ; preds = %3
  tail call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 42949672970000000, ptr noundef null, ptr noundef null) #21
  br label %85

14:                                               ; preds = %3
  %15 = call fastcc zeroext i8 @may_eliminate_iv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #21, !range !1048
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17, !prof !2076

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !tbaa !1011
  %19 = call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %6) #21
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, -4294967296
  %22 = sdiv i32 %20, 5
  br label %23

23:                                               ; preds = %14, %17
  %24 = phi i32 [ %22, %17 ], [ 10000000, %14 ]
  %25 = phi i64 [ %21, %17 ], [ 42949672960000000, %14 ]
  %26 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1017
  %28 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %5) #21, !range !1048
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31, !prof !2075

30:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4119, ptr noundef nonnull @.str.13) #20
  br label %31

31:                                               ; preds = %23, %30
  %32 = zext i32 %24 to i64
  %33 = or disjoint i64 %25, %32
  %34 = call fastcc zeroext i8 @infinite_cost_p(i64 %33) #21, !range !1048
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %59, !prof !2077

36:                                               ; preds = %31
  %37 = load ptr, ptr %9, align 8, !tbaa !1011
  %38 = load ptr, ptr %37, align 8, !tbaa !1011
  %39 = call i32 @integer_zerop(ptr noundef %38) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41, !prof !2078

41:                                               ; preds = %36
  %42 = load ptr, ptr %8, align 8, !tbaa !1011
  %43 = load ptr, ptr %42, align 8, !tbaa !1011
  %44 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !1755
  %46 = call i32 @operand_equal_p(ptr noundef %43, ptr noundef %45, i32 noundef 0) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55, !prof !2079

48:                                               ; preds = %41
  %49 = load ptr, ptr %8, align 8, !tbaa !1011
  %50 = load ptr, ptr %49, align 8, !tbaa !1011
  %51 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !1754
  %53 = call i32 @operand_equal_p(ptr noundef %50, ptr noundef %52, i32 noundef 0) #20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !2080

55:                                               ; preds = %48, %41
  %56 = add nsw i32 %24, -1
  %57 = zext i32 %56 to i64
  %58 = or disjoint i64 %25, %57
  br label %59

59:                                               ; preds = %55, %48, %36, %31
  %60 = phi i64 [ %58, %55 ], [ %33, %48 ], [ %33, %36 ], [ %33, %31 ]
  %61 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef nonnull %7, ptr noundef null) #21
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !1011
  %62 = load ptr, ptr %5, align 8, !tbaa !1011
  %63 = call ptr @walk_tree_1(ptr noundef %62, ptr noundef nonnull @find_depends, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #20
  %64 = call fastcc i32 @compare_costs(i64 %60, i64 %61) #21
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %69, !prof !2081

66:                                               ; preds = %59
  %67 = load ptr, ptr %6, align 8, !tbaa !1011
  store ptr null, ptr %6, align 8, !tbaa !1011
  %68 = load ptr, ptr %4, align 8, !tbaa !1011
  br label %71

69:                                               ; preds = %59
  %70 = load ptr, ptr %7, align 8, !tbaa !1011
  store ptr null, ptr %7, align 8, !tbaa !1011
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %68, %66 ], [ null, %69 ]
  %73 = phi i64 [ %60, %66 ], [ %61, %69 ]
  %74 = phi ptr [ %67, %66 ], [ %70, %69 ]
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 %73, ptr noundef %74, ptr noundef %72) #21
  %75 = load ptr, ptr %6, align 8, !tbaa !1011
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77, !prof !2082

77:                                               ; preds = %71
  call void @bitmap_obstack_free(ptr noundef nonnull %75) #20
  store ptr null, ptr %6, align 8, !tbaa !1011
  br label %78

78:                                               ; preds = %77, %71
  %79 = load ptr, ptr %7, align 8, !tbaa !1011
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !2083

81:                                               ; preds = %78
  call void @bitmap_obstack_free(ptr noundef nonnull %79) #20
  br label %82

82:                                               ; preds = %81, %78
  %83 = call fastcc zeroext i8 @infinite_cost_p(i64 %73) #21, !range !1048
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
define internal fastcc void @set_use_iv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !2063 !PGOFuncName !2084 {
  %7 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %3) #21, !range !1048
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !2085

9:                                                ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  br label %75

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %12 = load i8, ptr %11, align 4, !tbaa !1277
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14, !prof !2086

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !1289
  %17 = load i32, ptr %2, align 8, !tbaa !1036
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cost_pair, ptr %16, i64 %18
  store ptr %2, ptr %19, align 8, !tbaa !1290
  %20 = getelementptr inbounds %struct.cost_pair, ptr %16, i64 %18, i32 1
  store i64 %3, ptr %20, align 8, !tbaa.struct !2087
  %21 = load ptr, ptr %15, align 8, !tbaa !1289
  %22 = load i32, ptr %2, align 8, !tbaa !1036
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cost_pair, ptr %21, i64 %23, i32 2
  store ptr %4, ptr %24, align 8, !tbaa !1293
  %25 = getelementptr inbounds %struct.cost_pair, ptr %21, i64 %23, i32 3
  store ptr %5, ptr %25, align 8, !tbaa !2088
  br label %75

26:                                               ; preds = %10
  %27 = load i32, ptr %2, align 8, !tbaa !1036
  %28 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !1288
  %30 = add i32 %29, -1
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %37, label %33, !prof !2089

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !1289
  %36 = zext i32 %31 to i64
  br label %42

37:                                               ; preds = %47, %26
  %38 = icmp eq i32 %31, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !1289
  br label %51

42:                                               ; preds = %33, %47
  %43 = phi i64 [ %36, %33 ], [ %49, %47 ]
  %44 = getelementptr inbounds %struct.cost_pair, ptr %35, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !1290
  %46 = icmp eq ptr %45, null
  br i1 %46, label %63, label %47, !prof !2090

47:                                               ; preds = %42
  %48 = zext i32 %29 to i64
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp ult i64 %49, %48
  br i1 %50, label %42, label %37, !prof !2091, !llvm.loop !2092

51:                                               ; preds = %39, %57
  %52 = phi i32 [ 0, %39 ], [ %58, %57 ]
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cost_pair, ptr %41, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !1290
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = add nuw i32 %52, 1
  %59 = icmp eq i32 %58, %31
  br i1 %59, label %60, label %51, !llvm.loop !2093

60:                                               ; preds = %57, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2585, ptr noundef nonnull @.str.13) #20
  %61 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !1289
  br label %65

63:                                               ; preds = %42
  %64 = trunc i64 %43 to i32
  br label %65

65:                                               ; preds = %51, %63, %60
  %66 = phi ptr [ %62, %60 ], [ %35, %63 ], [ %41, %51 ]
  %67 = phi i32 [ %31, %60 ], [ %64, %63 ], [ %52, %51 ]
  %68 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.cost_pair, ptr %66, i64 %69
  store ptr %2, ptr %70, align 8, !tbaa !1290
  %71 = getelementptr inbounds %struct.cost_pair, ptr %66, i64 %69, i32 1
  store i64 %3, ptr %71, align 8, !tbaa.struct !2087
  %72 = load ptr, ptr %68, align 8, !tbaa !1289
  %73 = getelementptr inbounds %struct.cost_pair, ptr %72, i64 %69, i32 2
  store ptr %4, ptr %73, align 8, !tbaa !1293
  %74 = getelementptr inbounds %struct.cost_pair, ptr %72, i64 %69, i32 3
  store ptr %5, ptr %74, align 8, !tbaa !2088
  br label %75

75:                                               ; preds = %65, %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @may_eliminate_iv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !2073 !PGOFuncName !2094 {
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !1203
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #22
  %8 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !1034
  %10 = getelementptr inbounds %struct.iv, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1010
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %81, !prof !2095

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !1017
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %17) #21
  %19 = tail call ptr @last_stmt(ptr noundef %18) #20
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %81, !prof !2096

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !1017
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #21, !range !1087
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %81, !prof !2097

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1767
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %27, ptr noundef %18) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %81, label %30, !prof !2098

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !2099
  %33 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %32, i32 noundef 0) #21
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1207
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %7, ptr noundef %35) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38, !prof !2100

38:                                               ; preds = %30
  %39 = load ptr, ptr %31, align 8, !tbaa !2099
  %40 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %39, i32 noundef 1) #21
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi ptr [ %40, %38 ], [ %33, %30 ]
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !1207
  %45 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %7, ptr noundef %44) #20
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %81, !prof !2101

47:                                               ; preds = %41
  %48 = tail call fastcc ptr @niter_for_exit(ptr noundef nonnull %0, ptr noundef nonnull %42) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %81, label %50, !prof !2102

50:                                               ; preds = %47
  %51 = load ptr, ptr %8, align 8, !tbaa !1034
  %52 = tail call fastcc ptr @iv_period(ptr noundef %51) #21
  %53 = load i64, ptr %48, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 23
  br i1 %55, label %56, label %59, !prof !2103

56:                                               ; preds = %50
  %57 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %48, ptr noundef %52) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %74, !prof !2104

59:                                               ; preds = %50
  %60 = tail call zeroext i8 @loop_only_exit_p(ptr noundef nonnull %7, ptr noundef nonnull %42) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %81, label %62, !prof !2105

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %63 = call zeroext i8 @estimated_loop_iterations(ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef nonnull %6) #20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %80, label %65, !prof !2106

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
  %75 = load ptr, ptr %16, align 8, !tbaa !1017
  call fastcc void @cand_value_at(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %75, ptr noundef nonnull %48, ptr noundef nonnull %5) #21
  %76 = call ptr @aff_combination_to_tree(ptr noundef nonnull %5) #20
  store ptr %76, ptr %3, align 8, !tbaa !1011
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
define internal fastcc i32 @compare_costs(i64 %0, i64 %1) unnamed_addr #6 !prof !2107 !PGOFuncName !2108 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = icmp eq i32 %3, %4
  %6 = lshr i64 %1, 32
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %0, 32
  %9 = trunc i64 %8 to i32
  %10 = sub i32 %9, %7
  %11 = sub nsw i32 %3, %4
  %12 = select i1 %5, i32 %10, i32 %11, !prof !2109
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @iv_period(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !2110 !PGOFuncName !2111 {
  %2 = getelementptr inbounds %struct.iv, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1010
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !2112

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %10, label %9, !prof !2113

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3979, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call ptr @num_ending_zeros(ptr noundef %3) #20
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1009
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
define internal fastcc void @cand_value_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !2114 !PGOFuncName !2115 {
  %6 = alloca %struct.affine_tree_combination, align 8
  %7 = alloca %struct.affine_tree_combination, align 8
  %8 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !1034
  %11 = load ptr, ptr %10, align 8, !tbaa !1008
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1009
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %18 [
    i16 10, label %16
    i16 12, label %16
  ], !prof !2116

16:                                               ; preds = %5, %5
  %17 = load ptr, ptr @sizetype_tab, align 16, !tbaa !1011
  br label %18

18:                                               ; preds = %5, %16
  %19 = phi ptr [ %17, %16 ], [ %13, %5 ]
  %20 = getelementptr inbounds %struct.iv, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1010
  call void @tree_to_aff_combination(ptr noundef %21, ptr noundef %19, ptr noundef nonnull %6) #20
  %22 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1009
  call void @tree_to_aff_combination(ptr noundef %3, ptr noundef %23, ptr noundef nonnull %8) #20
  call void @aff_combination_convert(ptr noundef nonnull %8, ptr noundef %19) #20
  call void @aff_combination_mult(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %24 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #21, !range !1048
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !2117

26:                                               ; preds = %18
  call void @aff_combination_add(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  br label %27

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %10, align 8, !tbaa !1008
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
define internal fastcc i32 @ivopts_global_cost_for_size(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !2118 !PGOFuncName !2119 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !1305
  %5 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 1, !tbaa !1204
  %7 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %1, i32 noundef %4, i8 noundef zeroext %6) #20
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @estimate_reg_pressure_cost(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_initial_solution(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !2120 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = tail call fastcc ptr @iv_ca_new(ptr noundef %0) #21
  store ptr %3, ptr %2, align 8, !tbaa !1011
  %4 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %10, !prof !1245

6:                                                ; preds = %10
  %7 = add nuw i32 %11, 1
  %8 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %16, !prof !1286, !llvm.loop !2121

10:                                               ; preds = %1, %6
  %11 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %12 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %11) #21
  %13 = tail call fastcc zeroext i8 @try_add_cand_for(ptr noundef %0, ptr noundef %3, ptr noundef %12) #21, !range !1048
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !prof !1697

15:                                               ; preds = %10
  call fastcc void @iv_ca_free(ptr noundef nonnull %2) #21
  br label %16

16:                                               ; preds = %6, %1, %15
  %17 = phi ptr [ null, %15 ], [ %3, %1 ], [ %3, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_dump(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1005 !PGOFuncName !2122 {
  %4 = tail call fastcc i64 @iv_ca_cost(ptr noundef %2) #21
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %5, i32 noundef %7) #21
  %9 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !1316
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %10, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1) #20
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !1180
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 9
  br label %16

16:                                               ; preds = %14, %28
  %17 = phi i32 [ %12, %14 ], [ %29, %28 ]
  %18 = phi ptr [ @.str.82, %14 ], [ %30, %28 ]
  %19 = phi i32 [ 1, %14 ], [ %31, %28 ]
  %20 = load ptr, ptr %15, align 8, !tbaa !1323
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !1043
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef %18, i32 noundef %19) #21
  %27 = load i32, ptr %11, align 8, !tbaa !1180
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi i32 [ %27, %25 ], [ %17, %16 ]
  %30 = phi ptr [ @.str.86, %25 ], [ %18, %16 ]
  %31 = add i32 %19, 1
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %33, label %16, !llvm.loop !2123

33:                                               ; preds = %28, %3
  %34 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_improve_iv_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !2124 !PGOFuncName !2125 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %7 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %8 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10, !prof !2126

10:                                               ; preds = %2, %38
  %11 = phi ptr [ %39, %38 ], [ null, %2 ]
  %12 = phi i32 [ %41, %38 ], [ 0, %2 ]
  %13 = phi i64 [ %40, %38 ], [ %7, %2 ]
  %14 = call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %12) #21
  %15 = call fastcc zeroext i8 @iv_ca_cand_used_p(ptr noundef %1, ptr noundef %14) #21, !range !1048
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %38, !prof !2127

17:                                               ; preds = %10
  %18 = call fastcc i64 @iv_ca_extend(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %3) #21
  %19 = load ptr, ptr %5, align 8, !tbaa !1011
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21, !prof !2128

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4, !tbaa !1043
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !1011
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 62, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !1210
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %31, label %27, !prof !2129

27:                                               ; preds = %21
  call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, i8 noundef zeroext 1) #21
  %28 = call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef nonnull %6) #21
  call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, i8 noundef zeroext 0) #21
  %29 = load ptr, ptr %6, align 8, !tbaa !1011
  %30 = call fastcc ptr @iv_ca_delta_join(ptr noundef nonnull %19, ptr noundef %29) #21
  store ptr %30, ptr %5, align 8, !tbaa !1011
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi ptr [ %30, %27 ], [ %19, %21 ]
  %33 = phi i64 [ %28, %27 ], [ %18, %21 ]
  %34 = call fastcc i32 @compare_costs(i64 %33, i64 %13) #21
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37, !prof !2130

36:                                               ; preds = %31
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %4) #21
  store ptr %32, ptr %4, align 8, !tbaa !1011
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
  br i1 %43, label %10, label %44, !prof !2131, !llvm.loop !2132

44:                                               ; preds = %38
  %45 = icmp eq ptr %39, null
  br i1 %45, label %46, label %50, !prof !2133

46:                                               ; preds = %2, %44
  %47 = call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %4) #21
  %48 = load ptr, ptr %4, align 8, !tbaa !1011
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50, !prof !2134

50:                                               ; preds = %46, %44
  %51 = phi ptr [ %39, %44 ], [ %48, %46 ]
  %52 = phi i64 [ %40, %44 ], [ %47, %46 ]
  call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %51, i8 noundef zeroext 1) #21
  %53 = call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %54 = call fastcc i32 @compare_costs(i64 %52, i64 %53) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !1310

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
define internal fastcc i64 @iv_ca_cost(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !2135 !PGOFuncName !2136 {
  %2 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !2137
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8, !prof !2138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 10
  %7 = load i64, ptr %6, align 8, !tbaa.struct !2087
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %7, %5 ], [ 42949672970000000, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_ca_cand_for_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !prof !2139 !PGOFuncName !2140 {
  %3 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1321
  %5 = load i32, ptr %1, align 8, !tbaa !1014
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !1011
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @iv_ca_new(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1243 !PGOFuncName !2141 {
  %2 = tail call ptr @xmalloc(i64 noundef 72) #20
  store i32 0, ptr %2, align 8, !tbaa !2142
  %3 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !2137
  %4 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #20
  %7 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !1321
  %8 = tail call fastcc i32 @n_iv_cands(ptr noundef %0) #21
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #20
  %11 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !1322
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %13 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !1316
  %14 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  %16 = load i32, ptr %15, align 8, !tbaa !1180
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 4) #20
  %20 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !1323
  %21 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 10
  store i64 0, ptr %21, align 8
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_add_cand_for(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1801 !PGOFuncName !2143 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  tail call fastcc void @iv_ca_add_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %8 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %9 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef %2) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !2144

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %2, ptr noundef null, ptr noundef nonnull %9, ptr noundef null) #21
  store ptr %12, ptr %6, align 8, !tbaa !1011
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !1179
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %16, ptr noundef nonnull %4) #21
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !1048
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %48, label %19, !prof !2145

19:                                               ; preds = %13, %43
  %20 = phi ptr [ %44, %43 ], [ %14, %13 ]
  %21 = phi i64 [ %45, %43 ], [ %8, %13 ]
  %22 = load i32, ptr %4, align 4, !tbaa !1043
  %23 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %22) #21
  %24 = getelementptr inbounds %struct.iv_cand, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !1034
  %26 = getelementptr inbounds %struct.iv, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1012
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %43, !prof !2146

29:                                               ; preds = %19
  %30 = tail call fastcc zeroext i8 @iv_ca_cand_used_p(ptr noundef %1, ptr noundef nonnull %23) #21, !range !1048
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43, !prof !2147

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %23) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35, !prof !2148

35:                                               ; preds = %32
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %33) #21
  %36 = call fastcc i64 @iv_ca_extend(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %7, ptr noundef null) #21
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %37 = load ptr, ptr %7, align 8, !tbaa !1011
  %38 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %2, ptr noundef null, ptr noundef nonnull %33, ptr noundef %37) #21
  store ptr %38, ptr %7, align 8, !tbaa !1011
  %39 = tail call fastcc i32 @compare_costs(i64 %36, i64 %21) #21
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42, !prof !2149

41:                                               ; preds = %35
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  store ptr %38, ptr %6, align 8, !tbaa !1011
  br label %43

42:                                               ; preds = %35
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %7) #21
  br label %43

43:                                               ; preds = %41, %42, %32, %29, %19
  %44 = phi ptr [ %20, %19 ], [ %20, %29 ], [ %38, %41 ], [ %20, %42 ], [ %20, %32 ]
  %45 = phi i64 [ %21, %19 ], [ %21, %29 ], [ %36, %41 ], [ %21, %42 ], [ %21, %32 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !1048
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %19, !prof !2150, !llvm.loop !2151

48:                                               ; preds = %43, %13
  %49 = phi ptr [ %14, %13 ], [ %44, %43 ]
  %50 = phi i64 [ %8, %13 ], [ %45, %43 ]
  %51 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %50) #21, !range !1048
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %99, label %53, !prof !2152

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !1288
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.iv_use, ptr %2, i64 0, i32 7
  br label %59

59:                                               ; preds = %57, %92
  %60 = phi ptr [ %49, %57 ], [ %93, %92 ]
  %61 = phi i64 [ 0, %57 ], [ %95, %92 ]
  %62 = phi i64 [ %50, %57 ], [ %94, %92 ]
  %63 = load ptr, ptr %58, align 8, !tbaa !1289
  %64 = getelementptr inbounds %struct.cost_pair, ptr %63, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !1290
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.iv_cand, ptr %65, i64 0, i32 1
  %69 = load i8, ptr %68, align 4, !tbaa !1037
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.iv_cand, ptr %65, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !1034
  %74 = getelementptr inbounds %struct.iv, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !1012
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %71, %67
  %78 = tail call fastcc zeroext i8 @iv_ca_cand_used_p(ptr noundef %1, ptr noundef nonnull %65) #21, !range !1048
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  store ptr null, ptr %7, align 8, !tbaa !1011
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %64) #21
  %81 = call fastcc i64 @iv_ca_extend(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %65, ptr noundef nonnull %7, ptr noundef null) #21
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #21
  %82 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef nonnull %2) #21
  %83 = load ptr, ptr %7, align 8, !tbaa !1011
  %84 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef nonnull %2, ptr noundef %82, ptr noundef nonnull %64, ptr noundef %83) #21
  store ptr %84, ptr %7, align 8, !tbaa !1011
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
  store ptr %84, ptr %6, align 8, !tbaa !1011
  br label %92

91:                                               ; preds = %80
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %7) #21
  br label %92

92:                                               ; preds = %90, %91, %77, %71, %59
  %93 = phi ptr [ %60, %71 ], [ %60, %77 ], [ %84, %90 ], [ %60, %91 ], [ %60, %59 ]
  %94 = phi i64 [ %62, %71 ], [ %62, %77 ], [ %81, %90 ], [ %62, %91 ], [ %62, %59 ]
  %95 = add nuw nsw i64 %61, 1
  %96 = load i32, ptr %54, align 8, !tbaa !1288
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %59, label %99, !llvm.loop !2153

99:                                               ; preds = %92, %53, %48
  %100 = phi ptr [ %49, %48 ], [ %49, %53 ], [ %93, %92 ]
  %101 = phi i64 [ %50, %48 ], [ %50, %53 ], [ %94, %92 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %100, i8 noundef zeroext 1) #21
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  %102 = tail call fastcc zeroext i8 @infinite_cost_p(i64 %101) #21, !range !1048
  %103 = xor i8 %102, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i8 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_add_use(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1801 !PGOFuncName !2154 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %6 = load i32, ptr %1, align 8, !tbaa !2142
  %7 = load i32, ptr %2, align 8, !tbaa !1014
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %12, !prof !1697

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4657, ptr noundef nonnull @.str.13) #20
  %10 = load i32, ptr %1, align 8, !tbaa !2142
  %11 = load i32, ptr %2, align 8, !tbaa !1014
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ %7, %3 ], [ %11, %9 ]
  %14 = phi i32 [ %6, %3 ], [ %10, %9 ]
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %16, label %21, !prof !2152

16:                                               ; preds = %12
  %17 = add i32 %13, 1
  store i32 %17, ptr %1, align 8, !tbaa !2142
  %18 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !2137
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !2137
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !1316
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %23, ptr noundef nonnull %5) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !1048
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26, !prof !2155

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %33, %26 ], [ null, %21 ]
  %28 = load i32, ptr %5, align 4, !tbaa !1043
  %29 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %28) #21
  %30 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %29) #21
  %31 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef %30, ptr noundef %27) #21, !range !1048
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr %27, ptr %30, !prof !2156
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !1048
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %26, !prof !2157, !llvm.loop !2158

36:                                               ; preds = %26, %21
  %37 = phi ptr [ null, %21 ], [ %33, %26 ]
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %37) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @iv_ca_delta_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2159 !PGOFuncName !2160 {
  %5 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %0, ptr %5, align 8, !tbaa !2161
  %6 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !2163
  %7 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !2164
  %8 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !2165
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_set_no_cp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !2166 !PGOFuncName !2167 {
  %4 = load i32, ptr %2, align 8, !tbaa !1014
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1321
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !1011
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11, !prof !2168

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 8, !tbaa !1290
  %13 = load i32, ptr %12, align 8, !tbaa !1036
  %14 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !2137
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !2137
  store ptr null, ptr %8, align 8, !tbaa !1011
  %17 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1322
  %19 = zext i32 %13 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !1043
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !1043
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47, !prof !2169

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !1316
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %26, i32 noundef %13) #20
  %28 = load ptr, ptr %9, align 8, !tbaa !1290
  %29 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !1034
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !2170

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !2171
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4, !tbaa !2171
  br label %36

36:                                               ; preds = %32, %24
  %37 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !2172
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 8, !tbaa !2172
  %40 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !1273
  %42 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !2173
  %44 = sub i32 %43, %41
  store i32 %44, ptr %42, align 8, !tbaa !2173
  %45 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !1038
  tail call fastcc void @iv_ca_set_remove_invariants(ptr noundef nonnull %1, ptr noundef %46) #21
  br label %47

47:                                               ; preds = %36, %11
  %48 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %49 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 1
  %50 = load i64, ptr %48, align 8
  %51 = load i64, ptr %49, align 8
  %52 = tail call fastcc i64 @sub_costs(i64 %50, i64 %51) #21
  store i64 %52, ptr %48, align 8, !tbaa.struct !2087
  %53 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !1293
  tail call fastcc void @iv_ca_set_remove_invariants(ptr noundef nonnull %1, ptr noundef %54) #21
  tail call fastcc void @iv_ca_recount_cost(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %55

55:                                               ; preds = %3, %47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @iv_ca_cand_used_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !prof !2174 !PGOFuncName !2175 {
  %3 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1322
  %5 = load i32, ptr %1, align 8, !tbaa !1036
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !1043
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_iv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #15 !prof !2176 !PGOFuncName !2177 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %52, label %5, !prof !2178

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !1277
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9, !prof !2179

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !1289
  %12 = load i32, ptr %2, align 8, !tbaa !1036
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cost_pair, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !1290
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr null, ptr %14, !prof !2180
  br label %52

18:                                               ; preds = %5
  %19 = load i32, ptr %2, align 8, !tbaa !1036
  %20 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !1288
  %22 = add i32 %21, -1
  %23 = and i32 %22, %19
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %33, label %25, !prof !2181

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !1289
  %28 = zext i32 %23 to i64
  %29 = zext i32 %21 to i64
  br label %39

30:                                               ; preds = %39
  %31 = add nuw nsw i64 %40, 1
  %32 = icmp ult i64 %31, %29
  br i1 %32, label %39, label %33, !prof !2182, !llvm.loop !2183

33:                                               ; preds = %30, %18
  %34 = icmp eq i32 %23, 0
  br i1 %34, label %52, label %35, !prof !2181

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !1289
  %38 = zext i32 %23 to i64
  br label %47

39:                                               ; preds = %25, %30
  %40 = phi i64 [ %28, %25 ], [ %31, %30 ]
  %41 = getelementptr inbounds %struct.cost_pair, ptr %27, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !1290
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %52, label %30, !prof !2184

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %52, label %47, !prof !2185, !llvm.loop !2186

47:                                               ; preds = %35, %44
  %48 = phi i64 [ 0, %35 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.cost_pair, ptr %37, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !1290
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %52, label %44, !prof !2187

52:                                               ; preds = %39, %47, %44, %33, %9, %3
  %53 = phi ptr [ null, %3 ], [ %17, %9 ], [ null, %33 ], [ %49, %47 ], [ null, %44 ], [ %41, %39 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_set_cp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !2188 !PGOFuncName !2189 {
  %5 = load i32, ptr %2, align 8, !tbaa !1014
  %6 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1321
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1011
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %63, label %12, !prof !2190

12:                                               ; preds = %4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %15, label %14, !prof !2191

14:                                               ; preds = %12
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  br i1 %16, label %63, label %17, !prof !2192

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8, !tbaa !1290
  %19 = load i32, ptr %18, align 8, !tbaa !1036
  %20 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !2137
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !2137
  %23 = load ptr, ptr %6, align 8, !tbaa !1321
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr %3, ptr %24, align 8, !tbaa !1011
  %25 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !1322
  %27 = zext i32 %19 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !1043
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !1043
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %55, !prof !2193

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !1316
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %19) #20
  %36 = load ptr, ptr %3, align 8, !tbaa !1290
  %37 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !1034
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !2194

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !2171
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !2171
  br label %44

44:                                               ; preds = %40, %32
  %45 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !2172
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !2172
  %48 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !1273
  %50 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !2173
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 8, !tbaa !2173
  %53 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !1038
  tail call fastcc void @iv_ca_set_add_invariants(ptr noundef nonnull %1, ptr noundef %54) #21
  br label %55

55:                                               ; preds = %44, %17
  %56 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %57 = getelementptr inbounds %struct.cost_pair, ptr %3, i64 0, i32 1
  %58 = load i64, ptr %56, align 8
  %59 = load i64, ptr %57, align 8
  %60 = tail call fastcc i64 @add_costs(i64 %58, i64 %59) #21
  store i64 %60, ptr %56, align 8, !tbaa.struct !2087
  %61 = getelementptr inbounds %struct.cost_pair, ptr %3, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !1293
  tail call fastcc void @iv_ca_set_add_invariants(ptr noundef nonnull %1, ptr noundef %62) #21
  tail call fastcc void @iv_ca_recount_cost(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %63

63:                                               ; preds = %15, %55, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @iv_ca_extend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) unnamed_addr #0 !prof !2195 !PGOFuncName !2196 {
  store ptr null, ptr %3, align 8, !tbaa !1011
  %6 = load i32, ptr %1, align 8, !tbaa !2142
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !2197

8:                                                ; preds = %5, %28
  %9 = phi i32 [ %29, %28 ], [ 0, %5 ]
  %10 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %9) #21
  %11 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef nonnull %1, ptr noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !2198

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !1290
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %28, label %16, !prof !2199

16:                                               ; preds = %13, %8
  %17 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %10, ptr noundef %2) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !2200

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef nonnull %1, ptr noundef nonnull %17) #21, !range !1048
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22, !prof !2201

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef nonnull %17, ptr noundef %11) #21, !range !1048
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25, !prof !2202

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !1011
  %27 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %17, ptr noundef %26) #21
  store ptr %27, ptr %3, align 8, !tbaa !1011
  br label %28

28:                                               ; preds = %22, %19, %16, %13, %25
  %29 = add nuw i32 %9, 1
  %30 = load i32, ptr %1, align 8, !tbaa !2142
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %8, label %32, !prof !2203, !llvm.loop !2204

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8, !tbaa !1011
  br label %34

34:                                               ; preds = %32, %5
  %35 = phi ptr [ %33, %32 ], [ null, %5 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %35, i8 noundef zeroext 1) #21
  %36 = tail call fastcc i64 @iv_ca_cost(ptr noundef nonnull %1) #21
  %37 = icmp eq ptr %4, null
  br i1 %37, label %40, label %38, !prof !2205

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @iv_ca_n_cands(ptr noundef nonnull %1) #21
  store i32 %39, ptr %4, align 4, !tbaa !1043
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %3, align 8, !tbaa !1011
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %41, i8 noundef zeroext 0) #21
  ret i64 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_delta_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !2206 !PGOFuncName !2207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !2208

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.iv_ca_delta, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !2165
  tail call void @free(ptr noundef nonnull %5) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !2209, !llvm.loop !2210

9:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !1011
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_delta_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !2211 !PGOFuncName !2212 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %8, !prof !2213

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @iv_ca_delta_reverse(ptr noundef %2) #21
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %2, %4 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11, !prof !2214

11:                                               ; preds = %8, %22
  %12 = phi ptr [ %25, %22 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.iv_ca_delta, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !2163
  %15 = getelementptr inbounds %struct.iv_ca_delta, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !2164
  %17 = load ptr, ptr %12, align 8, !tbaa !2161
  %18 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef %17) #21
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %22, label %20, !prof !2215

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4794, ptr noundef nonnull @.str.13) #20
  %21 = load ptr, ptr %12, align 8, !tbaa !2161
  br label %22

22:                                               ; preds = %11, %20
  %23 = phi ptr [ %17, %11 ], [ %21, %20 ]
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef %23, ptr noundef %16) #21
  %24 = getelementptr inbounds %struct.iv_ca_delta, ptr %12, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !2165
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !prof !2216, !llvm.loop !2217

27:                                               ; preds = %22, %8
  br i1 %5, label %28, label %30, !prof !2213

28:                                               ; preds = %27
  %29 = tail call fastcc ptr @iv_ca_delta_reverse(ptr noundef %9) #21
  br label %30

30:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cheaper_cost_pair(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #4 !prof !2218 !PGOFuncName !2219 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4, !prof !2220

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %24, label %6, !prof !2221

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cost_pair, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.cost_pair, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %7, align 8
  %10 = load i64, ptr %8, align 8
  %11 = tail call fastcc i32 @compare_costs(i64 %9, i64 %10) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %24, label %13, !prof !2222

13:                                               ; preds = %6
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %24, !prof !2223

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8, !tbaa !1290
  %17 = getelementptr inbounds %struct.iv_cand, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !1273
  %19 = load ptr, ptr %1, align 8, !tbaa !1290
  %20 = getelementptr inbounds %struct.iv_cand, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !1273
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
define internal fastcc void @iv_ca_set_remove_invariants(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #16 !prof !2224 !PGOFuncName !2225 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6, !prof !2226

6:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !1048
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9, !prof !2227

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !1323
  br label %12

12:                                               ; preds = %9, %23
  %13 = load i32, ptr %4, align 4, !tbaa !1043
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !1043
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !1043
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23, !prof !2228

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !2171
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !2171
  br label %23

23:                                               ; preds = %12, %19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !1048
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %12, !prof !2229, !llvm.loop !2230

26:                                               ; preds = %23, %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @sub_costs(i64 %0, i64 %1) unnamed_addr #6 !prof !2166 !PGOFuncName !2231 {
  %3 = and i64 %1, -4294967296
  %4 = sub i64 %0, %1
  %5 = sub i64 %0, %3
  %6 = and i64 %5, -4294967296
  %7 = and i64 %4, 4294967295
  %8 = or disjoint i64 %6, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_ca_recount_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !2118 !PGOFuncName !2232 {
  %3 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa.struct !2087
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa.struct !2233
  %7 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !2173
  %9 = add i32 %8, %4
  %10 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !2171
  %12 = tail call fastcc i32 @ivopts_global_cost_for_size(ptr noundef %0, i32 noundef %11) #21
  %13 = add i32 %9, %12
  %14 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa.struct !2087
  %15 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10, i32 1
  store i32 %6, ptr %15, align 4, !tbaa.struct !2233
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @iv_ca_set_add_invariants(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #16 !prof !2234 !PGOFuncName !2235 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6, !prof !2236

6:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !1048
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9, !prof !2237

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !1323
  br label %12

12:                                               ; preds = %9, %23
  %13 = load i32, ptr %4, align 4, !tbaa !1043
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !1043
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !1043
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %23, !prof !2238

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !2171
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !2171
  br label %23

23:                                               ; preds = %12, %19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !1048
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %12, !prof !2239, !llvm.loop !2240

26:                                               ; preds = %23, %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @iv_ca_has_deps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !prof !2241 !PGOFuncName !2242 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.cost_pair, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1293
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !2243

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %3) #21
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !1048
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11, !prof !2244

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !1323
  br label %14

14:                                               ; preds = %11, %20
  %15 = load i32, ptr %3, align 4, !tbaa !1043
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !1043
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !2245

20:                                               ; preds = %14
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !1048
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %14, !prof !2246, !llvm.loop !2247

23:                                               ; preds = %14, %20, %8, %2
  %24 = phi i8 [ 1, %2 ], [ 1, %8 ], [ 0, %14 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @iv_ca_n_cands(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !2248 !PGOFuncName !2249 {
  %2 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !2172
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @iv_ca_delta_reverse(ptr noundef %0) unnamed_addr #16 !prof !2250 !PGOFuncName !2251 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !2252

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = phi ptr [ %4, %3 ], [ null, %1 ]
  %6 = getelementptr inbounds %struct.iv_ca_delta, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !2165
  store ptr %5, ptr %6, align 8, !tbaa !2165
  %8 = getelementptr inbounds %struct.iv_ca_delta, ptr %4, i64 0, i32 1
  %9 = load <2 x ptr>, ptr %8, align 8, !tbaa !1011
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %10, ptr %8, align 8, !tbaa !1011
  %11 = icmp eq ptr %7, null
  br i1 %11, label %12, label %3, !prof !2253, !llvm.loop !2254

12:                                               ; preds = %3, %1
  %13 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @iv_ca_prune(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !2255 !PGOFuncName !2256 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store ptr null, ptr %7, align 8, !tbaa !1011
  %9 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %10 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !1316
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %11, ptr noundef nonnull %8) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %8) #21, !range !1048
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14, !prof !2257

14:                                               ; preds = %4, %27
  %15 = phi ptr [ %28, %27 ], [ null, %4 ]
  %16 = phi i64 [ %29, %27 ], [ %9, %4 ]
  %17 = load i32, ptr %8, align 4, !tbaa !1043
  %18 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %17) #21
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %27, label %20, !prof !2258

20:                                               ; preds = %14
  %21 = call fastcc i64 @iv_ca_narrow(ptr noundef %0, ptr noundef %1, ptr noundef %18, ptr noundef nonnull %6) #21
  %22 = tail call fastcc i32 @compare_costs(i64 %21, i64 %16) #21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26, !prof !2259

24:                                               ; preds = %20
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %7) #21
  %25 = load ptr, ptr %6, align 8, !tbaa !1011
  store ptr %25, ptr %7, align 8, !tbaa !1011
  br label %27

26:                                               ; preds = %20
  call fastcc void @iv_ca_delta_free(ptr noundef nonnull %6) #21
  br label %27

27:                                               ; preds = %24, %26, %14
  %28 = phi ptr [ %15, %14 ], [ %25, %24 ], [ %15, %26 ]
  %29 = phi i64 [ %16, %14 ], [ %21, %24 ], [ %16, %26 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %8) #21
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %8) #21, !range !1048
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !prof !2260, !llvm.loop !2261

32:                                               ; preds = %27
  %33 = icmp eq ptr %28, null
  br i1 %33, label %38, label %34, !prof !2262

34:                                               ; preds = %32
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, i8 noundef zeroext 1) #21
  %35 = tail call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, i8 noundef zeroext 0) #21
  %36 = load ptr, ptr %3, align 8, !tbaa !1011
  %37 = tail call fastcc ptr @iv_ca_delta_join(ptr noundef nonnull %28, ptr noundef %36) #21
  br label %38

38:                                               ; preds = %4, %32, %34
  %39 = phi ptr [ %37, %34 ], [ null, %32 ], [ null, %4 ]
  %40 = phi i64 [ %35, %34 ], [ %29, %32 ], [ %9, %4 ]
  store ptr %39, ptr %3, align 8, !tbaa !1011
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret i64 %40
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @iv_ca_delta_join(ptr noundef %0, ptr noundef %1) unnamed_addr #16 !prof !2263 !PGOFuncName !2264 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4, !prof !2265

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %13, label %6, !prof !2266

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %4 ]
  %8 = getelementptr inbounds %struct.iv_ca_delta, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !2165
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !prof !2267, !llvm.loop !2268

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.iv_ca_delta, ptr %7, i64 0, i32 3
  store ptr %1, ptr %12, align 8, !tbaa !2165
  br label %13

13:                                               ; preds = %4, %2, %11
  %14 = phi ptr [ %0, %11 ], [ %0, %2 ], [ %1, %4 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @iv_ca_narrow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !2269 !PGOFuncName !2270 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  store ptr null, ptr %3, align 8, !tbaa !1011
  %7 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %84, label %9, !prof !2271

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %79
  %13 = phi ptr [ null, %9 ], [ %80, %79 ]
  %14 = phi i32 [ 0, %9 ], [ %81, %79 ]
  %15 = tail call fastcc ptr @iv_use(ptr noundef %0, i32 noundef %14) #21
  %16 = tail call fastcc ptr @iv_ca_cand_for_use(ptr noundef %1, ptr noundef %15) #21
  %17 = load ptr, ptr %16, align 8, !tbaa !1290
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %79, !prof !2272

19:                                               ; preds = %12
  %20 = load i8, ptr %10, align 4, !tbaa !1277
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22, !prof !2273

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8, !tbaa !1316
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %23, ptr noundef nonnull %5) #21
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !1048
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %75, label %26, !prof !2274

26:                                               ; preds = %22, %42
  %27 = phi ptr [ %43, %42 ], [ null, %22 ]
  %28 = load i32, ptr %5, align 4, !tbaa !1043
  %29 = load i32, ptr %2, align 8, !tbaa !1036
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %42, label %31, !prof !2275

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %28) #21
  %33 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %15, ptr noundef %32) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35, !prof !2276

35:                                               ; preds = %31
  %36 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef %1, ptr noundef nonnull %33) #21, !range !1048
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38, !prof !2277

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef nonnull %33, ptr noundef %27) #21, !range !1048
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %27, ptr %33, !prof !2278
  br label %42

42:                                               ; preds = %38, %35, %31, %26
  %43 = phi ptr [ %27, %26 ], [ %27, %35 ], [ %27, %31 ], [ %41, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %44 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !1048
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %72, label %26, !prof !2279, !llvm.loop !2280

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.iv_use, ptr %15, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !1020
  %49 = load ptr, ptr %11, align 8, !tbaa !1316
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %6, ptr noundef %48, ptr noundef %49, ptr noundef nonnull %5) #21
  %50 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !1048
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %75, label %52, !prof !2281

52:                                               ; preds = %46, %68
  %53 = phi ptr [ %69, %68 ], [ null, %46 ]
  %54 = load i32, ptr %5, align 4, !tbaa !1043
  %55 = load i32, ptr %2, align 8, !tbaa !1036
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %68, label %57, !prof !2282

57:                                               ; preds = %52
  %58 = tail call fastcc ptr @iv_cand(ptr noundef %0, i32 noundef %54) #21
  %59 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %15, ptr noundef %58) #21
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61, !prof !2283

61:                                               ; preds = %57
  %62 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef %1, ptr noundef nonnull %59) #21, !range !1048
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64, !prof !2284

64:                                               ; preds = %61
  %65 = tail call fastcc zeroext i8 @cheaper_cost_pair(ptr noundef nonnull %59, ptr noundef %53) #21, !range !1048
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, ptr %53, ptr %59, !prof !2285
  br label %68

68:                                               ; preds = %64, %61, %57, %52
  %69 = phi ptr [ %53, %52 ], [ %53, %61 ], [ %53, %57 ], [ %67, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %70 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %6, ptr noundef nonnull %5) #21, !range !1048
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %52, !prof !2286, !llvm.loop !2287

72:                                               ; preds = %42, %68
  %73 = phi ptr [ %69, %68 ], [ %43, %42 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76, !prof !2288

75:                                               ; preds = %22, %46, %72
  tail call fastcc void @iv_ca_delta_free(ptr noundef nonnull %3) #21
  br label %88

76:                                               ; preds = %72
  %77 = load ptr, ptr %3, align 8, !tbaa !1011
  %78 = tail call fastcc ptr @iv_ca_delta_add(ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %73, ptr noundef %77) #21
  store ptr %78, ptr %3, align 8, !tbaa !1011
  br label %79

79:                                               ; preds = %12, %76
  %80 = phi ptr [ %13, %12 ], [ %78, %76 ]
  %81 = add nuw i32 %14, 1
  %82 = tail call fastcc i32 @n_iv_uses(ptr noundef %0) #21
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %12, label %84, !prof !2289, !llvm.loop !2290

84:                                               ; preds = %79, %4
  %85 = phi ptr [ null, %4 ], [ %80, %79 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %85, i8 noundef zeroext 1) #21
  %86 = tail call fastcc i64 @iv_ca_cost(ptr noundef %1) #21
  %87 = load ptr, ptr %3, align 8, !tbaa !1011
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %87, i8 noundef zeroext 0) #21
  br label %88

88:                                               ; preds = %84, %75
  %89 = phi i64 [ 42949672970000000, %75 ], [ %86, %84 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret i64 %89
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 !prof !2291 !PGOFuncName !2292 {
  %5 = load ptr, ptr %1, align 8, !tbaa !1376
  store ptr %5, ptr %0, align 8, !tbaa !1378
  %6 = load ptr, ptr %2, align 8, !tbaa !1376
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %6, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %14, label %11, !prof !2293

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !1382
  br label %16

14:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !1380
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1378
  %15 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !1382
  br label %26

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !1382
  %20 = icmp ult i32 %19, %13
  br i1 %20, label %21, label %24, !prof !2294

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !1396
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %16, !prof !2295

24:                                               ; preds = %16
  store ptr %17, ptr %7, align 8, !tbaa !1380
  %25 = icmp eq i32 %13, %19
  br i1 %25, label %26, label %45, !prof !2296

26:                                               ; preds = %14, %24
  %27 = phi ptr [ @bitmap_zero_bits, %14 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %14 ], [ %17, %24 ]
  %29 = phi i32 [ %15, %14 ], [ %19, %24 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !2297

31:                                               ; preds = %26
  %32 = shl i32 %29, 7
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ 0, %26 ]
  %35 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %35, align 8, !tbaa !1384
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !1090
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !1090
  %40 = and i64 %39, %37
  %41 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %40, ptr %41, align 8, !tbaa !1385
  %42 = icmp eq i64 %40, 0
  %43 = zext i1 %42 to i32
  %44 = or disjoint i32 %34, %43
  br label %48

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 1, ptr %46, align 8, !tbaa !1384
  %47 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 0, ptr %47, align 8, !tbaa !1385
  br label %48

48:                                               ; preds = %45, %33
  %49 = phi i32 [ %44, %33 ], [ 1, %45 ]
  store i32 %49, ptr %3, align 4, !tbaa !1043
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !2298 !PGOFuncName !2299 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1385
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !2300

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77, !prof !2301

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !1043
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !prof !2302, !llvm.loop !2303

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !1043
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !1043
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1384
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !1378
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !1384
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32, !prof !2281

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !1380
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !1090
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !1090
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !1385
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6, !prof !2297

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !1043
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !1043
  %46 = load i32, ptr %23, align 8, !tbaa !1384
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !1384
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !prof !2304, !llvm.loop !2305

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !1396
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54, !prof !2297

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !1382
  %57 = load ptr, ptr %26, align 8, !tbaa !1380
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !1382
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !2306

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !1378
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !1382
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !1396
  store ptr %69, ptr %26, align 8, !tbaa !1380
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !llvm.loop !2307

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !1043
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1385
  store i32 %16, ptr %1, align 4, !tbaa !1043
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !1378
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_iv(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2308 !PGOFuncName !2309 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !1034
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7, !prof !2310

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !1039
  switch i32 %9, label %32 [
    i32 0, label %10
    i32 1, label %13
    i32 3, label %16
    i32 2, label %17
    i32 4, label %21
  ], !prof !2311

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !1203
  %12 = tail call ptr @ip_normal_pos(ptr noundef %11) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #21
  br label %32

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !1203
  %15 = tail call ptr @ip_end_pos(ptr noundef %14) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %15) #21
  br label %32

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi i8 [ 0, %7 ], [ 1, %16 ]
  %19 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !1703
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %20) #20
  br label %32

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !1754
  %24 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %23) #21
  %25 = getelementptr inbounds %struct.version_info, ptr %24, i64 0, i32 4
  store i8 1, ptr %25, align 8, !tbaa !1334
  %26 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !1755
  %28 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %27) #21
  %29 = getelementptr inbounds %struct.version_info, ptr %28, i64 0, i32 4
  store i8 1, ptr %29, align 8, !tbaa !1334
  %30 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %27) #21
  %31 = getelementptr inbounds %struct.iv_use, ptr %30, i64 0, i32 8
  store ptr %1, ptr %31, align 8, !tbaa !1313
  br label %48

32:                                               ; preds = %7, %17, %13, %10
  %33 = phi i8 [ 0, %7 ], [ %18, %17 ], [ 1, %13 ], [ 0, %10 ]
  %34 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !1754
  call void @gimple_add_tmp_var(ptr noundef %35) #20
  %36 = load ptr, ptr %34, align 8, !tbaa !1754
  %37 = call zeroext i8 @add_referenced_var(ptr noundef %36) #20
  %38 = load ptr, ptr %4, align 8, !tbaa !1034
  %39 = load ptr, ptr %38, align 8, !tbaa !1008
  %40 = call ptr @unshare_expr(ptr noundef %39) #20
  %41 = load ptr, ptr %4, align 8, !tbaa !1034
  %42 = getelementptr inbounds %struct.iv, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1010
  %44 = call ptr @unshare_expr(ptr noundef %43) #20
  %45 = load ptr, ptr %34, align 8, !tbaa !1754
  %46 = load ptr, ptr %0, align 8, !tbaa !1203
  %47 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 5
  call void @create_iv(ptr noundef %40, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef nonnull %3, i8 noundef zeroext %33, ptr noundef nonnull %34, ptr noundef nonnull %47) #20
  br label %48

48:                                               ; preds = %2, %32, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !2312 !PGOFuncName !2313 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !1404
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1452
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1453
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
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !2312 !PGOFuncName !2314 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !2315

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !2316
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1561 !PGOFuncName !2317 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1016
  switch i32 %5, label %9 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
  ], !prof !2318

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
  %12 = load ptr, ptr %11, align 8, !tbaa !1017
  tail call fastcc void @update_stmt(ptr noundef %12) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use_nonlinear_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !2319 !PGOFuncName !2320 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !1039
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %86, !prof !2321

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1703
  %12 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1017
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %86, !prof !2322

15:                                               ; preds = %9
  %16 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %11) #21, !range !1048
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !2323

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5390, ptr noundef nonnull @.str.13) #20
  %19 = load ptr, ptr %12, align 8, !tbaa !1017
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %11, %15 ], [ %19, %18 ]
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #21
  %23 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !1755
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %28, label %26, !prof !2324

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5391, ptr noundef nonnull @.str.13) #20
  %27 = load ptr, ptr %23, align 8, !tbaa !1755
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %22, %20 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !1034
  %32 = getelementptr inbounds %struct.iv, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !1010
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1009
  %36 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !1009
  %38 = load i64, ptr %33, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 79
  br i1 %40, label %41, label %44, !prof !2323

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !1009
  br label %44

44:                                               ; preds = %41, %28
  %45 = phi ptr [ %43, %41 ], [ %33, %28 ]
  %46 = phi i32 [ 64, %41 ], [ 63, %28 ]
  %47 = load ptr, ptr %12, align 8, !tbaa !1017
  %48 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %47) #21, !range !1514
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %79 [
    i16 66, label %50
    i16 64, label %50
    i16 63, label %50
  ]

50:                                               ; preds = %44, %44, %44
  %51 = load ptr, ptr %12, align 8, !tbaa !1017
  %52 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %51) #21
  %53 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !1754
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %56, label %59, !prof !2325

56:                                               ; preds = %50
  %57 = load ptr, ptr %12, align 8, !tbaa !1017
  %58 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %57) #21
  br label %69

59:                                               ; preds = %50
  %60 = icmp eq i32 %48, 64
  br i1 %60, label %79, label %61, !prof !2326

61:                                               ; preds = %59
  %62 = load ptr, ptr %12, align 8, !tbaa !1017
  %63 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %62) #21
  %64 = load ptr, ptr %53, align 8, !tbaa !1754
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %79, !prof !2326

66:                                               ; preds = %61
  %67 = load ptr, ptr %12, align 8, !tbaa !1017
  %68 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %67) #21
  br label %69

69:                                               ; preds = %56, %66
  %70 = phi ptr [ %58, %56 ], [ %68, %66 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72, !prof !1306

72:                                               ; preds = %69
  %73 = load i64, ptr %70, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 23
  br i1 %75, label %123, label %76, !prof !2327

76:                                               ; preds = %72
  %77 = tail call i32 @operand_equal_p(ptr noundef nonnull %70, ptr noundef %45, i32 noundef 0) #20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %123, !prof !2328

79:                                               ; preds = %44, %59, %61, %69, %76
  %80 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !1754
  %82 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %35, ptr noundef %81) #20
  %83 = tail call ptr @unshare_expr(ptr noundef %45) #20
  %84 = tail call ptr @build2_stat(i32 noundef %46, ptr noundef %35, ptr noundef %82, ptr noundef %83) #20
  %85 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %37, ptr noundef %84) #20
  br label %91

86:                                               ; preds = %9, %3
  %87 = load ptr, ptr %0, align 8, !tbaa !1203
  %88 = tail call fastcc ptr @get_computation(ptr noundef %87, ptr noundef %1, ptr noundef nonnull %2) #21
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91, !prof !2329

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5438, ptr noundef nonnull @.str.13) #20
  br label %91

91:                                               ; preds = %79, %90, %86
  %92 = phi ptr [ %85, %79 ], [ %88, %86 ], [ null, %90 ]
  %93 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !1017
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %94) #21, !range !1087
  %96 = trunc i32 %95 to i8
  switch i8 %96, label %109 [
    i8 16, label %97
    i8 6, label %106
  ], !prof !2330

97:                                               ; preds = %91
  %98 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %94) #21
  %99 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %98) #21
  %100 = tail call fastcc ptr @name_info(ptr noundef %0, ptr noundef %99) #21
  %101 = getelementptr inbounds %struct.version_info, ptr %100, i64 0, i32 4
  %102 = load i8, ptr %101, align 8, !tbaa !1334
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %123, !prof !2331

104:                                              ; preds = %97
  %105 = tail call fastcc ptr @gimple_bb(ptr noundef %94) #21
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %105) #21
  br label %110

106:                                              ; preds = %91
  %107 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %94) #21
  %108 = load ptr, ptr %93, align 8, !tbaa !1017
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %108) #20
  br label %110

109:                                              ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5459, ptr noundef nonnull @.str.13) #20
  br label %110

110:                                              ; preds = %109, %106, %104
  %111 = phi ptr [ undef, %109 ], [ %107, %106 ], [ %99, %104 ]
  %112 = getelementptr inbounds %struct.tree_ssa_name, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !1009
  %114 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %92, i8 noundef zeroext 0, ptr noundef %113, i8 noundef zeroext 1, i32 noundef 1) #20
  %115 = load ptr, ptr %93, align 8, !tbaa !1017
  %116 = call fastcc i32 @gimple_code(ptr noundef %115) #21, !range !1087
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %118, label %121, !prof !2332

118:                                              ; preds = %110
  %119 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %111, ptr noundef %114) #20
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %119, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %120 = load ptr, ptr %93, align 8, !tbaa !1017
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %120) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1259
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  br label %123

121:                                              ; preds = %110
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %114) #20
  %122 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  store ptr %122, ptr %93, align 8, !tbaa !1017
  br label %123

123:                                              ; preds = %72, %76, %118, %121, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use_address(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !2333 !PGOFuncName !2334 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1017
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %7) #20
  %8 = load ptr, ptr %0, align 8, !tbaa !1203
  %9 = load ptr, ptr %6, align 8, !tbaa !1017
  %10 = call fastcc zeroext i8 @get_computation_aff(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef nonnull %4) #21, !range !1048
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !2335

12:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5546, ptr noundef nonnull @.str.13) #20
  br label %13

13:                                               ; preds = %3, %12
  call void @unshare_aff_combination(ptr noundef nonnull %4) #20
  %14 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !1034
  %16 = getelementptr inbounds %struct.iv, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1012
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !2336

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !1203
  %21 = load ptr, ptr %6, align 8, !tbaa !1017
  %22 = call fastcc ptr @var_at_stmt(ptr noundef %20, ptr noundef nonnull %2, ptr noundef %21) #21
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %22, %19 ], [ null, %13 ]
  %25 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !1018
  %27 = load ptr, ptr %26, align 8, !tbaa !1011
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1009
  %30 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %31 = load i8, ptr %30, align 1, !tbaa !1204
  %32 = call ptr @create_mem_ref(ptr noundef nonnull %5, ptr noundef %29, ptr noundef nonnull %4, ptr noundef %24, i8 noundef zeroext %31) #20
  %33 = load ptr, ptr %25, align 8, !tbaa !1018
  %34 = load ptr, ptr %33, align 8, !tbaa !1011
  call fastcc void @copy_ref_info(ptr noundef %32, ptr noundef %34) #21
  %35 = load ptr, ptr %25, align 8, !tbaa !1018
  store ptr %32, ptr %35, align 8, !tbaa !1011
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_use_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !2337 !PGOFuncName !2338 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %7 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1017
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %8) #20
  %9 = call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %10 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !2088
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %0, align 8, !tbaa !1203
  br i1 %12, label %34, label %14, !prof !2339

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !tbaa !1017
  %16 = call fastcc ptr @var_at_stmt(ptr noundef %13, ptr noundef %2, ptr noundef %15) #21
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %19 = call fastcc i32 @iv_elimination_compare(ptr noundef nonnull %0, ptr noundef nonnull %1) #21, !range !2340
  %20 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %18, ptr noundef nonnull %11) #20
  %21 = call ptr @unshare_expr(ptr noundef %20) #20
  %22 = call ptr @force_gimple_operand(ptr noundef %21, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #20
  %23 = load ptr, ptr %6, align 8, !tbaa !1011
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !2341

25:                                               ; preds = %14
  %26 = load ptr, ptr %0, align 8, !tbaa !1203
  %27 = call ptr @loop_preheader_edge(ptr noundef %26) #20
  %28 = load ptr, ptr %6, align 8, !tbaa !1011
  %29 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %27, ptr noundef %28) #20
  br label %30

30:                                               ; preds = %25, %14
  %31 = load ptr, ptr %7, align 8, !tbaa !1017
  call fastcc void @gimple_cond_set_lhs(ptr noundef %31, ptr noundef nonnull %16) #21
  %32 = load ptr, ptr %7, align 8, !tbaa !1017
  call fastcc void @gimple_cond_set_code(ptr noundef %32, i32 noundef %19) #21
  %33 = load ptr, ptr %7, align 8, !tbaa !1017
  call fastcc void @gimple_cond_set_rhs(ptr noundef %33, ptr noundef %22) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %50

34:                                               ; preds = %3
  %35 = call fastcc ptr @get_computation(ptr noundef %13, ptr noundef nonnull %1, ptr noundef %2) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !2342

37:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5606, ptr noundef nonnull @.str.13) #20
  br label %38

38:                                               ; preds = %34, %37
  %39 = load ptr, ptr %7, align 8, !tbaa !1017
  %40 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef nonnull %0, ptr noundef %39, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #21, !range !1048
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43, !prof !2342

42:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5609, ptr noundef nonnull @.str.13) #20
  br label %43

43:                                               ; preds = %38, %42
  %44 = load ptr, ptr %4, align 8, !tbaa !1011
  %45 = load ptr, ptr %44, align 8, !tbaa !1011
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !1009
  %48 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %35, i8 noundef zeroext 1, ptr noundef %47, i8 noundef zeroext 1, i32 noundef 1) #20
  %49 = load ptr, ptr %4, align 8, !tbaa !1011
  store ptr %48, ptr %49, align 8, !tbaa !1011
  br label %50

50:                                               ; preds = %43, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1561 !PGOFuncName !2343 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !1048
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !2344

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !2345 !PGOFuncName !2346 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !2347

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_computation(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !2348 !PGOFuncName !2349 {
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1017
  %6 = tail call fastcc ptr @get_computation_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5) #21
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !2350 !PGOFuncName !2351 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !1048
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !2352

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #21, !range !1087
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !2353

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !1048
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !2354, !llvm.loop !2355

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
define internal fastcc void @copy_ref_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2333 !PGOFuncName !2356 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 152
  br i1 %5, label %6, label %7, !prof !2335

6:                                                ; preds = %2
  tail call void @copy_mem_ref_info(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %19

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @unshare_and_remove_ssa_names(ptr noundef nonnull %1) #21
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !1009
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
define internal fastcc ptr @unshare_and_remove_ssa_names(ptr noundef %0) unnamed_addr #0 !prof !2333 !PGOFuncName !2357 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @unshare_expr(ptr noundef %0) #20
  store ptr %3, ptr %2, align 8, !tbaa !1011
  %4 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @idx_remove_ssa_names, ptr noundef null) #20
  %5 = load ptr, ptr %2, align 8, !tbaa !1011
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @idx_remove_ssa_names(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #11 !prof !2358 !PGOFuncName !2359 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1011
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %11, !prof !2360

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1009
  store ptr %10, ptr %1, align 8, !tbaa !1011
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i64, ptr %0, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -45
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %39, !prof !2361

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1011
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !2362

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %28, !prof !2363

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1009
  store ptr %27, ptr %18, align 8, !tbaa !1011
  br label %28

28:                                               ; preds = %25, %21, %17
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !1011
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32, !prof !2362

32:                                               ; preds = %28
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %39, !prof !2363

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1009
  store ptr %38, ptr %29, align 8, !tbaa !1011
  br label %39

39:                                               ; preds = %11, %28, %32, %36
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iv_elimination_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2364 !PGOFuncName !2365 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1203
  %4 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1017
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !2099
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef 0) #21
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1207
  %12 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %3, ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !2366

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 8, !tbaa !2099
  %16 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %15, i32 noundef 1) #21
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !2367
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
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2364 !PGOFuncName !2368 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !2364 !PGOFuncName !2369 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2364 !PGOFuncName !2370 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2371 !PGOFuncName !2372 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !1048
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !2373

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !2374

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1665, ptr noundef nonnull @.str.13) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !1011
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
define internal fastcc void @VEC_iv_use_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 !prof !1213 !PGOFuncName !2375 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !1352

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !1031
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_iv_cand_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 !prof !1213 !PGOFuncName !2376 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !1352

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !1789
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !2377 !PGOFuncName !2378 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !2379

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1222
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !2380

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !1011
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !1011
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 !prof !1213 !PGOFuncName !2381 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !1352

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !1222
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !1213 !PGOFuncName !2382 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1352

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1231
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1195

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !1043
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !1043
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #4 !prof !1201 !PGOFuncName !2383 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !1011
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !1186
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1229
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #21
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1164 !PGOFuncName !2384 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1187

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !1011
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #17 !prof !1164 !PGOFuncName !2385 {
  %1 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !1011
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1187

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @decl_rtl_to_reset, align 8, !tbaa !1011
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_iv_use_p_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1164 !PGOFuncName !2386 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1187

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !1011
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_iv_cand_p_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1164 !PGOFuncName !2387 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1011
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1187

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !1011
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
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!994}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!36 = !{ptr @single_dom_exit, ptr @single_exit, i64 15}
!37 = !{ptr @single_dom_exit, ptr @just_once_each_iteration_p, i64 13}
!38 = !{ptr @n_iv_uses, ptr @VEC_iv_use_p_base_length, i64 407125}
!39 = !{ptr @iv_use, ptr @VEC_iv_use_p_base_index, i64 891360}
!40 = !{ptr @contains_abnormal_ssa_name_p, ptr @is_gimple_min_invariant, i64 19973}
!41 = !{ptr @contains_abnormal_ssa_name_p, ptr @for_each_index, i64 1}
!42 = !{ptr @contains_abnormal_ssa_name_p, ptr @contains_abnormal_ssa_name_p, i64 30110}
!43 = !{ptr @contains_abnormal_ssa_name_p, ptr @fancy_abort, i64 1}
!44 = !{ptr @expr_invariant_in_loop_p, ptr @loop_depth, i64 102468}
!45 = !{ptr @expr_invariant_in_loop_p, ptr @fancy_abort, i64 1}
!46 = !{ptr @expr_invariant_in_loop_p, ptr @is_gimple_min_invariant, i64 102468}
!47 = !{ptr @expr_invariant_in_loop_p, ptr @gimple_bb, i64 42864}
!48 = !{ptr @expr_invariant_in_loop_p, ptr @flow_bb_inside_loop_p, i64 42482}
!49 = !{ptr @expr_invariant_in_loop_p, ptr @tree_operand_length, i64 124}
!50 = !{ptr @expr_invariant_in_loop_p, ptr @expr_invariant_in_loop_p, i64 137}
!51 = !{ptr @loop_depth, ptr @VEC_loop_p_base_length, i64 102468}
!52 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 324342}
!53 = !{ptr @gimple_op, ptr @gimple_ops, i64 324341}
!54 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 1319991}
!55 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 920374}
!56 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!57 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 920374}
!58 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 920374}
!59 = !{ptr @multiply_by_cost, ptr @htab_create, i64 2}
!60 = !{ptr @multiply_by_cost, ptr @htab_find_slot, i64 30144}
!61 = !{ptr @multiply_by_cost, ptr @xmalloc, i64 70}
!62 = !{ptr @multiply_by_cost, ptr @start_sequence, i64 70}
!63 = !{ptr @multiply_by_cost, ptr @gen_raw_REG, i64 70}
!64 = !{ptr @multiply_by_cost, ptr @gen_int_mode, i64 70}
!65 = !{ptr @multiply_by_cost, ptr @expand_mult, i64 70}
!66 = !{ptr @multiply_by_cost, ptr @get_insns, i64 70}
!67 = !{ptr @multiply_by_cost, ptr @end_sequence, i64 70}
!68 = !{ptr @multiply_by_cost, ptr @seq_cost, i64 70}
!69 = !{ptr @seq_cost, ptr @single_set_2, i64 10}
!70 = !{ptr @seq_cost, ptr @rtx_cost, i64 66194}
!71 = !{ptr @multiplier_allowed_in_address_p, ptr @VEC_sbitmap_base_length, i64 50981}
!72 = !{ptr @multiplier_allowed_in_address_p, ptr @VEC_sbitmap_heap_safe_grow_cleared, i64 4}
!73 = !{ptr @multiplier_allowed_in_address_p, ptr @VEC_sbitmap_base_index, i64 50981}
!74 = !{ptr @multiplier_allowed_in_address_p, ptr @gen_raw_REG, i64 7}
!75 = !{ptr @multiplier_allowed_in_address_p, ptr @sbitmap_alloc, i64 7}
!76 = !{ptr @multiplier_allowed_in_address_p, ptr @sbitmap_zero, i64 7}
!77 = !{ptr @multiplier_allowed_in_address_p, ptr @gen_rtx_fmt_ee_stat, i64 7}
!78 = !{ptr @multiplier_allowed_in_address_p, ptr @gen_int_mode, i64 1543}
!79 = !{ptr @multiplier_allowed_in_address_p, ptr @memory_address_addr_space_p, i64 1543}
!80 = !{ptr @multiplier_allowed_in_address_p, ptr @SET_BIT, i64 25}
!81 = !{ptr @multiplier_allowed_in_address_p, ptr @fprintf, i64 9}
!82 = !{ptr @multiplier_allowed_in_address_p, ptr @VEC_sbitmap_base_replace, i64 7}
!83 = !{ptr @VEC_sbitmap_heap_safe_grow_cleared, ptr @VEC_sbitmap_base_length, i64 3}
!84 = !{ptr @VEC_sbitmap_heap_safe_grow_cleared, ptr @VEC_sbitmap_heap_safe_grow, i64 3}
!85 = !{ptr @VEC_sbitmap_heap_safe_grow_cleared, ptr @VEC_sbitmap_base_address, i64 3}
!86 = !{ptr @VEC_sbitmap_heap_safe_grow, ptr @VEC_sbitmap_heap_reserve_exact, i64 3}
!87 = !{ptr @VEC_sbitmap_heap_reserve_exact, ptr @VEC_sbitmap_base_space, i64 3}
!88 = !{ptr @VEC_sbitmap_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 2}
!89 = !{ptr @tree_ssa_iv_optimize, ptr @tree_ssa_iv_optimize_init, i64 2627}
!90 = !{ptr @tree_ssa_iv_optimize, ptr @fel_init, i64 2627}
!91 = !{ptr @tree_ssa_iv_optimize, ptr @tree_ssa_iv_optimize_loop, i64 14154}
!92 = !{ptr @tree_ssa_iv_optimize, ptr @fel_next, i64 14154}
!93 = !{ptr @tree_ssa_iv_optimize, ptr @tree_ssa_iv_optimize_finalize, i64 2627}
!94 = !{ptr @tree_ssa_iv_optimize_init, ptr @VEC_tree_base_length, i64 2627}
!95 = !{ptr @tree_ssa_iv_optimize_init, ptr @xcalloc, i64 2627}
!96 = !{ptr @tree_ssa_iv_optimize_init, ptr @bitmap_obstack_alloc_stat, i64 5254}
!97 = !{ptr @tree_ssa_iv_optimize_init, ptr @VEC_iv_use_p_heap_alloc, i64 2627}
!98 = !{ptr @tree_ssa_iv_optimize_init, ptr @VEC_iv_cand_p_heap_alloc, i64 2627}
!99 = !{ptr @tree_ssa_iv_optimize_init, ptr @VEC_tree_heap_alloc, i64 2627}
!100 = !{ptr @fel_init, ptr @number_of_loops, i64 2626}
!101 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 2626}
!102 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 14150}
!103 = !{ptr @fel_init, ptr @loop_outer, i64 9985}
!104 = !{ptr @fel_init, ptr @fel_next, i64 2626}
!105 = !{ptr @tree_ssa_iv_optimize_loop, ptr @fancy_abort, i64 1}
!106 = !{ptr @tree_ssa_iv_optimize_loop, ptr @optimize_loop_for_speed_p, i64 14158}
!107 = !{ptr @tree_ssa_iv_optimize_loop, ptr @get_loop_body, i64 14158}
!108 = !{ptr @tree_ssa_iv_optimize_loop, ptr @renumber_gimple_stmt_uids_in_blocks, i64 14158}
!109 = !{ptr @tree_ssa_iv_optimize_loop, ptr @free, i64 14158}
!110 = !{ptr @tree_ssa_iv_optimize_loop, ptr @find_induction_variables, i64 14158}
!111 = !{ptr @tree_ssa_iv_optimize_loop, ptr @find_interesting_uses, i64 5908}
!112 = !{ptr @tree_ssa_iv_optimize_loop, ptr @n_iv_uses, i64 5908}
!113 = !{ptr @tree_ssa_iv_optimize_loop, ptr @find_iv_candidates, i64 5907}
!114 = !{ptr @tree_ssa_iv_optimize_loop, ptr @determine_iv_costs, i64 5907}
!115 = !{ptr @tree_ssa_iv_optimize_loop, ptr @determine_use_iv_costs, i64 5907}
!116 = !{ptr @tree_ssa_iv_optimize_loop, ptr @determine_set_costs, i64 5907}
!117 = !{ptr @tree_ssa_iv_optimize_loop, ptr @find_optimal_iv_set, i64 5907}
!118 = !{ptr @tree_ssa_iv_optimize_loop, ptr @create_new_ivs, i64 5906}
!119 = !{ptr @tree_ssa_iv_optimize_loop, ptr @iv_ca_free, i64 5906}
!120 = !{ptr @tree_ssa_iv_optimize_loop, ptr @rewrite_uses, i64 5906}
!121 = !{ptr @tree_ssa_iv_optimize_loop, ptr @remove_unused_ivs, i64 5906}
!122 = !{ptr @tree_ssa_iv_optimize_loop, ptr @scev_reset, i64 5906}
!123 = !{ptr @tree_ssa_iv_optimize_loop, ptr @free_loop_data, i64 14158}
!124 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 16786}
!125 = !{ptr @fel_next, ptr @get_loop, i64 14158}
!126 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 2628}
!127 = !{ptr @tree_ssa_iv_optimize_finalize, ptr @free_loop_data, i64 2627}
!128 = !{ptr @tree_ssa_iv_optimize_finalize, ptr @free, i64 2627}
!129 = !{ptr @tree_ssa_iv_optimize_finalize, ptr @bitmap_obstack_free, i64 5254}
!130 = !{ptr @tree_ssa_iv_optimize_finalize, ptr @VEC_tree_heap_free, i64 2627}
!131 = !{ptr @tree_ssa_iv_optimize_finalize, ptr @VEC_iv_use_p_heap_free, i64 2627}
!132 = !{ptr @tree_ssa_iv_optimize_finalize, ptr @VEC_iv_cand_p_heap_free, i64 2627}
!133 = !{ptr @VEC_iv_use_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 2627}
!134 = !{ptr @VEC_iv_cand_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 2627}
!135 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 2627}
!136 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 2627}
!137 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 2626}
!138 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 17355}
!139 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 14727}
!140 = !{ptr @find_induction_variables, ptr @find_bivs, i64 14158}
!141 = !{ptr @find_induction_variables, ptr @find_givs, i64 5908}
!142 = !{ptr @find_induction_variables, ptr @mark_bivs, i64 5908}
!143 = !{ptr @find_induction_variables, ptr @ver_info, i64 10}
!144 = !{ptr @find_induction_variables, ptr @dump_iv, i64 6}
!145 = !{ptr @find_induction_variables, ptr @bmp_iter_next, i64 10}
!146 = !{ptr @find_induction_variables, ptr @bmp_iter_set, i64 10}
!147 = !{ptr @find_interesting_uses, ptr @get_loop_body, i64 5908}
!148 = !{ptr @find_interesting_uses, ptr @ei_start_1, i64 99516}
!149 = !{ptr @find_interesting_uses, ptr @ei_cond, i64 259917}
!150 = !{ptr @find_interesting_uses, ptr @flow_bb_inside_loop_p, i64 160400}
!151 = !{ptr @find_interesting_uses, ptr @find_interesting_uses_outside, i64 11966}
!152 = !{ptr @find_interesting_uses, ptr @ei_next, i64 160401}
!153 = !{ptr @find_interesting_uses, ptr @gsi_start_phis, i64 99516}
!154 = !{ptr @find_interesting_uses, ptr @gsi_end_p, i64 532270}
!155 = !{ptr @find_interesting_uses, ptr @gsi_stmt, i64 333238}
!156 = !{ptr @find_interesting_uses, ptr @find_interesting_uses_stmt, i64 333237}
!157 = !{ptr @find_interesting_uses, ptr @gsi_next, i64 333238}
!158 = !{ptr @find_interesting_uses, ptr @gsi_start_bb, i64 99516}
!159 = !{ptr @find_interesting_uses, ptr @is_gimple_debug, i64 271227}
!160 = !{ptr @find_interesting_uses, ptr @ver_info, i64 10}
!161 = !{ptr @find_interesting_uses, ptr @fwrite, i64 6}
!162 = !{ptr @find_interesting_uses, ptr @print_generic_expr, i64 6}
!163 = !{ptr @find_interesting_uses, ptr @fprintf, i64 6}
!164 = !{ptr @find_interesting_uses, ptr @bmp_iter_next, i64 10}
!165 = !{ptr @find_interesting_uses, ptr @bmp_iter_set, i64 10}
!166 = !{ptr @find_interesting_uses, ptr @free, i64 5908}
!167 = !{ptr @find_iv_candidates, ptr @add_standard_iv_candidates, i64 5908}
!168 = !{ptr @find_iv_candidates, ptr @add_old_ivs_candidates, i64 5908}
!169 = !{ptr @find_iv_candidates, ptr @add_derived_ivs_candidates, i64 5908}
!170 = !{ptr @find_iv_candidates, ptr @set_autoinc_for_original_candidates, i64 5908}
!171 = !{ptr @find_iv_candidates, ptr @record_important_candidates, i64 5908}
!172 = !{ptr @determine_iv_costs, ptr @n_iv_cands, i64 53528}
!173 = !{ptr @determine_iv_costs, ptr @iv_cand, i64 47620}
!174 = !{ptr @determine_iv_costs, ptr @determine_iv_cost, i64 47620}
!175 = !{ptr @determine_use_iv_costs, ptr @bitmap_obstack_alloc_stat, i64 5908}
!176 = !{ptr @determine_use_iv_costs, ptr @alloc_use_cost_map, i64 5908}
!177 = !{ptr @determine_use_iv_costs, ptr @n_iv_uses, i64 24755}
!178 = !{ptr @determine_use_iv_costs, ptr @iv_use, i64 18847}
!179 = !{ptr @determine_use_iv_costs, ptr @n_iv_cands, i64 201444}
!180 = !{ptr @determine_use_iv_costs, ptr @iv_cand, i64 184500}
!181 = !{ptr @determine_use_iv_costs, ptr @determine_use_iv_cost, i64 184500}
!182 = !{ptr @determine_use_iv_costs, ptr @bmp_iter_set_init, i64 170}
!183 = !{ptr @determine_use_iv_costs, ptr @bmp_iter_set, i64 1893}
!184 = !{ptr @determine_use_iv_costs, ptr @bitmap_set_bit, i64 168}
!185 = !{ptr @determine_use_iv_costs, ptr @bmp_iter_next, i64 1723}
!186 = !{ptr @determine_use_iv_costs, ptr @bitmap_and_compl_into, i64 170}
!187 = !{ptr @determine_use_iv_costs, ptr @bitmap_clear, i64 170}
!188 = !{ptr @determine_use_iv_costs, ptr @bitmap_obstack_free, i64 5908}
!189 = !{ptr @determine_use_iv_costs, ptr @fprintf, i64 57}
!190 = !{ptr @determine_use_iv_costs, ptr @fwrite, i64 10}
!191 = !{ptr @determine_use_iv_costs, ptr @infinite_cost_p, i64 125}
!192 = !{ptr @determine_use_iv_costs, ptr @bitmap_print, i64 29}
!193 = !{ptr @determine_use_iv_costs, ptr @fputc, i64 57}
!194 = !{ptr @determine_set_costs, ptr @gsi_start_phis, i64 5908}
!195 = !{ptr @determine_set_costs, ptr @gsi_end_p, i64 20905}
!196 = !{ptr @determine_set_costs, ptr @gsi_stmt, i64 14997}
!197 = !{ptr @determine_set_costs, ptr @gimple_phi_result_ptr, i64 14997}
!198 = !{ptr @determine_set_costs, ptr @get_def_from_ptr, i64 14997}
!199 = !{ptr @determine_set_costs, ptr @is_gimple_reg, i64 14997}
!200 = !{ptr @determine_set_costs, ptr @get_iv, i64 10710}
!201 = !{ptr @determine_set_costs, ptr @gsi_next, i64 14997}
!202 = !{ptr @determine_set_costs, ptr @bmp_iter_set_init, i64 5908}
!203 = !{ptr @determine_set_costs, ptr @bmp_iter_set, i64 45594}
!204 = !{ptr @determine_set_costs, ptr @ver_info, i64 39686}
!205 = !{ptr @determine_set_costs, ptr @bmp_iter_next, i64 39686}
!206 = !{ptr @determine_set_costs, ptr @ivopts_global_cost_for_size, i64 16}
!207 = !{ptr @determine_set_costs, ptr @fprintf, i64 16}
!208 = !{ptr @find_optimal_iv_set, ptr @get_initial_solution, i64 5908}
!209 = !{ptr @find_optimal_iv_set, ptr @try_improve_iv_set, i64 8796}
!210 = !{ptr @find_optimal_iv_set, ptr @n_iv_uses, i64 24741}
!211 = !{ptr @find_optimal_iv_set, ptr @iv_use, i64 18834}
!212 = !{ptr @find_optimal_iv_set, ptr @iv_ca_cand_for_use, i64 18834}
!213 = !{ptr @create_new_ivs, ptr @bmp_iter_set_init, i64 5908}
!214 = !{ptr @create_new_ivs, ptr @bmp_iter_set, i64 13361}
!215 = !{ptr @create_new_ivs, ptr @iv_cand, i64 7453}
!216 = !{ptr @create_new_ivs, ptr @create_new_iv, i64 7453}
!217 = !{ptr @create_new_ivs, ptr @bmp_iter_next, i64 7453}
!218 = !{ptr @iv_ca_free, ptr @free, i64 23632}
!219 = !{ptr @iv_ca_free, ptr @bitmap_obstack_free, i64 5908}
!220 = !{ptr @rewrite_uses, ptr @n_iv_uses, i64 28469}
!221 = !{ptr @rewrite_uses, ptr @iv_use, i64 22561}
!222 = !{ptr @rewrite_uses, ptr @fancy_abort, i64 1}
!223 = !{ptr @rewrite_uses, ptr @rewrite_use, i64 22561}
!224 = !{ptr @remove_unused_ivs, ptr @bitmap_obstack_alloc_stat, i64 5908}
!225 = !{ptr @remove_unused_ivs, ptr @bmp_iter_set_init, i64 5908}
!226 = !{ptr @remove_unused_ivs, ptr @bmp_iter_set, i64 45594}
!227 = !{ptr @remove_unused_ivs, ptr @ver_info, i64 39686}
!228 = !{ptr @remove_unused_ivs, ptr @integer_zerop, i64 35276}
!229 = !{ptr @remove_unused_ivs, ptr @bitmap_set_bit, i64 8008}
!230 = !{ptr @remove_unused_ivs, ptr @bmp_iter_next, i64 39686}
!231 = !{ptr @remove_unused_ivs, ptr @release_defs_bitset, i64 5908}
!232 = !{ptr @remove_unused_ivs, ptr @bitmap_obstack_free, i64 5908}
!233 = !{ptr @free_loop_data, ptr @pointer_map_destroy, i64 4074}
!234 = !{ptr @free_loop_data, ptr @bmp_iter_set_init, i64 16785}
!235 = !{ptr @free_loop_data, ptr @bmp_iter_set, i64 56476}
!236 = !{ptr @free_loop_data, ptr @ver_info, i64 39691}
!237 = !{ptr @free_loop_data, ptr @free, i64 198222}
!238 = !{ptr @free_loop_data, ptr @bmp_iter_next, i64 39691}
!239 = !{ptr @free_loop_data, ptr @bitmap_clear, i64 33570}
!240 = !{ptr @free_loop_data, ptr @n_iv_uses, i64 39349}
!241 = !{ptr @free_loop_data, ptr @iv_use, i64 22564}
!242 = !{ptr @free_loop_data, ptr @bitmap_obstack_free, i64 67812}
!243 = !{ptr @free_loop_data, ptr @VEC_iv_use_p_base_truncate, i64 16785}
!244 = !{ptr @free_loop_data, ptr @n_iv_cands, i64 64410}
!245 = !{ptr @free_loop_data, ptr @iv_cand, i64 47625}
!246 = !{ptr @free_loop_data, ptr @VEC_iv_cand_p_base_truncate, i64 16785}
!247 = !{ptr @free_loop_data, ptr @VEC_tree_base_length, i64 16785}
!248 = !{ptr @free_loop_data, ptr @xcalloc, i64 1}
!249 = !{ptr @free_loop_data, ptr @VEC_tree_base_iterate, i64 44245}
!250 = !{ptr @free_loop_data, ptr @set_decl_rtl, i64 27460}
!251 = !{ptr @free_loop_data, ptr @VEC_tree_base_truncate, i64 16785}
!252 = !{ptr @find_bivs, ptr @gsi_start_phis, i64 14158}
!253 = !{ptr @find_bivs, ptr @gsi_end_p, i64 46030}
!254 = !{ptr @find_bivs, ptr @gsi_stmt, i64 31872}
!255 = !{ptr @find_bivs, ptr @gimple_phi_result_ptr, i64 31872}
!256 = !{ptr @find_bivs, ptr @get_def_from_ptr, i64 46488}
!257 = !{ptr @find_bivs, ptr @determine_biv_step, i64 31871}
!258 = !{ptr @find_bivs, ptr @loop_preheader_edge, i64 7310}
!259 = !{ptr @find_bivs, ptr @gimple_phi_arg_imm_use_ptr, i64 7310}
!260 = !{ptr @find_bivs, ptr @get_use_from_ptr, i64 7310}
!261 = !{ptr @find_bivs, ptr @expand_simple_operations, i64 7310}
!262 = !{ptr @find_bivs, ptr @contains_abnormal_ssa_name_p, i64 14619}
!263 = !{ptr @find_bivs, ptr @fold_convert_loc, i64 14616}
!264 = !{ptr @find_bivs, ptr @set_iv, i64 7308}
!265 = !{ptr @find_bivs, ptr @gsi_next, i64 31872}
!266 = !{ptr @find_givs, ptr @get_loop_body_in_dom_order, i64 5908}
!267 = !{ptr @find_givs, ptr @find_givs_in_bb, i64 99516}
!268 = !{ptr @find_givs, ptr @free, i64 5908}
!269 = !{ptr @mark_bivs, ptr @gsi_start_phis, i64 5908}
!270 = !{ptr @mark_bivs, ptr @gsi_end_p, i64 20905}
!271 = !{ptr @mark_bivs, ptr @gsi_stmt, i64 14997}
!272 = !{ptr @mark_bivs, ptr @gimple_phi_result_ptr, i64 14997}
!273 = !{ptr @mark_bivs, ptr @get_def_from_ptr, i64 14997}
!274 = !{ptr @mark_bivs, ptr @get_iv, i64 22306}
!275 = !{ptr @mark_bivs, ptr @loop_latch_edge, i64 7309}
!276 = !{ptr @mark_bivs, ptr @gimple_phi_arg_imm_use_ptr, i64 7309}
!277 = !{ptr @mark_bivs, ptr @get_use_from_ptr, i64 7309}
!278 = !{ptr @mark_bivs, ptr @gimple_bb, i64 7261}
!279 = !{ptr @mark_bivs, ptr @gsi_next, i64 14997}
!280 = !{ptr @determine_biv_step, ptr @gimple_bb, i64 31873}
!281 = !{ptr @determine_biv_step, ptr @gimple_phi_result_ptr, i64 31873}
!282 = !{ptr @determine_biv_step, ptr @get_def_from_ptr, i64 31873}
!283 = !{ptr @determine_biv_step, ptr @is_gimple_reg, i64 31873}
!284 = !{ptr @determine_biv_step, ptr @simple_iv, i64 22008}
!285 = !{ptr @determine_biv_step, ptr @integer_zerop, i64 7364}
!286 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 204862}
!287 = !{ptr @set_iv, ptr @name_info, i64 35282}
!288 = !{ptr @set_iv, ptr @fancy_abort, i64 1}
!289 = !{ptr @set_iv, ptr @bitmap_set_bit, i64 35282}
!290 = !{ptr @set_iv, ptr @alloc_iv, i64 35282}
!291 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!292 = !{ptr @name_info, ptr @ver_info, i64 1824133}
!293 = !{ptr @alloc_iv, ptr @xcalloc, i64 91818}
!294 = !{ptr @alloc_iv, ptr @fancy_abort, i64 1}
!295 = !{ptr @alloc_iv, ptr @determine_base_object, i64 91818}
!296 = !{ptr @determine_base_object, ptr @get_base_address, i64 21270}
!297 = !{ptr @determine_base_object, ptr @build_fold_addr_expr_loc, i64 8731}
!298 = !{ptr @determine_base_object, ptr @fold_convert_loc, i64 52362}
!299 = !{ptr @determine_base_object, ptr @fancy_abort, i64 3}
!300 = !{ptr @find_givs_in_bb, ptr @gsi_start_bb, i64 99532}
!301 = !{ptr @find_givs_in_bb, ptr @gsi_end_p, i64 370802}
!302 = !{ptr @find_givs_in_bb, ptr @gsi_stmt, i64 271270}
!303 = !{ptr @find_givs_in_bb, ptr @find_givs_in_stmt, i64 271270}
!304 = !{ptr @find_givs_in_bb, ptr @gsi_next, i64 271270}
!305 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 199101}
!306 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 199101}
!307 = !{ptr @find_givs_in_stmt, ptr @find_givs_in_stmt_scev, i64 271272}
!308 = !{ptr @find_givs_in_stmt, ptr @gimple_assign_lhs, i64 14030}
!309 = !{ptr @find_givs_in_stmt, ptr @set_iv, i64 14030}
!310 = !{ptr @find_givs_in_stmt_scev, ptr @gimple_code, i64 271272}
!311 = !{ptr @find_givs_in_stmt_scev, ptr @gimple_assign_lhs, i64 191630}
!312 = !{ptr @find_givs_in_stmt_scev, ptr @loop_containing_stmt, i64 176290}
!313 = !{ptr @find_givs_in_stmt_scev, ptr @simple_iv, i64 176290}
!314 = !{ptr @find_givs_in_stmt_scev, ptr @expand_simple_operations, i64 14030}
!315 = !{ptr @find_givs_in_stmt_scev, ptr @contains_abnormal_ssa_name_p, i64 28059}
!316 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 212986}
!317 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 176291}
!318 = !{ptr @get_iv, ptr @name_info, i64 1629202}
!319 = !{ptr @get_iv, ptr @gimple_bb, i64 646801}
!320 = !{ptr @get_iv, ptr @flow_bb_inside_loop_p, i64 644074}
!321 = !{ptr @get_iv, ptr @build_int_cst, i64 13945}
!322 = !{ptr @get_iv, ptr @set_iv, i64 13945}
!323 = !{ptr @niter_for_exit, ptr @pointer_map_create, i64 4074}
!324 = !{ptr @niter_for_exit, ptr @pointer_map_contains, i64 32584}
!325 = !{ptr @niter_for_exit, ptr @number_of_iterations_exit, i64 4083}
!326 = !{ptr @niter_for_exit, ptr @integer_zerop, i64 3980}
!327 = !{ptr @niter_for_exit, ptr @contains_abnormal_ssa_name_p, i64 3450}
!328 = !{ptr @niter_for_exit, ptr @pointer_map_insert, i64 4083}
!329 = !{ptr @ei_cond, ptr @ei_end_p, i64 259959}
!330 = !{ptr @ei_cond, ptr @ei_edge, i64 160427}
!331 = !{ptr @find_interesting_uses_outside, ptr @gsi_start_phis, i64 11967}
!332 = !{ptr @find_interesting_uses_outside, ptr @gsi_end_p, i64 21730}
!333 = !{ptr @find_interesting_uses_outside, ptr @gsi_stmt, i64 9763}
!334 = !{ptr @find_interesting_uses_outside, ptr @gimple_phi_arg_imm_use_ptr, i64 9763}
!335 = !{ptr @find_interesting_uses_outside, ptr @get_use_from_ptr, i64 9763}
!336 = !{ptr @find_interesting_uses_outside, ptr @is_gimple_reg, i64 9763}
!337 = !{ptr @find_interesting_uses_outside, ptr @find_interesting_uses_op, i64 3906}
!338 = !{ptr @find_interesting_uses_outside, ptr @gsi_next, i64 9763}
!339 = !{ptr @ei_next, ptr @ei_container, i64 320853}
!340 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 160427}
!341 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!342 = !{ptr @find_interesting_uses_stmt, ptr @find_invariants_stmt, i64 333292}
!343 = !{ptr @find_interesting_uses_stmt, ptr @gimple_code, i64 661584}
!344 = !{ptr @find_interesting_uses_stmt, ptr @find_interesting_uses_cond, i64 60895}
!345 = !{ptr @find_interesting_uses_stmt, ptr @is_gimple_assign, i64 275067}
!346 = !{ptr @find_interesting_uses_stmt, ptr @gimple_assign_lhs_ptr, i64 191629}
!347 = !{ptr @find_interesting_uses_stmt, ptr @gimple_assign_rhs1_ptr, i64 191629}
!348 = !{ptr @find_interesting_uses_stmt, ptr @get_iv, i64 381380}
!349 = !{ptr @find_interesting_uses_stmt, ptr @integer_zerop, i64 21340}
!350 = !{ptr @find_interesting_uses_stmt, ptr @gimple_assign_rhs_code, i64 178241}
!351 = !{ptr @find_interesting_uses_stmt, ptr @get_gimple_rhs_class, i64 178241}
!352 = !{ptr @find_interesting_uses_stmt, ptr @is_gimple_val, i64 26835}
!353 = !{ptr @find_interesting_uses_stmt, ptr @find_interesting_uses_address, i64 88101}
!354 = !{ptr @find_interesting_uses_stmt, ptr @find_interesting_uses_op, i64 31029}
!355 = !{ptr @find_interesting_uses_stmt, ptr @gimple_bb, i64 62020}
!356 = !{ptr @find_interesting_uses_stmt, ptr @gimple_phi_result_ptr, i64 15000}
!357 = !{ptr @find_interesting_uses_stmt, ptr @get_def_from_ptr, i64 15000}
!358 = !{ptr @find_interesting_uses_stmt, ptr @op_iter_init_phiuse, i64 54710}
!359 = !{ptr @find_interesting_uses_stmt, ptr @op_iter_init_use, i64 105781}
!360 = !{ptr @find_interesting_uses_stmt, ptr @op_iter_done, i64 360844}
!361 = !{ptr @find_interesting_uses_stmt, ptr @get_use_from_ptr, i64 200353}
!362 = !{ptr @find_interesting_uses_stmt, ptr @op_iter_next_use, i64 200353}
!363 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 271272}
!364 = !{ptr @ei_end_p, ptr @ei_container, i64 519917}
!365 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 259959}
!366 = !{ptr @ei_edge, ptr @ei_container, i64 320853}
!367 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 160427}
!368 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!369 = !{ptr @find_interesting_uses_op, ptr @get_iv, i64 187022}
!370 = !{ptr @find_interesting_uses_op, ptr @iv_use, i64 3314}
!371 = !{ptr @find_interesting_uses_op, ptr @fancy_abort, i64 2}
!372 = !{ptr @find_interesting_uses_op, ptr @integer_zerop, i64 30238}
!373 = !{ptr @find_interesting_uses_op, ptr @record_invariant, i64 21103}
!374 = !{ptr @find_interesting_uses_op, ptr @xmalloc, i64 9134}
!375 = !{ptr @find_interesting_uses_op, ptr @gimple_code, i64 9134}
!376 = !{ptr @find_interesting_uses_op, ptr @is_gimple_assign, i64 7313}
!377 = !{ptr @find_interesting_uses_op, ptr @record_use, i64 9134}
!378 = !{ptr @record_invariant, ptr @is_gimple_reg, i64 419653}
!379 = !{ptr @record_invariant, ptr @gimple_bb, i64 419652}
!380 = !{ptr @record_invariant, ptr @flow_bb_inside_loop_p, i64 402528}
!381 = !{ptr @record_invariant, ptr @name_info, i64 50709}
!382 = !{ptr @record_invariant, ptr @bitmap_set_bit, i64 50709}
!383 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 287719}
!384 = !{ptr @record_use, ptr @xcalloc, i64 22564}
!385 = !{ptr @record_use, ptr @n_iv_uses, i64 22564}
!386 = !{ptr @record_use, ptr @bitmap_obstack_alloc_stat, i64 22564}
!387 = !{ptr @record_use, ptr @VEC_iv_use_p_heap_safe_push, i64 22564}
!388 = !{ptr @VEC_iv_use_p_heap_safe_push, ptr @VEC_iv_use_p_heap_reserve, i64 22564}
!389 = !{ptr @VEC_iv_use_p_heap_safe_push, ptr @VEC_iv_use_p_base_quick_push, i64 22564}
!390 = !{ptr @VEC_iv_use_p_heap_reserve, ptr @VEC_iv_use_p_base_space, i64 22564}
!391 = !{ptr @VEC_iv_use_p_heap_reserve, ptr @vec_heap_p_reserve, i64 30}
!392 = !{ptr @find_invariants_stmt, ptr @gimple_code, i64 333292}
!393 = !{ptr @find_invariants_stmt, ptr @op_iter_init_phiuse, i64 62021}
!394 = !{ptr @find_invariants_stmt, ptr @op_iter_init_use, i64 271271}
!395 = !{ptr @find_invariants_stmt, ptr @op_iter_done, i64 746604}
!396 = !{ptr @find_invariants_stmt, ptr @get_use_from_ptr, i64 413312}
!397 = !{ptr @find_invariants_stmt, ptr @record_invariant, i64 413312}
!398 = !{ptr @find_invariants_stmt, ptr @op_iter_next_use, i64 413312}
!399 = !{ptr @find_interesting_uses_cond, ptr @extract_cond_operands, i64 60893}
!400 = !{ptr @find_interesting_uses_cond, ptr @find_interesting_uses_op, i64 112742}
!401 = !{ptr @find_interesting_uses_cond, ptr @xmalloc, i64 4522}
!402 = !{ptr @find_interesting_uses_cond, ptr @record_use, i64 4522}
!403 = !{ptr @gimple_assign_lhs_ptr, ptr @gimple_op_ptr, i64 191630}
!404 = !{ptr @gimple_assign_rhs1_ptr, ptr @gimple_op_ptr, i64 195463}
!405 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 183580}
!406 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 183580}
!407 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 100684}
!408 = !{ptr @find_interesting_uses_address, ptr @build_int_cst, i64 165238}
!409 = !{ptr @find_interesting_uses_address, ptr @gimple_has_volatile_ops, i64 88101}
!410 = !{ptr @find_interesting_uses_address, ptr @unshare_expr, i64 86924}
!411 = !{ptr @find_interesting_uses_address, ptr @build_pointer_type, i64 9787}
!412 = !{ptr @find_interesting_uses_address, ptr @get_iv, i64 9899}
!413 = !{ptr @find_interesting_uses_address, ptr @fold_build2_stat_loc, i64 1}
!414 = !{ptr @find_interesting_uses_address, ptr @integer_zerop, i64 18925}
!415 = !{ptr @find_interesting_uses_address, ptr @tree_mem_ref_addr, i64 1}
!416 = !{ptr @find_interesting_uses_address, ptr @for_each_index, i64 156329}
!417 = !{ptr @find_interesting_uses_address, ptr @fancy_abort, i64 2}
!418 = !{ptr @find_interesting_uses_address, ptr @may_be_nonaddressable_p, i64 8988}
!419 = !{ptr @find_interesting_uses_address, ptr @build_fold_addr_expr_loc, i64 8908}
!420 = !{ptr @find_interesting_uses_address, ptr @handled_component_p, i64 21659}
!421 = !{ptr @find_interesting_uses_address, ptr @gimple_fold_indirect_ref, i64 4142}
!422 = !{ptr @find_interesting_uses_address, ptr @alloc_iv, i64 8909}
!423 = !{ptr @find_interesting_uses_address, ptr @record_use, i64 8909}
!424 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 116730}
!425 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 116730}
!426 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 116730}
!427 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 74024}
!428 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 74024}
!429 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 377053}
!430 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 377053}
!431 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 173216}
!432 = !{ptr @extract_cond_operands, ptr @gimple_code, i64 105290}
!433 = !{ptr @extract_cond_operands, ptr @gimple_cond_lhs_ptr, i64 101456}
!434 = !{ptr @extract_cond_operands, ptr @gimple_cond_rhs_ptr, i64 101456}
!435 = !{ptr @extract_cond_operands, ptr @gimple_assign_rhs1_ptr, i64 3834}
!436 = !{ptr @extract_cond_operands, ptr @gimple_assign_rhs2_ptr, i64 3834}
!437 = !{ptr @extract_cond_operands, ptr @get_iv, i64 133609}
!438 = !{ptr @extract_cond_operands, ptr @integer_zerop, i64 148252}
!439 = !{ptr @gimple_cond_lhs_ptr, ptr @gimple_op_ptr, i64 101457}
!440 = !{ptr @gimple_cond_rhs_ptr, ptr @gimple_op_ptr, i64 101457}
!441 = !{ptr @gimple_assign_rhs2_ptr, ptr @gimple_op_ptr, i64 3833}
!442 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 593840}
!443 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 593839}
!444 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 183580}
!445 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 106020}
!446 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 88101}
!447 = !{ptr @idx_find_step, ptr @component_ref_field_offset, i64 1}
!448 = !{ptr @idx_find_step, ptr @expr_invariant_in_loop_p, i64 59471}
!449 = !{ptr @idx_find_step, ptr @array_ref_element_size, i64 36012}
!450 = !{ptr @idx_find_step, ptr @array_ref_low_bound, i64 29735}
!451 = !{ptr @idx_find_step, ptr @get_iv, i64 78422}
!452 = !{ptr @idx_find_step, ptr @integer_zerop, i64 20208}
!453 = !{ptr @idx_find_step, ptr @build_int_cst, i64 3539}
!454 = !{ptr @idx_find_step, ptr @convert_affine_scev, i64 9816}
!455 = !{ptr @idx_find_step, ptr @fold_build2_stat_loc, i64 19630}
!456 = !{ptr @may_be_nonaddressable_p, ptr @is_gimple_reg, i64 3}
!457 = !{ptr @may_be_nonaddressable_p, ptr @is_gimple_addressable, i64 3}
!458 = !{ptr @idx_record_use, ptr @find_interesting_uses_op, i64 146967}
!459 = !{ptr @idx_record_use, ptr @array_ref_element_size, i64 24763}
!460 = !{ptr @idx_record_use, ptr @array_ref_low_bound, i64 24763}
!461 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 457825}
!462 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 377053}
!463 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 369723}
!464 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 377053}
!465 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 369724}
!466 = !{ptr @add_standard_iv_candidates, ptr @add_standard_iv_candidates_for_size, i64 5908}
!467 = !{ptr @add_old_ivs_candidates, ptr @bmp_iter_set_init, i64 5908}
!468 = !{ptr @add_old_ivs_candidates, ptr @bmp_iter_set, i64 45594}
!469 = !{ptr @add_old_ivs_candidates, ptr @ver_info, i64 39686}
!470 = !{ptr @add_old_ivs_candidates, ptr @integer_zerop, i64 14524}
!471 = !{ptr @add_old_ivs_candidates, ptr @add_old_iv_candidates, i64 14523}
!472 = !{ptr @add_old_ivs_candidates, ptr @bmp_iter_next, i64 39686}
!473 = !{ptr @add_derived_ivs_candidates, ptr @n_iv_uses, i64 24745}
!474 = !{ptr @add_derived_ivs_candidates, ptr @iv_use, i64 18837}
!475 = !{ptr @add_derived_ivs_candidates, ptr @add_iv_value_candidates, i64 18835}
!476 = !{ptr @add_derived_ivs_candidates, ptr @fancy_abort, i64 1}
!477 = !{ptr @set_autoinc_for_original_candidates, ptr @n_iv_cands, i64 53528}
!478 = !{ptr @set_autoinc_for_original_candidates, ptr @iv_cand, i64 47620}
!479 = !{ptr @set_autoinc_for_original_candidates, ptr @n_iv_uses, i64 7263}
!480 = !{ptr @set_autoinc_for_original_candidates, ptr @gimple_bb, i64 31184}
!481 = !{ptr @set_autoinc_for_original_candidates, ptr @iv_use, i64 23922}
!482 = !{ptr @set_autoinc_for_original_candidates, ptr @gimple_uid, i64 36571}
!483 = !{ptr @set_autoinc_for_original_candidates, ptr @autoinc_possible_for_pair, i64 3279}
!484 = !{ptr @record_important_candidates, ptr @n_iv_cands, i64 53528}
!485 = !{ptr @record_important_candidates, ptr @iv_cand, i64 47620}
!486 = !{ptr @record_important_candidates, ptr @bitmap_set_bit, i64 34251}
!487 = !{ptr @record_important_candidates, ptr @n_iv_uses, i64 24743}
!488 = !{ptr @record_important_candidates, ptr @iv_use, i64 18835}
!489 = !{ptr @record_important_candidates, ptr @bitmap_obstack_free, i64 18665}
!490 = !{ptr @record_important_candidates, ptr @bitmap_ior_into, i64 170}
!491 = !{ptr @add_standard_iv_candidates_for_size, ptr @build_int_cst, i64 11816}
!492 = !{ptr @add_standard_iv_candidates_for_size, ptr @add_candidate, i64 5908}
!493 = !{ptr @add_candidate, ptr @ip_normal_pos, i64 86634}
!494 = !{ptr @add_candidate, ptr @add_candidate_1, i64 96917}
!495 = !{ptr @add_candidate, ptr @ip_end_pos, i64 86634}
!496 = !{ptr @add_candidate, ptr @allow_ip_end_pos_p, i64 86633}
!497 = !{ptr @add_candidate, ptr @add_autoinc_candidates, i64 25222}
!498 = !{ptr @add_candidate_1, ptr @generic_type_for, i64 104180}
!499 = !{ptr @add_candidate_1, ptr @fold_convert_loc, i64 115372}
!500 = !{ptr @add_candidate_1, ptr @n_iv_cands, i64 594105}
!501 = !{ptr @add_candidate_1, ptr @iv_cand, i64 446020}
!502 = !{ptr @add_candidate_1, ptr @operand_equal_p, i64 403961}
!503 = !{ptr @add_candidate_1, ptr @xcalloc, i64 47627}
!504 = !{ptr @add_candidate_1, ptr @alloc_iv, i64 47627}
!505 = !{ptr @add_candidate_1, ptr @create_tmp_var_raw, i64 40362}
!506 = !{ptr @add_candidate_1, ptr @VEC_iv_cand_p_heap_safe_push, i64 47627}
!507 = !{ptr @add_candidate_1, ptr @walk_tree_1, i64 239}
!508 = !{ptr @add_candidate_1, ptr @bitmap_set_bit, i64 57115}
!509 = !{ptr @allow_ip_end_pos_p, ptr @ip_normal_pos, i64 86634}
!510 = !{ptr @allow_ip_end_pos_p, ptr @ip_end_pos, i64 75970}
!511 = !{ptr @allow_ip_end_pos_p, ptr @empty_block_p, i64 75970}
!512 = !{ptr @add_autoinc_candidates, ptr @gimple_bb, i64 25222}
!513 = !{ptr @add_autoinc_candidates, ptr @dominated_by_p, i64 22885}
!514 = !{ptr @add_autoinc_candidates, ptr @stmt_could_throw_p, i64 13126}
!515 = !{ptr @add_autoinc_candidates, ptr @cst_and_fits_in_hwi, i64 13125}
!516 = !{ptr @add_autoinc_candidates, ptr @int_cst_value, i64 13115}
!517 = !{ptr @add_autoinc_candidates, ptr @vector_type_mode, i64 51}
!518 = !{ptr @generic_type_for, ptr @unsigned_type_for, i64 57688}
!519 = !{ptr @n_iv_cands, ptr @VEC_iv_cand_p_base_length, i64 1113622}
!520 = !{ptr @iv_cand, ptr @VEC_iv_cand_p_base_index, i64 1159127}
!521 = !{ptr @VEC_iv_cand_p_heap_safe_push, ptr @VEC_iv_cand_p_heap_reserve, i64 47627}
!522 = !{ptr @VEC_iv_cand_p_heap_safe_push, ptr @VEC_iv_cand_p_base_quick_push, i64 47627}
!523 = !{ptr @find_depends, ptr @name_info, i64 96442}
!524 = !{ptr @find_depends, ptr @bitmap_obstack_alloc_stat, i64 52306}
!525 = !{ptr @find_depends, ptr @bitmap_set_bit, i64 56109}
!526 = !{ptr @VEC_iv_cand_p_heap_reserve, ptr @VEC_iv_cand_p_base_space, i64 47627}
!527 = !{ptr @VEC_iv_cand_p_heap_reserve, ptr @vec_heap_p_reserve, i64 45}
!528 = !{ptr @add_old_iv_candidates, ptr @add_candidate, i64 29052}
!529 = !{ptr @add_old_iv_candidates, ptr @size_int_kind, i64 2094}
!530 = !{ptr @add_old_iv_candidates, ptr @build_int_cst, i64 12432}
!531 = !{ptr @add_old_iv_candidates, ptr @gimple_code, i64 14526}
!532 = !{ptr @add_old_iv_candidates, ptr @loop_latch_edge, i64 7263}
!533 = !{ptr @add_old_iv_candidates, ptr @gimple_phi_arg_imm_use_ptr, i64 7263}
!534 = !{ptr @add_old_iv_candidates, ptr @get_use_from_ptr, i64 7263}
!535 = !{ptr @add_old_iv_candidates, ptr @add_candidate_1, i64 7263}
!536 = !{ptr @add_iv_value_candidates, ptr @add_candidate, i64 51674}
!537 = !{ptr @add_iv_value_candidates, ptr @build_int_cst, i64 18839}
!538 = !{ptr @add_iv_value_candidates, ptr @strip_offset, i64 18839}
!539 = !{ptr @strip_offset, ptr @strip_offset_1, i64 302839}
!540 = !{ptr @strip_offset_1, ptr @tree_strip_nop_conversions, i64 1011152}
!541 = !{ptr @strip_offset_1, ptr @cst_and_fits_in_hwi, i64 443447}
!542 = !{ptr @strip_offset_1, ptr @integer_zerop, i64 468876}
!543 = !{ptr @strip_offset_1, ptr @int_cst_value, i64 302827}
!544 = !{ptr @strip_offset_1, ptr @build_int_cst, i64 117517}
!545 = !{ptr @strip_offset_1, ptr @strip_offset_1, i64 708315}
!546 = !{ptr @strip_offset_1, ptr @fold_build1_stat_loc, i64 36}
!547 = !{ptr @strip_offset_1, ptr @fold_build2_stat_loc, i64 30488}
!548 = !{ptr @strip_offset_1, ptr @fold_convert_loc, i64 244986}
!549 = !{ptr @strip_offset_1, ptr @array_ref_element_size, i64 80135}
!550 = !{ptr @strip_offset_1, ptr @component_ref_field_offset, i64 145381}
!551 = !{ptr @strip_offset_1, ptr @build_fold_addr_expr_loc, i64 89485}
!552 = !{ptr @strip_offset_1, ptr @copy_node_stat, i64 34730}
!553 = !{ptr @autoinc_possible_for_pair, ptr @get_computation_cost, i64 1235}
!554 = !{ptr @autoinc_possible_for_pair, ptr @bitmap_obstack_free, i64 1235}
!555 = !{ptr @autoinc_possible_for_pair, ptr @infinite_cost_p, i64 1235}
!556 = !{ptr @get_computation_cost, ptr @get_computation_cost_at, i64 184144}
!557 = !{ptr @get_computation_cost_at, ptr @gimple_bb, i64 184144}
!558 = !{ptr @get_computation_cost_at, ptr @optimize_bb_for_speed_p, i64 184144}
!559 = !{ptr @get_computation_cost_at, ptr @operand_equal_p, i64 54048}
!560 = !{ptr @get_computation_cost_at, ptr @cst_and_fits_in_hwi, i64 305034}
!561 = !{ptr @get_computation_cost_at, ptr @int_cst_value, i64 237406}
!562 = !{ptr @get_computation_cost_at, ptr @constant_multiple_of, i64 163038}
!563 = !{ptr @get_computation_cost_at, ptr @double_int_fits_in_shwi_p, i64 141997}
!564 = !{ptr @get_computation_cost_at, ptr @double_int_to_shwi, i64 141996}
!565 = !{ptr @get_computation_cost_at, ptr @tree_strip_nop_conversions, i64 141996}
!566 = !{ptr @get_computation_cost_at, ptr @build_int_cst, i64 87169}
!567 = !{ptr @get_computation_cost_at, ptr @difference_cost, i64 141996}
!568 = !{ptr @get_computation_cost_at, ptr @vector_type_mode, i64 222}
!569 = !{ptr @get_computation_cost_at, ptr @multiplier_allowed_in_address_p, i64 9899}
!570 = !{ptr @get_computation_cost_at, ptr @fold_build2_stat_loc, i64 7907}
!571 = !{ptr @get_computation_cost_at, ptr @force_var_cost, i64 4159}
!572 = !{ptr @get_computation_cost_at, ptr @add_cost, i64 51840}
!573 = !{ptr @get_computation_cost_at, ptr @add_costs, i64 88460}
!574 = !{ptr @get_computation_cost_at, ptr @stmt_after_increment, i64 141996}
!575 = !{ptr @get_computation_cost_at, ptr @get_address_cost, i64 84301}
!576 = !{ptr @get_computation_cost_at, ptr @multiply_by_cost, i64 4954}
!577 = !{ptr @get_computation_cost_at, ptr @get_computation_at, i64 37656}
!578 = !{ptr @get_computation_cost_at, ptr @build1_stat, i64 1}
!579 = !{ptr @get_computation_cost_at, ptr @computation_cost, i64 37584}
!580 = !{ptr @get_computation_cost_at, ptr @new_cost, i64 37584}
!581 = !{ptr @constant_multiple_of, ptr @tree_strip_nop_conversions, i64 433670}
!582 = !{ptr @constant_multiple_of, ptr @operand_equal_p, i64 216835}
!583 = !{ptr @constant_multiple_of, ptr @shwi_to_double_int, i64 90440}
!584 = !{ptr @constant_multiple_of, ptr @constant_multiple_of, i64 12}
!585 = !{ptr @constant_multiple_of, ptr @tree_to_double_int, i64 251691}
!586 = !{ptr @constant_multiple_of, ptr @double_int_mul, i64 1}
!587 = !{ptr @constant_multiple_of, ptr @double_int_sext, i64 377536}
!588 = !{ptr @constant_multiple_of, ptr @double_int_add, i64 1}
!589 = !{ptr @constant_multiple_of, ptr @double_int_zero_p, i64 251689}
!590 = !{ptr @constant_multiple_of, ptr @double_int_sdivmod, i64 125844}
!591 = !{ptr @difference_cost, ptr @vector_type_mode, i64 1}
!592 = !{ptr @difference_cost, ptr @strip_offset, i64 284000}
!593 = !{ptr @difference_cost, ptr @tree_strip_nop_conversions, i64 284000}
!594 = !{ptr @difference_cost, ptr @ptr_difference_cost, i64 42674}
!595 = !{ptr @difference_cost, ptr @operand_equal_p, i64 99326}
!596 = !{ptr @difference_cost, ptr @integer_zerop, i64 50158}
!597 = !{ptr @difference_cost, ptr @force_var_cost, i64 40812}
!598 = !{ptr @difference_cost, ptr @multiply_by_cost, i64 2307}
!599 = !{ptr @difference_cost, ptr @signed_type_for, i64 7039}
!600 = !{ptr @difference_cost, ptr @tree_to_aff_combination, i64 14078}
!601 = !{ptr @difference_cost, ptr @shwi_to_double_int, i64 7039}
!602 = !{ptr @difference_cost, ptr @aff_combination_scale, i64 7039}
!603 = !{ptr @difference_cost, ptr @aff_combination_add, i64 7039}
!604 = !{ptr @difference_cost, ptr @aff_combination_to_tree, i64 7039}
!605 = !{ptr @force_var_cost, ptr @walk_tree_1, i64 62875}
!606 = !{ptr @force_var_cost, ptr @force_expr_to_var_cost, i64 110502}
!607 = !{ptr @add_cost, ptr @start_sequence, i64 5}
!608 = !{ptr @add_cost, ptr @gen_raw_REG, i64 10}
!609 = !{ptr @add_cost, ptr @gen_rtx_fmt_ee_stat, i64 5}
!610 = !{ptr @add_cost, ptr @force_operand, i64 5}
!611 = !{ptr @add_cost, ptr @get_insns, i64 5}
!612 = !{ptr @add_cost, ptr @end_sequence, i64 5}
!613 = !{ptr @add_cost, ptr @seq_cost, i64 5}
!614 = !{ptr @stmt_after_increment, ptr @stmt_after_ip_normal_pos, i64 164180}
!615 = !{ptr @stmt_after_increment, ptr @stmt_after_inc_pos, i64 53420}
!616 = !{ptr @stmt_after_increment, ptr @fancy_abort, i64 1}
!617 = !{ptr @get_address_cost, ptr @VEC_address_cost_data_base_length, i64 84304}
!618 = !{ptr @get_address_cost, ptr @VEC_address_cost_data_heap_safe_grow_cleared, i64 4}
!619 = !{ptr @get_address_cost, ptr @VEC_address_cost_data_base_index, i64 84304}
!620 = !{ptr @get_address_cost, ptr @xcalloc, i64 7}
!621 = !{ptr @get_address_cost, ptr @gen_raw_REG, i64 21}
!622 = !{ptr @get_address_cost, ptr @gen_rtx_fmt_ee_stat, i64 199}
!623 = !{ptr @get_address_cost, ptr @gen_int_mode, i64 278}
!624 = !{ptr @get_address_cost, ptr @memory_address_addr_space_p, i64 182}
!625 = !{ptr @get_address_cost, ptr @multiplier_allowed_in_address_p, i64 36855}
!626 = !{ptr @get_address_cost, ptr @ggc_alloc_string, i64 48}
!627 = !{ptr @get_address_cost, ptr @gen_rtx_fmt_s00_stat, i64 48}
!628 = !{ptr @get_address_cost, ptr @gen_rtx_fmt_e_stat, i64 24}
!629 = !{ptr @get_address_cost, ptr @start_sequence, i64 97}
!630 = !{ptr @get_address_cost, ptr @memory_address_addr_space, i64 97}
!631 = !{ptr @get_address_cost, ptr @get_insns, i64 97}
!632 = !{ptr @get_address_cost, ptr @end_sequence, i64 97}
!633 = !{ptr @get_address_cost, ptr @seq_cost, i64 97}
!634 = !{ptr @get_address_cost, ptr @address_cost, i64 97}
!635 = !{ptr @get_address_cost, ptr @add_cost, i64 7}
!636 = !{ptr @get_address_cost, ptr @fwrite, i64 42}
!637 = !{ptr @get_address_cost, ptr @fprintf, i64 14}
!638 = !{ptr @get_address_cost, ptr @VEC_address_cost_data_base_replace, i64 7}
!639 = !{ptr @get_address_cost, ptr @multiply_by_cost, i64 14136}
!640 = !{ptr @get_address_cost, ptr @new_cost, i64 84304}
!641 = !{ptr @get_computation_at, ptr @get_computation_aff, i64 44876}
!642 = !{ptr @get_computation_at, ptr @unshare_aff_combination, i64 44804}
!643 = !{ptr @get_computation_at, ptr @aff_combination_to_tree, i64 44804}
!644 = !{ptr @get_computation_at, ptr @fold_convert_loc, i64 44804}
!645 = !{ptr @computation_cost, ptr @walk_tree_1, i64 37590}
!646 = !{ptr @computation_cost, ptr @start_sequence, i64 37590}
!647 = !{ptr @computation_cost, ptr @vector_type_mode, i64 1}
!648 = !{ptr @computation_cost, ptr @expand_expr, i64 37590}
!649 = !{ptr @computation_cost, ptr @get_insns, i64 37590}
!650 = !{ptr @computation_cost, ptr @end_sequence, i64 37590}
!651 = !{ptr @computation_cost, ptr @default_rtl_profile, i64 37590}
!652 = !{ptr @computation_cost, ptr @seq_cost, i64 37590}
!653 = !{ptr @computation_cost, ptr @address_cost, i64 1}
!654 = !{ptr @ptr_difference_cost, ptr @fancy_abort, i64 1}
!655 = !{ptr @ptr_difference_cost, ptr @ptr_difference_const, i64 42674}
!656 = !{ptr @ptr_difference_cost, ptr @integer_zerop, i64 27027}
!657 = !{ptr @ptr_difference_cost, ptr @split_address_cost, i64 19492}
!658 = !{ptr @ptr_difference_cost, ptr @signed_type_for, i64 7534}
!659 = !{ptr @ptr_difference_cost, ptr @tree_to_aff_combination, i64 15068}
!660 = !{ptr @ptr_difference_cost, ptr @shwi_to_double_int, i64 7534}
!661 = !{ptr @ptr_difference_cost, ptr @aff_combination_scale, i64 7534}
!662 = !{ptr @ptr_difference_cost, ptr @aff_combination_add, i64 7534}
!663 = !{ptr @ptr_difference_cost, ptr @aff_combination_to_tree, i64 7534}
!664 = !{ptr @ptr_difference_cost, ptr @force_var_cost, i64 7534}
!665 = !{ptr @split_address_cost, ptr @get_inner_reference, i64 19493}
!666 = !{ptr @split_address_cost, ptr @walk_tree_1, i64 9076}
!667 = !{ptr @split_address_cost, ptr @new_cost, i64 9076}
!668 = !{ptr @force_expr_to_var_cost, ptr @build_pointer_type, i64 2}
!669 = !{ptr @force_expr_to_var_cost, ptr @create_tmp_var_raw, i64 2}
!670 = !{ptr @force_expr_to_var_cost, ptr @produce_memory_decl_rtl, i64 2}
!671 = !{ptr @force_expr_to_var_cost, ptr @set_decl_rtl, i64 2}
!672 = !{ptr @force_expr_to_var_cost, ptr @build1_stat, i64 2}
!673 = !{ptr @force_expr_to_var_cost, ptr @build_int_cst, i64 6}
!674 = !{ptr @force_expr_to_var_cost, ptr @computation_cost, i64 9}
!675 = !{ptr @force_expr_to_var_cost, ptr @build2_stat, i64 3}
!676 = !{ptr @force_expr_to_var_cost, ptr @tree_strip_nop_conversions, i64 211531}
!677 = !{ptr @force_expr_to_var_cost, ptr @is_gimple_min_invariant, i64 98300}
!678 = !{ptr @force_expr_to_var_cost, ptr @new_cost, i64 98299}
!679 = !{ptr @force_expr_to_var_cost, ptr @is_gimple_val, i64 79733}
!680 = !{ptr @force_expr_to_var_cost, ptr @force_expr_to_var_cost, i64 21297}
!681 = !{ptr @force_expr_to_var_cost, ptr @vector_type_mode, i64 1}
!682 = !{ptr @force_expr_to_var_cost, ptr @add_cost, i64 35100}
!683 = !{ptr @force_expr_to_var_cost, ptr @cst_and_fits_in_hwi, i64 10097}
!684 = !{ptr @force_expr_to_var_cost, ptr @int_cst_value, i64 5048}
!685 = !{ptr @force_expr_to_var_cost, ptr @multiply_by_cost, i64 5048}
!686 = !{ptr @force_expr_to_var_cost, ptr @fancy_abort, i64 1}
!687 = !{ptr @force_expr_to_var_cost, ptr @add_costs, i64 80298}
!688 = !{ptr @produce_memory_decl_rtl, ptr @decl_assembler_name, i64 26}
!689 = !{ptr @produce_memory_decl_rtl, ptr @gen_rtx_fmt_s00_stat, i64 26}
!690 = !{ptr @produce_memory_decl_rtl, ptr @fancy_abort, i64 1}
!691 = !{ptr @produce_memory_decl_rtl, ptr @gen_rtx_MEM, i64 127}
!692 = !{ptr @produce_memory_decl_rtl, ptr @set_mem_addr_space, i64 127}
!693 = !{ptr @produce_memory_decl_rtl, ptr @gen_raw_REG, i64 101}
!694 = !{ptr @stmt_after_ip_normal_pos, ptr @ip_normal_pos, i64 164183}
!695 = !{ptr @stmt_after_ip_normal_pos, ptr @gimple_bb, i64 164183}
!696 = !{ptr @stmt_after_ip_normal_pos, ptr @fancy_abort, i64 1}
!697 = !{ptr @stmt_after_ip_normal_pos, ptr @last_stmt, i64 74528}
!698 = !{ptr @stmt_after_inc_pos, ptr @gimple_bb, i64 106836}
!699 = !{ptr @stmt_after_inc_pos, ptr @dominated_by_p, i64 53418}
!700 = !{ptr @stmt_after_inc_pos, ptr @gimple_uid, i64 46872}
!701 = !{ptr @VEC_address_cost_data_heap_safe_grow_cleared, ptr @VEC_address_cost_data_base_length, i64 3}
!702 = !{ptr @VEC_address_cost_data_heap_safe_grow_cleared, ptr @VEC_address_cost_data_heap_safe_grow, i64 3}
!703 = !{ptr @VEC_address_cost_data_heap_safe_grow_cleared, ptr @VEC_address_cost_data_base_address, i64 3}
!704 = !{ptr @VEC_address_cost_data_heap_safe_grow, ptr @VEC_address_cost_data_heap_reserve_exact, i64 3}
!705 = !{ptr @VEC_address_cost_data_heap_reserve_exact, ptr @VEC_address_cost_data_base_space, i64 3}
!706 = !{ptr @VEC_address_cost_data_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 2}
!707 = !{ptr @get_computation_aff, ptr @var_at_stmt, i64 53784}
!708 = !{ptr @get_computation_aff, ptr @unsigned_type_for, i64 53784}
!709 = !{ptr @get_computation_aff, ptr @fold_convert_loc, i64 10121}
!710 = !{ptr @get_computation_aff, ptr @constant_multiple_of, i64 53784}
!711 = !{ptr @get_computation_aff, ptr @determine_common_wider_type, i64 53712}
!712 = !{ptr @get_computation_aff, ptr @tree_to_aff_combination, i64 176431}
!713 = !{ptr @get_computation_aff, ptr @stmt_after_increment, i64 53712}
!714 = !{ptr @get_computation_aff, ptr @aff_combination_add, i64 122719}
!715 = !{ptr @get_computation_aff, ptr @double_int_neg, i64 53712}
!716 = !{ptr @get_computation_aff, ptr @aff_combination_scale, i64 107424}
!717 = !{ptr @get_computation_aff, ptr @aff_combination_convert, i64 36270}
!718 = !{ptr @var_at_stmt, ptr @stmt_after_increment, i64 58976}
!719 = !{ptr @prepare_decl_rtl, ptr @handled_component_p, i64 2423}
!720 = !{ptr @prepare_decl_rtl, ptr @produce_memory_decl_rtl, i64 129}
!721 = !{ptr @prepare_decl_rtl, ptr @gen_raw_REG, i64 27336}
!722 = !{ptr @prepare_decl_rtl, ptr @VEC_tree_heap_safe_push, i64 27462}
!723 = !{ptr @prepare_decl_rtl, ptr @set_decl_rtl, i64 27462}
!724 = !{ptr @expand_expr, ptr @expand_expr_real, i64 37590}
!725 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 27461}
!726 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 27461}
!727 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 27461}
!728 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 21}
!729 = !{ptr @determine_iv_cost, ptr @force_var_cost, i64 47626}
!730 = !{ptr @determine_iv_cost, ptr @vector_type_mode, i64 1}
!731 = !{ptr @determine_iv_cost, ptr @add_cost, i64 47626}
!732 = !{ptr @determine_iv_cost, ptr @ip_end_pos, i64 8638}
!733 = !{ptr @determine_iv_cost, ptr @empty_block_p, i64 8638}
!734 = !{ptr @alloc_use_cost_map, ptr @n_iv_uses, i64 24745}
!735 = !{ptr @alloc_use_cost_map, ptr @iv_use, i64 18837}
!736 = !{ptr @alloc_use_cost_map, ptr @n_iv_cands, i64 18667}
!737 = !{ptr @alloc_use_cost_map, ptr @bmp_iter_set_init, i64 170}
!738 = !{ptr @alloc_use_cost_map, ptr @bmp_iter_set, i64 1893}
!739 = !{ptr @alloc_use_cost_map, ptr @bmp_iter_next, i64 1723}
!740 = !{ptr @alloc_use_cost_map, ptr @xcalloc, i64 18837}
!741 = !{ptr @determine_use_iv_cost, ptr @determine_use_iv_cost_generic, i64 38031}
!742 = !{ptr @determine_use_iv_cost, ptr @determine_use_iv_cost_address, i64 105535}
!743 = !{ptr @determine_use_iv_cost, ptr @determine_use_iv_cost_condition, i64 40972}
!744 = !{ptr @determine_use_iv_cost, ptr @fancy_abort, i64 1}
!745 = !{ptr @determine_use_iv_cost_generic, ptr @set_use_iv_cost, i64 38031}
!746 = !{ptr @determine_use_iv_cost_generic, ptr @get_computation_cost, i64 36400}
!747 = !{ptr @determine_use_iv_cost_generic, ptr @infinite_cost_p, i64 36400}
!748 = !{ptr @determine_use_iv_cost_address, ptr @get_computation_cost, i64 105536}
!749 = !{ptr @determine_use_iv_cost_address, ptr @set_use_iv_cost, i64 105536}
!750 = !{ptr @determine_use_iv_cost_address, ptr @infinite_cost_p, i64 105536}
!751 = !{ptr @determine_use_iv_cost_condition, ptr @set_use_iv_cost, i64 40972}
!752 = !{ptr @determine_use_iv_cost_condition, ptr @may_eliminate_iv, i64 40971}
!753 = !{ptr @determine_use_iv_cost_condition, ptr @force_var_cost, i64 10373}
!754 = !{ptr @determine_use_iv_cost_condition, ptr @extract_cond_operands, i64 40971}
!755 = !{ptr @determine_use_iv_cost_condition, ptr @fancy_abort, i64 1}
!756 = !{ptr @determine_use_iv_cost_condition, ptr @infinite_cost_p, i64 81942}
!757 = !{ptr @determine_use_iv_cost_condition, ptr @integer_zerop, i64 10373}
!758 = !{ptr @determine_use_iv_cost_condition, ptr @operand_equal_p, i64 16815}
!759 = !{ptr @determine_use_iv_cost_condition, ptr @get_computation_cost, i64 40971}
!760 = !{ptr @determine_use_iv_cost_condition, ptr @walk_tree_1, i64 40971}
!761 = !{ptr @determine_use_iv_cost_condition, ptr @compare_costs, i64 40971}
!762 = !{ptr @determine_use_iv_cost_condition, ptr @bitmap_obstack_free, i64 6526}
!763 = !{ptr @set_use_iv_cost, ptr @infinite_cost_p, i64 184539}
!764 = !{ptr @set_use_iv_cost, ptr @bitmap_obstack_free, i64 39414}
!765 = !{ptr @set_use_iv_cost, ptr @fancy_abort, i64 9}
!766 = !{ptr @may_eliminate_iv, ptr @gimple_bb, i64 40712}
!767 = !{ptr @may_eliminate_iv, ptr @last_stmt, i64 40712}
!768 = !{ptr @may_eliminate_iv, ptr @gimple_code, i64 39702}
!769 = !{ptr @may_eliminate_iv, ptr @dominated_by_p, i64 39690}
!770 = !{ptr @may_eliminate_iv, ptr @VEC_edge_base_index, i64 74624}
!771 = !{ptr @may_eliminate_iv, ptr @flow_bb_inside_loop_p, i64 74872}
!772 = !{ptr @may_eliminate_iv, ptr @niter_for_exit, i64 36653}
!773 = !{ptr @may_eliminate_iv, ptr @iv_period, i64 31726}
!774 = !{ptr @may_eliminate_iv, ptr @tree_int_cst_lt, i64 8139}
!775 = !{ptr @may_eliminate_iv, ptr @loop_only_exit_p, i64 23587}
!776 = !{ptr @may_eliminate_iv, ptr @estimated_loop_iterations, i64 6143}
!777 = !{ptr @may_eliminate_iv, ptr @tree_to_double_int, i64 6142}
!778 = !{ptr @may_eliminate_iv, ptr @double_int_ucmp, i64 6142}
!779 = !{ptr @may_eliminate_iv, ptr @cand_value_at, i64 10442}
!780 = !{ptr @may_eliminate_iv, ptr @aff_combination_to_tree, i64 10442}
!781 = !{ptr @may_eliminate_iv, ptr @expression_expensive_p, i64 10442}
!782 = !{ptr @iv_period, ptr @fancy_abort, i64 2}
!783 = !{ptr @iv_period, ptr @num_ending_zeros, i64 31731}
!784 = !{ptr @iv_period, ptr @unsigned_type_for, i64 31731}
!785 = !{ptr @iv_period, ptr @tree_low_cst, i64 31731}
!786 = !{ptr @iv_period, ptr @build_low_bits_mask, i64 31731}
!787 = !{ptr @cand_value_at, ptr @tree_to_aff_combination, i64 31212}
!788 = !{ptr @cand_value_at, ptr @aff_combination_convert, i64 10404}
!789 = !{ptr @cand_value_at, ptr @aff_combination_mult, i64 10404}
!790 = !{ptr @cand_value_at, ptr @stmt_after_increment, i64 10404}
!791 = !{ptr @cand_value_at, ptr @aff_combination_add, i64 19667}
!792 = !{ptr @ivopts_global_cost_for_size, ptr @estimate_reg_pressure_cost, i64 843983}
!793 = !{ptr @get_initial_solution, ptr @iv_ca_new, i64 5908}
!794 = !{ptr @get_initial_solution, ptr @n_iv_uses, i64 24742}
!795 = !{ptr @get_initial_solution, ptr @iv_use, i64 18835}
!796 = !{ptr @get_initial_solution, ptr @try_add_cand_for, i64 18835}
!797 = !{ptr @get_initial_solution, ptr @iv_ca_free, i64 1}
!798 = !{ptr @try_improve_iv_set, ptr @iv_ca_cost, i64 11687}
!799 = !{ptr @try_improve_iv_set, ptr @n_iv_cands, i64 86347}
!800 = !{ptr @try_improve_iv_set, ptr @iv_cand, i64 77550}
!801 = !{ptr @try_improve_iv_set, ptr @iv_ca_cand_used_p, i64 77550}
!802 = !{ptr @try_improve_iv_set, ptr @iv_ca_extend, i64 65924}
!803 = !{ptr @try_improve_iv_set, ptr @iv_ca_delta_commit, i64 57258}
!804 = !{ptr @try_improve_iv_set, ptr @iv_ca_prune, i64 33357}
!805 = !{ptr @try_improve_iv_set, ptr @iv_ca_delta_join, i64 27184}
!806 = !{ptr @try_improve_iv_set, ptr @compare_costs, i64 30075}
!807 = !{ptr @try_improve_iv_set, ptr @iv_ca_delta_free, i64 30075}
!808 = !{ptr @try_improve_iv_set, ptr @fancy_abort, i64 1}
!809 = !{ptr @iv_ca_new, ptr @xmalloc, i64 5908}
!810 = !{ptr @iv_ca_new, ptr @n_iv_uses, i64 5908}
!811 = !{ptr @iv_ca_new, ptr @xcalloc, i64 17724}
!812 = !{ptr @iv_ca_new, ptr @n_iv_cands, i64 5908}
!813 = !{ptr @iv_ca_new, ptr @bitmap_obstack_alloc_stat, i64 5908}
!814 = !{ptr @try_add_cand_for, ptr @iv_ca_add_use, i64 18839}
!815 = !{ptr @try_add_cand_for, ptr @iv_ca_cost, i64 18839}
!816 = !{ptr @try_add_cand_for, ptr @iv_ca_cand_for_use, i64 18843}
!817 = !{ptr @try_add_cand_for, ptr @iv_ca_delta_add, i64 93850}
!818 = !{ptr @try_add_cand_for, ptr @iv_ca_set_no_cp, i64 93850}
!819 = !{ptr @try_add_cand_for, ptr @bmp_iter_set_init, i64 18839}
!820 = !{ptr @try_add_cand_for, ptr @bmp_iter_set, i64 133890}
!821 = !{ptr @try_add_cand_for, ptr @iv_cand, i64 115051}
!822 = !{ptr @try_add_cand_for, ptr @iv_ca_cand_used_p, i64 102141}
!823 = !{ptr @try_add_cand_for, ptr @get_use_iv_cost, i64 87579}
!824 = !{ptr @try_add_cand_for, ptr @iv_ca_set_cp, i64 81494}
!825 = !{ptr @try_add_cand_for, ptr @iv_ca_extend, i64 81494}
!826 = !{ptr @try_add_cand_for, ptr @compare_costs, i64 81494}
!827 = !{ptr @try_add_cand_for, ptr @iv_ca_delta_free, i64 100332}
!828 = !{ptr @try_add_cand_for, ptr @bmp_iter_next, i64 115051}
!829 = !{ptr @try_add_cand_for, ptr @infinite_cost_p, i64 37678}
!830 = !{ptr @try_add_cand_for, ptr @iv_ca_delta_commit, i64 18839}
!831 = !{ptr @iv_ca_add_use, ptr @fancy_abort, i64 1}
!832 = !{ptr @iv_ca_add_use, ptr @bmp_iter_set_init, i64 18839}
!833 = !{ptr @iv_ca_add_use, ptr @bmp_iter_set, i64 33391}
!834 = !{ptr @iv_ca_add_use, ptr @iv_cand, i64 14552}
!835 = !{ptr @iv_ca_add_use, ptr @get_use_iv_cost, i64 14552}
!836 = !{ptr @iv_ca_add_use, ptr @cheaper_cost_pair, i64 14552}
!837 = !{ptr @iv_ca_add_use, ptr @bmp_iter_next, i64 14552}
!838 = !{ptr @iv_ca_add_use, ptr @iv_ca_set_cp, i64 18839}
!839 = !{ptr @iv_ca_delta_add, ptr @xmalloc, i64 186329}
!840 = !{ptr @iv_ca_set_no_cp, ptr @bitmap_clear_bit, i64 160474}
!841 = !{ptr @iv_ca_set_no_cp, ptr @iv_ca_set_remove_invariants, i64 573045}
!842 = !{ptr @iv_ca_set_no_cp, ptr @sub_costs, i64 412571}
!843 = !{ptr @iv_ca_set_no_cp, ptr @iv_ca_recount_cost, i64 412571}
!844 = !{ptr @iv_ca_set_cp, ptr @iv_ca_set_no_cp, i64 318719}
!845 = !{ptr @iv_ca_set_cp, ptr @bitmap_set_bit, i64 167926}
!846 = !{ptr @iv_ca_set_cp, ptr @iv_ca_set_add_invariants, i64 599335}
!847 = !{ptr @iv_ca_set_cp, ptr @add_costs, i64 431409}
!848 = !{ptr @iv_ca_set_cp, ptr @iv_ca_recount_cost, i64 431409}
!849 = !{ptr @iv_ca_extend, ptr @iv_use, i64 590114}
!850 = !{ptr @iv_ca_extend, ptr @iv_ca_cand_for_use, i64 590114}
!851 = !{ptr @iv_ca_extend, ptr @get_use_iv_cost, i64 508618}
!852 = !{ptr @iv_ca_extend, ptr @iv_ca_has_deps, i64 428320}
!853 = !{ptr @iv_ca_extend, ptr @cheaper_cost_pair, i64 400751}
!854 = !{ptr @iv_ca_extend, ptr @iv_ca_delta_add, i64 65353}
!855 = !{ptr @iv_ca_extend, ptr @iv_ca_delta_commit, i64 294854}
!856 = !{ptr @iv_ca_extend, ptr @iv_ca_cost, i64 147427}
!857 = !{ptr @iv_ca_extend, ptr @iv_ca_n_cands, i64 65931}
!858 = !{ptr @iv_ca_delta_free, ptr @free, i64 186329}
!859 = !{ptr @iv_ca_delta_commit, ptr @iv_ca_delta_reverse, i64 376252}
!860 = !{ptr @iv_ca_delta_commit, ptr @iv_ca_cand_for_use, i64 337559}
!861 = !{ptr @iv_ca_delta_commit, ptr @fancy_abort, i64 1}
!862 = !{ptr @iv_ca_delta_commit, ptr @iv_ca_set_cp, i64 337559}
!863 = !{ptr @cheaper_cost_pair, ptr @compare_costs, i64 408895}
!864 = !{ptr @iv_ca_set_remove_invariants, ptr @bmp_iter_set_init, i64 124044}
!865 = !{ptr @iv_ca_set_remove_invariants, ptr @bmp_iter_set, i64 252797}
!866 = !{ptr @iv_ca_set_remove_invariants, ptr @bmp_iter_next, i64 128753}
!867 = !{ptr @iv_ca_recount_cost, ptr @ivopts_global_cost_for_size, i64 843983}
!868 = !{ptr @iv_ca_set_add_invariants, ptr @bmp_iter_set_init, i64 128443}
!869 = !{ptr @iv_ca_set_add_invariants, ptr @bmp_iter_set, i64 261606}
!870 = !{ptr @iv_ca_set_add_invariants, ptr @bmp_iter_next, i64 133163}
!871 = !{ptr @iv_ca_has_deps, ptr @bmp_iter_set_init, i64 149003}
!872 = !{ptr @iv_ca_has_deps, ptr @bmp_iter_set, i64 287227}
!873 = !{ptr @iv_ca_has_deps, ptr @bmp_iter_next, i64 138224}
!874 = !{ptr @iv_ca_prune, ptr @iv_ca_cost, i64 37461}
!875 = !{ptr @iv_ca_prune, ptr @bmp_iter_set_init, i64 37461}
!876 = !{ptr @iv_ca_prune, ptr @bmp_iter_set, i64 110564}
!877 = !{ptr @iv_ca_prune, ptr @iv_cand, i64 73103}
!878 = !{ptr @iv_ca_prune, ptr @iv_ca_narrow, i64 42080}
!879 = !{ptr @iv_ca_prune, ptr @compare_costs, i64 42080}
!880 = !{ptr @iv_ca_prune, ptr @iv_ca_delta_free, i64 42081}
!881 = !{ptr @iv_ca_prune, ptr @bmp_iter_next, i64 73103}
!882 = !{ptr @iv_ca_prune, ptr @iv_ca_delta_commit, i64 8202}
!883 = !{ptr @iv_ca_prune, ptr @iv_ca_prune, i64 4101}
!884 = !{ptr @iv_ca_prune, ptr @iv_ca_delta_join, i64 4101}
!885 = !{ptr @iv_ca_narrow, ptr @n_iv_uses, i64 130843}
!886 = !{ptr @iv_ca_narrow, ptr @iv_use, i64 123628}
!887 = !{ptr @iv_ca_narrow, ptr @iv_ca_cand_for_use, i64 123628}
!888 = !{ptr @iv_ca_narrow, ptr @bmp_iter_set_init, i64 62624}
!889 = !{ptr @iv_ca_narrow, ptr @bmp_iter_set, i64 207403}
!890 = !{ptr @iv_ca_narrow, ptr @iv_cand, i64 83121}
!891 = !{ptr @iv_ca_narrow, ptr @get_use_iv_cost, i64 83121}
!892 = !{ptr @iv_ca_narrow, ptr @iv_ca_has_deps, i64 52055}
!893 = !{ptr @iv_ca_narrow, ptr @cheaper_cost_pair, i64 36306}
!894 = !{ptr @iv_ca_narrow, ptr @bmp_iter_next, i64 146933}
!895 = !{ptr @iv_ca_narrow, ptr @bmp_iter_and_init, i64 1189}
!896 = !{ptr @iv_ca_narrow, ptr @bmp_iter_and, i64 3343}
!897 = !{ptr @iv_ca_narrow, ptr @iv_ca_delta_free, i64 34866}
!898 = !{ptr @iv_ca_narrow, ptr @iv_ca_delta_add, i64 28947}
!899 = !{ptr @iv_ca_narrow, ptr @iv_ca_delta_commit, i64 14430}
!900 = !{ptr @iv_ca_narrow, ptr @iv_ca_cost, i64 7215}
!901 = !{ptr @create_new_iv, ptr @ip_normal_pos, i64 1651}
!902 = !{ptr @create_new_iv, ptr @gsi_last_bb, i64 2115}
!903 = !{ptr @create_new_iv, ptr @ip_end_pos, i64 464}
!904 = !{ptr @create_new_iv, ptr @gsi_for_stmt, i64 2}
!905 = !{ptr @create_new_iv, ptr @name_info, i64 10668}
!906 = !{ptr @create_new_iv, ptr @find_interesting_uses_op, i64 5334}
!907 = !{ptr @create_new_iv, ptr @gimple_add_tmp_var, i64 2118}
!908 = !{ptr @create_new_iv, ptr @add_referenced_var, i64 2118}
!909 = !{ptr @create_new_iv, ptr @unshare_expr, i64 4236}
!910 = !{ptr @create_new_iv, ptr @create_iv, i64 2118}
!911 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 2115}
!912 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 2115}
!913 = !{ptr @rewrite_use, ptr @rewrite_use_nonlinear_expr, i64 9133}
!914 = !{ptr @rewrite_use, ptr @rewrite_use_address, i64 8908}
!915 = !{ptr @rewrite_use, ptr @rewrite_use_compare, i64 4521}
!916 = !{ptr @rewrite_use, ptr @fancy_abort, i64 1}
!917 = !{ptr @rewrite_use, ptr @update_stmt, i64 22564}
!918 = !{ptr @rewrite_use_nonlinear_expr, ptr @is_gimple_assign, i64 5337}
!919 = !{ptr @rewrite_use_nonlinear_expr, ptr @fancy_abort, i64 4}
!920 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_assign_lhs, i64 8020}
!921 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_assign_rhs_code, i64 5337}
!922 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_assign_rhs1, i64 4004}
!923 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_assign_rhs2, i64 4002}
!924 = !{ptr @rewrite_use_nonlinear_expr, ptr @operand_equal_p, i64 28}
!925 = !{ptr @rewrite_use_nonlinear_expr, ptr @fold_convert_loc, i64 2688}
!926 = !{ptr @rewrite_use_nonlinear_expr, ptr @unshare_expr, i64 1344}
!927 = !{ptr @rewrite_use_nonlinear_expr, ptr @build2_stat, i64 1344}
!928 = !{ptr @rewrite_use_nonlinear_expr, ptr @get_computation, i64 3797}
!929 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_code, i64 7877}
!930 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_phi_result_ptr, i64 2457}
!931 = !{ptr @rewrite_use_nonlinear_expr, ptr @get_def_from_ptr, i64 2457}
!932 = !{ptr @rewrite_use_nonlinear_expr, ptr @name_info, i64 2457}
!933 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_bb, i64 51}
!934 = !{ptr @rewrite_use_nonlinear_expr, ptr @gsi_after_labels, i64 51}
!935 = !{ptr @rewrite_use_nonlinear_expr, ptr @gsi_for_stmt, i64 2734}
!936 = !{ptr @rewrite_use_nonlinear_expr, ptr @force_gimple_operand_gsi, i64 2736}
!937 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_build_assign_stat, i64 51}
!938 = !{ptr @rewrite_use_nonlinear_expr, ptr @gsi_insert_before, i64 51}
!939 = !{ptr @rewrite_use_nonlinear_expr, ptr @remove_phi_node, i64 51}
!940 = !{ptr @rewrite_use_nonlinear_expr, ptr @gimple_assign_set_rhs_from_tree, i64 2684}
!941 = !{ptr @rewrite_use_nonlinear_expr, ptr @gsi_stmt, i64 2684}
!942 = !{ptr @rewrite_use_address, ptr @gsi_for_stmt, i64 8909}
!943 = !{ptr @rewrite_use_address, ptr @get_computation_aff, i64 8909}
!944 = !{ptr @rewrite_use_address, ptr @fancy_abort, i64 1}
!945 = !{ptr @rewrite_use_address, ptr @unshare_aff_combination, i64 8909}
!946 = !{ptr @rewrite_use_address, ptr @var_at_stmt, i64 4095}
!947 = !{ptr @rewrite_use_address, ptr @create_mem_ref, i64 8909}
!948 = !{ptr @rewrite_use_address, ptr @copy_ref_info, i64 8909}
!949 = !{ptr @rewrite_use_compare, ptr @gsi_for_stmt, i64 4521}
!950 = !{ptr @rewrite_use_compare, ptr @get_use_iv_cost, i64 4521}
!951 = !{ptr @rewrite_use_compare, ptr @var_at_stmt, i64 1097}
!952 = !{ptr @rewrite_use_compare, ptr @iv_elimination_compare, i64 1097}
!953 = !{ptr @rewrite_use_compare, ptr @fold_convert_loc, i64 1097}
!954 = !{ptr @rewrite_use_compare, ptr @unshare_expr, i64 1097}
!955 = !{ptr @rewrite_use_compare, ptr @force_gimple_operand, i64 1097}
!956 = !{ptr @rewrite_use_compare, ptr @loop_preheader_edge, i64 146}
!957 = !{ptr @rewrite_use_compare, ptr @gsi_insert_seq_on_edge_immediate, i64 146}
!958 = !{ptr @rewrite_use_compare, ptr @gimple_cond_set_lhs, i64 1097}
!959 = !{ptr @rewrite_use_compare, ptr @gimple_cond_set_code, i64 1097}
!960 = !{ptr @rewrite_use_compare, ptr @gimple_cond_set_rhs, i64 1097}
!961 = !{ptr @rewrite_use_compare, ptr @get_computation, i64 3424}
!962 = !{ptr @rewrite_use_compare, ptr @fancy_abort, i64 2}
!963 = !{ptr @rewrite_use_compare, ptr @extract_cond_operands, i64 3424}
!964 = !{ptr @rewrite_use_compare, ptr @force_gimple_operand_gsi, i64 3424}
!965 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 22564}
!966 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 20742}
!967 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 20742}
!968 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 5336}
!969 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 5335}
!970 = !{ptr @get_computation, ptr @get_computation_at, i64 7221}
!971 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 37}
!972 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 38}
!973 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 38}
!974 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 38}
!975 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 1}
!976 = !{ptr @copy_ref_info, ptr @copy_mem_ref_info, i64 1}
!977 = !{ptr @copy_ref_info, ptr @unshare_and_remove_ssa_names, i64 8908}
!978 = !{ptr @unshare_and_remove_ssa_names, ptr @unshare_expr, i64 8909}
!979 = !{ptr @unshare_and_remove_ssa_names, ptr @for_each_index, i64 8909}
!980 = !{ptr @iv_elimination_compare, ptr @gimple_bb, i64 1096}
!981 = !{ptr @iv_elimination_compare, ptr @VEC_edge_base_index, i64 2189}
!982 = !{ptr @iv_elimination_compare, ptr @flow_bb_inside_loop_p, i64 1096}
!983 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 1096}
!984 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 1096}
!985 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 2192}
!986 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 2191}
!987 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!988 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 2192}
!989 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 14158}
!990 = !{ptr @VEC_int_heap_free, ptr @free, i64 2626}
!991 = !{ptr @VEC_tree_heap_free, ptr @free, i64 2626}
!992 = !{ptr @VEC_iv_use_p_heap_free, ptr @free, i64 2626}
!993 = !{ptr @VEC_iv_cand_p_heap_free, ptr @free, i64 2626}
!994 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!995 = !{!"function_entry_count", i64 15}
!996 = !{!"branch_weights", i32 2, i32 15}
!997 = !{!998, !999, i64 0}
!998 = !{!"edge_def", !999, i64 0, !999, i64 8, !1000, i64 16, !999, i64 24, !999, i64 32, !1002, i64 40, !1002, i64 44, !1002, i64 48, !1002, i64 52, !1003, i64 56}
!999 = !{!"any pointer", !1000, i64 0}
!1000 = !{!"omnipotent char", !1001, i64 0}
!1001 = !{!"Simple C/C++ TBAA"}
!1002 = !{!"int", !1000, i64 0}
!1003 = !{!"long", !1000, i64 0}
!1004 = !{!"branch_weights", i32 1, i32 15}
!1005 = !{!"function_entry_count", i64 0}
!1006 = !{!1007, !999, i64 24}
!1007 = !{!"iv", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !1000, i64 32, !1000, i64 33, !1002, i64 36}
!1008 = !{!1007, !999, i64 0}
!1009 = !{!1000, !1000, i64 0}
!1010 = !{!1007, !999, i64 16}
!1011 = !{!999, !999, i64 0}
!1012 = !{!1007, !999, i64 8}
!1013 = !{!1007, !1000, i64 32}
!1014 = !{!1015, !1002, i64 0}
!1015 = !{!"iv_use", !1002, i64 0, !1002, i64 4, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !1002, i64 40, !999, i64 48, !999, i64 56}
!1016 = !{!1015, !1002, i64 4}
!1017 = !{!1015, !999, i64 16}
!1018 = !{!1015, !999, i64 24}
!1019 = !{!1015, !999, i64 8}
!1020 = !{!1015, !999, i64 32}
!1021 = distinct !{!1021, !1022}
!1022 = !{!"llvm.loop.mustprogress"}
!1023 = !{!"function_entry_count", i64 407125}
!1024 = !{!"tree-ssa-loop-ivopts.c:n_iv_uses"}
!1025 = !{!1026, !999, i64 40}
!1026 = !{!"ivopts_data", !999, i64 0, !999, i64 8, !1002, i64 16, !1002, i64 20, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !1002, i64 64, !1000, i64 68, !1000, i64 69}
!1027 = !{!"function_entry_count", i64 891360}
!1028 = !{!"tree-ssa-loop-ivopts.c:iv_use"}
!1029 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_base_length"}
!1030 = !{!"branch_weights", i32 1, i32 407126}
!1031 = !{!1032, !1002, i64 0}
!1032 = !{!"VEC_iv_use_p_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1033 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_base_index"}
!1034 = !{!1035, !999, i64 40}
!1035 = !{!"iv_cand", !1002, i64 0, !1000, i64 4, !1002, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !1002, i64 48, !1002, i64 52, !999, i64 56, !999, i64 64}
!1036 = !{!1035, !1002, i64 0}
!1037 = !{!1035, !1000, i64 4}
!1038 = !{!1035, !999, i64 64}
!1039 = !{!1035, !1002, i64 8}
!1040 = !{!1035, !999, i64 56}
!1041 = !{!"function_entry_count", i64 76425}
!1042 = !{!"branch_weights", i32 1, i32 76426}
!1043 = !{!1002, !1002, i64 0}
!1044 = !{!"branch_weights", i32 1252150086, i32 861235220, i32 -1617143972}
!1045 = !{!"branch_weights", i32 19608, i32 367}
!1046 = !{!"branch_weights", i32 1, i32 19608}
!1047 = !{!"branch_weights", i32 1, i32 10509, i32 1, i32 9100}
!1048 = !{i8 0, i8 2}
!1049 = !{!"branch_weights", i32 10509, i32 1}
!1050 = !{!"branch_weights", i32 19608, i32 1}
!1051 = !{!"tree-ssa-loop-ivopts.c:idx_contains_abnormal_ssa_name_p"}
!1052 = !{!"tree-ssa-loop-ivopts.c:abnormal_ssa_name_p"}
!1053 = !{!"function_entry_count", i64 102468}
!1054 = !{!"branch_weights", i32 1, i32 102469}
!1055 = !{!"branch_weights", i32 42991, i32 59479}
!1056 = !{!"branch_weights", i32 42866, i32 126}
!1057 = !{!"branch_weights", i32 382, i32 42485}
!1058 = !{!"branch_weights", i32 42137, i32 349}
!1059 = !{!"branch_weights", i32 15876, i32 253}
!1060 = !{!"branch_weights", i32 1, i32 191}
!1061 = !{!"branch_weights", i32 191, i32 1857}
!1062 = distinct !{!1062, !1022}
!1063 = !{!"branch_weights", i32 115, i32 14}
!1064 = !{!"tree-ssa-loop-ivopts.c:loop_depth"}
!1065 = !{!1066, !999, i64 40}
!1066 = !{!"loop", !1002, i64 0, !1002, i64 4, !999, i64 8, !999, i64 16, !1067, i64 24, !1002, i64 32, !1002, i64 36, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !1068, i64 80, !1068, i64 96, !1000, i64 112, !1000, i64 113, !1002, i64 116, !999, i64 120, !999, i64 128, !1000, i64 136, !999, i64 144}
!1067 = !{!"lpt_decision", !1002, i64 0, !1002, i64 4}
!1068 = !{!"", !1003, i64 0, !1003, i64 8}
!1069 = !{!"function_entry_count", i64 1956851}
!1070 = !{!"tree-ssa-loop-ivopts.c:gimple_bb"}
!1071 = !{!"function_entry_count", i64 125}
!1072 = !{!"tree-ssa-loop-ivopts.c:tree_operand_length"}
!1073 = !{!"branch_weights", i32 1, i32 126}
!1074 = !{!"function_entry_count", i64 122450}
!1075 = !{!"tree-ssa-loop-ivopts.c:VEC_loop_p_base_length"}
!1076 = !{!"branch_weights", i32 2628, i32 119824}
!1077 = !{!1078, !1002, i64 0}
!1078 = !{!"VEC_loop_p_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1079 = distinct !{!1079, !1022}
!1080 = !{!"function_entry_count", i64 7528}
!1081 = !{!"tree-ssa-loop-ivopts.c:gimple_num_ops"}
!1082 = !{!"function_entry_count", i64 324342}
!1083 = !{!"tree-ssa-loop-ivopts.c:gimple_op"}
!1084 = !{!"branch_weights", i32 1, i32 324343}
!1085 = !{!"function_entry_count", i64 1319991}
!1086 = !{!"tree-ssa-loop-ivopts.c:gimple_has_ops"}
!1087 = !{i32 0, i32 256}
!1088 = !{!"function_entry_count", i64 920374}
!1089 = !{!"tree-ssa-loop-ivopts.c:gimple_ops"}
!1090 = !{!1003, !1003, i64 0}
!1091 = !{!"branch_weights", i32 1, i32 920375}
!1092 = !{!"function_entry_count", i64 6599294}
!1093 = !{!"tree-ssa-loop-ivopts.c:gimple_code"}
!1094 = !{!"tree-ssa-loop-ivopts.c:gimple_statement_structure"}
!1095 = !{!"tree-ssa-loop-ivopts.c:gss_for_code"}
!1096 = !{!"function_entry_count", i64 149510}
!1097 = !{!"branch_weights", i32 149511, i32 1}
!1098 = !{!"function_entry_count", i64 30144}
!1099 = !{!"branch_weights", i32 2, i32 30144}
!1100 = !{!1101, !1002, i64 8}
!1101 = !{!"mbc_entry", !1003, i64 0, !1002, i64 8, !1002, i64 12}
!1102 = !{!1101, !1003, i64 0}
!1103 = !{!"branch_weights", i32 70, i32 30076}
!1104 = !{!1101, !1002, i64 12}
!1105 = !{!"branch_weights", i32 70, i32 1}
!1106 = !{!"tree-ssa-loop-ivopts.c:mbc_entry_hash"}
!1107 = !{!"function_entry_count", i64 32201}
!1108 = !{!"tree-ssa-loop-ivopts.c:mbc_entry_eq"}
!1109 = !{!"branch_weights", i32 32202, i32 1}
!1110 = !{!"function_entry_count", i64 37759}
!1111 = !{!"tree-ssa-loop-ivopts.c:seq_cost"}
!1112 = !{!"branch_weights", i32 1, i32 37759}
!1113 = !{!"branch_weights", i32 529599, i32 1}
!1114 = !{!"branch_weights", i32 6365, i32 1}
!1115 = !{!"branch_weights", i32 593712997, i32 1553770651}
!1116 = !{!"branch_weights", i32 37759, i32 28440}
!1117 = distinct !{!1117, !1022}
!1118 = !{!"function_entry_count", i64 50981}
!1119 = !{!"branch_weights", i32 50979, i32 4}
!1120 = !{!"branch_weights", i32 7, i32 50976}
!1121 = !{!1122, !999, i64 1184}
!1122 = !{!"gcc_target", !1123, i64 0, !1125, i64 368, !1126, i64 664, !1002, i64 744, !999, i64 752, !999, i64 760, !999, i64 768, !999, i64 776, !999, i64 784, !999, i64 792, !999, i64 800, !999, i64 808, !999, i64 816, !999, i64 824, !999, i64 832, !999, i64 840, !999, i64 848, !999, i64 856, !999, i64 864, !999, i64 872, !999, i64 880, !999, i64 888, !999, i64 896, !999, i64 904, !999, i64 912, !999, i64 920, !999, i64 928, !999, i64 936, !999, i64 944, !999, i64 952, !999, i64 960, !999, i64 968, !999, i64 976, !999, i64 984, !999, i64 992, !999, i64 1000, !999, i64 1008, !999, i64 1016, !999, i64 1024, !999, i64 1032, !999, i64 1040, !999, i64 1048, !999, i64 1056, !1003, i64 1064, !1003, i64 1072, !999, i64 1080, !999, i64 1088, !999, i64 1096, !999, i64 1104, !999, i64 1112, !999, i64 1120, !999, i64 1128, !999, i64 1136, !999, i64 1144, !999, i64 1152, !999, i64 1160, !999, i64 1168, !1127, i64 1176, !999, i64 1232, !999, i64 1240, !999, i64 1248, !999, i64 1256, !999, i64 1264, !999, i64 1272, !999, i64 1280, !999, i64 1288, !999, i64 1296, !999, i64 1304, !999, i64 1312, !999, i64 1320, !999, i64 1328, !999, i64 1336, !999, i64 1344, !999, i64 1352, !999, i64 1360, !999, i64 1368, !999, i64 1376, !999, i64 1384, !999, i64 1392, !999, i64 1400, !999, i64 1408, !999, i64 1416, !999, i64 1424, !999, i64 1432, !999, i64 1440, !999, i64 1448, !999, i64 1456, !1003, i64 1464, !1128, i64 1472, !999, i64 1664, !999, i64 1672, !999, i64 1680, !999, i64 1688, !999, i64 1696, !999, i64 1704, !999, i64 1712, !999, i64 1720, !999, i64 1728, !999, i64 1736, !999, i64 1744, !999, i64 1752, !999, i64 1760, !999, i64 1768, !999, i64 1776, !1129, i64 1784, !1130, i64 1792, !1131, i64 1896, !1132, i64 1968, !999, i64 2016, !1000, i64 2024, !1000, i64 2025, !1000, i64 2026, !1000, i64 2027, !1000, i64 2028, !1000, i64 2029, !1000, i64 2030, !1000, i64 2031, !1000, i64 2032, !1000, i64 2033, !1000, i64 2034, !1000, i64 2035}
!1123 = !{!"asm_out", !999, i64 0, !999, i64 8, !999, i64 16, !1124, i64 24, !1124, i64 56, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152, !999, i64 160, !999, i64 168, !999, i64 176, !999, i64 184, !999, i64 192, !999, i64 200, !999, i64 208, !999, i64 216, !999, i64 224, !999, i64 232, !999, i64 240, !999, i64 248, !999, i64 256, !999, i64 264, !999, i64 272, !999, i64 280, !999, i64 288, !999, i64 296, !999, i64 304, !999, i64 312, !999, i64 320, !999, i64 328, !999, i64 336, !999, i64 344, !999, i64 352, !999, i64 360}
!1124 = !{!"asm_int_op", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24}
!1125 = !{!"sched", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152, !999, i64 160, !999, i64 168, !999, i64 176, !999, i64 184, !999, i64 192, !999, i64 200, !999, i64 208, !999, i64 216, !999, i64 224, !999, i64 232, !999, i64 240, !999, i64 248, !999, i64 256, !999, i64 264, !999, i64 272, !999, i64 280, !999, i64 288}
!1126 = !{!"vectorize", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72}
!1127 = !{!"addr_space", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48}
!1128 = !{!"calls", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152, !999, i64 160, !999, i64 168, !999, i64 176, !999, i64 184}
!1129 = !{!"c", !999, i64 0}
!1130 = !{!"cxx", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96}
!1131 = !{!"emutls", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !1000, i64 64, !1000, i64 65}
!1132 = !{!"target_option_hooks", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40}
!1133 = !{!"branch_weights", i32 1519, i32 25}
!1134 = !{!"branch_weights", i32 7, i32 1536}
!1135 = distinct !{!1135, !1022}
!1136 = !{!"branch_weights", i32 7, i32 1}
!1137 = distinct !{!1137, !1022}
!1138 = !{!"branch_weights", i32 85789478, i32 -1861278880}
!1139 = !{!"function_entry_count", i64 50987}
!1140 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_base_length"}
!1141 = !{!"branch_weights", i32 4, i32 50985}
!1142 = !{!1143, !1002, i64 0}
!1143 = !{!"VEC_sbitmap_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1144 = !{!"function_entry_count", i64 3}
!1145 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_heap_safe_grow_cleared"}
!1146 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_base_index"}
!1147 = !{!"function_entry_count", i64 24}
!1148 = !{!"tree-ssa-loop-ivopts.c:SET_BIT"}
!1149 = !{!1150, !999, i64 0}
!1150 = !{!"simple_bitmap_def", !999, i64 0, !1002, i64 8, !1002, i64 12, !1000, i64 16}
!1151 = !{!"branch_weights", i32 25, i32 1}
!1152 = !{!"function_entry_count", i64 6}
!1153 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_base_replace"}
!1154 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_heap_safe_grow"}
!1155 = !{!"branch_weights", i32 2, i32 3}
!1156 = !{}
!1157 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_base_address"}
!1158 = !{!"branch_weights", i32 1, i32 4}
!1159 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_heap_reserve_exact"}
!1160 = !{i32 0, i32 2}
!1161 = !{!"branch_weights", i32 4, i32 1}
!1162 = !{!"tree-ssa-loop-ivopts.c:VEC_sbitmap_base_space"}
!1163 = !{!1143, !1002, i64 4}
!1164 = !{!"function_entry_count", i64 2627}
!1165 = !{!"branch_weights", i32 1, i32 2627}
!1166 = !{!"branch_weights", i32 14159, i32 1}
!1167 = !{!"branch_weights", i32 2627, i32 11532}
!1168 = distinct !{!1168, !1022}
!1169 = !{!"tree-ssa-loop-ivopts.c:tree_ssa_iv_optimize_init"}
!1170 = !{!1171, !999, i64 24}
!1171 = !{!"function", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !1002, i64 104, !1002, i64 108, !1002, i64 112, !1002, i64 116, !1002, i64 120, !1002, i64 124, !999, i64 128, !1002, i64 136, !1002, i64 137, !1002, i64 138, !1002, i64 138, !1002, i64 138, !1002, i64 138, !1002, i64 138, !1002, i64 138, !1002, i64 138, !1002, i64 139, !1002, i64 139, !1002, i64 139, !1002, i64 139, !1002, i64 139, !1002, i64 139, !1002, i64 139}
!1172 = !{!1173, !999, i64 16}
!1173 = !{!"gimple_df", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !1174, i64 32, !1174, i64 48, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !1002, i64 96, !1175, i64 104}
!1174 = !{!"pt_solution", !1002, i64 0, !1002, i64 0, !1002, i64 0, !1002, i64 0, !1002, i64 0, !1002, i64 0, !999, i64 8}
!1175 = !{!"ssa_operands", !999, i64 0, !1002, i64 8, !1002, i64 12, !1000, i64 16, !999, i64 24, !999, i64 32}
!1176 = !{!1026, !1002, i64 20}
!1177 = !{!1026, !999, i64 24}
!1178 = !{!1026, !999, i64 32}
!1179 = !{!1026, !999, i64 56}
!1180 = !{!1026, !1002, i64 64}
!1181 = !{!1026, !999, i64 8}
!1182 = !{!1026, !999, i64 48}
!1183 = !{!"tree-ssa-loop-ivopts.c:fel_init"}
!1184 = !{!1185, !1002, i64 8}
!1185 = !{!"", !999, i64 0, !1002, i64 8}
!1186 = !{!1171, !999, i64 32}
!1187 = !{!"branch_weights", i32 1, i32 2628}
!1188 = !{!1185, !999, i64 0}
!1189 = !{!1190, !999, i64 24}
!1190 = !{!"loops", !1002, i64 0, !999, i64 8, !999, i64 16, !999, i64 24}
!1191 = !{!1066, !999, i64 48}
!1192 = !{!"branch_weights", i32 2628, i32 4346}
!1193 = distinct !{!1193, !1022}
!1194 = !{!1066, !1002, i64 0}
!1195 = !{!"branch_weights", i32 14159, i32 2628}
!1196 = !{!1066, !999, i64 56}
!1197 = !{!"branch_weights", i32 9992, i32 6795}
!1198 = !{!"branch_weights", i32 6795, i32 3020}
!1199 = distinct !{!1199, !1022}
!1200 = !{!"branch_weights", i32 2628, i32 7365}
!1201 = !{!"function_entry_count", i64 14158}
!1202 = !{!"tree-ssa-loop-ivopts.c:tree_ssa_iv_optimize_loop"}
!1203 = !{!1026, !999, i64 0}
!1204 = !{!1026, !1000, i64 69}
!1205 = !{!1206, !1002, i64 80}
!1206 = !{!"basic_block_def", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !1000, i64 32, !999, i64 48, !999, i64 56, !1000, i64 64, !1003, i64 72, !1002, i64 80, !1002, i64 84, !1002, i64 88, !1002, i64 92, !1002, i64 96}
!1207 = !{!998, !999, i64 8}
!1208 = !{!1066, !1002, i64 36}
!1209 = !{!"branch_weights", i32 8251, i32 5909}
!1210 = !{!1211, !1002, i64 8}
!1211 = !{!"param_info", !999, i64 0, !1002, i64 8, !1000, i64 12, !1002, i64 16, !1002, i64 20, !999, i64 24}
!1212 = !{!"branch_weights", i32 1, i32 5909}
!1213 = !{!"function_entry_count", i64 16785}
!1214 = !{!"tree-ssa-loop-ivopts.c:fel_next"}
!1215 = !{!"branch_weights", i32 2628, i32 14159}
!1216 = !{!"branch_weights", i32 1, i32 14159}
!1217 = distinct !{!1217, !1022}
!1218 = !{!"tree-ssa-loop-ivopts.c:tree_ssa_iv_optimize_finalize"}
!1219 = !{!"function_entry_count", i64 19412}
!1220 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_base_length"}
!1221 = !{!"branch_weights", i32 1, i32 19413}
!1222 = !{!1223, !1002, i64 0}
!1223 = !{!"VEC_tree_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1224 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_heap_alloc"}
!1225 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_heap_alloc"}
!1226 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_heap_alloc"}
!1227 = !{!"tree-ssa-loop-ivopts.c:VEC_int_heap_alloc"}
!1228 = !{!"tree-ssa-loop-ivopts.c:number_of_loops"}
!1229 = !{!1190, !999, i64 8}
!1230 = !{!"tree-ssa-loop-ivopts.c:VEC_int_base_quick_push"}
!1231 = !{!1232, !1002, i64 0}
!1232 = !{!"VEC_int_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1233 = !{!"function_entry_count", i64 17355}
!1234 = !{!"tree-ssa-loop-ivopts.c:loop_outer"}
!1235 = !{!"branch_weights", i32 2628, i32 14729}
!1236 = !{!"function_entry_count", i64 28886}
!1237 = !{!"tree-ssa-loop-ivopts.c:VEC_loop_p_base_index"}
!1238 = !{!"tree-ssa-loop-ivopts.c:find_induction_variables"}
!1239 = !{!"branch_weights", i32 5909, i32 1}
!1240 = !{!1241, !999, i64 8}
!1241 = !{!"version_info", !999, i64 0, !999, i64 8, !1000, i64 16, !1002, i64 20, !1000, i64 24}
!1242 = distinct !{!1242, !1022}
!1243 = !{!"function_entry_count", i64 5908}
!1244 = !{!"tree-ssa-loop-ivopts.c:find_interesting_uses"}
!1245 = !{!"branch_weights", i32 1, i32 5908}
!1246 = !{i64 0, i64 4, !1043, i64 8, i64 8, !1011}
!1247 = !{i64 0, i64 8, !1011}
!1248 = !{!"branch_weights", i32 1, i32 99532}
!1249 = !{!1171, !999, i64 8}
!1250 = !{!1251, !999, i64 8}
!1251 = !{!"control_flow_graph", !999, i64 0, !999, i64 8, !999, i64 16, !1002, i64 24, !1002, i64 28, !1002, i64 32, !999, i64 40, !1002, i64 48, !1000, i64 52, !1000, i64 60, !1002, i64 68, !1002, i64 72}
!1252 = !{!"branch_weights", i32 1, i32 160428}
!1253 = !{!"branch_weights", i32 11968, i32 148461}
!1254 = !{!"branch_weights", i32 99532, i32 60896}
!1255 = distinct !{!1255, !1022}
!1256 = !{!"branch_weights", i32 62021, i32 37512}
!1257 = !{!"branch_weights", i32 0, i32 62021}
!1258 = distinct !{!1258, !1022}
!1259 = !{i64 0, i64 8, !1011, i64 8, i64 8, !1011, i64 16, i64 8, !1011}
!1260 = !{!"branch_weights", i32 99532, i32 1}
!1261 = !{!"branch_weights", i32 271273, i32 1}
!1262 = !{!"branch_weights", i32 171741, i32 99532}
!1263 = distinct !{!1263, !1022}
!1264 = !{!"branch_weights", i32 93625, i32 5908}
!1265 = distinct !{!1265, !1022}
!1266 = !{!1241, !1002, i64 20}
!1267 = !{!1241, !999, i64 0}
!1268 = !{!1241, !1000, i64 16}
!1269 = distinct !{!1269, !1022}
!1270 = !{!"tree-ssa-loop-ivopts.c:find_iv_candidates"}
!1271 = !{!"tree-ssa-loop-ivopts.c:determine_iv_costs"}
!1272 = !{!"branch_weights", i32 47628, i32 1}
!1273 = !{!1035, !1002, i64 48}
!1274 = !{!"branch_weights", i32 41720, i32 5908}
!1275 = distinct !{!1275, !1022}
!1276 = !{!"tree-ssa-loop-ivopts.c:determine_use_iv_costs"}
!1277 = !{!1026, !1000, i64 68}
!1278 = !{!"branch_weights", i32 170, i32 18671}
!1279 = !{!"branch_weights", i32 1, i32 18670}
!1280 = !{!"branch_weights", i32 164148, i32 18670}
!1281 = distinct !{!1281, !1022}
!1282 = !{!"branch_weights", i32 1, i32 169}
!1283 = !{!"branch_weights", i32 168, i32 1556}
!1284 = !{!"branch_weights", i32 169, i32 1554}
!1285 = distinct !{!1285, !1022}
!1286 = !{!"branch_weights", i32 12932, i32 5908}
!1287 = distinct !{!1287, !1022}
!1288 = !{!1015, !1002, i64 40}
!1289 = !{!1015, !999, i64 48}
!1290 = !{!1291, !999, i64 0}
!1291 = !{!"cost_pair", !999, i64 0, !1292, i64 8, !999, i64 16, !999, i64 24}
!1292 = !{!"", !1002, i64 0, !1002, i64 4}
!1293 = !{!1291, !999, i64 16}
!1294 = distinct !{!1294, !1022}
!1295 = distinct !{!1295, !1022}
!1296 = !{!"tree-ssa-loop-ivopts.c:determine_set_costs"}
!1297 = !{!1066, !999, i64 8}
!1298 = !{!"branch_weights", i32 5908, i32 1}
!1299 = !{!"branch_weights", i32 4288, i32 10713}
!1300 = !{!"branch_weights", i32 9092, i32 5908}
!1301 = distinct !{!1301, !1022}
!1302 = !{!"branch_weights", i32 21340, i32 18354}
!1303 = !{!"branch_weights", i32 5908, i32 33785}
!1304 = distinct !{!1304, !1022}
!1305 = !{!1026, !1002, i64 16}
!1306 = !{!"branch_weights", i32 0, i32 -2147483648}
!1307 = distinct !{!1307, !1022}
!1308 = !{!"tree-ssa-loop-ivopts.c:find_optimal_iv_set"}
!1309 = !{!"branch_weights", i32 3019, i32 2890}
!1310 = !{!"branch_weights", i32 2890, i32 1}
!1311 = !{!"branch_weights", i32 2890, i32 0}
!1312 = distinct !{!1312, !1022}
!1313 = !{!1015, !999, i64 56}
!1314 = distinct !{!1314, !1022}
!1315 = !{!"tree-ssa-loop-ivopts.c:create_new_ivs"}
!1316 = !{!1317, !999, i64 24}
!1317 = !{!"iv_ca", !1002, i64 0, !1002, i64 4, !999, i64 8, !999, i64 16, !999, i64 24, !1002, i64 32, !1002, i64 36, !1292, i64 40, !1002, i64 48, !999, i64 56, !1292, i64 64}
!1318 = !{!"branch_weights", i32 5908, i32 1546}
!1319 = distinct !{!1319, !1022}
!1320 = !{!"tree-ssa-loop-ivopts.c:iv_ca_free"}
!1321 = !{!1317, !999, i64 8}
!1322 = !{!1317, !999, i64 16}
!1323 = !{!1317, !999, i64 56}
!1324 = !{!"tree-ssa-loop-ivopts.c:rewrite_uses"}
!1325 = !{!"branch_weights", i32 1, i32 22565}
!1326 = !{!"branch_weights", i32 16657, i32 5908}
!1327 = distinct !{!1327, !1022}
!1328 = !{!"tree-ssa-loop-ivopts.c:remove_unused_ivs"}
!1329 = !{!"branch_weights", i32 4411, i32 35283}
!1330 = !{!"branch_weights", i32 20699, i32 14585}
!1331 = !{!"branch_weights", i32 20699, i32 1}
!1332 = !{!1007, !1000, i64 33}
!1333 = !{!"branch_weights", i32 11565, i32 9135}
!1334 = !{!1241, !1000, i64 24}
!1335 = !{!"branch_weights", i32 8011, i32 3555}
!1336 = distinct !{!1336, !1022}
!1337 = !{!"tree-ssa-loop-ivopts.c:free_loop_data"}
!1338 = !{!"branch_weights", i32 12713, i32 4074}
!1339 = !{!"branch_weights", i32 1, i32 16785}
!1340 = !{!"branch_weights", i32 16785, i32 22908}
!1341 = distinct !{!1341, !1022}
!1342 = !{!"branch_weights", i32 1, i32 22564}
!1343 = !{!"branch_weights", i32 140202, i32 45073}
!1344 = !{!"branch_weights", i32 162710, i32 22564}
!1345 = distinct !{!1345, !1022}
!1346 = !{!"branch_weights", i32 5780, i32 16785}
!1347 = distinct !{!1347, !1022}
!1348 = !{!"branch_weights", i32 1, i32 47628}
!1349 = !{!"branch_weights", i32 47451, i32 178}
!1350 = !{!"branch_weights", i32 30843, i32 16785}
!1351 = distinct !{!1351, !1022}
!1352 = !{!"branch_weights", i32 1, i32 16786}
!1353 = !{!"branch_weights", i32 16785, i32 10677}
!1354 = distinct !{!1354, !1022}
!1355 = !{!"tree-ssa-loop-ivopts.c:find_bivs"}
!1356 = !{!"branch_weights", i32 14158, i32 1}
!1357 = !{!"branch_weights", i32 31874, i32 1}
!1358 = !{!"branch_weights", i32 24564, i32 7311}
!1359 = !{!998, !1002, i64 44}
!1360 = !{!"branch_weights", i32 7311, i32 1}
!1361 = !{!"branch_weights", i32 39075001, i32 6633372, i32 6251}
!1362 = !{!"branch_weights", i32 17716, i32 14158}
!1363 = distinct !{!1363, !1022}
!1364 = !{!"tree-ssa-loop-ivopts.c:find_givs"}
!1365 = distinct !{!1365, !1022}
!1366 = !{!"tree-ssa-loop-ivopts.c:mark_bivs"}
!1367 = !{!"branch_weights", i32 7690, i32 7311}
!1368 = !{!"branch_weights", i32 48, i32 7264}
!1369 = !{!1206, !999, i64 24}
!1370 = !{!"branch_weights", i32 7264, i32 1}
!1371 = !{!1206, !1002, i64 96}
!1372 = distinct !{!1372, !1022}
!1373 = !{!"tree-ssa-loop-ivopts.c:niter_for_single_dom_exit"}
!1374 = !{!"function_entry_count", i64 576063}
!1375 = !{!"tree-ssa-loop-ivopts.c:bmp_iter_set_init"}
!1376 = !{!1377, !999, i64 0}
!1377 = !{!"bitmap_head_def", !999, i64 0, !999, i64 8, !1002, i64 16, !999, i64 24}
!1378 = !{!1379, !999, i64 0}
!1379 = !{!"", !999, i64 0, !999, i64 8, !1002, i64 16, !1003, i64 24}
!1380 = !{!1379, !999, i64 8}
!1381 = !{!"branch_weights", i32 16786, i32 559279}
!1382 = !{!1383, !1002, i64 16}
!1383 = !{!"bitmap_element_def", !999, i64 0, !999, i64 8, !1002, i64 16, !1000, i64 24}
!1384 = !{!1379, !1002, i64 16}
!1385 = !{!1379, !1003, i64 24}
!1386 = !{!"function_entry_count", i64 1456906}
!1387 = !{!"tree-ssa-loop-ivopts.c:bmp_iter_set"}
!1388 = !{!"branch_weights", i32 584559, i32 872349}
!1389 = !{!"branch_weights", i32 923168, i32 1}
!1390 = !{!"branch_weights", i32 3052993, i32 923168}
!1391 = distinct !{!1391, !1022}
!1392 = !{!"branch_weights", i32 1, i32 567006}
!1393 = !{!"branch_weights", i32 549455, i32 50821}
!1394 = !{!"branch_weights", i32 567006, i32 33269}
!1395 = distinct !{!1395, !1022}
!1396 = !{!1383, !999, i64 0}
!1397 = !{!"branch_weights", i32 533739, i32 33269}
!1398 = !{!"function_entry_count", i64 1982901}
!1399 = !{!"tree-ssa-loop-ivopts.c:ver_info"}
!1400 = !{!"function_entry_count", i64 882860}
!1401 = !{!"tree-ssa-loop-ivopts.c:bmp_iter_next"}
!1402 = !{!"function_entry_count", i64 1012772}
!1403 = !{!"tree-ssa-loop-ivopts.c:gsi_end_p"}
!1404 = !{!1405, !999, i64 0}
!1405 = !{!"", !999, i64 0, !999, i64 8, !999, i64 16}
!1406 = !{!"function_entry_count", i64 949496}
!1407 = !{!"tree-ssa-loop-ivopts.c:gsi_stmt"}
!1408 = !{!1409, !999, i64 0}
!1409 = !{!"gimple_seq_node_d", !999, i64 0, !999, i64 8, !999, i64 16}
!1410 = !{!"function_entry_count", i64 125184}
!1411 = !{!"tree-ssa-loop-ivopts.c:get_def_from_ptr"}
!1412 = !{!"tree-ssa-loop-ivopts.c:gimple_phi_result_ptr"}
!1413 = !{!"function_entry_count", i64 31873}
!1414 = !{!"tree-ssa-loop-ivopts.c:determine_biv_step"}
!1415 = !{!"branch_weights", i32 9866, i32 22009}
!1416 = !{!"branch_weights", i32 14645, i32 7365}
!1417 = !{!1418, !999, i64 8}
!1418 = !{!"", !999, i64 0, !999, i64 8, !1000, i64 16}
!1419 = !{!"branch_weights", i32 7311, i32 55}
!1420 = !{!"function_entry_count", i64 645311}
!1421 = !{!"tree-ssa-loop-ivopts.c:get_use_from_ptr"}
!1422 = !{!1423, !999, i64 24}
!1423 = !{!"ssa_use_operand_d", !999, i64 0, !999, i64 8, !1000, i64 16, !999, i64 24}
!1424 = !{!"function_entry_count", i64 204862}
!1425 = !{!"tree-ssa-loop-ivopts.c:gimple_phi_arg_imm_use_ptr"}
!1426 = !{!"function_entry_count", i64 35282}
!1427 = !{!"tree-ssa-loop-ivopts.c:set_iv"}
!1428 = !{!"branch_weights", i32 35283, i32 1}
!1429 = !{!"function_entry_count", i64 676198}
!1430 = !{!"tree-ssa-loop-ivopts.c:gsi_next"}
!1431 = !{!1409, !999, i64 16}
!1432 = !{!"tree-ssa-loop-ivopts.c:gimple_phi_arg"}
!1433 = !{!"branch_weights", i32 1, i32 204863}
!1434 = !{!"function_entry_count", i64 1824133}
!1435 = !{!"tree-ssa-loop-ivopts.c:name_info"}
!1436 = !{!"function_entry_count", i64 91818}
!1437 = !{!"tree-ssa-loop-ivopts.c:alloc_iv"}
!1438 = !{!"branch_weights", i32 1, i32 91819}
!1439 = !{!1007, !1002, i64 36}
!1440 = !{!"function_entry_count", i64 133347}
!1441 = !{!"tree-ssa-loop-ivopts.c:determine_base_object"}
!1442 = !{!"branch_weights", i32 -1389918994, i32 688593062, i32 80848}
!1443 = !{!"branch_weights", i32 -1189803120, i32 -1393199371, i32 55724}
!1444 = !{!"branch_weights", i32 30044, i32 13, i32 14647, i32 7372, i32 1, i32 1}
!1445 = !{!"branch_weights", i32 29, i32 14619}
!1446 = !{!"branch_weights", i32 8607, i32 6013}
!1447 = !{!"function_entry_count", i64 99532}
!1448 = !{!"tree-ssa-loop-ivopts.c:find_givs_in_bb"}
!1449 = distinct !{!1449, !1022}
!1450 = !{!"function_entry_count", i64 199101}
!1451 = !{!"tree-ssa-loop-ivopts.c:gsi_start_bb"}
!1452 = !{!1405, !999, i64 8}
!1453 = !{!1405, !999, i64 16}
!1454 = !{!"function_entry_count", i64 271272}
!1455 = !{!"tree-ssa-loop-ivopts.c:find_givs_in_stmt"}
!1456 = !{!"branch_weights", i32 257244, i32 14030}
!1457 = !{!1418, !999, i64 0}
!1458 = !{!"function_entry_count", i64 201216}
!1459 = !{!"tree-ssa-loop-ivopts.c:bb_seq"}
!1460 = !{!"branch_weights", i32 201217, i32 1}
!1461 = !{!"branch_weights", i32 1, i32 201217}
!1462 = !{!1463, !999, i64 0}
!1463 = !{!"gimple_bb_info", !999, i64 0, !999, i64 8}
!1464 = !{!"tree-ssa-loop-ivopts.c:gimple_seq_first"}
!1465 = !{!"branch_weights", i32 1, i32 199102}
!1466 = !{!1467, !999, i64 0}
!1467 = !{!"gimple_seq_d", !999, i64 0, !999, i64 8, !999, i64 16}
!1468 = !{!"tree-ssa-loop-ivopts.c:find_givs_in_stmt_scev"}
!1469 = !{!"branch_weights", i32 191631, i32 79643}
!1470 = !{!"branch_weights", i32 176292, i32 15340}
!1471 = !{!"branch_weights", i32 162263, i32 14030}
!1472 = !{!"branch_weights", i32 14030, i32 1}
!1473 = !{!"function_entry_count", i64 212986}
!1474 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_lhs"}
!1475 = !{!"function_entry_count", i64 176291}
!1476 = !{!"tree-ssa-loop-ivopts.c:loop_containing_stmt"}
!1477 = !{!"branch_weights", i32 1, i32 176292}
!1478 = !{!"function_entry_count", i64 823361}
!1479 = !{!"tree-ssa-loop-ivopts.c:get_iv"}
!1480 = !{!"branch_weights", i32 61059638, i32 -2126935583, i32 6969, i32 93945790, i32 54744677, i32 -933641141}
!1481 = !{!"branch_weights", i32 646803, i32 167801}
!1482 = !{!"branch_weights", i32 2727, i32 644077}
!1483 = !{!"branch_weights", i32 11218, i32 632860}
!1484 = !{!"function_entry_count", i64 36658}
!1485 = !{!"tree-ssa-loop-ivopts.c:niter_for_exit"}
!1486 = !{!"branch_weights", i32 4074, i32 32586}
!1487 = !{!"branch_weights", i32 593119, i32 2146890529}
!1488 = !{!"branch_weights", i32 103, i32 3981}
!1489 = !{!1490, !999, i64 8}
!1490 = !{!"tree_niter_desc", !999, i64 0, !999, i64 8, !999, i64 16, !1068, i64 24, !1418, i64 40, !999, i64 64, !1002, i64 72}
!1491 = !{!"branch_weights", i32 530, i32 3452}
!1492 = !{!1490, !999, i64 16}
!1493 = !{!"branch_weights", i32 3452, i32 1}
!1494 = !{!"tree-ssa-loop-ivopts.c:ei_start_1"}
!1495 = !{!"function_entry_count", i64 259959}
!1496 = !{!"tree-ssa-loop-ivopts.c:ei_cond"}
!1497 = !{!"branch_weights", i32 160428, i32 99533}
!1498 = !{!"function_entry_count", i64 11967}
!1499 = !{!"tree-ssa-loop-ivopts.c:find_interesting_uses_outside"}
!1500 = !{!"branch_weights", i32 9764, i32 2204}
!1501 = !{!"branch_weights", i32 5858, i32 3907}
!1502 = !{!"branch_weights", i32 0, i32 9764}
!1503 = distinct !{!1503, !1022}
!1504 = !{!"function_entry_count", i64 160427}
!1505 = !{!"tree-ssa-loop-ivopts.c:ei_next"}
!1506 = !{!"branch_weights", i32 160428, i32 1}
!1507 = !{!1508, !1002, i64 0}
!1508 = !{!"", !1002, i64 0, !999, i64 8}
!1509 = !{!"function_entry_count", i64 333292}
!1510 = !{!"tree-ssa-loop-ivopts.c:find_interesting_uses_stmt"}
!1511 = !{!"branch_weights", i32 58225, i32 275069}
!1512 = !{!"branch_weights", i32 83439, i32 191631}
!1513 = !{!"branch_weights", i32 13389, i32 642}
!1514 = !{i32 0, i32 65536}
!1515 = !{!"branch_weights", i32 100685, i32 77559}
!1516 = !{!"branch_weights", i32 73850, i32 26836}
!1517 = !{!"branch_weights", i32 9475, i32 17362}
!1518 = !{!"branch_weights", i32 14253, i32 76959}
!1519 = !{!"branch_weights", i32 2670, i32 84364}
!1520 = !{!"branch_weights", i32 62021, i32 105782}
!1521 = !{!"branch_weights", i32 15000, i32 47022}
!1522 = !{!"branch_weights", i32 54711, i32 105782}
!1523 = !{!"branch_weights", i32 160491, i32 1}
!1524 = !{!"branch_weights", i32 190093, i32 10262}
!1525 = !{!"branch_weights", i32 176426, i32 13668}
!1526 = !{!"branch_weights", i32 39863, i32 160491}
!1527 = distinct !{!1527, !1022}
!1528 = !{!"tree-ssa-loop-ivopts.c:is_gimple_debug"}
!1529 = !{!"tree-ssa-loop-ivopts.c:ei_end_p"}
!1530 = !{!"branch_weights", i32 1, i32 259960}
!1531 = !{!"tree-ssa-loop-ivopts.c:ei_edge"}
!1532 = !{!"function_entry_count", i64 420386}
!1533 = !{!"tree-ssa-loop-ivopts.c:VEC_edge_base_length"}
!1534 = !{!"branch_weights", i32 1, i32 420387}
!1535 = !{!1536, !1002, i64 0}
!1536 = !{!"VEC_edge_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1537 = !{!"function_entry_count", i64 1161626}
!1538 = !{!"tree-ssa-loop-ivopts.c:ei_container"}
!1539 = !{!"branch_weights", i32 1, i32 1161627}
!1540 = !{!"function_entry_count", i64 237250}
!1541 = !{!"tree-ssa-loop-ivopts.c:VEC_edge_base_index"}
!1542 = !{!"function_entry_count", i64 299981}
!1543 = !{!"tree-ssa-loop-ivopts.c:find_interesting_uses_op"}
!1544 = !{!"branch_weights", i32 187023, i32 112960}
!1545 = !{!"branch_weights", i32 153472, i32 33552}
!1546 = !{!"branch_weights", i32 30239, i32 3314}
!1547 = !{!"branch_weights", i32 3314, i32 1}
!1548 = !{!"branch_weights", i32 9135, i32 21105}
!1549 = !{i64 0, i64 8, !1011, i64 8, i64 8, !1011, i64 16, i64 8, !1011, i64 24, i64 8, !1011, i64 32, i64 1, !1009, i64 33, i64 1, !1009, i64 36, i64 4, !1043}
!1550 = !{!"branch_weights", i32 1822, i32 7314}
!1551 = !{!"branch_weights", i32 1, i32 7314}
!1552 = !{!"function_entry_count", i64 434416}
!1553 = !{!"tree-ssa-loop-ivopts.c:record_invariant"}
!1554 = !{!"branch_weights", i32 419655, i32 14763}
!1555 = !{!"branch_weights", i32 1, i32 419655}
!1556 = !{!"branch_weights", i32 17124, i32 402532}
!1557 = !{!"branch_weights", i32 33586, i32 368947}
!1558 = !{!"branch_weights", i32 18354, i32 32356}
!1559 = !{!"function_entry_count", i64 287719}
!1560 = !{!"tree-ssa-loop-ivopts.c:is_gimple_assign"}
!1561 = !{!"function_entry_count", i64 22564}
!1562 = !{!"tree-ssa-loop-ivopts.c:record_use"}
!1563 = !{!"branch_weights", i32 22565, i32 1}
!1564 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_heap_safe_push"}
!1565 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_heap_reserve"}
!1566 = !{!"branch_weights", i32 30, i32 22536}
!1567 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_base_quick_push"}
!1568 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_base_space"}
!1569 = !{!1032, !1002, i64 4}
!1570 = !{!"tree-ssa-loop-ivopts.c:find_invariants_stmt"}
!1571 = !{!"branch_weights", i32 62021, i32 271273}
!1572 = !{!"branch_weights", i32 333292, i32 1}
!1573 = !{!"branch_weights", i32 80021, i32 333292}
!1574 = distinct !{!1574, !1022}
!1575 = !{!"function_entry_count", i64 60893}
!1576 = !{!"tree-ssa-loop-ivopts.c:find_interesting_uses_cond"}
!1577 = !{!"branch_weights", i32 56373, i32 4522}
!1578 = !{!"function_entry_count", i64 191630}
!1579 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_lhs_ptr"}
!1580 = !{!"function_entry_count", i64 195463}
!1581 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_rhs1_ptr"}
!1582 = !{!"function_entry_count", i64 183580}
!1583 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_rhs_code"}
!1584 = !{!"branch_weights", i32 100685, i32 82897}
!1585 = !{!"function_entry_count", i64 361822}
!1586 = !{!"tree-ssa-loop-ivopts.c:get_gimple_rhs_class"}
!1587 = !{!"function_entry_count", i64 88101}
!1588 = !{!"tree-ssa-loop-ivopts.c:find_interesting_uses_address"}
!1589 = !{!"branch_weights", i32 88102, i32 1}
!1590 = !{!"branch_weights", i32 1176, i32 86927}
!1591 = !{!"branch_weights", i32 9787, i32 77141}
!1592 = !{!"branch_weights", i32 334, i32 9454}
!1593 = !{!"branch_weights", i32 9140, i32 315}
!1594 = !{!"branch_weights", i32 9027, i32 114}
!1595 = !{!"branch_weights", i32 1, i32 761}
!1596 = !{!"branch_weights", i32 761, i32 1}
!1597 = !{!1598, !999, i64 0}
!1598 = !{!"ifs_ivopts_data", !999, i64 0, !999, i64 8, !999, i64 16}
!1599 = !{!1598, !999, i64 8}
!1600 = !{!1598, !999, i64 16}
!1601 = !{!"branch_weights", i32 58219, i32 18923}
!1602 = !{!"branch_weights", i32 8989, i32 9935}
!1603 = !{!"branch_weights", i32 1, i32 8989}
!1604 = !{!"branch_weights", i32 8910, i32 80}
!1605 = !{!"branch_weights", i32 6338, i32 2573}
!1606 = !{!"branch_weights", i32 6338, i32 15328}
!1607 = distinct !{!1607, !1022}
!1608 = !{!"branch_weights", i32 4144, i32 2195}
!1609 = !{!"branch_weights", i32 4085, i32 60}
!1610 = !{!"function_entry_count", i64 116730}
!1611 = !{!"tree-ssa-loop-ivopts.c:op_iter_init_phiuse"}
!1612 = !{!1613, !1000, i64 0}
!1613 = !{!"ssa_operand_iterator_d", !1000, i64 0, !1002, i64 4, !999, i64 8, !999, i64 16, !1002, i64 24, !1002, i64 28, !999, i64 32}
!1614 = !{!"branch_weights", i32 42707, i32 74025}
!1615 = !{!1613, !999, i64 32}
!1616 = !{!1613, !1002, i64 28}
!1617 = !{!1613, !1002, i64 4}
!1618 = !{!"function_entry_count", i64 377053}
!1619 = !{!"tree-ssa-loop-ivopts.c:op_iter_init_use"}
!1620 = !{!"function_entry_count", i64 1107448}
!1621 = !{!"tree-ssa-loop-ivopts.c:op_iter_done"}
!1622 = !{!"function_entry_count", i64 1064742}
!1623 = !{!"tree-ssa-loop-ivopts.c:op_iter_next_use"}
!1624 = !{!1613, !999, i64 16}
!1625 = !{!"branch_weights", i32 624294, i32 440450}
!1626 = !{!1627, !999, i64 0}
!1627 = !{!"use_optype_d", !999, i64 0, !1423, i64 8}
!1628 = !{!1613, !1002, i64 24}
!1629 = !{!"branch_weights", i32 173217, i32 451078}
!1630 = !{!"function_entry_count", i64 105290}
!1631 = !{!"tree-ssa-loop-ivopts.c:extract_cond_operands"}
!1632 = !{!"branch_weights", i32 101458, i32 3834}
!1633 = !{!"branch_weights", i32 105252, i32 40}
!1634 = !{!"branch_weights", i32 28360, i32 76932}
!1635 = !{!"branch_weights", i32 -1723700406, i32 -1415477930}
!1636 = !{!"branch_weights", i32 37427, i32 12244}
!1637 = !{!"branch_weights", i32 48919, i32 752}
!1638 = !{!"branch_weights", i32 1, i32 105291}
!1639 = !{!"branch_weights", i32 44398, i32 60894}
!1640 = !{!"branch_weights", i32 3426, i32 101866}
!1641 = !{!"branch_weights", i32 64319, i32 40973}
!1642 = !{!"function_entry_count", i64 101457}
!1643 = !{!"tree-ssa-loop-ivopts.c:gimple_cond_lhs_ptr"}
!1644 = !{!"tree-ssa-loop-ivopts.c:gimple_cond_rhs_ptr"}
!1645 = !{!"function_entry_count", i64 3833}
!1646 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_rhs2_ptr"}
!1647 = !{!"function_entry_count", i64 593840}
!1648 = !{!"tree-ssa-loop-ivopts.c:gimple_op_ptr"}
!1649 = !{!"branch_weights", i32 1, i32 593841}
!1650 = !{!"tree-ssa-loop-ivopts.c:gimple_expr_code"}
!1651 = !{!"branch_weights", i32 1, i32 734324, i32 2, i32 1}
!1652 = !{!"function_entry_count", i64 106020}
!1653 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_rhs1"}
!1654 = !{!"tree-ssa-loop-ivopts.c:gimple_has_volatile_ops"}
!1655 = !{!"branch_weights", i32 1, i32 88102}
!1656 = !{!"function_entry_count", i64 90094}
!1657 = !{!"tree-ssa-loop-ivopts.c:idx_find_step"}
!1658 = !{!"branch_weights", i32 -1928498689, i32 39207, i32 39205, i32 39205, i32 1165846194, i32 39205}
!1659 = !{!"branch_weights", i32 1, i32 29736}
!1660 = !{!"branch_weights", i32 78428, i32 11668}
!1661 = !{!"branch_weights", i32 58219, i32 20210}
!1662 = !{!"branch_weights", i32 9818, i32 10393}
!1663 = !{!"branch_weights", i32 22240217, i32 12538681}
!1664 = !{!"branch_weights", i32 6278, i32 1}
!1665 = !{!"branch_weights", i32 1, i32 9818}
!1666 = !{!"function_entry_count", i64 24294}
!1667 = !{!"tree-ssa-loop-ivopts.c:may_be_nonaddressable_p"}
!1668 = !{!"branch_weights", i32 8911, i32 1, i32 9760, i32 1, i32 5627, i32 1, i32 1}
!1669 = !{!"branch_weights", i32 9681, i32 80}
!1670 = !{!"function_entry_count", i64 24085}
!1671 = !{!"tree-ssa-loop-ivopts.c:handled_component_p"}
!1672 = !{!"branch_weights", i32 8748, i32 1, i32 9683, i32 5657, i32 1, i32 1, i32 1, i32 1}
!1673 = !{!"function_entry_count", i64 97441}
!1674 = !{!"tree-ssa-loop-ivopts.c:idx_record_use"}
!1675 = !{!"branch_weights", i32 899936141, i32 -1653776096}
!1676 = !{!"function_entry_count", i64 457825}
!1677 = !{!"tree-ssa-loop-ivopts.c:gimple_has_mem_ops"}
!1678 = !{!"tree-ssa-loop-ivopts.c:gimple_phi_result"}
!1679 = !{!"tree-ssa-loop-ivopts.c:clear_and_done_ssa_iter"}
!1680 = !{!"function_entry_count", i64 74024}
!1681 = !{!"tree-ssa-loop-ivopts.c:gimple_phi_num_args"}
!1682 = !{!"tree-ssa-loop-ivopts.c:op_iter_init"}
!1683 = !{!1613, !999, i64 8}
!1684 = !{!"branch_weights", i32 7330, i32 369725}
!1685 = !{!"branch_weights", i32 234139, i32 135587}
!1686 = !{!"tree-ssa-loop-ivopts.c:gimple_use_ops"}
!1687 = !{!"branch_weights", i32 1, i32 377054}
!1688 = !{!"function_entry_count", i64 369724}
!1689 = !{!"tree-ssa-loop-ivopts.c:gimple_vuse"}
!1690 = !{!"branch_weights", i32 59959, i32 309767}
!1691 = !{!"tree-ssa-loop-ivopts.c:add_standard_iv_candidates"}
!1692 = !{!"tree-ssa-loop-ivopts.c:add_old_ivs_candidates"}
!1693 = !{!"branch_weights", i32 20757, i32 14527}
!1694 = !{!"branch_weights", i32 14527, i32 1}
!1695 = distinct !{!1695, !1022}
!1696 = !{!"tree-ssa-loop-ivopts.c:add_derived_ivs_candidates"}
!1697 = !{!"branch_weights", i32 1, i32 18840}
!1698 = !{!"branch_weights", i32 18842, i32 1}
!1699 = distinct !{!1699, !1022}
!1700 = !{!"tree-ssa-loop-ivopts.c:set_autoinc_for_original_candidates"}
!1701 = !{!"branch_weights", i32 7264, i32 40365}
!1702 = !{!"branch_weights", i32 1, i32 7263}
!1703 = !{!1035, !999, i64 16}
!1704 = !{!"branch_weights", i32 10559, i32 13369}
!1705 = !{!"branch_weights", i32 5188, i32 5372}
!1706 = !{!"branch_weights", i32 3280, i32 2093}
!1707 = !{!"branch_weights", i32 1630, i32 464}
!1708 = !{!"branch_weights", i32 7263, i32 16664}
!1709 = distinct !{!1709, !1022}
!1710 = !{!"branch_weights", i32 1177804890, i32 969678758}
!1711 = !{!"branch_weights", i32 3280, i32 1}
!1712 = distinct !{!1712, !1022}
!1713 = !{!"tree-ssa-loop-ivopts.c:record_important_candidates"}
!1714 = !{!"branch_weights", i32 13371, i32 34258}
!1715 = distinct !{!1715, !1022}
!1716 = !{!"branch_weights", i32 2144212815, i32 3270833}
!1717 = !{!"branch_weights", i32 1, i32 143}
!1718 = !{!"branch_weights", i32 1, i32 5900}
!1719 = !{!"branch_weights", i32 12771, i32 5900}
!1720 = distinct !{!1720, !1022}
!1721 = !{!"branch_weights", i32 2577, i32 143}
!1722 = distinct !{!1722, !1022}
!1723 = !{!"tree-ssa-loop-ivopts.c:add_standard_iv_candidates_for_size"}
!1724 = !{!1725, !999, i64 456}
!1725 = !{!"lang_hooks", !999, i64 0, !1003, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152, !999, i64 160, !999, i64 168, !999, i64 176, !999, i64 184, !999, i64 192, !999, i64 200, !999, i64 208, !999, i64 216, !999, i64 224, !999, i64 232, !1726, i64 240, !1727, i64 248, !1728, i64 256, !1729, i64 272, !1730, i64 432, !1731, i64 560, !999, i64 584, !999, i64 592, !999, i64 600, !999, i64 608, !999, i64 616, !999, i64 624, !999, i64 632, !999, i64 640, !999, i64 648, !999, i64 656, !999, i64 664, !1000, i64 672}
!1726 = !{!"lang_hooks_for_tree_inlining", !999, i64 0}
!1727 = !{!"lang_hooks_for_callgraph", !999, i64 0}
!1728 = !{!"lang_hooks_for_tree_dump", !999, i64 0, !999, i64 8}
!1729 = !{!"lang_hooks_for_decls", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152}
!1730 = !{!"lang_hooks_for_types", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !1000, i64 120}
!1731 = !{!"lang_hooks_for_lto", !999, i64 0, !999, i64 8, !999, i64 16}
!1732 = !{!"function_entry_count", i64 86634}
!1733 = !{!"tree-ssa-loop-ivopts.c:add_candidate"}
!1734 = !{!"branch_weights", i32 10664, i32 75972}
!1735 = !{!"branch_weights", i32 1, i32 86635}
!1736 = !{!"branch_weights", i32 65688, i32 20948}
!1737 = !{!"branch_weights", i32 34961, i32 51675}
!1738 = !{!"branch_weights", i32 25223, i32 26453}
!1739 = !{!"function_entry_count", i64 104181}
!1740 = !{!"tree-ssa-loop-ivopts.c:add_candidate_1"}
!1741 = !{!"branch_weights", i32 1, i32 104182}
!1742 = !{!"branch_weights", i32 46495, i32 57688}
!1743 = !{!"branch_weights", i32 1, i32 47627}
!1744 = !{!"branch_weights", i32 297072, i32 121399}
!1745 = !{!"branch_weights", i32 295439, i32 1634}
!1746 = !{!"branch_weights", i32 18464, i32 -1567335961}
!1747 = !{!"branch_weights", i32 1, i32 295439}
!1748 = !{!"branch_weights", i32 211865, i32 83575}
!1749 = !{!"branch_weights", i32 27021, i32 56555}
!1750 = !{!"branch_weights", i32 370843, i32 47627}
!1751 = distinct !{!1751, !1022}
!1752 = !{!"branch_weights", i32 47628, i32 56555}
!1753 = !{!"branch_weights", i32 476098208, i32 -1649651361}
!1754 = !{!1035, !999, i64 24}
!1755 = !{!1035, !999, i64 32}
!1756 = !{!"branch_weights", i32 47390, i32 239}
!1757 = !{!"branch_weights", i32 95257, i32 -2026540912}
!1758 = !{!"branch_weights", i32 36202, i32 67981}
!1759 = !{!"branch_weights", i32 556, i32 67426}
!1760 = !{!"branch_weights", i32 556, i32 1}
!1761 = !{!"branch_weights", i32 47067, i32 57116}
!1762 = !{!"branch_weights", i32 57116, i32 1}
!1763 = !{!"tree-ssa-loop-ivopts.c:allow_ip_end_pos_p"}
!1764 = !{!"function_entry_count", i64 25222}
!1765 = !{!"tree-ssa-loop-ivopts.c:add_autoinc_candidates"}
!1766 = !{!"branch_weights", i32 22887, i32 2337}
!1767 = !{!1066, !999, i64 16}
!1768 = !{!"branch_weights", i32 9760, i32 13128}
!1769 = !{!"branch_weights", i32 13128, i32 1}
!1770 = !{!"branch_weights", i32 10, i32 13119}
!1771 = !{!"branch_weights", i32 51, i32 13069}
!1772 = !{!"tree-ssa-loop-ivopts.c:generic_type_for"}
!1773 = !{!"branch_weights", i32 -965034464, i32 921161587, i32 40804}
!1774 = !{!"branch_weights", i32 35114, i32 46495}
!1775 = !{!"function_entry_count", i64 1113622}
!1776 = !{!"tree-ssa-loop-ivopts.c:n_iv_cands"}
!1777 = !{!"function_entry_count", i64 1159127}
!1778 = !{!"tree-ssa-loop-ivopts.c:iv_cand"}
!1779 = !{!"function_entry_count", i64 47627}
!1780 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_heap_safe_push"}
!1781 = !{!"function_entry_count", i64 254072}
!1782 = !{!"tree-ssa-loop-ivopts.c:find_depends"}
!1783 = !{!"branch_weights", i32 96443, i32 157631}
!1784 = !{!"branch_weights", i32 31766, i32 64678}
!1785 = !{!"branch_weights", i32 56111, i32 8568}
!1786 = !{!"branch_weights", i32 52309, i32 3803}
!1787 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_base_length"}
!1788 = !{!"branch_weights", i32 1, i32 1113623}
!1789 = !{!1790, !1002, i64 0}
!1790 = !{!"VEC_iv_cand_p_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!1791 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_base_index"}
!1792 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_heap_reserve"}
!1793 = !{!"branch_weights", i32 45, i32 47584}
!1794 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_base_quick_push"}
!1795 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_base_space"}
!1796 = !{!1790, !1002, i64 4}
!1797 = !{!"function_entry_count", i64 14526}
!1798 = !{!"tree-ssa-loop-ivopts.c:add_old_iv_candidates"}
!1799 = !{!"branch_weights", i32 154629225, i32 26028548, i32 12435}
!1800 = !{!"branch_weights", i32 7264, i32 7264}
!1801 = !{!"function_entry_count", i64 18839}
!1802 = !{!"tree-ssa-loop-ivopts.c:add_iv_value_candidates"}
!1803 = !{!"branch_weights", i32 85803169, i32 88730592, i32 9263}
!1804 = !{!"branch_weights", i32 7705, i32 11136}
!1805 = !{!"branch_weights", i32 4844, i32 2862}
!1806 = !{!"function_entry_count", i64 302839}
!1807 = !{!"tree-ssa-loop-ivopts.c:strip_offset"}
!1808 = !{!"function_entry_count", i64 1011152}
!1809 = !{!"tree-ssa-loop-ivopts.c:strip_offset_1"}
!1810 = !{!"branch_weights", i32 243013, i32 252433, i32 32644, i32 79416, i32 413, i32 19518, i32 80136, i32 1, i32 145384, i32 96945, i32 61260}
!1811 = !{!"branch_weights", i32 1, i32 252433}
!1812 = !{!"branch_weights", i32 117519, i32 134915}
!1813 = !{!"branch_weights", i32 413, i32 112059}
!1814 = !{!"branch_weights", i32 110875, i32 1597}
!1815 = !{!"branch_weights", i32 5514, i32 105362}
!1816 = !{!"branch_weights", i32 16713, i32 90246}
!1817 = !{!"branch_weights", i32 16677, i32 37}
!1818 = !{!"branch_weights", i32 37, i32 1}
!1819 = !{!"branch_weights", i32 1, i32 19518}
!1820 = !{!"branch_weights", i32 5704, i32 13815}
!1821 = !{!"branch_weights", i32 13815, i32 1}
!1822 = !{!"branch_weights", i32 1, i32 80136}
!1823 = !{!"branch_weights", i32 1171, i32 78966}
!1824 = !{!"branch_weights", i32 33535, i32 45432}
!1825 = !{!"branch_weights", i32 1, i32 145384}
!1826 = !{!"branch_weights", i32 54019, i32 91366}
!1827 = !{!"branch_weights", i32 1, i32 91366}
!1828 = !{!"branch_weights", i32 7459, i32 89487}
!1829 = !{!"branch_weights", i32 142559, i32 7424}
!1830 = !{!"branch_weights", i32 108224, i32 34336}
!1831 = !{!"branch_weights", i32 7030, i32 27307}
!1832 = !{!"branch_weights", i32 2040687863, i32 106795785}
!1833 = !{!"function_entry_count", i64 83448}
!1834 = !{!"tree-ssa-loop-ivopts.c:gimple_uid"}
!1835 = !{!"function_entry_count", i64 3279}
!1836 = !{!"tree-ssa-loop-ivopts.c:autoinc_possible_for_pair"}
!1837 = !{!"branch_weights", i32 1236, i32 2045}
!1838 = !{!"branch_weights", i32 1105, i32 132}
!1839 = !{!"function_entry_count", i64 184144}
!1840 = !{!"tree-ssa-loop-ivopts.c:get_computation_cost"}
!1841 = !{!"function_entry_count", i64 447333}
!1842 = !{!"tree-ssa-loop-ivopts.c:infinite_cost_p"}
!1843 = !{!"tree-ssa-loop-ivopts.c:get_computation_cost_at"}
!1844 = !{!"branch_weights", i32 1, i32 184145}
!1845 = !{!"branch_weights", i32 66, i32 184080}
!1846 = !{!"branch_weights", i32 77320, i32 106761}
!1847 = !{!"branch_weights", i32 1, i32 106761}
!1848 = !{!"branch_weights", i32 52712, i32 54050}
!1849 = !{!"branch_weights", i32 20702, i32 33349}
!1850 = !{!"branch_weights", i32 338, i32 163042}
!1851 = !{!"branch_weights", i32 735, i32 162308}
!1852 = !{!"branch_weights", i32 21042, i32 142001}
!1853 = !{!"branch_weights", i32 1, i32 142001}
!1854 = !{!"branch_weights", i32 66896, i32 75106}
!1855 = !{!"branch_weights", i32 54830, i32 12067}
!1856 = !{!"branch_weights", i32 2132, i32 9936}
!1857 = !{!"branch_weights", i32 98049604, i32 346605, i32 9902}
!1858 = !{!"branch_weights", i32 1, i32 9902}
!1859 = !{!"branch_weights", i32 1992, i32 7911}
!1860 = !{!"branch_weights", i32 1, i32 4157}
!1861 = !{!"branch_weights", i32 121230, i32 20772}
!1862 = !{!"branch_weights", i32 57697, i32 84305}
!1863 = !{!"branch_weights", i32 216, i32 84090}
!1864 = !{!"branch_weights", i32 -1604613560, i32 1469042048}
!1865 = !{!"branch_weights", i32 18043, i32 2337}
!1866 = !{!"branch_weights", i32 1, i32 2337}
!1867 = !{!"branch_weights", i32 1397308573, i32 -660550580}
!1868 = !{!"branch_weights", i32 1, i32 10364}
!1869 = !{!"branch_weights", i32 1, i32 37319}
!1870 = !{!"branch_weights", i32 34703, i32 2617}
!1871 = !{!"branch_weights", i32 1, i32 2617}
!1872 = !{!"branch_weights", i32 37656, i32 1}
!1873 = !{!"branch_weights", i32 72, i32 37585}
!1874 = !{!"branch_weights", i32 37585, i32 1}
!1875 = !{i64 0, i64 34359738368}
!1876 = !{!"function_entry_count", i64 216835}
!1877 = !{!"tree-ssa-loop-ivopts.c:constant_multiple_of"}
!1878 = !{!"branch_weights", i32 126396, i32 90441}
!1879 = !{i64 0, i64 8, !1090, i64 8, i64 8, !1090}
!1880 = !{i64 0, i64 8, !1090}
!1881 = !{!"branch_weights", i32 305, i32 10, i32 1, i32 1, i32 126083}
!1882 = !{!"branch_weights", i32 10, i32 1}
!1883 = !{!"branch_weights", i32 125851, i32 233}
!1884 = !{!"branch_weights", i32 125851, i32 1}
!1885 = !{!"function_entry_count", i64 142000}
!1886 = !{!"tree-ssa-loop-ivopts.c:difference_cost"}
!1887 = !{!"branch_weights", i32 42675, i32 99327}
!1888 = !{!"branch_weights", i32 40813, i32 58515}
!1889 = !{!"branch_weights", i32 9346, i32 31468}
!1890 = !{!"branch_weights", i32 7040, i32 2307}
!1891 = !{!"function_entry_count", i64 110502}
!1892 = !{!"tree-ssa-loop-ivopts.c:force_var_cost"}
!1893 = !{!"branch_weights", i32 47628, i32 62876}
!1894 = !{!"function_entry_count", i64 134571}
!1895 = !{!"tree-ssa-loop-ivopts.c:add_cost"}
!1896 = !{!"branch_weights", i32 5, i32 134568}
!1897 = !{!"branch_weights", i32 5, i32 1}
!1898 = !{!"function_entry_count", i64 600171}
!1899 = !{!"tree-ssa-loop-ivopts.c:add_costs"}
!1900 = !{!"function_entry_count", i64 265094}
!1901 = !{!"tree-ssa-loop-ivopts.c:stmt_after_increment"}
!1902 = !{!"branch_weights", i32 1, i32 47494, i32 164184, i32 53419, i32 1, i32 1}
!1903 = !{!"function_entry_count", i64 84304}
!1904 = !{!"tree-ssa-loop-ivopts.c:get_address_cost"}
!1905 = !{!"branch_weights", i32 84302, i32 4}
!1906 = !{!"branch_weights", i32 7, i32 84299}
!1907 = !{!"branch_weights", i32 1, i32 103}
!1908 = !{!"branch_weights", i32 96, i32 7}
!1909 = distinct !{!1909, !1022}
!1910 = !{!"branch_weights", i32 1, i32 7}
!1911 = !{!1912, !1003, i64 8}
!1912 = !{!"", !1003, i64 0, !1003, i64 8, !1000, i64 16}
!1913 = distinct !{!1913, !1022}
!1914 = !{!1912, !1003, i64 0}
!1915 = !{!"branch_weights", i32 1, i32 6}
!1916 = distinct !{!1916, !1022}
!1917 = !{!"branch_weights", i32 49, i32 49}
!1918 = !{!"branch_weights", i32 25, i32 25}
!1919 = !{!"branch_weights", i32 21913098, i32 2125570550}
!1920 = !{!"branch_weights", i32 7, i32 90}
!1921 = distinct !{!1921, !1022}
!1922 = !{!"branch_weights", i32 1, i32 49}
!1923 = !{!"branch_weights", i32 7, i32 42}
!1924 = distinct !{!1924, !1022}
!1925 = distinct !{!1925, !1022}
!1926 = !{!"branch_weights", i32 57518, i32 26788}
!1927 = !{!"branch_weights", i32 40549, i32 43757}
!1928 = !{!"branch_weights", i32 1, i32 43757}
!1929 = !{!"branch_weights", i32 47458, i32 36848}
!1930 = !{!"branch_weights", i32 823875176, i32 1323608472}
!1931 = !{!"branch_weights", i32 -605949105, i32 43757}
!1932 = !{!"branch_weights", i32 1, i32 84305}
!1933 = !{!"function_entry_count", i64 44876}
!1934 = !{!"tree-ssa-loop-ivopts.c:get_computation_at"}
!1935 = !{!"branch_weights", i32 72, i32 44806}
!1936 = !{!"function_entry_count", i64 229264}
!1937 = !{!"tree-ssa-loop-ivopts.c:new_cost"}
!1938 = !{!"function_entry_count", i64 37590}
!1939 = !{!"tree-ssa-loop-ivopts.c:computation_cost"}
!1940 = !{!1941, !1000, i64 478}
!1941 = !{!"rtl_data", !1942, i64 0, !1943, i64 40, !1944, i64 96, !1945, i64 112, !1947, i64 208, !1948, i64 248, !1002, i64 312, !999, i64 320, !999, i64 328, !999, i64 336, !999, i64 344, !999, i64 352, !999, i64 360, !999, i64 368, !999, i64 376, !999, i64 384, !999, i64 392, !1003, i64 400, !999, i64 408, !999, i64 416, !999, i64 424, !1002, i64 432, !1002, i64 436, !1002, i64 440, !1002, i64 444, !1002, i64 448, !1002, i64 452, !999, i64 456, !1000, i64 464, !1000, i64 465, !1000, i64 466, !1000, i64 467, !1000, i64 468, !1000, i64 469, !1000, i64 470, !1000, i64 471, !1000, i64 472, !1000, i64 473, !1000, i64 474, !1000, i64 475, !1000, i64 476, !1000, i64 477, !1000, i64 478, !1000, i64 479, !1000, i64 480, !1000, i64 481, !1000, i64 482, !1000, i64 483, !1000, i64 484, !1000, i64 485}
!1942 = !{!"expr_status", !1002, i64 0, !1002, i64 4, !1002, i64 8, !999, i64 16, !999, i64 24, !999, i64 32}
!1943 = !{!"emit_status", !1002, i64 0, !1002, i64 4, !999, i64 8, !999, i64 16, !999, i64 24, !1002, i64 32, !1002, i64 36, !1002, i64 40, !1002, i64 44, !999, i64 48}
!1944 = !{!"varasm_status", !999, i64 0, !1002, i64 8}
!1945 = !{!"incoming_args", !1002, i64 0, !1002, i64 4, !1002, i64 8, !999, i64 16, !1946, i64 24, !999, i64 88}
!1946 = !{!"ix86_args", !1002, i64 0, !1002, i64 4, !1002, i64 8, !1002, i64 12, !1002, i64 16, !1002, i64 20, !1002, i64 24, !1002, i64 28, !1002, i64 32, !1002, i64 36, !1002, i64 40, !1002, i64 44, !1002, i64 48, !1002, i64 52, !1002, i64 56, !1002, i64 60}
!1947 = !{!"function_subsections", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32}
!1948 = !{!"rtl_eh", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !1000, i64 48}
!1949 = !{!"branch_weights", i32 1, i32 37591}
!1950 = !{!"function_entry_count", i64 105013}
!1951 = !{!"tree-ssa-loop-ivopts.c:shwi_to_double_int"}
!1952 = !{!"function_entry_count", i64 251700}
!1953 = !{!"tree-ssa-loop-ivopts.c:double_int_zero_p"}
!1954 = !{!"branch_weights", i32 105275, i32 146427}
!1955 = !{!"function_entry_count", i64 42674}
!1956 = !{!"tree-ssa-loop-ivopts.c:ptr_difference_cost"}
!1957 = !{!"branch_weights", i32 42675, i32 1}
!1958 = !{!"branch_weights", i32 27028, i32 15648}
!1959 = !{!"branch_weights", i32 7535, i32 19494}
!1960 = !{!"function_entry_count", i64 19493}
!1961 = !{!"tree-ssa-loop-ivopts.c:split_address_cost"}
!1962 = !{!"branch_weights", i32 10548, i32 8947}
!1963 = !{!"branch_weights", i32 10548, i32 1}
!1964 = !{!"branch_weights", i32 10420, i32 129}
!1965 = !{!"branch_weights", i32 2803, i32 7618}
!1966 = !{!"branch_weights", i32 2803, i32 1}
!1967 = !{!"function_entry_count", i64 131798}
!1968 = !{!"tree-ssa-loop-ivopts.c:force_expr_to_var_cost"}
!1969 = !{!"branch_weights", i32 131798, i32 2}
!1970 = !{!"branch_weights", i32 3, i32 1}
!1971 = !{!"branch_weights", i32 1, i32 2}
!1972 = distinct !{!1972, !1022}
!1973 = !{!"branch_weights", i32 -1019877039, i32 33316, i32 33314, i32 33316, i32 1115995426}
!1974 = !{!"branch_weights", i32 3986, i32 235328688, i32 31776392, i32 3986}
!1975 = !{!"branch_weights", i32 61009, i32 37295}
!1976 = !{!"branch_weights", i32 4857, i32 157588662, i32 23590449}
!1977 = !{!"branch_weights", i32 -2054959663, i32 -1292819395, i32 1079001, i32 1078482}
!1978 = !{!"branch_weights", i32 20859, i32 8481, i32 20180, i32 5877, i32 5050, i32 567}
!1979 = !{!"branch_weights", i32 11303, i32 28283}
!1980 = !{!"branch_weights", i32 9908, i32 29678}
!1981 = !{!"branch_weights", i32 88, i32 480}
!1982 = !{!"branch_weights", i32 1, i32 40151}
!1983 = !{!"branch_weights", i32 1, i32 8481, i32 20180, i32 5877, i32 567, i32 5050}
!1984 = !{!"branch_weights", i32 5050, i32 1}
!1985 = !{!"branch_weights", i32 1, i32 5050}
!1986 = !{!"function_entry_count", i64 127}
!1987 = !{!"tree-ssa-loop-ivopts.c:produce_memory_decl_rtl"}
!1988 = !{!"branch_weights", i32 104, i32 25}
!1989 = !{!"branch_weights", i32 104, i32 1}
!1990 = !{!1122, !999, i64 1128}
!1991 = !{!"function_entry_count", i64 164183}
!1992 = !{!"tree-ssa-loop-ivopts.c:stmt_after_ip_normal_pos"}
!1993 = !{!"branch_weights", i32 1, i32 164184}
!1994 = !{!"branch_weights", i32 1759, i32 162426}
!1995 = !{!"branch_weights", i32 74529, i32 87898}
!1996 = !{!"function_entry_count", i64 53418}
!1997 = !{!"tree-ssa-loop-ivopts.c:stmt_after_inc_pos"}
!1998 = !{!"branch_weights", i32 28497, i32 24923}
!1999 = !{!"branch_weights", i32 23437, i32 1487}
!2000 = !{!"branch_weights", i32 23437, i32 1}
!2001 = !{!"function_entry_count", i64 84310}
!2002 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_base_length"}
!2003 = !{!"branch_weights", i32 4, i32 84308}
!2004 = !{!2005, !1002, i64 0}
!2005 = !{!"VEC_address_cost_data_base", !1002, i64 0, !1002, i64 4, !1000, i64 8}
!2006 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_heap_safe_grow_cleared"}
!2007 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_base_index"}
!2008 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_base_replace"}
!2009 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_heap_safe_grow"}
!2010 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_base_address"}
!2011 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_heap_reserve_exact"}
!2012 = !{!"tree-ssa-loop-ivopts.c:VEC_address_cost_data_base_space"}
!2013 = !{!2005, !1002, i64 4}
!2014 = !{!"function_entry_count", i64 53785}
!2015 = !{!"tree-ssa-loop-ivopts.c:get_computation_aff"}
!2016 = !{!"branch_weights", i32 1, i32 53786}
!2017 = !{!"branch_weights", i32 366, i32 53421}
!2018 = !{!"branch_weights", i32 72, i32 53715}
!2019 = !{!"branch_weights", i32 38420, i32 15296}
!2020 = !{!"branch_weights", i32 6273, i32 9024}
!2021 = !{!"branch_weights", i32 17443, i32 36273}
!2022 = !{!"function_entry_count", i64 58976}
!2023 = !{!"tree-ssa-loop-ivopts.c:var_at_stmt"}
!2024 = !{!"branch_weights", i32 42392, i32 16586}
!2025 = !{!"function_entry_count", i64 53714}
!2026 = !{!"tree-ssa-loop-ivopts.c:determine_common_wider_type"}
!2027 = !{!"branch_weights", i32 -1738097512, i32 159191212, i32 303408}
!2028 = !{!"branch_weights", i32 104, i32 3050}
!2029 = !{!"branch_weights", i32 3825936, i32 2142915, i32 1956}
!2030 = !{!"branch_weights", i32 1013, i32 83}
!2031 = !{!"function_entry_count", i64 194054}
!2032 = !{!"tree-ssa-loop-ivopts.c:prepare_decl_rtl"}
!2033 = !{!"branch_weights", i32 134052, i32 2411, i32 20900, i32 36695, i32 1, i32 1}
!2034 = !{!"branch_weights", i32 2411, i32 12}
!2035 = distinct !{!2035, !1022}
!2036 = !{!"branch_weights", i32 2179, i32 233}
!2037 = !{!"branch_weights", i32 1, i32 2179}
!2038 = !{!"branch_weights", i32 127, i32 2053}
!2039 = !{!"branch_weights", i32 1, i32 20900}
!2040 = !{!"branch_weights", i32 5320, i32 15581}
!2041 = !{!"branch_weights", i32 1, i32 36695}
!2042 = !{!"branch_weights", i32 22017, i32 14679}
!2043 = !{!"branch_weights", i32 1, i32 22017}
!2044 = !{!"branch_weights", i32 293579, i32 2147190069}
!2045 = !{!"tree-ssa-loop-ivopts.c:expand_expr"}
!2046 = !{!"function_entry_count", i64 27461}
!2047 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_heap_safe_push"}
!2048 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_heap_reserve"}
!2049 = !{!"branch_weights", i32 21, i32 27442}
!2050 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_base_quick_push"}
!2051 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_base_space"}
!2052 = !{!"branch_weights", i32 1, i32 27462}
!2053 = !{!1223, !1002, i64 4}
!2054 = !{!"tree-ssa-loop-ivopts.c:determine_iv_cost"}
!2055 = !{!"branch_weights", i32 459608850, i32 1687874798}
!2056 = !{!"branch_weights", i32 8068, i32 572}
!2057 = !{!1035, !1002, i64 52}
!2058 = !{!"tree-ssa-loop-ivopts.c:alloc_use_cost_map"}
!2059 = distinct !{!2059, !1022}
!2060 = !{!"branch_weights", i32 611, i32 170}
!2061 = distinct !{!2061, !1022}
!2062 = distinct !{!2062, !1022}
!2063 = !{!"function_entry_count", i64 184539}
!2064 = !{!"tree-ssa-loop-ivopts.c:determine_use_iv_cost"}
!2065 = !{!"branch_weights", i32 1, i32 38032, i32 105537, i32 40973}
!2066 = !{!"function_entry_count", i64 38031}
!2067 = !{!"tree-ssa-loop-ivopts.c:determine_use_iv_cost_generic"}
!2068 = !{!"branch_weights", i32 6544, i32 31489}
!2069 = !{!"branch_weights", i32 1631, i32 4914}
!2070 = !{!"function_entry_count", i64 105536}
!2071 = !{!"tree-ssa-loop-ivopts.c:determine_use_iv_cost_address"}
!2072 = !{!"branch_weights", i32 1, i32 105537}
!2073 = !{!"function_entry_count", i64 40972}
!2074 = !{!"tree-ssa-loop-ivopts.c:determine_use_iv_cost_condition"}
!2075 = !{!"branch_weights", i32 1, i32 40973}
!2076 = !{!"branch_weights", i32 30600, i32 10374}
!2077 = !{!"branch_weights", i32 10374, i32 30600}
!2078 = !{!"branch_weights", i32 1550, i32 8825}
!2079 = !{!"branch_weights", i32 7993, i32 833}
!2080 = !{!"branch_weights", i32 7966, i32 28}
!2081 = !{!"branch_weights", i32 20075, i32 20899}
!2082 = !{!"branch_weights", i32 40943, i32 31}
!2083 = !{!"branch_weights", i32 34479, i32 6495}
!2084 = !{!"tree-ssa-loop-ivopts.c:set_use_iv_cost"}
!2085 = !{!"branch_weights", i32 145127, i32 39414}
!2086 = !{!"branch_weights", i32 1556, i32 143572}
!2087 = !{i64 0, i64 4, !1043, i64 4, i64 4, !1043}
!2088 = !{!1291, !999, i64 24}
!2089 = !{!"branch_weights", i32 1, i32 127}
!2090 = !{!"branch_weights", i32 1556, i32 899}
!2091 = !{!"branch_weights", i32 313985, i32 127}
!2092 = distinct !{!2092, !1022}
!2093 = distinct !{!2093, !1022}
!2094 = !{!"tree-ssa-loop-ivopts.c:may_eliminate_iv"}
!2095 = !{!"branch_weights", i32 40714, i32 260}
!2096 = !{!"branch_weights", i32 39705, i32 1010}
!2097 = !{!"branch_weights", i32 39694, i32 12}
!2098 = !{!"branch_weights", i32 2254, i32 37441}
!2099 = !{!1206, !999, i64 8}
!2100 = !{!"branch_weights", i32 248, i32 37194}
!2101 = !{!"branch_weights", i32 36659, i32 783}
!2102 = !{!"branch_weights", i32 4928, i32 31732}
!2103 = !{!"branch_weights", i32 8141, i32 23592}
!2104 = !{!"branch_weights", i32 1, i32 8141}
!2105 = !{!"branch_weights", i32 17448, i32 6145}
!2106 = !{!"branch_weights", i32 1, i32 6145}
!2107 = !{!"function_entry_count", i64 603523}
!2108 = !{!"tree-ssa-loop-ivopts.c:compare_costs"}
!2109 = !{!"branch_weights", i32 171940, i32 431585}
!2110 = !{!"function_entry_count", i64 31731}
!2111 = !{!"tree-ssa-loop-ivopts.c:iv_period"}
!2112 = !{!"branch_weights", i32 1, i32 31732}
!2113 = !{!"branch_weights", i32 31732, i32 1}
!2114 = !{!"function_entry_count", i64 10404}
!2115 = !{!"tree-ssa-loop-ivopts.c:cand_value_at"}
!2116 = !{!"branch_weights", i32 108264025, i32 10406, i32 10405}
!2117 = !{!"branch_weights", i32 1141, i32 9265}
!2118 = !{!"function_entry_count", i64 843983}
!2119 = !{!"tree-ssa-loop-ivopts.c:ivopts_global_cost_for_size"}
!2120 = !{!"tree-ssa-loop-ivopts.c:get_initial_solution"}
!2121 = distinct !{!2121, !1022}
!2122 = !{!"tree-ssa-loop-ivopts.c:iv_ca_dump"}
!2123 = distinct !{!2123, !1022}
!2124 = !{!"function_entry_count", i64 8797}
!2125 = !{!"tree-ssa-loop-ivopts.c:try_improve_iv_set"}
!2126 = !{!"branch_weights", i32 1, i32 8797}
!2127 = !{!"branch_weights", i32 65932, i32 11628}
!2128 = !{!"branch_weights", i32 38744, i32 27189}
!2129 = !{!"branch_weights", i32 1, i32 27189}
!2130 = !{!"branch_weights", i32 4452, i32 22738}
!2131 = !{!"branch_weights", i32 68762, i32 8797}
!2132 = distinct !{!2132, !1022}
!2133 = !{!"branch_weights", i32 1506753408, i32 640730240}
!2134 = !{!"branch_weights", i32 5909, i32 266}
!2135 = !{!"function_entry_count", i64 224824}
!2136 = !{!"tree-ssa-loop-ivopts.c:iv_ca_cost"}
!2137 = !{!1317, !1002, i64 4}
!2138 = !{!"branch_weights", i32 218342, i32 6484}
!2139 = !{!"function_entry_count", i64 1081196}
!2140 = !{!"tree-ssa-loop-ivopts.c:iv_ca_cand_for_use"}
!2141 = !{!"tree-ssa-loop-ivopts.c:iv_ca_new"}
!2142 = !{!1317, !1002, i64 0}
!2143 = !{!"tree-ssa-loop-ivopts.c:try_add_cand_for"}
!2144 = !{!"branch_weights", i32 6484, i32 12357}
!2145 = !{!"branch_weights", i32 1, i32 18839}
!2146 = !{!"branch_weights", i32 102137, i32 12921}
!2147 = !{!"branch_weights", i32 87585, i32 14553}
!2148 = !{!"branch_weights", i32 6089, i32 81497}
!2149 = !{!"branch_weights", i32 17298, i32 64200}
!2150 = !{!"branch_weights", i32 18839, i32 96218}
!2151 = distinct !{!2151, !1022}
!2152 = !{!"branch_weights", i32 18840, i32 1}
!2153 = distinct !{!2153, !1022}
!2154 = !{!"tree-ssa-loop-ivopts.c:iv_ca_add_use"}
!2155 = !{!"branch_weights", i32 4287, i32 14553}
!2156 = !{!"branch_weights", i32 1061, i32 13493}
!2157 = !{!"branch_weights", i32 14553, i32 0}
!2158 = distinct !{!2158, !1022}
!2159 = !{!"function_entry_count", i64 186329}
!2160 = !{!"tree-ssa-loop-ivopts.c:iv_ca_delta_add"}
!2161 = !{!2162, !999, i64 0}
!2162 = !{!"iv_ca_delta", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24}
!2163 = !{!2162, !999, i64 8}
!2164 = !{!2162, !999, i64 16}
!2165 = !{!2162, !999, i64 24}
!2166 = !{!"function_entry_count", i64 412572}
!2167 = !{!"tree-ssa-loop-ivopts.c:iv_ca_set_no_cp"}
!2168 = !{!"branch_weights", i32 1, i32 412573}
!2169 = !{!"branch_weights", i32 160475, i32 252099}
!2170 = !{!"branch_weights", i32 1, i32 160475}
!2171 = !{!1317, !1002, i64 36}
!2172 = !{!1317, !1002, i64 32}
!2173 = !{!1317, !1002, i64 48}
!2174 = !{!"function_entry_count", i64 179694}
!2175 = !{!"tree-ssa-loop-ivopts.c:iv_ca_cand_used_p"}
!2176 = !{!"function_entry_count", i64 693166}
!2177 = !{!"tree-ssa-loop-ivopts.c:get_use_iv_cost"}
!2178 = !{!"branch_weights", i32 1, i32 693167}
!2179 = !{!"branch_weights", i32 21927, i32 671241}
!2180 = !{!"branch_weights", i32 109858, i32 561384}
!2181 = !{!"branch_weights", i32 1, i32 6590}
!2182 = !{!"branch_weights", i32 65828, i32 6590}
!2183 = distinct !{!2183, !1022}
!2184 = !{!"branch_weights", i32 15337, i32 57082}
!2185 = !{!"branch_weights", i32 6590, i32 46353}
!2186 = distinct !{!2186, !1022}
!2187 = !{!"branch_weights", i32 1, i32 52943}
!2188 = !{!"function_entry_count", i64 437894}
!2189 = !{!"tree-ssa-loop-ivopts.c:iv_ca_set_cp"}
!2190 = !{!"branch_weights", i32 6484, i32 431412}
!2191 = !{!"branch_weights", i32 112692, i32 318721}
!2192 = !{!"branch_weights", i32 1, i32 431412}
!2193 = !{!"branch_weights", i32 167928, i32 263485}
!2194 = !{!"branch_weights", i32 1, i32 167928}
!2195 = !{!"function_entry_count", i64 147427}
!2196 = !{!"tree-ssa-loop-ivopts.c:iv_ca_extend"}
!2197 = !{!"branch_weights", i32 1, i32 147427}
!2198 = !{!"branch_weights", i32 1, i32 590118}
!2199 = !{!"branch_weights", i32 81497, i32 508622}
!2200 = !{!"branch_weights", i32 80299, i32 428324}
!2201 = !{!"branch_weights", i32 27569, i32 400756}
!2202 = !{!"branch_weights", i32 335403, i32 65354}
!2203 = !{!"branch_weights", i32 442691, i32 147427}
!2204 = distinct !{!2204, !1022}
!2205 = !{!"branch_weights", i32 81497, i32 65932}
!2206 = !{!"function_entry_count", i64 205163}
!2207 = !{!"tree-ssa-loop-ivopts.c:iv_ca_delta_free"}
!2208 = !{!"branch_weights", i32 18834, i32 186330}
!2209 = !{!"branch_weights", i32 186330, i32 0}
!2210 = distinct !{!2210, !1022}
!2211 = !{!"function_entry_count", i64 397980}
!2212 = !{!"tree-ssa-loop-ivopts.c:iv_ca_delta_commit"}
!2213 = !{!"branch_weights", i32 188127, i32 209855}
!2214 = !{!"branch_weights", i32 60421, i32 337560}
!2215 = !{!"branch_weights", i32 337560, i32 1}
!2216 = !{!"branch_weights", i32 337560, i32 0}
!2217 = distinct !{!2217, !1022}
!2218 = !{!"function_entry_count", i64 449329}
!2219 = !{!"tree-ssa-loop-ivopts.c:cheaper_cost_pair"}
!2220 = !{!"branch_weights", i32 953, i32 448378}
!2221 = !{!"branch_weights", i32 39481, i32 408898}
!2222 = !{!"branch_weights", i32 71118, i32 337781}
!2223 = !{!"branch_weights", i32 86054, i32 251728}
!2224 = !{!"function_entry_count", i64 573046}
!2225 = !{!"tree-ssa-loop-ivopts.c:iv_ca_set_remove_invariants"}
!2226 = !{!"branch_weights", i32 449004, i32 124044}
!2227 = !{!"branch_weights", i32 1, i32 124043}
!2228 = !{!"branch_weights", i32 73246, i32 55508}
!2229 = !{!"branch_weights", i32 124043, i32 4710}
!2230 = distinct !{!2230, !1022}
!2231 = !{!"tree-ssa-loop-ivopts.c:sub_costs"}
!2232 = !{!"tree-ssa-loop-ivopts.c:iv_ca_recount_cost"}
!2233 = !{i64 0, i64 4, !1043}
!2234 = !{!"function_entry_count", i64 599338}
!2235 = !{!"tree-ssa-loop-ivopts.c:iv_ca_set_add_invariants"}
!2236 = !{!"branch_weights", i32 470897, i32 128443}
!2237 = !{!"branch_weights", i32 1, i32 128442}
!2238 = !{!"branch_weights", i32 77250, i32 55914}
!2239 = !{!"branch_weights", i32 128442, i32 4721}
!2240 = distinct !{!2240, !1022}
!2241 = !{!"function_entry_count", i64 477102}
!2242 = !{!"tree-ssa-loop-ivopts.c:iv_ca_has_deps"}
!2243 = !{!"branch_weights", i32 328100, i32 149004}
!2244 = !{!"branch_weights", i32 1, i32 106678}
!2245 = !{!"branch_weights", i32 42326, i32 110888}
!2246 = !{!"branch_weights", i32 106678, i32 46535}
!2247 = distinct !{!2247, !1022}
!2248 = !{!"function_entry_count", i64 65931}
!2249 = !{!"tree-ssa-loop-ivopts.c:iv_ca_n_cands"}
!2250 = !{!"function_entry_count", i64 376252}
!2251 = !{!"tree-ssa-loop-ivopts.c:iv_ca_delta_reverse"}
!2252 = !{!"branch_weights", i32 65500, i32 310753}
!2253 = !{!"branch_weights", i32 310753, i32 0}
!2254 = distinct !{!2254, !1022}
!2255 = !{!"function_entry_count", i64 37461}
!2256 = !{!"tree-ssa-loop-ivopts.c:iv_ca_prune"}
!2257 = !{!"branch_weights", i32 1, i32 37461}
!2258 = !{!"branch_weights", i32 31024, i32 42082}
!2259 = !{!"branch_weights", i32 4138, i32 37945}
!2260 = !{!"branch_weights", i32 37461, i32 35644}
!2261 = distinct !{!2261, !1022}
!2262 = !{!"branch_weights", i32 1912396615, i32 235087033}
!2263 = !{!"function_entry_count", i64 31288}
!2264 = !{!"tree-ssa-loop-ivopts.c:iv_ca_delta_join"}
!2265 = !{!"branch_weights", i32 27454, i32 3836}
!2266 = !{!"branch_weights", i32 1, i32 3836}
!2267 = !{!"branch_weights", i32 3836, i32 4534}
!2268 = distinct !{!2268, !1022}
!2269 = !{!"function_entry_count", i64 42081}
!2270 = !{!"tree-ssa-loop-ivopts.c:iv_ca_narrow"}
!2271 = !{!"branch_weights", i32 1, i32 9411}
!2272 = !{!"branch_weights", i32 59795, i32 56049}
!2273 = !{!"branch_weights", i32 1114, i32 58682}
!2274 = !{!"branch_weights", i32 1, i32 58681}
!2275 = !{!"branch_weights", i32 58682, i32 76985}
!2276 = !{!"branch_weights", i32 29110, i32 47876}
!2277 = !{!"branch_weights", i32 14678, i32 33199}
!2278 = !{!"branch_weights", i32 1862, i32 31338}
!2279 = !{!"branch_weights", i32 58681, i32 76985}
!2280 = distinct !{!2280, !1022}
!2281 = !{!"branch_weights", i32 1, i32 1113}
!2282 = !{!"branch_weights", i32 1114, i32 905}
!2283 = !{!"branch_weights", i32 1, i32 905}
!2284 = !{!"branch_weights", i32 81, i32 825}
!2285 = !{!"branch_weights", i32 97, i32 729}
!2286 = !{!"branch_weights", i32 1113, i32 905}
!2287 = distinct !{!2287, !1022}
!2288 = !{!"branch_weights", i32 1173297376, i32 974186272}
!2289 = !{!"branch_weights", i32 106432, i32 9411}
!2290 = distinct !{!2290, !1022}
!2291 = !{!"function_entry_count", i64 1113}
!2292 = !{!"tree-ssa-loop-ivopts.c:bmp_iter_and_init"}
!2293 = !{!"branch_weights", i32 18268160, i32 -1974910977}
!2294 = !{!"branch_weights", i32 1, i32 1114}
!2295 = !{!"branch_weights", i32 127, i32 142465}
!2296 = !{!"branch_weights", i32 2145542487, i32 1941161}
!2297 = !{!"branch_weights", i32 1114, i32 1}
!2298 = !{!"function_entry_count", i64 3130}
!2299 = !{!"tree-ssa-loop-ivopts.c:bmp_iter_and"}
!2300 = !{!"branch_weights", i32 1114, i32 2018}
!2301 = !{!"branch_weights", i32 2017, i32 1}
!2302 = !{!"branch_weights", i32 11004, i32 2017}
!2303 = distinct !{!2303, !1022}
!2304 = !{!"branch_weights", i32 1113, i32 1}
!2305 = distinct !{!2305, !1022}
!2306 = distinct !{!2306, !1022}
!2307 = distinct !{!2307, !1022}
!2308 = !{!"function_entry_count", i64 7453}
!2309 = !{!"tree-ssa-loop-ivopts.c:create_new_iv"}
!2310 = !{!"branch_weights", i32 1, i32 7454}
!2311 = !{!"branch_weights", i32 1, i32 1653, i32 464, i32 1, i32 1, i32 5339}
!2312 = !{!"function_entry_count", i64 2115}
!2313 = !{!"tree-ssa-loop-ivopts.c:gsi_last_bb"}
!2314 = !{!"tree-ssa-loop-ivopts.c:gimple_seq_last"}
!2315 = !{!"branch_weights", i32 1, i32 2116}
!2316 = !{!1467, !999, i64 8}
!2317 = !{!"tree-ssa-loop-ivopts.c:rewrite_use"}
!2318 = !{!"branch_weights", i32 1, i32 9135, i32 8910, i32 4522}
!2319 = !{!"function_entry_count", i64 9134}
!2320 = !{!"tree-ssa-loop-ivopts.c:rewrite_use_nonlinear_expr"}
!2321 = !{!"branch_weights", i32 8408, i32 728}
!2322 = !{!"branch_weights", i32 5339, i32 3070}
!2323 = !{!"branch_weights", i32 1, i32 5339}
!2324 = !{!"branch_weights", i32 5339, i32 1}
!2325 = !{!"branch_weights", i32 5328, i32 10}
!2326 = !{!"branch_weights", i32 1, i32 10}
!2327 = !{!"branch_weights", i32 5291, i32 38}
!2328 = !{!"branch_weights", i32 4, i32 35}
!2329 = !{!"branch_weights", i32 1, i32 3797}
!2330 = !{!"branch_weights", i32 1, i32 1822, i32 1990}
!2331 = !{!"branch_weights", i32 38, i32 1785}
!2332 = !{!"branch_weights", i32 38, i32 1990}
!2333 = !{!"function_entry_count", i64 8909}
!2334 = !{!"tree-ssa-loop-ivopts.c:rewrite_use_address"}
!2335 = !{!"branch_weights", i32 1, i32 8910}
!2336 = !{!"branch_weights", i32 4815, i32 4096}
!2337 = !{!"function_entry_count", i64 4521}
!2338 = !{!"tree-ssa-loop-ivopts.c:rewrite_use_compare"}
!2339 = !{!"branch_weights", i32 3426, i32 1097}
!2340 = !{i32 101, i32 103}
!2341 = !{!"branch_weights", i32 952, i32 146}
!2342 = !{!"branch_weights", i32 1, i32 3426}
!2343 = !{!"tree-ssa-loop-ivopts.c:update_stmt"}
!2344 = !{!"branch_weights", i32 1822, i32 20744}
!2345 = !{!"function_entry_count", i64 5336}
!2346 = !{!"tree-ssa-loop-ivopts.c:gimple_assign_rhs2"}
!2347 = !{!"branch_weights", i32 5337, i32 1}
!2348 = !{!"function_entry_count", i64 7221}
!2349 = !{!"tree-ssa-loop-ivopts.c:get_computation"}
!2350 = !{!"function_entry_count", i64 37}
!2351 = !{!"tree-ssa-loop-ivopts.c:gsi_after_labels"}
!2352 = !{!"branch_weights", i32 127, i32 1}
!2353 = !{!"branch_weights", i32 1, i32 38}
!2354 = !{!"branch_weights", i32 4737, i32 127}
!2355 = distinct !{!2355, !1022}
!2356 = !{!"tree-ssa-loop-ivopts.c:copy_ref_info"}
!2357 = !{!"tree-ssa-loop-ivopts.c:unshare_and_remove_ssa_names"}
!2358 = !{!"function_entry_count", i64 12362}
!2359 = !{!"tree-ssa-loop-ivopts.c:idx_remove_ssa_names"}
!2360 = !{!"branch_weights", i32 12305, i32 59}
!2361 = !{!"branch_weights", i32 37921463, i32 45387169}
!2362 = !{!"branch_weights", i32 5417, i32 211}
!2363 = !{!"branch_weights", i32 1, i32 211}
!2364 = !{!"function_entry_count", i64 1096}
!2365 = !{!"tree-ssa-loop-ivopts.c:iv_elimination_compare"}
!2366 = !{!"branch_weights", i32 3, i32 1095}
!2367 = !{!998, !1002, i64 48}
!2368 = !{!"tree-ssa-loop-ivopts.c:gimple_cond_set_lhs"}
!2369 = !{!"tree-ssa-loop-ivopts.c:gimple_cond_set_code"}
!2370 = !{!"tree-ssa-loop-ivopts.c:gimple_cond_set_rhs"}
!2371 = !{!"function_entry_count", i64 2192}
!2372 = !{!"tree-ssa-loop-ivopts.c:gimple_set_op"}
!2373 = !{!"branch_weights", i32 1, i32 2193}
!2374 = !{!"branch_weights", i32 2193, i32 1}
!2375 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_base_truncate"}
!2376 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_base_truncate"}
!2377 = !{!"function_entry_count", i64 44246}
!2378 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_base_iterate"}
!2379 = !{!"branch_weights", i32 1, i32 44247}
!2380 = !{!"branch_weights", i32 27462, i32 16786}
!2381 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_base_truncate"}
!2382 = !{!"tree-ssa-loop-ivopts.c:VEC_int_base_iterate"}
!2383 = !{!"tree-ssa-loop-ivopts.c:get_loop"}
!2384 = !{!"tree-ssa-loop-ivopts.c:VEC_int_heap_free"}
!2385 = !{!"tree-ssa-loop-ivopts.c:VEC_tree_heap_free"}
!2386 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_use_p_heap_free"}
!2387 = !{!"tree-ssa-loop-ivopts.c:VEC_iv_cand_p_heap_free"}
