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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.iv_use = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.ivopts_data = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.VEC_iv_use_p_base = type { i32, i32, [1 x ptr] }
%struct.iv_cand = type { i32, i8, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.mbc_entry = type { i64, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_sbitmap_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.version_info = type { ptr, ptr, i8, i32, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_iv_cand_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.cost_pair = type { ptr, %struct.comp_cost, ptr, ptr }
%struct.comp_cost = type { i32, i32 }
%struct.iv_ca = type { i32, i32, ptr, ptr, ptr, i32, i32, %struct.comp_cost, i32, ptr, %struct.comp_cost }
%struct.iv_ca_delta = type { ptr, ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ifs_ivopts_data = type { ptr, ptr, ptr }
%struct.VEC_address_cost_data_base = type { i32, i32, [1 x ptr] }
%struct.anon = type { i64, i64, [2 x [2 x [2 x [2 x i32]]]] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @single_dom_exit(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @single_exit(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !54
  %6 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %5) #21
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr null, ptr %2
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %8, %4 ]
  ret ptr %10
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_iv(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 9, i64 1, ptr %0)
  %8 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %8, i32 noundef 2) #21
  %9 = tail call i32 @fputc(i32 10, ptr %0)
  br label %10

10:                                               ; preds = %6, %2
  %11 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %0)
  %12 = load ptr, ptr %1, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %14, i32 noundef 2) #21
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  %16 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %0)
  %21 = load ptr, ptr %1, align 8, !tbaa !58
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 2) #21
  %22 = tail call i32 @fputc(i32 10, ptr %0)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 7, i64 1, ptr %0)
  br label %26

24:                                               ; preds = %10
  %25 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %0)
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %1, %24 ], [ %16, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %28, i32 noundef 2) #21
  %29 = tail call i32 @fputc(i32 10, ptr %0)
  %30 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 14, i64 1, ptr %0)
  %35 = load ptr, ptr %30, align 8, !tbaa !60
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %35, i32 noundef 2) #21
  %36 = tail call i32 @fputc(i32 10, ptr %0)
  br label %37

37:                                               ; preds = %33, %26
  %38 = getelementptr inbounds %struct.iv, ptr %1, i64 0, i32 4
  %39 = load i8, ptr %38, align 8, !tbaa !61
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %0)
  br label %43

43:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_use(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %1, align 8, !tbaa !62
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %3)
  %5 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !64
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 455, ptr noundef nonnull @.str.13) #21
  br label %14

14:                                               ; preds = %13, %11, %9, %7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 15, i64 1, ptr %0)
  %16 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %17, i32 noundef 0, i32 noundef 0) #21
  %18 = tail call i32 @fputc(i32 10, ptr %0)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 14, i64 1, ptr %0)
  %20 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %21, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %24, i32 noundef 2) #21
  br label %25

25:                                               ; preds = %23, %14
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  %27 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  tail call void @dump_iv(ptr noundef %0, ptr noundef %28)
  %29 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %34 = load ptr, ptr %29, align 8, !tbaa !68
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1) #21
  br label %35

35:                                               ; preds = %32, %25
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_uses(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 6
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i64 [ %18, %14 ], [ 0, %2 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %5, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %6, i64 0, i32 2, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  tail call void @dump_use(ptr noundef %0, ptr noundef %16)
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  %18 = add nuw nsw i64 %5, 1
  br label %4, !llvm.loop !73

19:                                               ; preds = %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_cand(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = load i32, ptr %1, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4, !tbaa !77
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @.str.17, ptr @.str.19
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %5, ptr noundef nonnull %9)
  %11 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 13, i64 1, ptr %0)
  %16 = load ptr, ptr %11, align 8, !tbaa !78
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1) #21
  br label %17

17:                                               ; preds = %14, %2
  %18 = icmp eq ptr %4, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 26, i64 1, ptr %0)
  br label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !79
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
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %29)
  br label %40

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = load i32, ptr %33, align 8, !tbaa !62
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %34)
  br label %40

36:                                               ; preds = %21
  %37 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr %0)
  br label %40

38:                                               ; preds = %21
  %39 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 15, i64 1, ptr %0)
  br label %40

40:                                               ; preds = %21, %38, %36, %31, %26, %24
  tail call void @dump_iv(ptr noundef %0, ptr noundef nonnull %4)
  br label %41

41:                                               ; preds = %40, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !50
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
  %14 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = icmp eq i64 %5, 121
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %20 = tail call zeroext i8 @for_each_index(ptr noundef nonnull %19, ptr noundef nonnull @idx_contains_abnormal_ssa_name_p, ptr noundef null) #21
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
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %26), !range !81
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %23
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %31), !range !81
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %36

34:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 703, ptr noundef nonnull @.str.13) #21
  br label %35

35:                                               ; preds = %29, %34
  br label %36

36:                                               ; preds = %29, %24, %13, %3, %1, %35, %18, %9
  %37 = phi i8 [ %12, %9 ], [ %22, %18 ], [ 0, %35 ], [ 0, %1 ], [ 0, %3 ], [ 0, %13 ], [ 1, %24 ], [ 1, %29 ]
  ret i8 %37
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @idx_contains_abnormal_ssa_name_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 !prof !34 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -45
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 4259839
  %16 = icmp eq i64 %15, 4194445
  br i1 %16, label %37, label %17

17:                                               ; preds = %9, %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 4259839
  %24 = icmp eq i64 %23, 4194445
  br i1 %24, label %37, label %25

25:                                               ; preds = %17, %21, %3
  %26 = load ptr, ptr %1, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = lshr i64 %29, 22
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  br label %37

37:                                               ; preds = %21, %13, %32, %28, %25
  %38 = phi i8 [ %36, %32 ], [ 1, %25 ], [ 1, %28 ], [ 0, %13 ], [ 0, %21 ]
  ret i8 %38
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !86
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1290, ptr noundef nonnull @.str.13) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.gimple_statement_base, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %21) #21
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23, %17
  br label %58

27:                                               ; preds = %13
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = add i32 %29, -4
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = icmp eq i32 %29, 9
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.tree_int_cst, ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !46
  %39 = trunc i64 %38 to i32
  br label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %15
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %34, %40
  %45 = phi i32 [ %39, %34 ], [ %43, %40 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = zext i32 %45 to i64
  br label %52

49:                                               ; preds = %52
  %50 = add nuw nsw i64 %53, 1
  %51 = icmp eq i64 %50, %48
  br i1 %51, label %58, label %52, !llvm.loop !88

52:                                               ; preds = %47, %49
  %53 = phi i64 [ 0, %47 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %55), !range !81
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %49

58:                                               ; preds = %52, %49, %44, %27, %23, %10, %26
  %59 = phi i8 [ 1, %26 ], [ 1, %10 ], [ 0, %23 ], [ 0, %27 ], [ 1, %44 ], [ 1, %49 ], [ 0, %52 ]
  ret i8 %59
}

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @stmt_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !86
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1326, ptr noundef nonnull @.str.13) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call ptr @gimple_get_lhs(ptr noundef %1) #21
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %10, %40
  %16 = phi i64 [ %41, %40 ], [ 0, %10 ]
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 255
  %19 = add nsw i32 %18, -10
  %20 = icmp ult i32 %19, -9
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = zext nneg i32 %18 to i64
  %23 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !89
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %30

30:                                               ; preds = %29, %21
  %31 = getelementptr inbounds i8, ptr %1, i64 %27
  %32 = getelementptr inbounds ptr, ptr %31, i64 %16
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %15, %30
  %35 = phi ptr [ %33, %30 ], [ null, %15 ]
  %36 = icmp eq ptr %35, %11
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %35), !range !81
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37, %34
  %41 = add nuw nsw i64 %16, 1
  %42 = load i32, ptr %12, align 4, !tbaa !46
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %15, label %45, !llvm.loop !90

45:                                               ; preds = %37, %40, %10
  %46 = phi i8 [ 1, %10 ], [ 0, %37 ], [ 1, %40 ]
  ret i8 %46
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @tree_int_cst_sign_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
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
  %14 = load i64, ptr %13, align 8, !tbaa !46
  %15 = zext nneg i32 %12 to i64
  %16 = lshr i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 1
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @multiply_by_cost(i64 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.mbc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = load ptr, ptr @multiply_by_cost.costs, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @mbc_entry_hash, ptr noundef nonnull @mbc_entry_eq, ptr noundef nonnull @free) #21
  store ptr %8, ptr @multiply_by_cost.costs, align 8, !tbaa !35
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.mbc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %10, align 8, !tbaa !91
  store i64 %0, ptr %4, align 8, !tbaa !93
  %11 = load ptr, ptr @multiply_by_cost.costs, align 8, !tbaa !35
  %12 = call ptr @htab_find_slot(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 1) #21
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mbc_entry, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !94
  br label %41

18:                                               ; preds = %9
  %19 = call ptr @xmalloc(i64 noundef 16) #21
  store ptr %19, ptr %12, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.mbc_entry, ptr %19, i64 0, i32 1
  store i32 %1, ptr %20, align 8, !tbaa !91
  store i64 %0, ptr %19, align 8, !tbaa !93
  call void @start_sequence() #21
  %21 = call ptr @gen_raw_REG(i32 noundef %1, i32 noundef 58) #21
  %22 = call ptr @gen_int_mode(i64 noundef %0, i32 noundef %1) #21
  %23 = call ptr @expand_mult(i32 noundef %1, ptr noundef %21, ptr noundef %22, ptr noundef null, i32 noundef 0) #21
  %24 = call ptr @get_insns() #21
  call void @end_sequence() #21
  %25 = call fastcc i32 @seq_cost(ptr noundef %24, i8 noundef zeroext %2)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = trunc i64 %0 to i32
  %34 = zext i32 %1 to i64
  %35 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.27, i32 noundef %33, ptr noundef %36, i32 noundef %25)
  br label %38

38:                                               ; preds = %32, %28, %18
  %39 = load ptr, ptr %12, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.mbc_entry, ptr %39, i64 0, i32 2
  store i32 %25, ptr %40, align 4, !tbaa !94
  br label %41

41:                                               ; preds = %38, %15
  %42 = phi i32 [ %17, %15 ], [ %25, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret i32 %42
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mbc_entry_hash(ptr nocapture noundef readonly %0) #11 !prof !34 {
  %2 = getelementptr inbounds %struct.mbc_entry, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = mul i32 %3, 57
  %5 = load i64, ptr %0, align 8, !tbaa !93
  %6 = srem i64 %5, 877
  %7 = trunc i64 %6 to i32
  %8 = add i32 %4, %7
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mbc_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !34 {
  %3 = getelementptr inbounds %struct.mbc_entry, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.mbc_entry, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8, !tbaa !93
  %10 = load i64, ptr %1, align 8, !tbaa !93
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @expand_mult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2, %24
  %5 = phi ptr [ %28, %24 ], [ %0, %2 ]
  %6 = phi i32 [ %26, %24 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #21
  br label %19

19:                                               ; preds = %4, %11, %17
  %20 = phi ptr [ %18, %17 ], [ null, %4 ], [ %13, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @rtx_cost(ptr noundef nonnull %20, i32 noundef 23, i8 noundef zeroext %1) #21
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ 1, %19 ]
  %26 = add i32 %25, %6
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %4, !llvm.loop !95

30:                                               ; preds = %24, %2
  %31 = phi i32 [ 0, %2 ], [ %26, %24 ]
  ret i32 %31
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !34 {
  %4 = zext i8 %2 to i32
  %5 = mul nuw nsw i32 %4, 87
  %6 = add nsw i32 %5, %1
  %7 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 8, !tbaa !96
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %13 = icmp ult i32 %6, %12
  br i1 %13, label %45, label %14

14:                                               ; preds = %11
  %15 = add i32 %6, 1
  br i1 %8, label %18, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %7, align 8, !tbaa !96
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %17, %16 ], [ 0, %14 ]
  br i1 %8, label %22, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %7, align 8, !tbaa !96
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %21, %20 ], [ 0, %18 ]
  %24 = sub nsw i32 %15, %23
  br i1 %8, label %31, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %7, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !98
  %28 = load i32, ptr %7, align 8, !tbaa !96
  %29 = sub i32 %27, %28
  %30 = icmp uge i32 %29, %24
  br label %33

31:                                               ; preds = %22
  %32 = icmp eq i32 %23, %15
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i1 [ %30, %25 ], [ %32, %31 ]
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %7, i32 noundef %24) #21
  store ptr %36, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %33, %35
  %38 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8, !tbaa !35, !nonnull !99, !noundef !99
  store i32 %15, ptr %38, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %38, i64 0, i32 2
  %40 = sext i32 %19 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = sub nsw i32 %15, %19
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %41, i8 0, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %37, %11
  %46 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  %47 = zext i32 %6 to i64
  %48 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %46, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %126

51:                                               ; preds = %45
  %52 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !100
  %53 = tail call i32 %52(i8 noundef zeroext %2) #21
  %54 = tail call ptr @gen_raw_REG(i32 noundef %53, i32 noundef 58) #21
  %55 = tail call ptr @sbitmap_alloc(i32 noundef 257) #21
  tail call void @sbitmap_zero(ptr noundef %55) #21
  %56 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %53, ptr noundef %54, ptr noundef null) #21
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %58

58:                                               ; preds = %51, %89
  %59 = phi i64 [ -128, %51 ], [ %90, %89 ]
  %60 = tail call ptr @gen_int_mode(i64 noundef %59, i32 noundef %53) #21
  store ptr %60, ptr %57, align 8, !tbaa !46
  %61 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %56, i8 noundef zeroext %2) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %58
  %64 = trunc i64 %59 to i32
  %65 = add i32 %64, 128
  %66 = load ptr, ptr %55, align 8, !tbaa !112
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = lshr i32 %65, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %55, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !89
  %73 = and i64 %59, 63
  %74 = shl nuw i64 1, %73
  %75 = and i64 %72, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = getelementptr inbounds i8, ptr %66, i64 %70
  %79 = load i8, ptr %78, align 1, !tbaa !46
  %80 = add i8 %79, 1
  store i8 %80, ptr %78, align 1, !tbaa !46
  br label %81

81:                                               ; preds = %63, %68, %77
  %82 = and i64 %59, 63
  %83 = shl nuw i64 1, %82
  %84 = lshr i32 %65, 6
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds %struct.simple_bitmap_def, ptr %55, i64 0, i32 3, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !89
  %88 = or i64 %87, %83
  store i64 %88, ptr %86, align 8, !tbaa !89
  br label %89

89:                                               ; preds = %58, %81
  %90 = add nsw i64 %59, 1
  %91 = icmp eq i64 %90, 129
  br i1 %91, label %92, label %58, !llvm.loop !114

92:                                               ; preds = %89
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %94 = icmp eq ptr %93, null
  br i1 %94, label %123, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %95
  %100 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 22, i64 1, ptr nonnull %93)
  br label %101

101:                                              ; preds = %99, %115
  %102 = phi i64 [ -128, %99 ], [ %116, %115 ]
  %103 = add nsw i64 %102, 128
  %104 = lshr i64 %103, 6
  %105 = getelementptr inbounds %struct.simple_bitmap_def, ptr %55, i64 0, i32 3, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !89
  %107 = and i64 %102, 63
  %108 = shl nuw i64 1, %107
  %109 = and i64 %106, %108
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %101
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %113 = trunc i64 %102 to i32
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.29, i32 noundef %113)
  br label %115

115:                                              ; preds = %101, %111
  %116 = add nsw i64 %102, 1
  %117 = icmp eq i64 %116, 129
  br i1 %117, label %118, label %101, !llvm.loop !115

118:                                              ; preds = %115
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %120 = tail call i32 @fputc(i32 10, ptr %119)
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %122 = tail call i32 @fputc(i32 10, ptr %121)
  br label %123

123:                                              ; preds = %118, %95, %92
  %124 = load ptr, ptr @multiplier_allowed_in_address_p.valid_mult_list, align 8
  %125 = getelementptr inbounds %struct.VEC_sbitmap_base, ptr %124, i64 0, i32 2, i64 %47
  store ptr %55, ptr %125, align 8, !tbaa !35
  br label %126

126:                                              ; preds = %123, %45
  %127 = phi ptr [ %49, %45 ], [ %55, %123 ]
  %128 = add i64 %0, -129
  %129 = icmp ult i64 %128, -257
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = add nsw i64 %0, 128
  %132 = lshr i64 %131, 6
  %133 = getelementptr inbounds %struct.simple_bitmap_def, ptr %127, i64 0, i32 3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !89
  %135 = and i64 %0, 63
  %136 = lshr i64 %134, %135
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  br label %139

139:                                              ; preds = %126, %130
  %140 = phi i8 [ %138, %130 ], [ 0, %126 ]
  ret i8 %140
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_ssa_iv_optimize() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.ivopts_data, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #21
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, ptr %6, align 8, !tbaa !122
  %10 = shl i32 %9, 1
  br label %11

11:                                               ; preds = %0, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %0 ]
  %13 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 3
  store i32 %12, ptr %13, align 4, !tbaa !124
  %14 = zext i32 %12 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 32) #21
  %16 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !125
  %17 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %18 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !126
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %20 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 8
  store ptr %19, ptr %20, align 8, !tbaa !127
  %21 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 9
  store i32 0, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !129
  %23 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  %24 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !69
  %25 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  %26 = getelementptr inbounds %struct.ivopts_data, ptr %1, i64 0, i32 7
  store ptr %25, ptr %26, align 8, !tbaa !130
  %27 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  store ptr %27, ptr @decl_rtl_to_reset, align 8, !tbaa !35
  %28 = load ptr, ptr @cfun, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  %31 = icmp eq ptr %30, null
  br i1 %31, label %123, label %32

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.loops, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !132
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !86
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %39, i64 noundef 8, i64 noundef 4) #21
  %41 = load ptr, ptr @cfun, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  %44 = getelementptr inbounds %struct.loops, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !134
  br label %46

46:                                               ; preds = %46, %38
  %47 = phi ptr [ %45, %38 ], [ %49, %46 ]
  %48 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !135
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %46, !llvm.loop !136

51:                                               ; preds = %46, %100
  %52 = phi ptr [ %101, %100 ], [ %47, %46 ]
  %53 = load i32, ptr %52, align 8, !tbaa !137
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, ptr %40, align 4, !tbaa !138
  %57 = add i32 %56, 1
  store i32 %57, ptr %40, align 4, !tbaa !138
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.VEC_int_base, ptr %40, i64 0, i32 2, i64 %58
  store i32 %53, ptr %59, align 4, !tbaa !50
  br label %60

60:                                               ; preds = %55, %51
  %61 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !140
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60, %64
  %65 = phi ptr [ %67, %64 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.loop, ptr %65, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !135
  %68 = icmp eq ptr %67, null
  br i1 %68, label %100, label %64, !llvm.loop !141

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !82
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %71, align 8, !tbaa !86
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %74, %73 ], [ 0, %69 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = add i32 %76, -1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %71, i64 0, i32 2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi ptr [ %82, %78 ], [ null, %75 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = icmp eq ptr %40, null
  %88 = getelementptr inbounds %struct.loops, ptr %43, i64 0, i32 1
  br label %102

89:                                               ; preds = %83
  br i1 %72, label %92, label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %71, align 8, !tbaa !86
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ %91, %90 ], [ 0, %89 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = add i32 %93, -1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %71, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  br label %100

100:                                              ; preds = %64, %95, %92
  %101 = phi ptr [ %99, %95 ], [ null, %92 ], [ %65, %64 ]
  br label %51, !llvm.loop !142

102:                                              ; preds = %86, %114
  %103 = phi i32 [ %115, %114 ], [ 0, %86 ]
  br i1 %87, label %111, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %40, align 4, !tbaa !138
  %106 = icmp ugt i32 %105, %103
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = zext i32 %103 to i64
  %109 = getelementptr inbounds %struct.VEC_int_base, ptr %40, i64 0, i32 2, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !50
  br label %111

111:                                              ; preds = %107, %104, %102
  %112 = phi i32 [ %110, %107 ], [ 0, %104 ], [ 0, %102 ]
  %113 = phi i1 [ false, %107 ], [ true, %104 ], [ true, %102 ]
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = add i32 %103, 1
  %116 = load ptr, ptr %88, align 8, !tbaa !132
  %117 = zext i32 %112 to i64
  %118 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %116, i64 0, i32 2, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !35
  %120 = icmp eq ptr %119, null
  br i1 %120, label %102, label %123, !llvm.loop !143

121:                                              ; preds = %111
  br i1 %87, label %123, label %122

122:                                              ; preds = %121
  tail call void @free(ptr noundef %40)
  br label %123

123:                                              ; preds = %114, %121, %122, %11
  %124 = phi ptr [ null, %11 ], [ null, %122 ], [ null, %121 ], [ %119, %114 ]
  %125 = phi i32 [ 0, %11 ], [ %103, %122 ], [ %103, %121 ], [ %115, %114 ]
  %126 = phi ptr [ null, %11 ], [ null, %122 ], [ null, %121 ], [ %40, %114 ]
  %127 = icmp eq ptr %124, null
  br i1 %127, label %171, label %128

128:                                              ; preds = %123, %166
  %129 = phi ptr [ %169, %166 ], [ %126, %123 ]
  %130 = phi i32 [ %168, %166 ], [ %125, %123 ]
  %131 = phi ptr [ %167, %166 ], [ %124, %123 ]
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %136 = and i32 %135, 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @flow_loop_dump(ptr noundef nonnull %131, ptr noundef nonnull %132, ptr noundef null, i32 noundef 1) #21
  br label %139

139:                                              ; preds = %138, %134, %128
  call fastcc void @tree_ssa_iv_optimize_loop(ptr noundef nonnull %1, ptr noundef nonnull %131)
  %140 = icmp eq ptr %129, null
  %141 = load ptr, ptr @cfun, align 8
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 4
  br label %143

143:                                              ; preds = %155, %139
  %144 = phi i32 [ %130, %139 ], [ %156, %155 ]
  br i1 %140, label %152, label %145

145:                                              ; preds = %143
  %146 = load i32, ptr %129, align 4, !tbaa !138
  %147 = icmp ugt i32 %146, %144
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = zext i32 %144 to i64
  %150 = getelementptr inbounds %struct.VEC_int_base, ptr %129, i64 0, i32 2, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !50
  br label %152

152:                                              ; preds = %148, %145, %143
  %153 = phi i32 [ %151, %148 ], [ 0, %145 ], [ 0, %143 ]
  %154 = phi i1 [ false, %148 ], [ true, %145 ], [ true, %143 ]
  br i1 %154, label %164, label %155

155:                                              ; preds = %152
  %156 = add i32 %144, 1
  %157 = load ptr, ptr %142, align 8, !tbaa !131
  %158 = getelementptr inbounds %struct.loops, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !132
  %160 = zext i32 %153 to i64
  %161 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %159, i64 0, i32 2, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !35
  %163 = icmp eq ptr %162, null
  br i1 %163, label %143, label %166, !llvm.loop !143

164:                                              ; preds = %152
  br i1 %140, label %166, label %165

165:                                              ; preds = %164
  call void @free(ptr noundef %129)
  br label %166

166:                                              ; preds = %155, %164, %165
  %167 = phi ptr [ null, %165 ], [ null, %164 ], [ %162, %155 ]
  %168 = phi i32 [ %144, %165 ], [ %144, %164 ], [ %156, %155 ]
  %169 = phi ptr [ null, %165 ], [ null, %164 ], [ %129, %155 ]
  %170 = icmp eq ptr %167, null
  br i1 %170, label %171, label %128, !llvm.loop !144

171:                                              ; preds = %166, %123
  call fastcc void @free_loop_data(ptr noundef nonnull %1)
  %172 = load ptr, ptr %16, align 8, !tbaa !125
  call void @free(ptr noundef %172)
  %173 = load ptr, ptr %18, align 8, !tbaa !126
  call void @bitmap_obstack_free(ptr noundef %173) #21
  store ptr null, ptr %18, align 8, !tbaa !126
  %174 = load ptr, ptr %20, align 8, !tbaa !127
  call void @bitmap_obstack_free(ptr noundef %174) #21
  store ptr null, ptr %20, align 8, !tbaa !127
  %175 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !35
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  call void @free(ptr noundef %175)
  br label %178

178:                                              ; preds = %177, %171
  store ptr null, ptr @decl_rtl_to_reset, align 8, !tbaa !35
  %179 = load ptr, ptr %24, align 8, !tbaa !35
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @free(ptr noundef %179)
  br label %182

182:                                              ; preds = %181, %178
  store ptr null, ptr %24, align 8, !tbaa !35
  %183 = load ptr, ptr %26, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  call void @free(ptr noundef %183)
  br label %186

186:                                              ; preds = %182, %185
  store ptr null, ptr %26, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #21
  ret void
}

declare void @flow_loop_dump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @tree_ssa_iv_optimize_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.affine_tree_combination, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %struct.gimple_stmt_iterator, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca %struct.gimple_stmt_iterator, align 8
  %25 = alloca %struct.gimple_stmt_iterator, align 8
  %26 = alloca %struct.gimple_stmt_iterator, align 8
  %27 = alloca %struct.affine_iv, align 8
  %28 = alloca %struct.affine_iv, align 8
  %29 = alloca %struct.gimple_stmt_iterator, align 8
  %30 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #21
  %31 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5787, ptr noundef nonnull @.str.13) #21
  br label %35

35:                                               ; preds = %2, %34
  store ptr %1, ptr %0, align 8, !tbaa !145
  %36 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %1) #21
  %37 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  store i8 %36, ptr %37, align 1, !tbaa !146
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %1, align 8, !tbaa !137
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.31, i32 noundef %45)
  %47 = tail call ptr @single_exit(ptr noundef nonnull %1) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %47, align 8, !tbaa !54
  %51 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef nonnull %1, ptr noundef %50) #21
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, ptr null, ptr %47
  br label %54

54:                                               ; preds = %44, %49
  %55 = phi ptr [ null, %44 ], [ %53, %49 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %59 = load ptr, ptr %55, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !147
  %62 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !149
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !147
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.32, i32 noundef %61, i32 noundef %65)
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %68 = load ptr, ptr %55, align 8, !tbaa !54
  %69 = tail call ptr @last_stmt(ptr noundef %68) #21
  tail call void @print_gimple_stmt(ptr noundef %67, ptr noundef %69, i32 noundef 0, i32 noundef 2) #21
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %71 = tail call i32 @fputc(i32 10, ptr %70)
  br label %72

72:                                               ; preds = %57, %54
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %74 = tail call i32 @fputc(i32 10, ptr %73)
  br label %75

75:                                               ; preds = %72, %40, %35
  %76 = tail call ptr @get_loop_body(ptr noundef %1) #21
  %77 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !150
  tail call void @renumber_gimple_stmt_uids_in_blocks(ptr noundef %76, i32 noundef %78) #21
  tail call void @free(ptr noundef %76)
  %79 = load ptr, ptr %0, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #21
  %80 = getelementptr inbounds %struct.loop, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !151
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %29, ptr noundef %81) #21
  %82 = load ptr, ptr %29, align 8, !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #21
  %83 = icmp eq ptr %82, null
  br i1 %83, label %153, label %84

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.affine_iv, ptr %28, i64 0, i32 1
  br label %86

86:                                               ; preds = %84, %148
  %87 = phi i8 [ 0, %84 ], [ %149, %148 ]
  %88 = phi ptr [ %82, %84 ], [ %151, %148 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !153
  %90 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 4194304
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.gimple_statement_base, ptr %89, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #21
  %100 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %91) #21
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %95
  %103 = call zeroext i8 @simple_iv(ptr noundef %99, ptr noundef %99, ptr noundef nonnull %91, ptr noundef nonnull %28, i8 noundef zeroext 1) #21
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %85, align 8, !tbaa !156
  %107 = call i32 @integer_zerop(ptr noundef %106) #21
  %108 = icmp eq i32 %107, 0
  %109 = load ptr, ptr %85, align 8
  %110 = select i1 %108, ptr %109, ptr null
  br label %111

111:                                              ; preds = %105, %102, %95
  %112 = phi ptr [ %110, %105 ], [ null, %95 ], [ null, %102 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #21
  %113 = icmp eq ptr %112, null
  br i1 %113, label %148, label %114

114:                                              ; preds = %111
  %115 = call ptr @loop_preheader_edge(ptr noundef %79) #21
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 6
  %117 = load i32, ptr %116, align 4, !tbaa !158
  %118 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !46
  %120 = icmp ult i32 %119, %117
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #21
  br label %122

122:                                              ; preds = %121, %114
  %123 = zext i32 %117 to i64
  %124 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 4, i64 %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !159
  %126 = load ptr, ptr %125, align 8, !tbaa !35
  %127 = call ptr @expand_simple_operations(ptr noundef %126) #21
  %128 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %127), !range !81
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %122
  %131 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef nonnull %112), !range !81
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load ptr, ptr %90, align 8, !tbaa !35
  %135 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %136, ptr noundef %127) #21
  %138 = load i64, ptr %136, align 8
  %139 = trunc i64 %138 to i16
  switch i16 %139, label %143 [
    i16 10, label %140
    i16 12, label %140
  ]

140:                                              ; preds = %133, %133
  %141 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %142 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %141, ptr noundef nonnull %112) #21
  br label %145

143:                                              ; preds = %133
  %144 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %136, ptr noundef nonnull %112) #21
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi ptr [ %142, %140 ], [ %144, %143 ]
  %147 = load ptr, ptr %90, align 8, !tbaa !35
  call fastcc void @set_iv(ptr noundef nonnull %0, ptr noundef %147, ptr noundef %137, ptr noundef %146)
  br label %148

148:                                              ; preds = %145, %130, %122, %111, %86
  %149 = phi i8 [ %87, %86 ], [ %87, %122 ], [ %87, %130 ], [ 1, %145 ], [ %87, %111 ]
  %150 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %88, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !161
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %86, !llvm.loop !162

153:                                              ; preds = %148, %75
  %154 = phi i8 [ 0, %75 ], [ %149, %148 ]
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %3006, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %0, align 8, !tbaa !145
  %158 = call ptr @get_loop_body_in_dom_order(ptr noundef %157) #21
  %159 = getelementptr inbounds %struct.loop, ptr %157, i64 0, i32 6
  %160 = load i32, ptr %159, align 4, !tbaa !150
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %258, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.affine_iv, ptr %27, i64 0, i32 1
  br label %164

164:                                              ; preds = %162, %253
  %165 = phi i64 [ 0, %162 ], [ %254, %253 ]
  %166 = getelementptr inbounds ptr, ptr %158, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !35
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %167, i64 0, i32 13
  %169 = load i32, ptr %168, align 8, !tbaa !163, !noalias !164
  %170 = and i32 %169, 512
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %167, i64 0, i32 7
  %174 = load ptr, ptr %173, align 8, !tbaa !46, !noalias !164
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %174, align 8, !tbaa !167, !noalias !164
  br label %178

178:                                              ; preds = %176, %172, %164
  %179 = phi ptr [ %177, %176 ], [ null, %172 ], [ null, %164 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %179, align 8, !tbaa !169, !noalias !164
  br label %183

183:                                              ; preds = %181, %178
  %184 = phi ptr [ %182, %181 ], [ null, %178 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %253, label %186

186:                                              ; preds = %183, %249
  %187 = phi ptr [ %251, %249 ], [ %184, %183 ]
  %188 = load ptr, ptr %187, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #21
  %189 = load ptr, ptr %0, align 8, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %190 = load i32, ptr %188, align 8
  %191 = and i32 %190, 255
  %192 = icmp eq i32 %191, 6
  br i1 %192, label %193, label %249

193:                                              ; preds = %186
  %194 = zext nneg i32 %191 to i64
  %195 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !50
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !89
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %202

202:                                              ; preds = %201, %193
  %203 = getelementptr inbounds i8, ptr %188, i64 %199
  %204 = load ptr, ptr %203, align 8, !tbaa !35
  %205 = load i64, ptr %204, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 141
  br i1 %207, label %208, label %249

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.gimple_statement_base, ptr %188, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %210, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !155
  br label %215

215:                                              ; preds = %212, %208
  %216 = phi ptr [ %214, %212 ], [ null, %208 ]
  %217 = call zeroext i8 @simple_iv(ptr noundef %189, ptr noundef %216, ptr noundef nonnull %204, ptr noundef nonnull %27, i8 noundef zeroext 1) #21
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %249, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %27, align 8, !tbaa !171
  %221 = call ptr @expand_simple_operations(ptr noundef %220) #21
  store ptr %221, ptr %27, align 8, !tbaa !171
  %222 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %221), !range !81
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %249

224:                                              ; preds = %219
  %225 = load ptr, ptr %163, align 8, !tbaa !156
  %226 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %225), !range !81
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %249

228:                                              ; preds = %224
  %229 = load i32, ptr %188, align 8
  %230 = and i32 %229, 255
  %231 = add nsw i32 %230, -10
  %232 = icmp ult i32 %231, -9
  br i1 %232, label %245, label %233

233:                                              ; preds = %228
  %234 = zext nneg i32 %230 to i64
  %235 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !89
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %242

242:                                              ; preds = %241, %233
  %243 = getelementptr inbounds i8, ptr %188, i64 %239
  %244 = load ptr, ptr %243, align 8, !tbaa !35
  br label %245

245:                                              ; preds = %242, %228
  %246 = phi ptr [ %244, %242 ], [ null, %228 ]
  %247 = load ptr, ptr %27, align 8, !tbaa !171
  %248 = load ptr, ptr %163, align 8, !tbaa !156
  call fastcc void @set_iv(ptr noundef nonnull %0, ptr noundef %246, ptr noundef %247, ptr noundef %248)
  br label %249

249:                                              ; preds = %245, %224, %219, %215, %202, %186
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #21
  %250 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %187, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !161
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %186, !llvm.loop !172

253:                                              ; preds = %249, %183
  %254 = add nuw nsw i64 %165, 1
  %255 = load i32, ptr %159, align 4, !tbaa !150
  %256 = zext i32 %255 to i64
  %257 = icmp ult i64 %254, %256
  br i1 %257, label %164, label %258, !llvm.loop !173

258:                                              ; preds = %253, %156
  call void @free(ptr noundef %158)
  %259 = load ptr, ptr %0, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #21
  %260 = getelementptr inbounds %struct.loop, ptr %259, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !151
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %26, ptr noundef %261) #21
  %262 = load ptr, ptr %26, align 8, !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #21
  %263 = icmp eq ptr %262, null
  br i1 %263, label %307, label %264

264:                                              ; preds = %258, %303
  %265 = phi ptr [ %305, %303 ], [ %262, %258 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !153
  %267 = getelementptr inbounds %struct.gimple_statement_phi, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !35
  %269 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %268)
  %270 = icmp eq ptr %269, null
  br i1 %270, label %303, label %271

271:                                              ; preds = %264
  %272 = call ptr @loop_latch_edge(ptr noundef %259) #21
  %273 = getelementptr inbounds %struct.edge_def, ptr %272, i64 0, i32 6
  %274 = load i32, ptr %273, align 4, !tbaa !158
  %275 = getelementptr inbounds %struct.gimple_statement_phi, ptr %266, i64 0, i32 1
  %276 = load i32, ptr %275, align 8, !tbaa !46
  %277 = icmp ult i32 %276, %274
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #21
  br label %279

279:                                              ; preds = %278, %271
  %280 = zext i32 %274 to i64
  %281 = getelementptr inbounds %struct.gimple_statement_phi, ptr %266, i64 0, i32 4, i64 %280, i32 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !159
  %283 = load ptr, ptr %282, align 8, !tbaa !35
  %284 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %283)
  %285 = icmp eq ptr %284, null
  br i1 %285, label %303, label %286

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.tree_ssa_name, ptr %283, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !46
  %289 = getelementptr inbounds %struct.gimple_statement_base, ptr %288, i64 0, i32 4
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %290, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !155
  %293 = load ptr, ptr %0, align 8, !tbaa !145
  %294 = icmp eq ptr %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.basic_block_def, ptr %290, i64 0, i32 13
  %297 = load i32, ptr %296, align 8, !tbaa !163
  %298 = and i32 %297, 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.iv, ptr %269, i64 0, i32 4
  store i8 1, ptr %301, align 8, !tbaa !61
  %302 = getelementptr inbounds %struct.iv, ptr %284, i64 0, i32 4
  store i8 1, ptr %302, align 8, !tbaa !61
  br label %303

303:                                              ; preds = %300, %295, %286, %279, %264
  %304 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %265, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !161
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %264, !llvm.loop !174

307:                                              ; preds = %303, %258
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %309 = icmp eq ptr %308, null
  br i1 %309, label %426, label %310

310:                                              ; preds = %307
  %311 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %312 = and i32 %311, 8
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %426, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %0, align 8, !tbaa !145
  %316 = call ptr @single_exit(ptr noundef %315) #21
  %317 = icmp eq ptr %316, null
  br i1 %317, label %323, label %318

318:                                              ; preds = %314
  %319 = load ptr, ptr %316, align 8, !tbaa !54
  %320 = call zeroext i8 @just_once_each_iteration_p(ptr noundef %315, ptr noundef %319) #21
  %321 = icmp eq i8 %320, 0
  %322 = select i1 %321, ptr null, ptr %316
  br label %323

323:                                              ; preds = %318, %314
  %324 = phi ptr [ null, %314 ], [ %322, %318 ]
  %325 = icmp eq ptr %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = call fastcc ptr @niter_for_exit(ptr noundef nonnull %0, ptr noundef nonnull %324)
  br label %328

328:                                              ; preds = %326, %323
  %329 = phi ptr [ %327, %326 ], [ null, %323 ]
  %330 = icmp eq ptr %329, null
  br i1 %330, label %337, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %333 = call i64 @fwrite(ptr nonnull @.str.33, i64 23, i64 1, ptr %332)
  %334 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %334, ptr noundef nonnull %329, i32 noundef 2) #21
  %335 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %336 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %335)
  br label %337

337:                                              ; preds = %331, %328
  %338 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %339 = call i64 @fwrite(ptr nonnull @.str.35, i64 22, i64 1, ptr %338)
  %340 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %341 = load ptr, ptr %340, align 8, !tbaa !126
  %342 = load ptr, ptr %341, align 8, !tbaa !175
  %343 = icmp eq ptr %342, null
  %344 = select i1 %343, ptr @bitmap_zero_bits, ptr %342
  %345 = getelementptr inbounds %struct.bitmap_element_def, ptr %344, i64 0, i32 2
  %346 = load i32, ptr %345, align 8, !tbaa !177
  %347 = shl i32 %346, 7
  %348 = getelementptr inbounds %struct.bitmap_element_def, ptr %344, i64 0, i32 3
  %349 = load i64, ptr %348, align 8, !tbaa !89
  %350 = icmp eq i64 %349, 0
  %351 = zext i1 %350 to i32
  %352 = or disjoint i32 %347, %351
  %353 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  br label %354

354:                                              ; preds = %423, %337
  %355 = phi i64 [ %349, %337 ], [ %424, %423 ]
  %356 = phi i32 [ 0, %337 ], [ %411, %423 ]
  %357 = phi i32 [ %352, %337 ], [ %425, %423 ]
  %358 = phi ptr [ %344, %337 ], [ %413, %423 ]
  %359 = icmp eq i64 %355, 0
  br i1 %359, label %374, label %360

360:                                              ; preds = %388, %354
  %361 = phi i64 [ %355, %354 ], [ %393, %388 ]
  %362 = phi i32 [ %356, %354 ], [ %389, %388 ]
  %363 = phi i32 [ %357, %354 ], [ %390, %388 ]
  %364 = phi ptr [ %358, %354 ], [ %381, %388 ]
  %365 = and i64 %361, 1
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %409

367:                                              ; preds = %360, %367
  %368 = phi i32 [ %371, %367 ], [ %363, %360 ]
  %369 = phi i64 [ %370, %367 ], [ %361, %360 ]
  %370 = lshr exact i64 %369, 1
  %371 = add i32 %368, 1
  %372 = and i64 %369, 2
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %367, label %409, !llvm.loop !179

374:                                              ; preds = %354
  %375 = add i32 %357, 63
  %376 = and i32 %375, -64
  %377 = add i32 %356, 1
  br label %378

378:                                              ; preds = %405, %374
  %379 = phi i64 [ %355, %374 ], [ %400, %405 ]
  %380 = phi i32 [ %376, %374 ], [ %408, %405 ]
  %381 = phi ptr [ %358, %374 ], [ %403, %405 ]
  %382 = phi i32 [ %377, %374 ], [ 0, %405 ]
  %383 = icmp eq i32 %382, 2
  br i1 %383, label %399, label %384

384:                                              ; preds = %378
  %385 = add i32 %380, 128
  %386 = shl i32 %382, 6
  %387 = sub i32 %385, %386
  br label %388

388:                                              ; preds = %384, %395
  %389 = phi i32 [ %397, %395 ], [ %382, %384 ]
  %390 = phi i32 [ %396, %395 ], [ %380, %384 ]
  %391 = zext i32 %389 to i64
  %392 = getelementptr inbounds %struct.bitmap_element_def, ptr %381, i64 0, i32 3, i64 %391
  %393 = load i64, ptr %392, align 8, !tbaa !89
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %360

395:                                              ; preds = %388
  %396 = add i32 %390, 64
  %397 = add i32 %389, 1
  %398 = icmp eq i32 %397, 2
  br i1 %398, label %399, label %388, !llvm.loop !180

399:                                              ; preds = %395, %378
  %400 = phi i64 [ %379, %378 ], [ %393, %395 ]
  %401 = phi i32 [ %380, %378 ], [ %387, %395 ]
  %402 = phi i32 [ %382, %378 ], [ 2, %395 ]
  %403 = load ptr, ptr %381, align 8, !tbaa !181
  %404 = icmp eq ptr %403, null
  br i1 %404, label %409, label %405

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.bitmap_element_def, ptr %403, i64 0, i32 2
  %407 = load i32, ptr %406, align 8, !tbaa !177
  %408 = shl i32 %407, 7
  br label %378, !llvm.loop !182

409:                                              ; preds = %399, %367, %360
  %410 = phi i64 [ %361, %360 ], [ %370, %367 ], [ %400, %399 ]
  %411 = phi i32 [ %362, %360 ], [ %362, %367 ], [ %402, %399 ]
  %412 = phi i32 [ %363, %360 ], [ %371, %367 ], [ %401, %399 ]
  %413 = phi ptr [ %364, %360 ], [ %364, %367 ], [ %403, %399 ]
  %414 = phi i1 [ false, %360 ], [ false, %367 ], [ true, %399 ]
  br i1 %414, label %426, label %415

415:                                              ; preds = %409
  %416 = load ptr, ptr %353, align 8, !tbaa !125
  %417 = zext i32 %412 to i64
  %418 = getelementptr inbounds %struct.version_info, ptr %416, i64 %417, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !183
  %420 = icmp eq ptr %419, null
  br i1 %420, label %423, label %421

421:                                              ; preds = %415
  %422 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_iv(ptr noundef %422, ptr noundef nonnull %419)
  br label %423

423:                                              ; preds = %421, %415
  %424 = lshr i64 %410, 1
  %425 = add i32 %412, 1
  br label %354, !llvm.loop !185

426:                                              ; preds = %409, %307, %310
  br i1 %155, label %3006, label %427

427:                                              ; preds = %426
  %428 = load ptr, ptr %0, align 8, !tbaa !145
  %429 = call ptr @get_loop_body(ptr noundef %428) #21
  %430 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %431 = icmp eq ptr %430, null
  br i1 %431, label %438, label %432

432:                                              ; preds = %427
  %433 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %434 = and i32 %433, 8
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %432
  %437 = call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr nonnull %430)
  br label %438

438:                                              ; preds = %436, %432, %427
  %439 = load ptr, ptr %0, align 8, !tbaa !145
  %440 = getelementptr inbounds %struct.loop, ptr %439, i64 0, i32 6
  %441 = load i32, ptr %440, align 4, !tbaa !150
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %560, label %443

443:                                              ; preds = %438, %553
  %444 = phi i64 [ %554, %553 ], [ 0, %438 ]
  %445 = getelementptr inbounds ptr, ptr %429, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !35
  %447 = getelementptr inbounds %struct.basic_block_def, ptr %446, i64 0, i32 1
  br label %448

448:                                              ; preds = %512, %443
  %449 = phi i32 [ 0, %443 ], [ %513, %512 ]
  %450 = load ptr, ptr %447, align 8, !tbaa !35
  %451 = icmp eq ptr %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %448
  %453 = load i32, ptr %450, align 8, !tbaa !186
  br label %454

454:                                              ; preds = %452, %448
  %455 = phi i32 [ %453, %452 ], [ 0, %448 ]
  %456 = icmp eq i32 %455, %449
  br i1 %456, label %461, label %457

457:                                              ; preds = %454
  %458 = zext i32 %449 to i64
  %459 = getelementptr inbounds %struct.VEC_edge_base, ptr %450, i64 0, i32 2, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !35
  br label %461

461:                                              ; preds = %457, %454
  %462 = phi ptr [ %460, %457 ], [ null, %454 ]
  br i1 %456, label %514, label %463

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.edge_def, ptr %462, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !149
  %466 = load ptr, ptr @cfun, align 8, !tbaa !35
  %467 = getelementptr inbounds %struct.function, ptr %466, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !188
  %469 = getelementptr inbounds %struct.control_flow_graph, ptr %468, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !189
  %471 = icmp eq ptr %465, %470
  br i1 %471, label %503, label %472

472:                                              ; preds = %463
  %473 = load ptr, ptr %0, align 8, !tbaa !145
  %474 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %473, ptr noundef %465) #21
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %503

476:                                              ; preds = %472
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #21
  %477 = load ptr, ptr %464, align 8, !tbaa !149
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %24, ptr noundef %477) #21
  %478 = load ptr, ptr %24, align 8, !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #21
  %479 = icmp eq ptr %478, null
  br i1 %479, label %503, label %480

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.edge_def, ptr %462, i64 0, i32 6
  br label %482

482:                                              ; preds = %480, %499
  %483 = phi ptr [ %478, %480 ], [ %501, %499 ]
  %484 = load ptr, ptr %483, align 8, !tbaa !153
  %485 = load i32, ptr %481, align 4, !tbaa !158
  %486 = getelementptr inbounds %struct.gimple_statement_phi, ptr %484, i64 0, i32 1
  %487 = load i32, ptr %486, align 8, !tbaa !46
  %488 = icmp ult i32 %487, %485
  br i1 %488, label %489, label %490

489:                                              ; preds = %482
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #21
  br label %490

490:                                              ; preds = %489, %482
  %491 = zext i32 %485 to i64
  %492 = getelementptr inbounds %struct.gimple_statement_phi, ptr %484, i64 0, i32 4, i64 %491, i32 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !159
  %494 = load ptr, ptr %493, align 8, !tbaa !35
  %495 = call zeroext i8 @is_gimple_reg(ptr noundef %494) #21
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %490
  %498 = call fastcc ptr @find_interesting_uses_op(ptr noundef nonnull %0, ptr noundef %494)
  br label %499

499:                                              ; preds = %497, %490
  %500 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %483, i64 0, i32 2
  %501 = load ptr, ptr %500, align 8, !tbaa !161
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %482, !llvm.loop !191

503:                                              ; preds = %499, %476, %472, %463
  %504 = load ptr, ptr %447, align 8, !tbaa !35
  %505 = icmp eq ptr %504, null
  br i1 %505, label %508, label %506

506:                                              ; preds = %503
  %507 = load i32, ptr %504, align 8, !tbaa !186
  br label %508

508:                                              ; preds = %506, %503
  %509 = phi i32 [ %507, %506 ], [ 0, %503 ]
  %510 = icmp ult i32 %449, %509
  br i1 %510, label %512, label %511

511:                                              ; preds = %508
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 738, ptr noundef nonnull @.str.13) #21
  br label %512

512:                                              ; preds = %511, %508
  %513 = add i32 %449, 1
  br label %448, !llvm.loop !192

514:                                              ; preds = %461
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %25, ptr noundef %446) #21
  %515 = load ptr, ptr %25, align 8, !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #21
  %516 = icmp eq ptr %515, null
  br i1 %516, label %523, label %517

517:                                              ; preds = %514, %517
  %518 = phi ptr [ %521, %517 ], [ %515, %514 ]
  %519 = load ptr, ptr %518, align 8, !tbaa !153
  call fastcc void @find_interesting_uses_stmt(ptr noundef nonnull %0, ptr noundef %519)
  %520 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %518, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !161
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %517, !llvm.loop !193

523:                                              ; preds = %517, %514
  %524 = getelementptr inbounds %struct.basic_block_def, ptr %446, i64 0, i32 13
  %525 = load i32, ptr %524, align 8, !tbaa !163, !noalias !194
  %526 = and i32 %525, 512
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %523
  %529 = getelementptr inbounds %struct.basic_block_def, ptr %446, i64 0, i32 7
  %530 = load ptr, ptr %529, align 8, !tbaa !46, !noalias !194
  %531 = icmp eq ptr %530, null
  br i1 %531, label %534, label %532

532:                                              ; preds = %528
  %533 = load ptr, ptr %530, align 8, !tbaa !167, !noalias !194
  br label %534

534:                                              ; preds = %532, %528, %523
  %535 = phi ptr [ %533, %532 ], [ null, %528 ], [ null, %523 ]
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537

537:                                              ; preds = %534
  %538 = load ptr, ptr %535, align 8, !tbaa !169, !noalias !194
  br label %539

539:                                              ; preds = %537, %534
  %540 = phi ptr [ %538, %537 ], [ null, %534 ]
  %541 = icmp eq ptr %540, null
  br i1 %541, label %553, label %542

542:                                              ; preds = %539, %549
  %543 = phi ptr [ %551, %549 ], [ %540, %539 ]
  %544 = load ptr, ptr %543, align 8, !tbaa !153
  %545 = load i32, ptr %544, align 8
  %546 = and i32 %545, 255
  %547 = icmp eq i32 %546, 2
  br i1 %547, label %549, label %548

548:                                              ; preds = %542
  call fastcc void @find_interesting_uses_stmt(ptr noundef nonnull %0, ptr noundef nonnull %544)
  br label %549

549:                                              ; preds = %548, %542
  %550 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %543, i64 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !161
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %542, !llvm.loop !197

553:                                              ; preds = %549, %539
  %554 = add nuw nsw i64 %444, 1
  %555 = load ptr, ptr %0, align 8, !tbaa !145
  %556 = getelementptr inbounds %struct.loop, ptr %555, i64 0, i32 6
  %557 = load i32, ptr %556, align 4, !tbaa !150
  %558 = zext i32 %557 to i64
  %559 = icmp ult i64 %554, %558
  br i1 %559, label %443, label %560, !llvm.loop !198

560:                                              ; preds = %553, %438
  %561 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %562 = icmp eq ptr %561, null
  br i1 %562, label %669, label %563

563:                                              ; preds = %560
  %564 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %565 = and i32 %564, 8
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %669, label %567

567:                                              ; preds = %563
  %568 = call i32 @fputc(i32 10, ptr nonnull %561)
  %569 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %570 = load ptr, ptr %569, align 8, !tbaa !126
  %571 = load ptr, ptr %570, align 8, !tbaa !175
  %572 = icmp eq ptr %571, null
  %573 = select i1 %572, ptr @bitmap_zero_bits, ptr %571
  %574 = getelementptr inbounds %struct.bitmap_element_def, ptr %573, i64 0, i32 2
  %575 = load i32, ptr %574, align 8, !tbaa !177
  %576 = shl i32 %575, 7
  %577 = getelementptr inbounds %struct.bitmap_element_def, ptr %573, i64 0, i32 3
  %578 = load i64, ptr %577, align 8, !tbaa !89
  %579 = icmp eq i64 %578, 0
  %580 = zext i1 %579 to i32
  %581 = or disjoint i32 %576, %580
  %582 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  br label %583

583:                                              ; preds = %663, %567
  %584 = phi i32 [ %581, %567 ], [ %665, %663 ]
  %585 = phi i64 [ %578, %567 ], [ %664, %663 ]
  %586 = phi i32 [ 0, %567 ], [ %641, %663 ]
  %587 = phi ptr [ %573, %567 ], [ %642, %663 ]
  %588 = icmp eq i64 %585, 0
  br i1 %588, label %603, label %589

589:                                              ; preds = %617, %583
  %590 = phi i32 [ %584, %583 ], [ %619, %617 ]
  %591 = phi i64 [ %585, %583 ], [ %622, %617 ]
  %592 = phi i32 [ %586, %583 ], [ %618, %617 ]
  %593 = phi ptr [ %587, %583 ], [ %610, %617 ]
  %594 = and i64 %591, 1
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %638

596:                                              ; preds = %589, %596
  %597 = phi i64 [ %599, %596 ], [ %591, %589 ]
  %598 = phi i32 [ %600, %596 ], [ %590, %589 ]
  %599 = lshr exact i64 %597, 1
  %600 = add i32 %598, 1
  %601 = and i64 %597, 2
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %596, label %638, !llvm.loop !179

603:                                              ; preds = %583
  %604 = add i32 %584, 63
  %605 = and i32 %604, -64
  %606 = add i32 %586, 1
  br label %607

607:                                              ; preds = %634, %603
  %608 = phi i32 [ %605, %603 ], [ %637, %634 ]
  %609 = phi i64 [ %585, %603 ], [ %630, %634 ]
  %610 = phi ptr [ %587, %603 ], [ %632, %634 ]
  %611 = phi i32 [ %606, %603 ], [ 0, %634 ]
  %612 = icmp eq i32 %611, 2
  br i1 %612, label %628, label %613

613:                                              ; preds = %607
  %614 = add i32 %608, 128
  %615 = shl i32 %611, 6
  %616 = sub i32 %614, %615
  br label %617

617:                                              ; preds = %613, %624
  %618 = phi i32 [ %626, %624 ], [ %611, %613 ]
  %619 = phi i32 [ %625, %624 ], [ %608, %613 ]
  %620 = zext i32 %618 to i64
  %621 = getelementptr inbounds %struct.bitmap_element_def, ptr %610, i64 0, i32 3, i64 %620
  %622 = load i64, ptr %621, align 8, !tbaa !89
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %589

624:                                              ; preds = %617
  %625 = add i32 %619, 64
  %626 = add i32 %618, 1
  %627 = icmp eq i32 %626, 2
  br i1 %627, label %628, label %617, !llvm.loop !180

628:                                              ; preds = %624, %607
  %629 = phi i32 [ %608, %607 ], [ %616, %624 ]
  %630 = phi i64 [ %609, %607 ], [ %622, %624 ]
  %631 = phi i32 [ %611, %607 ], [ 2, %624 ]
  %632 = load ptr, ptr %610, align 8, !tbaa !181
  %633 = icmp eq ptr %632, null
  br i1 %633, label %638, label %634

634:                                              ; preds = %628
  %635 = getelementptr inbounds %struct.bitmap_element_def, ptr %632, i64 0, i32 2
  %636 = load i32, ptr %635, align 8, !tbaa !177
  %637 = shl i32 %636, 7
  br label %607, !llvm.loop !182

638:                                              ; preds = %628, %596, %589
  %639 = phi i32 [ %590, %589 ], [ %600, %596 ], [ %629, %628 ]
  %640 = phi i64 [ %591, %589 ], [ %599, %596 ], [ %630, %628 ]
  %641 = phi i32 [ %592, %589 ], [ %592, %596 ], [ %631, %628 ]
  %642 = phi ptr [ %593, %589 ], [ %593, %596 ], [ %632, %628 ]
  %643 = phi i1 [ false, %589 ], [ false, %596 ], [ true, %628 ]
  br i1 %643, label %666, label %644

644:                                              ; preds = %638
  %645 = load ptr, ptr %582, align 8, !tbaa !125
  %646 = zext i32 %639 to i64
  %647 = getelementptr inbounds %struct.version_info, ptr %645, i64 %646, i32 3
  %648 = load i32, ptr %647, align 4, !tbaa !199
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %663, label %650

650:                                              ; preds = %644
  %651 = getelementptr inbounds %struct.version_info, ptr %645, i64 %646
  %652 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %653 = call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %652)
  %654 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %655 = load ptr, ptr %651, align 8, !tbaa !200
  call void @print_generic_expr(ptr noundef %654, ptr noundef %655, i32 noundef 2) #21
  %656 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %657 = load i32, ptr %647, align 4, !tbaa !199
  %658 = getelementptr inbounds %struct.version_info, ptr %645, i64 %646, i32 2
  %659 = load i8, ptr %658, align 8, !tbaa !201
  %660 = icmp eq i8 %659, 0
  %661 = select i1 %660, ptr @.str.39, ptr @.str.17
  %662 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %656, ptr noundef nonnull @.str.38, i32 noundef %657, ptr noundef nonnull %661)
  br label %663

663:                                              ; preds = %650, %644
  %664 = lshr i64 %640, 1
  %665 = add i32 %639, 1
  br label %583, !llvm.loop !202

666:                                              ; preds = %638
  %667 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %668 = call i32 @fputc(i32 10, ptr %667)
  br label %669

669:                                              ; preds = %560, %563, %666
  call void @free(ptr noundef %429)
  %670 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %671 = load ptr, ptr %670, align 8, !tbaa !69
  %672 = icmp eq ptr %671, null
  br i1 %672, label %675, label %673

673:                                              ; preds = %669
  %674 = load i32, ptr %671, align 8, !tbaa !71
  br label %675

675:                                              ; preds = %669, %673
  %676 = phi i32 [ %674, %673 ], [ 0, %669 ]
  %677 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %678 = getelementptr inbounds %struct.param_info, ptr %677, i64 61, i32 1
  %679 = load i32, ptr %678, align 8, !tbaa !203
  %680 = icmp ugt i32 %676, %679
  br i1 %680, label %3006, label %681

681:                                              ; preds = %675
  %682 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !205
  %683 = call ptr %682(i32 noundef 32, i32 noundef 1) #21
  %684 = call ptr @build_int_cst(ptr noundef %683, i64 noundef 0) #21
  %685 = call ptr @build_int_cst(ptr noundef %683, i64 noundef 1) #21
  call fastcc void @add_candidate(ptr noundef nonnull %0, ptr noundef %684, ptr noundef %685, i8 noundef zeroext 1, ptr noundef null)
  %686 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %687 = load ptr, ptr %686, align 8, !tbaa !126
  %688 = load ptr, ptr %687, align 8, !tbaa !175
  %689 = icmp eq ptr %688, null
  %690 = select i1 %689, ptr @bitmap_zero_bits, ptr %688
  %691 = getelementptr inbounds %struct.bitmap_element_def, ptr %690, i64 0, i32 2
  %692 = load i32, ptr %691, align 8, !tbaa !177
  %693 = shl i32 %692, 7
  %694 = getelementptr inbounds %struct.bitmap_element_def, ptr %690, i64 0, i32 3
  %695 = load i64, ptr %694, align 8, !tbaa !89
  %696 = icmp eq i64 %695, 0
  %697 = zext i1 %696 to i32
  %698 = or disjoint i32 %693, %697
  %699 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  br label %700

700:                                              ; preds = %820, %681
  %701 = phi i64 [ %695, %681 ], [ %821, %820 ]
  %702 = phi i32 [ 0, %681 ], [ %757, %820 ]
  %703 = phi i32 [ %698, %681 ], [ %822, %820 ]
  %704 = phi ptr [ %690, %681 ], [ %759, %820 ]
  %705 = icmp eq i64 %701, 0
  br i1 %705, label %720, label %706

706:                                              ; preds = %734, %700
  %707 = phi i64 [ %701, %700 ], [ %739, %734 ]
  %708 = phi i32 [ %702, %700 ], [ %735, %734 ]
  %709 = phi i32 [ %703, %700 ], [ %736, %734 ]
  %710 = phi ptr [ %704, %700 ], [ %727, %734 ]
  %711 = and i64 %707, 1
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %713, label %755

713:                                              ; preds = %706, %713
  %714 = phi i32 [ %717, %713 ], [ %709, %706 ]
  %715 = phi i64 [ %716, %713 ], [ %707, %706 ]
  %716 = lshr exact i64 %715, 1
  %717 = add i32 %714, 1
  %718 = and i64 %715, 2
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %713, label %755, !llvm.loop !179

720:                                              ; preds = %700
  %721 = add i32 %703, 63
  %722 = and i32 %721, -64
  %723 = add i32 %702, 1
  br label %724

724:                                              ; preds = %751, %720
  %725 = phi i64 [ %701, %720 ], [ %746, %751 ]
  %726 = phi i32 [ %722, %720 ], [ %754, %751 ]
  %727 = phi ptr [ %704, %720 ], [ %749, %751 ]
  %728 = phi i32 [ %723, %720 ], [ 0, %751 ]
  %729 = icmp eq i32 %728, 2
  br i1 %729, label %745, label %730

730:                                              ; preds = %724
  %731 = add i32 %726, 128
  %732 = shl i32 %728, 6
  %733 = sub i32 %731, %732
  br label %734

734:                                              ; preds = %730, %741
  %735 = phi i32 [ %743, %741 ], [ %728, %730 ]
  %736 = phi i32 [ %742, %741 ], [ %726, %730 ]
  %737 = zext i32 %735 to i64
  %738 = getelementptr inbounds %struct.bitmap_element_def, ptr %727, i64 0, i32 3, i64 %737
  %739 = load i64, ptr %738, align 8, !tbaa !89
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %741, label %706

741:                                              ; preds = %734
  %742 = add i32 %736, 64
  %743 = add i32 %735, 1
  %744 = icmp eq i32 %743, 2
  br i1 %744, label %745, label %734, !llvm.loop !180

745:                                              ; preds = %741, %724
  %746 = phi i64 [ %725, %724 ], [ %739, %741 ]
  %747 = phi i32 [ %726, %724 ], [ %733, %741 ]
  %748 = phi i32 [ %728, %724 ], [ 2, %741 ]
  %749 = load ptr, ptr %727, align 8, !tbaa !181
  %750 = icmp eq ptr %749, null
  br i1 %750, label %755, label %751

751:                                              ; preds = %745
  %752 = getelementptr inbounds %struct.bitmap_element_def, ptr %749, i64 0, i32 2
  %753 = load i32, ptr %752, align 8, !tbaa !177
  %754 = shl i32 %753, 7
  br label %724, !llvm.loop !182

755:                                              ; preds = %745, %713, %706
  %756 = phi i64 [ %707, %706 ], [ %716, %713 ], [ %746, %745 ]
  %757 = phi i32 [ %708, %706 ], [ %708, %713 ], [ %748, %745 ]
  %758 = phi i32 [ %709, %706 ], [ %717, %713 ], [ %747, %745 ]
  %759 = phi ptr [ %710, %706 ], [ %710, %713 ], [ %749, %745 ]
  %760 = phi i1 [ false, %706 ], [ false, %713 ], [ true, %745 ]
  br i1 %760, label %823, label %761

761:                                              ; preds = %755
  %762 = load ptr, ptr %699, align 8, !tbaa !125
  %763 = zext i32 %758 to i64
  %764 = getelementptr inbounds %struct.version_info, ptr %762, i64 %763, i32 1
  %765 = load ptr, ptr %764, align 8, !tbaa !183
  %766 = icmp eq ptr %765, null
  br i1 %766, label %820, label %767

767:                                              ; preds = %761
  %768 = getelementptr inbounds %struct.iv, ptr %765, i64 0, i32 4
  %769 = load i8, ptr %768, align 8, !tbaa !61
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %820, label %771

771:                                              ; preds = %767
  %772 = getelementptr inbounds %struct.iv, ptr %765, i64 0, i32 2
  %773 = load ptr, ptr %772, align 8, !tbaa !59
  %774 = call i32 @integer_zerop(ptr noundef %773) #21
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %820

776:                                              ; preds = %771
  %777 = load ptr, ptr %765, align 8, !tbaa !58
  %778 = load ptr, ptr %772, align 8, !tbaa !59
  call fastcc void @add_candidate(ptr noundef nonnull %0, ptr noundef %777, ptr noundef %778, i8 noundef zeroext 1, ptr noundef null)
  %779 = load ptr, ptr %765, align 8, !tbaa !58
  %780 = getelementptr inbounds %struct.tree_common, ptr %779, i64 0, i32 2
  %781 = load ptr, ptr %780, align 8, !tbaa !46
  %782 = load i64, ptr %781, align 8
  %783 = trunc i64 %782 to i16
  switch i16 %783, label %786 [
    i16 10, label %784
    i16 12, label %784
  ]

784:                                              ; preds = %776, %776
  %785 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 0) #21
  br label %788

786:                                              ; preds = %776
  %787 = call ptr @build_int_cst(ptr noundef nonnull %781, i64 noundef 0) #21
  br label %788

788:                                              ; preds = %786, %784
  %789 = phi ptr [ %787, %786 ], [ %785, %784 ]
  %790 = load ptr, ptr %772, align 8, !tbaa !59
  call fastcc void @add_candidate(ptr noundef nonnull %0, ptr noundef %789, ptr noundef %790, i8 noundef zeroext 1, ptr noundef null)
  %791 = getelementptr inbounds %struct.iv, ptr %765, i64 0, i32 3
  %792 = load ptr, ptr %791, align 8, !tbaa !56
  %793 = getelementptr inbounds %struct.tree_ssa_name, ptr %792, i64 0, i32 2
  %794 = load ptr, ptr %793, align 8, !tbaa !46
  %795 = load i32, ptr %794, align 8
  %796 = and i32 %795, 255
  %797 = icmp eq i32 %796, 16
  br i1 %797, label %798, label %820

798:                                              ; preds = %788
  %799 = load ptr, ptr %0, align 8, !tbaa !145
  %800 = call ptr @loop_latch_edge(ptr noundef %799) #21
  %801 = getelementptr inbounds %struct.edge_def, ptr %800, i64 0, i32 6
  %802 = load i32, ptr %801, align 4, !tbaa !158
  %803 = getelementptr inbounds %struct.gimple_statement_phi, ptr %794, i64 0, i32 1
  %804 = load i32, ptr %803, align 8, !tbaa !46
  %805 = icmp ult i32 %804, %802
  br i1 %805, label %806, label %807

806:                                              ; preds = %798
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #21
  br label %807

807:                                              ; preds = %806, %798
  %808 = zext i32 %802 to i64
  %809 = getelementptr inbounds %struct.gimple_statement_phi, ptr %794, i64 0, i32 4, i64 %808, i32 0, i32 3
  %810 = load ptr, ptr %809, align 8, !tbaa !159
  %811 = load ptr, ptr %810, align 8, !tbaa !35
  %812 = load ptr, ptr %765, align 8, !tbaa !58
  %813 = load ptr, ptr %772, align 8, !tbaa !59
  %814 = getelementptr inbounds %struct.tree_ssa_name, ptr %811, i64 0, i32 2
  %815 = load ptr, ptr %814, align 8, !tbaa !46
  %816 = call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %812, ptr noundef %813, i8 noundef zeroext 1, i32 noundef 4, ptr noundef null, ptr noundef %815)
  %817 = load ptr, ptr %791, align 8, !tbaa !56
  %818 = getelementptr inbounds %struct.iv_cand, ptr %816, i64 0, i32 4
  store ptr %817, ptr %818, align 8, !tbaa !213
  %819 = getelementptr inbounds %struct.iv_cand, ptr %816, i64 0, i32 5
  store ptr %811, ptr %819, align 8, !tbaa !214
  br label %820

820:                                              ; preds = %807, %788, %771, %767, %761
  %821 = lshr i64 %756, 1
  %822 = add i32 %758, 1
  br label %700, !llvm.loop !215

823:                                              ; preds = %755, %871
  %824 = phi i64 [ %872, %871 ], [ 0, %755 ]
  %825 = load ptr, ptr %670, align 8, !tbaa !69
  %826 = icmp eq ptr %825, null
  br i1 %826, label %829, label %827

827:                                              ; preds = %823
  %828 = load i32, ptr %825, align 8, !tbaa !71
  br label %829

829:                                              ; preds = %827, %823
  %830 = phi i32 [ %828, %827 ], [ 0, %823 ]
  %831 = zext i32 %830 to i64
  %832 = icmp ult i64 %824, %831
  br i1 %832, label %835, label %833

833:                                              ; preds = %829
  %834 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  br label %873

835:                                              ; preds = %829
  %836 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %825, i64 0, i32 2, i64 %824
  %837 = load ptr, ptr %836, align 8, !tbaa !35
  %838 = icmp eq ptr %837, null
  br i1 %838, label %871, label %839

839:                                              ; preds = %835
  %840 = getelementptr inbounds %struct.iv_use, ptr %837, i64 0, i32 1
  %841 = load i32, ptr %840, align 4, !tbaa !64
  %842 = icmp ult i32 %841, 3
  br i1 %842, label %843, label %870

843:                                              ; preds = %839
  %844 = getelementptr inbounds %struct.iv_use, ptr %837, i64 0, i32 2
  %845 = load ptr, ptr %844, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #21
  %846 = load ptr, ptr %845, align 8, !tbaa !58
  %847 = getelementptr inbounds %struct.iv, ptr %845, i64 0, i32 2
  %848 = load ptr, ptr %847, align 8, !tbaa !59
  call fastcc void @add_candidate(ptr noundef nonnull %0, ptr noundef %846, ptr noundef %848, i8 noundef zeroext 0, ptr noundef nonnull %837)
  %849 = load ptr, ptr %845, align 8, !tbaa !58
  %850 = getelementptr inbounds %struct.tree_common, ptr %849, i64 0, i32 2
  %851 = load ptr, ptr %850, align 8, !tbaa !46
  %852 = load i64, ptr %851, align 8
  %853 = trunc i64 %852 to i16
  switch i16 %853, label %856 [
    i16 10, label %854
    i16 12, label %854
  ]

854:                                              ; preds = %843, %843
  %855 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %856

856:                                              ; preds = %854, %843
  %857 = phi ptr [ %855, %854 ], [ %851, %843 ]
  %858 = call ptr @build_int_cst(ptr noundef %857, i64 noundef 0) #21
  %859 = load ptr, ptr %847, align 8, !tbaa !59
  call fastcc void @add_candidate(ptr noundef nonnull %0, ptr noundef %858, ptr noundef %859, i8 noundef zeroext 1, ptr noundef nonnull %837)
  %860 = load ptr, ptr %845, align 8, !tbaa !58
  %861 = call fastcc ptr @strip_offset_1(ptr noundef %860, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %23)
  %862 = load i64, ptr %23, align 8, !tbaa !89
  %863 = icmp eq i64 %862, 0
  br i1 %863, label %864, label %867

864:                                              ; preds = %856
  %865 = load ptr, ptr %845, align 8, !tbaa !58
  %866 = icmp eq ptr %861, %865
  br i1 %866, label %869, label %867

867:                                              ; preds = %864, %856
  %868 = load ptr, ptr %847, align 8, !tbaa !59
  call fastcc void @add_candidate(ptr noundef nonnull %0, ptr noundef %861, ptr noundef %868, i8 noundef zeroext 0, ptr noundef nonnull %837)
  br label %869

869:                                              ; preds = %867, %864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #21
  br label %871

870:                                              ; preds = %839
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2417, ptr noundef nonnull @.str.13) #21
  br label %871

871:                                              ; preds = %870, %869, %835
  %872 = add nuw nsw i64 %824, 1
  br label %823, !llvm.loop !216

873:                                              ; preds = %833, %954
  %874 = phi i64 [ 0, %833 ], [ %955, %954 ]
  %875 = load ptr, ptr %834, align 8, !tbaa !130
  %876 = icmp eq ptr %875, null
  br i1 %876, label %879, label %877

877:                                              ; preds = %873
  %878 = load i32, ptr %875, align 8, !tbaa !217
  br label %879

879:                                              ; preds = %877, %873
  %880 = phi i32 [ %878, %877 ], [ 0, %873 ]
  %881 = zext i32 %880 to i64
  %882 = icmp ult i64 %874, %881
  br i1 %882, label %886, label %883

883:                                              ; preds = %879
  %884 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %885 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %956

886:                                              ; preds = %879
  %887 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %875, i64 0, i32 2, i64 %874
  %888 = load ptr, ptr %887, align 8, !tbaa !35
  %889 = getelementptr inbounds %struct.iv_cand, ptr %888, i64 0, i32 2
  %890 = load i32, ptr %889, align 8, !tbaa !79
  %891 = icmp eq i32 %890, 4
  br i1 %891, label %892, label %954

892:                                              ; preds = %886
  %893 = load ptr, ptr %670, align 8, !tbaa !69
  %894 = icmp eq ptr %893, null
  %895 = getelementptr inbounds %struct.iv_cand, ptr %888, i64 0, i32 3
  br label %896

896:                                              ; preds = %892, %931
  %897 = phi i64 [ 0, %892 ], [ %933, %931 ]
  %898 = phi ptr [ null, %892 ], [ %932, %931 ]
  br i1 %894, label %901, label %899

899:                                              ; preds = %896
  %900 = load i32, ptr %893, align 8, !tbaa !71
  br label %901

901:                                              ; preds = %899, %896
  %902 = phi i32 [ %900, %899 ], [ 0, %896 ]
  %903 = zext i32 %902 to i64
  %904 = icmp ult i64 %897, %903
  br i1 %904, label %905, label %934

905:                                              ; preds = %901
  %906 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %893, i64 0, i32 2, i64 %897
  %907 = load ptr, ptr %906, align 8, !tbaa !35
  %908 = getelementptr inbounds %struct.iv_use, ptr %907, i64 0, i32 3
  %909 = load ptr, ptr %908, align 8, !tbaa !65
  %910 = getelementptr inbounds %struct.gimple_statement_base, ptr %909, i64 0, i32 1
  %911 = load i32, ptr %910, align 4, !tbaa !46
  %912 = getelementptr inbounds %struct.gimple_statement_base, ptr %909, i64 0, i32 4
  %913 = load ptr, ptr %912, align 8, !tbaa !46
  %914 = load ptr, ptr %895, align 8, !tbaa !219
  %915 = getelementptr inbounds %struct.gimple_statement_base, ptr %914, i64 0, i32 4
  %916 = load ptr, ptr %915, align 8, !tbaa !46
  %917 = icmp eq ptr %913, %916
  br i1 %917, label %918, label %931

918:                                              ; preds = %905
  %919 = getelementptr inbounds %struct.gimple_statement_base, ptr %914, i64 0, i32 1
  %920 = load i32, ptr %919, align 4, !tbaa !46
  %921 = icmp ugt i32 %911, %920
  br i1 %921, label %931, label %922

922:                                              ; preds = %918
  %923 = icmp eq ptr %898, null
  br i1 %923, label %930, label %924

924:                                              ; preds = %922
  %925 = getelementptr inbounds %struct.iv_use, ptr %898, i64 0, i32 3
  %926 = load ptr, ptr %925, align 8, !tbaa !65
  %927 = getelementptr inbounds %struct.gimple_statement_base, ptr %926, i64 0, i32 1
  %928 = load i32, ptr %927, align 4, !tbaa !46
  %929 = icmp ugt i32 %911, %928
  br i1 %929, label %930, label %931

930:                                              ; preds = %924, %922
  br label %931

931:                                              ; preds = %930, %924, %918, %905
  %932 = phi ptr [ %898, %918 ], [ %898, %905 ], [ %907, %930 ], [ %898, %924 ]
  %933 = add nuw nsw i64 %897, 1
  br label %896, !llvm.loop !220

934:                                              ; preds = %901
  %935 = icmp eq ptr %898, null
  br i1 %935, label %954, label %936

936:                                              ; preds = %934
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #21
  %937 = getelementptr inbounds %struct.iv_use, ptr %898, i64 0, i32 1
  %938 = load i32, ptr %937, align 4, !tbaa !64
  %939 = icmp eq i32 %938, 1
  br i1 %939, label %940, label %949

940:                                              ; preds = %936
  %941 = call fastcc i64 @get_computation_cost(ptr noundef nonnull %0, ptr noundef nonnull %898, ptr noundef %888, i8 noundef zeroext 1, ptr noundef nonnull %21, ptr noundef nonnull %22)
  %942 = load ptr, ptr %21, align 8, !tbaa !35
  call void @bitmap_obstack_free(ptr noundef %942) #21
  store ptr null, ptr %21, align 8, !tbaa !35
  %943 = and i64 %941, 4294967295
  %944 = icmp ne i64 %943, 10000000
  %945 = load i8, ptr %22, align 1
  %946 = icmp ne i8 %945, 0
  %947 = select i1 %944, i1 %946, i1 false
  %948 = zext i1 %947 to i8
  br label %949

949:                                              ; preds = %940, %936
  %950 = phi i8 [ %948, %940 ], [ 0, %936 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #21
  %951 = icmp eq i8 %950, 0
  br i1 %951, label %954, label %952

952:                                              ; preds = %949
  %953 = getelementptr inbounds %struct.iv_cand, ptr %888, i64 0, i32 9
  store ptr %898, ptr %953, align 8, !tbaa !80
  br label %954

954:                                              ; preds = %952, %949, %934, %886
  %955 = add nuw nsw i64 %874, 1
  br label %873, !llvm.loop !221

956:                                              ; preds = %883, %976
  %957 = phi i64 [ 0, %883 ], [ %977, %976 ]
  %958 = load ptr, ptr %884, align 8, !tbaa !130
  %959 = icmp eq ptr %958, null
  br i1 %959, label %962, label %960

960:                                              ; preds = %956
  %961 = load i32, ptr %958, align 8, !tbaa !217
  br label %962

962:                                              ; preds = %960, %956
  %963 = phi i32 [ %961, %960 ], [ 0, %956 ]
  %964 = zext i32 %963 to i64
  %965 = icmp ult i64 %957, %964
  br i1 %965, label %966, label %978

966:                                              ; preds = %962
  %967 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %958, i64 0, i32 2, i64 %957
  %968 = load ptr, ptr %967, align 8, !tbaa !35
  %969 = getelementptr inbounds %struct.iv_cand, ptr %968, i64 0, i32 1
  %970 = load i8, ptr %969, align 4, !tbaa !77
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %976, label %972

972:                                              ; preds = %966
  %973 = load ptr, ptr %885, align 8, !tbaa !127
  %974 = trunc i64 %957 to i32
  %975 = call zeroext i8 @bitmap_set_bit(ptr noundef %973, i32 noundef %974) #21
  br label %976

976:                                              ; preds = %972, %966
  %977 = add nuw nsw i64 %957, 1
  br label %956, !llvm.loop !222

978:                                              ; preds = %962
  br i1 %959, label %981, label %979

979:                                              ; preds = %978
  %980 = load i32, ptr %958, align 8, !tbaa !217
  br label %981

981:                                              ; preds = %979, %978
  %982 = phi i32 [ %980, %979 ], [ 0, %978 ]
  %983 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %984 = getelementptr inbounds %struct.param_info, ptr %983, i64 60, i32 1
  %985 = load i32, ptr %984, align 8, !tbaa !203
  %986 = icmp ule i32 %982, %985
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  store i8 %987, ptr %988, align 4, !tbaa !223
  br i1 %986, label %991, label %989

989:                                              ; preds = %981
  %990 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %1007

991:                                              ; preds = %981, %1001
  %992 = phi i64 [ %1006, %1001 ], [ 0, %981 ]
  %993 = load ptr, ptr %670, align 8, !tbaa !69
  %994 = icmp eq ptr %993, null
  br i1 %994, label %997, label %995

995:                                              ; preds = %991
  %996 = load i32, ptr %993, align 8, !tbaa !71
  br label %997

997:                                              ; preds = %995, %991
  %998 = phi i32 [ %996, %995 ], [ 0, %991 ]
  %999 = zext i32 %998 to i64
  %1000 = icmp ult i64 %992, %999
  br i1 %1000, label %1001, label %1025

1001:                                             ; preds = %997
  %1002 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %993, i64 0, i32 2, i64 %992
  %1003 = load ptr, ptr %1002, align 8, !tbaa !35
  %1004 = getelementptr inbounds %struct.iv_use, ptr %1003, i64 0, i32 5
  %1005 = load ptr, ptr %1004, align 8, !tbaa !68
  call void @bitmap_obstack_free(ptr noundef %1005) #21
  store ptr null, ptr %1004, align 8, !tbaa !68
  %1006 = add nuw nsw i64 %992, 1
  br label %991, !llvm.loop !224

1007:                                             ; preds = %989, %1017
  %1008 = phi i64 [ 0, %989 ], [ %1024, %1017 ]
  %1009 = load ptr, ptr %670, align 8, !tbaa !69
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1013, label %1011

1011:                                             ; preds = %1007
  %1012 = load i32, ptr %1009, align 8, !tbaa !71
  br label %1013

1013:                                             ; preds = %1011, %1007
  %1014 = phi i32 [ %1012, %1011 ], [ 0, %1007 ]
  %1015 = zext i32 %1014 to i64
  %1016 = icmp ult i64 %1008, %1015
  br i1 %1016, label %1017, label %1025

1017:                                             ; preds = %1013
  %1018 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %1009, i64 0, i32 2, i64 %1008
  %1019 = load ptr, ptr %1018, align 8, !tbaa !35
  %1020 = getelementptr inbounds %struct.iv_use, ptr %1019, i64 0, i32 5
  %1021 = load ptr, ptr %1020, align 8, !tbaa !68
  %1022 = load ptr, ptr %990, align 8, !tbaa !127
  %1023 = call zeroext i8 @bitmap_ior_into(ptr noundef %1021, ptr noundef %1022) #21
  %1024 = add nuw nsw i64 %1008, 1
  br label %1007, !llvm.loop !225

1025:                                             ; preds = %1013, %997
  %1026 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1036, label %1028

1028:                                             ; preds = %1025
  %1029 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1030 = and i32 %1029, 8
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1036, label %1032

1032:                                             ; preds = %1028
  %1033 = call i64 @fwrite(ptr nonnull @.str.64, i64 17, i64 1, ptr nonnull %1026)
  %1034 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1035 = call i64 @fwrite(ptr nonnull @.str.65, i64 12, i64 1, ptr %1034)
  br label %1036

1036:                                             ; preds = %1032, %1028, %1025
  br label %1037

1037:                                             ; preds = %1036, %1118
  %1038 = phi i64 [ %1119, %1118 ], [ 0, %1036 ]
  %1039 = load ptr, ptr %884, align 8, !tbaa !130
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1043, label %1041

1041:                                             ; preds = %1037
  %1042 = load i32, ptr %1039, align 8, !tbaa !217
  br label %1043

1043:                                             ; preds = %1041, %1037
  %1044 = phi i32 [ %1042, %1041 ], [ 0, %1037 ]
  %1045 = zext i32 %1044 to i64
  %1046 = icmp ult i64 %1038, %1045
  br i1 %1046, label %1047, label %1120

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %1039, i64 0, i32 2, i64 %1038
  %1049 = load ptr, ptr %1048, align 8, !tbaa !35
  %1050 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 6
  %1051 = load ptr, ptr %1050, align 8, !tbaa !74
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1053, label %1055

1053:                                             ; preds = %1047
  %1054 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 7
  store i32 0, ptr %1054, align 8, !tbaa !226
  br label %1106

1055:                                             ; preds = %1047
  %1056 = load ptr, ptr %1051, align 8, !tbaa !58
  %1057 = load i8, ptr %37, align 1, !tbaa !146
  %1058 = call fastcc i64 @force_expr_to_var_cost(ptr noundef %1056, i8 noundef zeroext %1057)
  %1059 = trunc i64 %1058 to i32
  %1060 = getelementptr inbounds %struct.tree_common, ptr %1056, i64 0, i32 2
  %1061 = load ptr, ptr %1060, align 8, !tbaa !46
  %1062 = load i64, ptr %1061, align 8
  %1063 = and i64 %1062, 65535
  %1064 = icmp eq i64 %1063, 14
  br i1 %1064, label %1065, label %1067

1065:                                             ; preds = %1055
  %1066 = call i32 @vector_type_mode(ptr noundef nonnull %1061) #21
  br label %1072

1067:                                             ; preds = %1055
  %1068 = getelementptr inbounds %struct.tree_type, ptr %1061, i64 0, i32 6
  %1069 = load i32, ptr %1068, align 4
  %1070 = lshr i32 %1069, 16
  %1071 = and i32 %1070, 255
  br label %1072

1072:                                             ; preds = %1067, %1065
  %1073 = phi i32 [ %1066, %1065 ], [ %1071, %1067 ]
  %1074 = load i8, ptr %37, align 1, !tbaa !146
  %1075 = call fastcc i32 @add_cost(i32 noundef %1073, i8 noundef zeroext %1074)
  %1076 = sdiv i32 %1059, 5
  %1077 = add i32 %1075, %1076
  %1078 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 2
  %1079 = load i32, ptr %1078, align 8, !tbaa !79
  %1080 = icmp eq i32 %1079, 4
  br i1 %1080, label %1081, label %1090

1081:                                             ; preds = %1072
  %1082 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 4
  %1083 = load ptr, ptr %1082, align 8, !tbaa !213
  %1084 = getelementptr inbounds %struct.tree_ssa_name, ptr %1083, i64 0, i32 1
  %1085 = load ptr, ptr %1084, align 8, !tbaa !46
  %1086 = getelementptr inbounds %struct.tree_decl_common, ptr %1085, i64 0, i32 2
  %1087 = load i64, ptr %1086, align 8
  %1088 = and i64 %1087, 4096
  %1089 = icmp eq i64 %1088, 0
  br i1 %1089, label %1092, label %1090

1090:                                             ; preds = %1081, %1072
  %1091 = add i32 %1077, 1
  br label %1092

1092:                                             ; preds = %1090, %1081
  %1093 = phi i32 [ %1091, %1090 ], [ %1077, %1081 ]
  %1094 = icmp eq i32 %1079, 1
  br i1 %1094, label %1095, label %1102

1095:                                             ; preds = %1092
  %1096 = load ptr, ptr %0, align 8, !tbaa !145
  %1097 = call ptr @ip_end_pos(ptr noundef %1096) #21
  %1098 = call zeroext i8 @empty_block_p(ptr noundef %1097) #21
  %1099 = icmp ne i8 %1098, 0
  %1100 = zext i1 %1099 to i32
  %1101 = add i32 %1093, %1100
  br label %1102

1102:                                             ; preds = %1095, %1092
  %1103 = phi i32 [ %1093, %1092 ], [ %1101, %1095 ]
  %1104 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 7
  store i32 %1103, ptr %1104, align 8, !tbaa !226
  %1105 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 8
  store i32 %1075, ptr %1105, align 4, !tbaa !227
  br label %1106

1106:                                             ; preds = %1102, %1053
  %1107 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1118, label %1109

1109:                                             ; preds = %1106
  %1110 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1111 = and i32 %1110, 8
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1118, label %1113

1113:                                             ; preds = %1109
  %1114 = getelementptr inbounds %struct.iv_cand, ptr %1049, i64 0, i32 7
  %1115 = load i32, ptr %1114, align 8, !tbaa !226
  %1116 = trunc i64 %1038 to i32
  %1117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1107, ptr noundef nonnull @.str.66, i32 noundef %1116, i32 noundef %1115)
  br label %1118

1118:                                             ; preds = %1113, %1109, %1106
  %1119 = add nuw nsw i64 %1038, 1
  br label %1037, !llvm.loop !228

1120:                                             ; preds = %1043
  %1121 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1129, label %1123

1123:                                             ; preds = %1120
  %1124 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1125 = and i32 %1124, 8
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1129, label %1127

1127:                                             ; preds = %1123
  %1128 = call i32 @fputc(i32 10, ptr nonnull %1121)
  br label %1129

1129:                                             ; preds = %1120, %1123, %1127
  %1130 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  br label %1131

1131:                                             ; preds = %1209, %1129
  %1132 = phi i64 [ %1215, %1209 ], [ 0, %1129 ]
  %1133 = load ptr, ptr %670, align 8, !tbaa !69
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1137, label %1135

1135:                                             ; preds = %1131
  %1136 = load i32, ptr %1133, align 8, !tbaa !71
  br label %1137

1137:                                             ; preds = %1135, %1131
  %1138 = phi i32 [ %1136, %1135 ], [ 0, %1131 ]
  %1139 = zext i32 %1138 to i64
  %1140 = icmp ult i64 %1132, %1139
  br i1 %1140, label %1141, label %1216

1141:                                             ; preds = %1137
  %1142 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %1133, i64 0, i32 2, i64 %1132
  %1143 = load ptr, ptr %1142, align 8, !tbaa !35
  %1144 = load i8, ptr %988, align 4, !tbaa !223
  %1145 = icmp eq i8 %1144, 0
  br i1 %1145, label %1151, label %1146

1146:                                             ; preds = %1141
  %1147 = load ptr, ptr %884, align 8, !tbaa !130
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1209, label %1149

1149:                                             ; preds = %1146
  %1150 = load i32, ptr %1147, align 8, !tbaa !217
  br label %1209

1151:                                             ; preds = %1141
  %1152 = getelementptr inbounds %struct.iv_use, ptr %1143, i64 0, i32 5
  %1153 = load ptr, ptr %1152, align 8, !tbaa !68
  %1154 = load ptr, ptr %1153, align 8, !tbaa !175
  %1155 = icmp eq ptr %1154, null
  %1156 = select i1 %1155, ptr @bitmap_zero_bits, ptr %1154
  %1157 = getelementptr inbounds %struct.bitmap_element_def, ptr %1156, i64 0, i32 3
  %1158 = load i64, ptr %1157, align 8, !tbaa !89
  br label %1159

1159:                                             ; preds = %1202, %1151
  %1160 = phi i64 [ %1158, %1151 ], [ %1204, %1202 ]
  %1161 = phi i32 [ 0, %1151 ], [ %1199, %1202 ]
  %1162 = phi ptr [ %1156, %1151 ], [ %1200, %1202 ]
  %1163 = phi i32 [ 0, %1151 ], [ %1203, %1202 ]
  %1164 = icmp eq i64 %1160, 0
  br i1 %1164, label %1176, label %1165

1165:                                             ; preds = %1183, %1159
  %1166 = phi i64 [ %1160, %1159 ], [ %1187, %1183 ]
  %1167 = phi i32 [ %1161, %1159 ], [ %1184, %1183 ]
  %1168 = phi ptr [ %1162, %1159 ], [ %1180, %1183 ]
  %1169 = and i64 %1166, 1
  %1170 = icmp eq i64 %1169, 0
  br i1 %1170, label %1171, label %1197

1171:                                             ; preds = %1165, %1171
  %1172 = phi i64 [ %1173, %1171 ], [ %1166, %1165 ]
  %1173 = lshr exact i64 %1172, 1
  %1174 = and i64 %1172, 2
  %1175 = icmp eq i64 %1174, 0
  br i1 %1175, label %1171, label %1197, !llvm.loop !179

1176:                                             ; preds = %1159
  %1177 = add i32 %1161, 1
  br label %1178

1178:                                             ; preds = %1192, %1176
  %1179 = phi i64 [ %1160, %1176 ], [ %1193, %1192 ]
  %1180 = phi ptr [ %1162, %1176 ], [ %1195, %1192 ]
  %1181 = phi i32 [ %1177, %1176 ], [ 0, %1192 ]
  %1182 = icmp eq i32 %1181, 2
  br i1 %1182, label %1192, label %1183

1183:                                             ; preds = %1178, %1189
  %1184 = phi i32 [ %1190, %1189 ], [ %1181, %1178 ]
  %1185 = zext i32 %1184 to i64
  %1186 = getelementptr inbounds %struct.bitmap_element_def, ptr %1180, i64 0, i32 3, i64 %1185
  %1187 = load i64, ptr %1186, align 8, !tbaa !89
  %1188 = icmp eq i64 %1187, 0
  br i1 %1188, label %1189, label %1165

1189:                                             ; preds = %1183
  %1190 = add i32 %1184, 1
  %1191 = icmp eq i32 %1190, 2
  br i1 %1191, label %1192, label %1183, !llvm.loop !180

1192:                                             ; preds = %1189, %1178
  %1193 = phi i64 [ %1179, %1178 ], [ %1187, %1189 ]
  %1194 = phi i32 [ %1181, %1178 ], [ 2, %1189 ]
  %1195 = load ptr, ptr %1180, align 8, !tbaa !181
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1197, label %1178, !llvm.loop !182

1197:                                             ; preds = %1192, %1171, %1165
  %1198 = phi i64 [ %1166, %1165 ], [ %1173, %1171 ], [ %1193, %1192 ]
  %1199 = phi i32 [ %1167, %1165 ], [ %1167, %1171 ], [ %1194, %1192 ]
  %1200 = phi ptr [ %1168, %1165 ], [ %1168, %1171 ], [ %1195, %1192 ]
  %1201 = phi i1 [ false, %1165 ], [ false, %1171 ], [ true, %1192 ]
  br i1 %1201, label %1205, label %1202

1202:                                             ; preds = %1197
  %1203 = add i32 %1163, 1
  %1204 = lshr i64 %1198, 1
  br label %1159, !llvm.loop !229

1205:                                             ; preds = %1197, %1205
  %1206 = phi i32 [ %1208, %1205 ], [ 1, %1197 ]
  %1207 = icmp ult i32 %1206, %1163
  %1208 = shl i32 %1206, 1
  br i1 %1207, label %1205, label %1209, !llvm.loop !230

1209:                                             ; preds = %1205, %1149, %1146
  %1210 = phi i32 [ %1150, %1149 ], [ 0, %1146 ], [ %1206, %1205 ]
  %1211 = getelementptr inbounds %struct.iv_use, ptr %1143, i64 0, i32 6
  store i32 %1210, ptr %1211, align 8, !tbaa !231
  %1212 = zext i32 %1210 to i64
  %1213 = call ptr @xcalloc(i64 noundef %1212, i64 noundef 32) #21
  %1214 = getelementptr inbounds %struct.iv_use, ptr %1143, i64 0, i32 7
  store ptr %1213, ptr %1214, align 8, !tbaa !232
  %1215 = add nuw nsw i64 %1132, 1
  br label %1131, !llvm.loop !233

1216:                                             ; preds = %1137, %1336
  %1217 = phi i64 [ %1337, %1336 ], [ 0, %1137 ]
  %1218 = load ptr, ptr %670, align 8, !tbaa !69
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1222, label %1220

1220:                                             ; preds = %1216
  %1221 = load i32, ptr %1218, align 8, !tbaa !71
  br label %1222

1222:                                             ; preds = %1220, %1216
  %1223 = phi i32 [ %1221, %1220 ], [ 0, %1216 ]
  %1224 = zext i32 %1223 to i64
  %1225 = icmp ult i64 %1217, %1224
  br i1 %1225, label %1226, label %1338

1226:                                             ; preds = %1222
  %1227 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %1218, i64 0, i32 2, i64 %1217
  %1228 = load ptr, ptr %1227, align 8, !tbaa !35
  %1229 = load i8, ptr %988, align 4, !tbaa !223
  %1230 = icmp eq i8 %1229, 0
  br i1 %1230, label %1246, label %1231

1231:                                             ; preds = %1226, %1241
  %1232 = phi i64 [ %1245, %1241 ], [ 0, %1226 ]
  %1233 = load ptr, ptr %884, align 8, !tbaa !130
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1237, label %1235

1235:                                             ; preds = %1231
  %1236 = load i32, ptr %1233, align 8, !tbaa !217
  br label %1237

1237:                                             ; preds = %1235, %1231
  %1238 = phi i32 [ %1236, %1235 ], [ 0, %1231 ]
  %1239 = zext i32 %1238 to i64
  %1240 = icmp ult i64 %1232, %1239
  br i1 %1240, label %1241, label %1336

1241:                                             ; preds = %1237
  %1242 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %1233, i64 0, i32 2, i64 %1232
  %1243 = load ptr, ptr %1242, align 8, !tbaa !35
  %1244 = call fastcc zeroext i8 @determine_use_iv_cost(ptr noundef nonnull %0, ptr noundef %1228, ptr noundef %1243), !range !81
  %1245 = add nuw nsw i64 %1232, 1
  br label %1231, !llvm.loop !234

1246:                                             ; preds = %1226
  %1247 = getelementptr inbounds %struct.iv_use, ptr %1228, i64 0, i32 5
  %1248 = load ptr, ptr %1247, align 8, !tbaa !68
  %1249 = load ptr, ptr %1248, align 8, !tbaa !175
  %1250 = icmp eq ptr %1249, null
  %1251 = select i1 %1250, ptr @bitmap_zero_bits, ptr %1249
  %1252 = getelementptr inbounds %struct.bitmap_element_def, ptr %1251, i64 0, i32 2
  %1253 = load i32, ptr %1252, align 8, !tbaa !177
  %1254 = shl i32 %1253, 7
  %1255 = getelementptr inbounds %struct.bitmap_element_def, ptr %1251, i64 0, i32 3
  %1256 = load i64, ptr %1255, align 8, !tbaa !89
  %1257 = icmp eq i64 %1256, 0
  %1258 = zext i1 %1257 to i32
  %1259 = or disjoint i32 %1254, %1258
  br label %1260

1260:                                             ; preds = %1330, %1246
  %1261 = phi i64 [ %1256, %1246 ], [ %1331, %1330 ]
  %1262 = phi i32 [ 0, %1246 ], [ %1317, %1330 ]
  %1263 = phi i32 [ %1259, %1246 ], [ %1332, %1330 ]
  %1264 = phi ptr [ %1251, %1246 ], [ %1319, %1330 ]
  %1265 = icmp eq i64 %1261, 0
  br i1 %1265, label %1280, label %1266

1266:                                             ; preds = %1294, %1260
  %1267 = phi i64 [ %1261, %1260 ], [ %1299, %1294 ]
  %1268 = phi i32 [ %1262, %1260 ], [ %1295, %1294 ]
  %1269 = phi i32 [ %1263, %1260 ], [ %1296, %1294 ]
  %1270 = phi ptr [ %1264, %1260 ], [ %1287, %1294 ]
  %1271 = and i64 %1267, 1
  %1272 = icmp eq i64 %1271, 0
  br i1 %1272, label %1273, label %1315

1273:                                             ; preds = %1266, %1273
  %1274 = phi i32 [ %1277, %1273 ], [ %1269, %1266 ]
  %1275 = phi i64 [ %1276, %1273 ], [ %1267, %1266 ]
  %1276 = lshr exact i64 %1275, 1
  %1277 = add i32 %1274, 1
  %1278 = and i64 %1275, 2
  %1279 = icmp eq i64 %1278, 0
  br i1 %1279, label %1273, label %1315, !llvm.loop !179

1280:                                             ; preds = %1260
  %1281 = add i32 %1263, 63
  %1282 = and i32 %1281, -64
  %1283 = add i32 %1262, 1
  br label %1284

1284:                                             ; preds = %1311, %1280
  %1285 = phi i64 [ %1261, %1280 ], [ %1306, %1311 ]
  %1286 = phi i32 [ %1282, %1280 ], [ %1314, %1311 ]
  %1287 = phi ptr [ %1264, %1280 ], [ %1309, %1311 ]
  %1288 = phi i32 [ %1283, %1280 ], [ 0, %1311 ]
  %1289 = icmp eq i32 %1288, 2
  br i1 %1289, label %1305, label %1290

1290:                                             ; preds = %1284
  %1291 = add i32 %1286, 128
  %1292 = shl i32 %1288, 6
  %1293 = sub i32 %1291, %1292
  br label %1294

1294:                                             ; preds = %1290, %1301
  %1295 = phi i32 [ %1303, %1301 ], [ %1288, %1290 ]
  %1296 = phi i32 [ %1302, %1301 ], [ %1286, %1290 ]
  %1297 = zext i32 %1295 to i64
  %1298 = getelementptr inbounds %struct.bitmap_element_def, ptr %1287, i64 0, i32 3, i64 %1297
  %1299 = load i64, ptr %1298, align 8, !tbaa !89
  %1300 = icmp eq i64 %1299, 0
  br i1 %1300, label %1301, label %1266

1301:                                             ; preds = %1294
  %1302 = add i32 %1296, 64
  %1303 = add i32 %1295, 1
  %1304 = icmp eq i32 %1303, 2
  br i1 %1304, label %1305, label %1294, !llvm.loop !180

1305:                                             ; preds = %1301, %1284
  %1306 = phi i64 [ %1285, %1284 ], [ %1299, %1301 ]
  %1307 = phi i32 [ %1286, %1284 ], [ %1293, %1301 ]
  %1308 = phi i32 [ %1288, %1284 ], [ 2, %1301 ]
  %1309 = load ptr, ptr %1287, align 8, !tbaa !181
  %1310 = icmp eq ptr %1309, null
  br i1 %1310, label %1315, label %1311

1311:                                             ; preds = %1305
  %1312 = getelementptr inbounds %struct.bitmap_element_def, ptr %1309, i64 0, i32 2
  %1313 = load i32, ptr %1312, align 8, !tbaa !177
  %1314 = shl i32 %1313, 7
  br label %1284, !llvm.loop !182

1315:                                             ; preds = %1305, %1273, %1266
  %1316 = phi i64 [ %1267, %1266 ], [ %1276, %1273 ], [ %1306, %1305 ]
  %1317 = phi i32 [ %1268, %1266 ], [ %1268, %1273 ], [ %1308, %1305 ]
  %1318 = phi i32 [ %1269, %1266 ], [ %1277, %1273 ], [ %1307, %1305 ]
  %1319 = phi ptr [ %1270, %1266 ], [ %1270, %1273 ], [ %1309, %1305 ]
  %1320 = phi i1 [ false, %1266 ], [ false, %1273 ], [ true, %1305 ]
  br i1 %1320, label %1333, label %1321

1321:                                             ; preds = %1315
  %1322 = load ptr, ptr %884, align 8, !tbaa !130
  %1323 = zext i32 %1318 to i64
  %1324 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %1322, i64 0, i32 2, i64 %1323
  %1325 = load ptr, ptr %1324, align 8, !tbaa !35
  %1326 = call fastcc zeroext i8 @determine_use_iv_cost(ptr noundef nonnull %0, ptr noundef %1228, ptr noundef %1325), !range !81
  %1327 = icmp eq i8 %1326, 0
  br i1 %1327, label %1328, label %1330

1328:                                             ; preds = %1321
  %1329 = call zeroext i8 @bitmap_set_bit(ptr noundef %1130, i32 noundef %1318) #21
  br label %1330

1330:                                             ; preds = %1328, %1321
  %1331 = lshr i64 %1316, 1
  %1332 = add i32 %1318, 1
  br label %1260, !llvm.loop !235

1333:                                             ; preds = %1315
  %1334 = load ptr, ptr %1247, align 8, !tbaa !68
  %1335 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %1334, ptr noundef %1130) #21
  call void @bitmap_clear(ptr noundef %1130) #21
  br label %1336

1336:                                             ; preds = %1237, %1333
  %1337 = add nuw nsw i64 %1217, 1
  br label %1216, !llvm.loop !236

1338:                                             ; preds = %1222
  call void @bitmap_obstack_free(ptr noundef %1130) #21
  %1339 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1340 = icmp eq ptr %1339, null
  br i1 %1340, label %1409, label %1341

1341:                                             ; preds = %1338
  %1342 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1343 = and i32 %1342, 8
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1409, label %1345

1345:                                             ; preds = %1341
  %1346 = call i64 @fwrite(ptr nonnull @.str.67, i64 21, i64 1, ptr nonnull %1339)
  br label %1347

1347:                                             ; preds = %1402, %1345
  %1348 = phi i64 [ %1405, %1402 ], [ 0, %1345 ]
  %1349 = load ptr, ptr %670, align 8, !tbaa !69
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %1353, label %1351

1351:                                             ; preds = %1347
  %1352 = load i32, ptr %1349, align 8, !tbaa !71
  br label %1353

1353:                                             ; preds = %1351, %1347
  %1354 = phi i32 [ %1352, %1351 ], [ 0, %1347 ]
  %1355 = zext i32 %1354 to i64
  %1356 = icmp ult i64 %1348, %1355
  br i1 %1356, label %1357, label %1406

1357:                                             ; preds = %1353
  %1358 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %1349, i64 0, i32 2, i64 %1348
  %1359 = load ptr, ptr %1358, align 8, !tbaa !35
  %1360 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1361 = trunc i64 %1348 to i32
  %1362 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1360, ptr noundef nonnull @.str.68, i32 noundef %1361)
  %1363 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1364 = call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %1363)
  %1365 = getelementptr inbounds %struct.iv_use, ptr %1359, i64 0, i32 6
  %1366 = load i32, ptr %1365, align 8, !tbaa !231
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1402, label %1368

1368:                                             ; preds = %1357
  %1369 = getelementptr inbounds %struct.iv_use, ptr %1359, i64 0, i32 7
  br label %1370

1370:                                             ; preds = %1368, %1397
  %1371 = phi i64 [ 0, %1368 ], [ %1398, %1397 ]
  %1372 = load ptr, ptr %1369, align 8, !tbaa !232
  %1373 = getelementptr inbounds %struct.cost_pair, ptr %1372, i64 %1371
  %1374 = load ptr, ptr %1373, align 8, !tbaa !237
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1397, label %1376

1376:                                             ; preds = %1370
  %1377 = getelementptr inbounds %struct.cost_pair, ptr %1372, i64 %1371, i32 1
  %1378 = load i64, ptr %1377, align 8
  %1379 = and i64 %1378, 4294967295
  %1380 = icmp eq i64 %1379, 10000000
  br i1 %1380, label %1397, label %1381

1381:                                             ; preds = %1376
  %1382 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1383 = load i32, ptr %1374, align 8, !tbaa !76
  %1384 = load i32, ptr %1377, align 8, !tbaa !240
  %1385 = getelementptr inbounds %struct.cost_pair, ptr %1372, i64 %1371, i32 1, i32 1
  %1386 = load i32, ptr %1385, align 4, !tbaa !241
  %1387 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1382, ptr noundef nonnull @.str.70, i32 noundef %1383, i32 noundef %1384, i32 noundef %1386)
  %1388 = load ptr, ptr %1369, align 8, !tbaa !232
  %1389 = getelementptr inbounds %struct.cost_pair, ptr %1388, i64 %1371, i32 2
  %1390 = load ptr, ptr %1389, align 8, !tbaa !242
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1394, label %1392

1392:                                             ; preds = %1381
  %1393 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @bitmap_print(ptr noundef %1393, ptr noundef nonnull %1390, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #21
  br label %1394

1394:                                             ; preds = %1392, %1381
  %1395 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1396 = call i32 @fputc(i32 10, ptr %1395)
  br label %1397

1397:                                             ; preds = %1394, %1376, %1370
  %1398 = add nuw nsw i64 %1371, 1
  %1399 = load i32, ptr %1365, align 8, !tbaa !231
  %1400 = zext i32 %1399 to i64
  %1401 = icmp ult i64 %1398, %1400
  br i1 %1401, label %1370, label %1402, !llvm.loop !243

1402:                                             ; preds = %1397, %1357
  %1403 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1404 = call i32 @fputc(i32 10, ptr %1403)
  %1405 = add nuw nsw i64 %1348, 1
  br label %1347, !llvm.loop !244

1406:                                             ; preds = %1353
  %1407 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1408 = call i32 @fputc(i32 10, ptr %1407)
  br label %1409

1409:                                             ; preds = %1338, %1341, %1406
  %1410 = load ptr, ptr %0, align 8, !tbaa !145
  %1411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1412 = icmp eq ptr %1411, null
  br i1 %1412, label %1434, label %1413

1413:                                             ; preds = %1409
  %1414 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1415 = and i32 %1414, 8
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1434, label %1417

1417:                                             ; preds = %1413
  %1418 = call i64 @fwrite(ptr nonnull @.str.71, i64 14, i64 1, ptr nonnull %1411)
  %1419 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1420 = load i32, ptr @target_avail_regs, align 4, !tbaa !50
  %1421 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1419, ptr noundef nonnull @.str.72, i32 noundef %1420)
  %1422 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1423 = load i8, ptr %37, align 1, !tbaa !146
  %1424 = zext i8 %1423 to i64
  %1425 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %1424
  %1426 = load i32, ptr %1425, align 4, !tbaa !50
  %1427 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1422, ptr noundef nonnull @.str.73, i32 noundef %1426)
  %1428 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1429 = load i8, ptr %37, align 1, !tbaa !146
  %1430 = zext i8 %1429 to i64
  %1431 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %1430
  %1432 = load i32, ptr %1431, align 4, !tbaa !50
  %1433 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1428, ptr noundef nonnull @.str.74, i32 noundef %1432)
  br label %1434

1434:                                             ; preds = %1417, %1413, %1409
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #21
  %1435 = getelementptr inbounds %struct.loop, ptr %1410, i64 0, i32 2
  %1436 = load ptr, ptr %1435, align 8, !tbaa !151
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %20, ptr noundef %1436) #21
  %1437 = load ptr, ptr %20, align 8, !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #21
  %1438 = icmp eq ptr %1437, null
  br i1 %1438, label %1457, label %1439

1439:                                             ; preds = %1434, %1452
  %1440 = phi i32 [ %1453, %1452 ], [ 0, %1434 ]
  %1441 = phi ptr [ %1455, %1452 ], [ %1437, %1434 ]
  %1442 = load ptr, ptr %1441, align 8, !tbaa !153
  %1443 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1442, i64 0, i32 3
  %1444 = load ptr, ptr %1443, align 8, !tbaa !35
  %1445 = call zeroext i8 @is_gimple_reg(ptr noundef %1444) #21
  %1446 = icmp eq i8 %1445, 0
  br i1 %1446, label %1452, label %1447

1447:                                             ; preds = %1439
  %1448 = call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %1444)
  %1449 = icmp eq ptr %1448, null
  %1450 = zext i1 %1449 to i32
  %1451 = add i32 %1440, %1450
  br label %1452

1452:                                             ; preds = %1447, %1439
  %1453 = phi i32 [ %1440, %1439 ], [ %1451, %1447 ]
  %1454 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1441, i64 0, i32 2
  %1455 = load ptr, ptr %1454, align 8, !tbaa !161
  %1456 = icmp eq ptr %1455, null
  br i1 %1456, label %1457, label %1439, !llvm.loop !245

1457:                                             ; preds = %1452, %1434
  %1458 = phi i32 [ 0, %1434 ], [ %1453, %1452 ]
  %1459 = load ptr, ptr %686, align 8, !tbaa !126
  %1460 = load ptr, ptr %1459, align 8, !tbaa !175
  %1461 = icmp eq ptr %1460, null
  %1462 = select i1 %1461, ptr @bitmap_zero_bits, ptr %1460
  %1463 = getelementptr inbounds %struct.bitmap_element_def, ptr %1462, i64 0, i32 2
  %1464 = load i32, ptr %1463, align 8, !tbaa !177
  %1465 = shl i32 %1464, 7
  %1466 = getelementptr inbounds %struct.bitmap_element_def, ptr %1462, i64 0, i32 3
  %1467 = load i64, ptr %1466, align 8, !tbaa !89
  %1468 = icmp eq i64 %1467, 0
  %1469 = zext i1 %1468 to i32
  %1470 = or disjoint i32 %1465, %1469
  %1471 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  br label %1472

1472:                                             ; preds = %1546, %1457
  %1473 = phi i64 [ %1467, %1457 ], [ %1548, %1546 ]
  %1474 = phi i32 [ 0, %1457 ], [ %1530, %1546 ]
  %1475 = phi i32 [ %1470, %1457 ], [ %1549, %1546 ]
  %1476 = phi ptr [ %1462, %1457 ], [ %1532, %1546 ]
  %1477 = phi i32 [ %1458, %1457 ], [ %1547, %1546 ]
  %1478 = icmp eq i64 %1473, 0
  br i1 %1478, label %1493, label %1479

1479:                                             ; preds = %1507, %1472
  %1480 = phi i64 [ %1473, %1472 ], [ %1512, %1507 ]
  %1481 = phi i32 [ %1474, %1472 ], [ %1508, %1507 ]
  %1482 = phi i32 [ %1475, %1472 ], [ %1509, %1507 ]
  %1483 = phi ptr [ %1476, %1472 ], [ %1500, %1507 ]
  %1484 = and i64 %1480, 1
  %1485 = icmp eq i64 %1484, 0
  br i1 %1485, label %1486, label %1528

1486:                                             ; preds = %1479, %1486
  %1487 = phi i32 [ %1490, %1486 ], [ %1482, %1479 ]
  %1488 = phi i64 [ %1489, %1486 ], [ %1480, %1479 ]
  %1489 = lshr exact i64 %1488, 1
  %1490 = add i32 %1487, 1
  %1491 = and i64 %1488, 2
  %1492 = icmp eq i64 %1491, 0
  br i1 %1492, label %1486, label %1528, !llvm.loop !179

1493:                                             ; preds = %1472
  %1494 = add i32 %1475, 63
  %1495 = and i32 %1494, -64
  %1496 = add i32 %1474, 1
  br label %1497

1497:                                             ; preds = %1524, %1493
  %1498 = phi i64 [ %1473, %1493 ], [ %1519, %1524 ]
  %1499 = phi i32 [ %1495, %1493 ], [ %1527, %1524 ]
  %1500 = phi ptr [ %1476, %1493 ], [ %1522, %1524 ]
  %1501 = phi i32 [ %1496, %1493 ], [ 0, %1524 ]
  %1502 = icmp eq i32 %1501, 2
  br i1 %1502, label %1518, label %1503

1503:                                             ; preds = %1497
  %1504 = add i32 %1499, 128
  %1505 = shl i32 %1501, 6
  %1506 = sub i32 %1504, %1505
  br label %1507

1507:                                             ; preds = %1503, %1514
  %1508 = phi i32 [ %1516, %1514 ], [ %1501, %1503 ]
  %1509 = phi i32 [ %1515, %1514 ], [ %1499, %1503 ]
  %1510 = zext i32 %1508 to i64
  %1511 = getelementptr inbounds %struct.bitmap_element_def, ptr %1500, i64 0, i32 3, i64 %1510
  %1512 = load i64, ptr %1511, align 8, !tbaa !89
  %1513 = icmp eq i64 %1512, 0
  br i1 %1513, label %1514, label %1479

1514:                                             ; preds = %1507
  %1515 = add i32 %1509, 64
  %1516 = add i32 %1508, 1
  %1517 = icmp eq i32 %1516, 2
  br i1 %1517, label %1518, label %1507, !llvm.loop !180

1518:                                             ; preds = %1514, %1497
  %1519 = phi i64 [ %1498, %1497 ], [ %1512, %1514 ]
  %1520 = phi i32 [ %1499, %1497 ], [ %1506, %1514 ]
  %1521 = phi i32 [ %1501, %1497 ], [ 2, %1514 ]
  %1522 = load ptr, ptr %1500, align 8, !tbaa !181
  %1523 = icmp eq ptr %1522, null
  br i1 %1523, label %1528, label %1524

1524:                                             ; preds = %1518
  %1525 = getelementptr inbounds %struct.bitmap_element_def, ptr %1522, i64 0, i32 2
  %1526 = load i32, ptr %1525, align 8, !tbaa !177
  %1527 = shl i32 %1526, 7
  br label %1497, !llvm.loop !182

1528:                                             ; preds = %1518, %1486, %1479
  %1529 = phi i64 [ %1480, %1479 ], [ %1489, %1486 ], [ %1519, %1518 ]
  %1530 = phi i32 [ %1481, %1479 ], [ %1481, %1486 ], [ %1521, %1518 ]
  %1531 = phi i32 [ %1482, %1479 ], [ %1490, %1486 ], [ %1520, %1518 ]
  %1532 = phi ptr [ %1483, %1479 ], [ %1483, %1486 ], [ %1522, %1518 ]
  %1533 = phi i1 [ false, %1479 ], [ false, %1486 ], [ true, %1518 ]
  br i1 %1533, label %1550, label %1534

1534:                                             ; preds = %1528
  %1535 = load ptr, ptr %1471, align 8, !tbaa !125
  %1536 = zext i32 %1531 to i64
  %1537 = getelementptr inbounds %struct.version_info, ptr %1535, i64 %1536, i32 3
  %1538 = load i32, ptr %1537, align 4, !tbaa !199
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1546, label %1540

1540:                                             ; preds = %1534
  %1541 = getelementptr inbounds %struct.version_info, ptr %1535, i64 %1536, i32 2
  %1542 = load i8, ptr %1541, align 8, !tbaa !201
  %1543 = icmp ne i8 %1542, 0
  %1544 = zext i1 %1543 to i32
  %1545 = add i32 %1477, %1544
  br label %1546

1546:                                             ; preds = %1540, %1534
  %1547 = phi i32 [ %1477, %1534 ], [ %1545, %1540 ]
  %1548 = lshr i64 %1529, 1
  %1549 = add i32 %1531, 1
  br label %1472, !llvm.loop !246

1550:                                             ; preds = %1528
  %1551 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  store i32 %1477, ptr %1551, align 8, !tbaa !247
  %1552 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1553 = icmp eq ptr %1552, null
  br i1 %1553, label %1560, label %1554

1554:                                             ; preds = %1550
  %1555 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1556 = and i32 %1555, 8
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1560, label %1558

1558:                                             ; preds = %1554
  %1559 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1552, ptr noundef nonnull @.str.75, i32 noundef %1477)
  br label %1560

1560:                                             ; preds = %1558, %1554, %1550
  %1561 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1562 = icmp eq ptr %1561, null
  br i1 %1562, label %1586, label %1563

1563:                                             ; preds = %1560
  %1564 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1565 = and i32 %1564, 8
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1586, label %1567

1567:                                             ; preds = %1563
  %1568 = call i64 @fwrite(ptr nonnull @.str.76, i64 17, i64 1, ptr nonnull %1561)
  %1569 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1570 = call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr %1569)
  br label %1571

1571:                                             ; preds = %1567, %1571
  %1572 = phi i32 [ 0, %1567 ], [ %1579, %1571 ]
  %1573 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1574 = load i32, ptr %1551, align 8, !tbaa !247
  %1575 = load i8, ptr %37, align 1, !tbaa !146
  %1576 = call i32 @estimate_reg_pressure_cost(i32 noundef %1572, i32 noundef %1574, i8 noundef zeroext %1575) #21
  %1577 = add i32 %1576, %1572
  %1578 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1573, ptr noundef nonnull @.str.66, i32 noundef %1572, i32 noundef %1577)
  %1579 = add nuw i32 %1572, 1
  %1580 = load i32, ptr @target_avail_regs, align 4, !tbaa !50
  %1581 = shl i32 %1580, 1
  %1582 = icmp ult i32 %1572, %1581
  br i1 %1582, label %1571, label %1583, !llvm.loop !248

1583:                                             ; preds = %1571
  %1584 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1585 = call i32 @fputc(i32 10, ptr %1584)
  br label %1586

1586:                                             ; preds = %1560, %1563, %1583
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  %1587 = call ptr @xmalloc(i64 noundef 72) #21
  store i32 0, ptr %1587, align 8, !tbaa !249
  %1588 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 1
  store i32 0, ptr %1588, align 4, !tbaa !251
  %1589 = load ptr, ptr %670, align 8, !tbaa !69
  %1590 = icmp eq ptr %1589, null
  br i1 %1590, label %1594, label %1591

1591:                                             ; preds = %1586
  %1592 = load i32, ptr %1589, align 8, !tbaa !71
  %1593 = zext i32 %1592 to i64
  br label %1594

1594:                                             ; preds = %1591, %1586
  %1595 = phi i64 [ %1593, %1591 ], [ 0, %1586 ]
  %1596 = call ptr @xcalloc(i64 noundef %1595, i64 noundef 8) #21
  %1597 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 2
  store ptr %1596, ptr %1597, align 8, !tbaa !252
  %1598 = load ptr, ptr %884, align 8, !tbaa !130
  %1599 = icmp eq ptr %1598, null
  br i1 %1599, label %1603, label %1600

1600:                                             ; preds = %1594
  %1601 = load i32, ptr %1598, align 8, !tbaa !217
  %1602 = zext i32 %1601 to i64
  br label %1603

1603:                                             ; preds = %1600, %1594
  %1604 = phi i64 [ %1602, %1600 ], [ 0, %1594 ]
  %1605 = call ptr @xcalloc(i64 noundef %1604, i64 noundef 4) #21
  %1606 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 3
  store ptr %1605, ptr %1606, align 8, !tbaa !253
  %1607 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %1608 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 4
  store ptr %1607, ptr %1608, align 8, !tbaa !254
  %1609 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 5
  %1610 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1609, i8 0, i64 20, i1 false)
  %1611 = load i32, ptr %1610, align 8, !tbaa !128
  %1612 = add i32 %1611, 1
  %1613 = zext i32 %1612 to i64
  %1614 = call ptr @xcalloc(i64 noundef %1613, i64 noundef 4) #21
  %1615 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 9
  store ptr %1614, ptr %1615, align 8, !tbaa !255
  %1616 = getelementptr inbounds %struct.iv_ca, ptr %1587, i64 0, i32 10
  store i64 0, ptr %1616, align 8
  store ptr %1587, ptr %19, align 8, !tbaa !35
  %1617 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  br label %1618

1618:                                             ; preds = %2009, %1603
  %1619 = phi i64 [ %2012, %2009 ], [ 0, %1603 ]
  %1620 = load ptr, ptr %670, align 8, !tbaa !69
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %1624, label %1622

1622:                                             ; preds = %1618
  %1623 = load i32, ptr %1620, align 8, !tbaa !71
  br label %1624

1624:                                             ; preds = %1622, %1618
  %1625 = phi i32 [ %1623, %1622 ], [ 0, %1618 ]
  %1626 = zext i32 %1625 to i64
  %1627 = icmp ult i64 %1619, %1626
  %1628 = load ptr, ptr %19, align 8, !tbaa !35
  br i1 %1627, label %1629, label %2014

1629:                                             ; preds = %1624
  %1630 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %1620, i64 0, i32 2, i64 %1619
  %1631 = load ptr, ptr %1630, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  %1632 = load i32, ptr %1628, align 8, !tbaa !249
  %1633 = load i32, ptr %1631, align 8, !tbaa !62
  %1634 = icmp ult i32 %1632, %1633
  br i1 %1634, label %1635, label %1636

1635:                                             ; preds = %1629
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4657, ptr noundef nonnull @.str.13) #21
  br label %1636

1636:                                             ; preds = %1635, %1629
  %1637 = load i32, ptr %1628, align 8, !tbaa !249
  %1638 = load i32, ptr %1631, align 8, !tbaa !62
  %1639 = icmp eq i32 %1637, %1638
  br i1 %1639, label %1640, label %1645

1640:                                             ; preds = %1636
  %1641 = add i32 %1637, 1
  store i32 %1641, ptr %1628, align 8, !tbaa !249
  %1642 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 1
  %1643 = load i32, ptr %1642, align 4, !tbaa !251
  %1644 = add i32 %1643, 1
  store i32 %1644, ptr %1642, align 4, !tbaa !251
  br label %1645

1645:                                             ; preds = %1640, %1636
  %1646 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 4
  %1647 = load ptr, ptr %1646, align 8, !tbaa !254
  %1648 = load ptr, ptr %1647, align 8, !tbaa !175
  %1649 = icmp eq ptr %1648, null
  %1650 = select i1 %1649, ptr @bitmap_zero_bits, ptr %1648
  %1651 = getelementptr inbounds %struct.bitmap_element_def, ptr %1650, i64 0, i32 2
  %1652 = load i32, ptr %1651, align 8, !tbaa !177
  %1653 = shl i32 %1652, 7
  %1654 = getelementptr inbounds %struct.bitmap_element_def, ptr %1650, i64 0, i32 3
  %1655 = load i64, ptr %1654, align 8, !tbaa !89
  %1656 = icmp eq i64 %1655, 0
  %1657 = zext i1 %1656 to i32
  %1658 = or disjoint i32 %1653, %1657
  br label %1659

1659:                                             ; preds = %1757, %1645
  %1660 = phi i32 [ 0, %1645 ], [ %1716, %1757 ]
  %1661 = phi i64 [ %1655, %1645 ], [ %1761, %1757 ]
  %1662 = phi ptr [ %1650, %1645 ], [ %1718, %1757 ]
  %1663 = phi i32 [ %1658, %1645 ], [ %1762, %1757 ]
  %1664 = phi ptr [ null, %1645 ], [ %1760, %1757 ]
  %1665 = icmp eq i64 %1661, 0
  br i1 %1665, label %1680, label %1666

1666:                                             ; preds = %1694, %1659
  %1667 = phi i32 [ %1660, %1659 ], [ %1695, %1694 ]
  %1668 = phi i64 [ %1661, %1659 ], [ %1699, %1694 ]
  %1669 = phi ptr [ %1662, %1659 ], [ %1686, %1694 ]
  %1670 = phi i32 [ %1663, %1659 ], [ %1696, %1694 ]
  %1671 = and i64 %1668, 1
  %1672 = icmp eq i64 %1671, 0
  br i1 %1672, label %1673, label %1715

1673:                                             ; preds = %1666, %1673
  %1674 = phi i32 [ %1677, %1673 ], [ %1670, %1666 ]
  %1675 = phi i64 [ %1676, %1673 ], [ %1668, %1666 ]
  %1676 = lshr exact i64 %1675, 1
  %1677 = add i32 %1674, 1
  %1678 = and i64 %1675, 2
  %1679 = icmp eq i64 %1678, 0
  br i1 %1679, label %1673, label %1715, !llvm.loop !179

1680:                                             ; preds = %1659
  %1681 = add i32 %1663, 63
  %1682 = and i32 %1681, -64
  %1683 = add i32 %1660, 1
  br label %1684

1684:                                             ; preds = %1711, %1680
  %1685 = phi i64 [ %1661, %1680 ], [ %1706, %1711 ]
  %1686 = phi ptr [ %1662, %1680 ], [ %1709, %1711 ]
  %1687 = phi i32 [ %1682, %1680 ], [ %1714, %1711 ]
  %1688 = phi i32 [ %1683, %1680 ], [ 0, %1711 ]
  %1689 = icmp eq i32 %1688, 2
  br i1 %1689, label %1705, label %1690

1690:                                             ; preds = %1684
  %1691 = add i32 %1687, 128
  %1692 = shl i32 %1688, 6
  %1693 = sub i32 %1691, %1692
  br label %1694

1694:                                             ; preds = %1690, %1701
  %1695 = phi i32 [ %1703, %1701 ], [ %1688, %1690 ]
  %1696 = phi i32 [ %1702, %1701 ], [ %1687, %1690 ]
  %1697 = zext i32 %1695 to i64
  %1698 = getelementptr inbounds %struct.bitmap_element_def, ptr %1686, i64 0, i32 3, i64 %1697
  %1699 = load i64, ptr %1698, align 8, !tbaa !89
  %1700 = icmp eq i64 %1699, 0
  br i1 %1700, label %1701, label %1666

1701:                                             ; preds = %1694
  %1702 = add i32 %1696, 64
  %1703 = add i32 %1695, 1
  %1704 = icmp eq i32 %1703, 2
  br i1 %1704, label %1705, label %1694, !llvm.loop !180

1705:                                             ; preds = %1701, %1684
  %1706 = phi i64 [ %1685, %1684 ], [ %1699, %1701 ]
  %1707 = phi i32 [ %1687, %1684 ], [ %1693, %1701 ]
  %1708 = phi i32 [ %1688, %1684 ], [ 2, %1701 ]
  %1709 = load ptr, ptr %1686, align 8, !tbaa !181
  %1710 = icmp eq ptr %1709, null
  br i1 %1710, label %1715, label %1711

1711:                                             ; preds = %1705
  %1712 = getelementptr inbounds %struct.bitmap_element_def, ptr %1709, i64 0, i32 2
  %1713 = load i32, ptr %1712, align 8, !tbaa !177
  %1714 = shl i32 %1713, 7
  br label %1684, !llvm.loop !182

1715:                                             ; preds = %1705, %1673, %1666
  %1716 = phi i32 [ %1667, %1666 ], [ %1667, %1673 ], [ %1708, %1705 ]
  %1717 = phi i64 [ %1668, %1666 ], [ %1676, %1673 ], [ %1706, %1705 ]
  %1718 = phi ptr [ %1669, %1666 ], [ %1669, %1673 ], [ %1709, %1705 ]
  %1719 = phi i32 [ %1670, %1666 ], [ %1677, %1673 ], [ %1707, %1705 ]
  %1720 = phi i1 [ false, %1666 ], [ false, %1673 ], [ true, %1705 ]
  br i1 %1720, label %1763, label %1721

1721:                                             ; preds = %1715
  %1722 = load ptr, ptr %884, align 8, !tbaa !130
  %1723 = zext i32 %1719 to i64
  %1724 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %1722, i64 0, i32 2, i64 %1723
  %1725 = load ptr, ptr %1724, align 8, !tbaa !35
  %1726 = call fastcc ptr @get_use_iv_cost(ptr noundef nonnull %0, ptr noundef nonnull %1631, ptr noundef %1725)
  %1727 = icmp eq ptr %1726, null
  br i1 %1727, label %1757, label %1728

1728:                                             ; preds = %1721
  %1729 = icmp eq ptr %1664, null
  br i1 %1729, label %1757, label %1730

1730:                                             ; preds = %1728
  %1731 = getelementptr inbounds %struct.cost_pair, ptr %1726, i64 0, i32 1
  %1732 = getelementptr inbounds %struct.cost_pair, ptr %1664, i64 0, i32 1
  %1733 = load i64, ptr %1731, align 8
  %1734 = load i64, ptr %1732, align 8
  %1735 = trunc i64 %1733 to i32
  %1736 = trunc i64 %1734 to i32
  %1737 = icmp eq i32 %1735, %1736
  %1738 = lshr i64 %1734, 32
  %1739 = trunc i64 %1738 to i32
  %1740 = lshr i64 %1733, 32
  %1741 = trunc i64 %1740 to i32
  %1742 = sub i32 %1741, %1739
  %1743 = sub nsw i32 %1735, %1736
  %1744 = select i1 %1737, i32 %1742, i32 %1743
  %1745 = icmp slt i32 %1744, 0
  br i1 %1745, label %1757, label %1746

1746:                                             ; preds = %1730
  %1747 = icmp eq i32 %1744, 0
  br i1 %1747, label %1748, label %1757

1748:                                             ; preds = %1746
  %1749 = load ptr, ptr %1726, align 8, !tbaa !237
  %1750 = getelementptr inbounds %struct.iv_cand, ptr %1749, i64 0, i32 7
  %1751 = load i32, ptr %1750, align 8, !tbaa !226
  %1752 = load ptr, ptr %1664, align 8, !tbaa !237
  %1753 = getelementptr inbounds %struct.iv_cand, ptr %1752, i64 0, i32 7
  %1754 = load i32, ptr %1753, align 8, !tbaa !226
  %1755 = icmp ult i32 %1751, %1754
  %1756 = zext i1 %1755 to i8
  br label %1757

1757:                                             ; preds = %1748, %1746, %1730, %1728, %1721
  %1758 = phi i8 [ 0, %1721 ], [ 1, %1728 ], [ 1, %1730 ], [ 0, %1746 ], [ %1756, %1748 ]
  %1759 = icmp eq i8 %1758, 0
  %1760 = select i1 %1759, ptr %1664, ptr %1726
  %1761 = lshr i64 %1717, 1
  %1762 = add i32 %1719, 1
  br label %1659, !llvm.loop !256

1763:                                             ; preds = %1715
  call fastcc void @iv_ca_set_cp(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1631, ptr noundef %1664)
  %1764 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 1
  %1765 = load i32, ptr %1764, align 4, !tbaa !251
  %1766 = icmp eq i32 %1765, 0
  br i1 %1766, label %1767, label %1770

1767:                                             ; preds = %1763
  %1768 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 10
  %1769 = load i64, ptr %1768, align 8, !tbaa.struct !257
  br label %1770

1770:                                             ; preds = %1767, %1763
  %1771 = phi i64 [ %1769, %1767 ], [ 42949672970000000, %1763 ]
  %1772 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 2
  %1773 = load ptr, ptr %1772, align 8, !tbaa !252
  %1774 = load i32, ptr %1631, align 8, !tbaa !62
  %1775 = zext i32 %1774 to i64
  %1776 = getelementptr inbounds ptr, ptr %1773, i64 %1775
  %1777 = load ptr, ptr %1776, align 8, !tbaa !35
  %1778 = icmp eq ptr %1777, null
  br i1 %1778, label %1784, label %1779

1779:                                             ; preds = %1770
  %1780 = call ptr @xmalloc(i64 noundef 32) #21
  store ptr %1631, ptr %1780, align 8, !tbaa !258
  %1781 = getelementptr inbounds %struct.iv_ca_delta, ptr %1780, i64 0, i32 1
  store ptr null, ptr %1781, align 8, !tbaa !260
  %1782 = getelementptr inbounds %struct.iv_ca_delta, ptr %1780, i64 0, i32 2
  store ptr %1777, ptr %1782, align 8, !tbaa !261
  %1783 = getelementptr inbounds %struct.iv_ca_delta, ptr %1780, i64 0, i32 3
  store ptr null, ptr %1783, align 8, !tbaa !262
  call fastcc void @iv_ca_set_no_cp(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1631)
  br label %1784

1784:                                             ; preds = %1779, %1770
  %1785 = phi ptr [ null, %1770 ], [ %1780, %1779 ]
  %1786 = load ptr, ptr %1617, align 8, !tbaa !127
  %1787 = load ptr, ptr %1786, align 8, !tbaa !175
  %1788 = icmp eq ptr %1787, null
  %1789 = select i1 %1788, ptr @bitmap_zero_bits, ptr %1787
  %1790 = getelementptr inbounds %struct.bitmap_element_def, ptr %1789, i64 0, i32 2
  %1791 = load i32, ptr %1790, align 8, !tbaa !177
  %1792 = shl i32 %1791, 7
  %1793 = getelementptr inbounds %struct.bitmap_element_def, ptr %1789, i64 0, i32 3
  %1794 = load i64, ptr %1793, align 8, !tbaa !89
  %1795 = icmp eq i64 %1794, 0
  %1796 = zext i1 %1795 to i32
  %1797 = or disjoint i32 %1792, %1796
  %1798 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 3
  br label %1799

1799:                                             ; preds = %1915, %1784
  %1800 = phi i64 [ %1794, %1784 ], [ %1918, %1915 ]
  %1801 = phi i32 [ 0, %1784 ], [ %1858, %1915 ]
  %1802 = phi i32 [ %1797, %1784 ], [ %1919, %1915 ]
  %1803 = phi ptr [ %1789, %1784 ], [ %1860, %1915 ]
  %1804 = phi ptr [ %1785, %1784 ], [ %1916, %1915 ]
  %1805 = phi i64 [ %1771, %1784 ], [ %1917, %1915 ]
  %1806 = icmp eq i64 %1800, 0
  br i1 %1806, label %1821, label %1807

1807:                                             ; preds = %1835, %1799
  %1808 = phi i64 [ %1800, %1799 ], [ %1840, %1835 ]
  %1809 = phi i32 [ %1801, %1799 ], [ %1836, %1835 ]
  %1810 = phi i32 [ %1802, %1799 ], [ %1837, %1835 ]
  %1811 = phi ptr [ %1803, %1799 ], [ %1828, %1835 ]
  %1812 = and i64 %1808, 1
  %1813 = icmp eq i64 %1812, 0
  br i1 %1813, label %1814, label %1856

1814:                                             ; preds = %1807, %1814
  %1815 = phi i32 [ %1818, %1814 ], [ %1810, %1807 ]
  %1816 = phi i64 [ %1817, %1814 ], [ %1808, %1807 ]
  %1817 = lshr exact i64 %1816, 1
  %1818 = add i32 %1815, 1
  %1819 = and i64 %1816, 2
  %1820 = icmp eq i64 %1819, 0
  br i1 %1820, label %1814, label %1856, !llvm.loop !179

1821:                                             ; preds = %1799
  %1822 = add i32 %1802, 63
  %1823 = and i32 %1822, -64
  %1824 = add i32 %1801, 1
  br label %1825

1825:                                             ; preds = %1852, %1821
  %1826 = phi i64 [ %1800, %1821 ], [ %1847, %1852 ]
  %1827 = phi i32 [ %1823, %1821 ], [ %1855, %1852 ]
  %1828 = phi ptr [ %1803, %1821 ], [ %1850, %1852 ]
  %1829 = phi i32 [ %1824, %1821 ], [ 0, %1852 ]
  %1830 = icmp eq i32 %1829, 2
  br i1 %1830, label %1846, label %1831

1831:                                             ; preds = %1825
  %1832 = add i32 %1827, 128
  %1833 = shl i32 %1829, 6
  %1834 = sub i32 %1832, %1833
  br label %1835

1835:                                             ; preds = %1831, %1842
  %1836 = phi i32 [ %1844, %1842 ], [ %1829, %1831 ]
  %1837 = phi i32 [ %1843, %1842 ], [ %1827, %1831 ]
  %1838 = zext i32 %1836 to i64
  %1839 = getelementptr inbounds %struct.bitmap_element_def, ptr %1828, i64 0, i32 3, i64 %1838
  %1840 = load i64, ptr %1839, align 8, !tbaa !89
  %1841 = icmp eq i64 %1840, 0
  br i1 %1841, label %1842, label %1807

1842:                                             ; preds = %1835
  %1843 = add i32 %1837, 64
  %1844 = add i32 %1836, 1
  %1845 = icmp eq i32 %1844, 2
  br i1 %1845, label %1846, label %1835, !llvm.loop !180

1846:                                             ; preds = %1842, %1825
  %1847 = phi i64 [ %1826, %1825 ], [ %1840, %1842 ]
  %1848 = phi i32 [ %1827, %1825 ], [ %1834, %1842 ]
  %1849 = phi i32 [ %1829, %1825 ], [ 2, %1842 ]
  %1850 = load ptr, ptr %1828, align 8, !tbaa !181
  %1851 = icmp eq ptr %1850, null
  br i1 %1851, label %1856, label %1852

1852:                                             ; preds = %1846
  %1853 = getelementptr inbounds %struct.bitmap_element_def, ptr %1850, i64 0, i32 2
  %1854 = load i32, ptr %1853, align 8, !tbaa !177
  %1855 = shl i32 %1854, 7
  br label %1825, !llvm.loop !182

1856:                                             ; preds = %1846, %1814, %1807
  %1857 = phi i64 [ %1808, %1807 ], [ %1817, %1814 ], [ %1847, %1846 ]
  %1858 = phi i32 [ %1809, %1807 ], [ %1809, %1814 ], [ %1849, %1846 ]
  %1859 = phi i32 [ %1810, %1807 ], [ %1818, %1814 ], [ %1848, %1846 ]
  %1860 = phi ptr [ %1811, %1807 ], [ %1811, %1814 ], [ %1850, %1846 ]
  %1861 = phi i1 [ false, %1807 ], [ false, %1814 ], [ true, %1846 ]
  br i1 %1861, label %1920, label %1862

1862:                                             ; preds = %1856
  %1863 = load ptr, ptr %884, align 8, !tbaa !130
  %1864 = zext i32 %1859 to i64
  %1865 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %1863, i64 0, i32 2, i64 %1864
  %1866 = load ptr, ptr %1865, align 8, !tbaa !35
  %1867 = getelementptr inbounds %struct.iv_cand, ptr %1866, i64 0, i32 6
  %1868 = load ptr, ptr %1867, align 8, !tbaa !74
  %1869 = getelementptr inbounds %struct.iv, ptr %1868, i64 0, i32 1
  %1870 = load ptr, ptr %1869, align 8, !tbaa !60
  %1871 = icmp eq ptr %1870, null
  br i1 %1871, label %1872, label %1915

1872:                                             ; preds = %1862
  %1873 = load ptr, ptr %1798, align 8, !tbaa !253
  %1874 = load i32, ptr %1866, align 8, !tbaa !76
  %1875 = zext i32 %1874 to i64
  %1876 = getelementptr inbounds i32, ptr %1873, i64 %1875
  %1877 = load i32, ptr %1876, align 4, !tbaa !50
  %1878 = icmp eq i32 %1877, 0
  br i1 %1878, label %1879, label %1915

1879:                                             ; preds = %1872
  %1880 = call fastcc ptr @get_use_iv_cost(ptr noundef nonnull %0, ptr noundef nonnull %1631, ptr noundef nonnull %1866)
  %1881 = icmp eq ptr %1880, null
  br i1 %1881, label %1915, label %1882

1882:                                             ; preds = %1879
  call fastcc void @iv_ca_set_cp(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1631, ptr noundef nonnull %1880)
  %1883 = call fastcc i64 @iv_ca_extend(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1866, ptr noundef nonnull %18, ptr noundef null)
  call fastcc void @iv_ca_set_no_cp(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1631)
  %1884 = load ptr, ptr %18, align 8, !tbaa !35
  %1885 = call ptr @xmalloc(i64 noundef 32) #21
  store ptr %1631, ptr %1885, align 8, !tbaa !258
  %1886 = getelementptr inbounds %struct.iv_ca_delta, ptr %1885, i64 0, i32 1
  store ptr null, ptr %1886, align 8, !tbaa !260
  %1887 = getelementptr inbounds %struct.iv_ca_delta, ptr %1885, i64 0, i32 2
  store ptr %1880, ptr %1887, align 8, !tbaa !261
  %1888 = getelementptr inbounds %struct.iv_ca_delta, ptr %1885, i64 0, i32 3
  store ptr %1884, ptr %1888, align 8, !tbaa !262
  store ptr %1885, ptr %18, align 8, !tbaa !35
  %1889 = trunc i64 %1883 to i32
  %1890 = trunc i64 %1805 to i32
  %1891 = icmp eq i32 %1889, %1890
  %1892 = lshr i64 %1805, 32
  %1893 = trunc i64 %1892 to i32
  %1894 = lshr i64 %1883, 32
  %1895 = trunc i64 %1894 to i32
  %1896 = sub i32 %1895, %1893
  %1897 = sub nsw i32 %1889, %1890
  %1898 = select i1 %1891, i32 %1896, i32 %1897
  %1899 = icmp slt i32 %1898, 0
  br i1 %1899, label %1900, label %1909

1900:                                             ; preds = %1882
  %1901 = icmp eq ptr %1804, null
  br i1 %1901, label %1907, label %1902

1902:                                             ; preds = %1900, %1902
  %1903 = phi ptr [ %1905, %1902 ], [ %1804, %1900 ]
  %1904 = getelementptr inbounds %struct.iv_ca_delta, ptr %1903, i64 0, i32 3
  %1905 = load ptr, ptr %1904, align 8, !tbaa !262
  call void @free(ptr noundef %1903)
  %1906 = icmp eq ptr %1905, null
  br i1 %1906, label %1907, label %1902, !llvm.loop !263

1907:                                             ; preds = %1902, %1900
  %1908 = load ptr, ptr %18, align 8, !tbaa !35
  br label %1915

1909:                                             ; preds = %1882, %1909
  %1910 = phi ptr [ %1912, %1909 ], [ %1885, %1882 ]
  %1911 = getelementptr inbounds %struct.iv_ca_delta, ptr %1910, i64 0, i32 3
  %1912 = load ptr, ptr %1911, align 8, !tbaa !262
  call void @free(ptr noundef %1910)
  %1913 = icmp eq ptr %1912, null
  br i1 %1913, label %1914, label %1909, !llvm.loop !263

1914:                                             ; preds = %1909
  store ptr null, ptr %18, align 8, !tbaa !35
  br label %1915

1915:                                             ; preds = %1914, %1907, %1879, %1872, %1862
  %1916 = phi ptr [ %1804, %1879 ], [ %1908, %1907 ], [ %1804, %1914 ], [ %1804, %1872 ], [ %1804, %1862 ]
  %1917 = phi i64 [ %1805, %1879 ], [ %1883, %1907 ], [ %1805, %1914 ], [ %1805, %1872 ], [ %1805, %1862 ]
  %1918 = lshr i64 %1857, 1
  %1919 = add i32 %1859, 1
  br label %1799, !llvm.loop !264

1920:                                             ; preds = %1856
  %1921 = and i64 %1805, 4294967295
  %1922 = icmp eq i64 %1921, 10000000
  br i1 %1922, label %1923, label %2000

1923:                                             ; preds = %1920
  %1924 = getelementptr inbounds %struct.iv_use, ptr %1631, i64 0, i32 6
  %1925 = load i32, ptr %1924, align 8, !tbaa !231
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %2000, label %1927

1927:                                             ; preds = %1923
  %1928 = getelementptr inbounds %struct.iv_use, ptr %1631, i64 0, i32 7
  %1929 = getelementptr inbounds %struct.iv_ca, ptr %1628, i64 0, i32 3
  br label %1930

1930:                                             ; preds = %1927, %1993
  %1931 = phi i64 [ 0, %1927 ], [ %1996, %1993 ]
  %1932 = phi i64 [ %1805, %1927 ], [ %1995, %1993 ]
  %1933 = phi ptr [ %1804, %1927 ], [ %1994, %1993 ]
  %1934 = load ptr, ptr %1928, align 8, !tbaa !232
  %1935 = getelementptr inbounds %struct.cost_pair, ptr %1934, i64 %1931
  %1936 = load ptr, ptr %1935, align 8, !tbaa !237
  %1937 = icmp eq ptr %1936, null
  br i1 %1937, label %1993, label %1938

1938:                                             ; preds = %1930
  %1939 = getelementptr inbounds %struct.iv_cand, ptr %1936, i64 0, i32 1
  %1940 = load i8, ptr %1939, align 4, !tbaa !77
  %1941 = icmp eq i8 %1940, 0
  br i1 %1941, label %1948, label %1942

1942:                                             ; preds = %1938
  %1943 = getelementptr inbounds %struct.iv_cand, ptr %1936, i64 0, i32 6
  %1944 = load ptr, ptr %1943, align 8, !tbaa !74
  %1945 = getelementptr inbounds %struct.iv, ptr %1944, i64 0, i32 1
  %1946 = load ptr, ptr %1945, align 8, !tbaa !60
  %1947 = icmp eq ptr %1946, null
  br i1 %1947, label %1993, label %1948

1948:                                             ; preds = %1942, %1938
  %1949 = load ptr, ptr %1929, align 8, !tbaa !253
  %1950 = load i32, ptr %1936, align 8, !tbaa !76
  %1951 = zext i32 %1950 to i64
  %1952 = getelementptr inbounds i32, ptr %1949, i64 %1951
  %1953 = load i32, ptr %1952, align 4, !tbaa !50
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1955, label %1993

1955:                                             ; preds = %1948
  store ptr null, ptr %18, align 8, !tbaa !35
  call fastcc void @iv_ca_set_cp(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1631, ptr noundef nonnull %1935)
  %1956 = call fastcc i64 @iv_ca_extend(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1936, ptr noundef nonnull %18, ptr noundef null)
  call fastcc void @iv_ca_set_no_cp(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef nonnull %1631)
  %1957 = load ptr, ptr %1772, align 8, !tbaa !252
  %1958 = load i32, ptr %1631, align 8, !tbaa !62
  %1959 = zext i32 %1958 to i64
  %1960 = getelementptr inbounds ptr, ptr %1957, i64 %1959
  %1961 = load ptr, ptr %1960, align 8, !tbaa !35
  %1962 = load ptr, ptr %18, align 8, !tbaa !35
  %1963 = call ptr @xmalloc(i64 noundef 32) #21
  store ptr %1631, ptr %1963, align 8, !tbaa !258
  %1964 = getelementptr inbounds %struct.iv_ca_delta, ptr %1963, i64 0, i32 1
  store ptr %1961, ptr %1964, align 8, !tbaa !260
  %1965 = getelementptr inbounds %struct.iv_ca_delta, ptr %1963, i64 0, i32 2
  store ptr %1935, ptr %1965, align 8, !tbaa !261
  %1966 = getelementptr inbounds %struct.iv_ca_delta, ptr %1963, i64 0, i32 3
  store ptr %1962, ptr %1966, align 8, !tbaa !262
  store ptr %1963, ptr %18, align 8, !tbaa !35
  %1967 = trunc i64 %1956 to i32
  %1968 = trunc i64 %1932 to i32
  %1969 = icmp eq i32 %1967, %1968
  %1970 = lshr i64 %1932, 32
  %1971 = trunc i64 %1970 to i32
  %1972 = lshr i64 %1956, 32
  %1973 = trunc i64 %1972 to i32
  %1974 = sub i32 %1973, %1971
  %1975 = sub nsw i32 %1967, %1968
  %1976 = select i1 %1969, i32 %1974, i32 %1975
  %1977 = icmp slt i32 %1976, 0
  br i1 %1977, label %1978, label %1987

1978:                                             ; preds = %1955
  %1979 = icmp eq ptr %1933, null
  br i1 %1979, label %1985, label %1980

1980:                                             ; preds = %1978, %1980
  %1981 = phi ptr [ %1983, %1980 ], [ %1933, %1978 ]
  %1982 = getelementptr inbounds %struct.iv_ca_delta, ptr %1981, i64 0, i32 3
  %1983 = load ptr, ptr %1982, align 8, !tbaa !262
  call void @free(ptr noundef %1981)
  %1984 = icmp eq ptr %1983, null
  br i1 %1984, label %1985, label %1980, !llvm.loop !263

1985:                                             ; preds = %1980, %1978
  %1986 = load ptr, ptr %18, align 8, !tbaa !35
  br label %1993

1987:                                             ; preds = %1955, %1987
  %1988 = phi ptr [ %1990, %1987 ], [ %1963, %1955 ]
  %1989 = getelementptr inbounds %struct.iv_ca_delta, ptr %1988, i64 0, i32 3
  %1990 = load ptr, ptr %1989, align 8, !tbaa !262
  call void @free(ptr noundef %1988)
  %1991 = icmp eq ptr %1990, null
  br i1 %1991, label %1992, label %1987, !llvm.loop !263

1992:                                             ; preds = %1987
  store ptr null, ptr %18, align 8, !tbaa !35
  br label %1993

1993:                                             ; preds = %1942, %1992, %1985, %1948, %1930
  %1994 = phi ptr [ %1933, %1930 ], [ %1986, %1985 ], [ %1933, %1992 ], [ %1933, %1948 ], [ %1933, %1942 ]
  %1995 = phi i64 [ %1932, %1930 ], [ %1956, %1985 ], [ %1932, %1992 ], [ %1932, %1948 ], [ %1932, %1942 ]
  %1996 = add nuw nsw i64 %1931, 1
  %1997 = load i32, ptr %1924, align 8, !tbaa !231
  %1998 = zext i32 %1997 to i64
  %1999 = icmp ult i64 %1996, %1998
  br i1 %1999, label %1930, label %2000, !llvm.loop !265

2000:                                             ; preds = %1993, %1923, %1920
  %2001 = phi ptr [ %1804, %1920 ], [ %1804, %1923 ], [ %1994, %1993 ]
  %2002 = phi i64 [ %1805, %1920 ], [ %1805, %1923 ], [ %1995, %1993 ]
  call fastcc void @iv_ca_delta_commit(ptr noundef nonnull %0, ptr noundef nonnull %1628, ptr noundef %2001, i8 noundef zeroext 1)
  %2003 = icmp eq ptr %2001, null
  br i1 %2003, label %2009, label %2004

2004:                                             ; preds = %2000, %2004
  %2005 = phi ptr [ %2007, %2004 ], [ %2001, %2000 ]
  %2006 = getelementptr inbounds %struct.iv_ca_delta, ptr %2005, i64 0, i32 3
  %2007 = load ptr, ptr %2006, align 8, !tbaa !262
  call void @free(ptr noundef %2005)
  %2008 = icmp eq ptr %2007, null
  br i1 %2008, label %2009, label %2004, !llvm.loop !263

2009:                                             ; preds = %2004, %2000
  %2010 = and i64 %2002, 4294967295
  %2011 = icmp eq i64 %2010, 10000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  %2012 = add nuw nsw i64 %1619, 1
  br i1 %2011, label %2013, label %1618, !llvm.loop !266

2013:                                             ; preds = %2009
  call fastcc void @iv_ca_free(ptr noundef nonnull %19)
  br label %2014

2014:                                             ; preds = %1624, %2013
  %2015 = phi ptr [ null, %2013 ], [ %1628, %1624 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  %2016 = icmp eq ptr %2015, null
  %2017 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2018 = icmp eq ptr %2017, null
  br i1 %2016, label %2019, label %2026

2019:                                             ; preds = %2014
  br i1 %2018, label %2211, label %2020

2020:                                             ; preds = %2019
  %2021 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2022 = and i32 %2021, 8
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2211, label %2024

2024:                                             ; preds = %2020
  %2025 = call i64 @fwrite(ptr nonnull @.str.78, i64 38, i64 1, ptr nonnull %2017)
  br label %2211

2026:                                             ; preds = %2014
  br i1 %2018, label %2034, label %2027

2027:                                             ; preds = %2026
  %2028 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2029 = and i32 %2028, 8
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2034, label %2031

2031:                                             ; preds = %2027
  %2032 = call i64 @fwrite(ptr nonnull @.str.79, i64 27, i64 1, ptr nonnull %2017)
  %2033 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @iv_ca_dump(ptr noundef nonnull %0, ptr noundef %2033, ptr noundef nonnull %2015)
  br label %2034

2034:                                             ; preds = %2031, %2027, %2026
  %2035 = getelementptr inbounds %struct.iv_ca, ptr %2015, i64 0, i32 1
  %2036 = getelementptr inbounds %struct.iv_ca, ptr %2015, i64 0, i32 3
  %2037 = getelementptr inbounds %struct.iv_ca, ptr %2015, i64 0, i32 10
  %2038 = getelementptr inbounds %struct.iv_ca, ptr %2015, i64 0, i32 10
  br label %2039

2039:                                             ; preds = %2171, %2034
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  %2040 = load i32, ptr %2035, align 4, !tbaa !251
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2042, label %2044

2042:                                             ; preds = %2039
  %2043 = load i64, ptr %2037, align 8, !tbaa.struct !257
  br label %2044

2044:                                             ; preds = %2042, %2039
  %2045 = phi i64 [ %2043, %2042 ], [ 42949672970000000, %2039 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  br label %2046

2046:                                             ; preds = %2120, %2044
  %2047 = phi i64 [ %2123, %2120 ], [ 0, %2044 ]
  %2048 = phi ptr [ %2121, %2120 ], [ null, %2044 ]
  %2049 = phi i64 [ %2122, %2120 ], [ %2045, %2044 ]
  %2050 = load ptr, ptr %884, align 8, !tbaa !130
  %2051 = icmp eq ptr %2050, null
  br i1 %2051, label %2054, label %2052

2052:                                             ; preds = %2046
  %2053 = load i32, ptr %2050, align 8, !tbaa !217
  br label %2054

2054:                                             ; preds = %2052, %2046
  %2055 = phi i32 [ %2053, %2052 ], [ 0, %2046 ]
  %2056 = zext i32 %2055 to i64
  %2057 = icmp ult i64 %2047, %2056
  br i1 %2057, label %2058, label %2124

2058:                                             ; preds = %2054
  %2059 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %2050, i64 0, i32 2, i64 %2047
  %2060 = load ptr, ptr %2059, align 8, !tbaa !35
  %2061 = load ptr, ptr %2036, align 8, !tbaa !253
  %2062 = load i32, ptr %2060, align 8, !tbaa !76
  %2063 = zext i32 %2062 to i64
  %2064 = getelementptr inbounds i32, ptr %2061, i64 %2063
  %2065 = load i32, ptr %2064, align 4, !tbaa !50
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2067, label %2120

2067:                                             ; preds = %2058
  %2068 = call fastcc i64 @iv_ca_extend(ptr noundef nonnull %0, ptr noundef nonnull %2015, ptr noundef nonnull %2060, ptr noundef nonnull %16, ptr noundef nonnull %14)
  %2069 = load ptr, ptr %16, align 8, !tbaa !35
  %2070 = icmp eq ptr %2069, null
  br i1 %2070, label %2120, label %2071

2071:                                             ; preds = %2067
  %2072 = load i32, ptr %14, align 4, !tbaa !50
  %2073 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %2074 = getelementptr inbounds %struct.param_info, ptr %2073, i64 62, i32 1
  %2075 = load i32, ptr %2074, align 8, !tbaa !203
  %2076 = icmp ugt i32 %2072, %2075
  br i1 %2076, label %2089, label %2077

2077:                                             ; preds = %2071
  call fastcc void @iv_ca_delta_commit(ptr noundef nonnull %0, ptr noundef nonnull %2015, ptr noundef nonnull %2069, i8 noundef zeroext 1)
  %2078 = call fastcc i64 @iv_ca_prune(ptr noundef nonnull %0, ptr noundef nonnull %2015, ptr noundef nonnull %2060, ptr noundef nonnull %17)
  call fastcc void @iv_ca_delta_commit(ptr noundef nonnull %0, ptr noundef nonnull %2015, ptr noundef nonnull %2069, i8 noundef zeroext 0)
  %2079 = load ptr, ptr %17, align 8, !tbaa !35
  %2080 = icmp eq ptr %2079, null
  br i1 %2080, label %2088, label %2081

2081:                                             ; preds = %2077, %2081
  %2082 = phi ptr [ %2084, %2081 ], [ %2069, %2077 ]
  %2083 = getelementptr inbounds %struct.iv_ca_delta, ptr %2082, i64 0, i32 3
  %2084 = load ptr, ptr %2083, align 8, !tbaa !262
  %2085 = icmp eq ptr %2084, null
  br i1 %2085, label %2086, label %2081, !llvm.loop !267

2086:                                             ; preds = %2081
  %2087 = getelementptr inbounds %struct.iv_ca_delta, ptr %2082, i64 0, i32 3
  store ptr %2079, ptr %2087, align 8, !tbaa !262
  br label %2088

2088:                                             ; preds = %2086, %2077
  store ptr %2069, ptr %16, align 8, !tbaa !35
  br label %2089

2089:                                             ; preds = %2088, %2071
  %2090 = phi i64 [ %2078, %2088 ], [ %2068, %2071 ]
  %2091 = trunc i64 %2090 to i32
  %2092 = trunc i64 %2049 to i32
  %2093 = icmp eq i32 %2091, %2092
  %2094 = lshr i64 %2049, 32
  %2095 = trunc i64 %2094 to i32
  %2096 = lshr i64 %2090, 32
  %2097 = trunc i64 %2096 to i32
  %2098 = sub i32 %2097, %2095
  %2099 = sub nsw i32 %2091, %2092
  %2100 = select i1 %2093, i32 %2098, i32 %2099
  %2101 = icmp slt i32 %2100, 0
  br i1 %2101, label %2102, label %2111

2102:                                             ; preds = %2089
  %2103 = icmp eq ptr %2048, null
  br i1 %2103, label %2109, label %2104

2104:                                             ; preds = %2102, %2104
  %2105 = phi ptr [ %2107, %2104 ], [ %2048, %2102 ]
  %2106 = getelementptr inbounds %struct.iv_ca_delta, ptr %2105, i64 0, i32 3
  %2107 = load ptr, ptr %2106, align 8, !tbaa !262
  call void @free(ptr noundef %2105)
  %2108 = icmp eq ptr %2107, null
  br i1 %2108, label %2109, label %2104, !llvm.loop !263

2109:                                             ; preds = %2104, %2102
  %2110 = load ptr, ptr %16, align 8, !tbaa !35
  br label %2120

2111:                                             ; preds = %2089
  %2112 = load ptr, ptr %16, align 8, !tbaa !35
  %2113 = icmp eq ptr %2112, null
  br i1 %2113, label %2119, label %2114

2114:                                             ; preds = %2111, %2114
  %2115 = phi ptr [ %2117, %2114 ], [ %2112, %2111 ]
  %2116 = getelementptr inbounds %struct.iv_ca_delta, ptr %2115, i64 0, i32 3
  %2117 = load ptr, ptr %2116, align 8, !tbaa !262
  call void @free(ptr noundef %2115)
  %2118 = icmp eq ptr %2117, null
  br i1 %2118, label %2119, label %2114, !llvm.loop !263

2119:                                             ; preds = %2114, %2111
  store ptr null, ptr %16, align 8, !tbaa !35
  br label %2120

2120:                                             ; preds = %2119, %2109, %2067, %2058
  %2121 = phi ptr [ %2048, %2058 ], [ %2110, %2109 ], [ %2048, %2119 ], [ %2048, %2067 ]
  %2122 = phi i64 [ %2049, %2058 ], [ %2090, %2109 ], [ %2049, %2119 ], [ %2049, %2067 ]
  %2123 = add nuw nsw i64 %2047, 1
  br label %2046, !llvm.loop !268

2124:                                             ; preds = %2054
  store ptr %2048, ptr %15, align 8, !tbaa !35
  %2125 = icmp eq ptr %2048, null
  br i1 %2125, label %2126, label %2130

2126:                                             ; preds = %2124
  %2127 = call fastcc i64 @iv_ca_prune(ptr noundef nonnull %0, ptr noundef nonnull %2015, ptr noundef null, ptr noundef nonnull %15)
  %2128 = load ptr, ptr %15, align 8, !tbaa !35
  %2129 = icmp eq ptr %2128, null
  br i1 %2129, label %2161, label %2130

2130:                                             ; preds = %2126, %2124
  %2131 = phi i64 [ %2049, %2124 ], [ %2127, %2126 ]
  %2132 = load ptr, ptr %15, align 8, !tbaa !35
  call fastcc void @iv_ca_delta_commit(ptr noundef nonnull %0, ptr noundef nonnull %2015, ptr noundef %2132, i8 noundef zeroext 1)
  %2133 = load i32, ptr %2035, align 4, !tbaa !251
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2135, label %2137

2135:                                             ; preds = %2130
  %2136 = load i64, ptr %2038, align 8, !tbaa.struct !257
  br label %2137

2137:                                             ; preds = %2135, %2130
  %2138 = phi i64 [ %2136, %2135 ], [ 42949672970000000, %2130 ]
  %2139 = trunc i64 %2131 to i32
  %2140 = trunc i64 %2138 to i32
  %2141 = icmp eq i32 %2139, %2140
  %2142 = lshr i64 %2138, 32
  %2143 = trunc i64 %2142 to i32
  %2144 = lshr i64 %2131, 32
  %2145 = trunc i64 %2144 to i32
  %2146 = sub i32 %2145, %2143
  %2147 = sub nsw i32 %2139, %2140
  %2148 = select i1 %2141, i32 %2146, i32 %2147
  %2149 = icmp eq i32 %2148, 0
  br i1 %2149, label %2151, label %2150

2150:                                             ; preds = %2137
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5245, ptr noundef nonnull @.str.13) #21
  br label %2151

2151:                                             ; preds = %2150, %2137
  %2152 = icmp eq ptr %2132, null
  br i1 %2152, label %2158, label %2153

2153:                                             ; preds = %2151, %2153
  %2154 = phi ptr [ %2156, %2153 ], [ %2132, %2151 ]
  %2155 = getelementptr inbounds %struct.iv_ca_delta, ptr %2154, i64 0, i32 3
  %2156 = load ptr, ptr %2155, align 8, !tbaa !262
  call void @free(ptr noundef %2154)
  %2157 = icmp eq ptr %2156, null
  br i1 %2157, label %2158, label %2153, !llvm.loop !263

2158:                                             ; preds = %2153, %2151
  store ptr null, ptr %15, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  %2159 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2160 = icmp eq ptr %2159, null
  br i1 %2160, label %2171, label %2164

2161:                                             ; preds = %2126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  %2162 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2163 = icmp eq ptr %2162, null
  br i1 %2163, label %2188, label %2172

2164:                                             ; preds = %2158
  %2165 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2166 = and i32 %2165, 8
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2171, label %2168

2168:                                             ; preds = %2164
  %2169 = call i64 @fwrite(ptr nonnull @.str.80, i64 13, i64 1, ptr nonnull %2159)
  %2170 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @iv_ca_dump(ptr noundef nonnull %0, ptr noundef %2170, ptr noundef nonnull %2015)
  br label %2171

2171:                                             ; preds = %2168, %2164, %2158
  br label %2039, !llvm.loop !269

2172:                                             ; preds = %2161
  %2173 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2174 = and i32 %2173, 8
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2188, label %2176

2176:                                             ; preds = %2172
  %2177 = load i32, ptr %2035, align 4, !tbaa !251
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2179, label %2182

2179:                                             ; preds = %2176
  %2180 = getelementptr inbounds %struct.iv_ca, ptr %2015, i64 0, i32 10
  %2181 = load i64, ptr %2180, align 8, !tbaa.struct !257
  br label %2182

2182:                                             ; preds = %2179, %2176
  %2183 = phi i64 [ %2181, %2179 ], [ 42949672970000000, %2176 ]
  %2184 = trunc i64 %2183 to i32
  %2185 = lshr i64 %2183, 32
  %2186 = trunc i64 %2185 to i32
  %2187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2162, ptr noundef nonnull @.str.81, i32 noundef %2184, i32 noundef %2186)
  br label %2188

2188:                                             ; preds = %2182, %2172, %2161
  %2189 = load ptr, ptr %670, align 8, !tbaa !69
  %2190 = icmp eq ptr %2189, null
  %2191 = getelementptr inbounds %struct.iv_ca, ptr %2015, i64 0, i32 2
  br label %2192

2192:                                             ; preds = %2200, %2188
  %2193 = phi i64 [ %2210, %2200 ], [ 0, %2188 ]
  br i1 %2190, label %2196, label %2194

2194:                                             ; preds = %2192
  %2195 = load i32, ptr %2189, align 8, !tbaa !71
  br label %2196

2196:                                             ; preds = %2194, %2192
  %2197 = phi i32 [ %2195, %2194 ], [ 0, %2192 ]
  %2198 = zext i32 %2197 to i64
  %2199 = icmp ult i64 %2193, %2198
  br i1 %2199, label %2200, label %2211

2200:                                             ; preds = %2196
  %2201 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %2189, i64 0, i32 2, i64 %2193
  %2202 = load ptr, ptr %2201, align 8, !tbaa !35
  %2203 = load ptr, ptr %2191, align 8, !tbaa !252
  %2204 = load i32, ptr %2202, align 8, !tbaa !62
  %2205 = zext i32 %2204 to i64
  %2206 = getelementptr inbounds ptr, ptr %2203, i64 %2205
  %2207 = load ptr, ptr %2206, align 8, !tbaa !35
  %2208 = load ptr, ptr %2207, align 8, !tbaa !237
  %2209 = getelementptr inbounds %struct.iv_use, ptr %2202, i64 0, i32 8
  store ptr %2208, ptr %2209, align 8, !tbaa !270
  %2210 = add nuw nsw i64 %2193, 1
  br label %2192, !llvm.loop !271

2211:                                             ; preds = %2196, %2019, %2020, %2024
  %2212 = phi ptr [ null, %2024 ], [ null, %2020 ], [ null, %2019 ], [ %2015, %2196 ]
  store ptr %2212, ptr %30, align 8, !tbaa !35
  %2213 = icmp eq ptr %2212, null
  br i1 %2213, label %3006, label %2214

2214:                                             ; preds = %2211
  %2215 = getelementptr inbounds %struct.iv_ca, ptr %2212, i64 0, i32 4
  %2216 = load ptr, ptr %2215, align 8, !tbaa !254
  %2217 = load ptr, ptr %2216, align 8, !tbaa !175
  %2218 = icmp eq ptr %2217, null
  %2219 = select i1 %2218, ptr @bitmap_zero_bits, ptr %2217
  %2220 = getelementptr inbounds %struct.bitmap_element_def, ptr %2219, i64 0, i32 2
  %2221 = load i32, ptr %2220, align 8, !tbaa !177
  %2222 = shl i32 %2221, 7
  %2223 = getelementptr inbounds %struct.bitmap_element_def, ptr %2219, i64 0, i32 3
  %2224 = load i64, ptr %2223, align 8, !tbaa !89
  %2225 = icmp eq i64 %2224, 0
  %2226 = zext i1 %2225 to i32
  %2227 = or disjoint i32 %2222, %2226
  %2228 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %2229 = getelementptr inbounds i8, ptr %12, i64 8
  %2230 = getelementptr inbounds i8, ptr %12, i64 16
  %2231 = getelementptr inbounds i8, ptr %12, i64 8
  %2232 = getelementptr inbounds i8, ptr %12, i64 16
  br label %2233

2233:                                             ; preds = %2384, %2214
  %2234 = phi i64 [ %2224, %2214 ], [ %2385, %2384 ]
  %2235 = phi i32 [ 0, %2214 ], [ %2290, %2384 ]
  %2236 = phi i32 [ %2227, %2214 ], [ %2386, %2384 ]
  %2237 = phi ptr [ %2219, %2214 ], [ %2292, %2384 ]
  %2238 = icmp eq i64 %2234, 0
  br i1 %2238, label %2253, label %2239

2239:                                             ; preds = %2267, %2233
  %2240 = phi i64 [ %2234, %2233 ], [ %2272, %2267 ]
  %2241 = phi i32 [ %2235, %2233 ], [ %2268, %2267 ]
  %2242 = phi i32 [ %2236, %2233 ], [ %2269, %2267 ]
  %2243 = phi ptr [ %2237, %2233 ], [ %2260, %2267 ]
  %2244 = and i64 %2240, 1
  %2245 = icmp eq i64 %2244, 0
  br i1 %2245, label %2246, label %2288

2246:                                             ; preds = %2239, %2246
  %2247 = phi i32 [ %2250, %2246 ], [ %2242, %2239 ]
  %2248 = phi i64 [ %2249, %2246 ], [ %2240, %2239 ]
  %2249 = lshr exact i64 %2248, 1
  %2250 = add i32 %2247, 1
  %2251 = and i64 %2248, 2
  %2252 = icmp eq i64 %2251, 0
  br i1 %2252, label %2246, label %2288, !llvm.loop !179

2253:                                             ; preds = %2233
  %2254 = add i32 %2236, 63
  %2255 = and i32 %2254, -64
  %2256 = add i32 %2235, 1
  br label %2257

2257:                                             ; preds = %2284, %2253
  %2258 = phi i64 [ %2234, %2253 ], [ %2279, %2284 ]
  %2259 = phi i32 [ %2255, %2253 ], [ %2287, %2284 ]
  %2260 = phi ptr [ %2237, %2253 ], [ %2282, %2284 ]
  %2261 = phi i32 [ %2256, %2253 ], [ 0, %2284 ]
  %2262 = icmp eq i32 %2261, 2
  br i1 %2262, label %2278, label %2263

2263:                                             ; preds = %2257
  %2264 = add i32 %2259, 128
  %2265 = shl i32 %2261, 6
  %2266 = sub i32 %2264, %2265
  br label %2267

2267:                                             ; preds = %2263, %2274
  %2268 = phi i32 [ %2276, %2274 ], [ %2261, %2263 ]
  %2269 = phi i32 [ %2275, %2274 ], [ %2259, %2263 ]
  %2270 = zext i32 %2268 to i64
  %2271 = getelementptr inbounds %struct.bitmap_element_def, ptr %2260, i64 0, i32 3, i64 %2270
  %2272 = load i64, ptr %2271, align 8, !tbaa !89
  %2273 = icmp eq i64 %2272, 0
  br i1 %2273, label %2274, label %2239

2274:                                             ; preds = %2267
  %2275 = add i32 %2269, 64
  %2276 = add i32 %2268, 1
  %2277 = icmp eq i32 %2276, 2
  br i1 %2277, label %2278, label %2267, !llvm.loop !180

2278:                                             ; preds = %2274, %2257
  %2279 = phi i64 [ %2258, %2257 ], [ %2272, %2274 ]
  %2280 = phi i32 [ %2259, %2257 ], [ %2266, %2274 ]
  %2281 = phi i32 [ %2261, %2257 ], [ 2, %2274 ]
  %2282 = load ptr, ptr %2260, align 8, !tbaa !181
  %2283 = icmp eq ptr %2282, null
  br i1 %2283, label %2288, label %2284

2284:                                             ; preds = %2278
  %2285 = getelementptr inbounds %struct.bitmap_element_def, ptr %2282, i64 0, i32 2
  %2286 = load i32, ptr %2285, align 8, !tbaa !177
  %2287 = shl i32 %2286, 7
  br label %2257, !llvm.loop !182

2288:                                             ; preds = %2278, %2246, %2239
  %2289 = phi i64 [ %2240, %2239 ], [ %2249, %2246 ], [ %2279, %2278 ]
  %2290 = phi i32 [ %2241, %2239 ], [ %2241, %2246 ], [ %2281, %2278 ]
  %2291 = phi i32 [ %2242, %2239 ], [ %2250, %2246 ], [ %2280, %2278 ]
  %2292 = phi ptr [ %2243, %2239 ], [ %2243, %2246 ], [ %2282, %2278 ]
  %2293 = phi i1 [ false, %2239 ], [ false, %2246 ], [ true, %2278 ]
  br i1 %2293, label %2387, label %2294

2294:                                             ; preds = %2288
  %2295 = load ptr, ptr %884, align 8, !tbaa !130
  %2296 = zext i32 %2291 to i64
  %2297 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %2295, i64 0, i32 2, i64 %2296
  %2298 = load ptr, ptr %2297, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #21
  %2299 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 6
  %2300 = load ptr, ptr %2299, align 8, !tbaa !74
  %2301 = icmp eq ptr %2300, null
  br i1 %2301, label %2384, label %2302

2302:                                             ; preds = %2294
  %2303 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 2
  %2304 = load i32, ptr %2303, align 8, !tbaa !79
  switch i32 %2304, label %2368 [
    i32 0, label %2305
    i32 1, label %2326
    i32 3, label %2347
    i32 2, label %2348
    i32 4, label %2352
  ]

2305:                                             ; preds = %2302
  %2306 = load ptr, ptr %0, align 8, !tbaa !145
  %2307 = call ptr @ip_normal_pos(ptr noundef %2306) #21
  %2308 = getelementptr inbounds %struct.basic_block_def, ptr %2307, i64 0, i32 13
  %2309 = load i32, ptr %2308, align 8, !tbaa !163, !noalias !272
  %2310 = and i32 %2309, 512
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2312, label %2318

2312:                                             ; preds = %2305
  %2313 = getelementptr inbounds %struct.basic_block_def, ptr %2307, i64 0, i32 7
  %2314 = load ptr, ptr %2313, align 8, !tbaa !46, !noalias !272
  %2315 = icmp eq ptr %2314, null
  br i1 %2315, label %2318, label %2316

2316:                                             ; preds = %2312
  %2317 = load ptr, ptr %2314, align 8, !tbaa !167, !noalias !272
  br label %2318

2318:                                             ; preds = %2316, %2312, %2305
  %2319 = phi ptr [ %2317, %2316 ], [ null, %2312 ], [ null, %2305 ]
  %2320 = icmp eq ptr %2319, null
  br i1 %2320, label %2324, label %2321

2321:                                             ; preds = %2318
  %2322 = getelementptr inbounds %struct.gimple_seq_d, ptr %2319, i64 0, i32 1
  %2323 = load ptr, ptr %2322, align 8, !tbaa !275, !noalias !272
  br label %2324

2324:                                             ; preds = %2321, %2318
  %2325 = phi ptr [ %2323, %2321 ], [ null, %2318 ]
  store ptr %2325, ptr %12, align 8, !tbaa.struct !152
  store ptr %2319, ptr %2231, align 8, !tbaa.struct !276
  store ptr %2307, ptr %2232, align 8, !tbaa.struct !277
  br label %2368

2326:                                             ; preds = %2302
  %2327 = load ptr, ptr %0, align 8, !tbaa !145
  %2328 = call ptr @ip_end_pos(ptr noundef %2327) #21
  %2329 = getelementptr inbounds %struct.basic_block_def, ptr %2328, i64 0, i32 13
  %2330 = load i32, ptr %2329, align 8, !tbaa !163, !noalias !278
  %2331 = and i32 %2330, 512
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2333, label %2339

2333:                                             ; preds = %2326
  %2334 = getelementptr inbounds %struct.basic_block_def, ptr %2328, i64 0, i32 7
  %2335 = load ptr, ptr %2334, align 8, !tbaa !46, !noalias !278
  %2336 = icmp eq ptr %2335, null
  br i1 %2336, label %2339, label %2337

2337:                                             ; preds = %2333
  %2338 = load ptr, ptr %2335, align 8, !tbaa !167, !noalias !278
  br label %2339

2339:                                             ; preds = %2337, %2333, %2326
  %2340 = phi ptr [ %2338, %2337 ], [ null, %2333 ], [ null, %2326 ]
  %2341 = icmp eq ptr %2340, null
  br i1 %2341, label %2345, label %2342

2342:                                             ; preds = %2339
  %2343 = getelementptr inbounds %struct.gimple_seq_d, ptr %2340, i64 0, i32 1
  %2344 = load ptr, ptr %2343, align 8, !tbaa !275, !noalias !278
  br label %2345

2345:                                             ; preds = %2342, %2339
  %2346 = phi ptr [ %2344, %2342 ], [ null, %2339 ]
  store ptr %2346, ptr %12, align 8, !tbaa.struct !152
  store ptr %2340, ptr %2229, align 8, !tbaa.struct !276
  store ptr %2328, ptr %2230, align 8, !tbaa.struct !277
  br label %2368

2347:                                             ; preds = %2302
  br label %2348

2348:                                             ; preds = %2347, %2302
  %2349 = phi i8 [ 0, %2302 ], [ 1, %2347 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #21
  %2350 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 3
  %2351 = load ptr, ptr %2350, align 8, !tbaa !219
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %2351) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #21
  br label %2368

2352:                                             ; preds = %2302
  %2353 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 4
  %2354 = load ptr, ptr %2353, align 8, !tbaa !213
  %2355 = getelementptr inbounds %struct.tree_ssa_name, ptr %2354, i64 0, i32 3
  %2356 = load i32, ptr %2355, align 8, !tbaa !46
  %2357 = load ptr, ptr %2228, align 8, !tbaa !125
  %2358 = zext i32 %2356 to i64
  %2359 = getelementptr inbounds %struct.version_info, ptr %2357, i64 %2358, i32 4
  store i8 1, ptr %2359, align 8, !tbaa !281
  %2360 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 5
  %2361 = load ptr, ptr %2360, align 8, !tbaa !214
  %2362 = getelementptr inbounds %struct.tree_ssa_name, ptr %2361, i64 0, i32 3
  %2363 = load i32, ptr %2362, align 8, !tbaa !46
  %2364 = zext i32 %2363 to i64
  %2365 = getelementptr inbounds %struct.version_info, ptr %2357, i64 %2364, i32 4
  store i8 1, ptr %2365, align 8, !tbaa !281
  %2366 = call fastcc ptr @find_interesting_uses_op(ptr noundef nonnull %0, ptr noundef %2361)
  %2367 = getelementptr inbounds %struct.iv_use, ptr %2366, i64 0, i32 8
  store ptr %2298, ptr %2367, align 8, !tbaa !270
  br label %2384

2368:                                             ; preds = %2348, %2345, %2324, %2302
  %2369 = phi i8 [ 0, %2302 ], [ %2349, %2348 ], [ 1, %2345 ], [ 0, %2324 ]
  %2370 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 4
  %2371 = load ptr, ptr %2370, align 8, !tbaa !213
  call void @gimple_add_tmp_var(ptr noundef %2371) #21
  %2372 = load ptr, ptr %2370, align 8, !tbaa !213
  %2373 = call zeroext i8 @add_referenced_var(ptr noundef %2372) #21
  %2374 = load ptr, ptr %2299, align 8, !tbaa !74
  %2375 = load ptr, ptr %2374, align 8, !tbaa !58
  %2376 = call ptr @unshare_expr(ptr noundef %2375) #21
  %2377 = load ptr, ptr %2299, align 8, !tbaa !74
  %2378 = getelementptr inbounds %struct.iv, ptr %2377, i64 0, i32 2
  %2379 = load ptr, ptr %2378, align 8, !tbaa !59
  %2380 = call ptr @unshare_expr(ptr noundef %2379) #21
  %2381 = load ptr, ptr %2370, align 8, !tbaa !213
  %2382 = load ptr, ptr %0, align 8, !tbaa !145
  %2383 = getelementptr inbounds %struct.iv_cand, ptr %2298, i64 0, i32 5
  call void @create_iv(ptr noundef %2376, ptr noundef %2380, ptr noundef %2381, ptr noundef %2382, ptr noundef nonnull %12, i8 noundef zeroext %2369, ptr noundef nonnull %2370, ptr noundef nonnull %2383) #21
  br label %2384

2384:                                             ; preds = %2368, %2352, %2294
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #21
  %2385 = lshr i64 %2289, 1
  %2386 = add i32 %2291, 1
  br label %2233, !llvm.loop !282

2387:                                             ; preds = %2288
  call fastcc void @iv_ca_free(ptr noundef nonnull %30)
  %2388 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %2389 = getelementptr inbounds i8, ptr %9, i64 8
  %2390 = getelementptr inbounds i8, ptr %9, i64 16
  br label %2391

2391:                                             ; preds = %2894, %2387
  %2392 = phi i64 [ %2895, %2894 ], [ 0, %2387 ]
  %2393 = load ptr, ptr %670, align 8, !tbaa !69
  %2394 = icmp eq ptr %2393, null
  br i1 %2394, label %2397, label %2395

2395:                                             ; preds = %2391
  %2396 = load i32, ptr %2393, align 8, !tbaa !71
  br label %2397

2397:                                             ; preds = %2395, %2391
  %2398 = phi i32 [ %2396, %2395 ], [ 0, %2391 ]
  %2399 = zext i32 %2398 to i64
  %2400 = icmp ult i64 %2392, %2399
  br i1 %2400, label %2401, label %2896

2401:                                             ; preds = %2397
  %2402 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %2393, i64 0, i32 2, i64 %2392
  %2403 = load ptr, ptr %2402, align 8, !tbaa !35
  %2404 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 8
  %2405 = load ptr, ptr %2404, align 8, !tbaa !270
  %2406 = icmp eq ptr %2405, null
  br i1 %2406, label %2407, label %2408

2407:                                             ; preds = %2401
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5654, ptr noundef nonnull @.str.13) #21
  br label %2408

2408:                                             ; preds = %2407, %2401
  %2409 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 1
  %2410 = load i32, ptr %2409, align 4, !tbaa !64
  switch i32 %2410, label %2885 [
    i32 0, label %2411
    i32 1, label %2711
    i32 2, label %2765
  ]

2411:                                             ; preds = %2408
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #21
  %2412 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 2
  %2413 = load i32, ptr %2412, align 8, !tbaa !79
  %2414 = icmp eq i32 %2413, 4
  br i1 %2414, label %2415, label %2619

2415:                                             ; preds = %2411
  %2416 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 3
  %2417 = load ptr, ptr %2416, align 8, !tbaa !219
  %2418 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 3
  %2419 = load ptr, ptr %2418, align 8, !tbaa !65
  %2420 = icmp eq ptr %2417, %2419
  br i1 %2420, label %2421, label %2619

2421:                                             ; preds = %2415
  %2422 = load i32, ptr %2419, align 8
  %2423 = and i32 %2422, 255
  %2424 = icmp eq i32 %2423, 6
  br i1 %2424, label %2426, label %2425

2425:                                             ; preds = %2421
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5390, ptr noundef nonnull @.str.13) #21
  br label %2426

2426:                                             ; preds = %2425, %2421
  %2427 = load ptr, ptr %2418, align 8, !tbaa !65
  %2428 = load i32, ptr %2427, align 8
  %2429 = and i32 %2428, 255
  %2430 = add nsw i32 %2429, -10
  %2431 = icmp ult i32 %2430, -9
  br i1 %2431, label %2444, label %2432

2432:                                             ; preds = %2426
  %2433 = zext nneg i32 %2429 to i64
  %2434 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2433
  %2435 = load i32, ptr %2434, align 4, !tbaa !50
  %2436 = zext i32 %2435 to i64
  %2437 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2436
  %2438 = load i64, ptr %2437, align 8, !tbaa !89
  %2439 = icmp eq i64 %2438, 0
  br i1 %2439, label %2440, label %2441

2440:                                             ; preds = %2432
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2441

2441:                                             ; preds = %2440, %2432
  %2442 = getelementptr inbounds i8, ptr %2427, i64 %2438
  %2443 = load ptr, ptr %2442, align 8, !tbaa !35
  br label %2444

2444:                                             ; preds = %2441, %2426
  %2445 = phi ptr [ %2443, %2441 ], [ null, %2426 ]
  %2446 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 5
  %2447 = load ptr, ptr %2446, align 8, !tbaa !214
  %2448 = icmp eq ptr %2445, %2447
  br i1 %2448, label %2450, label %2449

2449:                                             ; preds = %2444
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5391, ptr noundef nonnull @.str.13) #21
  br label %2450

2450:                                             ; preds = %2449, %2444
  %2451 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 6
  %2452 = load ptr, ptr %2451, align 8, !tbaa !74
  %2453 = getelementptr inbounds %struct.iv, ptr %2452, i64 0, i32 2
  %2454 = load ptr, ptr %2453, align 8, !tbaa !59
  %2455 = getelementptr inbounds %struct.tree_common, ptr %2454, i64 0, i32 2
  %2456 = load ptr, ptr %2455, align 8, !tbaa !46
  %2457 = load ptr, ptr %2446, align 8, !tbaa !214
  %2458 = getelementptr inbounds %struct.tree_common, ptr %2457, i64 0, i32 2
  %2459 = load ptr, ptr %2458, align 8, !tbaa !46
  %2460 = load i64, ptr %2454, align 8
  %2461 = and i64 %2460, 65535
  %2462 = icmp eq i64 %2461, 79
  br i1 %2462, label %2463, label %2466

2463:                                             ; preds = %2450
  %2464 = getelementptr inbounds %struct.tree_exp, ptr %2454, i64 0, i32 3
  %2465 = load ptr, ptr %2464, align 8, !tbaa !46
  br label %2466

2466:                                             ; preds = %2463, %2450
  %2467 = phi ptr [ %2465, %2463 ], [ %2454, %2450 ]
  %2468 = phi i32 [ 64, %2463 ], [ 63, %2450 ]
  %2469 = load ptr, ptr %2418, align 8, !tbaa !65
  %2470 = load i32, ptr %2469, align 8
  %2471 = trunc i32 %2470 to i8
  switch i8 %2471, label %2474 [
    i8 6, label %2472
    i8 1, label %2472
    i8 8, label %2475
  ]

2472:                                             ; preds = %2466, %2466
  %2473 = lshr i32 %2470, 16
  br label %2475

2474:                                             ; preds = %2466
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1446, ptr noundef nonnull @.str.13) #21
  br label %2475

2475:                                             ; preds = %2474, %2472, %2466
  %2476 = phi i32 [ %2473, %2472 ], [ 0, %2474 ], [ 59, %2466 ]
  %2477 = zext nneg i32 %2476 to i64
  %2478 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2477
  %2479 = load i8, ptr %2478, align 1, !tbaa !46
  %2480 = icmp eq i8 %2479, 3
  br i1 %2480, label %2481, label %2501

2481:                                             ; preds = %2475
  %2482 = load i32, ptr %2469, align 8
  %2483 = and i32 %2482, 255
  %2484 = add nsw i32 %2483, -1
  %2485 = icmp ult i32 %2484, 9
  call void @llvm.assume(i1 %2485)
  %2486 = zext nneg i32 %2483 to i64
  %2487 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2486
  %2488 = load i32, ptr %2487, align 4, !tbaa !50
  %2489 = zext i32 %2488 to i64
  %2490 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2489
  %2491 = load i64, ptr %2490, align 8, !tbaa !89
  %2492 = icmp eq i64 %2491, 0
  br i1 %2492, label %2493, label %2494

2493:                                             ; preds = %2481
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2494

2494:                                             ; preds = %2493, %2481
  %2495 = getelementptr inbounds i8, ptr %2469, i64 %2491
  %2496 = getelementptr inbounds ptr, ptr %2495, i64 1
  %2497 = load ptr, ptr %2496, align 8, !tbaa !35
  %2498 = load i64, ptr %2497, align 8
  %2499 = trunc i64 %2498 to i32
  %2500 = and i32 %2499, 65535
  br label %2501

2501:                                             ; preds = %2494, %2475
  %2502 = phi i32 [ %2500, %2494 ], [ %2476, %2475 ]
  switch i32 %2502, label %2599 [
    i32 66, label %2503
    i32 64, label %2503
    i32 63, label %2503
  ]

2503:                                             ; preds = %2501, %2501, %2501
  %2504 = load ptr, ptr %2418, align 8, !tbaa !65
  %2505 = load i32, ptr %2504, align 8
  %2506 = and i32 %2505, 255
  %2507 = add nsw i32 %2506, -10
  %2508 = icmp ult i32 %2507, -9
  br i1 %2508, label %2522, label %2509

2509:                                             ; preds = %2503
  %2510 = zext nneg i32 %2506 to i64
  %2511 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2510
  %2512 = load i32, ptr %2511, align 4, !tbaa !50
  %2513 = zext i32 %2512 to i64
  %2514 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2513
  %2515 = load i64, ptr %2514, align 8, !tbaa !89
  %2516 = icmp eq i64 %2515, 0
  br i1 %2516, label %2517, label %2518

2517:                                             ; preds = %2509
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2518

2518:                                             ; preds = %2517, %2509
  %2519 = getelementptr inbounds i8, ptr %2504, i64 %2515
  %2520 = getelementptr inbounds ptr, ptr %2519, i64 1
  %2521 = load ptr, ptr %2520, align 8, !tbaa !35
  br label %2522

2522:                                             ; preds = %2518, %2503
  %2523 = phi ptr [ %2521, %2518 ], [ null, %2503 ]
  %2524 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 4
  %2525 = load ptr, ptr %2524, align 8, !tbaa !213
  %2526 = icmp eq ptr %2523, %2525
  br i1 %2526, label %2527, label %2549

2527:                                             ; preds = %2522
  %2528 = load ptr, ptr %2418, align 8, !tbaa !65
  %2529 = getelementptr inbounds %struct.gimple_statement_base, ptr %2528, i64 0, i32 3
  %2530 = load i32, ptr %2529, align 4, !tbaa !46
  %2531 = icmp ugt i32 %2530, 2
  br i1 %2531, label %2532, label %2599

2532:                                             ; preds = %2527
  %2533 = load i32, ptr %2528, align 8
  %2534 = and i32 %2533, 255
  %2535 = add nsw i32 %2534, -10
  %2536 = icmp ult i32 %2535, -9
  br i1 %2536, label %2599, label %2537

2537:                                             ; preds = %2532
  %2538 = zext nneg i32 %2534 to i64
  %2539 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2538
  %2540 = load i32, ptr %2539, align 4, !tbaa !50
  %2541 = zext i32 %2540 to i64
  %2542 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2541
  %2543 = load i64, ptr %2542, align 8, !tbaa !89
  %2544 = icmp eq i64 %2543, 0
  br i1 %2544, label %2545, label %2546

2545:                                             ; preds = %2537
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2546

2546:                                             ; preds = %2545, %2537
  %2547 = getelementptr inbounds i8, ptr %2528, i64 %2543
  %2548 = getelementptr inbounds ptr, ptr %2547, i64 2
  br label %2596

2549:                                             ; preds = %2522
  %2550 = icmp eq i32 %2502, 64
  br i1 %2550, label %2599, label %2551

2551:                                             ; preds = %2549
  %2552 = load ptr, ptr %2418, align 8, !tbaa !65
  %2553 = getelementptr inbounds %struct.gimple_statement_base, ptr %2552, i64 0, i32 3
  %2554 = load i32, ptr %2553, align 4, !tbaa !46
  %2555 = icmp ugt i32 %2554, 2
  br i1 %2555, label %2556, label %2574

2556:                                             ; preds = %2551
  %2557 = load i32, ptr %2552, align 8
  %2558 = and i32 %2557, 255
  %2559 = add nsw i32 %2558, -10
  %2560 = icmp ult i32 %2559, -9
  br i1 %2560, label %2574, label %2561

2561:                                             ; preds = %2556
  %2562 = zext nneg i32 %2558 to i64
  %2563 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2562
  %2564 = load i32, ptr %2563, align 4, !tbaa !50
  %2565 = zext i32 %2564 to i64
  %2566 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2565
  %2567 = load i64, ptr %2566, align 8, !tbaa !89
  %2568 = icmp eq i64 %2567, 0
  br i1 %2568, label %2569, label %2570

2569:                                             ; preds = %2561
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2570

2570:                                             ; preds = %2569, %2561
  %2571 = getelementptr inbounds i8, ptr %2552, i64 %2567
  %2572 = getelementptr inbounds ptr, ptr %2571, i64 2
  %2573 = load ptr, ptr %2572, align 8, !tbaa !35
  br label %2574

2574:                                             ; preds = %2570, %2556, %2551
  %2575 = phi ptr [ null, %2551 ], [ %2573, %2570 ], [ null, %2556 ]
  %2576 = load ptr, ptr %2524, align 8, !tbaa !213
  %2577 = icmp eq ptr %2575, %2576
  br i1 %2577, label %2578, label %2599

2578:                                             ; preds = %2574
  %2579 = load ptr, ptr %2418, align 8, !tbaa !65
  %2580 = load i32, ptr %2579, align 8
  %2581 = and i32 %2580, 255
  %2582 = add nsw i32 %2581, -10
  %2583 = icmp ult i32 %2582, -9
  br i1 %2583, label %2599, label %2584

2584:                                             ; preds = %2578
  %2585 = zext nneg i32 %2581 to i64
  %2586 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2585
  %2587 = load i32, ptr %2586, align 4, !tbaa !50
  %2588 = zext i32 %2587 to i64
  %2589 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2588
  %2590 = load i64, ptr %2589, align 8, !tbaa !89
  %2591 = icmp eq i64 %2590, 0
  br i1 %2591, label %2592, label %2593

2592:                                             ; preds = %2584
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2593

2593:                                             ; preds = %2592, %2584
  %2594 = getelementptr inbounds i8, ptr %2579, i64 %2590
  %2595 = getelementptr inbounds ptr, ptr %2594, i64 1
  br label %2596

2596:                                             ; preds = %2546, %2593
  %2597 = phi ptr [ %2595, %2593 ], [ %2548, %2546 ]
  %2598 = load ptr, ptr %2597, align 8, !tbaa !35
  br label %2599

2599:                                             ; preds = %2596, %2578, %2574, %2549, %2532, %2527, %2501
  %2600 = phi ptr [ null, %2574 ], [ null, %2549 ], [ null, %2501 ], [ null, %2527 ], [ null, %2532 ], [ null, %2578 ], [ %2598, %2596 ]
  %2601 = icmp eq ptr %2600, null
  br i1 %2601, label %2609, label %2602

2602:                                             ; preds = %2599
  %2603 = load i64, ptr %2600, align 8
  %2604 = and i64 %2603, 65535
  %2605 = icmp eq i64 %2604, 23
  br i1 %2605, label %2616, label %2606

2606:                                             ; preds = %2602
  %2607 = call i32 @operand_equal_p(ptr noundef nonnull %2600, ptr noundef %2467, i32 noundef 0) #21
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2609, label %2616

2609:                                             ; preds = %2606, %2599
  %2610 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 4
  %2611 = load ptr, ptr %2610, align 8, !tbaa !213
  %2612 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2456, ptr noundef %2611) #21
  %2613 = call ptr @unshare_expr(ptr noundef %2467) #21
  %2614 = call ptr @build2_stat(i32 noundef %2468, ptr noundef %2456, ptr noundef %2612, ptr noundef %2613) #21
  %2615 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2459, ptr noundef %2614) #21
  br label %2616

2616:                                             ; preds = %2609, %2606, %2602
  %2617 = phi ptr [ %2615, %2609 ], [ undef, %2606 ], [ undef, %2602 ]
  %2618 = phi i1 [ true, %2609 ], [ false, %2606 ], [ false, %2602 ]
  br i1 %2618, label %2626, label %2710

2619:                                             ; preds = %2415, %2411
  %2620 = load ptr, ptr %0, align 8, !tbaa !145
  %2621 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 3
  %2622 = load ptr, ptr %2621, align 8, !tbaa !65
  %2623 = call fastcc ptr @get_computation_at(ptr noundef %2620, ptr noundef %2403, ptr noundef %2405, ptr noundef %2622)
  %2624 = icmp eq ptr %2623, null
  br i1 %2624, label %2625, label %2626

2625:                                             ; preds = %2619
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5438, ptr noundef nonnull @.str.13) #21
  br label %2626

2626:                                             ; preds = %2625, %2619, %2616
  %2627 = phi ptr [ %2617, %2616 ], [ %2623, %2619 ], [ null, %2625 ]
  %2628 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 3
  %2629 = load ptr, ptr %2628, align 8, !tbaa !65
  %2630 = load i32, ptr %2629, align 8
  %2631 = and i32 %2630, 255
  %2632 = trunc i32 %2630 to i8
  switch i8 %2632, label %2694 [
    i8 16, label %2633
    i8 6, label %2676
  ]

2633:                                             ; preds = %2626
  %2634 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2629, i64 0, i32 3
  %2635 = load ptr, ptr %2634, align 8, !tbaa !35
  %2636 = getelementptr inbounds %struct.tree_ssa_name, ptr %2635, i64 0, i32 3
  %2637 = load i32, ptr %2636, align 8, !tbaa !46
  %2638 = load ptr, ptr %2388, align 8, !tbaa !125
  %2639 = zext i32 %2637 to i64
  %2640 = getelementptr inbounds %struct.version_info, ptr %2638, i64 %2639, i32 4
  %2641 = load i8, ptr %2640, align 8, !tbaa !281
  %2642 = icmp eq i8 %2641, 0
  br i1 %2642, label %2643, label %2710

2643:                                             ; preds = %2633
  %2644 = getelementptr inbounds %struct.gimple_statement_base, ptr %2629, i64 0, i32 4
  %2645 = load ptr, ptr %2644, align 8, !tbaa !46
  %2646 = getelementptr inbounds %struct.basic_block_def, ptr %2645, i64 0, i32 13
  %2647 = load i32, ptr %2646, align 8, !tbaa !163, !noalias !283
  %2648 = and i32 %2647, 512
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2650, label %2656

2650:                                             ; preds = %2643
  %2651 = getelementptr inbounds %struct.basic_block_def, ptr %2645, i64 0, i32 7
  %2652 = load ptr, ptr %2651, align 8, !tbaa !46, !noalias !283
  %2653 = icmp eq ptr %2652, null
  br i1 %2653, label %2656, label %2654

2654:                                             ; preds = %2650
  %2655 = load ptr, ptr %2652, align 8, !tbaa !167, !noalias !283
  br label %2656

2656:                                             ; preds = %2654, %2650, %2643
  %2657 = phi ptr [ %2655, %2654 ], [ null, %2650 ], [ null, %2643 ]
  %2658 = icmp eq ptr %2657, null
  br i1 %2658, label %2661, label %2659

2659:                                             ; preds = %2656
  %2660 = load ptr, ptr %2657, align 8, !tbaa !169, !noalias !283
  br label %2661

2661:                                             ; preds = %2659, %2656
  %2662 = phi ptr [ %2660, %2659 ], [ null, %2656 ]
  %2663 = icmp eq ptr %2662, null
  br i1 %2663, label %2674, label %2664

2664:                                             ; preds = %2661, %2670
  %2665 = phi ptr [ %2672, %2670 ], [ %2662, %2661 ]
  %2666 = load ptr, ptr %2665, align 8, !tbaa !153, !noalias !288
  %2667 = load i32, ptr %2666, align 8, !noalias !288
  %2668 = and i32 %2667, 255
  %2669 = icmp eq i32 %2668, 4
  br i1 %2669, label %2670, label %2674

2670:                                             ; preds = %2664
  %2671 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2665, i64 0, i32 2
  %2672 = load ptr, ptr %2671, align 8, !tbaa !161, !noalias !288
  %2673 = icmp eq ptr %2672, null
  br i1 %2673, label %2674, label %2664, !llvm.loop !289

2674:                                             ; preds = %2670, %2664, %2661
  %2675 = phi ptr [ %2662, %2661 ], [ %2672, %2670 ], [ %2665, %2664 ]
  store ptr %2675, ptr %9, align 8, !tbaa.struct !152
  store ptr %2657, ptr %2389, align 8, !tbaa.struct !276
  store ptr %2645, ptr %2390, align 8, !tbaa.struct !277
  br label %2695

2676:                                             ; preds = %2626
  %2677 = add nsw i32 %2631, -10
  %2678 = icmp ult i32 %2677, -9
  br i1 %2678, label %2691, label %2679

2679:                                             ; preds = %2676
  %2680 = zext nneg i32 %2631 to i64
  %2681 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2680
  %2682 = load i32, ptr %2681, align 4, !tbaa !50
  %2683 = zext i32 %2682 to i64
  %2684 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2683
  %2685 = load i64, ptr %2684, align 8, !tbaa !89
  %2686 = icmp eq i64 %2685, 0
  br i1 %2686, label %2687, label %2688

2687:                                             ; preds = %2679
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2688

2688:                                             ; preds = %2687, %2679
  %2689 = getelementptr inbounds i8, ptr %2629, i64 %2685
  %2690 = load ptr, ptr %2689, align 8, !tbaa !35
  br label %2691

2691:                                             ; preds = %2688, %2676
  %2692 = phi ptr [ %2690, %2688 ], [ null, %2676 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #21
  %2693 = load ptr, ptr %2628, align 8, !tbaa !65
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %2693) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  br label %2695

2694:                                             ; preds = %2626
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5459, ptr noundef nonnull @.str.13) #21
  br label %2695

2695:                                             ; preds = %2694, %2691, %2674
  %2696 = phi ptr [ undef, %2694 ], [ %2692, %2691 ], [ %2635, %2674 ]
  %2697 = getelementptr inbounds %struct.tree_ssa_name, ptr %2696, i64 0, i32 1
  %2698 = load ptr, ptr %2697, align 8, !tbaa !46
  %2699 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %9, ptr noundef %2627, i8 noundef zeroext 0, ptr noundef %2698, i8 noundef zeroext 1, i32 noundef 1) #21
  %2700 = load ptr, ptr %2628, align 8, !tbaa !65
  %2701 = load i32, ptr %2700, align 8
  %2702 = and i32 %2701, 255
  %2703 = icmp eq i32 %2702, 16
  br i1 %2703, label %2704, label %2707

2704:                                             ; preds = %2695
  %2705 = call ptr @gimple_build_assign_stat(ptr noundef %2696, ptr noundef %2699) #21
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef %2705, i32 noundef 1) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #21
  %2706 = load ptr, ptr %2628, align 8, !tbaa !65
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %2706) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  call void @remove_phi_node(ptr noundef nonnull %9, i8 noundef zeroext 0) #21
  br label %2710

2707:                                             ; preds = %2695
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %9, ptr noundef %2699) #21
  %2708 = load ptr, ptr %9, align 8
  %2709 = load ptr, ptr %2708, align 8, !tbaa !153
  store ptr %2709, ptr %2628, align 8, !tbaa !65
  br label %2710

2710:                                             ; preds = %2707, %2704, %2633, %2616
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #21
  br label %2886

2711:                                             ; preds = %2408
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  %2712 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 3
  %2713 = load ptr, ptr %2712, align 8, !tbaa !65
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %2713) #21
  %2714 = load ptr, ptr %0, align 8, !tbaa !145
  %2715 = load ptr, ptr %2712, align 8, !tbaa !65
  %2716 = call fastcc zeroext i8 @get_computation_aff(ptr noundef %2714, ptr noundef %2403, ptr noundef %2405, ptr noundef %2715, ptr noundef nonnull %7), !range !81
  %2717 = icmp eq i8 %2716, 0
  br i1 %2717, label %2718, label %2719

2718:                                             ; preds = %2711
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5546, ptr noundef nonnull @.str.13) #21
  br label %2719

2719:                                             ; preds = %2718, %2711
  call void @unshare_aff_combination(ptr noundef nonnull %7) #21
  %2720 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 6
  %2721 = load ptr, ptr %2720, align 8, !tbaa !74
  %2722 = getelementptr inbounds %struct.iv, ptr %2721, i64 0, i32 1
  %2723 = load ptr, ptr %2722, align 8, !tbaa !60
  %2724 = icmp eq ptr %2723, null
  br i1 %2724, label %2734, label %2725

2725:                                             ; preds = %2719
  %2726 = load ptr, ptr %0, align 8, !tbaa !145
  %2727 = load ptr, ptr %2712, align 8, !tbaa !65
  %2728 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %2726, ptr noundef %2405, ptr noundef %2727), !range !81
  %2729 = icmp eq i8 %2728, 0
  %2730 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 5
  %2731 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 4
  %2732 = select i1 %2729, ptr %2731, ptr %2730
  %2733 = load ptr, ptr %2732, align 8, !tbaa !35
  br label %2734

2734:                                             ; preds = %2725, %2719
  %2735 = phi ptr [ %2733, %2725 ], [ null, %2719 ]
  %2736 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 4
  %2737 = load ptr, ptr %2736, align 8, !tbaa !66
  %2738 = load ptr, ptr %2737, align 8, !tbaa !35
  %2739 = getelementptr inbounds %struct.tree_common, ptr %2738, i64 0, i32 2
  %2740 = load ptr, ptr %2739, align 8, !tbaa !46
  %2741 = load i8, ptr %37, align 1, !tbaa !146
  %2742 = call ptr @create_mem_ref(ptr noundef nonnull %8, ptr noundef %2740, ptr noundef nonnull %7, ptr noundef %2735, i8 noundef zeroext %2741) #21
  %2743 = load ptr, ptr %2736, align 8, !tbaa !66
  %2744 = load ptr, ptr %2743, align 8, !tbaa !35
  %2745 = load i64, ptr %2744, align 8
  %2746 = and i64 %2745, 65535
  %2747 = icmp eq i64 %2746, 152
  br i1 %2747, label %2748, label %2749

2748:                                             ; preds = %2734
  call void @copy_mem_ref_info(ptr noundef %2742, ptr noundef nonnull %2744) #21
  br label %2763

2749:                                             ; preds = %2734
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %2744, ptr %6, align 8, !tbaa !35
  %2750 = call ptr @unshare_expr(ptr noundef nonnull %2744) #21
  store ptr %2750, ptr %6, align 8, !tbaa !35
  %2751 = call zeroext i8 @for_each_index(ptr noundef nonnull %6, ptr noundef nonnull @idx_remove_ssa_names, ptr noundef null) #21
  %2752 = load ptr, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %2753 = getelementptr inbounds %struct.tree_exp, ptr %2742, i64 1, i32 2
  store ptr %2752, ptr %2753, align 8, !tbaa !46
  %2754 = load i64, ptr %2744, align 8
  %2755 = and i64 %2754, 65536
  %2756 = load i64, ptr %2742, align 8
  %2757 = and i64 %2756, -65537
  %2758 = or disjoint i64 %2757, %2755
  store i64 %2758, ptr %2742, align 8
  %2759 = load i64, ptr %2744, align 8
  %2760 = and i64 %2759, 524288
  %2761 = and i64 %2758, -524289
  %2762 = or disjoint i64 %2761, %2760
  store i64 %2762, ptr %2742, align 8
  br label %2763

2763:                                             ; preds = %2749, %2748
  %2764 = load ptr, ptr %2736, align 8, !tbaa !66
  store ptr %2742, ptr %2764, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %7) #21
  br label %2886

2765:                                             ; preds = %2408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %2766 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 3
  %2767 = load ptr, ptr %2766, align 8, !tbaa !65
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2767) #21
  %2768 = call fastcc ptr @get_use_iv_cost(ptr noundef nonnull %0, ptr noundef %2403, ptr noundef %2405)
  %2769 = getelementptr inbounds %struct.cost_pair, ptr %2768, i64 0, i32 3
  %2770 = load ptr, ptr %2769, align 8, !tbaa !290
  %2771 = icmp eq ptr %2770, null
  %2772 = load ptr, ptr %0, align 8, !tbaa !145
  %2773 = load ptr, ptr %2766, align 8, !tbaa !65
  br i1 %2771, label %2868, label %2774

2774:                                             ; preds = %2765
  %2775 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %2772, ptr noundef %2405, ptr noundef %2773), !range !81
  %2776 = icmp eq i8 %2775, 0
  %2777 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 5
  %2778 = getelementptr inbounds %struct.iv_cand, ptr %2405, i64 0, i32 4
  %2779 = select i1 %2776, ptr %2778, ptr %2777
  %2780 = load ptr, ptr %2779, align 8, !tbaa !35
  %2781 = getelementptr inbounds %struct.tree_common, ptr %2780, i64 0, i32 2
  %2782 = load ptr, ptr %2781, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %2783 = load ptr, ptr %0, align 8, !tbaa !145
  %2784 = load ptr, ptr %2766, align 8, !tbaa !65
  %2785 = getelementptr inbounds %struct.gimple_statement_base, ptr %2784, i64 0, i32 4
  %2786 = load ptr, ptr %2785, align 8, !tbaa !46
  %2787 = getelementptr inbounds %struct.basic_block_def, ptr %2786, i64 0, i32 1
  %2788 = load ptr, ptr %2787, align 8, !tbaa !291
  %2789 = getelementptr inbounds %struct.VEC_edge_base, ptr %2788, i64 0, i32 2, i64 0
  %2790 = load ptr, ptr %2789, align 8, !tbaa !35
  %2791 = getelementptr inbounds %struct.edge_def, ptr %2790, i64 0, i32 1
  %2792 = load ptr, ptr %2791, align 8, !tbaa !149
  %2793 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %2783, ptr noundef %2792) #21
  %2794 = icmp eq i8 %2793, 0
  br i1 %2794, label %2799, label %2795

2795:                                             ; preds = %2774
  %2796 = load ptr, ptr %2787, align 8, !tbaa !291
  %2797 = getelementptr inbounds %struct.VEC_edge_base, ptr %2796, i64 0, i32 2, i64 1
  %2798 = load ptr, ptr %2797, align 8, !tbaa !35
  br label %2799

2799:                                             ; preds = %2795, %2774
  %2800 = phi ptr [ %2798, %2795 ], [ %2790, %2774 ]
  %2801 = getelementptr inbounds %struct.edge_def, ptr %2800, i64 0, i32 7
  %2802 = load i32, ptr %2801, align 8, !tbaa !292
  %2803 = and i32 %2802, 1024
  %2804 = icmp eq i32 %2803, 0
  %2805 = select i1 %2804, i32 6684672, i32 6619136
  %2806 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2782, ptr noundef nonnull %2770) #21
  %2807 = call ptr @unshare_expr(ptr noundef %2806) #21
  %2808 = call ptr @force_gimple_operand(ptr noundef %2807, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #21
  %2809 = load ptr, ptr %5, align 8, !tbaa !35
  %2810 = icmp eq ptr %2809, null
  br i1 %2810, label %2816, label %2811

2811:                                             ; preds = %2799
  %2812 = load ptr, ptr %0, align 8, !tbaa !145
  %2813 = call ptr @loop_preheader_edge(ptr noundef %2812) #21
  %2814 = load ptr, ptr %5, align 8, !tbaa !35
  %2815 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2813, ptr noundef %2814) #21
  br label %2816

2816:                                             ; preds = %2811, %2799
  %2817 = load ptr, ptr %2766, align 8, !tbaa !65
  %2818 = load i32, ptr %2817, align 8
  %2819 = and i32 %2818, 255
  %2820 = add nsw i32 %2819, -10
  %2821 = icmp ult i32 %2820, -9
  br i1 %2821, label %2826, label %2822

2822:                                             ; preds = %2816
  %2823 = getelementptr inbounds %struct.gimple_statement_base, ptr %2817, i64 0, i32 3
  %2824 = load i32, ptr %2823, align 4, !tbaa !46
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2826, label %2827

2826:                                             ; preds = %2822, %2816
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1665, ptr noundef nonnull @.str.13) #21
  br label %2827

2827:                                             ; preds = %2826, %2822
  %2828 = load i32, ptr %2817, align 8
  %2829 = and i32 %2828, 255
  %2830 = zext nneg i32 %2829 to i64
  %2831 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2830
  %2832 = load i32, ptr %2831, align 4, !tbaa !50
  %2833 = zext i32 %2832 to i64
  %2834 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2833
  %2835 = load i64, ptr %2834, align 8, !tbaa !89
  %2836 = icmp eq i64 %2835, 0
  br i1 %2836, label %2837, label %2838

2837:                                             ; preds = %2827
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2838

2838:                                             ; preds = %2837, %2827
  %2839 = getelementptr inbounds i8, ptr %2817, i64 %2835
  store ptr %2780, ptr %2839, align 8, !tbaa !35
  %2840 = load ptr, ptr %2766, align 8, !tbaa !65
  %2841 = load i32, ptr %2840, align 8
  %2842 = and i32 %2841, 65535
  %2843 = or disjoint i32 %2842, %2805
  store i32 %2843, ptr %2840, align 8
  %2844 = load ptr, ptr %2766, align 8, !tbaa !65
  %2845 = load i32, ptr %2844, align 8
  %2846 = and i32 %2845, 255
  %2847 = add nsw i32 %2846, -10
  %2848 = icmp ult i32 %2847, -9
  br i1 %2848, label %2853, label %2849

2849:                                             ; preds = %2838
  %2850 = getelementptr inbounds %struct.gimple_statement_base, ptr %2844, i64 0, i32 3
  %2851 = load i32, ptr %2850, align 4, !tbaa !46
  %2852 = icmp ugt i32 %2851, 1
  br i1 %2852, label %2854, label %2853

2853:                                             ; preds = %2849, %2838
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1665, ptr noundef nonnull @.str.13) #21
  br label %2854

2854:                                             ; preds = %2853, %2849
  %2855 = load i32, ptr %2844, align 8
  %2856 = and i32 %2855, 255
  %2857 = zext nneg i32 %2856 to i64
  %2858 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2857
  %2859 = load i32, ptr %2858, align 4, !tbaa !50
  %2860 = zext i32 %2859 to i64
  %2861 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2860
  %2862 = load i64, ptr %2861, align 8, !tbaa !89
  %2863 = icmp eq i64 %2862, 0
  br i1 %2863, label %2864, label %2865

2864:                                             ; preds = %2854
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %2865

2865:                                             ; preds = %2864, %2854
  %2866 = getelementptr inbounds i8, ptr %2844, i64 %2862
  %2867 = getelementptr inbounds ptr, ptr %2866, i64 1
  store ptr %2808, ptr %2867, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %2884

2868:                                             ; preds = %2765
  %2869 = call fastcc ptr @get_computation_at(ptr noundef %2772, ptr noundef %2403, ptr noundef %2405, ptr noundef %2773)
  %2870 = icmp eq ptr %2869, null
  br i1 %2870, label %2871, label %2872

2871:                                             ; preds = %2868
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5606, ptr noundef nonnull @.str.13) #21
  br label %2872

2872:                                             ; preds = %2871, %2868
  %2873 = load ptr, ptr %2766, align 8, !tbaa !65
  %2874 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef nonnull %0, ptr noundef %2873, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null), !range !81
  %2875 = icmp eq i8 %2874, 0
  br i1 %2875, label %2876, label %2877

2876:                                             ; preds = %2872
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5609, ptr noundef nonnull @.str.13) #21
  br label %2877

2877:                                             ; preds = %2876, %2872
  %2878 = load ptr, ptr %3, align 8, !tbaa !35
  %2879 = load ptr, ptr %2878, align 8, !tbaa !35
  %2880 = getelementptr inbounds %struct.tree_ssa_name, ptr %2879, i64 0, i32 1
  %2881 = load ptr, ptr %2880, align 8, !tbaa !46
  %2882 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %2869, i8 noundef zeroext 1, ptr noundef %2881, i8 noundef zeroext 1, i32 noundef 1) #21
  %2883 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %2882, ptr %2883, align 8, !tbaa !35
  br label %2884

2884:                                             ; preds = %2877, %2865
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %2886

2885:                                             ; preds = %2408
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 5635, ptr noundef nonnull @.str.13) #21
  br label %2886

2886:                                             ; preds = %2885, %2884, %2763, %2710
  %2887 = getelementptr inbounds %struct.iv_use, ptr %2403, i64 0, i32 3
  %2888 = load ptr, ptr %2887, align 8, !tbaa !65
  %2889 = load i32, ptr %2888, align 8
  %2890 = and i32 %2889, 255
  %2891 = add nsw i32 %2890, -10
  %2892 = icmp ult i32 %2891, -9
  br i1 %2892, label %2894, label %2893

2893:                                             ; preds = %2886
  call void @gimple_set_modified(ptr noundef nonnull %2888, i8 noundef zeroext 1) #21
  call void @update_stmt_operands(ptr noundef nonnull %2888) #21
  br label %2894

2894:                                             ; preds = %2893, %2886
  %2895 = add nuw nsw i64 %2392, 1
  br label %2391, !llvm.loop !293

2896:                                             ; preds = %2397
  %2897 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %2898 = load ptr, ptr %686, align 8, !tbaa !126
  %2899 = load ptr, ptr %2898, align 8, !tbaa !175
  %2900 = icmp eq ptr %2899, null
  %2901 = select i1 %2900, ptr @bitmap_zero_bits, ptr %2899
  %2902 = getelementptr inbounds %struct.bitmap_element_def, ptr %2901, i64 0, i32 2
  %2903 = load i32, ptr %2902, align 8, !tbaa !177
  %2904 = shl i32 %2903, 7
  %2905 = getelementptr inbounds %struct.bitmap_element_def, ptr %2901, i64 0, i32 3
  %2906 = load i64, ptr %2905, align 8, !tbaa !89
  %2907 = icmp eq i64 %2906, 0
  %2908 = zext i1 %2907 to i32
  %2909 = or disjoint i32 %2904, %2908
  %2910 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  br label %2911

2911:                                             ; preds = %3002, %2896
  %2912 = phi i64 [ %2906, %2896 ], [ %3003, %3002 ]
  %2913 = phi i32 [ 0, %2896 ], [ %2968, %3002 ]
  %2914 = phi i32 [ %2909, %2896 ], [ %3004, %3002 ]
  %2915 = phi ptr [ %2901, %2896 ], [ %2970, %3002 ]
  %2916 = icmp eq i64 %2912, 0
  br i1 %2916, label %2931, label %2917

2917:                                             ; preds = %2945, %2911
  %2918 = phi i64 [ %2912, %2911 ], [ %2950, %2945 ]
  %2919 = phi i32 [ %2913, %2911 ], [ %2946, %2945 ]
  %2920 = phi i32 [ %2914, %2911 ], [ %2947, %2945 ]
  %2921 = phi ptr [ %2915, %2911 ], [ %2938, %2945 ]
  %2922 = and i64 %2918, 1
  %2923 = icmp eq i64 %2922, 0
  br i1 %2923, label %2924, label %2966

2924:                                             ; preds = %2917, %2924
  %2925 = phi i32 [ %2928, %2924 ], [ %2920, %2917 ]
  %2926 = phi i64 [ %2927, %2924 ], [ %2918, %2917 ]
  %2927 = lshr exact i64 %2926, 1
  %2928 = add i32 %2925, 1
  %2929 = and i64 %2926, 2
  %2930 = icmp eq i64 %2929, 0
  br i1 %2930, label %2924, label %2966, !llvm.loop !179

2931:                                             ; preds = %2911
  %2932 = add i32 %2914, 63
  %2933 = and i32 %2932, -64
  %2934 = add i32 %2913, 1
  br label %2935

2935:                                             ; preds = %2962, %2931
  %2936 = phi i64 [ %2912, %2931 ], [ %2957, %2962 ]
  %2937 = phi i32 [ %2933, %2931 ], [ %2965, %2962 ]
  %2938 = phi ptr [ %2915, %2931 ], [ %2960, %2962 ]
  %2939 = phi i32 [ %2934, %2931 ], [ 0, %2962 ]
  %2940 = icmp eq i32 %2939, 2
  br i1 %2940, label %2956, label %2941

2941:                                             ; preds = %2935
  %2942 = add i32 %2937, 128
  %2943 = shl i32 %2939, 6
  %2944 = sub i32 %2942, %2943
  br label %2945

2945:                                             ; preds = %2941, %2952
  %2946 = phi i32 [ %2954, %2952 ], [ %2939, %2941 ]
  %2947 = phi i32 [ %2953, %2952 ], [ %2937, %2941 ]
  %2948 = zext i32 %2946 to i64
  %2949 = getelementptr inbounds %struct.bitmap_element_def, ptr %2938, i64 0, i32 3, i64 %2948
  %2950 = load i64, ptr %2949, align 8, !tbaa !89
  %2951 = icmp eq i64 %2950, 0
  br i1 %2951, label %2952, label %2917

2952:                                             ; preds = %2945
  %2953 = add i32 %2947, 64
  %2954 = add i32 %2946, 1
  %2955 = icmp eq i32 %2954, 2
  br i1 %2955, label %2956, label %2945, !llvm.loop !180

2956:                                             ; preds = %2952, %2935
  %2957 = phi i64 [ %2936, %2935 ], [ %2950, %2952 ]
  %2958 = phi i32 [ %2937, %2935 ], [ %2944, %2952 ]
  %2959 = phi i32 [ %2939, %2935 ], [ 2, %2952 ]
  %2960 = load ptr, ptr %2938, align 8, !tbaa !181
  %2961 = icmp eq ptr %2960, null
  br i1 %2961, label %2966, label %2962

2962:                                             ; preds = %2956
  %2963 = getelementptr inbounds %struct.bitmap_element_def, ptr %2960, i64 0, i32 2
  %2964 = load i32, ptr %2963, align 8, !tbaa !177
  %2965 = shl i32 %2964, 7
  br label %2935, !llvm.loop !182

2966:                                             ; preds = %2956, %2924, %2917
  %2967 = phi i64 [ %2918, %2917 ], [ %2927, %2924 ], [ %2957, %2956 ]
  %2968 = phi i32 [ %2919, %2917 ], [ %2919, %2924 ], [ %2959, %2956 ]
  %2969 = phi i32 [ %2920, %2917 ], [ %2928, %2924 ], [ %2958, %2956 ]
  %2970 = phi ptr [ %2921, %2917 ], [ %2921, %2924 ], [ %2960, %2956 ]
  %2971 = phi i1 [ false, %2917 ], [ false, %2924 ], [ true, %2956 ]
  br i1 %2971, label %3005, label %2972

2972:                                             ; preds = %2966
  %2973 = load ptr, ptr %2910, align 8, !tbaa !125
  %2974 = zext i32 %2969 to i64
  %2975 = getelementptr inbounds %struct.version_info, ptr %2973, i64 %2974, i32 1
  %2976 = load ptr, ptr %2975, align 8, !tbaa !183
  %2977 = icmp eq ptr %2976, null
  br i1 %2977, label %3002, label %2978

2978:                                             ; preds = %2972
  %2979 = getelementptr inbounds %struct.iv, ptr %2976, i64 0, i32 2
  %2980 = load ptr, ptr %2979, align 8, !tbaa !59
  %2981 = call i32 @integer_zerop(ptr noundef %2980) #21
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %2983, label %3002

2983:                                             ; preds = %2978
  %2984 = getelementptr inbounds %struct.version_info, ptr %2973, i64 %2974, i32 3
  %2985 = load i32, ptr %2984, align 4, !tbaa !199
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %2987, label %3002

2987:                                             ; preds = %2983
  %2988 = load ptr, ptr %2975, align 8, !tbaa !183
  %2989 = getelementptr inbounds %struct.iv, ptr %2988, i64 0, i32 5
  %2990 = load i8, ptr %2989, align 1, !tbaa !294
  %2991 = icmp eq i8 %2990, 0
  br i1 %2991, label %2992, label %3002

2992:                                             ; preds = %2987
  %2993 = getelementptr inbounds %struct.version_info, ptr %2973, i64 %2974, i32 4
  %2994 = load i8, ptr %2993, align 8, !tbaa !281
  %2995 = icmp eq i8 %2994, 0
  br i1 %2995, label %2996, label %3002

2996:                                             ; preds = %2992
  %2997 = getelementptr inbounds %struct.iv, ptr %2988, i64 0, i32 3
  %2998 = load ptr, ptr %2997, align 8, !tbaa !56
  %2999 = getelementptr inbounds %struct.tree_ssa_name, ptr %2998, i64 0, i32 3
  %3000 = load i32, ptr %2999, align 8, !tbaa !46
  %3001 = call zeroext i8 @bitmap_set_bit(ptr noundef %2897, i32 noundef %3000) #21
  br label %3002

3002:                                             ; preds = %2996, %2992, %2987, %2983, %2978, %2972
  %3003 = lshr i64 %2967, 1
  %3004 = add i32 %2969, 1
  br label %2911, !llvm.loop !295

3005:                                             ; preds = %2966
  call void @release_defs_bitset(ptr noundef %2897) #21
  call void @bitmap_obstack_free(ptr noundef %2897) #21
  call void @scev_reset() #21
  br label %3006

3006:                                             ; preds = %153, %2211, %675, %426, %3005
  call fastcc void @free_loop_data(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #21
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare void @renumber_gimple_stmt_uids_in_blocks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iv_ca_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !252
  tail call void @free(ptr noundef %4)
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.iv_ca, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !253
  tail call void @free(ptr noundef %7)
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.iv_ca, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !254
  tail call void @bitmap_obstack_free(ptr noundef %10) #21
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.iv_ca, ptr %11, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !254
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.iv_ca, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !255
  tail call void @free(ptr noundef %15)
  %16 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @free(ptr noundef %16)
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_loop_data(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @pointer_map_destroy(ptr noundef nonnull %3) #21
  store ptr null, ptr %2, align 8, !tbaa !129
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @bitmap_zero_bits, ptr %9
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !177
  %14 = shl i32 %13, 7
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !89
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %14, %18
  %20 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  br label %21

21:                                               ; preds = %89, %6
  %22 = phi i32 [ 0, %6 ], [ %77, %89 ]
  %23 = phi i64 [ %16, %6 ], [ %93, %89 ]
  %24 = phi ptr [ %11, %6 ], [ %79, %89 ]
  %25 = phi i32 [ %19, %6 ], [ %94, %89 ]
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %55, %21
  %28 = phi i32 [ %22, %21 ], [ %56, %55 ]
  %29 = phi i64 [ %23, %21 ], [ %60, %55 ]
  %30 = phi ptr [ %24, %21 ], [ %47, %55 ]
  %31 = phi i32 [ %25, %21 ], [ %57, %55 ]
  %32 = and i64 %29, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %31, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %29, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !llvm.loop !179

41:                                               ; preds = %21
  %42 = add i32 %25, 63
  %43 = and i32 %42, -64
  %44 = add i32 %22, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %23, %41 ], [ %67, %72 ]
  %47 = phi ptr [ %24, %41 ], [ %70, %72 ]
  %48 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = add i32 %48, 128
  %53 = shl i32 %49, 6
  %54 = sub i32 %52, %53
  br label %55

55:                                               ; preds = %51, %62
  %56 = phi i32 [ %64, %62 ], [ %49, %51 ]
  %57 = phi i32 [ %63, %62 ], [ %48, %51 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !89
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !llvm.loop !180

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %48, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %47, align 8, !tbaa !181
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !177
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !182

76:                                               ; preds = %66, %34, %27
  %77 = phi i32 [ %28, %27 ], [ %28, %34 ], [ %69, %66 ]
  %78 = phi i64 [ %29, %27 ], [ %37, %34 ], [ %67, %66 ]
  %79 = phi ptr [ %30, %27 ], [ %30, %34 ], [ %70, %66 ]
  %80 = phi i32 [ %31, %27 ], [ %38, %34 ], [ %68, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %95, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %20, align 8, !tbaa !125
  %84 = zext i32 %80 to i64
  %85 = getelementptr inbounds %struct.version_info, ptr %83, i64 %84, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !183
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void @free(ptr noundef %86)
  br label %89

89:                                               ; preds = %88, %82
  store ptr null, ptr %85, align 8, !tbaa !183
  %90 = getelementptr inbounds %struct.version_info, ptr %83, i64 %84, i32 2
  store i8 0, ptr %90, align 8, !tbaa !201
  %91 = getelementptr inbounds %struct.version_info, ptr %83, i64 %84, i32 4
  store i8 0, ptr %91, align 8, !tbaa !281
  %92 = getelementptr inbounds %struct.version_info, ptr %83, i64 %84, i32 3
  store i32 0, ptr %92, align 4, !tbaa !199
  %93 = lshr i64 %78, 1
  %94 = add i32 %80, 1
  br label %21, !llvm.loop !296

95:                                               ; preds = %76
  %96 = load ptr, ptr %7, align 8, !tbaa !126
  tail call void @bitmap_clear(ptr noundef %96) #21
  %97 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !127
  tail call void @bitmap_clear(ptr noundef %98) #21
  %99 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  br label %100

100:                                              ; preds = %136, %95
  %101 = phi i64 [ %139, %136 ], [ 0, %95 ]
  %102 = load ptr, ptr %99, align 8, !tbaa !69
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %102, align 8, !tbaa !71
  br label %106

106:                                              ; preds = %100, %104
  %107 = phi i32 [ %105, %104 ], [ 0, %100 ]
  %108 = zext i32 %107 to i64
  %109 = icmp ult i64 %101, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %102, i64 0, i32 2, i64 %101
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.iv_use, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !67
  tail call void @free(ptr noundef %114)
  %115 = getelementptr inbounds %struct.iv_use, ptr %112, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !68
  tail call void @bitmap_obstack_free(ptr noundef %116) #21
  store ptr null, ptr %115, align 8, !tbaa !68
  %117 = getelementptr inbounds %struct.iv_use, ptr %112, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !231
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.iv_use, ptr %112, i64 0, i32 7
  br label %122

122:                                              ; preds = %120, %131
  %123 = phi i64 [ 0, %120 ], [ %132, %131 ]
  %124 = load ptr, ptr %121, align 8, !tbaa !232
  %125 = getelementptr inbounds %struct.cost_pair, ptr %124, i64 %123, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !242
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  tail call void @bitmap_obstack_free(ptr noundef nonnull %126) #21
  %129 = load ptr, ptr %121, align 8, !tbaa !232
  %130 = getelementptr inbounds %struct.cost_pair, ptr %129, i64 %123, i32 2
  store ptr null, ptr %130, align 8, !tbaa !242
  br label %131

131:                                              ; preds = %122, %128
  %132 = add nuw nsw i64 %123, 1
  %133 = load i32, ptr %117, align 8, !tbaa !231
  %134 = zext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %122, label %136, !llvm.loop !297

136:                                              ; preds = %131, %110
  %137 = getelementptr inbounds %struct.iv_use, ptr %112, i64 0, i32 7
  %138 = load ptr, ptr %137, align 8, !tbaa !232
  tail call void @free(ptr noundef %138)
  tail call void @free(ptr noundef %112)
  %139 = add nuw nsw i64 %101, 1
  br label %100, !llvm.loop !298

140:                                              ; preds = %106
  br i1 %103, label %142, label %141

141:                                              ; preds = %140
  store i32 0, ptr %102, align 8, !tbaa !71
  br label %142

142:                                              ; preds = %140, %141
  %143 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  br label %144

144:                                              ; preds = %166, %142
  %145 = phi i64 [ %167, %166 ], [ 0, %142 ]
  %146 = load ptr, ptr %143, align 8, !tbaa !130
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %146, align 8, !tbaa !217
  br label %150

150:                                              ; preds = %144, %148
  %151 = phi i32 [ %149, %148 ], [ 0, %144 ]
  %152 = zext i32 %151 to i64
  %153 = icmp ult i64 %145, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %146, i64 0, i32 2, i64 %145
  %156 = load ptr, ptr %155, align 8, !tbaa !35
  %157 = getelementptr inbounds %struct.iv_cand, ptr %156, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !74
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  tail call void @free(ptr noundef %158)
  br label %161

161:                                              ; preds = %160, %154
  %162 = getelementptr inbounds %struct.iv_cand, ptr %156, i64 0, i32 10
  %163 = load ptr, ptr %162, align 8, !tbaa !78
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  tail call void @bitmap_obstack_free(ptr noundef nonnull %163) #21
  store ptr null, ptr %162, align 8, !tbaa !78
  br label %166

166:                                              ; preds = %165, %161
  tail call void @free(ptr noundef %156)
  %167 = add nuw nsw i64 %145, 1
  br label %144, !llvm.loop !299

168:                                              ; preds = %150
  br i1 %147, label %170, label %169

169:                                              ; preds = %168
  store i32 0, ptr %146, align 8, !tbaa !217
  br label %170

170:                                              ; preds = %168, %169
  %171 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !124
  %173 = load ptr, ptr @cfun, align 8, !tbaa !35
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !116
  %176 = getelementptr inbounds %struct.gimple_df, ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !118
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %170
  %180 = load i32, ptr %177, align 8, !tbaa !122
  br label %181

181:                                              ; preds = %170, %179
  %182 = phi i32 [ %180, %179 ], [ 0, %170 ]
  %183 = icmp ult i32 %172, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %181
  br i1 %178, label %188, label %185

185:                                              ; preds = %184
  %186 = load i32, ptr %177, align 8, !tbaa !122
  %187 = shl i32 %186, 1
  br label %188

188:                                              ; preds = %184, %185
  %189 = phi i32 [ %187, %185 ], [ 0, %184 ]
  store i32 %189, ptr %171, align 4, !tbaa !124
  %190 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !125
  tail call void @free(ptr noundef %191)
  %192 = load i32, ptr %171, align 4, !tbaa !124
  %193 = zext i32 %192 to i64
  %194 = tail call ptr @xcalloc(i64 noundef %193, i64 noundef 32) #21
  store ptr %194, ptr %190, align 8, !tbaa !125
  br label %195

195:                                              ; preds = %188, %181
  %196 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  store i32 0, ptr %196, align 8, !tbaa !128
  br label %197

197:                                              ; preds = %211, %195
  %198 = phi i32 [ 0, %195 ], [ %212, %211 ]
  %199 = load ptr, ptr @decl_rtl_to_reset, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %199, align 8, !tbaa !122
  %203 = icmp ugt i32 %202, %198
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = zext i32 %198 to i64
  %206 = getelementptr inbounds %struct.VEC_tree_base, ptr %199, i64 0, i32 2, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !35
  br label %208

208:                                              ; preds = %197, %201, %204
  %209 = phi ptr [ %207, %204 ], [ null, %201 ], [ null, %197 ]
  %210 = phi i1 [ false, %204 ], [ true, %201 ], [ true, %197 ]
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  tail call void @set_decl_rtl(ptr noundef %209, ptr noundef null) #21
  %212 = add i32 %198, 1
  br label %197, !llvm.loop !300

213:                                              ; preds = %208
  br i1 %200, label %215, label %214

214:                                              ; preds = %213
  store i32 0, ptr %199, align 8, !tbaa !122
  br label %215

215:                                              ; preds = %213, %214
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @expand_simple_operations(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_iv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds %struct.version_info, ptr %8, i64 %9, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 858, ptr noundef nonnull @.str.13) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  %17 = load i32, ptr %5, align 8, !tbaa !46
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %17) #21
  %19 = tail call fastcc ptr @alloc_iv(ptr noundef %2, ptr noundef %3)
  store ptr %19, ptr %10, align 8, !tbaa !183
  %20 = getelementptr inbounds %struct.iv, ptr %19, i64 0, i32 3
  store ptr %1, ptr %20, align 8, !tbaa !56
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @alloc_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 838, ptr noundef nonnull @.str.13) #21
  br label %6

6:                                                ; preds = %2, %5
  store ptr %0, ptr %3, align 8, !tbaa !58
  %7 = tail call fastcc ptr @determine_base_object(ptr noundef %0)
  %8 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 4
  store i8 0, ptr %10, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 5
  store i8 0, ptr %11, align 1, !tbaa !294
  %12 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 6
  store i32 0, ptr %12, align 4, !tbaa !301
  %13 = getelementptr inbounds %struct.iv, ptr %3, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @determine_base_object(ptr noundef %0) unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %31, %24, %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ], [ %26, %24 ], [ %33, %31 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %9 [
    i16 116, label %6
    i16 113, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  br label %2

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %38 [
    i16 10, label %14
    i16 12, label %14
  ]

14:                                               ; preds = %9, %9
  switch i16 %5, label %35 [
    i16 23, label %38
    i16 121, label %15
    i16 66, label %31
    i16 63, label %34
    i16 64, label %34
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call ptr @get_base_address(ptr noundef %17) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 47
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  br label %2

27:                                               ; preds = %20
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %29 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %18) #21
  %30 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %29) #21
  br label %38

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  br label %2

34:                                               ; preds = %14, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 824, ptr noundef nonnull @.str.13) #21
  br label %35

35:                                               ; preds = %14, %34
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %3) #21
  br label %38

38:                                               ; preds = %14, %15, %9, %35, %27
  %39 = phi ptr [ %37, %35 ], [ %30, %27 ], [ null, %9 ], [ %3, %15 ], [ null, %14 ]
  ret ptr %39
}

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_iv(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %34 [
    i16 10, label %7
    i16 12, label %7
    i16 6, label %7
    i16 7, label %7
    i16 8, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds %struct.version_info, ptr %11, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !183
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gimple_statement_base, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %0, align 8, !tbaa !145
  %24 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %23, ptr noundef nonnull %20) #21
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %16
  %27 = tail call ptr @build_int_cst(ptr noundef nonnull %4, i64 noundef 0) #21
  tail call fastcc void @set_iv(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %27)
  br label %28

28:                                               ; preds = %22, %26, %7
  %29 = load i32, ptr %8, align 8, !tbaa !46
  %30 = load ptr, ptr %10, align 8, !tbaa !125
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds %struct.version_info, ptr %30, i64 %31, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !183
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  ret ptr %35
}

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @niter_for_exit(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @pointer_map_create() #21
  store ptr %8, ptr %4, align 8, !tbaa !129
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr @pointer_map_contains(ptr noundef nonnull %5, ptr noundef %1) #21
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ null, %7 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !145
  %16 = call zeroext i8 @number_of_iterations_exit(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !302
  %21 = call i32 @integer_zerop(ptr noundef %20) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !304
  %26 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %25), !range !81
  %27 = icmp eq i8 %26, 0
  %28 = load ptr, ptr %24, align 8
  %29 = select i1 %27, ptr %28, ptr null
  br label %30

30:                                               ; preds = %23, %14, %18
  %31 = phi ptr [ null, %18 ], [ null, %14 ], [ %29, %23 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !129
  %33 = call ptr @pointer_map_insert(ptr noundef %32, ptr noundef %1) #21
  store ptr %31, ptr %33, align 8, !tbaa !35
  br label %36

34:                                               ; preds = %11
  %35 = load ptr, ptr %12, align 8, !tbaa !35
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #21
  ret ptr %37
}

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_interesting_uses_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %8) #21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 0
  br label %42

17:                                               ; preds = %2
  %18 = add nsw i32 %4, -10
  %19 = icmp ult i32 %18, -9
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = and i32 %3, 254
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -4
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %24, align 8, !tbaa !305
  br label %36

36:                                               ; preds = %34, %30, %26, %23
  %37 = phi ptr [ %24, %23 ], [ %24, %26 ], [ %24, %30 ], [ %35, %34 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.use_optype_d, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %37, align 8, !tbaa !305
  br label %42

42:                                               ; preds = %39, %36, %15, %11, %6
  %43 = phi i32 [ %13, %15 ], [ 0, %6 ], [ %13, %11 ], [ 0, %36 ], [ 0, %39 ]
  %44 = phi i32 [ 1, %15 ], [ 0, %6 ], [ 0, %11 ], [ 0, %36 ], [ 0, %39 ]
  %45 = phi ptr [ null, %15 ], [ null, %6 ], [ null, %11 ], [ %37, %36 ], [ %41, %39 ]
  %46 = phi ptr [ %1, %15 ], [ null, %6 ], [ %1, %11 ], [ null, %36 ], [ null, %39 ]
  %47 = phi i1 [ true, %15 ], [ false, %6 ], [ false, %11 ], [ false, %36 ], [ true, %39 ]
  %48 = phi i8 [ 0, %15 ], [ 1, %6 ], [ 1, %11 ], [ 1, %36 ], [ 0, %39 ]
  %49 = phi ptr [ %16, %15 ], [ null, %6 ], [ null, %11 ], [ null, %36 ], [ %40, %39 ]
  br i1 %47, label %50, label %79

50:                                               ; preds = %42, %73
  %51 = phi ptr [ %77, %73 ], [ %49, %42 ]
  %52 = phi i8 [ %76, %73 ], [ %48, %42 ]
  %53 = phi ptr [ %75, %73 ], [ %45, %42 ]
  %54 = phi i32 [ %74, %73 ], [ %44, %42 ]
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %51, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  tail call fastcc void @record_invariant(ptr noundef %0, ptr noundef %57, i8 noundef zeroext 0)
  %58 = icmp eq ptr %53, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.use_optype_d, ptr %53, i64 0, i32 1
  %61 = load ptr, ptr %53, align 8, !tbaa !305
  br label %73

62:                                               ; preds = %50
  %63 = icmp slt i32 %54, %43
  br i1 %63, label %64, label %73

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.gimple_statement_phi, ptr %46, i64 0, i32 1
  %66 = add nsw i32 %54, 1
  %67 = load i32, ptr %65, align 8, !tbaa !46
  %68 = icmp ult i32 %67, %54
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #21
  br label %70

70:                                               ; preds = %69, %64
  %71 = zext i32 %54 to i64
  %72 = getelementptr inbounds %struct.gimple_statement_phi, ptr %46, i64 0, i32 4, i64 %71
  br label %73

73:                                               ; preds = %70, %62, %59
  %74 = phi i32 [ %66, %70 ], [ %54, %59 ], [ %54, %62 ]
  %75 = phi ptr [ %53, %70 ], [ %61, %59 ], [ %53, %62 ]
  %76 = phi i8 [ %52, %70 ], [ %52, %59 ], [ 1, %62 ]
  %77 = phi ptr [ %72, %70 ], [ %60, %59 ], [ null, %62 ]
  %78 = icmp eq i8 %76, 0
  br i1 %78, label %50, label %79, !llvm.loop !307

79:                                               ; preds = %73, %42
  %80 = load i32, ptr %1, align 8
  %81 = trunc i32 %80 to i8
  switch i8 %81, label %196 [
    i8 1, label %82
    i8 6, label %83
  ]

82:                                               ; preds = %79
  tail call fastcc void @find_interesting_uses_cond(ptr noundef %0, ptr noundef nonnull %1)
  br label %304

83:                                               ; preds = %79
  %84 = and i32 %80, 255
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !50
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !89
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %93

93:                                               ; preds = %92, %83
  %94 = getelementptr inbounds i8, ptr %1, i64 %90
  %95 = load i32, ptr %1, align 8
  %96 = and i32 %95, 255
  %97 = add nsw i32 %96, -10
  %98 = icmp ult i32 %97, -9
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = zext nneg i32 %96 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !89
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %108

108:                                              ; preds = %107, %99
  %109 = getelementptr inbounds i8, ptr %1, i64 %105
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  br label %111

111:                                              ; preds = %93, %108
  %112 = phi ptr [ %110, %108 ], [ null, %93 ]
  %113 = load ptr, ptr %94, align 8, !tbaa !35
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %113)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.iv, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !59
  %123 = tail call i32 @integer_zerop(ptr noundef %122) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %304, label %125

125:                                              ; preds = %117, %120, %111
  %126 = load i32, ptr %1, align 8
  %127 = trunc i32 %126 to i8
  switch i8 %127, label %130 [
    i8 6, label %128
    i8 1, label %128
    i8 8, label %131
  ]

128:                                              ; preds = %125, %125
  %129 = lshr i32 %126, 16
  br label %131

130:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1446, ptr noundef nonnull @.str.13) #21
  br label %131

131:                                              ; preds = %130, %128, %125
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ], [ 59, %125 ]
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !46
  %136 = icmp eq i8 %135, 3
  br i1 %136, label %137, label %157

137:                                              ; preds = %131
  %138 = load i32, ptr %1, align 8
  %139 = and i32 %138, 255
  %140 = add nsw i32 %139, -1
  %141 = icmp ult i32 %140, 9
  tail call void @llvm.assume(i1 %141)
  %142 = zext nneg i32 %139 to i64
  %143 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !50
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !89
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %150

150:                                              ; preds = %149, %137
  %151 = getelementptr inbounds i8, ptr %1, i64 %147
  %152 = getelementptr inbounds ptr, ptr %151, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !35
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = and i32 %155, 65535
  br label %157

157:                                              ; preds = %131, %150
  %158 = phi i32 [ %156, %150 ], [ %132, %131 ]
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !46
  %162 = icmp eq i8 %161, 3
  br i1 %162, label %163, label %191

163:                                              ; preds = %157
  %164 = load ptr, ptr %112, align 8, !tbaa !35
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !50
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %173, label %170

170:                                              ; preds = %163
  %171 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %164) #21
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %191, label %173

173:                                              ; preds = %170, %163
  %174 = load ptr, ptr %112, align 8, !tbaa !35
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !50
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  tail call fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %112)
  br label %183

181:                                              ; preds = %173
  %182 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef nonnull %174)
  br label %183

183:                                              ; preds = %181, %180
  %184 = load ptr, ptr %94, align 8, !tbaa !35
  %185 = load i64, ptr %184, align 8
  %186 = and i64 %185, 65535
  %187 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !50
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %190, label %304

190:                                              ; preds = %183
  tail call fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %94)
  br label %304

191:                                              ; preds = %170, %157
  %192 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %159
  %193 = load i32, ptr %192, align 4, !tbaa !50
  %194 = icmp eq i32 %193, 5
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  tail call fastcc void @find_interesting_uses_cond(ptr noundef %0, ptr noundef nonnull %1)
  br label %304

196:                                              ; preds = %79, %191
  %197 = load i32, ptr %1, align 8
  %198 = and i32 %197, 255
  %199 = icmp eq i32 %198, 16
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = load ptr, ptr %0, align 8, !tbaa !145
  %204 = getelementptr inbounds %struct.loop, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !151
  %206 = icmp eq ptr %202, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !35
  %210 = tail call fastcc ptr @get_iv(ptr noundef nonnull %0, ptr noundef %209)
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.iv, ptr %210, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !59
  %215 = tail call i32 @integer_zerop(ptr noundef %214) #21
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %304, label %217

217:                                              ; preds = %207, %212, %200, %196
  %218 = load i32, ptr %1, align 8
  %219 = and i32 %218, 255
  %220 = icmp eq i32 %219, 16
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = tail call zeroext i8 @is_gimple_reg(ptr noundef %223) #21
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %257, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %228 = load i32, ptr %227, align 4, !tbaa !46
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %257

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 0
  br label %257

232:                                              ; preds = %217
  %233 = add nsw i32 %219, -10
  %234 = icmp ult i32 %233, -9
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !46
  br label %238

238:                                              ; preds = %235, %232
  %239 = phi ptr [ %237, %235 ], [ null, %232 ]
  %240 = icmp eq ptr %239, null
  br i1 %240, label %251, label %241

241:                                              ; preds = %238
  %242 = and i32 %218, 254
  %243 = add nsw i32 %242, -10
  %244 = icmp ult i32 %243, -4
  br i1 %244, label %251, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !46
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %239, align 8, !tbaa !305
  br label %251

251:                                              ; preds = %249, %245, %241, %238
  %252 = phi ptr [ %239, %238 ], [ %239, %241 ], [ %239, %245 ], [ %250, %249 ]
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.use_optype_d, ptr %252, i64 0, i32 1
  %256 = load ptr, ptr %252, align 8, !tbaa !305
  br label %257

257:                                              ; preds = %254, %251, %230, %221, %226
  %258 = phi i32 [ %228, %230 ], [ 0, %221 ], [ %228, %226 ], [ 0, %251 ], [ 0, %254 ]
  %259 = phi i32 [ 1, %230 ], [ 0, %221 ], [ 0, %226 ], [ 0, %251 ], [ 0, %254 ]
  %260 = phi ptr [ null, %230 ], [ null, %221 ], [ null, %226 ], [ %252, %251 ], [ %256, %254 ]
  %261 = phi ptr [ %1, %230 ], [ null, %221 ], [ %1, %226 ], [ null, %251 ], [ null, %254 ]
  %262 = phi i1 [ true, %230 ], [ false, %221 ], [ false, %226 ], [ false, %251 ], [ true, %254 ]
  %263 = phi i8 [ 0, %230 ], [ 1, %221 ], [ 1, %226 ], [ 1, %251 ], [ 0, %254 ]
  %264 = phi ptr [ %231, %230 ], [ null, %221 ], [ null, %226 ], [ null, %251 ], [ %255, %254 ]
  br i1 %262, label %265, label %304

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.gimple_statement_phi, ptr %261, i64 0, i32 1
  br label %267

267:                                              ; preds = %265, %298
  %268 = phi ptr [ %264, %265 ], [ %302, %298 ]
  %269 = phi i8 [ %263, %265 ], [ %301, %298 ]
  %270 = phi ptr [ %260, %265 ], [ %300, %298 ]
  %271 = phi i32 [ %259, %265 ], [ %299, %298 ]
  %272 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %268, i64 0, i32 3
  %273 = load ptr, ptr %272, align 8, !tbaa !159
  %274 = load ptr, ptr %273, align 8, !tbaa !35
  %275 = load i64, ptr %274, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 141
  br i1 %277, label %278, label %283

278:                                              ; preds = %267
  %279 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %274)
  %280 = icmp eq ptr %279, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef nonnull %274)
  br label %283

283:                                              ; preds = %278, %267, %281
  %284 = icmp eq ptr %270, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.use_optype_d, ptr %270, i64 0, i32 1
  %287 = load ptr, ptr %270, align 8, !tbaa !305
  br label %298

288:                                              ; preds = %283
  %289 = icmp slt i32 %271, %258
  br i1 %289, label %290, label %298

290:                                              ; preds = %288
  %291 = add nsw i32 %271, 1
  %292 = load i32, ptr %266, align 8, !tbaa !46
  %293 = icmp ult i32 %292, %271
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 3103, ptr noundef nonnull @.str.13) #21
  br label %295

295:                                              ; preds = %294, %290
  %296 = zext i32 %271 to i64
  %297 = getelementptr inbounds %struct.gimple_statement_phi, ptr %261, i64 0, i32 4, i64 %296
  br label %298

298:                                              ; preds = %288, %285, %295
  %299 = phi i32 [ %291, %295 ], [ %271, %285 ], [ %271, %288 ]
  %300 = phi ptr [ %270, %295 ], [ %287, %285 ], [ %270, %288 ]
  %301 = phi i8 [ %269, %295 ], [ %269, %285 ], [ 1, %288 ]
  %302 = phi ptr [ %297, %295 ], [ %286, %285 ], [ null, %288 ]
  %303 = icmp eq i8 %301, 0
  br i1 %303, label %267, label %304, !llvm.loop !308

304:                                              ; preds = %298, %257, %212, %183, %190, %120, %195, %82
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_interesting_uses_op(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !294
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !301
  %16 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %17, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.iv_use, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1170, ptr noundef nonnull @.str.13) #21
  br label %42

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = tail call i32 @integer_zerop(ptr noundef %27) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call fastcc void @record_invariant(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %42

31:                                               ; preds = %25
  store i8 1, ptr %10, align 1, !tbaa !294
  %32 = tail call ptr @xmalloc(i64 noundef 40) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !309
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load i32, ptr %34, align 8
  %36 = trunc i32 %35 to i8
  switch i8 %36, label %37 [
    i8 16, label %38
    i8 6, label %38
  ]

37:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1186, ptr noundef nonnull @.str.13) #21
  br label %38

38:                                               ; preds = %31, %31, %37
  %39 = tail call fastcc ptr @record_use(ptr noundef %0, ptr noundef null, ptr noundef %32, ptr noundef nonnull %34, i32 noundef 0)
  %40 = load i32, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.iv, ptr %7, i64 0, i32 6
  store i32 %40, ptr %41, align 4, !tbaa !301
  br label %42

42:                                               ; preds = %24, %13, %6, %2, %38, %30
  %43 = phi ptr [ null, %30 ], [ %39, %38 ], [ null, %2 ], [ null, %6 ], [ %20, %13 ], [ %20, %24 ]
  ret ptr %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_invariant(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 8, !tbaa !145
  %18 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %17, ptr noundef nonnull %14) #21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds %struct.version_info, ptr %24, i64 %25
  store ptr %1, ptr %26, align 8, !tbaa !200
  %27 = getelementptr inbounds %struct.version_info, ptr %24, i64 %25, i32 2
  %28 = load i8, ptr %27, align 8, !tbaa !201
  %29 = or i8 %28, %2
  store i8 %29, ptr %27, align 8, !tbaa !201
  %30 = getelementptr inbounds %struct.version_info, ptr %24, i64 %25, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !199
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !128
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8, !tbaa !128
  store i32 %36, ptr %30, align 4, !tbaa !199
  br label %37

37:                                               ; preds = %33, %20
  %38 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !126
  %40 = load i32, ptr %21, align 8, !tbaa !46
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %39, i32 noundef %40) #21
  br label %42

42:                                               ; preds = %16, %3, %7, %37
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @record_use(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #9 !prof !34 {
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #21
  %7 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %8, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %5 ]
  store i32 %13, ptr %6, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 1
  store i32 %4, ptr %14, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 2
  store ptr %2, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 3
  store ptr %3, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !66
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %19 = getelementptr inbounds %struct.iv_use, ptr %6, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.iv, ptr %2, i64 0, i32 3
  store ptr null, ptr %20, align 8, !tbaa !56
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @dump_use(ptr noundef nonnull %21, ptr noundef nonnull %6)
  br label %28

28:                                               ; preds = %27, %23, %12
  %29 = load ptr, ptr %7, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %29, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !310
  %34 = load i32, ptr %29, align 8, !tbaa !71
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %31
  %37 = tail call ptr @vec_heap_p_reserve(ptr noundef %29, i32 noundef 1) #21
  store ptr %37, ptr %7, align 8, !tbaa !35
  br label %38

38:                                               ; preds = %31, %36
  %39 = load ptr, ptr %7, align 8, !tbaa !35
  %40 = load i32, ptr %39, align 8, !tbaa !71
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !71
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %39, i64 0, i32 2, i64 %42
  store ptr %6, ptr %43, align 8, !tbaa !35
  ret ptr %6
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_interesting_uses_cond(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null), !range !81
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !35
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %10)
  %12 = load ptr, ptr %4, align 8, !tbaa !35
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = call fastcc ptr @find_interesting_uses_op(ptr noundef %0, ptr noundef %13)
  br label %19

15:                                               ; preds = %2
  %16 = call ptr @xmalloc(i64 noundef 40) #21
  %17 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !309
  %18 = call fastcc ptr @record_use(ptr noundef %0, ptr noundef null, ptr noundef %16, ptr noundef %1, i32 noundef 2)
  br label %19

19:                                               ; preds = %15, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_interesting_uses_address(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ifs_ivopts_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %6, ptr %4, align 8, !tbaa !35
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %8 = tail call ptr @build_int_cst(ptr noundef %7, i64 noundef 0) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 254
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -4
  %13 = and i32 %9, 16384
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %142

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !tbaa !35
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 42
  br i1 %20, label %142, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @unshare_expr(ptr noundef nonnull %17) #21
  store ptr %22, ptr %4, align 8, !tbaa !35
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 152
  br i1 %25, label %26, label %86

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call ptr @build_pointer_type(ptr noundef %28) #21
  %30 = load ptr, ptr %4, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %26
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %32)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %83, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %39, align 8, !tbaa !58
  %43 = load ptr, ptr %4, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 1
  store ptr %42, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.iv, ptr %39, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !59
  br label %47

47:                                               ; preds = %41, %34, %26
  %48 = phi ptr [ %46, %41 ], [ %8, %34 ], [ %8, %26 ]
  %49 = load ptr, ptr %4, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 1, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %47
  %54 = load i64, ptr %51, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 141
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %51)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %83, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %58, align 8, !tbaa !58
  %62 = load ptr, ptr %4, align 8, !tbaa !35
  %63 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 1, i32 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.iv, ptr %58, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 1, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %29, ptr noundef nonnull %69, ptr noundef nonnull %65) #21
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %65, %67 ]
  %75 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %29, ptr noundef %48, ptr noundef %74) #21
  br label %76

76:                                               ; preds = %60, %73, %53, %47
  %77 = phi ptr [ %75, %73 ], [ %48, %60 ], [ %48, %53 ], [ %48, %47 ]
  %78 = tail call i32 @integer_zerop(ptr noundef %77) #21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load ptr, ptr %4, align 8, !tbaa !35
  %82 = tail call ptr @tree_mem_ref_addr(ptr noundef %29, ptr noundef %81) #21
  store ptr %82, ptr %4, align 8, !tbaa !35
  br label %83

83:                                               ; preds = %76, %57, %38, %80
  %84 = phi i1 [ true, %80 ], [ false, %38 ], [ false, %57 ], [ false, %76 ]
  %85 = phi ptr [ %77, %80 ], [ %8, %38 ], [ %48, %57 ], [ %77, %76 ]
  br i1 %84, label %137, label %142

86:                                               ; preds = %21
  store ptr %0, ptr %5, align 8, !tbaa !311
  %87 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %5, i64 0, i32 1
  store ptr %1, ptr %87, align 8, !tbaa !313
  %88 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %89 = tail call ptr @build_int_cst(ptr noundef %88, i64 noundef 0) #21
  %90 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %5, i64 0, i32 2
  store ptr %89, ptr %90, align 8, !tbaa !314
  %91 = call zeroext i8 @for_each_index(ptr noundef nonnull %4, ptr noundef nonnull @idx_find_step, ptr noundef nonnull %5) #21
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %142, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %90, align 8, !tbaa !314
  %95 = call i32 @integer_zerop(ptr noundef %94) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %142

97:                                               ; preds = %93
  %98 = load ptr, ptr %90, align 8, !tbaa !314
  %99 = load ptr, ptr %4, align 8, !tbaa !35
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 48
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1669, ptr noundef nonnull @.str.13) #21
  br label %104

104:                                              ; preds = %97, %103
  %105 = load ptr, ptr %4, align 8, !tbaa !35
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 49
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1670, ptr noundef nonnull @.str.13) #21
  br label %110

110:                                              ; preds = %104, %109
  %111 = load ptr, ptr %4, align 8, !tbaa !35
  %112 = call fastcc zeroext i8 @may_be_nonaddressable_p(ptr noundef %111), !range !81
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load ptr, ptr %4, align 8, !tbaa !35
  %116 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %115) #21
  store ptr %116, ptr %4, align 8, !tbaa !35
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 121
  br i1 %119, label %120, label %137

120:                                              ; preds = %114, %126
  %121 = phi ptr [ %123, %126 ], [ %116, %114 ]
  %122 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  %124 = load i64, ptr %123, align 8
  %125 = trunc i64 %124 to i16
  switch i16 %125, label %127 [
    i16 42, label %126
    i16 41, label %126
    i16 45, label %126
    i16 46, label %126
    i16 118, label %126
    i16 43, label %126
    i16 44, label %126
  ]

126:                                              ; preds = %120, %120, %120, %120, %120, %120, %120
  br label %120, !llvm.loop !315

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 0, i32 3
  %129 = and i64 %124, 65535
  %130 = icmp eq i64 %129, 47
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = call ptr @gimple_fold_indirect_ref(ptr noundef %133) #21
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  store ptr %134, ptr %128, align 8, !tbaa !35
  br label %137

137:                                              ; preds = %127, %136, %131, %83, %114
  %138 = phi ptr [ %85, %83 ], [ %98, %114 ], [ %98, %131 ], [ %98, %136 ], [ %98, %127 ]
  %139 = load ptr, ptr %4, align 8, !tbaa !35
  %140 = call fastcc ptr @alloc_iv(ptr noundef %139, ptr noundef %138)
  %141 = call fastcc ptr @record_use(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %140, ptr noundef nonnull %1, i32 noundef 1)
  br label %144

142:                                              ; preds = %83, %110, %86, %93, %16, %3
  %143 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @idx_record_use, ptr noundef %0) #21
  br label %144

144:                                              ; preds = %142, %137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @extract_cond_operands(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #9 !prof !34 {
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !89
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds i8, ptr %1, i64 %16
  %21 = load i32, ptr %1, align 8
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -10
  %24 = icmp ult i32 %23, -9
  br i1 %24, label %70, label %25

25:                                               ; preds = %19
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !89
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %34

34:                                               ; preds = %33, %25
  %35 = getelementptr inbounds i8, ptr %1, i64 %31
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %70

37:                                               ; preds = %6
  %38 = add nsw i32 %8, -10
  %39 = icmp ult i32 %38, -9
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = zext nneg i32 %8 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !89
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr inbounds i8, ptr %1, i64 %46
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  br label %52

52:                                               ; preds = %37, %49
  %53 = phi ptr [ %51, %49 ], [ null, %37 ]
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !89
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 1622, ptr noundef nonnull @.str.13) #21
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %1, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  br label %70

70:                                               ; preds = %67, %52, %34, %19
  %71 = phi ptr [ %36, %34 ], [ null, %19 ], [ %69, %67 ], [ null, %52 ]
  %72 = phi ptr [ %20, %34 ], [ %20, %19 ], [ %53, %67 ], [ %53, %52 ]
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  store ptr %73, ptr @extract_cond_operands.zero, align 8, !tbaa !35
  store ptr %73, ptr getelementptr inbounds (%struct.iv, ptr @extract_cond_operands.const_iv, i64 0, i32 2), align 8, !tbaa !59
  %74 = load ptr, ptr %72, align 8, !tbaa !35
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 141
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %74)
  br label %80

80:                                               ; preds = %78, %70
  %81 = phi ptr [ %79, %78 ], [ @extract_cond_operands.const_iv, %70 ]
  %82 = load ptr, ptr %71, align 8, !tbaa !35
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = tail call fastcc ptr @get_iv(ptr noundef %0, ptr noundef nonnull %82)
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi ptr [ %87, %86 ], [ @extract_cond_operands.const_iv, %80 ]
  %90 = icmp ne ptr %81, null
  %91 = icmp ne ptr %89, null
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.iv, ptr %81, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !59
  %96 = tail call i32 @integer_zerop(ptr noundef %95) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi ptr [ %72, %98 ], [ %71, %93 ]
  %101 = phi ptr [ %89, %98 ], [ %81, %93 ]
  %102 = phi ptr [ %81, %98 ], [ %89, %93 ]
  %103 = phi ptr [ %71, %98 ], [ %72, %93 ]
  %104 = getelementptr inbounds %struct.iv, ptr %101, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = tail call i32 @integer_zerop(ptr noundef %105) #21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.iv, ptr %102, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  %111 = tail call i32 @integer_zerop(ptr noundef %110) #21
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %99, %108, %88
  %115 = phi ptr [ %71, %88 ], [ %100, %108 ], [ %100, %99 ]
  %116 = phi ptr [ %81, %88 ], [ %101, %108 ], [ %101, %99 ]
  %117 = phi ptr [ %89, %88 ], [ %102, %108 ], [ %102, %99 ]
  %118 = phi ptr [ %72, %88 ], [ %103, %108 ], [ %103, %99 ]
  %119 = phi i8 [ 0, %88 ], [ %113, %108 ], [ 0, %99 ]
  %120 = icmp eq ptr %2, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  store ptr %118, ptr %2, align 8, !tbaa !35
  br label %122

122:                                              ; preds = %121, %114
  %123 = icmp eq ptr %4, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %122
  store ptr %116, ptr %4, align 8, !tbaa !35
  br label %125

125:                                              ; preds = %124, %122
  %126 = icmp eq ptr %3, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  store ptr %115, ptr %3, align 8, !tbaa !35
  br label %128

128:                                              ; preds = %127, %125
  %129 = icmp eq ptr %5, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  store ptr %117, ptr %5, align 8, !tbaa !35
  br label %131

131:                                              ; preds = %130, %128
  ret i8 %119
}

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_mem_ref_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @idx_find_step(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = load ptr, ptr %2, align 8, !tbaa !311
  %7 = load ptr, ptr %6, align 8, !tbaa !145
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
  %11 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %0) #21
  %12 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %11), !range !81
  br label %79

13:                                               ; preds = %3, %3
  %14 = and i64 %8, 65535
  %15 = icmp eq i64 %14, 46
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %20), !range !81
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %16, %13
  %24 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #21
  %25 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #21
  %26 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %24), !range !81
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %23
  %29 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %7, ptr noundef %25), !range !81
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %79, label %31

31:                                               ; preds = %3, %28
  %32 = load ptr, ptr %1, align 8, !tbaa !35
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %79

36:                                               ; preds = %31
  %37 = load ptr, ptr %2, align 8, !tbaa !311
  %38 = tail call fastcc ptr @get_iv(ptr noundef %37, ptr noundef nonnull %32)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !58
  store ptr %41, ptr %1, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.iv, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = tail call i32 @integer_zerop(ptr noundef %43) #21
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
  %53 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #21
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %60, label %79

57:                                               ; preds = %46
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %59 = tail call ptr @build_int_cst(ptr noundef %58, i64 noundef 1) #21
  br label %60

60:                                               ; preds = %52, %57
  %61 = phi ptr [ %53, %52 ], [ %59, %57 ]
  %62 = load ptr, ptr %38, align 8, !tbaa !58
  store ptr %62, ptr %4, align 8, !tbaa !35
  %63 = load ptr, ptr %42, align 8, !tbaa !59
  store ptr %63, ptr %5, align 8, !tbaa !35
  %64 = load ptr, ptr %2, align 8, !tbaa !311
  %65 = load ptr, ptr %64, align 8, !tbaa !145
  %66 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %67 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %2, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !313
  %69 = call zeroext i8 @convert_affine_scev(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %68, i8 noundef zeroext 0) #21
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %60
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %73 = load ptr, ptr %5, align 8, !tbaa !35
  %74 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %72, ptr noundef %61, ptr noundef %73) #21
  %75 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %76 = getelementptr inbounds %struct.ifs_ivopts_data, ptr %2, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !314
  %78 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %75, ptr noundef %77, ptr noundef %74) #21
  store ptr %78, ptr %76, align 8, !tbaa !314
  br label %79

79:                                               ; preds = %52, %31, %28, %23, %16, %3, %60, %40, %36, %3, %71, %10
  %80 = phi i8 [ %12, %10 ], [ 1, %71 ], [ 0, %3 ], [ 0, %36 ], [ 1, %40 ], [ 0, %60 ], [ 0, %3 ], [ 0, %16 ], [ 0, %23 ], [ 0, %28 ], [ 1, %31 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %80
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @may_be_nonaddressable_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %25, %13, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %13 ], [ %27, %25 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %29 [
    i16 113, label %28
    i16 41, label %6
    i16 118, label %16
    i16 45, label %25
    i16 46, label %25
    i16 116, label %28
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %2

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = tail call zeroext i8 @is_gimple_reg(ptr noundef %18) #21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !46
  %23 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2, %21, %2
  %26 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  br label %2

28:                                               ; preds = %2, %2
  br label %29

29:                                               ; preds = %21, %2, %16, %6, %28
  %30 = phi i8 [ 1, %28 ], [ 1, %6 ], [ 1, %16 ], [ 0, %2 ], [ 1, %21 ]
  ret i8 %30
}

declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @idx_record_use(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %4)
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -45
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = tail call ptr @array_ref_element_size(ptr noundef nonnull %0) #21
  %13 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %12)
  %14 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #21
  %15 = tail call fastcc ptr @find_interesting_uses_op(ptr noundef %2, ptr noundef %14)
  br label %16

16:                                               ; preds = %3, %11
  ret i8 1
}

declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @convert_affine_scev(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @is_gimple_addressable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_candidate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = load ptr, ptr %0, align 8, !tbaa !145
  %7 = tail call ptr @ip_normal_pos(ptr noundef %6) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef null)
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %0, align 8, !tbaa !145
  %13 = tail call ptr @ip_end_pos(ptr noundef %12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !145
  %17 = tail call ptr @ip_normal_pos(ptr noundef %16) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @ip_end_pos(ptr noundef %16) #21
  %21 = tail call zeroext i8 @empty_block_p(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %19
  %24 = tail call fastcc ptr @add_candidate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 1, ptr noundef %4, ptr noundef null)
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = icmp eq ptr %4, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.iv_use, ptr %4, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !64
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.iv_use, ptr %4, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !155
  %38 = load ptr, ptr %0, align 8, !tbaa !145
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !316
  %43 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %42, ptr noundef %35) #21
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %32, align 8, !tbaa !65
  %47 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %46) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %2) #21
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = tail call i64 @int_cst_value(ptr noundef %2) #21
  %54 = getelementptr inbounds %struct.iv_use, ptr %4, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !66
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 14
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = tail call i32 @vector_type_mode(ptr noundef nonnull %58) #21
  br label %64

64:                                               ; preds = %62, %52, %49, %45, %40, %31, %27, %25
  ret void
}

declare ptr @ip_normal_pos(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @add_candidate_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #9 !prof !34 {
  %8 = alloca ptr, align 8
  store ptr %2, ptr %8, align 8, !tbaa !35
  %9 = icmp eq ptr %1, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %15 [
    i16 10, label %18
    i16 12, label %18
  ]

15:                                               ; preds = %10
  %16 = and i64 %13, 2097152
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %10, %10
  %19 = tail call ptr @unsigned_type_for(ptr noundef nonnull %12) #21
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %12, %15 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %21, ptr noundef nonnull %1) #21
  %25 = load ptr, ptr %8, align 8, !tbaa !35
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %21, ptr noundef %25) #21
  store ptr %26, ptr %8, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %20, %23, %7
  %28 = phi ptr [ %24, %23 ], [ %1, %20 ], [ null, %7 ]
  %29 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %30 = and i32 %4, -2
  %31 = icmp eq i32 %30, 2
  %32 = icmp ne ptr %28, null
  %33 = icmp ne ptr %28, null
  br label %34

34:                                               ; preds = %81, %27
  %35 = phi i64 [ %82, %81 ], [ 0, %27 ]
  %36 = phi ptr [ %47, %81 ], [ null, %27 ]
  %37 = load ptr, ptr %29, align 8, !tbaa !130
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %37, align 8, !tbaa !217
  br label %41

41:                                               ; preds = %34, %39
  %42 = phi i32 [ %40, %39 ], [ 0, %34 ]
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %35, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %37, i64 0, i32 2, i64 %35
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.iv_cand, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !79
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.iv_cand, ptr %47, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !219
  %54 = icmp eq ptr %53, %6
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  br i1 %31, label %56, label %60

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.iv_cand, ptr %47, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = icmp eq ptr %58, %5
  br i1 %59, label %60, label %81

60:                                               ; preds = %55, %56
  %61 = getelementptr inbounds %struct.iv_cand, ptr %47, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !74
  %63 = icmp eq ptr %62, null
  %64 = load ptr, ptr %8, align 8
  %65 = icmp ne ptr %64, null
  br i1 %63, label %66, label %68

66:                                               ; preds = %60
  %67 = select i1 %33, i1 true, i1 %65
  br i1 %67, label %81, label %83

68:                                               ; preds = %60
  %69 = select i1 %32, i1 true, i1 %65
  br i1 %69, label %70, label %81

70:                                               ; preds = %68
  %71 = load ptr, ptr %62, align 8, !tbaa !58
  %72 = tail call i32 @operand_equal_p(ptr noundef %28, ptr noundef %71, i32 noundef 0) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %8, align 8, !tbaa !35
  %76 = load ptr, ptr %61, align 8, !tbaa !74
  %77 = getelementptr inbounds %struct.iv, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = tail call i32 @operand_equal_p(ptr noundef %75, ptr noundef %78, i32 noundef 0) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70, %74, %68, %66, %51, %56, %45
  %82 = add nuw nsw i64 %35, 1
  br label %34, !llvm.loop !317

83:                                               ; preds = %74, %66, %41
  %84 = phi ptr [ %47, %66 ], [ %36, %41 ], [ %47, %74 ]
  %85 = trunc i64 %35 to i32
  %86 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !130
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr %87, align 8, !tbaa !217
  br label %91

91:                                               ; preds = %83, %89
  %92 = phi i32 [ %90, %89 ], [ 0, %83 ]
  %93 = icmp eq i32 %92, %85
  br i1 %93, label %94, label %156

94:                                               ; preds = %91
  %95 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #21
  store i32 %85, ptr %95, align 8, !tbaa !76
  %96 = icmp ne ptr %28, null
  %97 = load ptr, ptr %8, align 8
  %98 = icmp ne ptr %97, null
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = tail call fastcc ptr @alloc_iv(ptr noundef %28, ptr noundef %97)
  br label %102

102:                                              ; preds = %94, %100
  %103 = phi ptr [ %101, %100 ], [ null, %94 ]
  %104 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 6
  store ptr %103, ptr %104, align 8, !tbaa !74
  %105 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 2
  store i32 %4, ptr %105, align 8, !tbaa !79
  %106 = icmp eq i32 %4, 4
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !74
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = tail call ptr @create_tmp_var_raw(ptr noundef %113, ptr noundef nonnull @.str.42) #21
  %115 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 4
  store ptr %114, ptr %115, align 8, !tbaa !213
  %116 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 5
  store ptr %114, ptr %116, align 8, !tbaa !214
  br label %117

117:                                              ; preds = %111, %107, %102
  %118 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 1
  store i8 %3, ptr %118, align 4, !tbaa !77
  %119 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 3
  store ptr %6, ptr %119, align 8, !tbaa !219
  %120 = load ptr, ptr %86, align 8, !tbaa !35
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %120, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !318
  %125 = load i32, ptr %120, align 8, !tbaa !217
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %117, %122
  %128 = tail call ptr @vec_heap_p_reserve(ptr noundef %120, i32 noundef 1) #21
  store ptr %128, ptr %86, align 8, !tbaa !35
  br label %129

129:                                              ; preds = %122, %127
  %130 = load ptr, ptr %86, align 8, !tbaa !35
  %131 = load i32, ptr %130, align 8, !tbaa !217
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 8, !tbaa !217
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %130, i64 0, i32 2, i64 %133
  store ptr %95, ptr %134, align 8, !tbaa !35
  %135 = load ptr, ptr %8, align 8, !tbaa !35
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %129
  %138 = load i64, ptr %135, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 23
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !35
  %142 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 10
  %143 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @find_depends, ptr noundef nonnull %142, ptr noundef null, ptr noundef null) #21
  br label %144

144:                                              ; preds = %141, %137, %129
  %145 = and i32 %4, -2
  %146 = icmp eq i32 %145, 2
  %147 = getelementptr inbounds %struct.iv_cand, ptr %95, i64 0, i32 9
  %148 = select i1 %146, ptr %5, ptr null
  store ptr %148, ptr %147, align 8, !tbaa !80
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  call void @dump_cand(ptr noundef nonnull %149, ptr noundef nonnull %95)
  br label %156

156:                                              ; preds = %144, %151, %155, %91
  %157 = phi ptr [ %95, %155 ], [ %95, %151 ], [ %95, %144 ], [ %84, %91 ]
  %158 = icmp eq i8 %3, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.iv_cand, ptr %157, i64 0, i32 1
  %161 = load i8, ptr %160, align 4, !tbaa !77
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  store i8 1, ptr %160, align 4, !tbaa !77
  %164 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %165 = icmp eq ptr %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %163
  %167 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %168 = and i32 %167, 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %157, align 8, !tbaa !76
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %164, ptr noundef nonnull @.str.43, i32 noundef %171)
  br label %173

173:                                              ; preds = %163, %166, %170, %159, %156
  %174 = icmp eq ptr %5, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.iv_use, ptr %5, i64 0, i32 5
  %177 = load ptr, ptr %176, align 8, !tbaa !68
  %178 = call zeroext i8 @bitmap_set_bit(ptr noundef %177, i32 noundef %85) #21
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %175
  %182 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %183 = and i32 %182, 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr %157, align 8, !tbaa !76
  %187 = load i32, ptr %5, align 8, !tbaa !62
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %179, ptr noundef nonnull @.str.44, i32 noundef %186, i32 noundef %187)
  br label %189

189:                                              ; preds = %175, %181, %185, %173
  ret ptr %157
}

declare ptr @ip_end_pos(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @find_depends(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = load ptr, ptr @fd_ivopts_data, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.ivopts_data, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds %struct.version_info, ptr %13, i64 %14, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !199
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.version_info, ptr %13, i64 %14, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !201
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %26, ptr %2, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %2, align 8, !tbaa !35
  %29 = load i32, ptr %15, align 4, !tbaa !199
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %29) #21
  br label %31

31:                                               ; preds = %8, %18, %3, %27
  ret ptr null
}

declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cst_and_fits_in_hwi(ptr noundef) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @strip_offset_1(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %9 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  store i64 0, ptr %3, align 8, !tbaa !89
  %15 = trunc i64 %12 to i16
  switch i16 %15, label %155 [
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
  %17 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef nonnull %9) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %155, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @integer_zerop(ptr noundef nonnull %9) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %155

22:                                               ; preds = %19
  %23 = tail call i64 @int_cst_value(ptr noundef nonnull %9) #21
  store i64 %23, ptr %3, align 8, !tbaa !89
  %24 = tail call ptr @build_int_cst(ptr noundef %8, i64 noundef 0) #21
  br label %155

25:                                               ; preds = %4, %4, %4
  %26 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = call fastcc ptr @strip_offset_1(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %31 = call fastcc ptr @strip_offset_1(ptr noundef %29, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %6)
  %32 = icmp eq i32 %14, 64
  %33 = load i64, ptr %5, align 8, !tbaa !89
  %34 = load i64, ptr %6, align 8, !tbaa !89
  %35 = sub i64 0, %34
  %36 = select i1 %32, i64 %35, i64 %34
  %37 = add i64 %33, %36
  store i64 %37, ptr %3, align 8, !tbaa !89
  %38 = load ptr, ptr %26, align 8, !tbaa !46
  %39 = icmp eq ptr %30, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load ptr, ptr %28, align 8, !tbaa !46
  %42 = icmp eq ptr %31, %41
  br i1 %42, label %155, label %43

43:                                               ; preds = %40, %25
  %44 = tail call i32 @integer_zerop(ptr noundef %31) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = tail call i32 @integer_zerop(ptr noundef %30) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  br i1 %32, label %50, label %54

50:                                               ; preds = %49
  %51 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %11, ptr noundef %31) #21
  br label %54

52:                                               ; preds = %46
  %53 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %14, ptr noundef %11, ptr noundef %30, ptr noundef %31) #21
  br label %54

54:                                               ; preds = %49, %43, %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ], [ %30, %43 ], [ %31, %49 ]
  %56 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %55) #21
  br label %155

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %59) #21
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %155, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = call fastcc ptr @strip_offset_1(ptr noundef %64, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %66 = load ptr, ptr %63, align 8, !tbaa !46
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %155, label %68

68:                                               ; preds = %62
  %69 = load i64, ptr %5, align 8, !tbaa !89
  %70 = tail call i64 @int_cst_value(ptr noundef %59) #21
  %71 = mul i64 %70, %69
  store i64 %71, ptr %3, align 8, !tbaa !89
  %72 = tail call i32 @integer_zerop(ptr noundef %65) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %11, ptr noundef %65, ptr noundef %59) #21
  br label %76

76:                                               ; preds = %68, %74
  %77 = phi ptr [ %75, %74 ], [ %65, %68 ]
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %77) #21
  br label %155

79:                                               ; preds = %4, %4
  %80 = icmp eq i8 %1, 0
  br i1 %80, label %155, label %81

81:                                               ; preds = %79
  %82 = tail call ptr @array_ref_element_size(ptr noundef nonnull %9) #21
  %83 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %82) #21
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %130, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @int_cst_value(ptr noundef %82) #21
  %87 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %88 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = call fastcc ptr @strip_offset_1(ptr noundef %89, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %6)
  %91 = load i64, ptr %6, align 8, !tbaa !89
  %92 = mul i64 %91, %86
  store i64 %92, ptr %3, align 8, !tbaa !89
  %93 = icmp eq i8 %2, 0
  br i1 %93, label %130, label %94

94:                                               ; preds = %85
  %95 = tail call i32 @integer_zerop(ptr noundef %90) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %87, align 8, !tbaa !46
  %99 = call fastcc ptr @strip_offset_1(ptr noundef %98, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef nonnull %5)
  %100 = load i64, ptr %5, align 8, !tbaa !89
  %101 = load i64, ptr %3, align 8, !tbaa !89
  %102 = add i64 %101, %100
  store i64 %102, ptr %3, align 8, !tbaa !89
  br label %155

103:                                              ; preds = %4
  %104 = icmp eq i8 %1, 0
  br i1 %104, label %155, label %105

105:                                              ; preds = %103
  %106 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %9) #21
  %107 = icmp eq i8 %2, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %106) #21
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = call fastcc ptr @strip_offset_1(ptr noundef %113, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef nonnull %5)
  %115 = load i64, ptr %5, align 8, !tbaa !89
  %116 = tail call i64 @int_cst_value(ptr noundef %106) #21
  %117 = add i64 %116, %115
  store i64 %117, ptr %3, align 8, !tbaa !89
  br label %155

118:                                              ; preds = %4
  %119 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = call fastcc ptr @strip_offset_1(ptr noundef %120, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %122 = load i64, ptr %5, align 8, !tbaa !89
  %123 = load i64, ptr %3, align 8, !tbaa !89
  %124 = add i64 %123, %122
  store i64 %124, ptr %3, align 8, !tbaa !89
  %125 = load ptr, ptr %119, align 8, !tbaa !46
  %126 = icmp eq ptr %121, %125
  br i1 %126, label %155, label %127

127:                                              ; preds = %118
  %128 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %121) #21
  %129 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %128) #21
  br label %155

130:                                              ; preds = %4, %105, %108, %85, %94, %81
  %131 = phi ptr [ null, %108 ], [ null, %105 ], [ %90, %94 ], [ %90, %85 ], [ null, %81 ], [ null, %4 ]
  %132 = phi i8 [ 1, %108 ], [ 1, %105 ], [ 1, %94 ], [ 1, %85 ], [ 1, %81 ], [ 0, %4 ]
  %133 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  %135 = call fastcc ptr @strip_offset_1(ptr noundef %134, i8 noundef zeroext %132, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %136 = load i64, ptr %5, align 8, !tbaa !89
  %137 = load i64, ptr %3, align 8, !tbaa !89
  %138 = add i64 %137, %136
  store i64 %138, ptr %3, align 8, !tbaa !89
  %139 = load ptr, ptr %133, align 8, !tbaa !46
  %140 = icmp eq ptr %135, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = icmp eq ptr %131, null
  br i1 %142, label %155, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = icmp eq ptr %131, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %143, %130
  %148 = tail call ptr @copy_node_stat(ptr noundef nonnull %9) #21
  %149 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 3
  store ptr %135, ptr %149, align 8, !tbaa !46
  %150 = icmp eq ptr %131, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 1
  store ptr %131, ptr %152, align 8, !tbaa !46
  br label %153

153:                                              ; preds = %151, %147
  %154 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %148) #21
  br label %155

155:                                              ; preds = %143, %79, %141, %4, %118, %103, %62, %57, %40, %16, %19, %153, %127, %111, %97, %76, %54, %22
  %156 = phi ptr [ %154, %153 ], [ %129, %127 ], [ %114, %111 ], [ %99, %97 ], [ %78, %76 ], [ %56, %54 ], [ %24, %22 ], [ %0, %19 ], [ %0, %16 ], [ %0, %40 ], [ %0, %57 ], [ %0, %62 ], [ %0, %103 ], [ %0, %118 ], [ %0, %4 ], [ %0, %141 ], [ %0, %79 ], [ %0, %143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret ptr %156
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @get_computation_cost(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #9 !prof !34 {
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.double_int, align 8
  %11 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.iv, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store i64 0, ptr %7, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #21
  %20 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %21) #21
  store ptr null, ptr %4, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %585, label %26

26:                                               ; preds = %6
  %27 = load ptr, ptr %24, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.iv, ptr %24, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1023
  %35 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %585, label %39

39:                                               ; preds = %26
  %40 = icmp eq i8 %3, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %13, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.iv, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.iv, ptr %24, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @operand_equal_p(ptr noundef nonnull %44, ptr noundef nonnull %48, i32 noundef 0) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %585, label %53

53:                                               ; preds = %50, %46, %41, %39
  %54 = load i32, ptr %32, align 4
  %55 = and i32 %54, 1023
  %56 = load i32, ptr %35, align 4
  %57 = and i32 %56, 1023
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %568, label %59

59:                                               ; preds = %53
  %60 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %29) #21
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call i64 @int_cst_value(ptr noundef %29) #21
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i64 [ %63, %62 ], [ 0, %59 ]
  %66 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %17, ptr noundef %29, ptr noundef nonnull %10), !range !81
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %585, label %68

68:                                               ; preds = %64
  %69 = load i64, ptr %10, align 8
  %70 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %69, i64 %71) #21
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %585, label %74

74:                                               ; preds = %68
  %75 = tail call i64 @double_int_to_shwi(i64 %69, i64 %71) #21
  %76 = tail call ptr @tree_strip_nop_conversions(ptr noundef %27) #21
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %76) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = tail call i64 @int_cst_value(ptr noundef %76) #21
  %83 = mul i64 %75, %82
  %84 = sub i64 0, %83
  store i64 %84, ptr %7, align 8, !tbaa !89
  %85 = tail call ptr @build_int_cst(ptr noundef %19, i64 noundef 0) #21
  %86 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %15, ptr noundef %85, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %4)
  br label %148

87:                                               ; preds = %74
  %88 = icmp eq i64 %75, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %87
  %90 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %15, ptr noundef %76, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %4)
  br label %148

91:                                               ; preds = %87
  br i1 %40, label %120, label %92

92:                                               ; preds = %91
  %93 = load i64, ptr %78, align 8
  %94 = trunc i64 %93 to i16
  switch i16 %94, label %95 [
    i16 10, label %120
    i16 12, label %120
  ]

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 14
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = tail call i32 @vector_type_mode(ptr noundef nonnull %97) #21
  br label %108

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i32 [ %102, %101 ], [ %107, %103 ]
  %110 = load ptr, ptr %96, align 8, !tbaa !46
  %111 = load i64, ptr %110, align 8
  %112 = lshr i64 %111, 56
  %113 = trunc i64 %112 to i8
  %114 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %75, i32 noundef %109, i8 noundef zeroext %113), !range !81
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = tail call ptr @build_int_cst(ptr noundef nonnull %78, i64 noundef %75) #21
  %118 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %78, ptr noundef %76, ptr noundef %117) #21
  %119 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %15, ptr noundef %118, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %4)
  br label %148

120:                                              ; preds = %92, %108, %92, %91
  %121 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %76, ptr noundef nonnull %4)
  %122 = trunc i64 %121 to i32
  %123 = and i64 %121, -4294967296
  %124 = load i64, ptr %78, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 14
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #21
  br label %134

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br label %134

134:                                              ; preds = %129, %127
  %135 = phi i32 [ %128, %127 ], [ %133, %129 ]
  %136 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %137 = load i8, ptr %136, align 1, !tbaa !146
  %138 = tail call fastcc i32 @add_cost(i32 noundef %135, i8 noundef zeroext %137)
  %139 = add i32 %138, %122
  %140 = tail call ptr @build_int_cst(ptr noundef %19, i64 noundef 0) #21
  %141 = call fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %15, ptr noundef %140, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %4)
  %142 = add i64 %141, %123
  %143 = and i64 %142, -4294967296
  %144 = trunc i64 %141 to i32
  %145 = add i32 %139, %144
  %146 = zext i32 %145 to i64
  %147 = or disjoint i64 %143, %146
  br label %148

148:                                              ; preds = %134, %116, %89, %81
  %149 = phi i64 [ %86, %81 ], [ %90, %89 ], [ %147, %134 ], [ %119, %116 ]
  %150 = and i64 %149, -4294967296
  %151 = trunc i64 %149 to i32
  %152 = load ptr, ptr %0, align 8, !tbaa !145
  %153 = tail call fastcc zeroext i8 @stmt_after_increment(ptr noundef %152, ptr noundef %2, ptr noundef %12), !range !81
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %148
  %156 = mul i64 %75, %65
  %157 = load i64, ptr %7, align 8, !tbaa !89
  %158 = sub i64 %157, %156
  store i64 %158, ptr %7, align 8, !tbaa !89
  br label %159

159:                                              ; preds = %155, %148
  %160 = load i8, ptr %9, align 1, !tbaa !46
  br i1 %40, label %496, label %161

161:                                              ; preds = %159
  %162 = load i8, ptr %8, align 1, !tbaa !46
  %163 = load i64, ptr %7, align 8, !tbaa !89
  %164 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #21
  br label %176

171:                                              ; preds = %161
  %172 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %170, %169 ], [ %175, %171 ]
  %178 = load ptr, ptr %164, align 8, !tbaa !46
  %179 = load i64, ptr %178, align 8
  %180 = lshr i64 %179, 56
  %181 = trunc i64 %180 to i8
  %182 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !100
  %183 = tail call i32 %182(i8 noundef zeroext %181) #21
  %184 = trunc i64 %180 to i32
  %185 = mul nuw nsw i32 %184, 87
  %186 = add nsw i32 %185, %177
  %187 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %176
  %190 = load i32, ptr %187, align 8, !tbaa !319
  br label %191

191:                                              ; preds = %189, %176
  %192 = phi i32 [ %190, %189 ], [ 0, %176 ]
  %193 = icmp ult i32 %186, %192
  br i1 %193, label %225, label %194

194:                                              ; preds = %191
  %195 = add i32 %186, 1
  br i1 %188, label %198, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr %187, align 8, !tbaa !319
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %197, %196 ], [ 0, %194 ]
  br i1 %188, label %202, label %200

200:                                              ; preds = %198
  %201 = load i32, ptr %187, align 8, !tbaa !319
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %201, %200 ], [ 0, %198 ]
  %204 = sub nsw i32 %195, %203
  br i1 %188, label %211, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %187, i64 0, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !321
  %208 = load i32, ptr %187, align 8, !tbaa !319
  %209 = sub i32 %207, %208
  %210 = icmp uge i32 %209, %204
  br label %213

211:                                              ; preds = %202
  %212 = icmp eq i32 %203, %195
  br label %213

213:                                              ; preds = %211, %205
  %214 = phi i1 [ %210, %205 ], [ %212, %211 ]
  br i1 %214, label %217, label %215

215:                                              ; preds = %213
  %216 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %187, i32 noundef %204) #21
  store ptr %216, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !35
  br label %217

217:                                              ; preds = %215, %213
  %218 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8, !tbaa !35, !nonnull !99, !noundef !99
  store i32 %195, ptr %218, align 8, !tbaa !319
  %219 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %218, i64 0, i32 2
  %220 = sext i32 %199 to i64
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  %222 = sub nsw i32 %195, %199
  %223 = sext i32 %222 to i64
  %224 = shl nsw i64 %223, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %221, i8 0, i64 %224, i1 false)
  br label %225

225:                                              ; preds = %217, %191
  %226 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  %227 = zext i32 %186 to i64
  %228 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %226, i64 0, i32 2, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !35
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %429

231:                                              ; preds = %225
  %232 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %233 = and i32 %232, 32
  %234 = icmp eq i32 %233, 0
  %235 = select i1 %234, i64 16, i64 32
  %236 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #21
  %237 = tail call ptr @gen_raw_REG(i32 noundef %183, i32 noundef 58) #21
  %238 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %183, ptr noundef %237, ptr noundef null) #21
  %239 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %240

240:                                              ; preds = %231, %245
  %241 = phi i64 [ %235, %231 ], [ %246, %245 ]
  %242 = tail call ptr @gen_int_mode(i64 noundef %241, i32 noundef %183) #21
  store ptr %242, ptr %239, align 8, !tbaa !46
  %243 = tail call i32 @memory_address_addr_space_p(i32 noundef %177, ptr noundef %238, i8 noundef zeroext %181) #21
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %240
  %246 = shl i64 %241, 1
  %247 = icmp slt i64 %246, 1048577
  br i1 %247, label %240, label %248, !llvm.loop !322

248:                                              ; preds = %240, %245
  %249 = phi i64 [ %241, %240 ], [ %246, %245 ]
  %250 = icmp eq i64 %249, %235
  %251 = ashr exact i64 %249, 1
  %252 = select i1 %250, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.anon, ptr %236, i64 0, i32 1
  store i64 %252, ptr %253, align 8, !tbaa !323
  %254 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %255

255:                                              ; preds = %248, %261
  %256 = phi i64 [ %235, %248 ], [ %262, %261 ]
  %257 = sub nsw i64 0, %256
  %258 = tail call ptr @gen_int_mode(i64 noundef %257, i32 noundef %183) #21
  store ptr %258, ptr %254, align 8, !tbaa !46
  %259 = tail call i32 @memory_address_addr_space_p(i32 noundef %177, ptr noundef %238, i8 noundef zeroext %181) #21
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = shl i64 %256, 1
  %263 = icmp slt i64 %262, 1048577
  br i1 %263, label %255, label %264, !llvm.loop !325

264:                                              ; preds = %255, %261
  %265 = phi i64 [ %256, %255 ], [ %262, %261 ]
  %266 = icmp eq i64 %265, %235
  %267 = ashr exact i64 %265, 1
  %268 = sub nsw i64 0, %267
  %269 = select i1 %266, i64 0, i64 %268
  store i64 %269, ptr %236, align 8, !tbaa !326
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %271 = icmp eq ptr %270, null
  br i1 %271, label %289, label %272

272:                                              ; preds = %264
  %273 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %274 = and i32 %273, 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %289, label %276

276:                                              ; preds = %272
  %277 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr nonnull %270)
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %279 = zext i32 %177 to i64
  %280 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !35
  %282 = load i64, ptr %236, align 8, !tbaa !326
  %283 = trunc i64 %282 to i32
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef nonnull @.str.55, ptr noundef %281, i32 noundef %283)
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %286 = load i64, ptr %253, align 8, !tbaa !323
  %287 = trunc i64 %286 to i32
  %288 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %285, ptr noundef nonnull @.str.56, ptr noundef %281, i32 noundef %287)
  br label %289

289:                                              ; preds = %276, %272, %264
  br label %290

290:                                              ; preds = %289, %294
  %291 = phi i64 [ %295, %294 ], [ 2, %289 ]
  %292 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %291, i32 noundef %177, i8 noundef zeroext %181), !range !81
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %290
  %295 = add nuw nsw i64 %291, 1
  %296 = icmp eq i64 %295, 129
  br i1 %296, label %297, label %290, !llvm.loop !327

297:                                              ; preds = %290, %294
  %298 = phi i64 [ 1, %294 ], [ %291, %290 ]
  %299 = tail call ptr @gen_raw_REG(i32 noundef %183, i32 noundef 58) #21
  %300 = tail call ptr @gen_raw_REG(i32 noundef %183, i32 noundef 59) #21
  br label %301

301:                                              ; preds = %297, %340
  %302 = phi i64 [ 0, %297 ], [ %352, %340 ]
  %303 = trunc i64 %302 to i32
  %304 = lshr i32 %303, 1
  %305 = and i32 %304, 1
  %306 = lshr i32 %303, 2
  %307 = and i32 %306, 1
  %308 = lshr i64 %302, 3
  %309 = icmp ult i64 %302, 8
  br i1 %309, label %313, label %310

310:                                              ; preds = %301
  %311 = tail call ptr @gen_int_mode(i64 noundef %298, i32 noundef %183) #21
  %312 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %183, ptr noundef %299, ptr noundef %311) #21
  br label %313

313:                                              ; preds = %310, %301
  %314 = phi ptr [ %312, %310 ], [ %299, %301 ]
  %315 = icmp eq i32 %305, 0
  br i1 %315, label %318, label %316

316:                                              ; preds = %313
  %317 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %183, ptr noundef %314, ptr noundef %300) #21
  br label %318

318:                                              ; preds = %316, %313
  %319 = phi ptr [ %317, %316 ], [ %314, %313 ]
  %320 = and i64 %302, 1
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %318
  %323 = tail call ptr @ggc_alloc_string(ptr noundef nonnull @.str.17, i32 noundef -1) #21
  %324 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %183, ptr noundef %323) #21
  %325 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %325, align 8, !tbaa !46
  %326 = icmp eq i32 %307, 0
  br i1 %326, label %335, label %327

327:                                              ; preds = %322
  %328 = tail call ptr @gen_int_mode(i64 noundef %252, i32 noundef %183) #21
  %329 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %183, ptr noundef %324, ptr noundef %328) #21
  %330 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %183, ptr noundef %329) #21
  br label %335

331:                                              ; preds = %318
  %332 = icmp eq i32 %307, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %331
  %334 = tail call ptr @gen_int_mode(i64 noundef %252, i32 noundef %183) #21
  br label %335

335:                                              ; preds = %333, %331, %327, %322
  %336 = phi ptr [ %330, %327 ], [ %324, %322 ], [ %334, %333 ], [ null, %331 ]
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  %339 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %183, ptr noundef %319, ptr noundef nonnull %336) #21
  br label %340

340:                                              ; preds = %338, %335
  %341 = phi ptr [ %339, %338 ], [ %319, %335 ]
  tail call void @start_sequence() #21
  %342 = load i32, ptr @cse_not_expected, align 4, !tbaa !50
  store i32 1, ptr @cse_not_expected, align 4, !tbaa !50
  %343 = tail call ptr @memory_address_addr_space(i32 noundef %177, ptr noundef %341, i8 noundef zeroext %181) #21
  store i32 %342, ptr @cse_not_expected, align 4, !tbaa !50
  %344 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  %345 = tail call fastcc i32 @seq_cost(ptr noundef %344, i8 noundef zeroext %22)
  %346 = tail call i32 @address_cost(ptr noundef %343, i32 noundef %177, i8 noundef zeroext %181, i8 noundef zeroext %22) #21
  %347 = add i32 %346, %345
  %348 = tail call i32 @llvm.umax.i32(i32 %347, i32 1)
  %349 = zext nneg i32 %305 to i64
  %350 = zext nneg i32 %307 to i64
  %351 = getelementptr inbounds %struct.anon, ptr %236, i64 0, i32 2, i64 %320, i64 %349, i64 %350, i64 %308
  store i32 %348, ptr %351, align 4, !tbaa !50
  %352 = add nuw nsw i64 %302, 1
  %353 = icmp eq i64 %352, 16
  br i1 %353, label %354, label %301, !llvm.loop !328

354:                                              ; preds = %340
  %355 = tail call fastcc i32 @add_cost(i32 noundef %183, i8 noundef zeroext %22)
  %356 = add i32 %355, 1
  br label %357

357:                                              ; preds = %354, %372
  %358 = phi i64 [ 0, %354 ], [ %373, %372 ]
  %359 = lshr i64 %358, 1
  %360 = and i64 %359, 1
  %361 = lshr i64 %358, 2
  %362 = getelementptr inbounds %struct.anon, ptr %236, i64 0, i32 2, i64 0, i64 1, i64 %360, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !50
  %364 = and i64 %358, 1
  %365 = icmp eq i64 %364, 0
  %366 = select i1 %365, i32 1, i32 %356
  %367 = add i32 %366, %363
  %368 = getelementptr inbounds %struct.anon, ptr %236, i64 0, i32 2, i64 1, i64 %364, i64 %360, i64 %361
  %369 = load i32, ptr %368, align 4, !tbaa !50
  %370 = icmp ult i32 %367, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %357
  store i32 %367, ptr %368, align 4, !tbaa !50
  br label %372

372:                                              ; preds = %371, %357
  %373 = add nuw nsw i64 %358, 1
  %374 = icmp eq i64 %373, 8
  br i1 %374, label %375, label %357, !llvm.loop !329

375:                                              ; preds = %372
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %377 = icmp eq ptr %376, null
  br i1 %377, label %426, label %378

378:                                              ; preds = %375
  %379 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %380 = and i32 %379, 8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %426, label %382

382:                                              ; preds = %378
  %383 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 15, i64 1, ptr nonnull %376)
  br label %384

384:                                              ; preds = %382, %414
  %385 = phi i64 [ 0, %382 ], [ %421, %414 ]
  %386 = trunc i64 %385 to i32
  %387 = lshr i32 %386, 1
  %388 = and i32 %387, 1
  %389 = lshr i32 %386, 2
  %390 = and i32 %389, 1
  %391 = lshr i64 %385, 3
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %393 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %392)
  %394 = and i64 %385, 1
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %384
  %397 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %398 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %397)
  br label %399

399:                                              ; preds = %396, %384
  %400 = icmp eq i32 %388, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %399
  %402 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %403 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 6, i64 1, ptr %402)
  br label %404

404:                                              ; preds = %401, %399
  %405 = icmp eq i32 %390, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %404
  %407 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %408 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 6, i64 1, ptr %407)
  br label %409

409:                                              ; preds = %406, %404
  %410 = icmp ult i64 %385, 8
  br i1 %410, label %414, label %411

411:                                              ; preds = %409
  %412 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %413 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 6, i64 1, ptr %412)
  br label %414

414:                                              ; preds = %411, %409
  %415 = zext nneg i32 %388 to i64
  %416 = zext nneg i32 %390 to i64
  %417 = getelementptr inbounds %struct.anon, ptr %236, i64 0, i32 2, i64 %394, i64 %415, i64 %416, i64 %391
  %418 = load i32, ptr %417, align 4, !tbaa !50
  %419 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %420 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.62, i32 noundef %418)
  %421 = add nuw nsw i64 %385, 1
  %422 = icmp eq i64 %421, 16
  br i1 %422, label %423, label %384, !llvm.loop !330

423:                                              ; preds = %414
  %424 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %425 = tail call i32 @fputc(i32 10, ptr %424)
  br label %426

426:                                              ; preds = %423, %378, %375
  %427 = load ptr, ptr @get_address_cost.address_cost_data_list, align 8
  %428 = getelementptr inbounds %struct.VEC_address_cost_data_base, ptr %427, i64 0, i32 2, i64 %227
  store ptr %236, ptr %428, align 8, !tbaa !35
  br label %429

429:                                              ; preds = %426, %225
  %430 = phi ptr [ %229, %225 ], [ %236, %426 ]
  %431 = zext i32 %183 to i64
  %432 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !46
  %434 = zext i8 %433 to i64
  %435 = shl nuw nsw i64 %434, 3
  %436 = add nuw nsw i64 %435, 4294967295
  %437 = and i64 %436, 4294967295
  %438 = shl i64 -2, %437
  %439 = xor i64 %438, -1
  %440 = and i64 %163, %439
  %441 = shl nuw i64 1, %437
  %442 = and i64 %440, %441
  %443 = icmp eq i64 %442, 0
  %444 = or i64 %438, %163
  %445 = select i1 %443, i64 %440, i64 %444
  %446 = icmp eq i64 %75, 1
  %447 = icmp eq i64 %445, 0
  br i1 %447, label %456, label %448

448:                                              ; preds = %429
  %449 = load i64, ptr %430, align 8, !tbaa !326
  %450 = icmp sgt i64 %449, %445
  br i1 %450, label %456, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.anon, ptr %430, i64 0, i32 1
  %453 = load i64, ptr %452, align 8, !tbaa !323
  %454 = icmp sle i64 %445, %453
  %455 = zext i1 %454 to i8
  br label %456

456:                                              ; preds = %451, %448, %429
  %457 = phi i8 [ 0, %448 ], [ 0, %429 ], [ %455, %451 ]
  br i1 %446, label %460, label %458

458:                                              ; preds = %456
  %459 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %75, i32 noundef %177, i8 noundef zeroext %181), !range !81
  br label %460

460:                                              ; preds = %458, %456
  %461 = phi i8 [ 0, %456 ], [ %459, %458 ]
  %462 = icmp ne i8 %461, 0
  %463 = select i1 %446, i1 true, i1 %462
  br i1 %463, label %466, label %464

464:                                              ; preds = %460
  %465 = tail call i32 @multiply_by_cost(i64 noundef %75, i32 noundef %183, i8 noundef zeroext %22)
  br label %466

466:                                              ; preds = %464, %460
  %467 = phi i32 [ 0, %460 ], [ %465, %464 ]
  %468 = or i8 %457, %160
  %469 = icmp ne i8 %468, 0
  %470 = select i1 %447, i1 true, i1 %469
  br i1 %470, label %474, label %471

471:                                              ; preds = %466
  %472 = tail call fastcc i32 @add_cost(i32 noundef %183, i8 noundef zeroext %22)
  %473 = add i32 %472, %467
  br label %474

474:                                              ; preds = %471, %466
  %475 = phi i32 [ %467, %466 ], [ %473, %471 ]
  %476 = icmp eq ptr %5, null
  br i1 %476, label %478, label %477

477:                                              ; preds = %474
  store i8 0, ptr %5, align 1, !tbaa !46
  br label %478

478:                                              ; preds = %477, %474
  %479 = icmp ne i8 %162, 0
  %480 = icmp ne i8 %160, 0
  %481 = zext i8 %160 to i64
  %482 = zext i8 %162 to i64
  %483 = zext nneg i8 %457 to i64
  %484 = zext nneg i8 %461 to i64
  %485 = getelementptr inbounds %struct.anon, ptr %430, i64 0, i32 2, i64 %481, i64 %482, i64 %483, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !50
  %487 = zext i1 %480 to i64
  %488 = zext i1 %479 to i64
  %489 = add nuw nsw i64 %488, %487
  %490 = add nuw nsw i64 %489, %483
  %491 = add nuw nsw i64 %490, %484
  %492 = add i32 %486, %475
  %493 = shl nuw nsw i64 %491, 32
  %494 = add i64 %493, %150
  %495 = add i32 %492, %151
  br label %585

496:                                              ; preds = %159
  %497 = icmp ne i8 %160, 0
  %498 = load i8, ptr %8, align 1
  %499 = icmp ne i8 %498, 0
  %500 = select i1 %497, i1 true, i1 %499
  %501 = load i64, ptr %7, align 8
  %502 = icmp ne i64 %501, 0
  %503 = select i1 %500, i1 true, i1 %502
  br i1 %503, label %521, label %504

504:                                              ; preds = %496
  %505 = icmp eq i64 %75, 1
  br i1 %505, label %585, label %506

506:                                              ; preds = %504
  %507 = load i64, ptr %78, align 8
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 14
  br i1 %509, label %510, label %512

510:                                              ; preds = %506
  %511 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #21
  br label %517

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %514 = load i32, ptr %513, align 4
  %515 = lshr i32 %514, 16
  %516 = and i32 %515, 255
  br label %517

517:                                              ; preds = %512, %510
  %518 = phi i32 [ %511, %510 ], [ %516, %512 ]
  %519 = tail call i32 @multiply_by_cost(i64 noundef %75, i32 noundef %518, i8 noundef zeroext %22)
  %520 = add i32 %519, %151
  br label %585

521:                                              ; preds = %496
  %522 = select i1 %497, i1 true, i1 %502
  %523 = select i1 %499, i1 %522, i1 false
  br i1 %523, label %524, label %538

524:                                              ; preds = %521
  %525 = load i64, ptr %78, align 8
  %526 = and i64 %525, 65535
  %527 = icmp eq i64 %526, 14
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #21
  br label %535

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %532 = load i32, ptr %531, align 4
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  br label %535

535:                                              ; preds = %530, %528
  %536 = phi i32 [ %529, %528 ], [ %534, %530 ]
  %537 = tail call fastcc i32 @add_cost(i32 noundef %536, i8 noundef zeroext %22)
  br label %538

538:                                              ; preds = %535, %521
  %539 = load i64, ptr %78, align 8
  %540 = and i64 %539, 65535
  %541 = icmp eq i64 %540, 14
  br i1 %541, label %542, label %544

542:                                              ; preds = %538
  %543 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #21
  br label %549

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %546 = load i32, ptr %545, align 4
  %547 = lshr i32 %546, 16
  %548 = and i32 %547, 255
  br label %549

549:                                              ; preds = %544, %542
  %550 = phi i32 [ %543, %542 ], [ %548, %544 ]
  %551 = tail call fastcc i32 @add_cost(i32 noundef %550, i8 noundef zeroext %22)
  %552 = tail call i64 @llvm.abs.i64(i64 %75, i1 true)
  %553 = icmp eq i64 %552, 1
  br i1 %553, label %568, label %554

554:                                              ; preds = %549
  %555 = load i64, ptr %78, align 8
  %556 = and i64 %555, 65535
  %557 = icmp eq i64 %556, 14
  br i1 %557, label %558, label %560

558:                                              ; preds = %554
  %559 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #21
  br label %565

560:                                              ; preds = %554
  %561 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %562 = load i32, ptr %561, align 4
  %563 = lshr i32 %562, 16
  %564 = and i32 %563, 255
  br label %565

565:                                              ; preds = %560, %558
  %566 = phi i32 [ %559, %558 ], [ %564, %560 ]
  %567 = tail call i32 @multiply_by_cost(i64 noundef %552, i32 noundef %566, i8 noundef zeroext %22)
  br label %568

568:                                              ; preds = %565, %549, %53
  %569 = icmp eq ptr %5, null
  br i1 %569, label %571, label %570

570:                                              ; preds = %568
  store i8 0, ptr %5, align 1, !tbaa !46
  br label %571

571:                                              ; preds = %570, %568
  %572 = load ptr, ptr %0, align 8, !tbaa !145
  %573 = tail call fastcc ptr @get_computation_at(ptr noundef %572, ptr noundef %1, ptr noundef %2, ptr noundef %12)
  %574 = icmp eq ptr %573, null
  br i1 %574, label %585, label %575

575:                                              ; preds = %571
  br i1 %40, label %582, label %576

576:                                              ; preds = %575
  %577 = getelementptr inbounds %struct.tree_common, ptr %573, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !46
  %579 = getelementptr inbounds %struct.tree_common, ptr %578, i64 0, i32 2
  %580 = load ptr, ptr %579, align 8, !tbaa !46
  %581 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %580, ptr noundef nonnull %573) #21
  br label %582

582:                                              ; preds = %576, %575
  %583 = phi ptr [ %581, %576 ], [ %573, %575 ]
  %584 = tail call fastcc i32 @computation_cost(ptr noundef %583, i8 noundef zeroext %22)
  br label %585

585:                                              ; preds = %50, %6, %26, %64, %68, %478, %504, %517, %571, %582
  %586 = phi i32 [ %495, %478 ], [ 10000000, %6 ], [ 10000000, %26 ], [ 10000000, %64 ], [ 10000000, %68 ], [ %520, %517 ], [ %151, %504 ], [ %584, %582 ], [ 10000000, %571 ], [ 10000000, %50 ]
  %587 = phi i64 [ %494, %478 ], [ 42949672960000000, %6 ], [ 42949672960000000, %26 ], [ 42949672960000000, %64 ], [ 42949672960000000, %68 ], [ %150, %517 ], [ %150, %504 ], [ 0, %582 ], [ 42949672960000000, %571 ], [ 42949672960000000, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  %588 = zext i32 %586 to i64
  %589 = or disjoint i64 %587, %588
  ret i64 %589
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @constant_multiple_of(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.double_int, align 8
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1023
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %14 = tail call i32 @operand_equal_p(ptr noundef %12, ptr noundef %13, i32 noundef 0) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  store i64 1, ptr %2, align 8, !tbaa.struct !331
  %17 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 0, ptr %17, align 8, !tbaa.struct !332
  br label %117

18:                                               ; preds = %3
  %19 = load i64, ptr %12, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %117 [
    i16 65, label %21
    i16 63, label %46
    i16 64, label %46
    i16 23, label %80
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %117

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %29, ptr noundef %13, ptr noundef nonnull %4), !range !81
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %117, label %32

32:                                               ; preds = %27
  %33 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %23) #21
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = extractvalue { i64, i64 } %33, 1
  %36 = load i64, ptr %4, align 8
  %37 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = tail call { i64, i64 } @double_int_mul(i64 %36, i64 %38, i64 %34, i64 %35) #21
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = extractvalue { i64, i64 } %39, 1
  %42 = tail call { i64, i64 } @double_int_sext(i64 %40, i64 %41, i32 noundef %11) #21
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  store i64 %43, ptr %2, align 8, !tbaa.struct !331
  %45 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %44, ptr %45, align 8, !tbaa.struct !332
  br label %117

46:                                               ; preds = %18, %18
  %47 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %48, ptr noundef %13, ptr noundef nonnull %5), !range !81
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %117, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %53, ptr noundef %13, ptr noundef nonnull %6), !range !81
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %117, label %56

56:                                               ; preds = %51
  %57 = and i64 %19, 65535
  %58 = icmp eq i64 %57, 64
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64, ptr %6, align 8
  %61 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = tail call { i64, i64 } @double_int_neg(i64 %60, i64 %62) #21
  %64 = extractvalue { i64, i64 } %63, 0
  %65 = extractvalue { i64, i64 } %63, 1
  store i64 %64, ptr %6, align 8, !tbaa.struct !331
  store i64 %65, ptr %61, align 8, !tbaa.struct !332
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i64, ptr %5, align 8
  %68 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %6, align 8
  %71 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = tail call { i64, i64 } @double_int_add(i64 %67, i64 %69, i64 %70, i64 %72) #21
  %74 = extractvalue { i64, i64 } %73, 0
  %75 = extractvalue { i64, i64 } %73, 1
  %76 = tail call { i64, i64 } @double_int_sext(i64 %74, i64 %75, i32 noundef %11) #21
  %77 = extractvalue { i64, i64 } %76, 0
  %78 = extractvalue { i64, i64 } %76, 1
  store i64 %77, ptr %2, align 8, !tbaa.struct !331
  %79 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %78, ptr %79, align 8, !tbaa.struct !332
  br label %117

80:                                               ; preds = %18
  %81 = load i64, ptr %13, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 23
  br i1 %83, label %84, label %117

84:                                               ; preds = %80
  %85 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %12) #21
  %86 = extractvalue { i64, i64 } %85, 0
  %87 = extractvalue { i64, i64 } %85, 1
  %88 = tail call { i64, i64 } @double_int_sext(i64 %86, i64 %87, i32 noundef %11) #21
  %89 = extractvalue { i64, i64 } %88, 0
  %90 = extractvalue { i64, i64 } %88, 1
  store i64 %89, ptr %5, align 8, !tbaa.struct !331
  %91 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %90, ptr %91, align 8, !tbaa.struct !332
  %92 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %13) #21
  %93 = extractvalue { i64, i64 } %92, 0
  %94 = extractvalue { i64, i64 } %92, 1
  %95 = tail call { i64, i64 } @double_int_sext(i64 %93, i64 %94, i32 noundef %11) #21
  %96 = extractvalue { i64, i64 } %95, 0
  %97 = extractvalue { i64, i64 } %95, 1
  store i64 %96, ptr %6, align 8, !tbaa.struct !331
  %98 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %97, ptr %98, align 8, !tbaa.struct !332
  %99 = icmp ne i64 %96, 0
  %100 = icmp ne i64 %97, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %84
  %103 = call { i64, i64 } @double_int_sdivmod(i64 %89, i64 %90, i64 %96, i64 %97, i32 noundef 69, ptr noundef nonnull %4) #21
  %104 = extractvalue { i64, i64 } %103, 0
  %105 = extractvalue { i64, i64 } %103, 1
  %106 = call { i64, i64 } @double_int_sext(i64 %104, i64 %105, i32 noundef %11) #21
  %107 = extractvalue { i64, i64 } %106, 0
  %108 = extractvalue { i64, i64 } %106, 1
  store i64 %107, ptr %2, align 8, !tbaa.struct !331
  %109 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %108, ptr %109, align 8, !tbaa.struct !332
  %110 = load i64, ptr %4, align 8
  %111 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %112 = load i64, ptr %111, align 8
  %113 = icmp eq i64 %110, 0
  %114 = icmp eq i64 %112, 0
  %115 = select i1 %113, i1 %114, i1 false
  %116 = zext i1 %115 to i8
  br label %117

117:                                              ; preds = %46, %18, %84, %80, %51, %27, %21, %102, %66, %32, %16
  %118 = phi i8 [ 1, %16 ], [ %116, %102 ], [ 1, %66 ], [ 1, %32 ], [ 0, %21 ], [ 0, %27 ], [ 0, %51 ], [ 0, %80 ], [ 0, %84 ], [ 0, %18 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret i8 %118
}

declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #3

declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @difference_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #9 !prof !34 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.affine_tree_combination, align 8
  %17 = alloca %struct.affine_tree_combination, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.affine_tree_combination, align 8
  %21 = alloca %struct.affine_tree_combination, align 8
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #21
  br label %34

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %21) #21
  %36 = call fastcc ptr @strip_offset_1(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %18)
  %37 = call fastcc ptr @strip_offset_1(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %19)
  %38 = load i64, ptr %18, align 8, !tbaa !89
  %39 = load i64, ptr %19, align 8, !tbaa !89
  %40 = sub i64 %38, %39
  %41 = load i64, ptr %5, align 8, !tbaa !89
  %42 = add i64 %40, %41
  store i64 %42, ptr %5, align 8, !tbaa !89
  %43 = tail call ptr @tree_strip_nop_conversions(ptr noundef %36) #21
  %44 = tail call ptr @tree_strip_nop_conversions(ptr noundef %37) #21
  %45 = load i64, ptr %43, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 121
  br i1 %47, label %48, label %111

48:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store i64 0, ptr %15, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %17) #21
  %49 = load i64, ptr %43, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 121
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3607, ptr noundef nonnull @.str.13) #21
  br label %53

53:                                               ; preds = %52, %48
  %54 = call zeroext i8 @ptr_difference_const(ptr noundef nonnull %43, ptr noundef %44, ptr noundef nonnull %15) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %15, align 8, !tbaa !89
  %58 = load i64, ptr %5, align 8, !tbaa !89
  %59 = add i64 %58, %57
  store i64 %59, ptr %5, align 8, !tbaa !89
  store i8 0, ptr %3, align 1, !tbaa !46
  store i8 0, ptr %4, align 1, !tbaa !46
  br label %107

60:                                               ; preds = %53
  %61 = call i32 @integer_zerop(ptr noundef %44) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %101, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %65, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  %66 = call ptr @get_inner_reference(ptr noundef %65, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i8 noundef zeroext 0) #21
  %67 = load ptr, ptr %11, align 8, !tbaa !35
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i64, ptr %10, align 8, !tbaa !89
  %71 = and i64 %70, 7
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, ptr %66, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 32
  br i1 %76, label %85, label %77

77:                                               ; preds = %73, %69, %63
  store i8 0, ptr %3, align 1, !tbaa !46
  store i8 1, ptr %4, align 1, !tbaa !46
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !35
  %78 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @find_depends, ptr noundef %6, ptr noundef null, ptr noundef null) #21
  %79 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %80 = load i8, ptr %79, align 1, !tbaa !146
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = zext i32 %83 to i64
  br label %99

85:                                               ; preds = %73
  %86 = ashr exact i64 %70, 3
  %87 = load i64, ptr %5, align 8, !tbaa !89
  %88 = add i64 %87, %86
  store i64 %88, ptr %5, align 8, !tbaa !89
  %89 = load i64, ptr %66, align 8
  %90 = and i64 %89, 67108864
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 2
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 33554432
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %85
  store i8 1, ptr %3, align 1, !tbaa !46
  store i8 0, ptr %4, align 1, !tbaa !46
  br label %99

98:                                               ; preds = %92
  store i8 0, ptr %3, align 1, !tbaa !46
  store i8 1, ptr %4, align 1, !tbaa !46
  br label %99

99:                                               ; preds = %98, %97, %77
  %100 = phi i64 [ %84, %77 ], [ 0, %97 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %107

101:                                              ; preds = %60
  store i8 0, ptr %3, align 1, !tbaa !46
  store i8 1, ptr %4, align 1, !tbaa !46
  %102 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = call ptr @signed_type_for(ptr noundef %103) #21
  call void @tree_to_aff_combination(ptr noundef nonnull %43, ptr noundef %104, ptr noundef nonnull %16) #21
  call void @tree_to_aff_combination(ptr noundef %44, ptr noundef %104, ptr noundef nonnull %17) #21
  call void @aff_combination_scale(ptr noundef nonnull %17, i64 -1, i64 -1) #21
  call void @aff_combination_add(ptr noundef nonnull %16, ptr noundef nonnull %17) #21
  %105 = call ptr @aff_combination_to_tree(ptr noundef nonnull %16) #21
  %106 = call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %105, ptr noundef %6)
  br label %107

107:                                              ; preds = %56, %99, %101
  %108 = phi i64 [ 0, %56 ], [ %100, %99 ], [ %106, %101 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  %109 = trunc i64 %108 to i32
  %110 = and i64 %108, -4294967296
  br label %141

111:                                              ; preds = %34
  store i8 0, ptr %3, align 1, !tbaa !46
  %112 = tail call i32 @operand_equal_p(ptr noundef nonnull %43, ptr noundef %44, i32 noundef 0) #21
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  store i8 0, ptr %4, align 1, !tbaa !46
  br label %141

115:                                              ; preds = %111
  store i8 1, ptr %4, align 1, !tbaa !46
  %116 = tail call i32 @integer_zerop(ptr noundef %44) #21
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %6)
  %120 = trunc i64 %119 to i32
  %121 = and i64 %119, -4294967296
  br label %141

122:                                              ; preds = %115
  %123 = tail call i32 @integer_zerop(ptr noundef nonnull %43) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %122
  %126 = tail call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %44, ptr noundef %6)
  %127 = trunc i64 %126 to i32
  %128 = and i64 %126, -4294967296
  %129 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %130 = load i8, ptr %129, align 1, !tbaa !146
  %131 = tail call i32 @multiply_by_cost(i64 noundef -1, i32 noundef %35, i8 noundef zeroext %130)
  %132 = add i32 %131, %127
  br label %141

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = tail call ptr @signed_type_for(ptr noundef %135) #21
  call void @tree_to_aff_combination(ptr noundef nonnull %43, ptr noundef %136, ptr noundef nonnull %20) #21
  call void @tree_to_aff_combination(ptr noundef %44, ptr noundef %136, ptr noundef nonnull %21) #21
  call void @aff_combination_scale(ptr noundef nonnull %21, i64 -1, i64 -1) #21
  call void @aff_combination_add(ptr noundef nonnull %20, ptr noundef nonnull %21) #21
  %137 = call ptr @aff_combination_to_tree(ptr noundef nonnull %20) #21
  %138 = call fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %137, ptr noundef %6)
  %139 = trunc i64 %138 to i32
  %140 = and i64 %138, -4294967296
  br label %141

141:                                              ; preds = %133, %125, %118, %114, %107
  %142 = phi i32 [ %109, %107 ], [ 0, %114 ], [ %120, %118 ], [ %132, %125 ], [ %139, %133 ]
  %143 = phi i64 [ %110, %107 ], [ 0, %114 ], [ %121, %118 ], [ %128, %125 ], [ %140, %133 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  %144 = zext i32 %142 to i64
  %145 = or disjoint i64 %143, %144
  ret i64 %145
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @force_var_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !35
  %5 = icmp eq ptr %2, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !35
  %7 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_depends, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #21
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr %4, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !tbaa !146
  %12 = call fastcc i64 @force_expr_to_var_cost(ptr noundef %9, i8 noundef zeroext %11)
  ret i64 %12
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @add_cost(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !34 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i32], ptr @add_cost.costs, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  tail call void @start_sequence() #21
  %8 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 58) #21
  %9 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 59) #21
  %10 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %8, ptr noundef %9) #21
  %11 = tail call ptr @force_operand(ptr noundef %10, ptr noundef null) #21
  %12 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  %13 = tail call fastcc i32 @seq_cost(ptr noundef %12, i8 noundef zeroext %1)
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 1)
  store i32 %14, ptr %4, align 4, !tbaa !50
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %3
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.53, ptr noundef %23, i32 noundef %14)
  br label %25

25:                                               ; preds = %7, %17, %21, %2
  %26 = phi i32 [ %5, %2 ], [ %14, %21 ], [ %14, %17 ], [ %14, %7 ]
  ret i32 %26
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !79
  switch i32 %5, label %57 [
    i32 1, label %58
    i32 0, label %6
    i32 4, label %21
    i32 3, label %21
    i32 2, label %39
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @ip_normal_pos(ptr noundef %0) #21
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %7, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 567, ptr noundef nonnull @.str.13) #21
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !316
  %15 = icmp eq ptr %9, %14
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %9, %7
  br i1 %17, label %18, label %58

18:                                               ; preds = %16
  %19 = tail call ptr @last_stmt(ptr noundef %7) #21
  %20 = icmp eq ptr %19, %2
  br label %58

21:                                               ; preds = %3, %3
  %22 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !219
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %27, ptr noundef %25) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %21
  %31 = icmp eq ptr %27, %25
  br i1 %31, label %32, label %58

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = load ptr, ptr %22, align 8, !tbaa !219
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !46
  %38 = icmp ugt i32 %34, %37
  br label %58

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !219
  %42 = getelementptr inbounds %struct.gimple_statement_base, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %45, ptr noundef %43) #21
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %39
  %49 = icmp eq ptr %45, %43
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !46
  %53 = load ptr, ptr %40, align 8, !tbaa !219
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !46
  %56 = icmp uge i32 %52, %55
  br label %58

57:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 622, ptr noundef nonnull @.str.13) #21
  br label %58

58:                                               ; preds = %50, %21, %48, %39, %32, %30, %18, %16, %12, %3, %57
  %59 = phi i1 [ false, %57 ], [ false, %3 ], [ %20, %18 ], [ true, %12 ], [ false, %16 ], [ %38, %32 ], [ true, %30 ], [ false, %39 ], [ true, %48 ], [ false, %21 ], [ %56, %50 ]
  %60 = zext i1 %59 to i8
  ret i8 %60
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_computation_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = call fastcc zeroext i8 @get_computation_aff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !range !81
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  call void @unshare_aff_combination(ptr noundef nonnull %5) #21
  %14 = call ptr @aff_combination_to_tree(ptr noundef nonnull %5) #21
  %15 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %14) #21
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi ptr [ %15, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #21
  ret ptr %17
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @computation_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 58, ptr %4, align 4, !tbaa !50
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 196608
  %11 = and i32 %9, -196609
  %12 = or disjoint i32 %11, 65536
  store i32 %12, ptr %8, align 8
  store i8 %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !333
  %13 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @prepare_decl_rtl, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #21
  call void @start_sequence() #21
  %14 = load ptr, ptr %3, align 8, !tbaa !35
  %15 = load i64, ptr %6, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @vector_type_mode(ptr noundef nonnull %6) #21
  br label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = call ptr @expand_expr_real(ptr noundef %14, ptr noundef null, i32 noundef %26, i32 noundef 0, ptr noundef null) #21
  %28 = call ptr @get_insns() #21
  call void @end_sequence() #21
  call void @default_rtl_profile() #21
  %29 = load ptr, ptr @cfun, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 20
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -196609
  %33 = or disjoint i32 %32, %10
  store i32 %33, ptr %30, align 8
  %34 = call fastcc i32 @seq_cost(ptr noundef %28, i8 noundef zeroext %1)
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %58

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = load i64, ptr %6, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @vector_type_mode(ptr noundef nonnull %6) #21
  br label %51

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = load i64, ptr %6, align 8
  %54 = lshr i64 %53, 56
  %55 = trunc i64 %54 to i8
  %56 = call i32 @address_cost(ptr noundef %40, i32 noundef %52, i8 noundef zeroext %55, i8 noundef zeroext %1) #21
  %57 = add i32 %56, %34
  br label %58

58:                                               ; preds = %51, %25
  %59 = phi i32 [ %57, %51 ], [ %34, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret i32 %59
}

declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_sdivmod(i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

declare void @tree_to_aff_combination(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @aff_combination_scale(ptr noundef, i64, i64) local_unnamed_addr #3

declare void @aff_combination_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @aff_combination_to_tree(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ptr_difference_const(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @force_expr_to_var_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !34 {
  %3 = load i1, ptr @force_expr_to_var_cost.costs_initialized, align 1
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #21
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %8 = tail call ptr @create_tmp_var_raw(ptr noundef %7, ptr noundef nonnull @.str.45) #21
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %9, 67108864
  store i64 %10, ptr %8, align 8
  %11 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %8, ptr noundef null)
  tail call void @set_decl_rtl(ptr noundef nonnull %8, ptr noundef %11) #21
  %12 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %6, ptr noundef nonnull %8) #21
  br label %13

13:                                               ; preds = %4, %54
  %14 = phi i64 [ 0, %4 ], [ %55, %54 ]
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %16 = tail call ptr @build_int_cst(ptr noundef %15, i64 noundef 2000) #21
  %17 = trunc i64 %14 to i8
  %18 = tail call fastcc i32 @computation_cost(ptr noundef %16, i8 noundef zeroext %17)
  %19 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.integer_cost, i64 0, i64 %14
  store i32 %18, ptr %19, align 4, !tbaa !50
  %20 = tail call fastcc i32 @computation_cost(ptr noundef %12, i8 noundef zeroext %17)
  %21 = add i32 %20, 1
  %22 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.symbol_cost, i64 0, i64 %14
  store i32 %21, ptr %22, align 4, !tbaa !50
  %23 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %24 = tail call ptr @build_int_cst(ptr noundef %23, i64 noundef 2000) #21
  %25 = tail call ptr @build2_stat(i32 noundef 66, ptr noundef %6, ptr noundef %12, ptr noundef %24) #21
  %26 = tail call fastcc i32 @computation_cost(ptr noundef %25, i8 noundef zeroext %17)
  %27 = add i32 %26, 1
  %28 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.address_cost, i64 0, i64 %14
  store i32 %27, ptr %28, align 4, !tbaa !50
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %13
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = icmp eq i64 %14, 0
  %37 = select i1 %36, ptr @.str.48, ptr @.str.47
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.46, ptr noundef nonnull %37)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %40 = load i32, ptr %19, align 4, !tbaa !50
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.49, i32 noundef %40)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %43 = load i32, ptr %22, align 4, !tbaa !50
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.50, i32 noundef %43)
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %46 = load i32, ptr %28, align 4, !tbaa !50
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.51, i32 noundef %46)
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %49 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %14
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.52, i32 noundef %50)
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %13, %31, %35
  %55 = add nuw nsw i64 %14, 1
  %56 = icmp eq i64 %14, 0
  br i1 %56, label %13, label %57, !llvm.loop !342

57:                                               ; preds = %54
  store i1 true, ptr @force_expr_to_var_cost.costs_initialized, align 1
  br label %58

58:                                               ; preds = %57, %2
  %59 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i16
  switch i16 %61, label %67 [
    i16 32, label %176
    i16 34, label %176
    i16 36, label %176
    i16 141, label %62
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %67 [
    i16 32, label %176
    i16 34, label %176
    i16 36, label %176
  ]

67:                                               ; preds = %62, %58
  %68 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %59) #21
  %69 = icmp eq i8 %68, 0
  %70 = load i64, ptr %59, align 8
  %71 = trunc i64 %70 to i16
  br i1 %69, label %93, label %72

72:                                               ; preds = %67
  switch i16 %71, label %89 [
    i16 23, label %73
    i16 121, label %77
  ]

73:                                               ; preds = %72
  %74 = zext i8 %1 to i64
  %75 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.integer_cost, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !50
  br label %176

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = load i64, ptr %79, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %86 [
    i16 32, label %82
    i16 34, label %82
    i16 36, label %82
  ]

82:                                               ; preds = %77, %77, %77
  %83 = zext i8 %1 to i64
  %84 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.symbol_cost, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !50
  br label %86

86:                                               ; preds = %77, %82
  %87 = phi i1 [ false, %82 ], [ true, %77 ]
  %88 = phi i32 [ %85, %82 ], [ undef, %77 ]
  br i1 %87, label %89, label %176

89:                                               ; preds = %72, %86
  %90 = zext i8 %1 to i64
  %91 = getelementptr inbounds [2 x i32], ptr @force_expr_to_var_cost.address_cost, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !50
  br label %176

93:                                               ; preds = %67
  switch i16 %71, label %119 [
    i16 66, label %94
    i16 63, label %94
    i16 64, label %94
    i16 65, label %94
    i16 79, label %111
  ]

94:                                               ; preds = %93, %93, %93, %93
  %95 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = tail call ptr @tree_strip_nop_conversions(ptr noundef %96) #21
  %100 = tail call ptr @tree_strip_nop_conversions(ptr noundef %98) #21
  %101 = tail call zeroext i8 @is_gimple_val(ptr noundef %99) #21
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %99, i8 noundef zeroext %1)
  br label %105

105:                                              ; preds = %94, %103
  %106 = phi i64 [ %104, %103 ], [ 0, %94 ]
  %107 = tail call zeroext i8 @is_gimple_val(ptr noundef %100) #21
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %100, i8 noundef zeroext %1)
  br label %123

111:                                              ; preds = %93
  %112 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = tail call ptr @tree_strip_nop_conversions(ptr noundef %113) #21
  %115 = tail call zeroext i8 @is_gimple_val(ptr noundef %114) #21
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = tail call fastcc i64 @force_expr_to_var_cost(ptr noundef %114, i8 noundef zeroext %1)
  br label %123

119:                                              ; preds = %93
  %120 = zext i8 %1 to i64
  %121 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !50
  br label %176

123:                                              ; preds = %117, %111, %105, %109
  %124 = phi i64 [ %110, %109 ], [ 0, %105 ], [ 0, %111 ], [ 0, %117 ]
  %125 = phi i64 [ %106, %109 ], [ %106, %105 ], [ 0, %111 ], [ %118, %117 ]
  %126 = phi ptr [ %100, %109 ], [ %100, %105 ], [ null, %111 ], [ null, %117 ]
  %127 = phi ptr [ %99, %109 ], [ %99, %105 ], [ %114, %111 ], [ %114, %117 ]
  %128 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 14
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = tail call i32 @vector_type_mode(ptr noundef nonnull %129) #21
  br label %140

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %134, %133 ], [ %139, %135 ]
  %142 = load i64, ptr %59, align 8
  %143 = trunc i64 %142 to i16
  switch i16 %143, label %162 [
    i16 66, label %144
    i16 63, label %144
    i16 64, label %144
    i16 79, label %144
    i16 65, label %146
  ]

144:                                              ; preds = %140, %140, %140, %140
  %145 = tail call fastcc i32 @add_cost(i32 noundef %141, i8 noundef zeroext %1)
  br label %163

146:                                              ; preds = %140
  %147 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %127) #21
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = tail call i64 @int_cst_value(ptr noundef %127) #21
  %151 = tail call i32 @multiply_by_cost(i64 noundef %150, i32 noundef %141, i8 noundef zeroext %1)
  br label %163

152:                                              ; preds = %146
  %153 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %126) #21
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = tail call i64 @int_cst_value(ptr noundef %126) #21
  %157 = tail call i32 @multiply_by_cost(i64 noundef %156, i32 noundef %141, i8 noundef zeroext %1)
  br label %163

158:                                              ; preds = %152
  %159 = zext i8 %1 to i64
  %160 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !50
  br label %176

162:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3515, ptr noundef nonnull @.str.13) #21
  br label %163

163:                                              ; preds = %149, %155, %162, %144
  %164 = phi i32 [ 0, %162 ], [ %151, %149 ], [ %157, %155 ], [ %145, %144 ]
  %165 = and i64 %125, -4294967296
  %166 = trunc i64 %125 to i32
  %167 = add i64 %165, %124
  %168 = and i64 %167, -4294967296
  %169 = trunc i64 %124 to i32
  %170 = add i32 %166, %169
  %171 = add i32 %170, %164
  %172 = zext i8 %1 to i64
  %173 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !50
  %175 = tail call i32 @llvm.smin.i32(i32 %174, i32 %171)
  br label %176

176:                                              ; preds = %62, %62, %58, %58, %58, %62, %86, %163, %158, %119, %89, %73
  %177 = phi i32 [ %76, %73 ], [ %92, %89 ], [ %88, %86 ], [ %122, %119 ], [ %175, %163 ], [ %161, %158 ], [ 0, %62 ], [ 0, %58 ], [ 0, %58 ], [ 0, %58 ], [ 0, %62 ], [ 0, %62 ]
  %178 = phi i64 [ 0, %73 ], [ 0, %89 ], [ 0, %86 ], [ 0, %119 ], [ %168, %163 ], [ 0, %158 ], [ 0, %62 ], [ 0, %58 ], [ 0, %58 ], [ 0, %58 ], [ 0, %62 ], [ 0, %62 ]
  %179 = zext i32 %177 to i64
  %180 = or disjoint i64 %178, %179
  ret i64 %180
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @produce_memory_decl_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load i64, ptr %4, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !100
  %9 = tail call i32 %8(i8 noundef zeroext %7) #21
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2656, ptr noundef nonnull @.str.13) #21
  br label %12

12:                                               ; preds = %2, %11
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 67108864
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 33554432
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16, %12
  %22 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #21
  %23 = getelementptr inbounds %struct.tree_identifier, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %9, ptr noundef %24) #21
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 67108864
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2661, ptr noundef nonnull @.str.13) #21
  br label %30

30:                                               ; preds = %21, %29
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %31, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 255
  %36 = tail call ptr @gen_rtx_MEM(i32 noundef %35, ptr noundef nonnull %25) #21
  tail call void @set_mem_addr_space(ptr noundef %36, i8 noundef zeroext %7) #21
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !343
  tail call void %37(ptr noundef nonnull %0, ptr noundef %36, i32 noundef 1) #21
  br label %46

38:                                               ; preds = %16
  %39 = load i32, ptr %1, align 4, !tbaa !50
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4, !tbaa !50
  %41 = tail call ptr @gen_raw_REG(i32 noundef %9, i32 noundef %39) #21
  %42 = load i64, ptr %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 255
  %45 = tail call ptr @gen_rtx_MEM(i32 noundef %44, ptr noundef %41) #21
  tail call void @set_mem_addr_space(ptr noundef %45, i8 noundef zeroext %7) #21
  br label %46

46:                                               ; preds = %38, %30
  %47 = phi ptr [ %36, %30 ], [ %45, %38 ]
  ret ptr %47
}

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @get_computation_aff(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.affine_tree_combination, align 8
  %7 = alloca %struct.affine_tree_combination, align 8
  %8 = alloca %struct.double_int, align 8
  %9 = alloca %struct.affine_tree_combination, align 8
  %10 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.iv, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.iv, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #21
  %24 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1023
  %27 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %106, label %31

31:                                               ; preds = %5
  %32 = tail call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef %2, ptr noundef %3), !range !81
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 5
  %35 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %36 = select i1 %33, ptr %35, ptr %34
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = tail call ptr @unsigned_type_for(ptr noundef %21) #21
  %39 = load i32, ptr %24, align 4
  %40 = and i32 %39, 1023
  %41 = load i32, ptr %27, align 4
  %42 = and i32 %41, 1023
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef %19) #21
  %46 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef %17) #21
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef %37) #21
  br label %48

48:                                               ; preds = %44, %31
  %49 = phi ptr [ %46, %44 ], [ %17, %31 ]
  %50 = phi ptr [ %47, %44 ], [ %37, %31 ]
  %51 = phi ptr [ %45, %44 ], [ %19, %31 ]
  %52 = call fastcc zeroext i8 @constant_multiple_of(ptr noundef %14, ptr noundef %51, ptr noundef nonnull %8), !range !81
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %20, align 8, !tbaa !46
  %56 = load i64, ptr %12, align 8
  %57 = trunc i64 %56 to i16
  switch i16 %57, label %84 [
    i16 116, label %58
    i16 113, label %58
  ]

58:                                               ; preds = %54, %54
  %59 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1023
  %66 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1023
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %58
  %71 = load i64, ptr %49, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %84 [
    i16 116, label %73
    i16 113, label %73
  ]

73:                                               ; preds = %70, %70
  %74 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.tree_type, ptr %77, i64 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = xor i32 %79, %64
  %81 = and i32 %80, 1023
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %70, %58, %54, %73, %83
  %85 = phi ptr [ %12, %54 ], [ %60, %83 ], [ %12, %73 ], [ %12, %58 ], [ %12, %70 ]
  %86 = phi ptr [ %49, %54 ], [ %75, %83 ], [ %49, %73 ], [ %49, %58 ], [ %49, %70 ]
  %87 = phi ptr [ %55, %54 ], [ %62, %83 ], [ %55, %73 ], [ %55, %58 ], [ %55, %70 ]
  tail call void @tree_to_aff_combination(ptr noundef %85, ptr noundef %87, ptr noundef %4) #21
  call void @tree_to_aff_combination(ptr noundef %86, ptr noundef %87, ptr noundef nonnull %6) #21
  call void @tree_to_aff_combination(ptr noundef %50, ptr noundef %38, ptr noundef nonnull %7) #21
  %88 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef %2, ptr noundef %3), !range !81
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %9) #21
  %91 = icmp eq ptr %87, %38
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %87, ptr noundef %51) #21
  br label %94

94:                                               ; preds = %90, %92
  %95 = phi ptr [ %93, %92 ], [ %51, %90 ]
  call void @tree_to_aff_combination(ptr noundef %95, ptr noundef %87, ptr noundef nonnull %9) #21
  call void @aff_combination_add(ptr noundef nonnull %6, ptr noundef nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %9) #21
  br label %96

96:                                               ; preds = %94, %84
  %97 = load i64, ptr %8, align 8
  %98 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %99 = load i64, ptr %98, align 8
  %100 = call { i64, i64 } @double_int_neg(i64 %97, i64 %99) #21
  %101 = extractvalue { i64, i64 } %100, 0
  %102 = extractvalue { i64, i64 } %100, 1
  call void @aff_combination_scale(ptr noundef nonnull %6, i64 %101, i64 %102) #21
  call void @aff_combination_add(ptr noundef %4, ptr noundef nonnull %6) #21
  %103 = icmp eq ptr %87, %38
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  call void @aff_combination_convert(ptr noundef %4, ptr noundef %38) #21
  br label %105

105:                                              ; preds = %104, %96
  call void @aff_combination_scale(ptr noundef nonnull %7, i64 %97, i64 %99) #21
  call void @aff_combination_add(ptr noundef %4, ptr noundef nonnull %7) #21
  br label %106

106:                                              ; preds = %48, %5, %105
  %107 = phi i8 [ 1, %105 ], [ 0, %5 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #21
  ret i8 %107
}

declare void @unshare_aff_combination(ptr noundef) local_unnamed_addr #3

declare void @aff_combination_convert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @prepare_decl_rtl(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %71 [
    i16 121, label %7
    i16 141, label %29
    i16 32, label %49
    i16 34, label %49
    i16 36, label %49
  ]

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %10, %13 ], [ %4, %3 ]
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %14 [
    i16 42, label %13
    i16 41, label %13
    i16 45, label %13
    i16 46, label %13
    i16 118, label %13
    i16 43, label %13
    i16 44, label %13
  ]

13:                                               ; preds = %7, %7, %7, %7, %7, %7, %7
  br label %7, !llvm.loop !344

14:                                               ; preds = %7
  %15 = and i64 %11, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %71

19:                                               ; preds = %14
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !46
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %23, %19
  %28 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %10, ptr noundef %2)
  br label %71

29:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %33, i64 11
  %35 = load i8, ptr %34, align 1, !tbaa !46
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %31, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 255
  %46 = load i32, ptr %2, align 4, !tbaa !50
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %2, align 4, !tbaa !50
  %48 = tail call ptr @gen_raw_REG(i32 noundef %45, i32 noundef %46) #21
  br label %71

49:                                               ; preds = %3, %3, %3
  store i32 0, ptr %1, align 4, !tbaa !50
  %50 = load i64, ptr %4, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %51, i64 11
  %53 = load i8, ptr %52, align 1, !tbaa !46
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %55, %49
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = tail call fastcc ptr @produce_memory_decl_rtl(ptr noundef nonnull %4, ptr noundef %2)
  br label %71

67:                                               ; preds = %59
  %68 = load i32, ptr %2, align 4, !tbaa !50
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %2, align 4, !tbaa !50
  %70 = tail call ptr @gen_raw_REG(i32 noundef %63, i32 noundef %68) #21
  br label %71

71:                                               ; preds = %3, %65, %67, %55, %37, %41, %14, %23, %27
  %72 = phi ptr [ null, %3 ], [ %4, %55 ], [ %4, %65 ], [ %4, %67 ], [ %31, %37 ], [ %31, %41 ], [ %10, %23 ], [ %10, %27 ], [ %10, %14 ]
  %73 = phi ptr [ null, %3 ], [ null, %55 ], [ %66, %65 ], [ %70, %67 ], [ null, %37 ], [ %48, %41 ], [ null, %23 ], [ %28, %27 ], [ null, %14 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.VEC_tree_base, ptr %76, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !345
  %81 = load i32, ptr %76, align 8, !tbaa !122
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75, %78
  %84 = tail call ptr @vec_heap_p_reserve(ptr noundef %76, i32 noundef 1) #21
  store ptr %84, ptr @decl_rtl_to_reset, align 8, !tbaa !35
  br label %85

85:                                               ; preds = %78, %83
  %86 = load ptr, ptr @decl_rtl_to_reset, align 8, !tbaa !35
  %87 = load i32, ptr %86, align 8, !tbaa !122
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !122
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.VEC_tree_base, ptr %86, i64 0, i32 2, i64 %89
  store ptr %72, ptr %90, align 8, !tbaa !35
  tail call void @set_decl_rtl(ptr noundef %72, ptr noundef nonnull %73) #21
  br label %91

91:                                               ; preds = %85, %71
  ret ptr null
}

declare void @default_rtl_profile() local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @determine_use_iv_cost(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca ptr, align 8
  %15 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !64
  switch i32 %16, label %228 [
    i32 0, label %17
    i32 1, label %36
    i32 2, label %66
  ]

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  %18 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !79
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !219
  %24 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 0, ptr noundef null, ptr noundef null)
  br label %34

28:                                               ; preds = %21, %17
  %29 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %14, ptr noundef null)
  %30 = load ptr, ptr %14, align 8, !tbaa !35
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %29, ptr noundef %30, ptr noundef null)
  %31 = and i64 %29, 4294967295
  %32 = icmp ne i64 %31, 10000000
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %27, %28
  %35 = phi i8 [ 1, %27 ], [ %33, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  br label %229

36:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #21
  %37 = call fastcc i64 @get_computation_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %38 = trunc i64 %37 to i32
  %39 = lshr i64 %37, 32
  %40 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i8, ptr %13, align 1, !tbaa !46
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 8
  %48 = load i32, ptr %47, align 4, !tbaa !227
  %49 = sub i32 %38, %48
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !79
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  %55 = select i1 %54, i64 10000000, i64 %39
  %56 = select i1 %54, i32 10000000, i32 %38
  br label %57

57:                                               ; preds = %36, %46, %50
  %58 = phi i64 [ %39, %46 ], [ %39, %36 ], [ %55, %50 ]
  %59 = phi i32 [ %49, %46 ], [ %38, %36 ], [ %56, %50 ]
  %60 = load ptr, ptr %12, align 8, !tbaa !35
  %61 = shl nuw i64 %58, 32
  %62 = zext i32 %59 to i64
  %63 = or disjoint i64 %61, %62
  call fastcc void @set_use_iv_cost(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %63, ptr noundef %60, ptr noundef null)
  %64 = icmp ne i32 %59, 10000000
  %65 = zext i1 %64 to i8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %229

66:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store ptr null, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  %67 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !74
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  tail call void @bitmap_obstack_free(ptr noundef null) #21
  br label %226

71:                                               ; preds = %66
  %72 = load ptr, ptr %0, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #21
  %73 = getelementptr inbounds %struct.iv, ptr %68, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !59
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 23
  br i1 %77, label %78, label %147

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.gimple_statement_base, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = tail call ptr @last_stmt(ptr noundef %82) #21
  %84 = icmp eq ptr %80, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %78
  %86 = load ptr, ptr %79, align 8, !tbaa !65
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %147

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.loop, ptr %72, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !316
  %93 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %92, ptr noundef %82) #21
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %147, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !291
  %98 = getelementptr inbounds %struct.VEC_edge_base, ptr %97, i64 0, i32 2, i64 0
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !149
  %102 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %72, ptr noundef %101) #21
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = load ptr, ptr %96, align 8, !tbaa !291
  %106 = getelementptr inbounds %struct.VEC_edge_base, ptr %105, i64 0, i32 2, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !35
  br label %108

108:                                              ; preds = %104, %95
  %109 = phi ptr [ %107, %104 ], [ %99, %95 ]
  %110 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !149
  %112 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %72, ptr noundef %111) #21
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %108
  %115 = tail call fastcc ptr @niter_for_exit(ptr noundef nonnull %0, ptr noundef %109)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %147, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %67, align 8, !tbaa !74
  %119 = tail call fastcc ptr @iv_period(ptr noundef %118)
  %120 = load i64, ptr %115, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 23
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %115, ptr noundef %119) #21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %147, label %141

126:                                              ; preds = %117
  %127 = tail call zeroext i8 @loop_only_exit_p(ptr noundef %72, ptr noundef %109) #21
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %130 = call zeroext i8 @estimated_loop_iterations(ptr noundef %72, i8 noundef zeroext 1, ptr noundef nonnull %6) #21
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %129
  %133 = call { i64, i64 } @tree_to_double_int(ptr noundef %119) #21
  %134 = extractvalue { i64, i64 } %133, 0
  %135 = extractvalue { i64, i64 } %133, 1
  %136 = load i64, ptr %6, align 8
  %137 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %138 = load i64, ptr %137, align 8
  %139 = call i32 @double_int_ucmp(i64 %136, i64 %138, i64 %134, i64 %135) #21
  %140 = icmp slt i32 %139, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br i1 %140, label %141, label %147

141:                                              ; preds = %132, %123
  %142 = load ptr, ptr %79, align 8, !tbaa !65
  call fastcc void @cand_value_at(ptr noundef %72, ptr noundef %2, ptr noundef %142, ptr noundef nonnull %115, ptr noundef nonnull %5)
  %143 = call ptr @aff_combination_to_tree(ptr noundef nonnull %5) #21
  %144 = call zeroext i8 @expression_expensive_p(ptr noundef %143) #21
  %145 = icmp ne i8 %144, 0
  br label %147

146:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %147

147:                                              ; preds = %146, %141, %132, %126, %123, %114, %108, %90, %85, %78, %71
  %148 = phi ptr [ null, %90 ], [ null, %114 ], [ null, %123 ], [ %143, %141 ], [ null, %126 ], [ null, %146 ], [ null, %132 ], [ null, %108 ], [ null, %85 ], [ null, %78 ], [ null, %71 ]
  %149 = phi i1 [ true, %90 ], [ true, %114 ], [ true, %123 ], [ %145, %141 ], [ true, %126 ], [ true, %146 ], [ true, %132 ], [ true, %108 ], [ true, %85 ], [ true, %78 ], [ true, %71 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #21
  br i1 %149, label %159, label %150

150:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %148, ptr %4, align 8, !tbaa !35
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !35
  %151 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_depends, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #21
  %152 = load ptr, ptr %4, align 8, !tbaa !35
  %153 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %154 = load i8, ptr %153, align 1, !tbaa !146
  %155 = call fastcc i64 @force_expr_to_var_cost(ptr noundef %152, i8 noundef zeroext %154)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %156 = trunc i64 %155 to i32
  %157 = and i64 %155, -4294967296
  %158 = sdiv i32 %156, 5
  br label %159

159:                                              ; preds = %150, %147
  %160 = phi i32 [ %158, %150 ], [ 10000000, %147 ]
  %161 = phi i64 [ %157, %150 ], [ 42949672960000000, %147 ]
  %162 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !65
  %164 = call fastcc zeroext i8 @extract_cond_operands(ptr noundef nonnull %0, ptr noundef %163, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %7), !range !81
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4119, ptr noundef nonnull @.str.13) #21
  br label %167

167:                                              ; preds = %166, %159
  %168 = icmp eq i32 %160, 10000000
  br i1 %168, label %190, label %169

169:                                              ; preds = %167
  %170 = load ptr, ptr %11, align 8, !tbaa !35
  %171 = load ptr, ptr %170, align 8, !tbaa !35
  %172 = call i32 @integer_zerop(ptr noundef %171) #21
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %10, align 8, !tbaa !35
  %176 = load ptr, ptr %175, align 8, !tbaa !35
  %177 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !214
  %179 = call i32 @operand_equal_p(ptr noundef %176, ptr noundef %178, i32 noundef 0) #21
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load ptr, ptr %10, align 8, !tbaa !35
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  %184 = getelementptr inbounds %struct.iv_cand, ptr %2, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !213
  %186 = call i32 @operand_equal_p(ptr noundef %183, ptr noundef %185, i32 noundef 0) #21
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %181, %174
  %189 = add nsw i32 %160, -1
  br label %190

190:                                              ; preds = %188, %181, %169, %167
  %191 = phi i32 [ %160, %167 ], [ %189, %188 ], [ %160, %181 ], [ %160, %169 ]
  %192 = call fastcc i64 @get_computation_cost(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %9, ptr noundef null)
  store ptr %0, ptr @fd_ivopts_data, align 8, !tbaa !35
  %193 = load ptr, ptr %7, align 8, !tbaa !35
  %194 = call ptr @walk_tree_1(ptr noundef %193, ptr noundef nonnull @find_depends, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #21
  %195 = trunc i64 %192 to i32
  %196 = icmp eq i32 %191, %195
  %197 = lshr i64 %192, 32
  %198 = trunc i64 %197 to i32
  %199 = lshr exact i64 %161, 32
  %200 = trunc i64 %199 to i32
  %201 = sub i32 %200, %198
  %202 = sub nsw i32 %191, %195
  %203 = select i1 %196, i32 %201, i32 %202
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %209

205:                                              ; preds = %190
  %206 = zext i32 %191 to i64
  %207 = or disjoint i64 %161, %206
  %208 = load ptr, ptr %8, align 8, !tbaa !35
  store ptr null, ptr %8, align 8, !tbaa !35
  br label %211

209:                                              ; preds = %190
  %210 = load ptr, ptr %9, align 8, !tbaa !35
  store ptr null, ptr %9, align 8, !tbaa !35
  br label %211

211:                                              ; preds = %209, %205
  %212 = phi ptr [ %148, %205 ], [ null, %209 ]
  %213 = phi i64 [ %207, %205 ], [ %192, %209 ]
  %214 = phi ptr [ %208, %205 ], [ %210, %209 ]
  call fastcc void @set_use_iv_cost(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 %213, ptr noundef %214, ptr noundef %212)
  %215 = load ptr, ptr %8, align 8, !tbaa !35
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %211
  call void @bitmap_obstack_free(ptr noundef nonnull %215) #21
  store ptr null, ptr %8, align 8, !tbaa !35
  br label %218

218:                                              ; preds = %217, %211
  %219 = load ptr, ptr %9, align 8, !tbaa !35
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  call void @bitmap_obstack_free(ptr noundef nonnull %219) #21
  store ptr null, ptr %9, align 8, !tbaa !35
  br label %222

222:                                              ; preds = %221, %218
  %223 = and i64 %213, 4294967295
  %224 = icmp ne i64 %223, 10000000
  %225 = zext i1 %224 to i8
  br label %226

226:                                              ; preds = %70, %222
  %227 = phi i8 [ %225, %222 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %229

228:                                              ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4182, ptr noundef nonnull @.str.13) #21
  br label %229

229:                                              ; preds = %228, %226, %57, %34
  %230 = phi i8 [ 0, %228 ], [ %227, %226 ], [ %65, %57 ], [ %35, %34 ]
  ret i8 %230
}

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_use_iv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !34 {
  %7 = and i64 %3, 4294967295
  %8 = icmp eq i64 %7, 10000000
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef %4) #21
  br label %71

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %12 = load i8, ptr %11, align 4, !tbaa !223
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  %17 = load i32, ptr %2, align 8, !tbaa !76
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cost_pair, ptr %16, i64 %18
  store ptr %2, ptr %19, align 8, !tbaa !237
  %20 = getelementptr inbounds %struct.cost_pair, ptr %16, i64 %18, i32 1
  store i64 %3, ptr %20, align 8, !tbaa.struct !257
  %21 = load ptr, ptr %15, align 8, !tbaa !232
  %22 = load i32, ptr %2, align 8, !tbaa !76
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cost_pair, ptr %21, i64 %23, i32 2
  store ptr %4, ptr %24, align 8, !tbaa !242
  %25 = getelementptr inbounds %struct.cost_pair, ptr %21, i64 %23, i32 3
  store ptr %5, ptr %25, align 8, !tbaa !290
  br label %71

26:                                               ; preds = %10
  %27 = load i32, ptr %2, align 8, !tbaa !76
  %28 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !231
  %30 = add i32 %29, -1
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !232
  br label %41

36:                                               ; preds = %47, %26
  %37 = icmp eq i32 %31, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !232
  br label %50

41:                                               ; preds = %33, %47
  %42 = phi i32 [ %31, %33 ], [ %48, %47 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cost_pair, ptr %35, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !237
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = add i32 %42, 1
  %49 = icmp ult i32 %48, %29
  br i1 %49, label %41, label %36, !llvm.loop !346

50:                                               ; preds = %38, %56
  %51 = phi i32 [ 0, %38 ], [ %57, %56 ]
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cost_pair, ptr %40, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !237
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = add nuw i32 %51, 1
  %58 = icmp eq i32 %57, %31
  br i1 %58, label %59, label %50, !llvm.loop !347

59:                                               ; preds = %56, %36
  %60 = phi i32 [ 0, %36 ], [ %31, %56 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2585, ptr noundef nonnull @.str.13) #21
  br label %61

61:                                               ; preds = %41, %50, %59
  %62 = phi i32 [ %60, %59 ], [ %51, %50 ], [ %42, %41 ]
  %63 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !232
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds %struct.cost_pair, ptr %64, i64 %65
  store ptr %2, ptr %66, align 8, !tbaa !237
  %67 = getelementptr inbounds %struct.cost_pair, ptr %64, i64 %65, i32 1
  store i64 %3, ptr %67, align 8, !tbaa.struct !257
  %68 = load ptr, ptr %63, align 8, !tbaa !232
  %69 = getelementptr inbounds %struct.cost_pair, ptr %68, i64 %65, i32 2
  store ptr %4, ptr %69, align 8, !tbaa !242
  %70 = getelementptr inbounds %struct.cost_pair, ptr %68, i64 %65, i32 3
  store ptr %5, ptr %70, align 8, !tbaa !290
  br label %71

71:                                               ; preds = %61, %14, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @iv_period(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.iv, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3979, ptr noundef nonnull @.str.13) #21
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call ptr @num_ending_zeros(ptr noundef %3) #21
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = tail call ptr @unsigned_type_for(ptr noundef %13) #21
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #21
  %19 = trunc i64 %18 to i32
  %20 = sub i32 %17, %19
  %21 = tail call ptr @build_low_bits_mask(ptr noundef %14, i32 noundef %20) #21
  ret ptr %21
}

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @loop_only_exit_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @estimated_loop_iterations(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @cand_value_at(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.affine_tree_combination, align 8
  %7 = alloca %struct.affine_tree_combination, align 8
  %8 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %8) #21
  %9 = getelementptr inbounds %struct.iv_cand, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %18 [
    i16 10, label %16
    i16 12, label %16
  ]

16:                                               ; preds = %5, %5
  %17 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %18

18:                                               ; preds = %5, %16
  %19 = phi ptr [ %17, %16 ], [ %13, %5 ]
  %20 = getelementptr inbounds %struct.iv, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  call void @tree_to_aff_combination(ptr noundef %21, ptr noundef %19, ptr noundef nonnull %6) #21
  %22 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  call void @tree_to_aff_combination(ptr noundef %3, ptr noundef %23, ptr noundef nonnull %8) #21
  call void @aff_combination_convert(ptr noundef nonnull %8, ptr noundef %19) #21
  call void @aff_combination_mult(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %24 = call fastcc zeroext i8 @stmt_after_increment(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !81
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  call void @aff_combination_add(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  br label %27

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %10, align 8, !tbaa !58
  call void @tree_to_aff_combination(ptr noundef %28, ptr noundef nonnull %13, ptr noundef %4) #21
  call void @aff_combination_add(ptr noundef %4, ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #21
  ret void
}

declare zeroext i8 @expression_expensive_p(ptr noundef) local_unnamed_addr #3

declare ptr @num_ending_zeros(ptr noundef) local_unnamed_addr #3

declare ptr @build_low_bits_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @aff_combination_mult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @estimate_reg_pressure_cost(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iv_ca_dump(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !251
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 10
  %9 = load i64, ptr %8, align 8, !tbaa.struct !257
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i64 [ %9, %7 ], [ 42949672970000000, %3 ]
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %12, i32 noundef %14)
  %16 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !254
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %17, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1) #21
  %18 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.iv_ca, ptr %2, i64 0, i32 9
  br label %23

23:                                               ; preds = %21, %33
  %24 = phi ptr [ @.str.82, %21 ], [ %34, %33 ]
  %25 = phi i32 [ 1, %21 ], [ %35, %33 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !255
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef %24, i32 noundef %25)
  br label %33

33:                                               ; preds = %23, %31
  %34 = phi ptr [ @.str.86, %31 ], [ %24, %23 ]
  %35 = add i32 %25, 1
  %36 = load i32, ptr %18, align 8, !tbaa !128
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %23, !llvm.loop !348

38:                                               ; preds = %33, %10
  %39 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iv_ca_set_no_cp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !34 {
  %4 = load i32, ptr %2, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %77, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 8, !tbaa !237
  %13 = load i32, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !251
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !251
  store ptr null, ptr %8, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !253
  %19 = zext i32 %13 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !254
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %26, i32 noundef %13) #21
  %28 = load ptr, ptr %9, align 8, !tbaa !237
  %29 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !349
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4, !tbaa !349
  br label %36

36:                                               ; preds = %32, %24
  %37 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !350
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 8, !tbaa !350
  %40 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !226
  %42 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !351
  %44 = sub i32 %43, %41
  store i32 %44, ptr %42, align 8, !tbaa !351
  %45 = getelementptr inbounds %struct.iv_cand, ptr %28, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !78
  tail call fastcc void @iv_ca_set_remove_invariants(ptr noundef %1, ptr noundef %46)
  br label %47

47:                                               ; preds = %36, %11
  %48 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %49 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 1
  %50 = load i64, ptr %48, align 8
  %51 = load i64, ptr %49, align 8
  %52 = and i64 %51, -4294967296
  %53 = sub i64 %50, %51
  %54 = sub i64 %50, %52
  %55 = and i64 %54, -4294967296
  %56 = and i64 %53, 4294967295
  %57 = or disjoint i64 %55, %56
  store i64 %57, ptr %48, align 8, !tbaa.struct !257
  %58 = getelementptr inbounds %struct.cost_pair, ptr %9, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !242
  tail call fastcc void @iv_ca_set_remove_invariants(ptr noundef %1, ptr noundef %59)
  %60 = load i32, ptr %48, align 8, !tbaa.struct !257
  %61 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa.struct !352
  %63 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %64 = load i32, ptr %63, align 8, !tbaa !351
  %65 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !349
  %67 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !247
  %69 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %70 = load i8, ptr %69, align 1, !tbaa !146
  %71 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %66, i32 noundef %68, i8 noundef zeroext %70) #21
  %72 = add i32 %64, %60
  %73 = add i32 %72, %66
  %74 = add i32 %73, %71
  %75 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  store i32 %74, ptr %75, align 8, !tbaa.struct !257
  %76 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10, i32 1
  store i32 %62, ptr %76, align 4, !tbaa.struct !352
  br label %77

77:                                               ; preds = %3, %47
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_iv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #15 !prof !34 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !223
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !232
  %12 = load i32, ptr %2, align 8, !tbaa !76
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cost_pair, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !237
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr null, ptr %14
  br label %51

18:                                               ; preds = %5
  %19 = load i32, ptr %2, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !231
  %22 = add i32 %21, -1
  %23 = and i32 %22, %19
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !232
  br label %36

28:                                               ; preds = %36
  %29 = add i32 %37, 1
  %30 = icmp ult i32 %29, %21
  br i1 %30, label %36, label %31, !llvm.loop !353

31:                                               ; preds = %28, %18
  %32 = icmp eq i32 %23, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.iv_use, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !232
  br label %45

36:                                               ; preds = %25, %28
  %37 = phi i32 [ %23, %25 ], [ %29, %28 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cost_pair, ptr %27, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !237
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %51, label %28

42:                                               ; preds = %45
  %43 = add nuw i32 %46, 1
  %44 = icmp eq i32 %43, %23
  br i1 %44, label %51, label %45, !llvm.loop !354

45:                                               ; preds = %33, %42
  %46 = phi i32 [ 0, %33 ], [ %43, %42 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cost_pair, ptr %35, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !237
  %50 = icmp eq ptr %49, %2
  br i1 %50, label %51, label %42

51:                                               ; preds = %36, %45, %42, %31, %9, %3
  %52 = phi ptr [ null, %3 ], [ %17, %9 ], [ null, %31 ], [ null, %42 ], [ %48, %45 ], [ %39, %36 ]
  ret ptr %52
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iv_ca_set_cp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %2, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !252
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %85, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call fastcc void @iv_ca_set_no_cp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  br i1 %16, label %85, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8, !tbaa !237
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !251
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !251
  %23 = load ptr, ptr %6, align 8, !tbaa !252
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr %3, ptr %24, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !253
  %27 = zext i32 %19 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !50
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !254
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %19) #21
  %36 = load ptr, ptr %3, align 8, !tbaa !237
  %37 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !349
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !349
  br label %44

44:                                               ; preds = %40, %32
  %45 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !350
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !350
  %48 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !226
  %50 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !351
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 8, !tbaa !351
  %53 = getelementptr inbounds %struct.iv_cand, ptr %36, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  tail call fastcc void @iv_ca_set_add_invariants(ptr noundef %1, ptr noundef %54)
  br label %55

55:                                               ; preds = %44, %17
  %56 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7
  %57 = getelementptr inbounds %struct.cost_pair, ptr %3, i64 0, i32 1
  %58 = load i64, ptr %56, align 8
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %58, -4294967296
  %61 = add i64 %59, %58
  %62 = add i64 %60, %59
  %63 = and i64 %62, -4294967296
  %64 = and i64 %61, 4294967295
  %65 = or disjoint i64 %63, %64
  store i64 %65, ptr %56, align 8, !tbaa.struct !257
  %66 = getelementptr inbounds %struct.cost_pair, ptr %3, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !242
  tail call fastcc void @iv_ca_set_add_invariants(ptr noundef %1, ptr noundef %67)
  %68 = load i32, ptr %56, align 8, !tbaa.struct !257
  %69 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 7, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa.struct !352
  %71 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 8
  %72 = load i32, ptr %71, align 8, !tbaa !351
  %73 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !349
  %75 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !247
  %77 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 11
  %78 = load i8, ptr %77, align 1, !tbaa !146
  %79 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %74, i32 noundef %76, i8 noundef zeroext %78) #21
  %80 = add i32 %72, %68
  %81 = add i32 %80, %74
  %82 = add i32 %81, %79
  %83 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  store i32 %82, ptr %83, align 8, !tbaa.struct !257
  %84 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10, i32 1
  store i32 %70, ptr %84, align 4, !tbaa.struct !352
  br label %85

85:                                               ; preds = %15, %55, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @iv_ca_extend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) unnamed_addr #9 !prof !34 {
  store ptr null, ptr %3, align 8, !tbaa !35
  %6 = load i32, ptr %1, align 8, !tbaa !249
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %73, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %68
  %12 = phi i64 [ 0, %8 ], [ %69, %68 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %13, i64 0, i32 2, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load ptr, ptr %10, align 8, !tbaa !252
  %17 = load i32, ptr %15, align 8, !tbaa !62
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr %20, align 8, !tbaa !237
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %68, label %25

25:                                               ; preds = %22, %11
  %26 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %2)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %68, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef nonnull %1, ptr noundef nonnull %26), !range !81
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %28
  br i1 %21, label %59, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.cost_pair, ptr %26, i64 0, i32 1
  %34 = getelementptr inbounds %struct.cost_pair, ptr %20, i64 0, i32 1
  %35 = load i64, ptr %33, align 8
  %36 = load i64, ptr %34, align 8
  %37 = trunc i64 %35 to i32
  %38 = trunc i64 %36 to i32
  %39 = icmp eq i32 %37, %38
  %40 = lshr i64 %36, 32
  %41 = trunc i64 %40 to i32
  %42 = lshr i64 %35, 32
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %43, %41
  %45 = sub nsw i32 %37, %38
  %46 = select i1 %39, i32 %44, i32 %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %32
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load ptr, ptr %26, align 8, !tbaa !237
  %52 = getelementptr inbounds %struct.iv_cand, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !226
  %54 = load ptr, ptr %20, align 8, !tbaa !237
  %55 = getelementptr inbounds %struct.iv_cand, ptr %54, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !226
  %57 = icmp ult i32 %53, %56
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %31, %32, %48, %50
  %60 = phi i8 [ 1, %31 ], [ 1, %32 ], [ 0, %48 ], [ %58, %50 ]
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %3, align 8, !tbaa !35
  %64 = tail call ptr @xmalloc(i64 noundef 32) #21
  store ptr %15, ptr %64, align 8, !tbaa !258
  %65 = getelementptr inbounds %struct.iv_ca_delta, ptr %64, i64 0, i32 1
  store ptr %20, ptr %65, align 8, !tbaa !260
  %66 = getelementptr inbounds %struct.iv_ca_delta, ptr %64, i64 0, i32 2
  store ptr %26, ptr %66, align 8, !tbaa !261
  %67 = getelementptr inbounds %struct.iv_ca_delta, ptr %64, i64 0, i32 3
  store ptr %63, ptr %67, align 8, !tbaa !262
  store ptr %64, ptr %3, align 8, !tbaa !35
  br label %68

68:                                               ; preds = %22, %59, %28, %25, %62
  %69 = add nuw nsw i64 %12, 1
  %70 = load i32, ptr %1, align 8, !tbaa !249
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %11, label %73, !llvm.loop !355

73:                                               ; preds = %68, %5
  %74 = load ptr, ptr %3, align 8, !tbaa !35
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %74, i8 noundef zeroext 1)
  %75 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !251
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  %80 = load i64, ptr %79, align 8, !tbaa.struct !257
  br label %81

81:                                               ; preds = %73, %78
  %82 = phi i64 [ %80, %78 ], [ 42949672970000000, %73 ]
  %83 = icmp eq ptr %4, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !350
  store i32 %86, ptr %4, align 4, !tbaa !50
  br label %87

87:                                               ; preds = %84, %81
  %88 = load ptr, ptr %3, align 8, !tbaa !35
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %88, i8 noundef zeroext 0)
  ret i64 %82
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iv_ca_delta_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !34 {
  %5 = icmp ne i8 %3, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %12, %8 ], [ %2, %6 ]
  %10 = phi ptr [ %9, %8 ], [ null, %6 ]
  %11 = getelementptr inbounds %struct.iv_ca_delta, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !262
  store ptr %10, ptr %11, align 8, !tbaa !262
  %13 = getelementptr inbounds %struct.iv_ca_delta, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  %15 = getelementptr inbounds %struct.iv_ca_delta, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !261
  store ptr %16, ptr %13, align 8, !tbaa !260
  store ptr %14, ptr %15, align 8, !tbaa !261
  %17 = icmp eq ptr %12, null
  br i1 %17, label %18, label %8, !llvm.loop !356

18:                                               ; preds = %8, %6, %4
  %19 = phi ptr [ %2, %4 ], [ null, %6 ], [ %9, %8 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  br label %23

23:                                               ; preds = %21, %37
  %24 = phi ptr [ %19, %21 ], [ %40, %37 ]
  %25 = getelementptr inbounds %struct.iv_ca_delta, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !260
  %27 = getelementptr inbounds %struct.iv_ca_delta, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !261
  %29 = load ptr, ptr %24, align 8, !tbaa !258
  %30 = load ptr, ptr %22, align 8, !tbaa !252
  %31 = load i32, ptr %29, align 8, !tbaa !62
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, %26
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4794, ptr noundef nonnull @.str.13) #21
  br label %37

37:                                               ; preds = %23, %36
  %38 = load ptr, ptr %24, align 8, !tbaa !258
  tail call fastcc void @iv_ca_set_cp(ptr noundef %0, ptr noundef %1, ptr noundef %38, ptr noundef %28)
  %39 = getelementptr inbounds %struct.iv_ca_delta, ptr %24, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !262
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %23, !llvm.loop !357

42:                                               ; preds = %37, %18
  %43 = icmp eq ptr %19, null
  %44 = or i1 %5, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %49, %45 ], [ %19, %42 ]
  %47 = phi ptr [ %46, %45 ], [ null, %42 ]
  %48 = getelementptr inbounds %struct.iv_ca_delta, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !262
  store ptr %47, ptr %48, align 8, !tbaa !262
  %50 = getelementptr inbounds %struct.iv_ca_delta, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !260
  %52 = getelementptr inbounds %struct.iv_ca_delta, ptr %46, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !261
  store ptr %53, ptr %50, align 8, !tbaa !260
  store ptr %51, ptr %52, align 8, !tbaa !261
  %54 = icmp eq ptr %49, null
  br i1 %54, label %55, label %45, !llvm.loop !356

55:                                               ; preds = %45, %42
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @iv_ca_set_remove_invariants(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #16 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %92, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @bitmap_zero_bits, ptr %5
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !177
  %10 = shl i32 %9, 7
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %7, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !89
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 6
  br label %18

18:                                               ; preds = %89, %4
  %19 = phi i32 [ 0, %4 ], [ %74, %89 ]
  %20 = phi i64 [ %12, %4 ], [ %90, %89 ]
  %21 = phi ptr [ %7, %4 ], [ %76, %89 ]
  %22 = phi i32 [ %15, %4 ], [ %91, %89 ]
  %23 = icmp eq i64 %20, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %52, %18
  %25 = phi i32 [ %19, %18 ], [ %53, %52 ]
  %26 = phi i64 [ %20, %18 ], [ %57, %52 ]
  %27 = phi ptr [ %21, %18 ], [ %44, %52 ]
  %28 = phi i32 [ %22, %18 ], [ %54, %52 ]
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %28, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %26, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !llvm.loop !179

38:                                               ; preds = %18
  %39 = add i32 %22, 63
  %40 = and i32 %39, -64
  %41 = add i32 %19, 1
  br label %42

42:                                               ; preds = %69, %38
  %43 = phi i64 [ %20, %38 ], [ %64, %69 ]
  %44 = phi ptr [ %21, %38 ], [ %67, %69 ]
  %45 = phi i32 [ %40, %38 ], [ %72, %69 ]
  %46 = phi i32 [ %41, %38 ], [ 0, %69 ]
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = add i32 %45, 128
  %50 = shl i32 %46, 6
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %61, %59 ], [ %46, %48 ]
  %54 = phi i32 [ %60, %59 ], [ %45, %48 ]
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !89
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !llvm.loop !180

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %43, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %45, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %44, align 8, !tbaa !181
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !177
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !182

73:                                               ; preds = %63, %31, %24
  %74 = phi i32 [ %25, %24 ], [ %25, %31 ], [ %66, %63 ]
  %75 = phi i64 [ %26, %24 ], [ %34, %31 ], [ %64, %63 ]
  %76 = phi ptr [ %27, %24 ], [ %27, %31 ], [ %67, %63 ]
  %77 = phi i32 [ %28, %24 ], [ %35, %31 ], [ %65, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %92, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %16, align 8, !tbaa !255
  %81 = zext i32 %77 to i64
  %82 = getelementptr inbounds i32, ptr %80, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = add i32 %83, -1
  store i32 %84, ptr %82, align 4, !tbaa !50
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, ptr %17, align 4, !tbaa !349
  %88 = add i32 %87, -1
  store i32 %88, ptr %17, align 4, !tbaa !349
  br label %89

89:                                               ; preds = %79, %86
  %90 = lshr i64 %75, 1
  %91 = add i32 %77, 1
  br label %18, !llvm.loop !358

92:                                               ; preds = %73, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @iv_ca_set_add_invariants(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #16 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %92, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @bitmap_zero_bits, ptr %5
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !177
  %10 = shl i32 %9, 7
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %7, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !89
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 6
  br label %18

18:                                               ; preds = %89, %4
  %19 = phi i32 [ 0, %4 ], [ %74, %89 ]
  %20 = phi i64 [ %12, %4 ], [ %90, %89 ]
  %21 = phi ptr [ %7, %4 ], [ %76, %89 ]
  %22 = phi i32 [ %15, %4 ], [ %91, %89 ]
  %23 = icmp eq i64 %20, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %52, %18
  %25 = phi i32 [ %19, %18 ], [ %53, %52 ]
  %26 = phi i64 [ %20, %18 ], [ %57, %52 ]
  %27 = phi ptr [ %21, %18 ], [ %44, %52 ]
  %28 = phi i32 [ %22, %18 ], [ %54, %52 ]
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %28, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %26, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !llvm.loop !179

38:                                               ; preds = %18
  %39 = add i32 %22, 63
  %40 = and i32 %39, -64
  %41 = add i32 %19, 1
  br label %42

42:                                               ; preds = %69, %38
  %43 = phi i64 [ %20, %38 ], [ %64, %69 ]
  %44 = phi ptr [ %21, %38 ], [ %67, %69 ]
  %45 = phi i32 [ %40, %38 ], [ %72, %69 ]
  %46 = phi i32 [ %41, %38 ], [ 0, %69 ]
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = add i32 %45, 128
  %50 = shl i32 %46, 6
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %61, %59 ], [ %46, %48 ]
  %54 = phi i32 [ %60, %59 ], [ %45, %48 ]
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !89
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !llvm.loop !180

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %43, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %45, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %44, align 8, !tbaa !181
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !177
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !182

73:                                               ; preds = %63, %31, %24
  %74 = phi i32 [ %25, %24 ], [ %25, %31 ], [ %66, %63 ]
  %75 = phi i64 [ %26, %24 ], [ %34, %31 ], [ %64, %63 ]
  %76 = phi ptr [ %27, %24 ], [ %27, %31 ], [ %67, %63 ]
  %77 = phi i32 [ %28, %24 ], [ %35, %31 ], [ %65, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %92, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %16, align 8, !tbaa !255
  %81 = zext i32 %77 to i64
  %82 = getelementptr inbounds i32, ptr %80, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !50
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, ptr %17, align 4, !tbaa !349
  %88 = add i32 %87, 1
  store i32 %88, ptr %17, align 4, !tbaa !349
  br label %89

89:                                               ; preds = %79, %86
  %90 = lshr i64 %75, 1
  %91 = add i32 %77, 1
  br label %18, !llvm.loop !359

92:                                               ; preds = %73, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @iv_ca_has_deps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !34 {
  %3 = getelementptr inbounds %struct.cost_pair, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !242
  %5 = icmp eq ptr %4, null
  br i1 %5, label %89, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !175
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @bitmap_zero_bits, ptr %7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !177
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !89
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr inbounds %struct.iv_ca, ptr %0, i64 0, i32 9
  br label %19

19:                                               ; preds = %86, %6
  %20 = phi i64 [ %14, %6 ], [ %87, %86 ]
  %21 = phi i32 [ 0, %6 ], [ %76, %86 ]
  %22 = phi i32 [ %17, %6 ], [ %88, %86 ]
  %23 = phi ptr [ %9, %6 ], [ %78, %86 ]
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %53, %19
  %26 = phi i64 [ %20, %19 ], [ %58, %53 ]
  %27 = phi i32 [ %21, %19 ], [ %54, %53 ]
  %28 = phi i32 [ %22, %19 ], [ %55, %53 ]
  %29 = phi ptr [ %23, %19 ], [ %46, %53 ]
  %30 = and i64 %26, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %25, %32
  %33 = phi i32 [ %36, %32 ], [ %28, %25 ]
  %34 = phi i64 [ %35, %32 ], [ %26, %25 ]
  %35 = lshr exact i64 %34, 1
  %36 = add i32 %33, 1
  %37 = and i64 %34, 2
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %32, label %74, !llvm.loop !179

39:                                               ; preds = %19
  %40 = add i32 %22, 63
  %41 = and i32 %40, -64
  %42 = add i32 %21, 1
  br label %43

43:                                               ; preds = %70, %39
  %44 = phi i64 [ %20, %39 ], [ %65, %70 ]
  %45 = phi i32 [ %41, %39 ], [ %73, %70 ]
  %46 = phi ptr [ %23, %39 ], [ %68, %70 ]
  %47 = phi i32 [ %42, %39 ], [ 0, %70 ]
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = add i32 %45, 128
  %51 = shl i32 %47, 6
  %52 = sub i32 %50, %51
  br label %53

53:                                               ; preds = %49, %60
  %54 = phi i32 [ %62, %60 ], [ %47, %49 ]
  %55 = phi i32 [ %61, %60 ], [ %45, %49 ]
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %46, i64 0, i32 3, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !89
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %25

60:                                               ; preds = %53
  %61 = add i32 %55, 64
  %62 = add i32 %54, 1
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %53, !llvm.loop !180

64:                                               ; preds = %60, %43
  %65 = phi i64 [ %44, %43 ], [ %58, %60 ]
  %66 = phi i32 [ %45, %43 ], [ %52, %60 ]
  %67 = phi i32 [ %47, %43 ], [ 2, %60 ]
  %68 = load ptr, ptr %46, align 8, !tbaa !181
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %68, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !177
  %73 = shl i32 %72, 7
  br label %43, !llvm.loop !182

74:                                               ; preds = %64, %32, %25
  %75 = phi i64 [ %26, %25 ], [ %35, %32 ], [ %65, %64 ]
  %76 = phi i32 [ %27, %25 ], [ %27, %32 ], [ %67, %64 ]
  %77 = phi i32 [ %28, %25 ], [ %36, %32 ], [ %66, %64 ]
  %78 = phi ptr [ %29, %25 ], [ %29, %32 ], [ %68, %64 ]
  %79 = phi i1 [ false, %25 ], [ false, %32 ], [ true, %64 ]
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %18, align 8, !tbaa !255
  %82 = zext i32 %77 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = lshr i64 %75, 1
  %88 = add i32 %77, 1
  br label %19, !llvm.loop !360

89:                                               ; preds = %74, %80, %2
  %90 = phi i8 [ 1, %2 ], [ 0, %80 ], [ 1, %74 ]
  ret i8 %90
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @iv_ca_prune(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !251
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  %10 = load i64, ptr %9, align 8, !tbaa.struct !257
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %10, %8 ], [ 42949672970000000, %4 ]
  %13 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !254
  %15 = load ptr, ptr %14, align 8, !tbaa !175
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @bitmap_zero_bits, ptr %15
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !177
  %20 = shl i32 %19, 7
  %21 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !89
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = or disjoint i32 %20, %24
  %26 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 2
  %29 = getelementptr inbounds %struct.ivopts_data, ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %struct.iv_ca, ptr %1, i64 0, i32 10
  br label %31

31:                                               ; preds = %482, %11
  %32 = phi i32 [ 0, %11 ], [ %89, %482 ]
  %33 = phi i64 [ %22, %11 ], [ %485, %482 ]
  %34 = phi ptr [ %17, %11 ], [ %91, %482 ]
  %35 = phi ptr [ null, %11 ], [ %483, %482 ]
  %36 = phi i32 [ %25, %11 ], [ %486, %482 ]
  %37 = phi i64 [ %12, %11 ], [ %484, %482 ]
  %38 = icmp eq i64 %33, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %67, %31
  %40 = phi i32 [ %32, %31 ], [ %68, %67 ]
  %41 = phi i64 [ %33, %31 ], [ %72, %67 ]
  %42 = phi ptr [ %34, %31 ], [ %59, %67 ]
  %43 = phi i32 [ %36, %31 ], [ %69, %67 ]
  %44 = and i64 %41, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %39, %46
  %47 = phi i32 [ %50, %46 ], [ %43, %39 ]
  %48 = phi i64 [ %49, %46 ], [ %41, %39 ]
  %49 = lshr exact i64 %48, 1
  %50 = add i32 %47, 1
  %51 = and i64 %48, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %46, label %88, !llvm.loop !179

53:                                               ; preds = %31
  %54 = add i32 %36, 63
  %55 = and i32 %54, -64
  %56 = add i32 %32, 1
  br label %57

57:                                               ; preds = %84, %53
  %58 = phi i64 [ %33, %53 ], [ %79, %84 ]
  %59 = phi ptr [ %34, %53 ], [ %82, %84 ]
  %60 = phi i32 [ %55, %53 ], [ %87, %84 ]
  %61 = phi i32 [ %56, %53 ], [ 0, %84 ]
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = add i32 %60, 128
  %65 = shl i32 %61, 6
  %66 = sub i32 %64, %65
  br label %67

67:                                               ; preds = %63, %74
  %68 = phi i32 [ %76, %74 ], [ %61, %63 ]
  %69 = phi i32 [ %75, %74 ], [ %60, %63 ]
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %59, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !89
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %39

74:                                               ; preds = %67
  %75 = add i32 %69, 64
  %76 = add i32 %68, 1
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %67, !llvm.loop !180

78:                                               ; preds = %74, %57
  %79 = phi i64 [ %58, %57 ], [ %72, %74 ]
  %80 = phi i32 [ %60, %57 ], [ %66, %74 ]
  %81 = phi i32 [ %61, %57 ], [ 2, %74 ]
  %82 = load ptr, ptr %59, align 8, !tbaa !181
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.bitmap_element_def, ptr %82, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !177
  %87 = shl i32 %86, 7
  br label %57, !llvm.loop !182

88:                                               ; preds = %78, %46, %39
  %89 = phi i32 [ %40, %39 ], [ %40, %46 ], [ %81, %78 ]
  %90 = phi i64 [ %41, %39 ], [ %49, %46 ], [ %79, %78 ]
  %91 = phi ptr [ %42, %39 ], [ %42, %46 ], [ %82, %78 ]
  %92 = phi i32 [ %43, %39 ], [ %50, %46 ], [ %80, %78 ]
  %93 = phi i1 [ false, %39 ], [ false, %46 ], [ true, %78 ]
  br i1 %93, label %487, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %26, align 8, !tbaa !130
  %96 = zext i32 %92 to i64
  %97 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %95, i64 0, i32 2, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = icmp eq ptr %98, %2
  br i1 %99, label %482, label %100

100:                                              ; preds = %94, %444
  %101 = phi i64 [ %446, %444 ], [ 0, %94 ]
  %102 = phi ptr [ %445, %444 ], [ null, %94 ]
  %103 = load ptr, ptr %27, align 8, !tbaa !69
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %103, align 8, !tbaa !71
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %106, %105 ], [ 0, %100 ]
  %109 = zext i32 %108 to i64
  %110 = icmp ult i64 %101, %109
  br i1 %110, label %111, label %447

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.VEC_iv_use_p_base, ptr %103, i64 0, i32 2, i64 %101
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = load ptr, ptr %28, align 8, !tbaa !252
  %115 = load i32, ptr %113, align 8, !tbaa !62
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = load ptr, ptr %118, align 8, !tbaa !237
  %120 = icmp eq ptr %119, %98
  br i1 %120, label %121, label %444

121:                                              ; preds = %111
  %122 = load i8, ptr %29, align 4, !tbaa !223
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %249, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %13, align 8, !tbaa !254
  %126 = load ptr, ptr %125, align 8, !tbaa !175
  %127 = icmp eq ptr %126, null
  %128 = select i1 %127, ptr @bitmap_zero_bits, ptr %126
  %129 = getelementptr inbounds %struct.bitmap_element_def, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !177
  %131 = shl i32 %130, 7
  %132 = getelementptr inbounds %struct.bitmap_element_def, ptr %128, i64 0, i32 3
  %133 = load i64, ptr %132, align 8, !tbaa !89
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = or disjoint i32 %131, %135
  br label %137

137:                                              ; preds = %245, %124
  %138 = phi i64 [ %133, %124 ], [ %247, %245 ]
  %139 = phi i32 [ %136, %124 ], [ %248, %245 ]
  %140 = phi i32 [ 0, %124 ], [ %196, %245 ]
  %141 = phi ptr [ %128, %124 ], [ %197, %245 ]
  %142 = phi ptr [ null, %124 ], [ %246, %245 ]
  %143 = icmp eq i64 %138, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %172, %137
  %145 = phi i64 [ %138, %137 ], [ %177, %172 ]
  %146 = phi i32 [ %139, %137 ], [ %174, %172 ]
  %147 = phi i32 [ %140, %137 ], [ %173, %172 ]
  %148 = phi ptr [ %141, %137 ], [ %165, %172 ]
  %149 = and i64 %145, 1
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %193

151:                                              ; preds = %144, %151
  %152 = phi i32 [ %155, %151 ], [ %146, %144 ]
  %153 = phi i64 [ %154, %151 ], [ %145, %144 ]
  %154 = lshr exact i64 %153, 1
  %155 = add i32 %152, 1
  %156 = and i64 %153, 2
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %151, label %193, !llvm.loop !179

158:                                              ; preds = %137
  %159 = add i32 %139, 63
  %160 = and i32 %159, -64
  %161 = add i32 %140, 1
  br label %162

162:                                              ; preds = %189, %158
  %163 = phi i64 [ %138, %158 ], [ %184, %189 ]
  %164 = phi i32 [ %160, %158 ], [ %192, %189 ]
  %165 = phi ptr [ %141, %158 ], [ %187, %189 ]
  %166 = phi i32 [ %161, %158 ], [ 0, %189 ]
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %183, label %168

168:                                              ; preds = %162
  %169 = add i32 %164, 128
  %170 = shl i32 %166, 6
  %171 = sub i32 %169, %170
  br label %172

172:                                              ; preds = %168, %179
  %173 = phi i32 [ %181, %179 ], [ %166, %168 ]
  %174 = phi i32 [ %180, %179 ], [ %164, %168 ]
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds %struct.bitmap_element_def, ptr %165, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !89
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %144

179:                                              ; preds = %172
  %180 = add i32 %174, 64
  %181 = add i32 %173, 1
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %172, !llvm.loop !180

183:                                              ; preds = %179, %162
  %184 = phi i64 [ %163, %162 ], [ %177, %179 ]
  %185 = phi i32 [ %164, %162 ], [ %171, %179 ]
  %186 = phi i32 [ %166, %162 ], [ 2, %179 ]
  %187 = load ptr, ptr %165, align 8, !tbaa !181
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.bitmap_element_def, ptr %187, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !177
  %192 = shl i32 %191, 7
  br label %162, !llvm.loop !182

193:                                              ; preds = %183, %151, %144
  %194 = phi i64 [ %145, %144 ], [ %154, %151 ], [ %184, %183 ]
  %195 = phi i32 [ %146, %144 ], [ %155, %151 ], [ %185, %183 ]
  %196 = phi i32 [ %147, %144 ], [ %147, %151 ], [ %186, %183 ]
  %197 = phi ptr [ %148, %144 ], [ %148, %151 ], [ %187, %183 ]
  %198 = phi i1 [ false, %144 ], [ false, %151 ], [ true, %183 ]
  br i1 %198, label %429, label %199

199:                                              ; preds = %193
  %200 = load i32, ptr %98, align 8, !tbaa !76
  %201 = icmp eq i32 %195, %200
  br i1 %201, label %245, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %26, align 8, !tbaa !130
  %204 = zext i32 %195 to i64
  %205 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %203, i64 0, i32 2, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !35
  %207 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef nonnull %113, ptr noundef %206)
  %208 = icmp eq ptr %207, null
  br i1 %208, label %245, label %209

209:                                              ; preds = %202
  %210 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef %1, ptr noundef nonnull %207), !range !81
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %209
  %213 = icmp eq ptr %142, null
  br i1 %213, label %241, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.cost_pair, ptr %207, i64 0, i32 1
  %216 = getelementptr inbounds %struct.cost_pair, ptr %142, i64 0, i32 1
  %217 = load i64, ptr %215, align 8
  %218 = load i64, ptr %216, align 8
  %219 = trunc i64 %217 to i32
  %220 = trunc i64 %218 to i32
  %221 = icmp eq i32 %219, %220
  %222 = lshr i64 %218, 32
  %223 = trunc i64 %222 to i32
  %224 = lshr i64 %217, 32
  %225 = trunc i64 %224 to i32
  %226 = sub i32 %225, %223
  %227 = sub nsw i32 %219, %220
  %228 = select i1 %221, i32 %226, i32 %227
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %214
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %230
  %233 = load ptr, ptr %207, align 8, !tbaa !237
  %234 = getelementptr inbounds %struct.iv_cand, ptr %233, i64 0, i32 7
  %235 = load i32, ptr %234, align 8, !tbaa !226
  %236 = load ptr, ptr %142, align 8, !tbaa !237
  %237 = getelementptr inbounds %struct.iv_cand, ptr %236, i64 0, i32 7
  %238 = load i32, ptr %237, align 8, !tbaa !226
  %239 = icmp ult i32 %235, %238
  %240 = zext i1 %239 to i8
  br label %241

241:                                              ; preds = %232, %230, %214, %212
  %242 = phi i8 [ 1, %212 ], [ 1, %214 ], [ 0, %230 ], [ %240, %232 ]
  %243 = icmp eq i8 %242, 0
  %244 = select i1 %243, ptr %142, ptr %207
  br label %245

245:                                              ; preds = %241, %209, %202, %199
  %246 = phi ptr [ %142, %199 ], [ %142, %209 ], [ %142, %202 ], [ %244, %241 ]
  %247 = lshr i64 %194, 1
  %248 = add i32 %195, 1
  br label %137, !llvm.loop !361

249:                                              ; preds = %121
  %250 = getelementptr inbounds %struct.iv_use, ptr %113, i64 0, i32 5
  %251 = load ptr, ptr %250, align 8, !tbaa !68
  %252 = load ptr, ptr %13, align 8, !tbaa !254
  %253 = load ptr, ptr %251, align 8, !tbaa !175
  %254 = load ptr, ptr %252, align 8, !tbaa !175
  %255 = icmp eq ptr %253, null
  %256 = icmp eq ptr %254, null
  %257 = select i1 %255, i1 true, i1 %256
  br i1 %257, label %269, label %258

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.bitmap_element_def, ptr %253, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !177
  br label %261

261:                                              ; preds = %258, %266
  %262 = phi ptr [ %254, %258 ], [ %267, %266 ]
  %263 = getelementptr inbounds %struct.bitmap_element_def, ptr %262, i64 0, i32 2
  %264 = load i32, ptr %263, align 8, !tbaa !177
  %265 = icmp ult i32 %264, %260
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load ptr, ptr %262, align 8, !tbaa !181
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %261, !llvm.loop !362

269:                                              ; preds = %266, %261, %249
  %270 = phi ptr [ @bitmap_zero_bits, %249 ], [ @bitmap_zero_bits, %266 ], [ %262, %261 ]
  %271 = phi ptr [ @bitmap_zero_bits, %249 ], [ @bitmap_zero_bits, %266 ], [ %253, %261 ]
  %272 = getelementptr inbounds %struct.bitmap_element_def, ptr %271, i64 0, i32 2
  %273 = load i32, ptr %272, align 8, !tbaa !177
  %274 = getelementptr inbounds %struct.bitmap_element_def, ptr %270, i64 0, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !177
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %269
  %278 = shl i32 %273, 7
  %279 = getelementptr inbounds %struct.bitmap_element_def, ptr %271, i64 0, i32 3
  %280 = load i64, ptr %279, align 8, !tbaa !89
  %281 = getelementptr inbounds %struct.bitmap_element_def, ptr %270, i64 0, i32 3
  %282 = load i64, ptr %281, align 8, !tbaa !89
  %283 = and i64 %282, %280
  br label %284

284:                                              ; preds = %277, %269
  %285 = phi i64 [ %283, %277 ], [ 0, %269 ]
  %286 = phi i32 [ 0, %277 ], [ 1, %269 ]
  %287 = phi i32 [ %278, %277 ], [ 0, %269 ]
  %288 = icmp eq i64 %285, 0
  %289 = zext i1 %288 to i32
  %290 = or disjoint i32 %287, %289
  br label %291

291:                                              ; preds = %425, %284
  %292 = phi i64 [ %285, %284 ], [ %427, %425 ]
  %293 = phi i32 [ %290, %284 ], [ %428, %425 ]
  %294 = phi i32 [ %286, %284 ], [ %375, %425 ]
  %295 = phi ptr [ %270, %284 ], [ %376, %425 ]
  %296 = phi ptr [ %271, %284 ], [ %377, %425 ]
  %297 = phi ptr [ null, %284 ], [ %426, %425 ]
  %298 = icmp eq i64 %292, 0
  br i1 %298, label %314, label %299

299:                                              ; preds = %333, %291
  %300 = phi i64 [ %292, %291 ], [ %341, %333 ]
  %301 = phi i32 [ %293, %291 ], [ %335, %333 ]
  %302 = phi i32 [ %294, %291 ], [ %334, %333 ]
  %303 = phi ptr [ %295, %291 ], [ %321, %333 ]
  %304 = phi ptr [ %296, %291 ], [ %322, %333 ]
  %305 = and i64 %300, 1
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %372

307:                                              ; preds = %299, %307
  %308 = phi i32 [ %311, %307 ], [ %301, %299 ]
  %309 = phi i64 [ %310, %307 ], [ %300, %299 ]
  %310 = lshr exact i64 %309, 1
  %311 = add i32 %308, 1
  %312 = and i64 %309, 2
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %307, label %372, !llvm.loop !363

314:                                              ; preds = %291
  %315 = add i32 %293, 63
  %316 = and i32 %315, -64
  %317 = add i32 %294, 1
  br label %318

318:                                              ; preds = %370, %314
  %319 = phi i64 [ %292, %314 ], [ %330, %370 ]
  %320 = phi i32 [ %316, %314 ], [ %371, %370 ]
  %321 = phi ptr [ %295, %314 ], [ %361, %370 ]
  %322 = phi ptr [ %296, %314 ], [ %353, %370 ]
  %323 = phi i32 [ %317, %314 ], [ 0, %370 ]
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %329, label %325

325:                                              ; preds = %318
  %326 = add i32 %320, 128
  %327 = shl i32 %323, 6
  %328 = sub i32 %326, %327
  br label %333

329:                                              ; preds = %343, %318
  %330 = phi i64 [ %319, %318 ], [ %341, %343 ]
  %331 = phi i32 [ %320, %318 ], [ %328, %343 ]
  %332 = phi i32 [ %323, %318 ], [ 2, %343 ]
  br label %347

333:                                              ; preds = %325, %343
  %334 = phi i32 [ %345, %343 ], [ %323, %325 ]
  %335 = phi i32 [ %344, %343 ], [ %320, %325 ]
  %336 = zext i32 %334 to i64
  %337 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 3, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !89
  %339 = getelementptr inbounds %struct.bitmap_element_def, ptr %321, i64 0, i32 3, i64 %336
  %340 = load i64, ptr %339, align 8, !tbaa !89
  %341 = and i64 %340, %338
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %299

343:                                              ; preds = %333
  %344 = add i32 %335, 64
  %345 = add i32 %334, 1
  %346 = icmp eq i32 %345, 2
  br i1 %346, label %329, label %333, !llvm.loop !364

347:                                              ; preds = %329, %368
  %348 = phi ptr [ %361, %368 ], [ %321, %329 ]
  %349 = phi ptr [ %353, %368 ], [ %322, %329 ]
  %350 = getelementptr inbounds %struct.bitmap_element_def, ptr %348, i64 0, i32 2
  br label %351

351:                                              ; preds = %355, %347
  %352 = phi ptr [ %349, %347 ], [ %353, %355 ]
  %353 = load ptr, ptr %352, align 8, !tbaa !181
  %354 = icmp eq ptr %353, null
  br i1 %354, label %372, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.bitmap_element_def, ptr %353, i64 0, i32 2
  %357 = load i32, ptr %356, align 8, !tbaa !177
  %358 = load i32, ptr %350, align 8, !tbaa !177
  %359 = icmp ult i32 %357, %358
  br i1 %359, label %351, label %360, !llvm.loop !365

360:                                              ; preds = %355, %365
  %361 = phi ptr [ %366, %365 ], [ %348, %355 ]
  %362 = getelementptr inbounds %struct.bitmap_element_def, ptr %361, i64 0, i32 2
  %363 = load i32, ptr %362, align 8, !tbaa !177
  %364 = icmp ult i32 %363, %357
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load ptr, ptr %361, align 8, !tbaa !181
  %367 = icmp eq ptr %366, null
  br i1 %367, label %372, label %360, !llvm.loop !366

368:                                              ; preds = %360
  %369 = icmp eq i32 %357, %363
  br i1 %369, label %370, label %347, !llvm.loop !367

370:                                              ; preds = %368
  %371 = shl i32 %357, 7
  br label %318, !llvm.loop !368

372:                                              ; preds = %307, %351, %365, %299
  %373 = phi i64 [ %300, %299 ], [ %330, %365 ], [ %330, %351 ], [ %310, %307 ]
  %374 = phi i32 [ %301, %299 ], [ %331, %365 ], [ %331, %351 ], [ %311, %307 ]
  %375 = phi i32 [ %302, %299 ], [ %332, %365 ], [ %332, %351 ], [ %302, %307 ]
  %376 = phi ptr [ %303, %299 ], [ %366, %365 ], [ %348, %351 ], [ %303, %307 ]
  %377 = phi ptr [ %304, %299 ], [ %353, %365 ], [ %353, %351 ], [ %304, %307 ]
  %378 = phi i1 [ false, %299 ], [ true, %365 ], [ true, %351 ], [ false, %307 ]
  br i1 %378, label %429, label %379

379:                                              ; preds = %372
  %380 = load i32, ptr %98, align 8, !tbaa !76
  %381 = icmp eq i32 %374, %380
  br i1 %381, label %425, label %382

382:                                              ; preds = %379
  %383 = load ptr, ptr %26, align 8, !tbaa !130
  %384 = zext i32 %374 to i64
  %385 = getelementptr inbounds %struct.VEC_iv_cand_p_base, ptr %383, i64 0, i32 2, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !35
  %387 = tail call fastcc ptr @get_use_iv_cost(ptr noundef %0, ptr noundef nonnull %113, ptr noundef %386)
  %388 = icmp eq ptr %387, null
  br i1 %388, label %425, label %389

389:                                              ; preds = %382
  %390 = tail call fastcc zeroext i8 @iv_ca_has_deps(ptr noundef %1, ptr noundef nonnull %387), !range !81
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %425, label %392

392:                                              ; preds = %389
  %393 = icmp eq ptr %297, null
  br i1 %393, label %421, label %394

394:                                              ; preds = %392
  %395 = getelementptr inbounds %struct.cost_pair, ptr %387, i64 0, i32 1
  %396 = getelementptr inbounds %struct.cost_pair, ptr %297, i64 0, i32 1
  %397 = load i64, ptr %395, align 8
  %398 = load i64, ptr %396, align 8
  %399 = trunc i64 %397 to i32
  %400 = trunc i64 %398 to i32
  %401 = icmp eq i32 %399, %400
  %402 = lshr i64 %398, 32
  %403 = trunc i64 %402 to i32
  %404 = lshr i64 %397, 32
  %405 = trunc i64 %404 to i32
  %406 = sub i32 %405, %403
  %407 = sub nsw i32 %399, %400
  %408 = select i1 %401, i32 %406, i32 %407
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %421, label %410

410:                                              ; preds = %394
  %411 = icmp eq i32 %408, 0
  br i1 %411, label %412, label %421

412:                                              ; preds = %410
  %413 = load ptr, ptr %387, align 8, !tbaa !237
  %414 = getelementptr inbounds %struct.iv_cand, ptr %413, i64 0, i32 7
  %415 = load i32, ptr %414, align 8, !tbaa !226
  %416 = load ptr, ptr %297, align 8, !tbaa !237
  %417 = getelementptr inbounds %struct.iv_cand, ptr %416, i64 0, i32 7
  %418 = load i32, ptr %417, align 8, !tbaa !226
  %419 = icmp ult i32 %415, %418
  %420 = zext i1 %419 to i8
  br label %421

421:                                              ; preds = %412, %410, %394, %392
  %422 = phi i8 [ 1, %392 ], [ 1, %394 ], [ 0, %410 ], [ %420, %412 ]
  %423 = icmp eq i8 %422, 0
  %424 = select i1 %423, ptr %297, ptr %387
  br label %425

425:                                              ; preds = %421, %389, %382, %379
  %426 = phi ptr [ %297, %379 ], [ %297, %389 ], [ %297, %382 ], [ %424, %421 ]
  %427 = lshr i64 %373, 1
  %428 = add i32 %374, 1
  br label %291, !llvm.loop !369

429:                                              ; preds = %193, %372
  %430 = phi ptr [ %297, %372 ], [ %142, %193 ]
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %439

432:                                              ; preds = %429
  %433 = icmp eq ptr %102, null
  br i1 %433, label %454, label %434

434:                                              ; preds = %432, %434
  %435 = phi ptr [ %437, %434 ], [ %102, %432 ]
  %436 = getelementptr inbounds %struct.iv_ca_delta, ptr %435, i64 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !262
  tail call void @free(ptr noundef %435)
  %438 = icmp eq ptr %437, null
  br i1 %438, label %454, label %434, !llvm.loop !263

439:                                              ; preds = %429
  %440 = tail call ptr @xmalloc(i64 noundef 32) #21
  store ptr %113, ptr %440, align 8, !tbaa !258
  %441 = getelementptr inbounds %struct.iv_ca_delta, ptr %440, i64 0, i32 1
  store ptr %118, ptr %441, align 8, !tbaa !260
  %442 = getelementptr inbounds %struct.iv_ca_delta, ptr %440, i64 0, i32 2
  store ptr %430, ptr %442, align 8, !tbaa !261
  %443 = getelementptr inbounds %struct.iv_ca_delta, ptr %440, i64 0, i32 3
  store ptr %102, ptr %443, align 8, !tbaa !262
  br label %444

444:                                              ; preds = %439, %111
  %445 = phi ptr [ %440, %439 ], [ %102, %111 ]
  %446 = add nuw nsw i64 %101, 1
  br label %100, !llvm.loop !370

447:                                              ; preds = %107
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %102, i8 noundef zeroext 1)
  %448 = load i32, ptr %5, align 4, !tbaa !251
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %447
  %451 = load i64, ptr %30, align 8, !tbaa.struct !257
  br label %452

452:                                              ; preds = %450, %447
  %453 = phi i64 [ %451, %450 ], [ 42949672970000000, %447 ]
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef %102, i8 noundef zeroext 0)
  br label %454

454:                                              ; preds = %434, %432, %452
  %455 = phi ptr [ %102, %452 ], [ null, %432 ], [ null, %434 ]
  %456 = phi i64 [ %453, %452 ], [ 42949672970000000, %432 ], [ 42949672970000000, %434 ]
  %457 = trunc i64 %456 to i32
  %458 = trunc i64 %37 to i32
  %459 = icmp eq i32 %457, %458
  %460 = lshr i64 %37, 32
  %461 = trunc i64 %460 to i32
  %462 = lshr i64 %456, 32
  %463 = trunc i64 %462 to i32
  %464 = sub i32 %463, %461
  %465 = sub nsw i32 %457, %458
  %466 = select i1 %459, i32 %464, i32 %465
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %454
  %469 = icmp eq ptr %455, null
  br i1 %469, label %482, label %477

470:                                              ; preds = %454
  %471 = icmp eq ptr %35, null
  br i1 %471, label %482, label %472

472:                                              ; preds = %470, %472
  %473 = phi ptr [ %475, %472 ], [ %35, %470 ]
  %474 = getelementptr inbounds %struct.iv_ca_delta, ptr %473, i64 0, i32 3
  %475 = load ptr, ptr %474, align 8, !tbaa !262
  tail call void @free(ptr noundef %473)
  %476 = icmp eq ptr %475, null
  br i1 %476, label %482, label %472, !llvm.loop !263

477:                                              ; preds = %468, %477
  %478 = phi ptr [ %480, %477 ], [ %455, %468 ]
  %479 = getelementptr inbounds %struct.iv_ca_delta, ptr %478, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !262
  tail call void @free(ptr noundef %478)
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %477, !llvm.loop !263

482:                                              ; preds = %477, %472, %468, %470, %94
  %483 = phi ptr [ %35, %94 ], [ %455, %470 ], [ %35, %468 ], [ %455, %472 ], [ %35, %477 ]
  %484 = phi i64 [ %37, %94 ], [ %456, %470 ], [ %37, %468 ], [ %456, %472 ], [ %37, %477 ]
  %485 = lshr i64 %90, 1
  %486 = add i32 %92, 1
  br label %31, !llvm.loop !371

487:                                              ; preds = %88
  %488 = icmp eq ptr %35, null
  br i1 %488, label %500, label %489

489:                                              ; preds = %487
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35, i8 noundef zeroext 1)
  %490 = tail call fastcc i64 @iv_ca_prune(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @iv_ca_delta_commit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35, i8 noundef zeroext 0)
  %491 = load ptr, ptr %3, align 8, !tbaa !35
  %492 = icmp eq ptr %491, null
  br i1 %492, label %500, label %493

493:                                              ; preds = %489, %493
  %494 = phi ptr [ %496, %493 ], [ %35, %489 ]
  %495 = getelementptr inbounds %struct.iv_ca_delta, ptr %494, i64 0, i32 3
  %496 = load ptr, ptr %495, align 8, !tbaa !262
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %493, !llvm.loop !267

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.iv_ca_delta, ptr %494, i64 0, i32 3
  store ptr %491, ptr %499, align 8, !tbaa !262
  br label %500

500:                                              ; preds = %498, %489, %487
  %501 = phi ptr [ null, %487 ], [ %35, %489 ], [ %35, %498 ]
  %502 = phi i64 [ %37, %487 ], [ %490, %489 ], [ %490, %498 ]
  store ptr %501, ptr %3, align 8, !tbaa !35
  ret i64 %502
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gimple_add_tmp_var(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_mem_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @copy_mem_ref_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @idx_remove_ssa_names(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #17 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  store ptr %10, ptr %1, align 8, !tbaa !35
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
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  store ptr %27, ptr %18, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %25, %21, %17
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  store ptr %38, ptr %29, align 8, !tbaa !35
  br label %39

39:                                               ; preds = %11, %28, %32, %36
  ret i8 1
}

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @release_defs_bitset(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 0}
!55 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!56 = !{!57, !36, i64 24}
!57 = !{!"iv", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 33, !41, i64 36}
!58 = !{!57, !36, i64 0}
!59 = !{!57, !36, i64 16}
!60 = !{!57, !36, i64 8}
!61 = !{!57, !37, i64 32}
!62 = !{!63, !41, i64 0}
!63 = !{!"iv_use", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !36, i64 48, !36, i64 56}
!64 = !{!63, !41, i64 4}
!65 = !{!63, !36, i64 16}
!66 = !{!63, !36, i64 24}
!67 = !{!63, !36, i64 8}
!68 = !{!63, !36, i64 32}
!69 = !{!70, !36, i64 40}
!70 = !{!"ivopts_data", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !37, i64 68, !37, i64 69}
!71 = !{!72, !41, i64 0}
!72 = !{!"VEC_iv_use_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!73 = distinct !{!73, !52, !53}
!74 = !{!75, !36, i64 40}
!75 = !{!"iv_cand", !41, i64 0, !37, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52, !36, i64 56, !36, i64 64}
!76 = !{!75, !41, i64 0}
!77 = !{!75, !37, i64 4}
!78 = !{!75, !36, i64 64}
!79 = !{!75, !41, i64 8}
!80 = !{!75, !36, i64 56}
!81 = !{i8 0, i8 2}
!82 = !{!83, !36, i64 40}
!83 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !84, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !85, i64 80, !85, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!84 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!85 = !{!"", !42, i64 0, !42, i64 8}
!86 = !{!87, !41, i64 0}
!87 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!88 = distinct !{!88, !52, !53}
!89 = !{!42, !42, i64 0}
!90 = distinct !{!90, !52, !53}
!91 = !{!92, !41, i64 8}
!92 = !{!"mbc_entry", !42, i64 0, !41, i64 8, !41, i64 12}
!93 = !{!92, !42, i64 0}
!94 = !{!92, !41, i64 12}
!95 = distinct !{!95, !52, !53}
!96 = !{!97, !41, i64 0}
!97 = !{!"VEC_sbitmap_base", !41, i64 0, !41, i64 4, !37, i64 8}
!98 = !{!97, !41, i64 4}
!99 = !{}
!100 = !{!101, !36, i64 1184}
!101 = !{!"gcc_target", !102, i64 0, !104, i64 368, !105, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !106, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !107, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !108, i64 1784, !109, i64 1792, !110, i64 1896, !111, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!102 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !103, i64 24, !103, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!103 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!104 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!105 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!106 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!107 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!108 = !{!"c", !36, i64 0}
!109 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!110 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!111 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!112 = !{!113, !36, i64 0}
!113 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = !{!117, !36, i64 24}
!117 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!118 = !{!119, !36, i64 16}
!119 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !120, i64 32, !120, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !121, i64 104}
!120 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!121 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!122 = !{!123, !41, i64 0}
!123 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!124 = !{!70, !41, i64 20}
!125 = !{!70, !36, i64 24}
!126 = !{!70, !36, i64 32}
!127 = !{!70, !36, i64 56}
!128 = !{!70, !41, i64 64}
!129 = !{!70, !36, i64 8}
!130 = !{!70, !36, i64 48}
!131 = !{!117, !36, i64 32}
!132 = !{!133, !36, i64 8}
!133 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!134 = !{!133, !36, i64 24}
!135 = !{!83, !36, i64 48}
!136 = distinct !{!136, !52, !53}
!137 = !{!83, !41, i64 0}
!138 = !{!139, !41, i64 0}
!139 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!140 = !{!83, !36, i64 56}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = !{!70, !36, i64 0}
!146 = !{!70, !37, i64 69}
!147 = !{!148, !41, i64 80}
!148 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!149 = !{!55, !36, i64 8}
!150 = !{!83, !41, i64 36}
!151 = !{!83, !36, i64 8}
!152 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!153 = !{!154, !36, i64 0}
!154 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!155 = !{!148, !36, i64 24}
!156 = !{!157, !36, i64 8}
!157 = !{!"", !36, i64 0, !36, i64 8, !37, i64 16}
!158 = !{!55, !41, i64 44}
!159 = !{!160, !36, i64 24}
!160 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!161 = !{!154, !36, i64 16}
!162 = distinct !{!162, !52, !53}
!163 = !{!148, !41, i64 96}
!164 = !{!165}
!165 = distinct !{!165, !166, !"gsi_start_bb: argument 0"}
!166 = distinct !{!166, !"gsi_start_bb"}
!167 = !{!168, !36, i64 0}
!168 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!169 = !{!170, !36, i64 0}
!170 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!171 = !{!157, !36, i64 0}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = !{!176, !36, i64 0}
!176 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!177 = !{!178, !41, i64 16}
!178 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!179 = distinct !{!179, !52, !53}
!180 = distinct !{!180, !52, !53}
!181 = !{!178, !36, i64 0}
!182 = distinct !{!182, !53}
!183 = !{!184, !36, i64 8}
!184 = !{!"version_info", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 20, !37, i64 24}
!185 = distinct !{!185, !52, !53}
!186 = !{!187, !41, i64 0}
!187 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!188 = !{!117, !36, i64 8}
!189 = !{!190, !36, i64 8}
!190 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = !{!195}
!195 = distinct !{!195, !196, !"gsi_start_bb: argument 0"}
!196 = distinct !{!196, !"gsi_start_bb"}
!197 = distinct !{!197, !52, !53}
!198 = distinct !{!198, !52, !53}
!199 = !{!184, !41, i64 20}
!200 = !{!184, !36, i64 0}
!201 = !{!184, !37, i64 16}
!202 = distinct !{!202, !52, !53}
!203 = !{!204, !41, i64 8}
!204 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!205 = !{!206, !36, i64 456}
!206 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !207, i64 240, !208, i64 248, !209, i64 256, !210, i64 272, !211, i64 432, !212, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!207 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!208 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!209 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!210 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!211 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!212 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!213 = !{!75, !36, i64 24}
!214 = !{!75, !36, i64 32}
!215 = distinct !{!215, !52, !53}
!216 = distinct !{!216, !52, !53}
!217 = !{!218, !41, i64 0}
!218 = !{!"VEC_iv_cand_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!219 = !{!75, !36, i64 16}
!220 = distinct !{!220, !52, !53}
!221 = distinct !{!221, !52, !53}
!222 = distinct !{!222, !52, !53}
!223 = !{!70, !37, i64 68}
!224 = distinct !{!224, !52, !53}
!225 = distinct !{!225, !52, !53}
!226 = !{!75, !41, i64 48}
!227 = !{!75, !41, i64 52}
!228 = distinct !{!228, !52, !53}
!229 = distinct !{!229, !52, !53}
!230 = distinct !{!230, !52, !53}
!231 = !{!63, !41, i64 40}
!232 = !{!63, !36, i64 48}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = distinct !{!235, !52, !53}
!236 = distinct !{!236, !52, !53}
!237 = !{!238, !36, i64 0}
!238 = !{!"cost_pair", !36, i64 0, !239, i64 8, !36, i64 16, !36, i64 24}
!239 = !{!"", !41, i64 0, !41, i64 4}
!240 = !{!238, !41, i64 8}
!241 = !{!238, !41, i64 12}
!242 = !{!238, !36, i64 16}
!243 = distinct !{!243, !52, !53}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = !{!70, !41, i64 16}
!248 = distinct !{!248, !52, !53}
!249 = !{!250, !41, i64 0}
!250 = !{!"iv_ca", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !239, i64 40, !41, i64 48, !36, i64 56, !239, i64 64}
!251 = !{!250, !41, i64 4}
!252 = !{!250, !36, i64 8}
!253 = !{!250, !36, i64 16}
!254 = !{!250, !36, i64 24}
!255 = !{!250, !36, i64 56}
!256 = distinct !{!256, !52, !53}
!257 = !{i64 0, i64 4, !50, i64 4, i64 4, !50}
!258 = !{!259, !36, i64 0}
!259 = !{!"iv_ca_delta", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!260 = !{!259, !36, i64 8}
!261 = !{!259, !36, i64 16}
!262 = !{!259, !36, i64 24}
!263 = distinct !{!263, !52, !53}
!264 = distinct !{!264, !52, !53}
!265 = distinct !{!265, !52, !53}
!266 = distinct !{!266, !52, !53}
!267 = distinct !{!267, !52, !53}
!268 = distinct !{!268, !52, !53}
!269 = distinct !{!269, !52, !53}
!270 = !{!63, !36, i64 56}
!271 = distinct !{!271, !52, !53}
!272 = !{!273}
!273 = distinct !{!273, !274, !"gsi_last_bb: argument 0"}
!274 = distinct !{!274, !"gsi_last_bb"}
!275 = !{!170, !36, i64 8}
!276 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!277 = !{i64 0, i64 8, !35}
!278 = !{!279}
!279 = distinct !{!279, !280, !"gsi_last_bb: argument 0"}
!280 = distinct !{!280, !"gsi_last_bb"}
!281 = !{!184, !37, i64 24}
!282 = distinct !{!282, !52, !53}
!283 = !{!284, !286}
!284 = distinct !{!284, !285, !"gsi_start_bb: argument 0"}
!285 = distinct !{!285, !"gsi_start_bb"}
!286 = distinct !{!286, !287, !"gsi_after_labels: argument 0"}
!287 = distinct !{!287, !"gsi_after_labels"}
!288 = !{!286}
!289 = distinct !{!289, !52, !53}
!290 = !{!238, !36, i64 24}
!291 = !{!148, !36, i64 8}
!292 = !{!55, !41, i64 48}
!293 = distinct !{!293, !52, !53}
!294 = !{!57, !37, i64 33}
!295 = distinct !{!295, !52, !53}
!296 = distinct !{!296, !52, !53}
!297 = distinct !{!297, !52, !53}
!298 = distinct !{!298, !52, !53}
!299 = distinct !{!299, !52, !53}
!300 = distinct !{!300, !52, !53}
!301 = !{!57, !41, i64 36}
!302 = !{!303, !36, i64 8}
!303 = !{!"tree_niter_desc", !36, i64 0, !36, i64 8, !36, i64 16, !85, i64 24, !157, i64 40, !36, i64 64, !41, i64 72}
!304 = !{!303, !36, i64 16}
!305 = !{!306, !36, i64 0}
!306 = !{!"use_optype_d", !36, i64 0, !160, i64 8}
!307 = distinct !{!307, !52, !53}
!308 = distinct !{!308, !52, !53}
!309 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 1, !46, i64 33, i64 1, !46, i64 36, i64 4, !50}
!310 = !{!72, !41, i64 4}
!311 = !{!312, !36, i64 0}
!312 = !{!"ifs_ivopts_data", !36, i64 0, !36, i64 8, !36, i64 16}
!313 = !{!312, !36, i64 8}
!314 = !{!312, !36, i64 16}
!315 = distinct !{!315, !52, !53}
!316 = !{!83, !36, i64 16}
!317 = distinct !{!317, !52, !53}
!318 = !{!218, !41, i64 4}
!319 = !{!320, !41, i64 0}
!320 = !{!"VEC_address_cost_data_base", !41, i64 0, !41, i64 4, !37, i64 8}
!321 = !{!320, !41, i64 4}
!322 = distinct !{!322, !52, !53}
!323 = !{!324, !42, i64 8}
!324 = !{!"", !42, i64 0, !42, i64 8, !37, i64 16}
!325 = distinct !{!325, !52, !53}
!326 = !{!324, !42, i64 0}
!327 = distinct !{!327, !52, !53}
!328 = distinct !{!328, !52, !53}
!329 = distinct !{!329, !52, !53}
!330 = distinct !{!330, !52, !53}
!331 = !{i64 0, i64 8, !89, i64 8, i64 8, !89}
!332 = !{i64 0, i64 8, !89}
!333 = !{!334, !37, i64 478}
!334 = !{!"rtl_data", !335, i64 0, !336, i64 40, !337, i64 96, !338, i64 112, !340, i64 208, !341, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!335 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!336 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!337 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!338 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !339, i64 24, !36, i64 88}
!339 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!340 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!341 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!342 = distinct !{!342, !52, !53}
!343 = !{!101, !36, i64 1128}
!344 = distinct !{!344, !52, !53}
!345 = !{!123, !41, i64 4}
!346 = distinct !{!346, !52, !53}
!347 = distinct !{!347, !52, !53}
!348 = distinct !{!348, !52, !53}
!349 = !{!250, !41, i64 36}
!350 = !{!250, !41, i64 32}
!351 = !{!250, !41, i64 48}
!352 = !{i64 0, i64 4, !50}
!353 = distinct !{!353, !52, !53}
!354 = distinct !{!354, !52, !53}
!355 = distinct !{!355, !52, !53}
!356 = distinct !{!356, !52, !53}
!357 = distinct !{!357, !52, !53}
!358 = distinct !{!358, !52, !53}
!359 = distinct !{!359, !52, !53}
!360 = distinct !{!360, !52, !53}
!361 = distinct !{!361, !52, !53}
!362 = distinct !{!362, !53}
!363 = distinct !{!363, !52, !53}
!364 = distinct !{!364, !52, !53}
!365 = distinct !{!365, !52, !53}
!366 = distinct !{!366, !52, !53}
!367 = distinct !{!367, !52, !53}
!368 = distinct !{!368, !53}
!369 = distinct !{!369, !52, !53}
!370 = distinct !{!370, !52, !53}
!371 = distinct !{!371, !52, !53}
