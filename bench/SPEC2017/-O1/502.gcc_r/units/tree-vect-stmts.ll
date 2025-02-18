; ModuleID = 'tree-vect-stmts.c'
source_filename = "tree-vect-stmts.c"
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
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct._slp_tree = type { ptr, ptr, ptr, ptr, i32, %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct._slp_instance = type { ptr, i32, i32, %struct.anon.2, ptr, ptr, ptr }
%struct.anon.2 = type { i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [41 x i8] c"=== vect_mark_stmts_to_be_vectorized ===\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"init: phi relevant? \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"init: stmt relevant? \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"worklist: examine stmt: \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unsupported use of reduction.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"unsupported use of nested cycle.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unsupported use of double reduction.\00", align 1
@ix86_cost = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"tree-vect-stmts.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"vect_model_simple_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"vect_model_store_cost: strided group_size = %d .\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"vect_model_store_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"vect_model_load_cost: strided group_size = %d .\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"vect_model_load_cost: aligned.\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"vect_model_load_cost: unaligned supported by hardware.\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.15 = private unnamed_addr constant [52 x i8] c"vect_model_load_cost: unaligned software pipelined.\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"vect_model_load_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"cst_\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"created new init_stmt: \00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"vect_get_vec_def_for_operand: \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"def =  \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"  def_stmt =  \00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Create vector_cst. nunits = %d\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Create vector_inv.\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"add new stmt: \00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"value used after loop.\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"==> examining statement: \00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"not vectorized: stmt has volatile operands\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"irrelevant.\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"get vectype for scalar type:  \00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"not SLPed: unsupported data-type \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"vectype:  \00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.32 = private unnamed_addr constant [35 x i8] c"not vectorized: relevant stmt not \00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"supported: \00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"not vectorized: live stmt not \00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"not vectorized: the size of group of strided accesses is not a power of 2\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"stmt not supported.\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Record the vdef for outer-loop vectorization.\00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [35 x i8] c"get vectype with %d units of type \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"vectype: \00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"mode not supported by target.\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"vect_is_simple_use: operand \00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"non-associatable copy.\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"not ssa-name.\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"no def_stmt.\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"def_stmt: \00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Unsupported pattern.\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"type of def: %d.\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"unsupported defining stmt: \00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"Unordered widening operation detected.\00", align 1
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.50 = private unnamed_addr constant [37 x i8] c"vec_stmt_relevant_p: stmt has vdefs.\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"vec_stmt_relevant_p: used out of loop.\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"mark relevant %d, live %d.\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"last stmt in pattern. don't mark relevant/live.\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"already marked relevant/live.\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"not vectorized: unsupported use in stmt.\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"def_stmt is out of loop.\00", align 1
@.str.59 = private unnamed_addr constant [48 x i8] c"reduc-stmt defining reduc-phi in the same nest.\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"outer-loop def-stmt defining inner-loop stmt.\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"inner-loop def-stmt defining outer-loop stmt.\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.63 = private unnamed_addr constant [16 x i8] c"use not simple.\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"=== vectorizable_promotion ===\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"transform type promotion operation. ncopies = %d.\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"=== vectorizable_demotion ===\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"transform type demotion operation. ncopies = %d.\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"conversion not supported by target.\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"transform conversion.\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"num. args = %d (not unary/binary op).\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"vector/vector shift/rotate found.\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"vector/scalar shift/rotate found.\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"operand mode requires invariant argument.\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"no optab.\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"op not supported by target.\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"proceeding using word mode.\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"not worthwhile without SIMD support.\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"=== vectorizable_operation ===\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"transform binary/unary operation.\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"operand 1 using scalar mode.\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"=== vectorizable_assignment ===\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"transform assignment.\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"multiple types in nested loop.\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.84 = private unnamed_addr constant [36 x i8] c"Aligned load, but unsupported type.\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"???  operands of different types\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"transform load.\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"argument types differ.\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"function is not vectorizable.\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"=== vectorizable_call ===\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"transform operation.\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"transform store. ncopies = %d\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !44 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !45
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !44 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !44 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !61

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_mark_stmts_to_be_vectorized(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %14 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %18 = tail call i64 @fwrite(ptr nonnull @.str, i64 40, i64 1, ptr %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #17
  store ptr %20, ptr %5, align 8, !tbaa !45
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = zext i32 %13 to i64
  br label %27

24:                                               ; preds = %90, %19
  %25 = load i32, ptr %7, align 4, !tbaa !60
  %26 = load i8, ptr %6, align 1, !tbaa !56
  br label %94

27:                                               ; preds = %22, %90
  %28 = phi i64 [ 0, %22 ], [ %91, %90 ]
  %29 = getelementptr inbounds ptr, ptr %11, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %30) #17
  %31 = load ptr, ptr %8, align 8, !tbaa.struct !71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %27, %48
  %34 = phi ptr [ %50, %48 ], [ %31, %27 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %40 = call i64 @fwrite(ptr nonnull @.str.1, i64 20, i64 1, ptr %39)
  %41 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %41, ptr noundef %35, i32 noundef 0, i32 noundef 2) #17
  br label %42

42:                                               ; preds = %38, %33
  %43 = call fastcc zeroext i8 @vect_stmt_relevant_p(ptr noundef %35, ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6), !range !74
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %7, align 4, !tbaa !60
  %47 = load i8, ptr %6, align 1, !tbaa !56
  call fastcc void @vect_mark_relevant(ptr noundef nonnull %5, ptr noundef %35, i32 noundef %46, i8 noundef zeroext %47)
  br label %48

48:                                               ; preds = %42, %45
  %49 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %34, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !75
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %33, !llvm.loop !76

52:                                               ; preds = %48, %27
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %54 = load i32, ptr %53, align 8, !tbaa !77, !noalias !79
  %55 = and i32 %54, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !56, !noalias !79
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !82, !noalias !79
  br label %63

63:                                               ; preds = %61, %57, %52
  %64 = phi ptr [ %62, %61 ], [ null, %57 ], [ null, %52 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %64, align 8, !tbaa !84, !noalias !79
  br label %68

68:                                               ; preds = %63, %66
  %69 = phi ptr [ %67, %66 ], [ null, %63 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %68, %86
  %72 = phi ptr [ %88, %86 ], [ %69, %68 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %78 = call i64 @fwrite(ptr nonnull @.str.2, i64 21, i64 1, ptr %77)
  %79 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %79, ptr noundef %73, i32 noundef 0, i32 noundef 2) #17
  br label %80

80:                                               ; preds = %76, %71
  %81 = call fastcc zeroext i8 @vect_stmt_relevant_p(ptr noundef %73, ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6), !range !74
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %7, align 4, !tbaa !60
  %85 = load i8, ptr %6, align 1, !tbaa !56
  call fastcc void @vect_mark_relevant(ptr noundef nonnull %5, ptr noundef %73, i32 noundef %84, i8 noundef zeroext %85)
  br label %86

86:                                               ; preds = %80, %83
  %87 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %72, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %71, !llvm.loop !86

90:                                               ; preds = %86, %68
  %91 = add nuw nsw i64 %28, 1
  %92 = icmp eq i64 %91, %23
  br i1 %92, label %24, label %27, !llvm.loop !87

93:                                               ; preds = %507, %211
  br label %94, !llvm.loop !88

94:                                               ; preds = %24, %93
  %95 = phi i8 [ %26, %24 ], [ %170, %93 ]
  %96 = phi i32 [ %25, %24 ], [ %171, %93 ]
  %97 = load ptr, ptr %5, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %97, align 8, !tbaa !89
  br label %101

101:                                              ; preds = %94, %99
  %102 = phi i32 [ %100, %99 ], [ 0, %94 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %513, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %97, align 8, !tbaa !89
  %106 = add i32 %105, -1
  store i32 %106, ptr %97, align 8, !tbaa !89
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.VEC_gimple_base, ptr %97, i64 0, i32 2, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !45
  %110 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  %113 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %114 = call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %113)
  %115 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %115, ptr noundef %109, i32 noundef 0, i32 noundef 2) #17
  br label %116

116:                                              ; preds = %112, %104
  %117 = getelementptr inbounds %struct.gimple_statement_base, ptr %109, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !56
  %119 = icmp ne i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = load ptr, ptr @stmt_vec_info_vec, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = load i32, ptr %120, align 8, !tbaa !91
  br label %124

124:                                              ; preds = %122, %116
  %125 = phi i32 [ %123, %122 ], [ 0, %116 ]
  %126 = icmp ugt i32 %118, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %128

128:                                              ; preds = %127, %124
  %129 = load ptr, ptr @stmt_vec_info_vec, align 8
  %130 = add i32 %118, -1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %129, i64 0, i32 2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !45
  %134 = getelementptr inbounds %struct._stmt_vec_info, ptr %133, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !93
  %136 = getelementptr inbounds %struct._stmt_vec_info, ptr %133, i64 0, i32 4
  %137 = load i8, ptr %136, align 4, !tbaa !96
  %138 = getelementptr inbounds %struct._stmt_vec_info, ptr %133, i64 0, i32 16
  %139 = load i32, ptr %138, align 8, !tbaa !97
  switch i32 %139, label %169 [
    i32 5, label %140
    i32 7, label %152
    i32 6, label %161
  ]

140:                                              ; preds = %128
  switch i32 %135, label %145 [
    i32 0, label %169
    i32 3, label %141
  ]

141:                                              ; preds = %140
  %142 = load i32, ptr %109, align 8
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 16
  br i1 %144, label %169, label %145

145:                                              ; preds = %141, %140
  store i32 %135, ptr %7, align 4, !tbaa !60
  store i8 %137, ptr %6, align 1, !tbaa !56
  %146 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %150 = call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr %149)
  br label %151

151:                                              ; preds = %145, %148
  call void @free(ptr noundef %97)
  store ptr null, ptr %5, align 8, !tbaa !45
  br label %516

152:                                              ; preds = %128
  %153 = icmp ugt i32 %135, 2
  br i1 %153, label %154, label %169

154:                                              ; preds = %152
  store i32 %135, ptr %7, align 4, !tbaa !60
  store i8 %137, ptr %6, align 1, !tbaa !56
  %155 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %159 = call i64 @fwrite(ptr nonnull @.str.5, i64 32, i64 1, ptr %158)
  br label %160

160:                                              ; preds = %154, %157
  call void @free(ptr noundef %97)
  store ptr null, ptr %5, align 8, !tbaa !45
  br label %516

161:                                              ; preds = %128
  switch i32 %135, label %162 [
    i32 3, label %169
    i32 0, label %169
  ]

162:                                              ; preds = %161
  store i32 %135, ptr %7, align 4, !tbaa !60
  store i8 %137, ptr %6, align 1, !tbaa !56
  %163 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %167 = call i64 @fwrite(ptr nonnull @.str.6, i64 36, i64 1, ptr %166)
  br label %168

168:                                              ; preds = %162, %165
  call void @free(ptr noundef %97)
  store ptr null, ptr %5, align 8, !tbaa !45
  br label %516

169:                                              ; preds = %161, %161, %152, %141, %140, %128
  %170 = phi i8 [ %137, %128 ], [ 0, %140 ], [ 0, %141 ], [ 0, %152 ], [ 0, %161 ], [ 0, %161 ]
  %171 = phi i32 [ %135, %128 ], [ 3, %140 ], [ %135, %141 ], [ %135, %152 ], [ %135, %161 ], [ %135, %161 ]
  %172 = load i32, ptr %109, align 8
  %173 = and i32 %172, 255
  %174 = icmp eq i32 %173, 16
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.gimple_statement_phi, ptr %109, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !56
  %178 = call zeroext i8 @is_gimple_reg(ptr noundef %177) #17
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %211, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.gimple_statement_phi, ptr %109, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !56
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.gimple_statement_phi, ptr %109, i64 0, i32 4, i64 0
  br label %211

186:                                              ; preds = %169
  %187 = add nsw i32 %173, -10
  %188 = icmp ult i32 %187, -9
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %109, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !56
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi ptr [ %191, %189 ], [ null, %186 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %205, label %195

195:                                              ; preds = %192
  %196 = and i32 %172, 254
  %197 = add nsw i32 %196, -10
  %198 = icmp ult i32 %197, -4
  br i1 %198, label %205, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %109, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !56
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr %193, align 8, !tbaa !98
  br label %205

205:                                              ; preds = %203, %199, %195, %192
  %206 = phi ptr [ %193, %192 ], [ %193, %195 ], [ %193, %199 ], [ %204, %203 ]
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.use_optype_d, ptr %206, i64 0, i32 1
  %210 = load ptr, ptr %206, align 8, !tbaa !98
  br label %211

211:                                              ; preds = %208, %205, %184, %175, %180
  %212 = phi ptr [ %109, %184 ], [ null, %175 ], [ %109, %180 ], [ null, %205 ], [ null, %208 ]
  %213 = phi i32 [ %182, %184 ], [ 0, %175 ], [ %182, %180 ], [ 0, %205 ], [ 0, %208 ]
  %214 = phi i32 [ 1, %184 ], [ 0, %175 ], [ 0, %180 ], [ 0, %205 ], [ 0, %208 ]
  %215 = phi ptr [ null, %184 ], [ null, %175 ], [ null, %180 ], [ %206, %205 ], [ %210, %208 ]
  %216 = phi i1 [ true, %184 ], [ false, %175 ], [ false, %180 ], [ false, %205 ], [ true, %208 ]
  %217 = phi i8 [ 0, %184 ], [ 1, %175 ], [ 1, %180 ], [ 1, %205 ], [ 0, %208 ]
  %218 = phi ptr [ %185, %184 ], [ null, %175 ], [ null, %180 ], [ null, %205 ], [ %209, %208 ]
  %219 = getelementptr ptr, ptr %109, i64 1
  br i1 %216, label %220, label %93

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.gimple_statement_phi, ptr %212, i64 0, i32 1
  br label %222

222:                                              ; preds = %220, %507
  %223 = phi ptr [ %218, %220 ], [ %511, %507 ]
  %224 = phi i8 [ %217, %220 ], [ %510, %507 ]
  %225 = phi ptr [ %215, %220 ], [ %509, %507 ]
  %226 = phi i32 [ %214, %220 ], [ %508, %507 ]
  %227 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %223, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !101
  %229 = load ptr, ptr %228, align 8, !tbaa !45
  %230 = load ptr, ptr %0, align 8, !tbaa !64
  %231 = load i32, ptr %117, align 4, !tbaa !56
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %248, label %233

233:                                              ; preds = %222
  %234 = load ptr, ptr @stmt_vec_info_vec, align 8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = load i32, ptr %234, align 8, !tbaa !91
  br label %238

238:                                              ; preds = %236, %233
  %239 = phi i32 [ %237, %236 ], [ 0, %233 ]
  %240 = icmp ugt i32 %231, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %242

242:                                              ; preds = %241, %238
  %243 = load ptr, ptr @stmt_vec_info_vec, align 8
  %244 = add i32 %231, -1
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %243, i64 0, i32 2, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !45
  br label %248

248:                                              ; preds = %242, %222
  %249 = phi ptr [ %247, %242 ], [ null, %222 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %250 = load i32, ptr %117, align 4, !tbaa !56
  %251 = icmp ne i32 %250, 0
  call void @llvm.assume(i1 %251)
  %252 = load ptr, ptr @stmt_vec_info_vec, align 8
  %253 = icmp eq ptr %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %248
  %255 = load i32, ptr %252, align 8, !tbaa !91
  br label %256

256:                                              ; preds = %254, %248
  %257 = phi i32 [ %255, %254 ], [ 0, %248 ]
  %258 = icmp ugt i32 %250, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %260

260:                                              ; preds = %259, %256
  %261 = load ptr, ptr @stmt_vec_info_vec, align 8
  %262 = add i32 %250, -1
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %261, i64 0, i32 2, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !45
  %266 = getelementptr inbounds %struct._stmt_vec_info, ptr %265, i64 0, i32 7
  %267 = load ptr, ptr %266, align 8, !tbaa !102
  %268 = icmp eq ptr %267, null
  br i1 %268, label %316, label %269

269:                                              ; preds = %260
  %270 = call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %109) #17
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %316, label %272

272:                                              ; preds = %269
  %273 = load i32, ptr %109, align 8
  %274 = and i32 %273, 255
  %275 = add nsw i32 %274, -1
  %276 = icmp ult i32 %275, 9
  call void @llvm.assume(i1 %276)
  %277 = zext nneg i32 %274 to i64
  %278 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !60
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !103
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %272
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %285

285:                                              ; preds = %284, %272
  %286 = getelementptr inbounds i8, ptr %109, i64 %282
  %287 = load ptr, ptr %286, align 8, !tbaa !45
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %288, 65535
  %290 = icmp eq i64 %289, 141
  br i1 %290, label %316, label %291

291:                                              ; preds = %285
  %292 = load i32, ptr %109, align 8
  %293 = and i32 %292, 255
  %294 = add nsw i32 %293, -10
  %295 = icmp ult i32 %294, -9
  br i1 %295, label %308, label %296

296:                                              ; preds = %291
  %297 = zext nneg i32 %293 to i64
  %298 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !60
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !103
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %305

305:                                              ; preds = %304, %296
  %306 = getelementptr i8, ptr %219, i64 %302
  %307 = load ptr, ptr %306, align 8, !tbaa !45
  br label %308

308:                                              ; preds = %305, %291
  %309 = phi ptr [ %307, %305 ], [ null, %291 ]
  %310 = load i64, ptr %309, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 141
  br i1 %312, label %313, label %316

313:                                              ; preds = %308
  %314 = icmp eq ptr %309, %229
  %315 = zext i1 %314 to i8
  br label %316

316:                                              ; preds = %313, %308, %285, %269, %260
  %317 = phi i8 [ 1, %260 ], [ 0, %269 ], [ 0, %285 ], [ 0, %308 ], [ %315, %313 ]
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %492, label %319

319:                                              ; preds = %316
  %320 = call zeroext i8 @vect_is_simple_use(ptr noundef %229, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4), !range !74
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  store i32 %171, ptr %7, align 4, !tbaa !60
  store i8 %170, ptr %6, align 1, !tbaa !56
  %323 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #17
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %487, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %327 = call i64 @fwrite(ptr nonnull @.str.57, i64 40, i64 1, ptr %326)
  br label %487

328:                                              ; preds = %319
  %329 = load ptr, ptr %3, align 8, !tbaa !45
  %330 = icmp eq ptr %329, null
  br i1 %330, label %492, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr %329, align 8
  %333 = and i32 %332, 255
  %334 = icmp eq i32 %333, 18
  br i1 %334, label %492, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.gimple_statement_base, ptr %329, i64 0, i32 4
  %337 = load ptr, ptr %336, align 8, !tbaa !56
  %338 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %230, ptr noundef %337) #17
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %492, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %345 = call i64 @fwrite(ptr nonnull @.str.58, i64 24, i64 1, ptr %344)
  br label %492

346:                                              ; preds = %335
  %347 = getelementptr inbounds %struct.gimple_statement_base, ptr %329, i64 0, i32 1
  %348 = load i32, ptr %347, align 4, !tbaa !56
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %365, label %350

350:                                              ; preds = %346
  %351 = load ptr, ptr @stmt_vec_info_vec, align 8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = load i32, ptr %351, align 8, !tbaa !91
  br label %355

355:                                              ; preds = %353, %350
  %356 = phi i32 [ %354, %353 ], [ 0, %350 ]
  %357 = icmp ugt i32 %348, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %359

359:                                              ; preds = %358, %355
  %360 = load ptr, ptr @stmt_vec_info_vec, align 8
  %361 = add i32 %348, -1
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %360, i64 0, i32 2, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !45
  br label %365

365:                                              ; preds = %359, %346
  %366 = phi ptr [ %364, %359 ], [ null, %346 ]
  %367 = getelementptr inbounds %struct.gimple_statement_base, ptr %109, i64 0, i32 4
  %368 = load ptr, ptr %367, align 8, !tbaa !56
  %369 = load i32, ptr %109, align 8
  %370 = and i32 %369, 255
  %371 = icmp eq i32 %370, 16
  br i1 %371, label %372, label %435

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct._stmt_vec_info, ptr %249, i64 0, i32 16
  %374 = load i32, ptr %373, align 8, !tbaa !97
  %375 = icmp eq i32 %374, 5
  br i1 %375, label %376, label %435

376:                                              ; preds = %372
  %377 = load i32, ptr %329, align 8
  %378 = and i32 %377, 255
  %379 = icmp eq i32 %378, 16
  br i1 %379, label %435, label %380

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct._stmt_vec_info, ptr %366, i64 0, i32 16
  %382 = load i32, ptr %381, align 8, !tbaa !97
  %383 = icmp eq i32 %382, 5
  br i1 %383, label %384, label %435

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !104
  %387 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !104
  %389 = icmp eq ptr %386, %388
  br i1 %389, label %390, label %435

390:                                              ; preds = %384
  %391 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %395 = call i64 @fwrite(ptr nonnull @.str.59, i64 47, i64 1, ptr %394)
  br label %396

396:                                              ; preds = %393, %390
  %397 = getelementptr inbounds %struct._stmt_vec_info, ptr %366, i64 0, i32 13
  %398 = load i8, ptr %397, align 8, !tbaa !105
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %421, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct._stmt_vec_info, ptr %366, i64 0, i32 14
  %402 = load ptr, ptr %401, align 8, !tbaa !106
  %403 = getelementptr inbounds %struct.gimple_statement_base, ptr %402, i64 0, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !56
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %421, label %406

406:                                              ; preds = %400
  %407 = load ptr, ptr @stmt_vec_info_vec, align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %411, label %409

409:                                              ; preds = %406
  %410 = load i32, ptr %407, align 8, !tbaa !91
  br label %411

411:                                              ; preds = %409, %406
  %412 = phi i32 [ %410, %409 ], [ 0, %406 ]
  %413 = icmp ugt i32 %404, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %415

415:                                              ; preds = %414, %411
  %416 = load ptr, ptr @stmt_vec_info_vec, align 8
  %417 = add i32 %404, -1
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %416, i64 0, i32 2, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !45
  br label %421

421:                                              ; preds = %415, %400, %396
  %422 = phi ptr [ %366, %396 ], [ %420, %415 ], [ null, %400 ]
  %423 = getelementptr inbounds %struct._stmt_vec_info, ptr %422, i64 0, i32 3
  %424 = load i32, ptr %423, align 8, !tbaa !93
  %425 = icmp ult i32 %424, 3
  br i1 %425, label %427, label %426

426:                                              ; preds = %421
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 287, ptr noundef nonnull @.str.8) #17
  br label %427

427:                                              ; preds = %426, %421
  %428 = getelementptr inbounds %struct._stmt_vec_info, ptr %422, i64 0, i32 4
  %429 = load i8, ptr %428, align 4, !tbaa !96
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %492

431:                                              ; preds = %427
  %432 = load i32, ptr %423, align 8, !tbaa !93
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %492

434:                                              ; preds = %431
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 289, ptr noundef nonnull @.str.8) #17
  br label %492

435:                                              ; preds = %384, %380, %376, %372, %365
  %436 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !104
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !104
  %440 = call zeroext i8 @flow_loop_nested_p(ptr noundef %437, ptr noundef %439) #17
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %465, label %442

442:                                              ; preds = %435
  %443 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %442
  %446 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %447 = call i64 @fwrite(ptr nonnull @.str.60, i64 45, i64 1, ptr %446)
  br label %448

448:                                              ; preds = %445, %442
  switch i32 %171, label %464 [
    i32 0, label %449
    i32 1, label %454
    i32 2, label %459
    i32 4, label %485
  ]

449:                                              ; preds = %448
  %450 = getelementptr inbounds %struct._stmt_vec_info, ptr %249, i64 0, i32 16
  %451 = load i32, ptr %450, align 8, !tbaa !97
  %452 = icmp eq i32 %451, 7
  %453 = select i1 %452, i32 4, i32 0
  br label %485

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct._stmt_vec_info, ptr %249, i64 0, i32 16
  %456 = load i32, ptr %455, align 8, !tbaa !97
  %457 = icmp eq i32 %456, 5
  br i1 %457, label %458, label %485

458:                                              ; preds = %454
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 313, ptr noundef nonnull @.str.8) #17
  br label %485

459:                                              ; preds = %448
  %460 = getelementptr inbounds %struct._stmt_vec_info, ptr %249, i64 0, i32 16
  %461 = load i32, ptr %460, align 8, !tbaa !97
  %462 = icmp eq i32 %461, 5
  br i1 %462, label %463, label %485

463:                                              ; preds = %459
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 318, ptr noundef nonnull @.str.8) #17
  br label %485

464:                                              ; preds = %448
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 326, ptr noundef nonnull @.str.8) #17
  br label %485

465:                                              ; preds = %435
  %466 = load ptr, ptr %438, align 8, !tbaa !104
  %467 = load ptr, ptr %436, align 8, !tbaa !104
  %468 = call zeroext i8 @flow_loop_nested_p(ptr noundef %466, ptr noundef %467) #17
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %485, label %470

470:                                              ; preds = %465
  %471 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %475 = call i64 @fwrite(ptr nonnull @.str.61, i64 45, i64 1, ptr %474)
  br label %476

476:                                              ; preds = %473, %470
  switch i32 %171, label %484 [
    i32 0, label %477
    i32 3, label %485
    i32 4, label %483
  ]

477:                                              ; preds = %476
  %478 = getelementptr inbounds %struct._stmt_vec_info, ptr %249, i64 0, i32 16
  %479 = load i32, ptr %478, align 8, !tbaa !97
  %480 = add i32 %479, -5
  %481 = icmp ult i32 %480, 2
  %482 = zext i1 %481 to i32
  br label %485

483:                                              ; preds = %476
  br label %485

484:                                              ; preds = %476
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 359, ptr noundef nonnull @.str.8) #17
  br label %485

485:                                              ; preds = %484, %483, %477, %476, %465, %464, %463, %459, %458, %454, %449, %448
  %486 = phi i32 [ %171, %464 ], [ %171, %448 ], [ %453, %449 ], [ %171, %484 ], [ 2, %483 ], [ %482, %477 ], [ %171, %465 ], [ 3, %454 ], [ 3, %458 ], [ 4, %459 ], [ 4, %463 ], [ 1, %476 ]
  call fastcc void @vect_mark_relevant(ptr noundef nonnull %5, ptr noundef nonnull %329, i32 noundef %486, i8 noundef zeroext %170)
  br label %492

487:                                              ; preds = %322, %325
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %488 = load ptr, ptr %5, align 8, !tbaa !45
  %489 = icmp eq ptr %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  call void @free(ptr noundef %488)
  br label %491

491:                                              ; preds = %487, %490
  store ptr null, ptr %5, align 8, !tbaa !45
  br label %516

492:                                              ; preds = %434, %431, %427, %340, %343, %328, %331, %316, %485
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %493 = icmp eq ptr %225, null
  br i1 %493, label %497, label %494

494:                                              ; preds = %492
  %495 = getelementptr inbounds %struct.use_optype_d, ptr %225, i64 0, i32 1
  %496 = load ptr, ptr %225, align 8, !tbaa !98
  br label %507

497:                                              ; preds = %492
  %498 = icmp slt i32 %226, %213
  br i1 %498, label %499, label %507

499:                                              ; preds = %497
  %500 = add nsw i32 %226, 1
  %501 = load i32, ptr %221, align 8, !tbaa !56
  %502 = icmp ult i32 %501, %226
  br i1 %502, label %503, label %504

503:                                              ; preds = %499
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 3103, ptr noundef nonnull @.str.8) #17
  br label %504

504:                                              ; preds = %503, %499
  %505 = zext i32 %226 to i64
  %506 = getelementptr inbounds %struct.gimple_statement_phi, ptr %212, i64 0, i32 4, i64 %505
  br label %507

507:                                              ; preds = %497, %494, %504
  %508 = phi i32 [ %500, %504 ], [ %226, %494 ], [ %226, %497 ]
  %509 = phi ptr [ %225, %504 ], [ %496, %494 ], [ %225, %497 ]
  %510 = phi i8 [ %224, %504 ], [ %224, %494 ], [ 1, %497 ]
  %511 = phi ptr [ %506, %504 ], [ %495, %494 ], [ null, %497 ]
  %512 = icmp eq i8 %510, 0
  br i1 %512, label %222, label %93, !llvm.loop !107

513:                                              ; preds = %101
  store i32 %96, ptr %7, align 4, !tbaa !60
  store i8 %95, ptr %6, align 1, !tbaa !56
  br i1 %98, label %515, label %514

514:                                              ; preds = %513
  call void @free(ptr noundef %97)
  br label %515

515:                                              ; preds = %513, %514
  store ptr null, ptr %5, align 8, !tbaa !45
  br label %516

516:                                              ; preds = %168, %160, %151, %491, %515
  %517 = phi i8 [ 1, %515 ], [ 0, %491 ], [ 0, %151 ], [ 0, %160 ], [ 0, %168 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %517
}

declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @vect_stmt_relevant_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #9 !prof !44 {
  %5 = load ptr, ptr %1, align 8, !tbaa !64
  store i32 0, ptr %2, align 4, !tbaa !60
  store i8 0, ptr %3, align 1, !tbaa !56
  %6 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %0) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp ne i32 %10, 0
  tail call void @llvm.assume(i1 %11)
  %12 = load ptr, ptr @stmt_vec_info_vec, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %12, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %18 = icmp ugt i32 %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = add i32 %10, -1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %21, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = load i32, ptr %25, align 8, !tbaa !108
  %27 = icmp eq i32 %26, 12
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 4, ptr %2, align 4, !tbaa !60
  br label %29

29:                                               ; preds = %28, %20, %4
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = and i32 %30, 254
  %35 = add nsw i32 %34, -10
  %36 = icmp ult i32 %35, -4
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %46 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 36, i64 1, ptr %45)
  br label %47

47:                                               ; preds = %44, %41
  store i32 4, ptr %2, align 4, !tbaa !60
  br label %48

48:                                               ; preds = %33, %37, %47, %29
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = tail call zeroext i8 @is_gimple_reg(ptr noundef %54) #17
  %56 = icmp eq i8 %55, 0
  %57 = zext i1 %56 to i8
  %58 = select i1 %56, ptr null, ptr %53
  br label %85

59:                                               ; preds = %48
  %60 = add nsw i32 %50, -10
  %61 = icmp ult i32 %60, -9
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi ptr [ %64, %62 ], [ null, %59 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = and i32 %49, 254
  %70 = add nsw i32 %69, -10
  %71 = icmp ult i32 %70, -4
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %66, align 8, !tbaa !109
  br label %78

78:                                               ; preds = %76, %72, %68, %65
  %79 = phi ptr [ %66, %65 ], [ %66, %68 ], [ %66, %72 ], [ %77, %76 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.def_optype_d, ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !111
  %84 = load ptr, ptr %79, align 8, !tbaa !109
  br label %85

85:                                               ; preds = %81, %78, %52
  %86 = phi ptr [ null, %52 ], [ %84, %81 ], [ %79, %78 ]
  %87 = phi i8 [ %57, %52 ], [ 0, %81 ], [ 1, %78 ]
  %88 = phi ptr [ %58, %52 ], [ %83, %81 ], [ null, %78 ]
  %89 = icmp eq i8 %87, 0
  br i1 %89, label %90, label %143

90:                                               ; preds = %85, %138
  %91 = phi ptr [ %141, %138 ], [ %88, %85 ]
  %92 = phi i8 [ %140, %138 ], [ %87, %85 ]
  %93 = phi ptr [ %139, %138 ], [ %86, %85 ]
  %94 = load ptr, ptr %91, align 8, !tbaa !45
  %95 = getelementptr inbounds %struct.tree_ssa_name, ptr %94, i64 0, i32 5
  %96 = getelementptr inbounds %struct.tree_ssa_name, ptr %94, i64 0, i32 5, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !112
  %98 = icmp eq ptr %97, %95
  br i1 %98, label %132, label %99

99:                                               ; preds = %90, %126
  %100 = phi ptr [ %130, %126 ], [ %97, %90 ]
  %101 = phi ptr [ %128, %126 ], [ %97, %90 ]
  %102 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %100, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !56
  %104 = getelementptr inbounds %struct.gimple_statement_base, ptr %103, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  %106 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %5, ptr noundef %105) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %99
  %109 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %113 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 38, i64 1, ptr %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load ptr, ptr %102, align 8, !tbaa !56
  %116 = load i32, ptr %115, align 8
  %117 = trunc i32 %116 to i8
  switch i8 %117, label %118 [
    i8 2, label %126
    i8 16, label %119
  ]

118:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 153, ptr noundef nonnull @.str.8) #17
  br label %119

119:                                              ; preds = %114, %118
  %120 = tail call ptr @single_exit(ptr noundef %5) #17
  %121 = getelementptr inbounds %struct.edge_def, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !113
  %123 = icmp eq ptr %105, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 154, ptr noundef nonnull @.str.8) #17
  br label %125

125:                                              ; preds = %119, %124
  store i8 1, ptr %3, align 1, !tbaa !56
  br label %126

126:                                              ; preds = %114, %99, %125
  %127 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %101, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !112
  %129 = icmp eq ptr %128, %95
  %130 = select i1 %129, ptr null, ptr %128
  %131 = icmp eq ptr %128, %95
  br i1 %131, label %132, label %99, !llvm.loop !115

132:                                              ; preds = %126, %90
  %133 = icmp eq ptr %93, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.def_optype_d, ptr %93, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !111
  %137 = load ptr, ptr %93, align 8, !tbaa !109
  br label %138

138:                                              ; preds = %132, %134
  %139 = phi ptr [ %137, %134 ], [ %93, %132 ]
  %140 = phi i8 [ %92, %134 ], [ 1, %132 ]
  %141 = phi ptr [ %136, %134 ], [ null, %132 ]
  %142 = icmp eq i8 %140, 0
  br i1 %142, label %90, label %143, !llvm.loop !116

143:                                              ; preds = %138, %85
  %144 = load i8, ptr %3, align 1, !tbaa !56
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, ptr %2, align 4, !tbaa !60
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i8
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i8 [ 1, %143 ], [ %149, %146 ]
  ret i8 %151
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_mark_relevant(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !44 {
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = load ptr, ptr @stmt_vec_info_vec, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %8, align 8, !tbaa !91
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ 0, %4 ]
  %14 = icmp ugt i32 %6, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @stmt_vec_info_vec, align 8
  %18 = add i32 %6, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %17, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !93
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 4
  %25 = load i8, ptr %24, align 4, !tbaa !96
  %26 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %30 = zext i8 %3 to i32
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.53, i32 noundef %2, i32 noundef %30)
  br label %32

32:                                               ; preds = %28, %16
  %33 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 13
  %34 = load i8, ptr %33, align 8, !tbaa !105
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %43 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 47, i64 1, ptr %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !56
  %47 = icmp ne i32 %46, 0
  tail call void @llvm.assume(i1 %47)
  %48 = load ptr, ptr @stmt_vec_info_vec, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %48, align 8, !tbaa !91
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %51, %50 ], [ 0, %44 ]
  %54 = icmp ugt i32 %46, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %56

56:                                               ; preds = %55, %52
  %57 = load ptr, ptr @stmt_vec_info_vec, align 8
  %58 = add i32 %46, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %57, i64 0, i32 2, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct._stmt_vec_info, ptr %61, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 75, ptr noundef nonnull @.str.8) #17
  br label %66

66:                                               ; preds = %56, %65
  %67 = getelementptr inbounds %struct._stmt_vec_info, ptr %61, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !93
  %69 = getelementptr inbounds %struct._stmt_vec_info, ptr %61, i64 0, i32 4
  %70 = load i8, ptr %69, align 4, !tbaa !96
  br label %71

71:                                               ; preds = %66, %32
  %72 = phi ptr [ %61, %66 ], [ %21, %32 ]
  %73 = phi i32 [ %68, %66 ], [ %23, %32 ]
  %74 = phi i8 [ %70, %66 ], [ %25, %32 ]
  %75 = phi ptr [ %38, %66 ], [ %1, %32 ]
  %76 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 4
  %77 = load i8, ptr %76, align 4, !tbaa !96
  %78 = or i8 %77, %3
  store i8 %78, ptr %76, align 4, !tbaa !96
  %79 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !93
  %81 = icmp ult i32 %80, %2
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 %2, ptr %79, align 8, !tbaa !93
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32, ptr %79, align 8, !tbaa !93
  %85 = icmp eq i32 %84, %73
  %86 = icmp eq i8 %78, %74
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %93 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 29, i64 1, ptr %92)
  br label %110

94:                                               ; preds = %83
  %95 = load ptr, ptr %0, align 8, !tbaa !45
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.VEC_gimple_base, ptr %95, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !117
  %100 = load i32, ptr %95, align 8, !tbaa !89
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94, %97
  %103 = tail call ptr @vec_heap_p_reserve(ptr noundef %95, i32 noundef 1) #17
  store ptr %103, ptr %0, align 8, !tbaa !45
  br label %104

104:                                              ; preds = %97, %102
  %105 = load ptr, ptr %0, align 8, !tbaa !45
  %106 = load i32, ptr %105, align 8, !tbaa !89
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 8, !tbaa !89
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds %struct.VEC_gimple_base, ptr %105, i64 0, i32 2, i64 %108
  store ptr %75, ptr %109, align 8, !tbaa !45
  br label %110

110:                                              ; preds = %88, %91, %104
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cost_for_stmt(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !56
  %4 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 8, !tbaa !91
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = icmp ugt i32 %3, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %13

13:                                               ; preds = %12, %9
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %14, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = load i32, ptr %18, align 8, !tbaa !108
  switch i32 %19, label %32 [
    i32 1, label %20
    i32 2, label %24
    i32 3, label %28
    i32 6, label %28
    i32 5, label %28
    i32 7, label %28
    i32 8, label %28
    i32 9, label %28
    i32 10, label %28
    i32 11, label %28
    i32 4, label %28
  ]

20:                                               ; preds = %13
  %21 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.processor_costs, ptr %21, i64 0, i32 38
  %23 = load i32, ptr %22, align 4, !tbaa !118
  br label %33

24:                                               ; preds = %13
  %25 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.processor_costs, ptr %25, i64 0, i32 39
  %27 = load i32, ptr %26, align 4, !tbaa !120
  br label %33

28:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13
  %29 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.processor_costs, ptr %29, i64 0, i32 37
  %31 = load i32, ptr %30, align 4, !tbaa !121
  br label %33

32:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 570, ptr noundef nonnull @.str.8) #17
  br label %33

33:                                               ; preds = %32, %28, %24, %20
  %34 = phi i32 [ 0, %32 ], [ %31, %28 ], [ %27, %24 ], [ %23, %20 ]
  ret i32 %34
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_model_simple_cost(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) local_unnamed_addr #9 !prof !44 {
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 4, !tbaa !122
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.processor_costs, ptr %9, i64 0, i32 40
  %11 = load i32, ptr %10, align 4, !tbaa !123
  %12 = getelementptr inbounds %struct.processor_costs, ptr %9, i64 0, i32 42
  br label %13

13:                                               ; preds = %8, %23
  %14 = phi i64 [ 0, %8 ], [ %25, %23 ]
  %15 = phi i32 [ 0, %8 ], [ %24, %23 ]
  %16 = getelementptr inbounds i32, ptr %2, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !60
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %12, align 4, !tbaa !124
  %22 = add nsw i32 %21, %15
  br label %23

23:                                               ; preds = %13, %20
  %24 = phi i32 [ %22, %20 ], [ %15, %13 ]
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %14, 0
  br i1 %26, label %13, label %27, !llvm.loop !125

27:                                               ; preds = %23
  %28 = mul nsw i32 %11, %1
  %29 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.9, i32 noundef %28, i32 noundef %24)
  br label %34

34:                                               ; preds = %31, %27
  %35 = icmp eq ptr %3, null
  %36 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 5, i32 1
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  %38 = select i1 %35, ptr %37, ptr %36
  store i32 %28, ptr %38, align 4, !tbaa !60
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %40 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 5
  %41 = select i1 %35, ptr %39, ptr %40
  store i32 %24, ptr %41, align 4, !tbaa !60
  br label %42

42:                                               ; preds = %34, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_model_store_cost(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #9 !prof !44 {
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 4, !tbaa !122
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = add i32 %2, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.processor_costs, ptr %12, i64 0, i32 42
  %14 = load i32, ptr %13, align 4, !tbaa !124
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !126
  %19 = icmp eq ptr %18, null
  %20 = icmp ne ptr %3, null
  %21 = or i1 %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 19
  %28 = load i32, ptr %27, align 8, !tbaa !128
  br label %29

29:                                               ; preds = %26, %22, %15
  %30 = phi i32 [ 1, %15 ], [ %28, %26 ], [ 1, %22 ]
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = zext nneg i32 %30 to i64
  %34 = tail call i32 @exact_log2(i64 noundef %33) #17
  %35 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.processor_costs, ptr %35, i64 0, i32 40
  %37 = load i32, ptr %36, align 4, !tbaa !123
  %38 = mul i32 %30, %1
  %39 = mul i32 %38, %34
  %40 = mul nsw i32 %39, %37
  %41 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.10, i32 noundef %30)
  br label %46

46:                                               ; preds = %32, %43, %29
  %47 = phi i32 [ %40, %43 ], [ %40, %32 ], [ 0, %29 ]
  %48 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %49 = getelementptr inbounds %struct.processor_costs, ptr %48, i64 0, i32 45
  %50 = load i32, ptr %49, align 4, !tbaa !129
  %51 = mul nsw i32 %50, %1
  %52 = add nsw i32 %51, %47
  %53 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.11, i32 noundef %52, i32 noundef %16)
  br label %58

58:                                               ; preds = %55, %46
  %59 = icmp eq ptr %3, null
  %60 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 5, i32 1
  %61 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  %62 = select i1 %59, ptr %61, ptr %60
  store i32 %52, ptr %62, align 4, !tbaa !60
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %64 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 5
  %65 = select i1 %59, ptr %63, ptr %64
  store i32 %16, ptr %65, align 4, !tbaa !60
  br label %66

66:                                               ; preds = %58, %4
  ret void
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_model_load_cost(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #9 !prof !44 {
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !122
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %145, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %2, null
  %12 = or i1 %11, %10
  br i1 %12, label %39, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = icmp eq ptr %9, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 19
  %19 = load i32, ptr %18, align 8, !tbaa !128
  br label %20

20:                                               ; preds = %13, %17
  %21 = phi i32 [ %19, %17 ], [ 1, %13 ]
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %9, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !56
  %24 = icmp ne i32 %23, 0
  tail call void @llvm.assume(i1 %24)
  %25 = load ptr, ptr @stmt_vec_info_vec, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %25, align 8, !tbaa !91
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ]
  %31 = icmp ugt i32 %23, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %33

33:                                               ; preds = %32, %29
  %34 = load ptr, ptr @stmt_vec_info_vec, align 8
  %35 = add i32 %23, -1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %34, i64 0, i32 2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  br label %39

39:                                               ; preds = %7, %33
  %40 = phi i32 [ %21, %33 ], [ 1, %7 ]
  %41 = phi ptr [ %38, %33 ], [ %0, %7 ]
  %42 = getelementptr inbounds %struct._stmt_vec_info, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %43) #17
  %45 = icmp sgt i32 %40, 1
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = zext nneg i32 %40 to i64
  %48 = tail call i32 @exact_log2(i64 noundef %47) #17
  %49 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.processor_costs, ptr %49, i64 0, i32 40
  %51 = load i32, ptr %50, align 4, !tbaa !123
  %52 = mul i32 %40, %1
  %53 = mul i32 %52, %48
  %54 = mul nsw i32 %53, %51
  %55 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.12, i32 noundef %40)
  br label %60

60:                                               ; preds = %46, %57, %39
  %61 = phi i32 [ %54, %57 ], [ %54, %46 ], [ 0, %39 ]
  switch i32 %44, label %128 [
    i32 4, label %62
    i32 1, label %73
    i32 2, label %84
    i32 3, label %98
  ]

62:                                               ; preds = %60
  %63 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.processor_costs, ptr %63, i64 0, i32 43
  %65 = load i32, ptr %64, align 4, !tbaa !130
  %66 = mul nsw i32 %65, %1
  %67 = add nsw i32 %66, %61
  %68 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %129, label %70

70:                                               ; preds = %62
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %72 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 30, i64 1, ptr %71)
  br label %129

73:                                               ; preds = %60
  %74 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %75 = getelementptr inbounds %struct.processor_costs, ptr %74, i64 0, i32 44
  %76 = load i32, ptr %75, align 4, !tbaa !131
  %77 = mul nsw i32 %76, %1
  %78 = add nsw i32 %77, %61
  %79 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %129, label %81

81:                                               ; preds = %73
  %82 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %83 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 54, i64 1, ptr %82)
  br label %129

84:                                               ; preds = %60
  %85 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %86 = getelementptr inbounds %struct.processor_costs, ptr %85, i64 0, i32 43
  %87 = load i32, ptr %86, align 4, !tbaa !130
  %88 = shl nsw i32 %87, 1
  %89 = getelementptr inbounds %struct.processor_costs, ptr %85, i64 0, i32 40
  %90 = load i32, ptr %89, align 4, !tbaa !123
  %91 = add nsw i32 %88, %90
  %92 = mul nsw i32 %91, %1
  %93 = add nsw i32 %92, %61
  %94 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !132
  %95 = icmp eq ptr %94, null
  %96 = select i1 %95, i32 0, i32 %90
  %97 = add nsw i32 %93, %96
  br label %129

98:                                               ; preds = %60
  %99 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %103 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load ptr, ptr %8, align 8, !tbaa !126
  %106 = icmp eq ptr %105, null
  %107 = or i1 %45, %106
  %108 = or i1 %11, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.processor_costs, ptr %110, i64 0, i32 40
  %112 = load i32, ptr %111, align 4, !tbaa !123
  %113 = shl nsw i32 %112, 1
  %114 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !132
  %115 = icmp eq ptr %114, null
  %116 = mul nsw i32 %112, 3
  %117 = select i1 %115, i32 %113, i32 %116
  br label %118

118:                                              ; preds = %109, %104
  %119 = phi i32 [ 0, %104 ], [ %117, %109 ]
  %120 = load ptr, ptr @ix86_cost, align 8, !tbaa !45
  %121 = getelementptr inbounds %struct.processor_costs, ptr %120, i64 0, i32 43
  %122 = load i32, ptr %121, align 4, !tbaa !130
  %123 = getelementptr inbounds %struct.processor_costs, ptr %120, i64 0, i32 40
  %124 = load i32, ptr %123, align 4, !tbaa !123
  %125 = add nsw i32 %124, %122
  %126 = mul nsw i32 %125, %1
  %127 = add nsw i32 %126, %61
  br label %129

128:                                              ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 796, ptr noundef nonnull @.str.8) #17
  br label %129

129:                                              ; preds = %84, %73, %81, %62, %70, %128, %118
  %130 = phi i32 [ %61, %128 ], [ %127, %118 ], [ %78, %81 ], [ %78, %73 ], [ %67, %70 ], [ %67, %62 ], [ %97, %84 ]
  %131 = phi i32 [ 0, %128 ], [ %119, %118 ], [ 0, %81 ], [ 0, %73 ], [ 0, %70 ], [ 0, %62 ], [ 0, %84 ]
  %132 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #17
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.16, i32 noundef %130, i32 noundef %131)
  br label %137

137:                                              ; preds = %134, %129
  %138 = icmp eq ptr %2, null
  %139 = getelementptr inbounds %struct._slp_tree, ptr %2, i64 0, i32 5, i32 1
  %140 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  %141 = select i1 %138, ptr %140, ptr %139
  store i32 %130, ptr %141, align 4, !tbaa !60
  %142 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %143 = getelementptr inbounds %struct._slp_tree, ptr %2, i64 0, i32 5
  %144 = select i1 %138, ptr %142, ptr %143
  store i32 %131, ptr %144, align 4, !tbaa !60
  br label %145

145:                                              ; preds = %137, %3
  ret void
}

declare i32 @vect_supportable_dr_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_init_vector(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !44 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @stmt_vec_info_vec, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !91
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = icmp ugt i32 %7, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr @stmt_vec_info_vec, align 8
  %20 = add i32 %7, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %19, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %4, %18
  %25 = phi ptr [ %23, %18 ], [ null, %4 ]
  %26 = tail call ptr @vect_get_new_vect_var(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.17) #17
  %27 = tail call zeroext i8 @add_referenced_var(ptr noundef %26) #17
  %28 = tail call ptr @gimple_build_assign_stat(ptr noundef %26, ptr noundef %1) #17
  %29 = load ptr, ptr @cfun, align 8, !tbaa !45
  %30 = tail call ptr @make_ssa_name_fn(ptr noundef %29, ptr noundef %26, ptr noundef %28) #17
  %31 = load i32, ptr %28, align 8
  %32 = and i32 %31, 255
  %33 = add nsw i32 %32, -10
  %34 = icmp ult i32 %33, -9
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !56
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, ptr %28, align 8
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !60
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !103
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %51

51:                                               ; preds = %50, %40
  %52 = getelementptr inbounds i8, ptr %28, i64 %48
  store ptr %30, ptr %52, align 8, !tbaa !45
  %53 = icmp eq ptr %30, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %30, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  store ptr %28, ptr %59, align 8, !tbaa !56
  br label %60

60:                                               ; preds = %51, %54, %58
  %61 = icmp eq ptr %3, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef nonnull %28, ptr noundef nonnull %3)
  br label %124

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !144
  %66 = icmp eq ptr %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !64
  %69 = getelementptr inbounds %struct.loop, ptr %68, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !145
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !104
  %77 = icmp eq ptr %70, %76
  %78 = select i1 %77, ptr %70, ptr %68
  br label %79

79:                                               ; preds = %67, %72
  %80 = phi ptr [ %68, %67 ], [ %78, %72 ]
  %81 = tail call ptr @loop_preheader_edge(ptr noundef %80) #17
  %82 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef %81, ptr noundef nonnull %28) #17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %124, label %84

84:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 850, ptr noundef nonnull @.str.8) #17
  br label %124

85:                                               ; preds = %63
  %86 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 26
  %87 = load ptr, ptr %86, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 858, ptr noundef nonnull @.str.8) #17
  br label %90

90:                                               ; preds = %85, %89
  %91 = load ptr, ptr %87, align 8, !tbaa !147
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 13
  %93 = load i32, ptr %92, align 8, !tbaa !77, !noalias !149
  %94 = and i32 %93, 512
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 7
  %98 = load ptr, ptr %97, align 8, !tbaa !56, !noalias !149
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %98, align 8, !tbaa !82, !noalias !149
  br label %102

102:                                              ; preds = %100, %96, %90
  %103 = phi ptr [ %101, %100 ], [ null, %96 ], [ null, %90 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %103, align 8, !tbaa !84, !noalias !149
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi ptr [ %106, %105 ], [ null, %102 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %107, %116
  %111 = phi ptr [ %118, %116 ], [ %108, %107 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !72, !noalias !154
  %113 = load i32, ptr %112, align 8, !noalias !154
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %111, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !75, !noalias !154
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %110, !llvm.loop !155

120:                                              ; preds = %110, %116, %107
  %121 = phi ptr [ %108, %107 ], [ %111, %110 ], [ %118, %116 ]
  store ptr %121, ptr %5, align 8, !tbaa.struct !71
  %122 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %103, ptr %122, align 8, !tbaa.struct !156
  %123 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %91, ptr %123, align 8, !tbaa.struct !157
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef nonnull %28, i32 noundef 1) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %124

124:                                              ; preds = %120, %79, %84, %62
  %125 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %129 = call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %128)
  %130 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %130, ptr noundef nonnull %28, i32 noundef 0, i32 noundef 2) #17
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, ptr %28, align 8
  %133 = and i32 %132, 255
  %134 = add nsw i32 %133, -10
  %135 = icmp ult i32 %134, -9
  br i1 %135, label %148, label %136

136:                                              ; preds = %131
  %137 = zext nneg i32 %133 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !60
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %140
  %142 = load i64, ptr %141, align 8, !tbaa !103
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %145

145:                                              ; preds = %144, %136
  %146 = getelementptr inbounds i8, ptr %28, i64 %142
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  br label %148

148:                                              ; preds = %131, %145
  %149 = phi ptr [ %147, %145 ], [ null, %131 ]
  ret ptr %149
}

declare ptr @vect_get_new_vect_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_finish_stmt_generation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !44 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = icmp ne i32 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = load ptr, ptr @stmt_vec_info_vec, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 8, !tbaa !91
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr @stmt_vec_info_vec, align 8
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %16, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !144
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !146
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1174, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %15, %28
  tail call void @gsi_insert_before(ptr noundef %2, ptr noundef %1, i32 noundef 1) #17
  %30 = tail call ptr @new_stmt_vec_info(ptr noundef %1, ptr noundef %22, ptr noundef %24)
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !56
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = icmp eq ptr %30, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 639, ptr noundef nonnull @.str.8) #17
  br label %37

37:                                               ; preds = %36, %34
  %38 = load ptr, ptr @stmt_vec_info_vec, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %38, align 8, !tbaa !91
  %42 = add i32 %41, 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %42, %40 ], [ 1, %37 ]
  store i32 %44, ptr %31, align 4, !tbaa !56
  %45 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %45, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !158
  %50 = load i32, ptr %45, align 8, !tbaa !91
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %43
  %53 = tail call ptr @vec_heap_p_reserve(ptr noundef %45, i32 noundef 1) #17
  store ptr %53, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  br label %54

54:                                               ; preds = %52, %47
  %55 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %56 = load i32, ptr %55, align 8, !tbaa !91
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !91
  br label %61

58:                                               ; preds = %29
  %59 = load ptr, ptr @stmt_vec_info_vec, align 8
  %60 = add i32 %32, -1
  br label %61

61:                                               ; preds = %54, %58
  %62 = phi i32 [ %56, %54 ], [ %60, %58 ]
  %63 = phi ptr [ %55, %54 ], [ %59, %58 ]
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %63, i64 0, i32 2, i64 %64
  store ptr %30, ptr %65, align 8, !tbaa !45
  %66 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %70 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 14, i64 1, ptr %69)
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_gimple_stmt(ptr noundef %71, ptr noundef %1, i32 noundef 0, i32 noundef 2) #17
  br label %72

72:                                               ; preds = %68, %61
  %73 = load ptr, ptr %2, align 1
  %74 = load ptr, ptr %73, align 8, !tbaa !72
  %75 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !56
  %77 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 2
  store i32 %76, ptr %77, align 8, !tbaa !56
  ret void
}

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_get_vec_def_for_operand(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !44 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = icmp ne i32 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = load ptr, ptr @stmt_vec_info_vec, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr %10, align 8, !tbaa !91
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %16 = icmp ugt i32 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr @stmt_vec_info_vec, align 8
  %20 = add i32 %8, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %19, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1023
  %29 = zext nneg i32 %28 to i64
  %30 = shl nuw i64 1, %29
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %18
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %38 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 30, i64 1, ptr %37)
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %39, ptr noundef %0, i32 noundef 2) #17
  br label %40

40:                                               ; preds = %36, %18
  %41 = call zeroext i8 @vect_is_simple_use(ptr noundef %0, ptr noundef %33, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !74
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 915, ptr noundef nonnull @.str.8) #17
  br label %44

44:                                               ; preds = %40, %43
  %45 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %5, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %52 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 7, i64 1, ptr %51)
  %53 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef nonnull %48, i32 noundef 2) #17
  br label %54

54:                                               ; preds = %50, %47
  %55 = load ptr, ptr %4, align 8, !tbaa !45
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %59 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 14, i64 1, ptr %58)
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_gimple_stmt(ptr noundef %60, ptr noundef nonnull %55, i32 noundef 0, i32 noundef 2) #17
  br label %61

61:                                               ; preds = %54, %57, %44
  %62 = load i32, ptr %6, align 4, !tbaa !60
  switch i32 %62, label %245 [
    i32 1, label %63
    i32 2, label %91
    i32 3, label %126
    i32 5, label %186
    i32 6, label %186
    i32 7, label %186
    i32 4, label %210
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  %66 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %65)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 936, ptr noundef nonnull @.str.8) #17
  br label %69

69:                                               ; preds = %63, %68
  %70 = icmp eq ptr %2, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  store ptr %0, ptr %2, align 8, !tbaa !45
  br label %72

72:                                               ; preds = %71, %69
  %73 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.22, i32 noundef %31)
  br label %78

78:                                               ; preds = %75, %72
  %79 = add i32 %31, -1
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %87

81:                                               ; preds = %78, %81
  %82 = phi i32 [ %85, %81 ], [ %79, %78 ]
  %83 = phi ptr [ %84, %81 ], [ null, %78 ]
  %84 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %0, ptr noundef %83) #17
  %85 = add nsw i32 %82, -1
  %86 = icmp sgt i32 %82, 0
  br i1 %86, label %81, label %87, !llvm.loop !160

87:                                               ; preds = %81, %78
  %88 = phi ptr [ null, %78 ], [ %84, %81 ]
  %89 = tail call ptr @build_vector(ptr noundef %66, ptr noundef %88) #17
  %90 = tail call ptr @vect_init_vector(ptr noundef %1, ptr noundef %89, ptr noundef %66, ptr noundef null)
  br label %246

91:                                               ; preds = %61
  %92 = load ptr, ptr %5, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  %95 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %94)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 957, ptr noundef nonnull @.str.8) #17
  br label %98

98:                                               ; preds = %91, %97
  %99 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1023
  %102 = zext nneg i32 %101 to i64
  %103 = shl nuw i64 1, %102
  %104 = trunc i64 %103 to i32
  %105 = icmp eq ptr %2, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  store ptr %92, ptr %2, align 8, !tbaa !45
  br label %107

107:                                              ; preds = %106, %98
  %108 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %112 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 18, i64 1, ptr %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = add i32 %104, -1
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %116, label %122

116:                                              ; preds = %113, %116
  %117 = phi i32 [ %120, %116 ], [ %114, %113 ]
  %118 = phi ptr [ %119, %116 ], [ null, %113 ]
  %119 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %92, ptr noundef %118) #17
  %120 = add nsw i32 %117, -1
  %121 = icmp sgt i32 %117, 0
  br i1 %121, label %116, label %122, !llvm.loop !161

122:                                              ; preds = %116, %113
  %123 = phi ptr [ null, %113 ], [ %119, %116 ]
  %124 = tail call ptr @build_constructor_from_list(ptr noundef %95, ptr noundef %123) #17
  %125 = tail call ptr @vect_init_vector(ptr noundef %1, ptr noundef %124, ptr noundef %95, ptr noundef null)
  br label %246

126:                                              ; preds = %61
  %127 = icmp eq ptr %2, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  store ptr null, ptr %2, align 8, !tbaa !45
  br label %129

129:                                              ; preds = %128, %126
  %130 = load ptr, ptr %4, align 8, !tbaa !45
  %131 = getelementptr inbounds %struct.gimple_statement_base, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !56
  %133 = icmp ne i32 %132, 0
  tail call void @llvm.assume(i1 %133)
  %134 = load ptr, ptr @stmt_vec_info_vec, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %129
  %137 = load i32, ptr %134, align 8, !tbaa !91
  br label %138

138:                                              ; preds = %136, %129
  %139 = phi i32 [ %137, %136 ], [ 0, %129 ]
  %140 = icmp ugt i32 %132, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %142

142:                                              ; preds = %141, %138
  %143 = load ptr, ptr @stmt_vec_info_vec, align 8
  %144 = add i32 %132, -1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %143, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = getelementptr inbounds %struct._stmt_vec_info, ptr %147, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !162
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 986, ptr noundef nonnull @.str.8) #17
  br label %152

152:                                              ; preds = %142, %151
  %153 = load i32, ptr %149, align 8
  %154 = and i32 %153, 255
  %155 = trunc i32 %153 to i8
  switch i8 %155, label %171 [
    i8 16, label %156
    i8 8, label %159
  ]

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.gimple_statement_phi, ptr %149, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !45
  br label %246

159:                                              ; preds = %152
  %160 = zext nneg i32 %154 to i64
  %161 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !60
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !103
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %168

168:                                              ; preds = %167, %159
  %169 = getelementptr inbounds i8, ptr %149, i64 %165
  %170 = load ptr, ptr %169, align 8, !tbaa !45
  br label %246

171:                                              ; preds = %152
  %172 = add nsw i32 %154, -10
  %173 = icmp ult i32 %172, -9
  br i1 %173, label %246, label %174

174:                                              ; preds = %171
  %175 = zext nneg i32 %154 to i64
  %176 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !60
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %178
  %180 = load i64, ptr %179, align 8, !tbaa !103
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %183

183:                                              ; preds = %182, %174
  %184 = getelementptr inbounds i8, ptr %149, i64 %180
  %185 = load ptr, ptr %184, align 8, !tbaa !45
  br label %246

186:                                              ; preds = %61, %61, %61
  %187 = load ptr, ptr %4, align 8, !tbaa !45
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 255
  %190 = icmp eq i32 %189, 16
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1003, ptr noundef nonnull @.str.8) #17
  br label %192

192:                                              ; preds = %186, %191
  %193 = getelementptr inbounds %struct.gimple_statement_base, ptr %187, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !56
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !104
  %197 = tail call ptr @loop_preheader_edge(ptr noundef %196) #17
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 6
  %199 = load i32, ptr %198, align 4, !tbaa !163
  %200 = getelementptr inbounds %struct.gimple_statement_phi, ptr %187, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !56
  %202 = icmp ult i32 %201, %199
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 3103, ptr noundef nonnull @.str.8) #17
  br label %204

204:                                              ; preds = %192, %203
  %205 = zext i32 %199 to i64
  %206 = getelementptr inbounds %struct.gimple_statement_phi, ptr %187, i64 0, i32 4, i64 %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !101
  %208 = load ptr, ptr %207, align 8, !tbaa !45
  %209 = tail call ptr @get_initial_def_for_reduction(ptr noundef %1, ptr noundef %208, ptr noundef %2) #17
  br label %246

210:                                              ; preds = %61
  %211 = load ptr, ptr %4, align 8, !tbaa !45
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 255
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1014, ptr noundef nonnull @.str.8) #17
  br label %216

216:                                              ; preds = %210, %215
  %217 = getelementptr inbounds %struct.gimple_statement_base, ptr %211, i64 0, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !56
  %219 = icmp ne i32 %218, 0
  tail call void @llvm.assume(i1 %219)
  %220 = load ptr, ptr @stmt_vec_info_vec, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %216
  %223 = load i32, ptr %220, align 8, !tbaa !91
  br label %224

224:                                              ; preds = %222, %216
  %225 = phi i32 [ %223, %222 ], [ 0, %216 ]
  %226 = icmp ugt i32 %218, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %228

228:                                              ; preds = %227, %224
  %229 = load ptr, ptr @stmt_vec_info_vec, align 8
  %230 = add i32 %218, -1
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %229, i64 0, i32 2, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !45
  %234 = getelementptr inbounds %struct._stmt_vec_info, ptr %233, i64 0, i32 6
  %235 = load ptr, ptr %234, align 8, !tbaa !162
  %236 = icmp eq ptr %235, null
  br i1 %236, label %241, label %237

237:                                              ; preds = %228
  %238 = load i32, ptr %235, align 8
  %239 = and i32 %238, 255
  %240 = icmp eq i32 %239, 16
  br i1 %240, label %242, label %241

241:                                              ; preds = %237, %228
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1019, ptr noundef nonnull @.str.8) #17
  br label %242

242:                                              ; preds = %237, %241
  %243 = getelementptr inbounds %struct.gimple_statement_phi, ptr %235, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !45
  br label %246

245:                                              ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1025, ptr noundef nonnull @.str.8) #17
  br label %246

246:                                              ; preds = %183, %171, %168, %156, %245, %242, %204, %122, %87
  %247 = phi ptr [ null, %245 ], [ %244, %242 ], [ %209, %204 ], [ %125, %122 ], [ %90, %87 ], [ %158, %156 ], [ %170, %168 ], [ %185, %183 ], [ null, %171 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %247
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_is_simple_use(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) local_unnamed_addr #9 !prof !44 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 8, !tbaa !64
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ null, %6 ]
  store ptr null, ptr %3, align 8, !tbaa !45
  store ptr null, ptr %4, align 8, !tbaa !45
  %12 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %16 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 28, i64 1, ptr %15)
  %17 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %0, i32 noundef 2) #17
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i64, ptr %0, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -23
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, ptr %5, align 4, !tbaa !60
  br label %171

25:                                               ; preds = %18
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store ptr %0, ptr %4, align 8, !tbaa !45
  store i32 2, ptr %5, align 4, !tbaa !60
  br label %171

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 112
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %38 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 22, i64 1, ptr %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  br label %42

42:                                               ; preds = %39, %29
  %43 = phi ptr [ %41, %39 ], [ %0, %29 ]
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 141
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %171, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %52 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 13, i64 1, ptr %51)
  br label %171

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %43, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  store ptr %55, ptr %3, align 8, !tbaa !45
  %56 = icmp eq ptr %55, null
  %57 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %58 = icmp eq i8 %57, 0
  br i1 %56, label %59, label %63

59:                                               ; preds = %53
  br i1 %58, label %171, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %62 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 12, i64 1, ptr %61)
  br label %171

63:                                               ; preds = %53
  br i1 %58, label %69, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %66 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 10, i64 1, ptr %65)
  %67 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %68 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @print_gimple_stmt(ptr noundef %67, ptr noundef %68, i32 noundef 0, i32 noundef 2) #17
  br label %69

69:                                               ; preds = %64, %63
  %70 = load ptr, ptr %3, align 8, !tbaa !45
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 255
  %73 = icmp eq i32 %72, 18
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store ptr %43, ptr %4, align 8, !tbaa !45
  store i32 2, ptr %5, align 4, !tbaa !60
  br label %171

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.gimple_statement_base, ptr %70, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !56
  %78 = icmp eq ptr %11, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %11, ptr noundef %77) #17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %108, label %87

82:                                               ; preds = %75
  %83 = load ptr, ptr %2, align 8, !tbaa !147
  %84 = icmp ne ptr %77, %83
  %85 = icmp eq i32 %72, 16
  %86 = or i1 %85, %84
  br i1 %86, label %108, label %87

87:                                               ; preds = %82, %79
  %88 = load ptr, ptr %3, align 8, !tbaa !45
  %89 = getelementptr inbounds %struct.gimple_statement_base, ptr %88, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !56
  %91 = icmp ne i32 %90, 0
  tail call void @llvm.assume(i1 %91)
  %92 = load ptr, ptr @stmt_vec_info_vec, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = load i32, ptr %92, align 8, !tbaa !91
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ 0, %87 ]
  %98 = icmp ugt i32 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %100

100:                                              ; preds = %99, %96
  %101 = load ptr, ptr @stmt_vec_info_vec, align 8
  %102 = add i32 %90, -1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %101, i64 0, i32 2, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !45
  %106 = getelementptr inbounds %struct._stmt_vec_info, ptr %105, i64 0, i32 16
  %107 = load i32, ptr %106, align 8, !tbaa !97
  br label %108

108:                                              ; preds = %79, %82, %100
  %109 = phi i32 [ %107, %100 ], [ 2, %82 ], [ 2, %79 ]
  store i32 %109, ptr %5, align 4, !tbaa !60
  %110 = icmp eq i32 %109, 8
  %111 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %112 = icmp eq i8 %111, 0
  br i1 %110, label %113, label %117

113:                                              ; preds = %108
  br i1 %112, label %171, label %114

114:                                              ; preds = %113
  %115 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %116 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 20, i64 1, ptr %115)
  br label %171

117:                                              ; preds = %108
  br i1 %112, label %122, label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %120 = load i32, ptr %5, align 4, !tbaa !60
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.47, i32 noundef %120)
  br label %122

122:                                              ; preds = %118, %117
  %123 = load ptr, ptr %3, align 8, !tbaa !45
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 255
  %126 = trunc i32 %124 to i8
  switch i8 %126, label %165 [
    i8 16, label %127
    i8 6, label %130
    i8 8, label %147
  ]

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.gimple_statement_phi, ptr %123, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  store ptr %129, ptr %4, align 8, !tbaa !45
  br label %171

130:                                              ; preds = %122
  %131 = add nsw i32 %125, -10
  %132 = icmp ult i32 %131, -9
  br i1 %132, label %145, label %133

133:                                              ; preds = %130
  %134 = zext nneg i32 %125 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !60
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !103
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %142

142:                                              ; preds = %141, %133
  %143 = getelementptr inbounds i8, ptr %123, i64 %139
  %144 = load ptr, ptr %143, align 8, !tbaa !45
  br label %145

145:                                              ; preds = %130, %142
  %146 = phi ptr [ %144, %142 ], [ null, %130 ]
  store ptr %146, ptr %4, align 8, !tbaa !45
  br label %171

147:                                              ; preds = %122
  %148 = add nsw i32 %125, -10
  %149 = icmp ult i32 %148, -9
  br i1 %149, label %162, label %150

150:                                              ; preds = %147
  %151 = zext nneg i32 %125 to i64
  %152 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !60
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !103
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %159

159:                                              ; preds = %158, %150
  %160 = getelementptr inbounds i8, ptr %123, i64 %156
  %161 = load ptr, ptr %160, align 8, !tbaa !45
  br label %162

162:                                              ; preds = %147, %159
  %163 = phi ptr [ %161, %159 ], [ null, %147 ]
  store ptr %163, ptr %4, align 8, !tbaa !45
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %162, %122
  %166 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %170 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 27, i64 1, ptr %169)
  br label %171

171:                                              ; preds = %127, %145, %162, %165, %168, %113, %114, %59, %60, %47, %50, %74, %28, %24
  %172 = phi i8 [ 1, %24 ], [ 1, %28 ], [ 1, %74 ], [ 0, %50 ], [ 0, %47 ], [ 0, %60 ], [ 0, %59 ], [ 0, %114 ], [ 0, %113 ], [ 0, %168 ], [ 0, %165 ], [ 1, %162 ], [ 1, %145 ], [ 1, %127 ]
  ret i8 %172
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_vectype_for_scalar_type(ptr noundef %0) local_unnamed_addr #11 !prof !164 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %5, label %7, !prof !165

5:                                                ; preds = %1
  %6 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i32 [ %6, %5 ], [ %11, %7 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !56
  %17 = zext i8 %16 to i32
  %18 = icmp eq i8 %16, 0
  br i1 %18, label %236, label %19, !prof !165

19:                                               ; preds = %12
  %20 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !60
  %21 = and i32 %20, 65568
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 4, i32 16, !prof !166
  %24 = icmp ugt i32 %23, %17
  br i1 %24, label %25, label %236, !prof !167

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = lshr i32 %27, 3
  %29 = icmp ugt i32 %28, %17
  br i1 %29, label %236, label %30, !prof !168

30:                                               ; preds = %25
  %31 = load i64, ptr %0, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -6
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %36, label %42, !prof !169

36:                                               ; preds = %30
  %37 = shl nuw nsw i32 %17, 3
  %38 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1023
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %236, !prof !169

42:                                               ; preds = %30, %36
  %43 = udiv i32 %23, %17
  %44 = tail call ptr @build_vector_type(ptr noundef nonnull %0, i32 noundef %43) #17
  %45 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47, !prof !169

47:                                               ; preds = %42
  %48 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.38, i32 noundef %43)
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %50, ptr noundef nonnull %0, i32 noundef 2) #17
  br label %51

51:                                               ; preds = %47, %42
  %52 = icmp eq ptr %44, null
  br i1 %52, label %236, label %53, !prof !168

53:                                               ; preds = %51
  %54 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56, !prof !169

56:                                               ; preds = %53
  %57 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %58 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %57)
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %59, ptr noundef %44, i32 noundef 2) #17
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, ptr %44, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %66, !prof !169

64:                                               ; preds = %60
  %65 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %71

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  br label %71

71:                                               ; preds = %66, %64
  %72 = phi i32 [ %65, %64 ], [ %70, %66 ]
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !56
  %76 = icmp eq i8 %75, 12
  br i1 %76, label %236, label %77, !prof !168

77:                                               ; preds = %71
  %78 = load i64, ptr %44, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 14
  br i1 %80, label %81, label %83, !prof !169

81:                                               ; preds = %77
  %82 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  br label %88

88:                                               ; preds = %83, %81
  %89 = phi i32 [ %82, %81 ], [ %87, %83 ]
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !56
  %93 = icmp eq i8 %92, 17
  br i1 %93, label %236, label %94, !prof !168

94:                                               ; preds = %88
  %95 = load i64, ptr %44, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 14
  br i1 %97, label %98, label %100, !prof !169

98:                                               ; preds = %94
  %99 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %105

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  br label %105

105:                                              ; preds = %100, %98
  %106 = phi i32 [ %99, %98 ], [ %104, %100 ]
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = icmp eq i8 %109, 13
  br i1 %110, label %236, label %111, !prof !168

111:                                              ; preds = %105
  %112 = load i64, ptr %44, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 14
  br i1 %114, label %115, label %117, !prof !169

115:                                              ; preds = %111
  %116 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %122

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br label %122

122:                                              ; preds = %117, %115
  %123 = phi i32 [ %116, %115 ], [ %121, %117 ]
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !56
  %127 = icmp eq i8 %126, 14
  br i1 %127, label %236, label %128, !prof !168

128:                                              ; preds = %122
  %129 = load i64, ptr %44, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 14
  br i1 %131, label %132, label %134, !prof !169

132:                                              ; preds = %128
  %133 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %139

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  br label %139

139:                                              ; preds = %134, %132
  %140 = phi i32 [ %133, %132 ], [ %138, %134 ]
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !56
  %144 = icmp eq i8 %143, 15
  br i1 %144, label %236, label %145, !prof !168

145:                                              ; preds = %139
  %146 = load i64, ptr %44, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 14
  br i1 %148, label %149, label %151, !prof !169

149:                                              ; preds = %145
  %150 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %156

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  br label %156

156:                                              ; preds = %151, %149
  %157 = phi i32 [ %150, %149 ], [ %155, %151 ]
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !56
  %161 = icmp eq i8 %160, 16
  br i1 %161, label %236, label %162, !prof !168

162:                                              ; preds = %156
  %163 = load i64, ptr %44, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 14
  br i1 %165, label %166, label %168, !prof !169

166:                                              ; preds = %162
  %167 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %173

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  br label %173

173:                                              ; preds = %168, %166
  %174 = phi i32 [ %167, %166 ], [ %172, %168 ]
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !56
  %178 = icmp eq i8 %177, 2
  br i1 %178, label %236, label %179, !prof !169

179:                                              ; preds = %173
  %180 = load i64, ptr %44, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 14
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %190

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  br label %190

190:                                              ; preds = %185, %183
  %191 = phi i32 [ %184, %183 ], [ %189, %185 ]
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !56
  %195 = icmp eq i8 %194, 3
  br i1 %195, label %236, label %196

196:                                              ; preds = %190
  %197 = load i64, ptr %44, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 14
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %207

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %202, %200
  %208 = phi i32 [ %201, %200 ], [ %206, %202 ]
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !56
  %212 = icmp eq i8 %211, 10
  br i1 %212, label %236, label %213

213:                                              ; preds = %207
  %214 = load i64, ptr %44, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 14
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #17
  br label %224

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %221 = load i32, ptr %220, align 4
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  br label %224

224:                                              ; preds = %219, %217
  %225 = phi i32 [ %218, %217 ], [ %223, %219 ]
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !56
  %229 = icmp eq i8 %228, 12
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %235 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 29, i64 1, ptr %234)
  br label %236

236:                                              ; preds = %36, %71, %88, %105, %122, %139, %156, %173, %190, %207, %224, %230, %233, %51, %25, %12, %19
  %237 = phi ptr [ null, %19 ], [ null, %12 ], [ null, %25 ], [ null, %51 ], [ null, %233 ], [ null, %230 ], [ %44, %224 ], [ %44, %207 ], [ %44, %190 ], [ %44, %173 ], [ %44, %156 ], [ %44, %139 ], [ %44, %122 ], [ %44, %105 ], [ %44, %88 ], [ %44, %71 ], [ null, %36 ]
  ret ptr %237
}

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_initial_def_for_reduction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !44 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @stmt_vec_info_vec, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %18 = icmp ugt i32 %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = add i32 %9, -1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %21, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  br label %26

26:                                               ; preds = %5, %20
  %27 = phi ptr [ %25, %20 ], [ null, %5 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1101, ptr noundef nonnull @.str.8) #17
  br label %30

30:                                               ; preds = %26, %29
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 14
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1103, ptr noundef nonnull @.str.8) #17
  br label %35

35:                                               ; preds = %30, %34
  %36 = tail call ptr @gimple_get_lhs(ptr noundef %32) #17
  %37 = load i32, ptr %32, align 8
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gimple_statement_phi, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  br label %45

43:                                               ; preds = %35
  %44 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %32) #17
  br label %45

45:                                               ; preds = %40, %43, %2
  %46 = phi ptr [ %1, %2 ], [ %42, %40 ], [ %44, %43 ]
  ret ptr %46
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @new_stmt_vec_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !170 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 192) #17
  store i32 0, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 26
  store ptr %2, ptr %7, align 8, !tbaa !146
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 4
  store i8 0, ptr %9, align 4, !tbaa !96
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 5
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %10, i8 0, i64 65, i1 false)
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %31, !prof !171

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !172
  %22 = icmp eq ptr %21, %17
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %17, align 8, !tbaa !173
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %24, align 8, !tbaa !174
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 694, ptr noundef nonnull @.str.8) #17
  br label %30

30:                                               ; preds = %26, %29
  br i1 %22, label %32, label %31

31:                                               ; preds = %30, %3
  br label %32

32:                                               ; preds = %30, %15, %31
  %33 = phi i32 [ 3, %31 ], [ 8, %15 ], [ 8, %30 ]
  %34 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 16
  store i32 %33, ptr %34, align 8, !tbaa !97
  %35 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 5) #17
  %36 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 15
  store ptr %35, ptr %36, align 8, !tbaa !176
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 24
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 24, i32 1
  store i32 0, ptr %38, align 4, !tbaa !177
  store i32 0, ptr %37, align 4, !tbaa !178
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 25
  store i32 0, ptr %39, align 4, !tbaa !122
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 17
  %41 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 22
  store ptr null, ptr %41, align 8, !tbaa !179
  %42 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 23
  store i8 0, ptr %42, align 8, !tbaa !180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %40, i8 0, i64 28, i1 false)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vectorizable_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !44 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = add nsw i32 %5, -10
  %7 = icmp ult i32 %6, -9
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !103
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds i8, ptr %0, i64 %14
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi ptr [ %20, %17 ], [ null, %3 ]
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 121
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  br label %29

29:                                               ; preds = %21, %26
  %30 = phi ptr [ %28, %26 ], [ null, %21 ]
  %31 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #17
  %32 = and i32 %31, 513
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq ptr %30, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = load i64, ptr %30, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 29
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_function_decl, ptr %30, i64 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 6144
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 1), align 8, !tbaa !181
  %47 = tail call ptr %46(ptr noundef nonnull %30, ptr noundef %1, ptr noundef %2) #17
  br label %48

48:                                               ; preds = %36, %40, %29, %45
  %49 = phi ptr [ %47, %45 ], [ null, %29 ], [ null, %40 ], [ null, %36 ]
  ret ptr %49
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !44 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp ugt i32 %11, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @stmt_vec_info_vec, align 8
  %24 = add i32 %11, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %23, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  br label %28

28:                                               ; preds = %5, %22
  %29 = phi ptr [ %27, %22 ], [ null, %5 ]
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %34 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct._loop_vec_info, ptr %33, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !182
  %42 = sdiv i32 %41, %39
  %43 = icmp eq ptr %33, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3831, ptr noundef nonnull @.str.8) #17
  br label %45

45:                                               ; preds = %28, %44
  %46 = icmp sgt i32 %42, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3833, ptr noundef nonnull @.str.8) #17
  br label %48

48:                                               ; preds = %45, %47
  %49 = icmp sgt i32 %42, 1
  br i1 %49, label %251, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !93
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %251, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 16
  %56 = load i32, ptr %55, align 8, !tbaa !97
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = icmp eq i32 %56, 7
  %60 = icmp ne ptr %3, null
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %251

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 25
  %64 = load i32, ptr %63, align 4, !tbaa !122
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %251

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 4
  %68 = load i8, ptr %67, align 4, !tbaa !96
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %251, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %75 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 22, i64 1, ptr %74)
  br label %251

76:                                               ; preds = %66
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 255
  %79 = icmp eq i32 %78, 6
  br i1 %79, label %80, label %251

80:                                               ; preds = %76
  %81 = lshr i32 %77, 16
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !56
  %85 = icmp eq i8 %84, 3
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = zext nneg i32 %78 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !60
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !103
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr inbounds i8, ptr %0, i64 %92
  %97 = getelementptr inbounds ptr, ptr %96, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !45
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = and i32 %100, 65535
  br label %102

102:                                              ; preds = %80, %95
  %103 = phi i32 [ %101, %95 ], [ %81, %80 ]
  %104 = icmp eq i32 %103, 56
  br i1 %104, label %105, label %251

105:                                              ; preds = %102
  %106 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %0) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3866, ptr noundef nonnull @.str.8) #17
  br label %109

109:                                              ; preds = %105, %108
  %110 = load i32, ptr %0, align 8
  %111 = and i32 %110, 255
  %112 = add nsw i32 %111, -1
  %113 = icmp ult i32 %112, 9
  tail call void @llvm.assume(i1 %113)
  %114 = zext nneg i32 %111 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !60
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !103
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %122

122:                                              ; preds = %121, %109
  %123 = getelementptr inbounds i8, ptr %0, i64 %119
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !45
  %126 = getelementptr inbounds %struct.tree_exp, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  %128 = getelementptr inbounds %struct.tree_exp, ptr %125, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  %130 = getelementptr inbounds %struct.tree_exp, ptr %125, i64 1, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !56
  %132 = tail call fastcc zeroext i8 @vect_is_simple_cond(ptr noundef %127, ptr noundef %33), !range !74
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %251, label %134

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !56
  %137 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !56
  %139 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !56
  %141 = tail call zeroext i8 @types_compatible_p(ptr noundef %138, ptr noundef %140) #17
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %251, label %143

143:                                              ; preds = %134
  %144 = load i64, ptr %129, align 8
  %145 = trunc i64 %144 to i16
  switch i16 %145, label %251 [
    i16 141, label %146
    i16 23, label %151
    i16 24, label %151
    i16 25, label %151
  ]

146:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %147 = getelementptr inbounds %struct.tree_ssa_name, ptr %129, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !56
  store ptr %148, ptr %8, align 8, !tbaa !45
  %149 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %129, ptr noundef %33, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7), !range !74
  %150 = icmp eq i8 %149, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br i1 %150, label %251, label %151

151:                                              ; preds = %143, %143, %143, %146
  %152 = load i64, ptr %131, align 8
  %153 = trunc i64 %152 to i16
  switch i16 %153, label %251 [
    i16 141, label %154
    i16 23, label %159
    i16 24, label %159
    i16 25, label %159
  ]

154:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %155 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  store ptr %156, ptr %9, align 8, !tbaa !45
  %157 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %131, ptr noundef %33, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7), !range !74
  %158 = icmp eq i8 %157, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  br i1 %158, label %251, label %159

159:                                              ; preds = %151, %151, %151, %154
  %160 = load i64, ptr %31, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 14
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %169

165:                                              ; preds = %159
  %166 = load i32, ptr %34, align 4
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 255
  br label %169

169:                                              ; preds = %165, %163
  %170 = phi i32 [ %164, %163 ], [ %168, %165 ]
  %171 = icmp eq ptr %2, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  store i32 6, ptr %29, align 8, !tbaa !108
  %173 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !56
  %175 = tail call zeroext i8 @expand_vec_cond_expr_p(ptr noundef %174, i32 noundef %170) #17
  br label %251

176:                                              ; preds = %169
  %177 = load i32, ptr %0, align 8
  %178 = and i32 %177, 255
  %179 = add nsw i32 %178, -10
  %180 = icmp ult i32 %179, -9
  br i1 %180, label %193, label %181

181:                                              ; preds = %176
  %182 = zext nneg i32 %178 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !60
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !103
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %190

190:                                              ; preds = %189, %181
  %191 = getelementptr inbounds i8, ptr %0, i64 %187
  %192 = load ptr, ptr %191, align 8, !tbaa !45
  br label %193

193:                                              ; preds = %176, %190
  %194 = phi ptr [ %192, %190 ], [ null, %176 ]
  %195 = tail call ptr @vect_create_destination_var(ptr noundef %194, ptr noundef nonnull %31) #17
  %196 = load ptr, ptr %135, align 8, !tbaa !56
  %197 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %196, ptr noundef nonnull %0, ptr noundef null)
  %198 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !56
  %200 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %199, ptr noundef nonnull %0, ptr noundef null)
  %201 = icmp eq i32 %4, 1
  br i1 %201, label %204, label %202

202:                                              ; preds = %193
  %203 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %129, ptr noundef nonnull %0, ptr noundef null)
  br label %204

204:                                              ; preds = %193, %202
  %205 = phi ptr [ %203, %202 ], [ %3, %193 ]
  %206 = icmp eq i32 %4, 2
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %131, ptr noundef nonnull %0, ptr noundef null)
  br label %209

209:                                              ; preds = %204, %207
  %210 = phi ptr [ %208, %207 ], [ %3, %204 ]
  %211 = load i64, ptr %127, align 8
  %212 = trunc i64 %211 to i32
  %213 = and i32 %212, 65535
  %214 = tail call ptr @build2_stat(i32 noundef %213, ptr noundef nonnull %31, ptr noundef %197, ptr noundef %200) #17
  %215 = tail call ptr @build3_stat(i32 noundef 57, ptr noundef nonnull %31, ptr noundef %214, ptr noundef %205, ptr noundef %210) #17
  %216 = tail call ptr @gimple_build_assign_stat(ptr noundef %195, ptr noundef %215) #17
  store ptr %216, ptr %2, align 8, !tbaa !45
  %217 = load ptr, ptr @cfun, align 8, !tbaa !45
  %218 = tail call ptr @make_ssa_name_fn(ptr noundef %217, ptr noundef %195, ptr noundef %216) #17
  %219 = load ptr, ptr %2, align 8, !tbaa !45
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 255
  %222 = add nsw i32 %221, -10
  %223 = icmp ult i32 %222, -9
  br i1 %223, label %228, label %224

224:                                              ; preds = %209
  %225 = getelementptr inbounds %struct.gimple_statement_base, ptr %219, i64 0, i32 3
  %226 = load i32, ptr %225, align 4, !tbaa !56
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224, %209
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %229

229:                                              ; preds = %228, %224
  %230 = load i32, ptr %219, align 8
  %231 = and i32 %230, 255
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !60
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !103
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %240

240:                                              ; preds = %239, %229
  %241 = getelementptr inbounds i8, ptr %219, i64 %237
  store ptr %218, ptr %241, align 8, !tbaa !45
  %242 = icmp eq ptr %218, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i64, ptr %218, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 141
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.tree_ssa_name, ptr %218, i64 0, i32 2
  store ptr %219, ptr %248, align 8, !tbaa !56
  br label %249

249:                                              ; preds = %240, %243, %247
  %250 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef %250, ptr noundef %1)
  br label %251

251:                                              ; preds = %154, %151, %146, %58, %143, %134, %122, %102, %76, %70, %73, %62, %50, %48, %249, %172
  %252 = phi i8 [ 1, %249 ], [ %175, %172 ], [ 0, %48 ], [ 0, %50 ], [ 0, %62 ], [ 0, %73 ], [ 0, %70 ], [ 0, %76 ], [ 0, %102 ], [ 0, %122 ], [ 0, %134 ], [ 0, %143 ], [ 0, %58 ], [ 0, %146 ], [ 0, %151 ], [ 0, %154 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i8 %252
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_is_simple_cond(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !44 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = load i64, ptr %14, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %33 [
    i16 141, label %19
    i16 23, label %24
    i16 24, label %24
    i16 25, label %24
  ]

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  store ptr %21, ptr %5, align 8, !tbaa !45
  %22 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %14, ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !74
  %23 = icmp eq i8 %22, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br i1 %23, label %33, label %24

24:                                               ; preds = %12, %12, %12, %19
  %25 = load i64, ptr %16, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %33 [
    i16 141, label %27
    i16 23, label %32
    i16 24, label %32
    i16 25, label %32
  ]

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  store ptr %29, ptr %6, align 8, !tbaa !45
  %30 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %16, ptr noundef %1, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !74
  %31 = icmp eq i8 %30, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %31, label %33, label %32

32:                                               ; preds = %24, %24, %24, %27
  br label %33

33:                                               ; preds = %27, %24, %19, %12, %2, %32
  %34 = phi i8 [ 1, %32 ], [ 0, %2 ], [ 0, %12 ], [ 0, %19 ], [ 0, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i8 %34
}

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expand_vec_cond_expr_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vect_create_destination_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_analyze_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !44 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !91
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = icmp ugt i32 %6, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = add i32 %6, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %18, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %3, %17
  %24 = phi ptr [ %22, %17 ], [ null, %3 ]
  %25 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 26
  %26 = load ptr, ptr %25, align 8, !tbaa !146
  %27 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %29 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %33 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 25, i64 1, ptr %32)
  %34 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  tail call void @print_gimple_stmt(ptr noundef %34, ptr noundef %0, i32 noundef 0, i32 noundef 2) #17
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 254
  %38 = add nsw i32 %37, -10
  %39 = icmp ult i32 %38, -4
  %40 = and i32 %36, 16384
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %41, %39
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %344, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %48 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 42, i64 1, ptr %47)
  br label %344

49:                                               ; preds = %35
  %50 = load i32, ptr %27, align 8, !tbaa !93
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 4
  %54 = load i8, ptr %53, align 4, !tbaa !96
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %344, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %61 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 11, i64 1, ptr %60)
  br label %344

62:                                               ; preds = %52, %49
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 16
  %64 = load i32, ptr %63, align 8, !tbaa !97
  switch i32 %64, label %69 [
    i32 3, label %71
    i32 5, label %65
    i32 7, label %65
  ]

65:                                               ; preds = %62, %62
  %66 = icmp eq ptr %26, null
  %67 = icmp ult i32 %28, 3
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %71, label %69

69:                                               ; preds = %62, %65
  %70 = phi i32 [ 4001, %65 ], [ 4009, %62 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef %70, ptr noundef nonnull @.str.8) #17
  br label %71

71:                                               ; preds = %69, %65, %62
  %72 = icmp eq ptr %26, null
  br i1 %72, label %103, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 25
  %75 = load i32, ptr %74, align 4, !tbaa !122
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4014, ptr noundef nonnull @.str.8) #17
  br label %78

78:                                               ; preds = %73, %77
  %79 = call ptr @vect_get_smallest_scalar_type(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %4) #17
  %80 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %84 = call i64 @fwrite(ptr nonnull @.str.29, i64 30, i64 1, ptr %83)
  %85 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_generic_expr(ptr noundef %85, ptr noundef %79, i32 noundef 2) #17
  br label %86

86:                                               ; preds = %82, %78
  %87 = call ptr @get_vectype_for_scalar_type(ptr noundef %79)
  %88 = icmp eq ptr %87, null
  %89 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %90 = icmp eq i8 %89, 0
  br i1 %88, label %91, label %96

91:                                               ; preds = %86
  br i1 %90, label %344, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %94 = call i64 @fwrite(ptr nonnull @.str.30, i64 33, i64 1, ptr %93)
  %95 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_generic_expr(ptr noundef %95, ptr noundef %79, i32 noundef 2) #17
  br label %344

96:                                               ; preds = %86
  br i1 %90, label %101, label %97

97:                                               ; preds = %96
  %98 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %99 = call i64 @fwrite(ptr nonnull @.str.31, i64 10, i64 1, ptr %98)
  %100 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_generic_expr(ptr noundef %100, ptr noundef nonnull %87, i32 noundef 2) #17
  br label %101

101:                                              ; preds = %97, %96
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 5
  store ptr %87, ptr %102, align 8, !tbaa !159
  br label %103

103:                                              ; preds = %101, %71
  %104 = load i32, ptr %27, align 8, !tbaa !93
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %227, label %106

106:                                              ; preds = %103
  %107 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  %111 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  br i1 %110, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 @vector_type_mode(ptr noundef %111) #17
  br label %119

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  br label %119

119:                                              ; preds = %114, %112
  %120 = phi i32 [ %113, %112 ], [ %118, %114 ]
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !56
  %124 = icmp eq i8 %123, 12
  br i1 %124, label %220, label %125

125:                                              ; preds = %119
  %126 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %127 = load i64, ptr %126, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  %130 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  br i1 %129, label %131, label %133

131:                                              ; preds = %125
  %132 = call i32 @vector_type_mode(ptr noundef %130) #17
  br label %138

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  br label %138

138:                                              ; preds = %133, %131
  %139 = phi i32 [ %132, %131 ], [ %137, %133 ]
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !56
  %143 = icmp eq i8 %142, 17
  br i1 %143, label %220, label %144

144:                                              ; preds = %138
  %145 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 14
  %149 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  br i1 %148, label %150, label %152

150:                                              ; preds = %144
  %151 = call i32 @vector_type_mode(ptr noundef %149) #17
  br label %157

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.tree_type, ptr %149, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  br label %157

157:                                              ; preds = %152, %150
  %158 = phi i32 [ %151, %150 ], [ %156, %152 ]
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !56
  %162 = icmp eq i8 %161, 13
  br i1 %162, label %220, label %163

163:                                              ; preds = %157
  %164 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 14
  %168 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  br i1 %167, label %169, label %171

169:                                              ; preds = %163
  %170 = call i32 @vector_type_mode(ptr noundef %168) #17
  br label %176

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.tree_type, ptr %168, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %170, %169 ], [ %175, %171 ]
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !56
  %181 = icmp eq i8 %180, 14
  br i1 %181, label %220, label %182

182:                                              ; preds = %176
  %183 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 14
  %187 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  br i1 %186, label %188, label %190

188:                                              ; preds = %182
  %189 = call i32 @vector_type_mode(ptr noundef %187) #17
  br label %195

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.tree_type, ptr %187, i64 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  br label %195

195:                                              ; preds = %190, %188
  %196 = phi i32 [ %189, %188 ], [ %194, %190 ]
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !56
  %200 = icmp eq i8 %199, 15
  br i1 %200, label %220, label %201

201:                                              ; preds = %195
  %202 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 14
  %206 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  br i1 %205, label %207, label %209

207:                                              ; preds = %201
  %208 = call i32 @vector_type_mode(ptr noundef %206) #17
  br label %214

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 6
  %211 = load i32, ptr %210, align 4
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 255
  br label %214

214:                                              ; preds = %209, %207
  %215 = phi i32 [ %208, %207 ], [ %213, %209 ]
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !56
  %219 = icmp eq i8 %218, 16
  br i1 %219, label %220, label %221

220:                                              ; preds = %214, %195, %176, %157, %138, %119
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4045, ptr noundef nonnull @.str.8) #17
  br label %221

221:                                              ; preds = %214, %220
  %222 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 5
  %223 = load ptr, ptr %222, align 8, !tbaa !159
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4046, ptr noundef nonnull @.str.8) #17
  br label %226

226:                                              ; preds = %221, %225
  store i8 1, ptr %1, align 1, !tbaa !56
  br label %227

227:                                              ; preds = %226, %103
  br i1 %72, label %228, label %263

228:                                              ; preds = %227
  %229 = load i32, ptr %27, align 8, !tbaa !93
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, ptr %63, align 8, !tbaa !97
  %233 = icmp eq i32 %232, 5
  br i1 %233, label %234, label %286

234:                                              ; preds = %231, %228
  %235 = call fastcc zeroext i8 @vectorizable_type_promotion(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null), !range !74
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %286

237:                                              ; preds = %234
  %238 = call fastcc zeroext i8 @vectorizable_type_demotion(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null), !range !74
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %286

240:                                              ; preds = %237
  %241 = call fastcc zeroext i8 @vectorizable_conversion(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null), !range !74
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %286

243:                                              ; preds = %240
  %244 = call fastcc zeroext i8 @vectorizable_operation(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null), !range !74
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %286

246:                                              ; preds = %243
  %247 = call fastcc zeroext i8 @vectorizable_assignment(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null), !range !74
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %286

249:                                              ; preds = %246
  %250 = call fastcc zeroext i8 @vectorizable_load(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !range !74
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %286

252:                                              ; preds = %249
  %253 = call fastcc zeroext i8 @vectorizable_call(ptr noundef nonnull %0, ptr noundef null, ptr noundef null), !range !74
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %252
  %256 = call fastcc zeroext i8 @vectorizable_store(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null)
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %286

258:                                              ; preds = %255
  %259 = call zeroext i8 @vectorizable_reduction(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #17
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %286

261:                                              ; preds = %258
  %262 = call zeroext i8 @vectorizable_condition(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %274

263:                                              ; preds = %227
  %264 = call fastcc zeroext i8 @vectorizable_operation(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %2), !range !74
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %286

266:                                              ; preds = %263
  %267 = call fastcc zeroext i8 @vectorizable_assignment(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %2), !range !74
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %286

269:                                              ; preds = %266
  %270 = call fastcc zeroext i8 @vectorizable_load(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef null), !range !74
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %269
  %273 = call fastcc zeroext i8 @vectorizable_store(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %2)
  br label %274

274:                                              ; preds = %272, %261
  %275 = phi i8 [ %262, %261 ], [ %273, %272 ]
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #17
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %344, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %282 = call i64 @fwrite(ptr nonnull @.str.32, i64 34, i64 1, ptr %281)
  %283 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %284 = call i64 @fwrite(ptr nonnull @.str.33, i64 11, i64 1, ptr %283)
  %285 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %285, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2) #17
  br label %344

286:                                              ; preds = %258, %255, %252, %249, %246, %243, %240, %237, %234, %269, %266, %263, %231, %274
  br i1 %72, label %287, label %344

287:                                              ; preds = %286
  %288 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 4
  %289 = load i8, ptr %288, align 4, !tbaa !96
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %306, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %24, align 8, !tbaa !108
  %293 = icmp eq i32 %292, 7
  br i1 %293, label %306, label %294

294:                                              ; preds = %291
  %295 = call zeroext i8 @vectorizable_live_operation(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #17
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %294
  %298 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #17
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %344, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %302 = call i64 @fwrite(ptr nonnull @.str.34, i64 30, i64 1, ptr %301)
  %303 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %304 = call i64 @fwrite(ptr nonnull @.str.33, i64 11, i64 1, ptr %303)
  %305 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %305, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2) #17
  br label %344

306:                                              ; preds = %291, %287, %294
  %307 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 25
  %308 = load i32, ptr %307, align 4, !tbaa !122
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %344, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 17
  %312 = load ptr, ptr %311, align 8, !tbaa !126
  %313 = icmp eq ptr %312, null
  br i1 %313, label %344, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.gimple_statement_base, ptr %312, i64 0, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !56
  %317 = icmp ne i32 %316, 0
  call void @llvm.assume(i1 %317)
  %318 = load ptr, ptr @stmt_vec_info_vec, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %322, label %320

320:                                              ; preds = %314
  %321 = load i32, ptr %318, align 8, !tbaa !91
  br label %322

322:                                              ; preds = %320, %314
  %323 = phi i32 [ %321, %320 ], [ 0, %314 ]
  %324 = icmp ugt i32 %316, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %326

326:                                              ; preds = %325, %322
  %327 = load ptr, ptr @stmt_vec_info_vec, align 8
  %328 = add i32 %316, -1
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %327, i64 0, i32 2, i64 %329
  %331 = load ptr, ptr %330, align 8, !tbaa !45
  %332 = getelementptr inbounds %struct._stmt_vec_info, ptr %331, i64 0, i32 19
  %333 = load i32, ptr %332, align 8, !tbaa !128
  %334 = zext i32 %333 to i64
  %335 = call i32 @exact_log2(i64 noundef %334) #17
  %336 = icmp eq i32 %335, -1
  br i1 %336, label %337, label %344

337:                                              ; preds = %326
  %338 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %342 = call i64 @fwrite(ptr nonnull @.str.35, i64 73, i64 1, ptr %341)
  %343 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  call void @print_gimple_stmt(ptr noundef %343, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2) #17
  br label %344

344:                                              ; preds = %306, %326, %310, %337, %340, %297, %300, %286, %277, %280, %91, %92, %56, %59, %43, %46
  %345 = phi i8 [ 0, %46 ], [ 0, %43 ], [ 1, %59 ], [ 1, %56 ], [ 0, %92 ], [ 0, %91 ], [ 0, %280 ], [ 0, %277 ], [ 1, %286 ], [ 0, %300 ], [ 0, %297 ], [ 0, %340 ], [ 0, %337 ], [ 1, %310 ], [ 1, %326 ], [ 1, %306 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i8 %345
}

declare ptr @vect_get_smallest_scalar_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !44 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ]

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !103
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !56
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !60
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !103
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !103
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #17
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  ret ptr %78
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_type_promotion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !44 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !91
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp ugt i32 %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr @stmt_vec_info_vec, align 8
  %31 = add i32 %18, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %30, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %4, %29
  %36 = phi ptr [ %34, %29 ], [ null, %4 ]
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store i64 34359738376, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #17
  store i32 0, ptr %13, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  store ptr null, ptr %14, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  store ptr null, ptr %15, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  store ptr null, ptr %16, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2682, ptr noundef nonnull @.str.8) #17
  br label %41

41:                                               ; preds = %35, %40
  %42 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !93
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %393, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 16
  %47 = load i32, ptr %46, align 8, !tbaa !97
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %393

49:                                               ; preds = %45
  %50 = load i32, ptr %0, align 8
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %393

53:                                               ; preds = %49
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !60
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !103
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %62

62:                                               ; preds = %61, %53
  %63 = getelementptr inbounds i8, ptr %0, i64 %59
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 141
  br i1 %67, label %68, label %393

68:                                               ; preds = %62
  %69 = load i32, ptr %0, align 8
  %70 = trunc i32 %69 to i8
  switch i8 %70, label %73 [
    i8 6, label %71
    i8 1, label %71
    i8 8, label %74
  ]

71:                                               ; preds = %68, %68
  %72 = lshr i32 %69, 16
  br label %74

73:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.8) #17
  br label %74

74:                                               ; preds = %73, %71, %68
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ], [ 59, %68 ]
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !56
  %79 = icmp eq i8 %78, 3
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -1
  %84 = icmp ult i32 %83, 9
  tail call void @llvm.assume(i1 %84)
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !60
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !103
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %93

93:                                               ; preds = %92, %80
  %94 = getelementptr inbounds i8, ptr %0, i64 %90
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = and i32 %98, 65535
  br label %100

100:                                              ; preds = %74, %93
  %101 = phi i32 [ %99, %93 ], [ %75, %74 ]
  switch i32 %101, label %393 [
    i32 169, label %102
    i32 116, label %102
    i32 113, label %102
  ]

102:                                              ; preds = %100, %100, %100
  %103 = load i32, ptr %0, align 8
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -10
  %106 = icmp ult i32 %105, -9
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = zext nneg i32 %104 to i64
  %109 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !60
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !103
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %116

116:                                              ; preds = %115, %107
  %117 = getelementptr inbounds i8, ptr %0, i64 %113
  %118 = getelementptr inbounds ptr, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !45
  br label %120

120:                                              ; preds = %102, %116
  %121 = phi ptr [ %119, %116 ], [ null, %102 ]
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  %124 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %123)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %393, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 1023
  %130 = zext nneg i32 %129 to i64
  %131 = shl nuw i64 1, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, ptr %0, align 8
  %134 = and i32 %133, 255
  %135 = add nsw i32 %134, -10
  %136 = icmp ult i32 %135, -9
  br i1 %136, label %149, label %137

137:                                              ; preds = %126
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !60
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !103
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %146

146:                                              ; preds = %145, %137
  %147 = getelementptr inbounds i8, ptr %0, i64 %143
  %148 = load ptr, ptr %147, align 8, !tbaa !45
  br label %149

149:                                              ; preds = %126, %146
  %150 = phi ptr [ %148, %146 ], [ null, %126 ]
  %151 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  %153 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %152)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %393, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.tree_type, ptr %153, i64 0, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, 1023
  %159 = zext nneg i32 %158 to i64
  %160 = shl nuw i64 1, %159
  %161 = trunc i64 %160 to i32
  %162 = icmp sgt i32 %132, %161
  br i1 %162, label %163, label %393

163:                                              ; preds = %155
  %164 = icmp eq ptr %3, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct._loop_vec_info, ptr %38, i64 0, i32 6
  %167 = load i32, ptr %166, align 8, !tbaa !182
  %168 = sdiv i32 %167, %132
  br label %169

169:                                              ; preds = %163, %165
  %170 = phi i32 [ %168, %165 ], [ 1, %163 ]
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2724, ptr noundef nonnull @.str.8) #17
  br label %173

173:                                              ; preds = %169, %172
  %174 = load ptr, ptr %151, align 8, !tbaa !56
  %175 = load i64, ptr %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = and i32 %176, 65535
  %178 = add nsw i32 %177, -6
  %179 = icmp ult i32 %178, 3
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load ptr, ptr %122, align 8, !tbaa !56
  %182 = load i64, ptr %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = and i32 %183, 65535
  %185 = add nsw i32 %184, -6
  %186 = icmp ult i32 %185, 3
  br i1 %186, label %196, label %187

187:                                              ; preds = %180, %173
  %188 = and i64 %175, 65535
  %189 = icmp eq i64 %188, 9
  br i1 %189, label %190, label %393

190:                                              ; preds = %187
  %191 = load ptr, ptr %122, align 8, !tbaa !56
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 9
  br i1 %194, label %195, label %393

195:                                              ; preds = %190
  switch i32 %101, label %393 [
    i32 116, label %196
    i32 113, label %196
  ]

196:                                              ; preds = %195, %180, %195
  %197 = call zeroext i8 @vect_is_simple_use(ptr noundef %121, ptr noundef %38, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11), !range !74
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %393, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %204 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %203)
  br label %393

205:                                              ; preds = %196
  %206 = zext nneg i32 %101 to i64
  %207 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !56
  %209 = zext i8 %208 to i32
  %210 = icmp eq i8 %208, 2
  br i1 %210, label %211, label %244

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %213 = load i32, ptr %212, align 4, !tbaa !56
  %214 = icmp ugt i32 %213, 2
  br i1 %214, label %215, label %233

215:                                              ; preds = %211
  %216 = load i32, ptr %0, align 8
  %217 = and i32 %216, 255
  %218 = add nsw i32 %217, -10
  %219 = icmp ult i32 %218, -9
  br i1 %219, label %233, label %220

220:                                              ; preds = %215
  %221 = zext nneg i32 %217 to i64
  %222 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !60
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !103
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %229

229:                                              ; preds = %228, %220
  %230 = getelementptr inbounds i8, ptr %0, i64 %226
  %231 = getelementptr inbounds ptr, ptr %230, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !45
  br label %233

233:                                              ; preds = %211, %215, %229
  %234 = phi ptr [ null, %211 ], [ %232, %229 ], [ null, %215 ]
  %235 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %236 = call zeroext i8 @vect_is_simple_use(ptr noundef %234, ptr noundef %38, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %235), !range !74
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %393, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %243 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %242)
  br label %393

244:                                              ; preds = %233, %205
  %245 = phi ptr [ %234, %233 ], [ null, %205 ]
  %246 = call zeroext i8 @supportable_widening_operation(i32 noundef %101, ptr noundef nonnull %0, ptr noundef nonnull %124, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %16), !range !74
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %393, label %248

248:                                              ; preds = %244
  %249 = load i32, ptr %13, align 4, !tbaa !60
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %210, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2761, ptr noundef nonnull @.str.8) #17
  br label %253

253:                                              ; preds = %248, %252
  %254 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 5
  store ptr %124, ptr %254, align 8, !tbaa !159
  %255 = icmp eq ptr %2, null
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  store i32 9, ptr %36, align 8, !tbaa !108
  %257 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %261 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 30, i64 1, ptr %260)
  br label %262

262:                                              ; preds = %259, %256
  %263 = shl nsw i32 %170, 1
  call void @vect_model_simple_cost(ptr noundef nonnull %36, i32 noundef %263, ptr noundef nonnull %11, ptr noundef null)
  br label %393

264:                                              ; preds = %253
  %265 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef nonnull @.str.65, i32 noundef %170)
  br label %270

270:                                              ; preds = %267, %264
  %271 = icmp eq i32 %249, 0
  %272 = add nsw i32 %249, 1
  %273 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %272) #17
  %274 = tail call ptr @vect_create_destination_var(ptr noundef %150, ptr noundef nonnull %153) #17
  %275 = load i32, ptr %273, align 8, !tbaa !183
  %276 = add i32 %275, 1
  store i32 %276, ptr %273, align 8, !tbaa !183
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds %struct.VEC_tree_base, ptr %273, i64 0, i32 2, i64 %277
  store ptr %274, ptr %278, align 8, !tbaa !45
  br i1 %271, label %305, label %279

279:                                              ; preds = %270
  %280 = load ptr, ptr %16, align 8
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr %280, align 8, !tbaa !183
  br label %284

284:                                              ; preds = %279, %282
  %285 = phi i32 [ 0, %279 ], [ %283, %282 ]
  br label %286

286:                                              ; preds = %284, %299
  %287 = phi i32 [ %288, %299 ], [ %285, %284 ]
  %288 = add i32 %287, -1
  br i1 %281, label %296, label %289

289:                                              ; preds = %286
  %290 = load i32, ptr %280, align 8, !tbaa !183
  %291 = icmp ugt i32 %290, %288
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = zext i32 %288 to i64
  %294 = getelementptr inbounds %struct.VEC_tree_base, ptr %280, i64 0, i32 2, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !45
  br label %296

296:                                              ; preds = %286, %289, %292
  %297 = phi ptr [ %295, %292 ], [ null, %289 ], [ null, %286 ]
  %298 = phi i1 [ false, %292 ], [ true, %289 ], [ true, %286 ]
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  %300 = tail call ptr @vect_create_destination_var(ptr noundef %150, ptr noundef %297) #17
  %301 = load i32, ptr %273, align 8, !tbaa !183
  %302 = add i32 %301, 1
  store i32 %302, ptr %273, align 8, !tbaa !183
  %303 = zext i32 %301 to i64
  %304 = getelementptr inbounds %struct.VEC_tree_base, ptr %273, i64 0, i32 2, i64 %303
  store ptr %300, ptr %304, align 8, !tbaa !45
  br label %286, !llvm.loop !185

305:                                              ; preds = %296, %270
  br i1 %164, label %306, label %319

306:                                              ; preds = %305
  %307 = icmp sgt i32 %249, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %306, %308
  %309 = phi i32 [ %311, %308 ], [ 1, %306 ]
  %310 = phi i32 [ %312, %308 ], [ 0, %306 ]
  %311 = shl nsw i32 %309, 1
  %312 = add nuw nsw i32 %310, 1
  %313 = icmp eq i32 %312, %249
  br i1 %313, label %314, label %308, !llvm.loop !186

314:                                              ; preds = %308, %306
  %315 = phi i32 [ 1, %306 ], [ %311, %308 ]
  %316 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %315) #17
  store ptr %316, ptr %14, align 8, !tbaa !45
  br i1 %210, label %317, label %319

317:                                              ; preds = %314
  %318 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  store ptr %318, ptr %15, align 8, !tbaa !45
  br label %319

319:                                              ; preds = %314, %317, %305
  store ptr null, ptr %12, align 8, !tbaa !45
  %320 = icmp sgt i32 %170, 0
  br i1 %320, label %321, label %374

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.VEC_tree_base, ptr %273, i64 0, i32 2
  br label %323

323:                                              ; preds = %321, %365
  %324 = phi i32 [ 0, %321 ], [ %372, %365 ]
  %325 = phi ptr [ null, %321 ], [ %357, %365 ]
  %326 = phi ptr [ null, %321 ], [ %356, %365 ]
  %327 = icmp eq i32 %324, 0
  br i1 %327, label %328, label %344

328:                                              ; preds = %323
  br i1 %164, label %330, label %329

329:                                              ; preds = %328
  call void @vect_get_slp_defs(ptr noundef nonnull %3, ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  br label %355

330:                                              ; preds = %328
  %331 = call ptr @vect_get_vec_def_for_operand(ptr noundef %121, ptr noundef nonnull %0, ptr noundef null)
  %332 = load ptr, ptr %14, align 8
  %333 = load i32, ptr %332, align 8, !tbaa !183
  %334 = add i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !183
  %335 = zext i32 %333 to i64
  %336 = getelementptr inbounds %struct.VEC_tree_base, ptr %332, i64 0, i32 2, i64 %335
  store ptr %331, ptr %336, align 8, !tbaa !45
  br i1 %210, label %337, label %355

337:                                              ; preds = %330
  %338 = call ptr @vect_get_vec_def_for_operand(ptr noundef %245, ptr noundef nonnull %0, ptr noundef null)
  %339 = load ptr, ptr %15, align 8
  %340 = load i32, ptr %339, align 8, !tbaa !183
  %341 = add i32 %340, 1
  store i32 %341, ptr %339, align 8, !tbaa !183
  %342 = zext i32 %340 to i64
  %343 = getelementptr inbounds %struct.VEC_tree_base, ptr %339, i64 0, i32 2, i64 %342
  store ptr %338, ptr %343, align 8, !tbaa !45
  br label %355

344:                                              ; preds = %323
  %345 = load i32, ptr %11, align 8, !tbaa !60
  %346 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %345, ptr noundef %325)
  %347 = load ptr, ptr %14, align 8
  %348 = getelementptr inbounds %struct.VEC_tree_base, ptr %347, i64 0, i32 2, i64 0
  store ptr %346, ptr %348, align 8, !tbaa !45
  br i1 %210, label %349, label %355

349:                                              ; preds = %344
  %350 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %351 = load i32, ptr %350, align 4, !tbaa !60
  %352 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %351, ptr noundef %326)
  %353 = load ptr, ptr %15, align 8
  %354 = getelementptr inbounds %struct.VEC_tree_base, ptr %353, i64 0, i32 2, i64 0
  store ptr %352, ptr %354, align 8, !tbaa !45
  br label %355

355:                                              ; preds = %330, %337, %329, %349, %344
  %356 = phi ptr [ %326, %329 ], [ %338, %337 ], [ %326, %330 ], [ %352, %349 ], [ %326, %344 ]
  %357 = phi ptr [ %325, %329 ], [ %331, %337 ], [ %331, %330 ], [ %346, %349 ], [ %346, %344 ]
  %358 = load i32, ptr %273, align 8, !tbaa !183
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = zext i32 %358 to i64
  %362 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %358) #17
  store i32 %358, ptr %362, align 8, !tbaa !187
  %363 = getelementptr inbounds %struct.VEC_tree_base, ptr %362, i64 0, i32 2
  %364 = shl nuw nsw i64 %361, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %363, ptr nonnull align 8 %322, i64 %364, i1 false)
  br label %365

365:                                              ; preds = %355, %360
  %366 = phi ptr [ %362, %360 ], [ null, %355 ]
  %367 = load i32, ptr %13, align 4, !tbaa !60
  %368 = load i32, ptr %5, align 4, !tbaa !60
  %369 = load i32, ptr %6, align 4, !tbaa !60
  %370 = load ptr, ptr %7, align 8, !tbaa !45
  %371 = load ptr, ptr %8, align 8, !tbaa !45
  call fastcc void @vect_create_vectorized_promotion_stmts(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %367, ptr noundef nonnull %0, ptr noundef %366, ptr noundef %1, ptr noundef %3, i32 noundef %368, i32 noundef %369, ptr noundef %370, ptr noundef %371, i32 noundef %209, ptr noundef nonnull %12)
  %372 = add nuw nsw i32 %324, 1
  %373 = icmp eq i32 %372, %170
  br i1 %373, label %374, label %323, !llvm.loop !189

374:                                              ; preds = %365, %319
  %375 = phi ptr [ null, %319 ], [ %366, %365 ]
  call void @free(ptr noundef %273)
  %376 = icmp eq ptr %375, null
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  call void @free(ptr noundef %375)
  br label %378

378:                                              ; preds = %374, %377
  %379 = load ptr, ptr %16, align 8, !tbaa !45
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %378
  call void @free(ptr noundef %379)
  br label %382

382:                                              ; preds = %378, %381
  store ptr null, ptr %16, align 8, !tbaa !45
  %383 = load ptr, ptr %14, align 8, !tbaa !45
  %384 = icmp eq ptr %383, null
  br i1 %384, label %386, label %385

385:                                              ; preds = %382
  call void @free(ptr noundef %383)
  br label %386

386:                                              ; preds = %382, %385
  store ptr null, ptr %14, align 8, !tbaa !45
  %387 = load ptr, ptr %15, align 8, !tbaa !45
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %386
  call void @free(ptr noundef %387)
  br label %390

390:                                              ; preds = %386, %389
  store ptr null, ptr %15, align 8, !tbaa !45
  %391 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 6
  %392 = load ptr, ptr %391, align 8, !tbaa !162
  store ptr %392, ptr %2, align 8, !tbaa !45
  br label %393

393:                                              ; preds = %195, %100, %244, %238, %241, %199, %202, %187, %190, %155, %149, %120, %62, %49, %45, %41, %390, %262
  %394 = phi i8 [ 1, %390 ], [ 1, %262 ], [ 0, %41 ], [ 0, %45 ], [ 0, %49 ], [ 0, %62 ], [ 0, %120 ], [ 0, %149 ], [ 0, %155 ], [ 0, %190 ], [ 0, %187 ], [ 0, %202 ], [ 0, %199 ], [ 0, %241 ], [ 0, %238 ], [ 0, %244 ], [ 0, %100 ], [ 0, %195 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i8 %394
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_type_demotion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !44 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 8, !tbaa !91
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ 0, %17 ]
  %24 = icmp ugt i32 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @stmt_vec_info_vec, align 8
  %28 = add i32 %15, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %27, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  br label %32

32:                                               ; preds = %4, %26
  %33 = phi ptr [ %31, %26 ], [ null, %4 ]
  %34 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store i64 34359738376, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 0, ptr %10, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store ptr null, ptr %11, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  store ptr null, ptr %12, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2413, ptr noundef nonnull @.str.8) #17
  br label %38

38:                                               ; preds = %32, %37
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !93
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %321, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 16
  %44 = load i32, ptr %43, align 8, !tbaa !97
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %321

46:                                               ; preds = %42
  %47 = load i32, ptr %0, align 8
  %48 = and i32 %47, 255
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %321

50:                                               ; preds = %46
  %51 = zext nneg i32 %48 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !60
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !103
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds i8, ptr %0, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 141
  br i1 %64, label %65, label %321

65:                                               ; preds = %59
  %66 = load i32, ptr %0, align 8
  %67 = trunc i32 %66 to i8
  switch i8 %67, label %70 [
    i8 6, label %68
    i8 1, label %68
    i8 8, label %71
  ]

68:                                               ; preds = %65, %65
  %69 = lshr i32 %66, 16
  br label %71

70:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.8) #17
  br label %71

71:                                               ; preds = %70, %68, %65
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ], [ 59, %65 ]
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !56
  %76 = icmp eq i8 %75, 3
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -1
  %81 = icmp ult i32 %80, 9
  tail call void @llvm.assume(i1 %81)
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !60
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !103
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %90

90:                                               ; preds = %89, %77
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = load i64, ptr %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 65535
  br label %97

97:                                               ; preds = %71, %90
  %98 = phi i32 [ %96, %90 ], [ %72, %71 ]
  switch i32 %98, label %321 [
    i32 116, label %99
    i32 113, label %99
  ]

99:                                               ; preds = %97, %97
  %100 = load i32, ptr %0, align 8
  %101 = and i32 %100, 255
  %102 = add nsw i32 %101, -10
  %103 = icmp ult i32 %102, -9
  br i1 %103, label %117, label %104

104:                                              ; preds = %99
  %105 = zext nneg i32 %101 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !60
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !103
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %113

113:                                              ; preds = %112, %104
  %114 = getelementptr inbounds i8, ptr %0, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !45
  br label %117

117:                                              ; preds = %99, %113
  %118 = phi ptr [ %116, %113 ], [ null, %99 ]
  %119 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %120)
  %122 = icmp eq ptr %121, null
  br i1 %122, label %321, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %0, align 8
  %127 = and i32 %126, 255
  %128 = add nsw i32 %127, -10
  %129 = icmp ult i32 %128, -9
  br i1 %129, label %142, label %130

130:                                              ; preds = %123
  %131 = zext nneg i32 %127 to i64
  %132 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !60
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !103
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %139

139:                                              ; preds = %138, %130
  %140 = getelementptr inbounds i8, ptr %0, i64 %136
  %141 = load ptr, ptr %140, align 8, !tbaa !45
  br label %142

142:                                              ; preds = %123, %139
  %143 = phi ptr [ %141, %139 ], [ null, %123 ]
  %144 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !56
  %146 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %145)
  %147 = icmp eq ptr %146, null
  br i1 %147, label %321, label %148

148:                                              ; preds = %142
  %149 = and i32 %125, 1023
  %150 = zext nneg i32 %149 to i64
  %151 = shl nuw i64 1, %150
  %152 = trunc i64 %151 to i32
  %153 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 1023
  %156 = zext nneg i32 %155 to i64
  %157 = shl nuw i64 1, %156
  %158 = trunc i64 %157 to i32
  %159 = icmp slt i32 %152, %158
  br i1 %159, label %160, label %321

160:                                              ; preds = %148
  %161 = icmp eq ptr %3, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct._loop_vec_info, ptr %35, i64 0, i32 6
  %164 = load i32, ptr %163, align 8, !tbaa !182
  %165 = sdiv i32 %164, %158
  br label %166

166:                                              ; preds = %160, %162
  %167 = phi i32 [ %165, %162 ], [ 1, %160 ]
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2453, ptr noundef nonnull @.str.8) #17
  br label %170

170:                                              ; preds = %166, %169
  %171 = load ptr, ptr %144, align 8, !tbaa !56
  %172 = load i64, ptr %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = and i32 %173, 65535
  %175 = add nsw i32 %174, -6
  %176 = icmp ult i32 %175, 3
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load ptr, ptr %119, align 8, !tbaa !56
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 65535
  %182 = add nsw i32 %181, -6
  %183 = icmp ult i32 %182, 3
  br i1 %183, label %192, label %184

184:                                              ; preds = %177, %170
  %185 = and i64 %172, 65535
  %186 = icmp eq i64 %185, 9
  br i1 %186, label %187, label %321

187:                                              ; preds = %184
  %188 = load ptr, ptr %119, align 8, !tbaa !56
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 9
  br i1 %191, label %192, label %321

192:                                              ; preds = %177, %187
  %193 = call zeroext i8 @vect_is_simple_use(ptr noundef %118, ptr noundef %35, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8), !range !74
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %321, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %200 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %199)
  br label %321

201:                                              ; preds = %192
  %202 = call zeroext i8 @supportable_narrowing_operation(i32 noundef %98, ptr noundef nonnull %0, ptr noundef nonnull %121, ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %12), !range !74
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %321, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 5
  store ptr %121, ptr %205, align 8, !tbaa !159
  %206 = icmp eq ptr %2, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  store i32 10, ptr %33, align 8, !tbaa !108
  %208 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %212 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 29, i64 1, ptr %211)
  br label %213

213:                                              ; preds = %210, %207
  call void @vect_model_simple_cost(ptr noundef nonnull %33, i32 noundef %167, ptr noundef nonnull %8, ptr noundef null)
  br label %321

214:                                              ; preds = %204
  %215 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.67, i32 noundef %167)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, ptr %10, align 4, !tbaa !60
  %222 = icmp eq i32 %221, 0
  %223 = add nsw i32 %221, 1
  %224 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %223) #17
  %225 = tail call ptr @vect_create_destination_var(ptr noundef %143, ptr noundef nonnull %146) #17
  %226 = load i32, ptr %224, align 8, !tbaa !183
  %227 = add i32 %226, 1
  store i32 %227, ptr %224, align 8, !tbaa !183
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds %struct.VEC_tree_base, ptr %224, i64 0, i32 2, i64 %228
  store ptr %225, ptr %229, align 8, !tbaa !45
  br i1 %222, label %256, label %230

230:                                              ; preds = %220
  %231 = load ptr, ptr %12, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = load i32, ptr %231, align 8, !tbaa !183
  br label %235

235:                                              ; preds = %230, %233
  %236 = phi i32 [ 0, %230 ], [ %234, %233 ]
  br label %237

237:                                              ; preds = %235, %250
  %238 = phi i32 [ %239, %250 ], [ %236, %235 ]
  %239 = add i32 %238, -1
  br i1 %232, label %247, label %240

240:                                              ; preds = %237
  %241 = load i32, ptr %231, align 8, !tbaa !183
  %242 = icmp ugt i32 %241, %239
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = zext i32 %239 to i64
  %245 = getelementptr inbounds %struct.VEC_tree_base, ptr %231, i64 0, i32 2, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !45
  br label %247

247:                                              ; preds = %237, %240, %243
  %248 = phi ptr [ %246, %243 ], [ null, %240 ], [ null, %237 ]
  %249 = phi i1 [ false, %243 ], [ true, %240 ], [ true, %237 ]
  br i1 %249, label %256, label %250

250:                                              ; preds = %247
  %251 = tail call ptr @vect_create_destination_var(ptr noundef %143, ptr noundef %248) #17
  %252 = load i32, ptr %224, align 8, !tbaa !183
  %253 = add i32 %252, 1
  store i32 %253, ptr %224, align 8, !tbaa !183
  %254 = zext i32 %252 to i64
  %255 = getelementptr inbounds %struct.VEC_tree_base, ptr %224, i64 0, i32 2, i64 %254
  store ptr %251, ptr %255, align 8, !tbaa !45
  br label %237, !llvm.loop !190

256:                                              ; preds = %247, %220
  store ptr %118, ptr %13, align 8, !tbaa !45
  store ptr null, ptr %9, align 8, !tbaa !45
  %257 = icmp sgt i32 %167, 0
  br i1 %257, label %258, label %306

258:                                              ; preds = %256
  %259 = load i32, ptr %8, align 8
  %260 = icmp sgt i32 %221, 0
  %261 = getelementptr inbounds %struct.VEC_tree_base, ptr %224, i64 0, i32 2
  %262 = load i32, ptr %5, align 4
  br label %263

263:                                              ; preds = %258, %302
  %264 = phi i32 [ 0, %258 ], [ %304, %302 ]
  br i1 %161, label %266, label %265

265:                                              ; preds = %263
  call void @vect_get_slp_defs(ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef null) #17
  br label %294

266:                                              ; preds = %263
  %267 = load ptr, ptr %11, align 8, !tbaa !45
  %268 = icmp eq ptr %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  call void @free(ptr noundef %267)
  br label %270

270:                                              ; preds = %266, %269
  store ptr null, ptr %11, align 8, !tbaa !45
  br i1 %222, label %282, label %271

271:                                              ; preds = %270
  %272 = icmp sgt i32 %221, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %271, %273
  %274 = phi i32 [ %276, %273 ], [ 1, %271 ]
  %275 = phi i32 [ %277, %273 ], [ 0, %271 ]
  %276 = shl nsw i32 %274, 1
  %277 = add nuw nsw i32 %275, 1
  %278 = icmp eq i32 %277, %221
  br i1 %278, label %279, label %273, !llvm.loop !186

279:                                              ; preds = %273, %271
  %280 = phi i32 [ 1, %271 ], [ %276, %273 ]
  %281 = shl nsw i32 %280, 1
  br label %282

282:                                              ; preds = %270, %279
  %283 = phi i32 [ %281, %279 ], [ 2, %270 ]
  %284 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %283) #17
  store ptr %284, ptr %11, align 8, !tbaa !45
  br i1 %260, label %285, label %291

285:                                              ; preds = %282, %285
  %286 = phi i32 [ %288, %285 ], [ 1, %282 ]
  %287 = phi i32 [ %289, %285 ], [ 0, %282 ]
  %288 = shl nsw i32 %286, 1
  %289 = add nuw nsw i32 %287, 1
  %290 = icmp eq i32 %289, %221
  br i1 %290, label %291, label %285, !llvm.loop !186

291:                                              ; preds = %285, %282
  %292 = phi i32 [ 1, %282 ], [ %288, %285 ]
  %293 = add nsw i32 %292, -1
  call fastcc void @vect_get_loop_based_defs(ptr noundef nonnull %13, ptr noundef nonnull %0, i32 noundef %259, ptr noundef nonnull %11, i32 noundef %293)
  br label %294

294:                                              ; preds = %265, %291
  %295 = load i32, ptr %224, align 8, !tbaa !183
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %294
  %298 = zext i32 %295 to i64
  %299 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %295) #17
  store i32 %295, ptr %299, align 8, !tbaa !187
  %300 = getelementptr inbounds %struct.VEC_tree_base, ptr %299, i64 0, i32 2
  %301 = shl nuw nsw i64 %298, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %300, ptr nonnull align 8 %261, i64 %301, i1 false)
  br label %302

302:                                              ; preds = %294, %297
  %303 = phi ptr [ %299, %297 ], [ null, %294 ]
  call fastcc void @vect_create_vectorized_demotion_stmts(ptr noundef nonnull %11, i32 noundef %221, ptr noundef nonnull %0, ptr noundef %303, ptr noundef %1, ptr noundef %3, i32 noundef %262, ptr noundef nonnull %9)
  %304 = add nuw nsw i32 %264, 1
  %305 = icmp eq i32 %304, %167
  br i1 %305, label %306, label %263, !llvm.loop !191

306:                                              ; preds = %302, %256
  %307 = phi ptr [ null, %256 ], [ %303, %302 ]
  %308 = load ptr, ptr %11, align 8, !tbaa !45
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  call void @free(ptr noundef %308)
  br label %311

311:                                              ; preds = %306, %310
  store ptr null, ptr %11, align 8, !tbaa !45
  call void @free(ptr noundef %224)
  %312 = icmp eq ptr %307, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %311
  call void @free(ptr noundef %307)
  br label %314

314:                                              ; preds = %311, %313
  %315 = load ptr, ptr %12, align 8, !tbaa !45
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %314
  call void @free(ptr noundef %315)
  br label %318

318:                                              ; preds = %314, %317
  store ptr null, ptr %12, align 8, !tbaa !45
  %319 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 6
  %320 = load ptr, ptr %319, align 8, !tbaa !162
  store ptr %320, ptr %2, align 8, !tbaa !45
  br label %321

321:                                              ; preds = %187, %117, %201, %195, %198, %184, %148, %142, %97, %59, %46, %42, %38, %318, %213
  %322 = phi i8 [ 1, %318 ], [ 1, %213 ], [ 0, %38 ], [ 0, %42 ], [ 0, %46 ], [ 0, %59 ], [ 0, %97 ], [ 0, %142 ], [ 0, %148 ], [ 0, %184 ], [ 0, %198 ], [ 0, %195 ], [ 0, %201 ], [ 0, %117 ], [ 0, %187 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i8 %322
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_conversion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !44 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr @stmt_vec_info_vec, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 8, !tbaa !91
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 0, %18 ]
  %25 = icmp ugt i32 %16, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr @stmt_vec_info_vec, align 8
  %29 = add i32 %16, -1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %28, i64 0, i32 2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %4, %27
  %34 = phi ptr [ %32, %27 ], [ null, %4 ]
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store i64 34359738376, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  store ptr null, ptr %12, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  store ptr null, ptr %13, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1568, ptr noundef nonnull @.str.8) #17
  br label %39

39:                                               ; preds = %33, %38
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !93
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %519, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !97
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %519

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %519

51:                                               ; preds = %47
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !103
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %0, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 141
  br i1 %65, label %66, label %519

66:                                               ; preds = %60
  %67 = load i32, ptr %0, align 8
  %68 = trunc i32 %67 to i8
  switch i8 %68, label %71 [
    i8 6, label %69
    i8 1, label %69
    i8 8, label %72
  ]

69:                                               ; preds = %66, %66
  %70 = lshr i32 %67, 16
  br label %72

71:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.8) #17
  br label %72

72:                                               ; preds = %71, %69, %66
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ], [ 59, %66 ]
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = icmp eq i8 %76, 3
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load i32, ptr %0, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -1
  %82 = icmp ult i32 %81, 9
  tail call void @llvm.assume(i1 %82)
  %83 = zext nneg i32 %80 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !60
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !103
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %91

91:                                               ; preds = %90, %78
  %92 = getelementptr inbounds i8, ptr %0, i64 %88
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !45
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 65535
  br label %98

98:                                               ; preds = %72, %91
  %99 = phi i32 [ %97, %91 ], [ %73, %72 ]
  %100 = add nsw i32 %99, -79
  %101 = icmp ult i32 %100, -2
  br i1 %101, label %519, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %0, align 8
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -10
  %106 = icmp ult i32 %105, -9
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = zext nneg i32 %104 to i64
  %109 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !60
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !103
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %116

116:                                              ; preds = %115, %107
  %117 = getelementptr inbounds i8, ptr %0, i64 %113
  %118 = getelementptr inbounds ptr, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !45
  br label %120

120:                                              ; preds = %102, %116
  %121 = phi ptr [ %119, %116 ], [ null, %102 ]
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  %124 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %123)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %519, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 1023
  %130 = zext nneg i32 %129 to i64
  %131 = shl nuw i64 1, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, ptr %0, align 8
  %134 = and i32 %133, 255
  %135 = add nsw i32 %134, -10
  %136 = icmp ult i32 %135, -9
  br i1 %136, label %149, label %137

137:                                              ; preds = %126
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !60
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !103
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %146

146:                                              ; preds = %145, %137
  %147 = getelementptr inbounds i8, ptr %0, i64 %143
  %148 = load ptr, ptr %147, align 8, !tbaa !45
  br label %149

149:                                              ; preds = %126, %146
  %150 = phi ptr [ %148, %146 ], [ null, %126 ]
  %151 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  %153 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %152)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %519, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.tree_type, ptr %153, i64 0, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, 1023
  %159 = zext nneg i32 %158 to i64
  %160 = shl nuw i64 1, %159
  %161 = trunc i64 %160 to i32
  %162 = sdiv i32 %161, 2
  %163 = icmp eq i32 %162, %132
  br i1 %163, label %169, label %164

164:                                              ; preds = %155
  %165 = icmp eq i32 %161, %132
  br i1 %165, label %169, label %166

166:                                              ; preds = %164
  %167 = sdiv i32 %132, 2
  %168 = icmp eq i32 %167, %161
  br i1 %168, label %169, label %519

169:                                              ; preds = %166, %164, %155
  %170 = phi i1 [ false, %155 ], [ true, %164 ], [ false, %166 ]
  %171 = phi i1 [ false, %155 ], [ false, %164 ], [ true, %166 ]
  %172 = phi i1 [ true, %155 ], [ false, %164 ], [ true, %166 ]
  %173 = phi i32 [ 0, %155 ], [ 1, %164 ], [ 2, %166 ]
  br i1 %170, label %174, label %179

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 5
  %176 = load ptr, ptr %175, align 8, !tbaa !159
  %177 = icmp eq ptr %176, %153
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1612, ptr noundef nonnull @.str.8) #17
  br label %179

179:                                              ; preds = %178, %174, %169
  %180 = load i64, ptr %123, align 8
  %181 = trunc i64 %180 to i32
  %182 = and i32 %181, 65535
  %183 = add nsw i32 %182, -6
  %184 = icmp ult i32 %183, 3
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load i64, ptr %152, align 8
  %187 = trunc i64 %186 to i32
  %188 = and i32 %187, 65535
  %189 = add nsw i32 %188, -6
  %190 = icmp ult i32 %189, 3
  br i1 %190, label %519, label %191

191:                                              ; preds = %185
  br i1 %184, label %198, label %192

192:                                              ; preds = %179, %191
  %193 = load i64, ptr %152, align 8
  %194 = trunc i64 %193 to i32
  %195 = and i32 %194, 65535
  %196 = add nsw i32 %195, -6
  %197 = icmp ult i32 %196, 3
  br i1 %197, label %198, label %519

198:                                              ; preds = %192, %191
  %199 = select i1 %184, ptr %124, ptr %153
  %200 = getelementptr inbounds %struct._loop_vec_info, ptr %36, i64 0, i32 6
  %201 = load i32, ptr %200, align 8, !tbaa !182
  %202 = select i1 %163, i32 %161, i32 %132
  %203 = sdiv i32 %201, %202
  %204 = icmp ne ptr %3, null
  %205 = select i1 %204, i32 1, i32 %203
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1633, ptr noundef nonnull @.str.8) #17
  br label %208

208:                                              ; preds = %198, %207
  %209 = call zeroext i8 @vect_is_simple_use(ptr noundef %121, ptr noundef %36, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11), !range !74
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %519, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %216 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %215)
  br label %519

217:                                              ; preds = %208
  br i1 %170, label %218, label %222

218:                                              ; preds = %217
  %219 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 2), align 8, !tbaa !192
  %220 = tail call ptr %219(i32 noundef %99, ptr noundef nonnull %199) #17
  %221 = icmp eq ptr %220, null
  br i1 %221, label %230, label %222

222:                                              ; preds = %218, %217
  br i1 %171, label %223, label %226

223:                                              ; preds = %222
  %224 = call zeroext i8 @supportable_widening_operation(i32 noundef %99, ptr noundef nonnull %0, ptr noundef nonnull %124, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %13), !range !74
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223, %222
  br i1 %163, label %227, label %236

227:                                              ; preds = %226
  %228 = call zeroext i8 @supportable_narrowing_operation(i32 noundef %99, ptr noundef nonnull %0, ptr noundef nonnull %124, ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef nonnull %13), !range !74
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227, %223, %218
  %231 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %519, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %235 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 35, i64 1, ptr %234)
  br label %519

236:                                              ; preds = %227, %226
  br i1 %172, label %237, label %242

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 5
  store ptr %124, ptr %238, align 8, !tbaa !159
  %239 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 25
  %240 = load i32, ptr %239, align 4, !tbaa !122
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %519

242:                                              ; preds = %237, %236
  %243 = icmp eq ptr %2, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %242
  store i32 11, ptr %34, align 8, !tbaa !108
  br label %519

245:                                              ; preds = %242
  %246 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %250 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 21, i64 1, ptr %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = tail call ptr @vect_create_destination_var(ptr noundef %150, ptr noundef nonnull %153) #17
  %253 = or i1 %204, %172
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  store ptr %255, ptr %12, align 8, !tbaa !45
  br label %256

256:                                              ; preds = %254, %251
  %257 = icmp sgt i32 %205, 0
  switch i32 %173, label %514 [
    i32 1, label %272
    i32 2, label %263
    i32 0, label %258
  ]

258:                                              ; preds = %256
  br i1 %257, label %259, label %511

259:                                              ; preds = %258
  %260 = load i32, ptr %11, align 8
  %261 = load i32, ptr %5, align 4
  %262 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 6
  br label %442

263:                                              ; preds = %256
  br i1 %257, label %264, label %515

264:                                              ; preds = %263
  %265 = load i32, ptr %11, align 8
  %266 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 5
  %267 = load i32, ptr %5, align 4
  %268 = load ptr, ptr %7, align 8
  %269 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 6
  %270 = load i32, ptr %6, align 4
  %271 = load ptr, ptr %8, align 8
  br label %384

272:                                              ; preds = %256
  br i1 %257, label %273, label %515

273:                                              ; preds = %272
  %274 = load i32, ptr %11, align 8
  %275 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  %276 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 6
  br label %277

277:                                              ; preds = %273, %380
  %278 = phi i32 [ 0, %273 ], [ %382, %380 ]
  %279 = phi ptr [ null, %273 ], [ %301, %380 ]
  %280 = phi ptr [ null, %273 ], [ %381, %380 ]
  %281 = icmp eq i32 %278, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  call fastcc void @vect_get_vec_defs(ptr noundef %121, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef null, ptr noundef %3)
  br label %296

283:                                              ; preds = %277
  %284 = load ptr, ptr %12, align 8, !tbaa !45
  %285 = load i32, ptr %284, align 8, !tbaa !183
  %286 = add i32 %285, -1
  store i32 %286, ptr %284, align 8, !tbaa !183
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.VEC_tree_base, ptr %284, i64 0, i32 2, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !45
  %290 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %274, ptr noundef %289)
  %291 = load ptr, ptr %12, align 8, !tbaa !45
  %292 = load i32, ptr %291, align 8, !tbaa !183
  %293 = add i32 %292, 1
  store i32 %293, ptr %291, align 8, !tbaa !183
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds %struct.VEC_tree_base, ptr %291, i64 0, i32 2, i64 %294
  store ptr %290, ptr %295, align 8, !tbaa !45
  br label %296

296:                                              ; preds = %283, %282
  %297 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 2), align 8, !tbaa !192
  %298 = call ptr %297(i32 noundef %99, ptr noundef nonnull %199) #17
  br label %299

299:                                              ; preds = %354, %296
  %300 = phi i64 [ %355, %354 ], [ 0, %296 ]
  %301 = phi ptr [ %315, %354 ], [ %279, %296 ]
  %302 = load ptr, ptr %12, align 8
  %303 = icmp eq ptr %302, null
  br i1 %303, label %311, label %304

304:                                              ; preds = %299
  %305 = load i32, ptr %302, align 8, !tbaa !183
  %306 = zext i32 %305 to i64
  %307 = icmp ult i64 %300, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.VEC_tree_base, ptr %302, i64 0, i32 2, i64 %300
  %310 = load ptr, ptr %309, align 8, !tbaa !45
  br label %311

311:                                              ; preds = %299, %304, %308
  %312 = phi ptr [ %310, %308 ], [ null, %304 ], [ null, %299 ]
  %313 = phi i1 [ false, %308 ], [ true, %304 ], [ true, %299 ]
  br i1 %313, label %356, label %314

314:                                              ; preds = %311
  %315 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %298, i32 noundef 1, ptr noundef %312) #17
  %316 = load ptr, ptr @cfun, align 8, !tbaa !45
  %317 = call ptr @make_ssa_name_fn(ptr noundef %316, ptr noundef %252, ptr noundef %315) #17
  %318 = load i32, ptr %315, align 8
  %319 = and i32 %318, 255
  %320 = add nsw i32 %319, -10
  %321 = icmp ult i32 %320, -9
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = getelementptr inbounds %struct.gimple_statement_base, ptr %315, i64 0, i32 3
  %324 = load i32, ptr %323, align 4, !tbaa !56
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %322, %314
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %327

327:                                              ; preds = %326, %322
  %328 = load i32, ptr %315, align 8
  %329 = and i32 %328, 255
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !60
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !103
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %327
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %338

338:                                              ; preds = %337, %327
  %339 = getelementptr inbounds i8, ptr %315, i64 %335
  store ptr %317, ptr %339, align 8, !tbaa !45
  %340 = icmp eq ptr %317, null
  br i1 %340, label %347, label %341

341:                                              ; preds = %338
  %342 = load i64, ptr %317, align 8
  %343 = and i64 %342, 65535
  %344 = icmp eq i64 %343, 141
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.tree_ssa_name, ptr %317, i64 0, i32 2
  store ptr %315, ptr %346, align 8, !tbaa !56
  br label %347

347:                                              ; preds = %338, %341, %345
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %315, ptr noundef %1)
  br i1 %204, label %348, label %354

348:                                              ; preds = %347
  %349 = load ptr, ptr %275, align 8, !tbaa !193
  %350 = load i32, ptr %349, align 8, !tbaa !89
  %351 = add i32 %350, 1
  store i32 %351, ptr %349, align 8, !tbaa !89
  %352 = zext i32 %350 to i64
  %353 = getelementptr inbounds %struct.VEC_gimple_base, ptr %349, i64 0, i32 2, i64 %352
  store ptr %315, ptr %353, align 8, !tbaa !45
  br label %354

354:                                              ; preds = %347, %348
  %355 = add nuw i64 %300, 1
  br label %299, !llvm.loop !195

356:                                              ; preds = %311
  br i1 %281, label %357, label %358

357:                                              ; preds = %356
  store ptr %301, ptr %2, align 8, !tbaa !45
  br label %360

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct._stmt_vec_info, ptr %280, i64 0, i32 14
  br label %360

360:                                              ; preds = %358, %357
  %361 = phi ptr [ %359, %358 ], [ %276, %357 ]
  store ptr %301, ptr %361, align 8, !tbaa !45
  %362 = getelementptr inbounds %struct.gimple_statement_base, ptr %301, i64 0, i32 1
  %363 = load i32, ptr %362, align 4, !tbaa !56
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %380, label %365

365:                                              ; preds = %360
  %366 = load ptr, ptr @stmt_vec_info_vec, align 8
  %367 = icmp eq ptr %366, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %365
  %369 = load i32, ptr %366, align 8, !tbaa !91
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi i32 [ %369, %368 ], [ 0, %365 ]
  %372 = icmp ugt i32 %363, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %374

374:                                              ; preds = %373, %370
  %375 = load ptr, ptr @stmt_vec_info_vec, align 8
  %376 = add i32 %363, -1
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %375, i64 0, i32 2, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !45
  br label %380

380:                                              ; preds = %360, %374
  %381 = phi ptr [ %379, %374 ], [ null, %360 ]
  %382 = add nuw nsw i32 %278, 1
  %383 = icmp eq i32 %382, %205
  br i1 %383, label %515, label %277, !llvm.loop !196

384:                                              ; preds = %264, %438
  %385 = phi ptr [ null, %264 ], [ %394, %438 ]
  %386 = phi i32 [ 0, %264 ], [ %440, %438 ]
  %387 = phi ptr [ null, %264 ], [ %439, %438 ]
  %388 = icmp eq i32 %386, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %384
  %390 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %121, ptr noundef nonnull %0, ptr noundef null)
  br label %393

391:                                              ; preds = %384
  %392 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %265, ptr noundef %385)
  br label %393

393:                                              ; preds = %391, %389
  %394 = phi ptr [ %390, %389 ], [ %392, %391 ]
  store ptr %124, ptr %266, align 8, !tbaa !159
  %395 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %267, ptr noundef %268, ptr noundef %394, ptr noundef null, i32 noundef 1, ptr noundef %252, ptr noundef %1, ptr noundef nonnull %0)
  %396 = getelementptr inbounds %struct._stmt_vec_info, ptr %387, i64 0, i32 14
  %397 = select i1 %388, ptr %269, ptr %396
  store ptr %395, ptr %397, align 8, !tbaa !45
  %398 = getelementptr inbounds %struct.gimple_statement_base, ptr %395, i64 0, i32 1
  %399 = load i32, ptr %398, align 4, !tbaa !56
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %416, label %401

401:                                              ; preds = %393
  %402 = load ptr, ptr @stmt_vec_info_vec, align 8
  %403 = icmp eq ptr %402, null
  br i1 %403, label %406, label %404

404:                                              ; preds = %401
  %405 = load i32, ptr %402, align 8, !tbaa !91
  br label %406

406:                                              ; preds = %404, %401
  %407 = phi i32 [ %405, %404 ], [ 0, %401 ]
  %408 = icmp ugt i32 %399, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %410

410:                                              ; preds = %409, %406
  %411 = load ptr, ptr @stmt_vec_info_vec, align 8
  %412 = add i32 %399, -1
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %411, i64 0, i32 2, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !45
  br label %416

416:                                              ; preds = %393, %410
  %417 = phi ptr [ %415, %410 ], [ null, %393 ]
  %418 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %270, ptr noundef %271, ptr noundef %394, ptr noundef null, i32 noundef 1, ptr noundef %252, ptr noundef %1, ptr noundef nonnull %0)
  %419 = getelementptr inbounds %struct._stmt_vec_info, ptr %417, i64 0, i32 14
  store ptr %418, ptr %419, align 8, !tbaa !106
  %420 = getelementptr inbounds %struct.gimple_statement_base, ptr %418, i64 0, i32 1
  %421 = load i32, ptr %420, align 4, !tbaa !56
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %438, label %423

423:                                              ; preds = %416
  %424 = load ptr, ptr @stmt_vec_info_vec, align 8
  %425 = icmp eq ptr %424, null
  br i1 %425, label %428, label %426

426:                                              ; preds = %423
  %427 = load i32, ptr %424, align 8, !tbaa !91
  br label %428

428:                                              ; preds = %426, %423
  %429 = phi i32 [ %427, %426 ], [ 0, %423 ]
  %430 = icmp ugt i32 %421, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %432

432:                                              ; preds = %431, %428
  %433 = load ptr, ptr @stmt_vec_info_vec, align 8
  %434 = add i32 %421, -1
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %433, i64 0, i32 2, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !45
  br label %438

438:                                              ; preds = %416, %432
  %439 = phi ptr [ %437, %432 ], [ null, %416 ]
  %440 = add nuw nsw i32 %386, 1
  %441 = icmp eq i32 %440, %205
  br i1 %441, label %515, label %384, !llvm.loop !197

442:                                              ; preds = %259, %507
  %443 = phi ptr [ null, %259 ], [ %453, %507 ]
  %444 = phi i32 [ 0, %259 ], [ %509, %507 ]
  %445 = phi ptr [ null, %259 ], [ %508, %507 ]
  %446 = icmp eq i32 %444, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %121, ptr noundef nonnull %0, ptr noundef null)
  br label %451

449:                                              ; preds = %442
  %450 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %260, ptr noundef %443)
  br label %451

451:                                              ; preds = %449, %447
  %452 = phi ptr [ %450, %449 ], [ %448, %447 ]
  %453 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %260, ptr noundef %452)
  %454 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %261, ptr noundef %252, ptr noundef %452, ptr noundef %453) #17
  %455 = load ptr, ptr @cfun, align 8, !tbaa !45
  %456 = tail call ptr @make_ssa_name_fn(ptr noundef %455, ptr noundef %252, ptr noundef %454) #17
  %457 = load i32, ptr %454, align 8
  %458 = and i32 %457, 255
  %459 = add nsw i32 %458, -10
  %460 = icmp ult i32 %459, -9
  br i1 %460, label %465, label %461

461:                                              ; preds = %451
  %462 = getelementptr inbounds %struct.gimple_statement_base, ptr %454, i64 0, i32 3
  %463 = load i32, ptr %462, align 4, !tbaa !56
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %461, %451
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %466

466:                                              ; preds = %465, %461
  %467 = load i32, ptr %454, align 8
  %468 = and i32 %467, 255
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !60
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %472
  %474 = load i64, ptr %473, align 8, !tbaa !103
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %466
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %477

477:                                              ; preds = %476, %466
  %478 = getelementptr inbounds i8, ptr %454, i64 %474
  store ptr %456, ptr %478, align 8, !tbaa !45
  %479 = icmp eq ptr %456, null
  br i1 %479, label %486, label %480

480:                                              ; preds = %477
  %481 = load i64, ptr %456, align 8
  %482 = and i64 %481, 65535
  %483 = icmp eq i64 %482, 141
  br i1 %483, label %484, label %486

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.tree_ssa_name, ptr %456, i64 0, i32 2
  store ptr %454, ptr %485, align 8, !tbaa !56
  br label %486

486:                                              ; preds = %477, %480, %484
  tail call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %454, ptr noundef %1)
  %487 = getelementptr inbounds %struct._stmt_vec_info, ptr %445, i64 0, i32 14
  %488 = select i1 %446, ptr %262, ptr %487
  store ptr %454, ptr %488, align 8, !tbaa !45
  %489 = getelementptr inbounds %struct.gimple_statement_base, ptr %454, i64 0, i32 1
  %490 = load i32, ptr %489, align 4, !tbaa !56
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %507, label %492

492:                                              ; preds = %486
  %493 = load ptr, ptr @stmt_vec_info_vec, align 8
  %494 = icmp eq ptr %493, null
  br i1 %494, label %497, label %495

495:                                              ; preds = %492
  %496 = load i32, ptr %493, align 8, !tbaa !91
  br label %497

497:                                              ; preds = %495, %492
  %498 = phi i32 [ %496, %495 ], [ 0, %492 ]
  %499 = icmp ugt i32 %490, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %497
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %501

501:                                              ; preds = %500, %497
  %502 = load ptr, ptr @stmt_vec_info_vec, align 8
  %503 = add i32 %490, -1
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %502, i64 0, i32 2, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !45
  br label %507

507:                                              ; preds = %486, %501
  %508 = phi ptr [ %506, %501 ], [ null, %486 ]
  %509 = add nuw nsw i32 %444, 1
  %510 = icmp eq i32 %509, %205
  br i1 %510, label %511, label %442, !llvm.loop !198

511:                                              ; preds = %507, %258
  %512 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 6
  %513 = load ptr, ptr %512, align 8, !tbaa !162
  store ptr %513, ptr %2, align 8, !tbaa !45
  br label %515

514:                                              ; preds = %256
  unreachable

515:                                              ; preds = %438, %380, %263, %272, %511
  %516 = load ptr, ptr %12, align 8, !tbaa !45
  %517 = icmp eq ptr %516, null
  br i1 %517, label %519, label %518

518:                                              ; preds = %515
  call void @free(ptr noundef %516)
  store ptr null, ptr %12, align 8, !tbaa !45
  br label %519

519:                                              ; preds = %192, %166, %185, %515, %518, %237, %230, %233, %211, %214, %149, %120, %98, %60, %47, %43, %39, %244
  %520 = phi i8 [ 1, %244 ], [ 0, %39 ], [ 0, %43 ], [ 0, %47 ], [ 0, %60 ], [ 0, %98 ], [ 0, %120 ], [ 0, %149 ], [ 0, %185 ], [ 0, %214 ], [ 0, %211 ], [ 0, %233 ], [ 0, %230 ], [ 0, %237 ], [ 1, %518 ], [ 1, %515 ], [ 0, %166 ], [ 0, %192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i8 %520
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_operation(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !44 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp ugt i32 %11, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @stmt_vec_info_vec, align 8
  %24 = add i32 %11, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %23, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  br label %28

28:                                               ; preds = %4, %22
  %29 = phi ptr [ %27, %22 ], [ null, %4 ]
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 34359738376, ptr %7, align 8
  %34 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = trunc i64 %38 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store ptr null, ptr %9, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 26
  %41 = load ptr, ptr %40, align 8, !tbaa !146
  %42 = icmp eq ptr %33, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct._loop_vec_info, ptr %33, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !182
  br label %46

46:                                               ; preds = %28, %43
  %47 = phi i32 [ %45, %43 ], [ 1, %28 ]
  %48 = icmp eq ptr %3, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._loop_vec_info, ptr %33, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !182
  %52 = sdiv i32 %51, %39
  br label %53

53:                                               ; preds = %46, %49
  %54 = phi i32 [ %52, %49 ], [ 1, %46 ]
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1966, ptr noundef nonnull @.str.8) #17
  br label %57

57:                                               ; preds = %53, %56
  %58 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !93
  %60 = icmp ne i32 %59, 0
  %61 = icmp ne ptr %41, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %653

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 16
  %65 = load i32, ptr %64, align 8, !tbaa !97
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %653

67:                                               ; preds = %63
  %68 = load i32, ptr %0, align 8
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 6
  br i1 %70, label %71, label %653

71:                                               ; preds = %67
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !60
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !103
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %80

80:                                               ; preds = %79, %71
  %81 = getelementptr inbounds i8, ptr %0, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %653

86:                                               ; preds = %80
  %87 = load i32, ptr %0, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !60
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !103
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %0, i64 %97
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  br label %103

103:                                              ; preds = %86, %100
  %104 = phi ptr [ %102, %100 ], [ null, %86 ]
  %105 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !56
  %107 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %106)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %653, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.tree_type, ptr %107, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1023
  %113 = zext nneg i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, %39
  br i1 %116, label %117, label %653

117:                                              ; preds = %109
  %118 = load i32, ptr %0, align 8
  %119 = trunc i32 %118 to i8
  switch i8 %119, label %122 [
    i8 6, label %120
    i8 1, label %120
    i8 8, label %123
  ]

120:                                              ; preds = %117, %117
  %121 = lshr i32 %118, 16
  br label %123

122:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.8) #17
  br label %123

123:                                              ; preds = %122, %120, %117
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ], [ 59, %117 ]
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = icmp eq i8 %127, 3
  br i1 %128, label %129, label %149

129:                                              ; preds = %123
  %130 = load i32, ptr %0, align 8
  %131 = and i32 %130, 255
  %132 = add nsw i32 %131, -1
  %133 = icmp ult i32 %132, 9
  tail call void @llvm.assume(i1 %133)
  %134 = zext nneg i32 %131 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !60
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !103
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %142

142:                                              ; preds = %141, %129
  %143 = getelementptr inbounds i8, ptr %0, i64 %139
  %144 = getelementptr inbounds ptr, ptr %143, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !45
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65535
  br label %149

149:                                              ; preds = %123, %142
  %150 = phi i32 [ %148, %142 ], [ %124, %123 ]
  %151 = icmp eq i32 %150, 66
  %152 = select i1 %151, i32 63, i32 %150
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !56
  %156 = zext i8 %155 to i32
  %157 = icmp ne i8 %155, 2
  %158 = add i8 %155, -3
  %159 = icmp ult i8 %158, -2
  br i1 %159, label %160, label %166

160:                                              ; preds = %149
  %161 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %653, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.70, i32 noundef %156)
  br label %653

166:                                              ; preds = %149
  %167 = load i32, ptr %0, align 8
  %168 = and i32 %167, 255
  %169 = add nsw i32 %168, -10
  %170 = icmp ult i32 %169, -9
  br i1 %170, label %184, label %171

171:                                              ; preds = %166
  %172 = zext nneg i32 %168 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !60
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !103
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %180

180:                                              ; preds = %179, %171
  %181 = getelementptr inbounds i8, ptr %0, i64 %177
  %182 = getelementptr inbounds ptr, ptr %181, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !45
  br label %184

184:                                              ; preds = %166, %180
  %185 = phi ptr [ %183, %180 ], [ null, %166 ]
  %186 = call zeroext i8 @vect_is_simple_use(ptr noundef %185, ptr noundef %33, ptr noundef %41, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7), !range !74
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %653, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %193 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %192)
  br label %653

194:                                              ; preds = %184
  %195 = icmp eq i8 %155, 2
  br i1 %195, label %196, label %229

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %198 = load i32, ptr %197, align 4, !tbaa !56
  %199 = icmp ugt i32 %198, 2
  br i1 %199, label %200, label %218

200:                                              ; preds = %196
  %201 = load i32, ptr %0, align 8
  %202 = and i32 %201, 255
  %203 = add nsw i32 %202, -10
  %204 = icmp ult i32 %203, -9
  br i1 %204, label %218, label %205

205:                                              ; preds = %200
  %206 = zext nneg i32 %202 to i64
  %207 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !60
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !103
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %214

214:                                              ; preds = %213, %205
  %215 = getelementptr inbounds i8, ptr %0, i64 %211
  %216 = getelementptr inbounds ptr, ptr %215, i64 2
  %217 = load ptr, ptr %216, align 8, !tbaa !45
  br label %218

218:                                              ; preds = %196, %200, %214
  %219 = phi ptr [ null, %196 ], [ %217, %214 ], [ null, %200 ]
  %220 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %221 = call zeroext i8 @vect_is_simple_use(ptr noundef %219, ptr noundef %33, ptr noundef %41, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %220), !range !74
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %653, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %228 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %227)
  br label %653

229:                                              ; preds = %218, %194
  %230 = phi ptr [ %219, %218 ], [ null, %194 ]
  %231 = add nsw i32 %152, -83
  %232 = icmp ult i32 %231, 4
  br i1 %232, label %233, label %309

233:                                              ; preds = %229
  %234 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 3
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = tail call ptr @optab_for_tree_code(i32 noundef %152, ptr noundef %31, i32 noundef 2) #17
  %239 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %311, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %243 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 33, i64 1, ptr %242)
  br label %311

244:                                              ; preds = %233
  %245 = add i32 %235, -1
  %246 = icmp ult i32 %245, 2
  br i1 %246, label %247, label %303

247:                                              ; preds = %244
  %248 = tail call ptr @optab_for_tree_code(i32 noundef %152, ptr noundef %31, i32 noundef 1) #17
  %249 = icmp eq ptr %248, null
  br i1 %249, label %272, label %250

250:                                              ; preds = %247
  %251 = load i64, ptr %31, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 14
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %260

256:                                              ; preds = %250
  %257 = load i32, ptr %34, align 4
  %258 = lshr i32 %257, 16
  %259 = and i32 %258, 255
  br label %260

260:                                              ; preds = %256, %254
  %261 = phi i32 [ %255, %254 ], [ %259, %256 ]
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.optab_d, ptr %248, i64 0, i32 4, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !199
  %265 = icmp eq i32 %264, 2956
  br i1 %265, label %272, label %266

266:                                              ; preds = %260
  %267 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %311, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %271 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 33, i64 1, ptr %270)
  br label %311

272:                                              ; preds = %260, %247
  %273 = tail call ptr @optab_for_tree_code(i32 noundef %152, ptr noundef %31, i32 noundef 2) #17
  %274 = icmp eq ptr %273, null
  br i1 %274, label %311, label %275

275:                                              ; preds = %272
  %276 = load i64, ptr %31, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 14
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %285

281:                                              ; preds = %275
  %282 = load i32, ptr %34, align 4
  %283 = lshr i32 %282, 16
  %284 = and i32 %283, 255
  br label %285

285:                                              ; preds = %281, %279
  %286 = phi i32 [ %280, %279 ], [ %284, %281 ]
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.optab_d, ptr %273, i64 0, i32 4, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !199
  %290 = icmp eq i32 %289, 2956
  br i1 %290, label %311, label %291

291:                                              ; preds = %285
  %292 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %296 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 33, i64 1, ptr %295)
  br label %297

297:                                              ; preds = %294, %291
  %298 = icmp eq i32 %235, 1
  br i1 %298, label %299, label %311

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !56
  %302 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %301, ptr noundef %230) #17
  br label %311

303:                                              ; preds = %244
  %304 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %653, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %308 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 41, i64 1, ptr %307)
  br label %653

309:                                              ; preds = %229
  %310 = tail call ptr @optab_for_tree_code(i32 noundef %152, ptr noundef %31, i32 noundef 0) #17
  br label %311

311:                                              ; preds = %241, %237, %269, %266, %297, %299, %285, %272, %309
  %312 = phi ptr [ %238, %241 ], [ %238, %237 ], [ %248, %269 ], [ %248, %266 ], [ %273, %299 ], [ %273, %297 ], [ %273, %285 ], [ null, %272 ], [ %310, %309 ]
  %313 = phi ptr [ %230, %241 ], [ %230, %237 ], [ %230, %269 ], [ %230, %266 ], [ %302, %299 ], [ %230, %297 ], [ %230, %285 ], [ %230, %272 ], [ %230, %309 ]
  %314 = phi i1 [ true, %241 ], [ true, %237 ], [ false, %269 ], [ false, %266 ], [ true, %299 ], [ true, %297 ], [ true, %285 ], [ true, %272 ], [ true, %309 ]
  %315 = phi i1 [ false, %241 ], [ false, %237 ], [ true, %269 ], [ true, %266 ], [ false, %299 ], [ false, %297 ], [ false, %285 ], [ false, %272 ], [ false, %309 ]
  %316 = icmp eq ptr %312, null
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %653, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %322 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 9, i64 1, ptr %321)
  br label %653

323:                                              ; preds = %311
  %324 = load i64, ptr %31, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 14
  br i1 %326, label %327, label %329

327:                                              ; preds = %323
  %328 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %333

329:                                              ; preds = %323
  %330 = load i32, ptr %34, align 4
  %331 = lshr i32 %330, 16
  %332 = and i32 %331, 255
  br label %333

333:                                              ; preds = %329, %327
  %334 = phi i32 [ %328, %327 ], [ %332, %329 ]
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.optab_d, ptr %312, i64 0, i32 4, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !199
  %338 = icmp eq i32 %337, 2956
  br i1 %338, label %339, label %361

339:                                              ; preds = %333
  %340 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %344 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 27, i64 1, ptr %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = zext i32 %334 to i64
  %347 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !56
  %349 = icmp eq i8 %348, 4
  br i1 %349, label %350, label %653

350:                                              ; preds = %345
  %351 = tail call i32 @vect_min_worthwhile_factor(i32 noundef %152) #17
  %352 = icmp sge i32 %47, %351
  %353 = icmp ne ptr %2, null
  %354 = or i1 %353, %352
  br i1 %354, label %355, label %653

355:                                              ; preds = %350
  %356 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %360 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 27, i64 1, ptr %359)
  br label %361

361:                                              ; preds = %355, %358, %333
  %362 = load i64, ptr %31, align 8
  %363 = and i64 %362, 65535
  %364 = icmp eq i64 %363, 14
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %371

367:                                              ; preds = %361
  %368 = load i32, ptr %34, align 4
  %369 = lshr i32 %368, 16
  %370 = and i32 %369, 255
  br label %371

371:                                              ; preds = %367, %365
  %372 = phi i32 [ %366, %365 ], [ %370, %367 ]
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !56
  %376 = icmp eq i8 %375, 12
  br i1 %376, label %468, label %377

377:                                              ; preds = %371
  %378 = load i64, ptr %31, align 8
  %379 = and i64 %378, 65535
  %380 = icmp eq i64 %379, 14
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %387

383:                                              ; preds = %377
  %384 = load i32, ptr %34, align 4
  %385 = lshr i32 %384, 16
  %386 = and i32 %385, 255
  br label %387

387:                                              ; preds = %383, %381
  %388 = phi i32 [ %382, %381 ], [ %386, %383 ]
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !56
  %392 = icmp eq i8 %391, 17
  br i1 %392, label %468, label %393

393:                                              ; preds = %387
  %394 = load i64, ptr %31, align 8
  %395 = and i64 %394, 65535
  %396 = icmp eq i64 %395, 14
  br i1 %396, label %397, label %399

397:                                              ; preds = %393
  %398 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %403

399:                                              ; preds = %393
  %400 = load i32, ptr %34, align 4
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  br label %403

403:                                              ; preds = %399, %397
  %404 = phi i32 [ %398, %397 ], [ %402, %399 ]
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !56
  %408 = icmp eq i8 %407, 13
  br i1 %408, label %468, label %409

409:                                              ; preds = %403
  %410 = load i64, ptr %31, align 8
  %411 = and i64 %410, 65535
  %412 = icmp eq i64 %411, 14
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %419

415:                                              ; preds = %409
  %416 = load i32, ptr %34, align 4
  %417 = lshr i32 %416, 16
  %418 = and i32 %417, 255
  br label %419

419:                                              ; preds = %415, %413
  %420 = phi i32 [ %414, %413 ], [ %418, %415 ]
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !56
  %424 = icmp eq i8 %423, 14
  br i1 %424, label %468, label %425

425:                                              ; preds = %419
  %426 = load i64, ptr %31, align 8
  %427 = and i64 %426, 65535
  %428 = icmp eq i64 %427, 14
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  %430 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %435

431:                                              ; preds = %425
  %432 = load i32, ptr %34, align 4
  %433 = lshr i32 %432, 16
  %434 = and i32 %433, 255
  br label %435

435:                                              ; preds = %431, %429
  %436 = phi i32 [ %430, %429 ], [ %434, %431 ]
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !56
  %440 = icmp eq i8 %439, 15
  br i1 %440, label %468, label %441

441:                                              ; preds = %435
  %442 = load i64, ptr %31, align 8
  %443 = and i64 %442, 65535
  %444 = icmp eq i64 %443, 14
  br i1 %444, label %445, label %447

445:                                              ; preds = %441
  %446 = tail call i32 @vector_type_mode(ptr noundef nonnull %31) #17
  br label %451

447:                                              ; preds = %441
  %448 = load i32, ptr %34, align 4
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  br label %451

451:                                              ; preds = %447, %445
  %452 = phi i32 [ %446, %445 ], [ %450, %447 ]
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !56
  %456 = icmp eq i8 %455, 16
  br i1 %456, label %468, label %457

457:                                              ; preds = %451
  %458 = tail call i32 @vect_min_worthwhile_factor(i32 noundef %152) #17
  %459 = icmp sge i32 %47, %458
  %460 = icmp ne ptr %2, null
  %461 = or i1 %460, %459
  br i1 %461, label %468, label %462

462:                                              ; preds = %457
  %463 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %653, label %465

465:                                              ; preds = %462
  %466 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %467 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 36, i64 1, ptr %466)
  br label %653

468:                                              ; preds = %457, %451, %435, %419, %403, %387, %371
  %469 = icmp eq ptr %2, null
  br i1 %469, label %470, label %477

470:                                              ; preds = %468
  store i32 3, ptr %29, align 8, !tbaa !108
  %471 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %475 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 30, i64 1, ptr %474)
  br label %476

476:                                              ; preds = %473, %470
  call void @vect_model_simple_cost(ptr noundef nonnull %29, i32 noundef %54, ptr noundef nonnull %7, ptr noundef null)
  br label %653

477:                                              ; preds = %468
  %478 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %477
  %481 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %482 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 33, i64 1, ptr %481)
  br label %483

483:                                              ; preds = %480, %477
  %484 = tail call ptr @vect_create_destination_var(ptr noundef %104, ptr noundef nonnull %31) #17
  br i1 %48, label %485, label %489

485:                                              ; preds = %483
  %486 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  store ptr %486, ptr %8, align 8, !tbaa !45
  br i1 %195, label %487, label %494

487:                                              ; preds = %485
  %488 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  store ptr %488, ptr %9, align 8, !tbaa !45
  br label %494

489:                                              ; preds = %483
  br i1 %314, label %494, label %490

490:                                              ; preds = %489
  %491 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %492 = load i32, ptr %491, align 8, !tbaa !201
  %493 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %492) #17
  store ptr %493, ptr %9, align 8, !tbaa !45
  br label %494

494:                                              ; preds = %489, %490, %485, %487
  %495 = icmp sgt i32 %54, 0
  br i1 %495, label %496, label %645

496:                                              ; preds = %494
  %497 = and i1 %195, %315
  %498 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  br label %499

499:                                              ; preds = %496, %641
  %500 = phi i32 [ 0, %496 ], [ %643, %641 ]
  %501 = phi ptr [ null, %496 ], [ %551, %641 ]
  %502 = phi ptr [ null, %496 ], [ %642, %641 ]
  %503 = phi ptr [ null, %496 ], [ %554, %641 ]
  %504 = icmp eq i32 %500, 0
  br i1 %504, label %505, label %549

505:                                              ; preds = %499
  br i1 %497, label %506, label %543

506:                                              ; preds = %505
  %507 = sext i32 %337 to i64
  %508 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %507, i32 3
  %509 = load ptr, ptr %508, align 8, !tbaa !202
  %510 = getelementptr inbounds %struct.insn_operand_data, ptr %509, i64 2, i32 2
  %511 = load i16, ptr %510, align 8
  %512 = zext i16 %511 to i64
  %513 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !56
  %515 = add i8 %514, -12
  %516 = icmp ult i8 %515, 6
  br i1 %516, label %543, label %517

517:                                              ; preds = %506
  %518 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %523, label %520

520:                                              ; preds = %517
  %521 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %522 = call i64 @fwrite(ptr nonnull @.str.80, i64 28, i64 1, ptr %521)
  br label %523

523:                                              ; preds = %520, %517
  %524 = load ptr, ptr %9, align 8
  %525 = load i32, ptr %524, align 8, !tbaa !183
  %526 = add i32 %525, 1
  store i32 %526, ptr %524, align 8, !tbaa !183
  %527 = zext i32 %525 to i64
  %528 = getelementptr inbounds %struct.VEC_tree_base, ptr %524, i64 0, i32 2, i64 %527
  store ptr %313, ptr %528, align 8, !tbaa !45
  br i1 %48, label %543, label %529

529:                                              ; preds = %523
  %530 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %531 = load i32, ptr %530, align 8, !tbaa !201
  %532 = add i32 %531, -1
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %543, label %534

534:                                              ; preds = %529, %534
  %535 = phi i32 [ %541, %534 ], [ 0, %529 ]
  %536 = load ptr, ptr %9, align 8
  %537 = load i32, ptr %536, align 8, !tbaa !183
  %538 = add i32 %537, 1
  store i32 %538, ptr %536, align 8, !tbaa !183
  %539 = zext i32 %537 to i64
  %540 = getelementptr inbounds %struct.VEC_tree_base, ptr %536, i64 0, i32 2, i64 %539
  store ptr %313, ptr %540, align 8, !tbaa !45
  %541 = add nuw i32 %535, 1
  %542 = icmp eq i32 %541, %532
  br i1 %542, label %543, label %534, !llvm.loop !204

543:                                              ; preds = %534, %529, %523, %506, %505
  %544 = phi ptr [ %501, %505 ], [ %501, %506 ], [ %313, %523 ], [ %313, %529 ], [ %313, %534 ]
  %545 = icmp ne ptr %544, null
  %546 = select i1 %157, i1 true, i1 %545
  br i1 %546, label %548, label %547

547:                                              ; preds = %543
  call fastcc void @vect_get_vec_defs(ptr noundef %185, ptr noundef %313, ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %3)
  br label %550

548:                                              ; preds = %543
  call fastcc void @vect_get_vec_defs(ptr noundef %185, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef null, ptr noundef %3)
  br label %550

549:                                              ; preds = %499
  call fastcc void @vect_get_vec_defs_for_stmt_copy(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %550

550:                                              ; preds = %547, %548, %549
  %551 = phi ptr [ %544, %548 ], [ null, %547 ], [ %501, %549 ]
  br label %552

552:                                              ; preds = %613, %550
  %553 = phi i64 [ %614, %613 ], [ 0, %550 ]
  %554 = phi ptr [ %574, %613 ], [ %503, %550 ]
  %555 = load ptr, ptr %8, align 8
  %556 = icmp eq ptr %555, null
  br i1 %556, label %564, label %557

557:                                              ; preds = %552
  %558 = load i32, ptr %555, align 8, !tbaa !183
  %559 = zext i32 %558 to i64
  %560 = icmp ult i64 %553, %559
  br i1 %560, label %561, label %564

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.VEC_tree_base, ptr %555, i64 0, i32 2, i64 %553
  %563 = load ptr, ptr %562, align 8, !tbaa !45
  br label %564

564:                                              ; preds = %552, %557, %561
  %565 = phi ptr [ %563, %561 ], [ null, %557 ], [ null, %552 ]
  %566 = phi i1 [ false, %561 ], [ true, %557 ], [ true, %552 ]
  br i1 %566, label %615, label %567

567:                                              ; preds = %564
  br i1 %195, label %568, label %572

568:                                              ; preds = %567
  %569 = load ptr, ptr %9, align 8
  %570 = getelementptr inbounds %struct.VEC_tree_base, ptr %569, i64 0, i32 2, i64 %553
  %571 = load ptr, ptr %570, align 8, !tbaa !45
  br label %572

572:                                              ; preds = %567, %568
  %573 = phi ptr [ %571, %568 ], [ null, %567 ]
  %574 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %152, ptr noundef %484, ptr noundef %565, ptr noundef %573) #17
  %575 = load ptr, ptr @cfun, align 8, !tbaa !45
  %576 = call ptr @make_ssa_name_fn(ptr noundef %575, ptr noundef %484, ptr noundef %574) #17
  %577 = load i32, ptr %574, align 8
  %578 = and i32 %577, 255
  %579 = add nsw i32 %578, -10
  %580 = icmp ult i32 %579, -9
  br i1 %580, label %585, label %581

581:                                              ; preds = %572
  %582 = getelementptr inbounds %struct.gimple_statement_base, ptr %574, i64 0, i32 3
  %583 = load i32, ptr %582, align 4, !tbaa !56
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %581, %572
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %586

586:                                              ; preds = %585, %581
  %587 = load i32, ptr %574, align 8
  %588 = and i32 %587, 255
  %589 = zext nneg i32 %588 to i64
  %590 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !60
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %592
  %594 = load i64, ptr %593, align 8, !tbaa !103
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %586
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %597

597:                                              ; preds = %596, %586
  %598 = getelementptr inbounds i8, ptr %574, i64 %594
  store ptr %576, ptr %598, align 8, !tbaa !45
  %599 = icmp eq ptr %576, null
  br i1 %599, label %606, label %600

600:                                              ; preds = %597
  %601 = load i64, ptr %576, align 8
  %602 = and i64 %601, 65535
  %603 = icmp eq i64 %602, 141
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.tree_ssa_name, ptr %576, i64 0, i32 2
  store ptr %574, ptr %605, align 8, !tbaa !56
  br label %606

606:                                              ; preds = %597, %600, %604
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %574, ptr noundef %1)
  br i1 %48, label %613, label %607

607:                                              ; preds = %606
  %608 = load ptr, ptr %498, align 8, !tbaa !193
  %609 = load i32, ptr %608, align 8, !tbaa !89
  %610 = add i32 %609, 1
  store i32 %610, ptr %608, align 8, !tbaa !89
  %611 = zext i32 %609 to i64
  %612 = getelementptr inbounds %struct.VEC_gimple_base, ptr %608, i64 0, i32 2, i64 %611
  store ptr %574, ptr %612, align 8, !tbaa !45
  br label %613

613:                                              ; preds = %606, %607
  %614 = add nuw i64 %553, 1
  br label %552, !llvm.loop !205

615:                                              ; preds = %564
  br i1 %48, label %616, label %641

616:                                              ; preds = %615
  br i1 %504, label %617, label %619

617:                                              ; preds = %616
  %618 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 6
  store ptr %554, ptr %2, align 8, !tbaa !45
  br label %621

619:                                              ; preds = %616
  %620 = getelementptr inbounds %struct._stmt_vec_info, ptr %502, i64 0, i32 14
  br label %621

621:                                              ; preds = %619, %617
  %622 = phi ptr [ %620, %619 ], [ %618, %617 ]
  store ptr %554, ptr %622, align 8, !tbaa !45
  %623 = getelementptr inbounds %struct.gimple_statement_base, ptr %554, i64 0, i32 1
  %624 = load i32, ptr %623, align 4, !tbaa !56
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %641, label %626

626:                                              ; preds = %621
  %627 = load ptr, ptr @stmt_vec_info_vec, align 8
  %628 = icmp eq ptr %627, null
  br i1 %628, label %631, label %629

629:                                              ; preds = %626
  %630 = load i32, ptr %627, align 8, !tbaa !91
  br label %631

631:                                              ; preds = %629, %626
  %632 = phi i32 [ %630, %629 ], [ 0, %626 ]
  %633 = icmp ugt i32 %624, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %631
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %635

635:                                              ; preds = %634, %631
  %636 = load ptr, ptr @stmt_vec_info_vec, align 8
  %637 = add i32 %624, -1
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %636, i64 0, i32 2, i64 %638
  %640 = load ptr, ptr %639, align 8, !tbaa !45
  br label %641

641:                                              ; preds = %635, %621, %615
  %642 = phi ptr [ %502, %615 ], [ %640, %635 ], [ null, %621 ]
  %643 = add nuw nsw i32 %500, 1
  %644 = icmp eq i32 %643, %54
  br i1 %644, label %645, label %499, !llvm.loop !206

645:                                              ; preds = %641, %494
  %646 = load ptr, ptr %8, align 8, !tbaa !45
  %647 = icmp eq ptr %646, null
  br i1 %647, label %649, label %648

648:                                              ; preds = %645
  call void @free(ptr noundef %646)
  br label %649

649:                                              ; preds = %645, %648
  store ptr null, ptr %8, align 8, !tbaa !45
  %650 = load ptr, ptr %9, align 8, !tbaa !45
  %651 = icmp eq ptr %650, null
  br i1 %651, label %653, label %652

652:                                              ; preds = %649
  call void @free(ptr noundef %650)
  store ptr null, ptr %9, align 8, !tbaa !45
  br label %653

653:                                              ; preds = %649, %652, %462, %465, %345, %350, %317, %320, %303, %306, %223, %226, %188, %191, %160, %163, %109, %103, %80, %67, %63, %57, %476
  %654 = phi i8 [ 1, %476 ], [ 0, %57 ], [ 0, %63 ], [ 0, %67 ], [ 0, %80 ], [ 0, %103 ], [ 0, %109 ], [ 0, %163 ], [ 0, %160 ], [ 0, %191 ], [ 0, %188 ], [ 0, %226 ], [ 0, %223 ], [ 0, %306 ], [ 0, %303 ], [ 0, %320 ], [ 0, %317 ], [ 0, %350 ], [ 0, %345 ], [ 0, %465 ], [ 0, %462 ], [ 1, %652 ], [ 1, %649 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %654
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_assignment(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !44 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !91
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ]
  %19 = icmp ugt i32 %10, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %21

21:                                               ; preds = %20, %17
  %22 = load ptr, ptr @stmt_vec_info_vec, align 8
  %23 = add i32 %10, -1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %22, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %4, %21
  %28 = phi ptr [ %26, %21 ], [ null, %4 ]
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 34359738376, ptr %7, align 8
  %33 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !146
  %37 = icmp eq ptr %3, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = and i32 %34, 1023
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct._loop_vec_info, ptr %32, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !182
  %45 = sdiv i32 %44, %42
  br label %46

46:                                               ; preds = %27, %38
  %47 = phi i32 [ %45, %38 ], [ 1, %27 ]
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1831, ptr noundef nonnull @.str.8) #17
  br label %50

50:                                               ; preds = %46, %49
  %51 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !93
  %53 = icmp ne i32 %52, 0
  %54 = icmp ne ptr %36, null
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %278

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !97
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %278

60:                                               ; preds = %56
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %278

64:                                               ; preds = %60
  %65 = zext nneg i32 %62 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !60
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !103
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %73

73:                                               ; preds = %72, %64
  %74 = getelementptr inbounds i8, ptr %0, i64 %70
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %278

79:                                               ; preds = %73
  %80 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %0) #17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %79
  %83 = load i32, ptr %0, align 8
  %84 = trunc i32 %83 to i8
  switch i8 %84, label %87 [
    i8 6, label %85
    i8 1, label %85
    i8 8, label %88
  ]

85:                                               ; preds = %82, %82
  %86 = lshr i32 %83, 16
  br label %88

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.8) #17
  br label %88

88:                                               ; preds = %87, %85, %82
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ], [ 59, %82 ]
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !56
  %93 = icmp eq i8 %92, 3
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = load i32, ptr %0, align 8
  %96 = and i32 %95, 255
  %97 = add nsw i32 %96, -1
  %98 = icmp ult i32 %97, 9
  tail call void @llvm.assume(i1 %98)
  %99 = zext nneg i32 %96 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !60
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !103
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %107

107:                                              ; preds = %106, %94
  %108 = getelementptr inbounds i8, ptr %0, i64 %104
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = load i64, ptr %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = and i32 %112, 65535
  br label %114

114:                                              ; preds = %88, %107
  %115 = phi i32 [ %113, %107 ], [ %89, %88 ]
  %116 = icmp eq i32 %115, 112
  br i1 %116, label %117, label %278

117:                                              ; preds = %114, %79
  %118 = load i32, ptr %0, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %135, label %122

122:                                              ; preds = %117
  %123 = zext nneg i32 %119 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !60
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !103
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %131

131:                                              ; preds = %130, %122
  %132 = getelementptr inbounds i8, ptr %0, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  br label %135

135:                                              ; preds = %117, %131
  %136 = phi ptr [ %134, %131 ], [ null, %117 ]
  %137 = call zeroext i8 @vect_is_simple_use(ptr noundef %136, ptr noundef %32, ptr noundef %36, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7), !range !74
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %278, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %144 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %143)
  br label %278

145:                                              ; preds = %135
  %146 = icmp eq ptr %2, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %145
  store i32 5, ptr %28, align 8, !tbaa !108
  %148 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %152 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 31, i64 1, ptr %151)
  br label %153

153:                                              ; preds = %150, %147
  call void @vect_model_simple_cost(ptr noundef nonnull %28, i32 noundef %47, ptr noundef nonnull %7, ptr noundef null)
  br label %278

154:                                              ; preds = %145
  %155 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %159 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 21, i64 1, ptr %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %75, ptr noundef %30) #17
  %162 = icmp sgt i32 %47, 0
  br i1 %162, label %163, label %273

163:                                              ; preds = %160
  %164 = load i32, ptr %7, align 8
  %165 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  br label %166

166:                                              ; preds = %163, %269
  %167 = phi ptr [ null, %163 ], [ %270, %269 ]
  %168 = phi ptr [ null, %163 ], [ %188, %269 ]
  %169 = phi i32 [ 0, %163 ], [ %271, %269 ]
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  call fastcc void @vect_get_vec_defs(ptr noundef %136, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef null, ptr noundef %3)
  br label %185

172:                                              ; preds = %166
  %173 = load ptr, ptr %8, align 8, !tbaa !45
  %174 = load i32, ptr %173, align 8, !tbaa !183
  %175 = add i32 %174, -1
  store i32 %175, ptr %173, align 8, !tbaa !183
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.VEC_tree_base, ptr %173, i64 0, i32 2, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !45
  %179 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %164, ptr noundef %178)
  %180 = load ptr, ptr %8, align 8, !tbaa !45
  %181 = load i32, ptr %180, align 8, !tbaa !183
  %182 = add i32 %181, 1
  store i32 %182, ptr %180, align 8, !tbaa !183
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds %struct.VEC_tree_base, ptr %180, i64 0, i32 2, i64 %183
  store ptr %179, ptr %184, align 8, !tbaa !45
  br label %185

185:                                              ; preds = %172, %171
  br label %186

186:                                              ; preds = %185, %241
  %187 = phi i64 [ %242, %241 ], [ 0, %185 ]
  %188 = phi ptr [ %202, %241 ], [ %168, %185 ]
  %189 = load ptr, ptr %8, align 8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %198, label %191

191:                                              ; preds = %186
  %192 = load i32, ptr %189, align 8, !tbaa !183
  %193 = zext i32 %192 to i64
  %194 = icmp ult i64 %187, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.VEC_tree_base, ptr %189, i64 0, i32 2, i64 %187
  %197 = load ptr, ptr %196, align 8, !tbaa !45
  br label %198

198:                                              ; preds = %186, %191, %195
  %199 = phi ptr [ %197, %195 ], [ null, %191 ], [ null, %186 ]
  %200 = phi i1 [ false, %195 ], [ true, %191 ], [ true, %186 ]
  br i1 %200, label %243, label %201

201:                                              ; preds = %198
  %202 = call ptr @gimple_build_assign_stat(ptr noundef %161, ptr noundef %199) #17
  %203 = load ptr, ptr @cfun, align 8, !tbaa !45
  %204 = call ptr @make_ssa_name_fn(ptr noundef %203, ptr noundef %161, ptr noundef %202) #17
  %205 = load i32, ptr %202, align 8
  %206 = and i32 %205, 255
  %207 = add nsw i32 %206, -10
  %208 = icmp ult i32 %207, -9
  br i1 %208, label %213, label %209

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.gimple_statement_base, ptr %202, i64 0, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !56
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209, %201
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %214

214:                                              ; preds = %213, %209
  %215 = load i32, ptr %202, align 8
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !60
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !103
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %225

225:                                              ; preds = %224, %214
  %226 = getelementptr inbounds i8, ptr %202, i64 %222
  store ptr %204, ptr %226, align 8, !tbaa !45
  %227 = icmp eq ptr %204, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = load i64, ptr %204, align 8
  %230 = and i64 %229, 65535
  %231 = icmp eq i64 %230, 141
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.tree_ssa_name, ptr %204, i64 0, i32 2
  store ptr %202, ptr %233, align 8, !tbaa !56
  br label %234

234:                                              ; preds = %225, %228, %232
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %202, ptr noundef %1)
  br i1 %37, label %241, label %235

235:                                              ; preds = %234
  %236 = load ptr, ptr %165, align 8, !tbaa !193
  %237 = load i32, ptr %236, align 8, !tbaa !89
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 8, !tbaa !89
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds %struct.VEC_gimple_base, ptr %236, i64 0, i32 2, i64 %239
  store ptr %202, ptr %240, align 8, !tbaa !45
  br label %241

241:                                              ; preds = %234, %235
  %242 = add nuw i64 %187, 1
  br label %186, !llvm.loop !207

243:                                              ; preds = %198
  br i1 %37, label %244, label %269

244:                                              ; preds = %243
  br i1 %170, label %245, label %247

245:                                              ; preds = %244
  %246 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 6
  store ptr %188, ptr %2, align 8, !tbaa !45
  br label %249

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct._stmt_vec_info, ptr %167, i64 0, i32 14
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi ptr [ %248, %247 ], [ %246, %245 ]
  store ptr %188, ptr %250, align 8, !tbaa !45
  %251 = getelementptr inbounds %struct.gimple_statement_base, ptr %188, i64 0, i32 1
  %252 = load i32, ptr %251, align 4, !tbaa !56
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %249
  %255 = load ptr, ptr @stmt_vec_info_vec, align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %255, align 8, !tbaa !91
  br label %259

259:                                              ; preds = %257, %254
  %260 = phi i32 [ %258, %257 ], [ 0, %254 ]
  %261 = icmp ugt i32 %252, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %263

263:                                              ; preds = %262, %259
  %264 = load ptr, ptr @stmt_vec_info_vec, align 8
  %265 = add i32 %252, -1
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %264, i64 0, i32 2, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !45
  br label %269

269:                                              ; preds = %263, %249, %243
  %270 = phi ptr [ %167, %243 ], [ %268, %263 ], [ null, %249 ]
  %271 = add nuw nsw i32 %169, 1
  %272 = icmp eq i32 %271, %47
  br i1 %272, label %273, label %166, !llvm.loop !208

273:                                              ; preds = %269, %160
  %274 = load ptr, ptr %8, align 8, !tbaa !45
  %275 = icmp eq ptr %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  call void @free(ptr noundef %274)
  br label %277

277:                                              ; preds = %273, %276
  store ptr null, ptr %8, align 8, !tbaa !45
  br label %278

278:                                              ; preds = %139, %142, %114, %73, %60, %56, %50, %277, %153
  %279 = phi i8 [ 1, %277 ], [ 1, %153 ], [ 0, %50 ], [ 0, %56 ], [ 0, %60 ], [ 0, %73 ], [ 0, %114 ], [ 0, %142 ], [ 0, %139 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %279
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_load(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #9 !prof !44 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %21 = icmp ugt i32 %12, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @stmt_vec_info_vec, align 8
  %25 = add i32 %12, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %24, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %5, %23
  %30 = phi ptr [ %28, %23 ], [ null, %5 ]
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !144
  %33 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %41 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1023
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = trunc i64 %45 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %47 = icmp ne ptr %3, null
  %48 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 26
  %49 = load ptr, ptr %48, align 8, !tbaa !146
  %50 = icmp eq ptr %32, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %29
  %52 = load ptr, ptr %32, align 8, !tbaa !64
  %53 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !145
  %55 = icmp ne ptr %54, null
  %56 = icmp eq ptr %54, %36
  %57 = select i1 %55, i1 %56, i1 false
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct._loop_vec_info, ptr %32, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !182
  br label %61

61:                                               ; preds = %29, %51
  %62 = phi i32 [ %60, %51 ], [ 1, %29 ]
  %63 = phi i8 [ %58, %51 ], [ 0, %29 ]
  %64 = phi ptr [ %52, %51 ], [ null, %29 ]
  br i1 %47, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct._loop_vec_info, ptr %32, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !182
  %68 = sdiv i32 %67, %46
  br label %69

69:                                               ; preds = %61, %65
  %70 = phi i32 [ %68, %65 ], [ 1, %61 ]
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3315, ptr noundef nonnull @.str.8) #17
  br label %73

73:                                               ; preds = %69, %72
  %74 = icmp ne i8 %63, 0
  %75 = icmp sgt i32 %70, 1
  %76 = and i1 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %793, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %82 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 30, i64 1, ptr %81)
  br label %793

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !93
  %86 = icmp ne i32 %85, 0
  %87 = icmp ne ptr %49, null
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %89, label %793

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 16
  %91 = load i32, ptr %90, align 8, !tbaa !97
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %793

93:                                               ; preds = %89
  %94 = load i32, ptr %0, align 8
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %793

97:                                               ; preds = %93
  %98 = zext nneg i32 %95 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !60
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !103
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %0, i64 %103
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 141
  br i1 %111, label %112, label %793

112:                                              ; preds = %106
  %113 = load i32, ptr %0, align 8
  %114 = trunc i32 %113 to i8
  switch i8 %114, label %117 [
    i8 6, label %115
    i8 1, label %115
    i8 8, label %118
  ]

115:                                              ; preds = %112, %112
  %116 = lshr i32 %113, 16
  br label %118

117:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.8) #17
  br label %118

118:                                              ; preds = %117, %115, %112
  %119 = phi i32 [ %116, %115 ], [ 0, %117 ], [ 59, %112 ]
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !56
  %123 = icmp eq i8 %122, 3
  br i1 %123, label %124, label %144

124:                                              ; preds = %118
  %125 = load i32, ptr %0, align 8
  %126 = and i32 %125, 255
  %127 = add nsw i32 %126, -1
  %128 = icmp ult i32 %127, 9
  tail call void @llvm.assume(i1 %128)
  %129 = zext nneg i32 %126 to i64
  %130 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !60
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !103
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %137

137:                                              ; preds = %136, %124
  %138 = getelementptr inbounds i8, ptr %0, i64 %134
  %139 = getelementptr inbounds ptr, ptr %138, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !45
  %141 = load i64, ptr %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 65535
  br label %144

144:                                              ; preds = %118, %137
  %145 = phi i32 [ %143, %137 ], [ %119, %118 ]
  %146 = freeze i32 %145
  %147 = and i32 %146, 65533
  %148 = icmp eq i32 %147, 45
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  switch i32 %146, label %793 [
    i32 44, label %150
    i32 43, label %150
    i32 41, label %150
  ]

150:                                              ; preds = %149, %149, %149, %144
  %151 = load ptr, ptr %37, align 8, !tbaa !102
  %152 = icmp eq ptr %151, null
  br i1 %152, label %793, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.data_reference, ptr %38, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !209
  %156 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !56
  %158 = load i64, ptr %40, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %40) #17
  br label %167

163:                                              ; preds = %153
  %164 = load i32, ptr %41, align 4
  %165 = lshr i32 %164, 16
  %166 = and i32 %165, 255
  br label %167

167:                                              ; preds = %163, %161
  %168 = phi i32 [ %162, %161 ], [ %166, %163 ]
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !199
  %172 = icmp eq i32 %171, 2956
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %793, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %178 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 35, i64 1, ptr %177)
  br label %793

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.tree_common, ptr %108, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !56
  %182 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !56
  %184 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %181, ptr noundef %183) #17
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %179
  %187 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %793, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %191 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 32, i64 1, ptr %190)
  br label %793

192:                                              ; preds = %179
  %193 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 17
  %194 = load ptr, ptr %193, align 8, !tbaa !126
  %195 = icmp eq ptr %194, null
  br i1 %195, label %207, label %196

196:                                              ; preds = %192
  %197 = icmp eq i8 %63, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3376, ptr noundef nonnull @.str.8) #17
  br label %199

199:                                              ; preds = %196, %198
  %200 = tail call zeroext i8 @vect_strided_load_supported(ptr noundef nonnull %40) #17
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 25
  %204 = load i32, ptr %203, align 4, !tbaa !122
  %205 = icmp eq i32 %204, 1
  %206 = or i1 %47, %205
  br i1 %206, label %207, label %793

207:                                              ; preds = %199, %202, %192
  %208 = icmp eq ptr %2, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %207
  store i32 1, ptr %30, align 8, !tbaa !108
  tail call void @vect_model_load_cost(ptr noundef nonnull %30, i32 noundef %70, ptr noundef null)
  br label %793

210:                                              ; preds = %207
  %211 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %215 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 15, i64 1, ptr %214)
  br label %216

216:                                              ; preds = %213, %210
  br i1 %195, label %289, label %217

217:                                              ; preds = %216
  %218 = load ptr, ptr %193, align 8, !tbaa !126
  %219 = getelementptr inbounds %struct.gimple_statement_base, ptr %218, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !56
  %221 = icmp ne i32 %220, 0
  tail call void @llvm.assume(i1 %221)
  %222 = load ptr, ptr @stmt_vec_info_vec, align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %217
  %225 = load i32, ptr %222, align 8, !tbaa !91
  br label %226

226:                                              ; preds = %224, %217
  %227 = phi i32 [ %225, %224 ], [ 0, %217 ]
  %228 = icmp ugt i32 %220, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %230

230:                                              ; preds = %229, %226
  %231 = load ptr, ptr @stmt_vec_info_vec, align 8
  %232 = add i32 %220, -1
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %231, i64 0, i32 2, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !45
  %236 = getelementptr inbounds %struct._stmt_vec_info, ptr %235, i64 0, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !162
  %238 = icmp eq ptr %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %230
  %240 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 6
  %241 = load ptr, ptr %240, align 8, !tbaa !162
  store ptr %241, ptr %2, align 8, !tbaa !45
  br label %793

242:                                              ; preds = %230
  %243 = load i32, ptr %219, align 4, !tbaa !56
  %244 = icmp ne i32 %243, 0
  tail call void @llvm.assume(i1 %244)
  %245 = icmp eq ptr %231, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %231, align 8, !tbaa !91
  br label %248

248:                                              ; preds = %246, %242
  %249 = phi i32 [ %247, %246 ], [ 0, %242 ]
  %250 = icmp ugt i32 %243, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %252

252:                                              ; preds = %251, %248
  %253 = load ptr, ptr @stmt_vec_info_vec, align 8
  %254 = add i32 %243, -1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %253, i64 0, i32 2, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !45
  %258 = getelementptr inbounds %struct._stmt_vec_info, ptr %257, i64 0, i32 7
  %259 = load ptr, ptr %258, align 8, !tbaa !102
  %260 = load i32, ptr %219, align 4, !tbaa !56
  %261 = icmp ne i32 %260, 0
  tail call void @llvm.assume(i1 %261)
  %262 = icmp eq ptr %253, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %252
  %264 = load i32, ptr %253, align 8, !tbaa !91
  br label %265

265:                                              ; preds = %263, %252
  %266 = phi i32 [ %264, %263 ], [ 0, %252 ]
  %267 = icmp ugt i32 %260, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %269

269:                                              ; preds = %268, %265
  %270 = load ptr, ptr @stmt_vec_info_vec, align 8
  %271 = add i32 %260, -1
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %270, i64 0, i32 2, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !45
  %275 = getelementptr inbounds %struct._stmt_vec_info, ptr %274, i64 0, i32 19
  %276 = load i32, ptr %275, align 8, !tbaa !128
  br i1 %47, label %277, label %284

277:                                              ; preds = %269
  %278 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %279 = load i32, ptr %278, align 8, !tbaa !201
  %280 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !214
  %282 = icmp ne ptr %281, null
  %283 = zext i1 %282 to i8
  br label %284

284:                                              ; preds = %277, %269
  %285 = phi i8 [ 0, %277 ], [ 1, %269 ]
  %286 = phi i32 [ %279, %277 ], [ %276, %269 ]
  %287 = phi i8 [ %283, %277 ], [ 0, %269 ]
  %288 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %286) #17
  br label %289

289:                                              ; preds = %216, %284
  %290 = phi ptr [ null, %216 ], [ %288, %284 ]
  %291 = phi i32 [ 1, %216 ], [ %276, %284 ]
  %292 = phi i8 [ 0, %216 ], [ %285, %284 ]
  %293 = phi ptr [ %0, %216 ], [ %218, %284 ]
  %294 = phi i32 [ 1, %216 ], [ %286, %284 ]
  %295 = phi i8 [ 0, %216 ], [ %287, %284 ]
  %296 = phi ptr [ %38, %216 ], [ %259, %284 ]
  %297 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %296) #17
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3429, ptr noundef nonnull @.str.8) #17
  br label %300

300:                                              ; preds = %289, %299
  %301 = icmp eq ptr %64, null
  br i1 %301, label %336, label %302

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 8
  %304 = load ptr, ptr %303, align 8, !tbaa !145
  %305 = icmp eq ptr %304, null
  br i1 %305, label %336, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %33, align 8, !tbaa !56
  %308 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !104
  %310 = icmp eq ptr %304, %309
  br i1 %310, label %311, label %336

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.data_reference, ptr %38, i64 0, i32 4, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !216
  %314 = getelementptr inbounds %struct.tree_int_cst, ptr %313, i64 0, i32 1
  %315 = load i64, ptr %314, align 8, !tbaa !56
  %316 = load i64, ptr %40, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 14
  br i1 %318, label %319, label %321

319:                                              ; preds = %311
  %320 = tail call i32 @vector_type_mode(ptr noundef nonnull %40) #17
  br label %325

321:                                              ; preds = %311
  %322 = load i32, ptr %41, align 4
  %323 = lshr i32 %322, 16
  %324 = and i32 %323, 255
  br label %325

325:                                              ; preds = %321, %319
  %326 = phi i32 [ %320, %319 ], [ %324, %321 ]
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !56
  %330 = zext i8 %329 to i64
  %331 = urem i64 %315, %330
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %325
  %334 = icmp eq i32 %297, 3
  br i1 %334, label %335, label %336

335:                                              ; preds = %333
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3538, ptr noundef nonnull @.str.8) #17
  br label %336

336:                                              ; preds = %302, %335, %333, %325, %306, %300
  %337 = phi i1 [ false, %325 ], [ false, %306 ], [ false, %300 ], [ true, %333 ], [ true, %335 ], [ false, %302 ]
  %338 = icmp eq i32 %297, 3
  %339 = and i32 %297, -2
  %340 = icmp ne i32 %339, 2
  %341 = or i1 %340, %337
  br i1 %341, label %353, label %342

342:                                              ; preds = %336
  %343 = call ptr @vect_setup_realignment(ptr noundef %293, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %297, ptr noundef null, ptr noundef nonnull %10) #17
  br i1 %338, label %344, label %354

344:                                              ; preds = %342
  %345 = getelementptr inbounds %struct.tree_ssa_name, ptr %343, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !56
  %347 = load i32, ptr %41, align 4
  %348 = and i32 %347, 1023
  %349 = zext nneg i32 %348 to i64
  %350 = shl nsw i64 -1, %349
  %351 = xor i64 %350, -1
  %352 = call ptr @size_int_kind(i64 noundef %351, i32 noundef 0) #17
  br label %354

353:                                              ; preds = %336
  store ptr %64, ptr %10, align 8, !tbaa !45
  br label %354

354:                                              ; preds = %342, %344, %353
  %355 = phi ptr [ null, %353 ], [ %343, %344 ], [ %343, %342 ]
  %356 = phi ptr [ null, %353 ], [ %352, %344 ], [ null, %342 ]
  %357 = phi ptr [ null, %353 ], [ %346, %344 ], [ null, %342 ]
  %358 = icmp sgt i32 %70, 0
  br i1 %358, label %359, label %789

359:                                              ; preds = %354
  %360 = getelementptr ptr, ptr %0, i64 1
  %361 = icmp sgt i32 %294, 0
  %362 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %363 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %364 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 3
  %365 = getelementptr inbounds %struct.data_reference, ptr %296, i64 0, i32 2
  %366 = getelementptr inbounds %struct.data_reference, ptr %296, i64 0, i32 2
  %367 = icmp eq ptr %357, null
  %368 = add nsw i32 %294, -1
  %369 = add nsw i32 %70, -1
  %370 = icmp eq i8 %292, 0
  %371 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 8
  %372 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 2
  %373 = icmp sgt i32 %46, 0
  %374 = or i8 %295, %292
  %375 = icmp eq i8 %374, 0
  %376 = icmp eq i8 %295, 0
  %377 = and i1 %47, %376
  %378 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  %379 = icmp eq i8 %295, 0
  %380 = and i1 %47, %379
  %381 = icmp eq i8 %292, 0
  %382 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 6
  br label %383

383:                                              ; preds = %359, %784
  %384 = phi ptr [ null, %359 ], [ %741, %784 ]
  %385 = phi ptr [ null, %359 ], [ %786, %784 ]
  %386 = phi ptr [ null, %359 ], [ %740, %784 ]
  %387 = phi ptr [ null, %359 ], [ %739, %784 ]
  %388 = phi i32 [ 0, %359 ], [ %787, %784 ]
  %389 = phi ptr [ %355, %359 ], [ %738, %784 ]
  %390 = phi ptr [ %290, %359 ], [ %785, %784 ]
  %391 = icmp eq i32 %388, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %383
  %393 = load ptr, ptr %10, align 8, !tbaa !45
  %394 = call ptr @vect_create_data_ref_ptr(ptr noundef %293, ptr noundef %393, ptr noundef %356, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef nonnull %9) #17
  br label %398

395:                                              ; preds = %383
  %396 = load ptr, ptr %7, align 8, !tbaa !45
  %397 = call ptr @bump_vector_ptr(ptr noundef %387, ptr noundef %396, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null) #17
  br label %398

398:                                              ; preds = %395, %392
  %399 = phi ptr [ %394, %392 ], [ %397, %395 ]
  br i1 %361, label %400, label %737

400:                                              ; preds = %398, %734
  %401 = phi ptr [ %519, %734 ], [ %384, %398 ]
  %402 = phi ptr [ %410, %734 ], [ %399, %398 ]
  %403 = phi i32 [ %735, %734 ], [ 0, %398 ]
  %404 = phi ptr [ %646, %734 ], [ %389, %398 ]
  %405 = icmp eq i32 %403, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %400
  %407 = load ptr, ptr %7, align 8, !tbaa !45
  %408 = call ptr @bump_vector_ptr(ptr noundef %402, ptr noundef %407, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null) #17
  br label %409

409:                                              ; preds = %406, %400
  %410 = phi ptr [ %408, %406 ], [ %402, %400 ]
  switch i32 %297, label %516 [
    i32 4, label %411
    i32 1, label %419
    i32 2, label %435
    i32 3, label %514
  ]

411:                                              ; preds = %409
  %412 = load ptr, ptr %366, align 8, !tbaa !217
  %413 = ptrtoint ptr %412 to i64
  %414 = and i64 %413, 4294967295
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %411
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3581, ptr noundef nonnull @.str.8) #17
  br label %417

417:                                              ; preds = %411, %416
  %418 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %410) #17
  br label %517

419:                                              ; preds = %409
  %420 = load ptr, ptr %365, align 8, !tbaa !217
  %421 = ptrtoint ptr %420 to i64
  %422 = and i64 %421, 4294967295
  %423 = icmp eq i64 %422, 4294967295
  br i1 %423, label %424, label %426

424:                                              ; preds = %419
  %425 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !45
  br label %430

426:                                              ; preds = %419
  %427 = shl i64 %421, 32
  %428 = ashr exact i64 %427, 32
  %429 = call ptr @size_int_kind(i64 noundef %428, i32 noundef 0) #17
  br label %430

430:                                              ; preds = %426, %424
  %431 = phi ptr [ %425, %424 ], [ %429, %426 ]
  %432 = call ptr @size_int_kind(i64 noundef 8, i32 noundef 0) #17
  %433 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %431, ptr noundef %432) #17
  %434 = call ptr @build2_stat(i32 noundef 49, ptr noundef nonnull %40, ptr noundef %410, ptr noundef %433) #17
  br label %517

435:                                              ; preds = %409
  %436 = load i32, ptr %41, align 4
  %437 = and i32 %436, 1023
  %438 = zext nneg i32 %437 to i64
  %439 = shl nsw i64 -1, %438
  %440 = xor i64 %439, -1
  %441 = call ptr @size_int_kind(i64 noundef %440, i32 noundef 0) #17
  br i1 %337, label %442, label %444

442:                                              ; preds = %435
  %443 = call ptr @vect_setup_realignment(ptr noundef %293, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 2, ptr noundef %410, ptr noundef null) #17
  br label %444

444:                                              ; preds = %442, %435
  %445 = call ptr @build1_stat(i32 noundef 48, ptr noundef nonnull %40, ptr noundef %410) #17
  %446 = call ptr @vect_create_destination_var(ptr noundef nonnull %108, ptr noundef nonnull %40) #17
  %447 = call ptr @gimple_build_assign_stat(ptr noundef %446, ptr noundef %445) #17
  %448 = load ptr, ptr @cfun, align 8, !tbaa !45
  %449 = call ptr @make_ssa_name_fn(ptr noundef %448, ptr noundef %446, ptr noundef %447) #17
  %450 = load i32, ptr %447, align 8
  %451 = and i32 %450, 255
  %452 = add nsw i32 %451, -10
  %453 = icmp ult i32 %452, -9
  br i1 %453, label %458, label %454

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.gimple_statement_base, ptr %447, i64 0, i32 3
  %456 = load i32, ptr %455, align 4, !tbaa !56
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %454, %444
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %459

459:                                              ; preds = %458, %454
  %460 = load i32, ptr %447, align 8
  %461 = and i32 %460, 255
  %462 = zext nneg i32 %461 to i64
  %463 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !60
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %465
  %467 = load i64, ptr %466, align 8, !tbaa !103
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %459
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %470

470:                                              ; preds = %469, %459
  %471 = getelementptr inbounds i8, ptr %447, i64 %467
  store ptr %449, ptr %471, align 8, !tbaa !45
  %472 = icmp eq ptr %449, null
  br i1 %472, label %479, label %473

473:                                              ; preds = %470
  %474 = load i64, ptr %449, align 8
  %475 = and i64 %474, 65535
  %476 = icmp eq i64 %475, 141
  br i1 %476, label %477, label %479

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.tree_ssa_name, ptr %449, i64 0, i32 2
  store ptr %447, ptr %478, align 8, !tbaa !56
  br label %479

479:                                              ; preds = %470, %473, %477
  %480 = load i32, ptr %0, align 8
  %481 = and i32 %480, 254
  %482 = add nsw i32 %481, -10
  %483 = icmp ult i32 %482, -4
  br i1 %483, label %486, label %484

484:                                              ; preds = %479
  %485 = load ptr, ptr %362, align 8, !tbaa !56
  br label %486

486:                                              ; preds = %479, %484
  %487 = phi ptr [ %485, %484 ], [ null, %479 ]
  %488 = load i32, ptr %447, align 8
  %489 = and i32 %488, 254
  %490 = add nsw i32 %489, -10
  %491 = icmp ult i32 %490, -4
  br i1 %491, label %492, label %493

492:                                              ; preds = %486
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1416, ptr noundef nonnull @.str.8) #17
  br label %493

493:                                              ; preds = %486, %492
  %494 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %447, i64 0, i32 1
  store ptr %487, ptr %494, align 8, !tbaa !56
  %495 = load i32, ptr %0, align 8
  %496 = and i32 %495, 254
  %497 = add nsw i32 %496, -10
  %498 = icmp ult i32 %497, -4
  br i1 %498, label %501, label %499

499:                                              ; preds = %493
  %500 = load ptr, ptr %363, align 8, !tbaa !56
  br label %501

501:                                              ; preds = %493, %499
  %502 = phi ptr [ %500, %499 ], [ null, %493 ]
  %503 = load i32, ptr %447, align 8
  %504 = and i32 %503, 254
  %505 = add nsw i32 %504, -10
  %506 = icmp ult i32 %505, -4
  br i1 %506, label %507, label %508

507:                                              ; preds = %501
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1407, ptr noundef nonnull @.str.8) #17
  br label %508

508:                                              ; preds = %501, %507
  %509 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %447, i64 0, i32 2
  store ptr %502, ptr %509, align 8, !tbaa !56
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %447, ptr noundef %1)
  %510 = load ptr, ptr %364, align 8, !tbaa !56
  %511 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %441, ptr noundef %510) #17
  %512 = call ptr @bump_vector_ptr(ptr noundef %410, ptr noundef null, ptr noundef %1, ptr noundef nonnull %0, ptr noundef %511) #17
  %513 = call ptr @build1_stat(i32 noundef 48, ptr noundef nonnull %40, ptr noundef %512) #17
  br label %517

514:                                              ; preds = %409
  %515 = call ptr @build1_stat(i32 noundef 48, ptr noundef nonnull %40, ptr noundef %410) #17
  br label %517

516:                                              ; preds = %409
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3625, ptr noundef nonnull @.str.8) #17
  br label %517

517:                                              ; preds = %516, %514, %508, %430, %417
  %518 = phi ptr [ %404, %516 ], [ %404, %514 ], [ %449, %508 ], [ %404, %430 ], [ %404, %417 ]
  %519 = phi ptr [ %401, %516 ], [ %515, %514 ], [ %513, %508 ], [ %434, %430 ], [ %418, %417 ]
  %520 = call i32 @get_alias_set(ptr noundef %519) #17
  %521 = load i32, ptr %0, align 8
  %522 = and i32 %521, 255
  %523 = add nsw i32 %522, -10
  %524 = icmp ult i32 %523, -9
  br i1 %524, label %537, label %525

525:                                              ; preds = %517
  %526 = zext nneg i32 %522 to i64
  %527 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !60
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %529
  %531 = load i64, ptr %530, align 8, !tbaa !103
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %525
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %534

534:                                              ; preds = %533, %525
  %535 = getelementptr i8, ptr %360, i64 %531
  %536 = load ptr, ptr %535, align 8, !tbaa !45
  br label %537

537:                                              ; preds = %517, %534
  %538 = phi ptr [ %536, %534 ], [ null, %517 ]
  %539 = call i32 @get_alias_set(ptr noundef %538) #17
  %540 = call i32 @alias_sets_conflict_p(i32 noundef %520, i32 noundef %539) #17
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %537
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3630, ptr noundef nonnull @.str.8) #17
  br label %543

543:                                              ; preds = %537, %542
  %544 = call ptr @vect_create_destination_var(ptr noundef nonnull %108, ptr noundef nonnull %40) #17
  %545 = call ptr @gimple_build_assign_stat(ptr noundef %544, ptr noundef %519) #17
  %546 = load ptr, ptr @cfun, align 8, !tbaa !45
  %547 = call ptr @make_ssa_name_fn(ptr noundef %546, ptr noundef %544, ptr noundef %545) #17
  %548 = load i32, ptr %545, align 8
  %549 = and i32 %548, 255
  %550 = add nsw i32 %549, -10
  %551 = icmp ult i32 %550, -9
  br i1 %551, label %556, label %552

552:                                              ; preds = %543
  %553 = getelementptr inbounds %struct.gimple_statement_base, ptr %545, i64 0, i32 3
  %554 = load i32, ptr %553, align 4, !tbaa !56
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %552, %543
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %557

557:                                              ; preds = %556, %552
  %558 = load i32, ptr %545, align 8
  %559 = and i32 %558, 255
  %560 = zext nneg i32 %559 to i64
  %561 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %560
  %562 = load i32, ptr %561, align 4, !tbaa !60
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %563
  %565 = load i64, ptr %564, align 8, !tbaa !103
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %557
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %568

568:                                              ; preds = %567, %557
  %569 = getelementptr inbounds i8, ptr %545, i64 %565
  store ptr %547, ptr %569, align 8, !tbaa !45
  %570 = icmp eq ptr %547, null
  br i1 %570, label %577, label %571

571:                                              ; preds = %568
  %572 = load i64, ptr %547, align 8
  %573 = and i64 %572, 65535
  %574 = icmp eq i64 %573, 141
  br i1 %574, label %575, label %577

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct.tree_ssa_name, ptr %547, i64 0, i32 2
  store ptr %545, ptr %576, align 8, !tbaa !56
  br label %577

577:                                              ; preds = %568, %571, %575
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %545, ptr noundef %1)
  call void @mark_symbols_for_renaming(ptr noundef nonnull %545) #17
  br i1 %340, label %645, label %578

578:                                              ; preds = %577
  %579 = load i32, ptr %545, align 8
  %580 = and i32 %579, 255
  %581 = add nsw i32 %580, -10
  %582 = icmp ult i32 %581, -9
  br i1 %582, label %595, label %583

583:                                              ; preds = %578
  %584 = zext nneg i32 %580 to i64
  %585 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !60
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %587
  %589 = load i64, ptr %588, align 8, !tbaa !103
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %583
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %592

592:                                              ; preds = %591, %583
  %593 = getelementptr inbounds i8, ptr %545, i64 %589
  %594 = load ptr, ptr %593, align 8, !tbaa !45
  br label %595

595:                                              ; preds = %578, %592
  %596 = phi ptr [ %594, %592 ], [ null, %578 ]
  %597 = load ptr, ptr %8, align 8, !tbaa !45
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %600

599:                                              ; preds = %595
  store ptr %410, ptr %8, align 8, !tbaa !45
  br label %600

600:                                              ; preds = %599, %595
  %601 = call ptr @vect_create_destination_var(ptr noundef nonnull %108, ptr noundef nonnull %40) #17
  %602 = load ptr, ptr %8, align 8, !tbaa !45
  %603 = call ptr @build3_stat(i32 noundef 151, ptr noundef nonnull %40, ptr noundef %518, ptr noundef %596, ptr noundef %602) #17
  %604 = call ptr @gimple_build_assign_stat(ptr noundef %601, ptr noundef %603) #17
  %605 = load ptr, ptr @cfun, align 8, !tbaa !45
  %606 = call ptr @make_ssa_name_fn(ptr noundef %605, ptr noundef %601, ptr noundef %604) #17
  %607 = load i32, ptr %604, align 8
  %608 = and i32 %607, 255
  %609 = add nsw i32 %608, -10
  %610 = icmp ult i32 %609, -9
  br i1 %610, label %615, label %611

611:                                              ; preds = %600
  %612 = getelementptr inbounds %struct.gimple_statement_base, ptr %604, i64 0, i32 3
  %613 = load i32, ptr %612, align 4, !tbaa !56
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %611, %600
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %616

616:                                              ; preds = %615, %611
  %617 = load i32, ptr %604, align 8
  %618 = and i32 %617, 255
  %619 = zext nneg i32 %618 to i64
  %620 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !60
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %622
  %624 = load i64, ptr %623, align 8, !tbaa !103
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %626, label %627

626:                                              ; preds = %616
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %627

627:                                              ; preds = %626, %616
  %628 = getelementptr inbounds i8, ptr %604, i64 %624
  store ptr %606, ptr %628, align 8, !tbaa !45
  %629 = icmp eq ptr %606, null
  br i1 %629, label %636, label %630

630:                                              ; preds = %627
  %631 = load i64, ptr %606, align 8
  %632 = and i64 %631, 65535
  %633 = icmp eq i64 %632, 141
  br i1 %633, label %634, label %636

634:                                              ; preds = %630
  %635 = getelementptr inbounds %struct.tree_ssa_name, ptr %606, i64 0, i32 2
  store ptr %604, ptr %635, align 8, !tbaa !56
  br label %636

636:                                              ; preds = %627, %630, %634
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %604, ptr noundef %1)
  br i1 %338, label %637, label %645

637:                                              ; preds = %636
  br i1 %367, label %638, label %639

638:                                              ; preds = %637
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3658, ptr noundef nonnull @.str.8) #17
  br label %639

639:                                              ; preds = %637, %638
  %640 = icmp eq i32 %388, %369
  %641 = icmp eq i32 %403, %368
  %642 = select i1 %641, i1 %640, i1 false
  br i1 %642, label %643, label %645

643:                                              ; preds = %639
  %644 = call ptr @loop_latch_edge(ptr noundef %36) #17
  call void @add_phi_arg(ptr noundef %357, ptr noundef %596, ptr noundef %644, i32 noundef 0) #17
  br label %645

645:                                              ; preds = %636, %643, %639, %577
  %646 = phi ptr [ %518, %577 ], [ %518, %636 ], [ %596, %643 ], [ %596, %639 ]
  %647 = phi ptr [ %545, %577 ], [ %604, %636 ], [ %604, %643 ], [ %604, %639 ]
  %648 = phi ptr [ %547, %577 ], [ %606, %636 ], [ %606, %643 ], [ %606, %639 ]
  %649 = load i8, ptr %9, align 1, !tbaa !56
  %650 = icmp eq i8 %649, 0
  %651 = select i1 %650, i1 true, i1 %87
  br i1 %651, label %719, label %652

652:                                              ; preds = %645
  br i1 %370, label %654, label %653

653:                                              ; preds = %652
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3669, ptr noundef nonnull @.str.8) #17
  br label %654

654:                                              ; preds = %652, %653
  %655 = load ptr, ptr %371, align 8, !tbaa !145
  %656 = icmp eq ptr %655, null
  br i1 %656, label %663, label %657

657:                                              ; preds = %654
  %658 = load ptr, ptr %33, align 8, !tbaa !56
  %659 = getelementptr inbounds %struct.basic_block_def, ptr %658, i64 0, i32 3
  %660 = load ptr, ptr %659, align 8, !tbaa !104
  %661 = icmp eq ptr %655, %660
  %662 = zext i1 %661 to i8
  br label %663

663:                                              ; preds = %654, %657
  %664 = phi i8 [ 0, %654 ], [ %662, %657 ]
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %666, label %667

666:                                              ; preds = %663
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3670, ptr noundef nonnull @.str.8) #17
  br label %667

667:                                              ; preds = %663, %666
  br i1 %391, label %668, label %718

668:                                              ; preds = %667
  %669 = load ptr, ptr %372, align 8, !tbaa !56
  %670 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !45
  %671 = call ptr @build3_stat(i32 noundef 42, ptr noundef %157, ptr noundef %648, ptr noundef %669, ptr noundef %670) #17
  %672 = call ptr @vect_create_destination_var(ptr noundef nonnull %108, ptr noundef null) #17
  %673 = call ptr @gimple_build_assign_stat(ptr noundef %672, ptr noundef %671) #17
  %674 = load ptr, ptr @cfun, align 8, !tbaa !45
  %675 = call ptr @make_ssa_name_fn(ptr noundef %674, ptr noundef %672, ptr noundef %673) #17
  %676 = load i32, ptr %673, align 8
  %677 = and i32 %676, 255
  %678 = add nsw i32 %677, -10
  %679 = icmp ult i32 %678, -9
  br i1 %679, label %684, label %680

680:                                              ; preds = %668
  %681 = getelementptr inbounds %struct.gimple_statement_base, ptr %673, i64 0, i32 3
  %682 = load i32, ptr %681, align 4, !tbaa !56
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %685

684:                                              ; preds = %680, %668
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %685

685:                                              ; preds = %684, %680
  %686 = load i32, ptr %673, align 8
  %687 = and i32 %686, 255
  %688 = zext nneg i32 %687 to i64
  %689 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %688
  %690 = load i32, ptr %689, align 4, !tbaa !60
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %691
  %693 = load i64, ptr %692, align 8, !tbaa !103
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %695, label %696

695:                                              ; preds = %685
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %696

696:                                              ; preds = %695, %685
  %697 = getelementptr inbounds i8, ptr %673, i64 %693
  store ptr %675, ptr %697, align 8, !tbaa !45
  %698 = icmp eq ptr %675, null
  br i1 %698, label %705, label %699

699:                                              ; preds = %696
  %700 = load i64, ptr %675, align 8
  %701 = and i64 %700, 65535
  %702 = icmp eq i64 %701, 141
  br i1 %702, label %703, label %705

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.tree_ssa_name, ptr %675, i64 0, i32 2
  store ptr %673, ptr %704, align 8, !tbaa !56
  br label %705

705:                                              ; preds = %696, %699, %703
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %673, ptr noundef %1)
  br i1 %373, label %706, label %712

706:                                              ; preds = %705, %706
  %707 = phi ptr [ %710, %706 ], [ null, %705 ]
  %708 = phi i32 [ %709, %706 ], [ %46, %705 ]
  %709 = add nsw i32 %708, -1
  %710 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %675, ptr noundef %707) #17
  %711 = icmp sgt i32 %708, 1
  br i1 %711, label %706, label %712, !llvm.loop !218

712:                                              ; preds = %706, %705
  %713 = phi ptr [ null, %705 ], [ %710, %706 ]
  %714 = call ptr @build_constructor_from_list(ptr noundef nonnull %40, ptr noundef %713) #17
  %715 = call ptr @vect_init_vector(ptr noundef nonnull %0, ptr noundef %714, ptr noundef nonnull %40, ptr noundef %1)
  %716 = getelementptr inbounds %struct.tree_ssa_name, ptr %715, i64 0, i32 2
  %717 = load ptr, ptr %716, align 8, !tbaa !56
  br label %719

718:                                              ; preds = %667
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3696, ptr noundef nonnull @.str.8) #17
  br label %719

719:                                              ; preds = %712, %718, %645
  %720 = phi ptr [ %647, %645 ], [ %717, %712 ], [ %647, %718 ]
  %721 = phi ptr [ %648, %645 ], [ %715, %712 ], [ %648, %718 ]
  br i1 %375, label %727, label %722

722:                                              ; preds = %719
  %723 = load i32, ptr %390, align 8, !tbaa !183
  %724 = add i32 %723, 1
  store i32 %724, ptr %390, align 8, !tbaa !183
  %725 = zext i32 %723 to i64
  %726 = getelementptr inbounds %struct.VEC_tree_base, ptr %390, i64 0, i32 2, i64 %725
  store ptr %721, ptr %726, align 8, !tbaa !45
  br label %727

727:                                              ; preds = %719, %722
  br i1 %377, label %728, label %734

728:                                              ; preds = %727
  %729 = load ptr, ptr %378, align 8, !tbaa !193
  %730 = load i32, ptr %729, align 8, !tbaa !89
  %731 = add i32 %730, 1
  store i32 %731, ptr %729, align 8, !tbaa !89
  %732 = zext i32 %730 to i64
  %733 = getelementptr inbounds %struct.VEC_gimple_base, ptr %729, i64 0, i32 2, i64 %732
  store ptr %720, ptr %733, align 8, !tbaa !45
  br label %734

734:                                              ; preds = %727, %728
  %735 = add nuw nsw i32 %403, 1
  %736 = icmp eq i32 %735, %294
  br i1 %736, label %737, label %400, !llvm.loop !219

737:                                              ; preds = %734, %398
  %738 = phi ptr [ %389, %398 ], [ %646, %734 ]
  %739 = phi ptr [ %399, %398 ], [ %410, %734 ]
  %740 = phi ptr [ %386, %398 ], [ %720, %734 ]
  %741 = phi ptr [ %384, %398 ], [ %519, %734 ]
  br i1 %380, label %784, label %742

742:                                              ; preds = %737
  br i1 %379, label %749, label %743

743:                                              ; preds = %742
  %744 = call zeroext i8 @vect_transform_slp_perm_load(ptr noundef nonnull %0, ptr noundef %390, ptr noundef %1, i32 noundef %62, ptr noundef %4, i8 noundef zeroext 0) #17
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %746, label %784

746:                                              ; preds = %743
  %747 = icmp eq ptr %390, null
  br i1 %747, label %793, label %748

748:                                              ; preds = %746
  call void @free(ptr noundef %390)
  br label %793

749:                                              ; preds = %742
  br i1 %381, label %759, label %750

750:                                              ; preds = %749
  %751 = call zeroext i8 @vect_transform_strided_load(ptr noundef nonnull %0, ptr noundef %390, i32 noundef %291, ptr noundef %1) #17
  %752 = icmp eq i8 %751, 0
  br i1 %752, label %793, label %753

753:                                              ; preds = %750
  %754 = load ptr, ptr %382, align 8, !tbaa !162
  store ptr %754, ptr %2, align 8, !tbaa !45
  %755 = icmp eq ptr %390, null
  br i1 %755, label %757, label %756

756:                                              ; preds = %753
  call void @free(ptr noundef %390)
  br label %757

757:                                              ; preds = %753, %756
  %758 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %291) #17
  br label %784

759:                                              ; preds = %749
  br i1 %391, label %760, label %762

760:                                              ; preds = %759
  %761 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 6
  store ptr %740, ptr %2, align 8, !tbaa !45
  br label %764

762:                                              ; preds = %759
  %763 = getelementptr inbounds %struct._stmt_vec_info, ptr %385, i64 0, i32 14
  br label %764

764:                                              ; preds = %762, %760
  %765 = phi ptr [ %763, %762 ], [ %761, %760 ]
  store ptr %740, ptr %765, align 8, !tbaa !45
  %766 = getelementptr inbounds %struct.gimple_statement_base, ptr %740, i64 0, i32 1
  %767 = load i32, ptr %766, align 4, !tbaa !56
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %784, label %769

769:                                              ; preds = %764
  %770 = load ptr, ptr @stmt_vec_info_vec, align 8
  %771 = icmp eq ptr %770, null
  br i1 %771, label %774, label %772

772:                                              ; preds = %769
  %773 = load i32, ptr %770, align 8, !tbaa !91
  br label %774

774:                                              ; preds = %772, %769
  %775 = phi i32 [ %773, %772 ], [ 0, %769 ]
  %776 = icmp ugt i32 %767, %775
  br i1 %776, label %777, label %778

777:                                              ; preds = %774
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %778

778:                                              ; preds = %777, %774
  %779 = load ptr, ptr @stmt_vec_info_vec, align 8
  %780 = add i32 %767, -1
  %781 = zext i32 %780 to i64
  %782 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %779, i64 0, i32 2, i64 %781
  %783 = load ptr, ptr %782, align 8, !tbaa !45
  br label %784

784:                                              ; preds = %778, %764, %743, %757, %737
  %785 = phi ptr [ %390, %737 ], [ %758, %757 ], [ %390, %743 ], [ %390, %764 ], [ %390, %778 ]
  %786 = phi ptr [ %385, %737 ], [ %385, %757 ], [ %385, %743 ], [ null, %764 ], [ %783, %778 ]
  %787 = add nuw nsw i32 %388, 1
  %788 = icmp eq i32 %787, %70
  br i1 %788, label %789, label %383, !llvm.loop !220

789:                                              ; preds = %784, %354
  %790 = phi ptr [ %290, %354 ], [ %785, %784 ]
  %791 = icmp eq ptr %790, null
  br i1 %791, label %793, label %792

792:                                              ; preds = %789
  call void @free(ptr noundef %790)
  br label %793

793:                                              ; preds = %750, %149, %748, %746, %789, %792, %202, %186, %189, %173, %176, %150, %106, %93, %89, %83, %77, %80, %239, %209
  %794 = phi i8 [ 1, %239 ], [ 1, %209 ], [ 0, %80 ], [ 0, %77 ], [ 0, %83 ], [ 0, %89 ], [ 0, %93 ], [ 0, %106 ], [ 0, %149 ], [ 0, %150 ], [ 0, %176 ], [ 0, %173 ], [ 0, %189 ], [ 0, %186 ], [ 0, %202 ], [ 1, %792 ], [ 1, %789 ], [ 0, %746 ], [ 0, %748 ], [ 0, %750 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i8 %794
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_call(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !44 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x i32], align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @stmt_vec_info_vec, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8, !tbaa !91
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %17 = icmp ugt i32 %8, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @stmt_vec_info_vec, align 8
  %21 = add i32 %8, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %20, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  br label %25

25:                                               ; preds = %3, %19
  %26 = phi ptr [ %24, %19 ], [ null, %3 ]
  %27 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store i64 34359738376, ptr %6, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1242, ptr noundef nonnull @.str.8) #17
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !93
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %640, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 16
  %37 = load i32, ptr %36, align 8, !tbaa !97
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %640

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 25
  %41 = load i32, ptr %40, align 4, !tbaa !122
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %640

43:                                               ; preds = %39
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %640

47:                                               ; preds = %43
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !60
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !103
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %56

56:                                               ; preds = %55, %47
  %57 = getelementptr inbounds i8, ptr %0, i64 %53
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %640

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !56
  %65 = add i32 %64, -3
  %66 = zext i32 %65 to i64
  %67 = add i32 %64, -6
  %68 = icmp ult i32 %67, -2
  br i1 %68, label %640, label %69

69:                                               ; preds = %62
  %70 = icmp eq i32 %65, 0
  br i1 %70, label %123, label %74

71:                                               ; preds = %111
  %72 = add nuw nsw i64 %75, 1
  %73 = icmp eq i64 %72, %66
  br i1 %73, label %123, label %74, !llvm.loop !221

74:                                               ; preds = %69, %71
  %75 = phi i64 [ %72, %71 ], [ 0, %69 ]
  %76 = phi ptr [ %113, %71 ], [ null, %69 ]
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %97, label %81

81:                                               ; preds = %74
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !60
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !103
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = shl i64 %75, 32
  %93 = ashr exact i64 %92, 32
  %94 = getelementptr ptr, ptr %91, i64 %93
  %95 = getelementptr ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  br label %97

97:                                               ; preds = %74, %90
  %98 = phi ptr [ %96, %90 ], [ null, %74 ]
  %99 = icmp eq ptr %76, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !56
  %103 = tail call zeroext i8 @types_compatible_p(ptr noundef nonnull %76, ptr noundef %102) #17
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %640, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %110 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 22, i64 1, ptr %109)
  br label %640

111:                                              ; preds = %100, %97
  %112 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !56
  %114 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %75
  %115 = call zeroext i8 @vect_is_simple_use(ptr noundef %98, ptr noundef %28, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %114), !range !74
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %71

117:                                              ; preds = %111
  %118 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %640, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %122 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %121)
  br label %640

123:                                              ; preds = %71, %69
  %124 = phi ptr [ null, %69 ], [ %113, %71 ]
  %125 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %124)
  %126 = icmp eq ptr %125, null
  br i1 %126, label %640, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 1023
  %131 = zext nneg i32 %130 to i64
  %132 = shl nuw i64 1, %131
  %133 = trunc i64 %132 to i32
  %134 = load i32, ptr %0, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -1
  %137 = icmp ult i32 %136, 9
  tail call void @llvm.assume(i1 %137)
  %138 = zext nneg i32 %135 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !60
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !103
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %146

146:                                              ; preds = %145, %127
  %147 = getelementptr inbounds i8, ptr %0, i64 %143
  %148 = load ptr, ptr %147, align 8, !tbaa !45
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !56
  %151 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %150)
  %152 = icmp eq ptr %151, null
  br i1 %152, label %640, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 1023
  %157 = zext nneg i32 %156 to i64
  %158 = shl nuw i64 1, %157
  %159 = trunc i64 %158 to i32
  %160 = sdiv i32 %159, 2
  %161 = icmp eq i32 %160, %133
  br i1 %161, label %167, label %162

162:                                              ; preds = %153
  %163 = icmp eq i32 %159, %133
  br i1 %163, label %167, label %164

164:                                              ; preds = %162
  %165 = sdiv i32 %133, 2
  %166 = icmp eq i32 %165, %159
  br i1 %166, label %167, label %640

167:                                              ; preds = %164, %162, %153
  %168 = phi i32 [ 0, %153 ], [ 1, %162 ], [ 2, %164 ]
  %169 = tail call ptr @vectorizable_function(ptr noundef nonnull %0, ptr noundef nonnull %151, ptr noundef nonnull %125)
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %640, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %176 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 29, i64 1, ptr %175)
  br label %640

177:                                              ; preds = %167
  %178 = load i32, ptr %0, align 8
  %179 = and i32 %178, 254
  %180 = add nsw i32 %179, -10
  %181 = icmp ult i32 %180, -4
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !56
  br label %185

185:                                              ; preds = %177, %182
  %186 = phi ptr [ %184, %182 ], [ null, %177 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1327, ptr noundef nonnull @.str.8) #17
  br label %189

189:                                              ; preds = %185, %188
  %190 = getelementptr inbounds %struct._loop_vec_info, ptr %28, i64 0, i32 6
  %191 = load i32, ptr %190, align 8, !tbaa !182
  %192 = select i1 %161, i32 %159, i32 %133
  %193 = sdiv i32 %191, %192
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1336, ptr noundef nonnull @.str.8) #17
  br label %196

196:                                              ; preds = %189, %195
  %197 = icmp eq ptr %2, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %196
  store i32 4, ptr %26, align 8, !tbaa !108
  %199 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %203 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 25, i64 1, ptr %202)
  br label %204

204:                                              ; preds = %201, %198
  call void @vect_model_simple_cost(ptr noundef nonnull %26, i32 noundef %193, ptr noundef nonnull %6, ptr noundef null)
  br label %640

205:                                              ; preds = %196
  %206 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %210 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 20, i64 1, ptr %209)
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, ptr %0, align 8
  %213 = and i32 %212, 255
  %214 = add nsw i32 %213, -10
  %215 = icmp ult i32 %214, -9
  br i1 %215, label %228, label %216

216:                                              ; preds = %211
  %217 = zext nneg i32 %213 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !60
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !103
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %225

225:                                              ; preds = %224, %216
  %226 = getelementptr inbounds i8, ptr %0, i64 %222
  %227 = load ptr, ptr %226, align 8, !tbaa !45
  br label %228

228:                                              ; preds = %211, %225
  %229 = phi ptr [ %227, %225 ], [ null, %211 ]
  %230 = tail call ptr @vect_create_destination_var(ptr noundef %229, ptr noundef nonnull %151) #17
  switch i32 %168, label %520 [
    i32 1, label %237
    i32 0, label %231
    i32 2, label %640
  ]

231:                                              ; preds = %228
  %232 = icmp sgt i32 %193, 0
  br i1 %232, label %233, label %516

233:                                              ; preds = %231
  %234 = shl nuw nsw i32 %65, 1
  %235 = icmp eq i32 %65, 0
  %236 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 6
  br label %376

237:                                              ; preds = %228
  %238 = icmp sgt i32 %193, 0
  br i1 %238, label %239, label %521

239:                                              ; preds = %237
  %240 = icmp eq i32 %65, 0
  %241 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 6
  br label %242

242:                                              ; preds = %239, %372
  %243 = phi i32 [ 0, %239 ], [ %374, %372 ]
  %244 = phi ptr [ null, %239 ], [ %316, %372 ]
  %245 = phi ptr [ null, %239 ], [ %373, %372 ]
  %246 = phi ptr [ null, %239 ], [ %254, %372 ]
  %247 = icmp eq i32 %243, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %65) #17
  br label %253

250:                                              ; preds = %242
  %251 = icmp eq ptr %246, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %250
  store i32 0, ptr %246, align 8, !tbaa !183
  br label %253

253:                                              ; preds = %252, %250, %248
  %254 = phi ptr [ %249, %248 ], [ %246, %250 ], [ %246, %252 ]
  br i1 %240, label %315, label %255

255:                                              ; preds = %253, %307
  %256 = phi i64 [ %313, %307 ], [ 0, %253 ]
  %257 = load i32, ptr %0, align 8
  %258 = and i32 %257, 255
  %259 = add nsw i32 %258, -10
  %260 = icmp ult i32 %259, -9
  br i1 %260, label %277, label %261

261:                                              ; preds = %255
  %262 = zext nneg i32 %258 to i64
  %263 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !60
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %265
  %267 = load i64, ptr %266, align 8, !tbaa !103
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %270

270:                                              ; preds = %269, %261
  %271 = getelementptr inbounds i8, ptr %0, i64 %267
  %272 = shl i64 %256, 32
  %273 = ashr exact i64 %272, 32
  %274 = getelementptr ptr, ptr %271, i64 %273
  %275 = getelementptr ptr, ptr %274, i64 3
  %276 = load ptr, ptr %275, align 8, !tbaa !45
  br label %277

277:                                              ; preds = %255, %270
  %278 = phi ptr [ %276, %270 ], [ null, %255 ]
  br i1 %247, label %279, label %281

279:                                              ; preds = %277
  %280 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %278, ptr noundef nonnull %0, ptr noundef null)
  br label %307

281:                                              ; preds = %277
  %282 = load i32, ptr %244, align 8
  %283 = and i32 %282, 255
  %284 = add nsw i32 %283, -10
  %285 = icmp ult i32 %284, -9
  br i1 %285, label %302, label %286

286:                                              ; preds = %281
  %287 = zext nneg i32 %283 to i64
  %288 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !60
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !103
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %295

295:                                              ; preds = %294, %286
  %296 = getelementptr inbounds i8, ptr %244, i64 %292
  %297 = shl i64 %256, 32
  %298 = ashr exact i64 %297, 32
  %299 = getelementptr ptr, ptr %296, i64 %298
  %300 = getelementptr ptr, ptr %299, i64 3
  %301 = load ptr, ptr %300, align 8, !tbaa !45
  br label %302

302:                                              ; preds = %281, %295
  %303 = phi ptr [ %301, %295 ], [ null, %281 ]
  %304 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %256
  %305 = load i32, ptr %304, align 4, !tbaa !60
  %306 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %305, ptr noundef %303)
  br label %307

307:                                              ; preds = %302, %279
  %308 = phi ptr [ %280, %279 ], [ %306, %302 ]
  %309 = load i32, ptr %254, align 8, !tbaa !183
  %310 = add i32 %309, 1
  store i32 %310, ptr %254, align 8, !tbaa !183
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds %struct.VEC_tree_base, ptr %254, i64 0, i32 2, i64 %311
  store ptr %308, ptr %312, align 8, !tbaa !45
  %313 = add nuw nsw i64 %256, 1
  %314 = icmp eq i64 %313, %66
  br i1 %314, label %315, label %255, !llvm.loop !222

315:                                              ; preds = %307, %253
  %316 = tail call ptr @gimple_build_call_vec(ptr noundef nonnull %169, ptr noundef %254) #17
  %317 = load ptr, ptr @cfun, align 8, !tbaa !45
  %318 = tail call ptr @make_ssa_name_fn(ptr noundef %317, ptr noundef %230, ptr noundef %316) #17
  %319 = load i32, ptr %316, align 8
  %320 = and i32 %319, 255
  %321 = add nsw i32 %320, -10
  %322 = icmp ult i32 %321, -9
  br i1 %322, label %327, label %323

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.gimple_statement_base, ptr %316, i64 0, i32 3
  %325 = load i32, ptr %324, align 4, !tbaa !56
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323, %315
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %328

328:                                              ; preds = %327, %323
  %329 = load i32, ptr %316, align 8
  %330 = and i32 %329, 255
  %331 = zext nneg i32 %330 to i64
  %332 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !60
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %334
  %336 = load i64, ptr %335, align 8, !tbaa !103
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %328
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %339

339:                                              ; preds = %338, %328
  %340 = getelementptr inbounds i8, ptr %316, i64 %336
  store ptr %318, ptr %340, align 8, !tbaa !45
  %341 = icmp eq ptr %318, null
  br i1 %341, label %348, label %342

342:                                              ; preds = %339
  %343 = load i64, ptr %318, align 8
  %344 = and i64 %343, 65535
  %345 = icmp eq i64 %344, 141
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.tree_ssa_name, ptr %318, i64 0, i32 2
  store ptr %316, ptr %347, align 8, !tbaa !56
  br label %348

348:                                              ; preds = %339, %342, %346
  tail call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef %1)
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %316) #17
  br i1 %247, label %349, label %350

349:                                              ; preds = %348
  store ptr %316, ptr %2, align 8, !tbaa !45
  br label %352

350:                                              ; preds = %348
  %351 = getelementptr inbounds %struct._stmt_vec_info, ptr %245, i64 0, i32 14
  br label %352

352:                                              ; preds = %350, %349
  %353 = phi ptr [ %351, %350 ], [ %241, %349 ]
  store ptr %316, ptr %353, align 8, !tbaa !45
  %354 = getelementptr inbounds %struct.gimple_statement_base, ptr %316, i64 0, i32 1
  %355 = load i32, ptr %354, align 4, !tbaa !56
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %372, label %357

357:                                              ; preds = %352
  %358 = load ptr, ptr @stmt_vec_info_vec, align 8
  %359 = icmp eq ptr %358, null
  br i1 %359, label %362, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr %358, align 8, !tbaa !91
  br label %362

362:                                              ; preds = %360, %357
  %363 = phi i32 [ %361, %360 ], [ 0, %357 ]
  %364 = icmp ugt i32 %355, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %366

366:                                              ; preds = %365, %362
  %367 = load ptr, ptr @stmt_vec_info_vec, align 8
  %368 = add i32 %355, -1
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %367, i64 0, i32 2, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !45
  br label %372

372:                                              ; preds = %352, %366
  %373 = phi ptr [ %371, %366 ], [ null, %352 ]
  %374 = add nuw nsw i32 %243, 1
  %375 = icmp eq i32 %374, %193
  br i1 %375, label %521, label %242, !llvm.loop !223

376:                                              ; preds = %233, %512
  %377 = phi i32 [ 0, %233 ], [ %514, %512 ]
  %378 = phi ptr [ null, %233 ], [ %459, %512 ]
  %379 = phi ptr [ null, %233 ], [ %513, %512 ]
  %380 = phi ptr [ null, %233 ], [ %388, %512 ]
  %381 = icmp eq i32 %377, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %376
  %383 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %234) #17
  br label %387

384:                                              ; preds = %376
  %385 = icmp eq ptr %380, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %384
  store i32 0, ptr %380, align 8, !tbaa !183
  br label %387

387:                                              ; preds = %386, %384, %382
  %388 = phi ptr [ %383, %382 ], [ %380, %384 ], [ %380, %386 ]
  br i1 %235, label %458, label %389

389:                                              ; preds = %387, %446
  %390 = phi i64 [ %456, %446 ], [ 0, %387 ]
  %391 = trunc i64 %390 to i32
  %392 = load i32, ptr %0, align 8
  %393 = and i32 %392, 255
  %394 = add nsw i32 %393, -10
  %395 = icmp ult i32 %394, -9
  br i1 %395, label %412, label %396

396:                                              ; preds = %389
  %397 = zext nneg i32 %393 to i64
  %398 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !60
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !103
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %396
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %405

405:                                              ; preds = %404, %396
  %406 = getelementptr inbounds i8, ptr %0, i64 %402
  %407 = shl i64 %390, 32
  %408 = ashr exact i64 %407, 32
  %409 = getelementptr ptr, ptr %406, i64 %408
  %410 = getelementptr ptr, ptr %409, i64 3
  %411 = load ptr, ptr %410, align 8, !tbaa !45
  br label %412

412:                                              ; preds = %389, %405
  %413 = phi ptr [ %411, %405 ], [ null, %389 ]
  br i1 %381, label %414, label %419

414:                                              ; preds = %412
  %415 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %413, ptr noundef nonnull %0, ptr noundef null)
  %416 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %390
  %417 = load i32, ptr %416, align 4, !tbaa !60
  %418 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %417, ptr noundef %415)
  br label %446

419:                                              ; preds = %412
  %420 = shl i32 %391, 1
  %421 = load i32, ptr %378, align 8
  %422 = and i32 %421, 255
  %423 = add nsw i32 %422, -10
  %424 = icmp ult i32 %423, -9
  br i1 %424, label %440, label %425

425:                                              ; preds = %419
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !60
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !103
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %425
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %434

434:                                              ; preds = %433, %425
  %435 = getelementptr inbounds i8, ptr %378, i64 %431
  %436 = sext i32 %420 to i64
  %437 = getelementptr ptr, ptr %435, i64 %436
  %438 = getelementptr ptr, ptr %437, i64 3
  %439 = load ptr, ptr %438, align 8, !tbaa !45
  br label %440

440:                                              ; preds = %419, %434
  %441 = phi ptr [ %439, %434 ], [ null, %419 ]
  %442 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %390
  %443 = load i32, ptr %442, align 4, !tbaa !60
  %444 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %443, ptr noundef %441)
  %445 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %443, ptr noundef %444)
  br label %446

446:                                              ; preds = %440, %414
  %447 = phi ptr [ %418, %414 ], [ %445, %440 ]
  %448 = phi ptr [ %415, %414 ], [ %444, %440 ]
  %449 = load i32, ptr %388, align 8, !tbaa !183
  %450 = add i32 %449, 1
  store i32 %450, ptr %388, align 8, !tbaa !183
  %451 = zext i32 %449 to i64
  %452 = getelementptr inbounds %struct.VEC_tree_base, ptr %388, i64 0, i32 2, i64 %451
  store ptr %448, ptr %452, align 8, !tbaa !45
  %453 = add i32 %449, 2
  store i32 %453, ptr %388, align 8, !tbaa !183
  %454 = zext i32 %450 to i64
  %455 = getelementptr inbounds %struct.VEC_tree_base, ptr %388, i64 0, i32 2, i64 %454
  store ptr %447, ptr %455, align 8, !tbaa !45
  %456 = add nuw nsw i64 %390, 1
  %457 = icmp eq i64 %456, %66
  br i1 %457, label %458, label %389, !llvm.loop !224

458:                                              ; preds = %446, %387
  %459 = tail call ptr @gimple_build_call_vec(ptr noundef nonnull %169, ptr noundef %388) #17
  %460 = load ptr, ptr @cfun, align 8, !tbaa !45
  %461 = tail call ptr @make_ssa_name_fn(ptr noundef %460, ptr noundef %230, ptr noundef %459) #17
  %462 = load i32, ptr %459, align 8
  %463 = and i32 %462, 255
  %464 = add nsw i32 %463, -10
  %465 = icmp ult i32 %464, -9
  br i1 %465, label %470, label %466

466:                                              ; preds = %458
  %467 = getelementptr inbounds %struct.gimple_statement_base, ptr %459, i64 0, i32 3
  %468 = load i32, ptr %467, align 4, !tbaa !56
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %466, %458
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %471

471:                                              ; preds = %470, %466
  %472 = load i32, ptr %459, align 8
  %473 = and i32 %472, 255
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !60
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %477
  %479 = load i64, ptr %478, align 8, !tbaa !103
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %471
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %482

482:                                              ; preds = %481, %471
  %483 = getelementptr inbounds i8, ptr %459, i64 %479
  store ptr %461, ptr %483, align 8, !tbaa !45
  %484 = icmp eq ptr %461, null
  br i1 %484, label %491, label %485

485:                                              ; preds = %482
  %486 = load i64, ptr %461, align 8
  %487 = and i64 %486, 65535
  %488 = icmp eq i64 %487, 141
  br i1 %488, label %489, label %491

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.tree_ssa_name, ptr %461, i64 0, i32 2
  store ptr %459, ptr %490, align 8, !tbaa !56
  br label %491

491:                                              ; preds = %482, %485, %489
  tail call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %459, ptr noundef %1)
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %459) #17
  %492 = getelementptr inbounds %struct._stmt_vec_info, ptr %379, i64 0, i32 14
  %493 = select i1 %381, ptr %236, ptr %492
  store ptr %459, ptr %493, align 8, !tbaa !45
  %494 = getelementptr inbounds %struct.gimple_statement_base, ptr %459, i64 0, i32 1
  %495 = load i32, ptr %494, align 4, !tbaa !56
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %512, label %497

497:                                              ; preds = %491
  %498 = load ptr, ptr @stmt_vec_info_vec, align 8
  %499 = icmp eq ptr %498, null
  br i1 %499, label %502, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr %498, align 8, !tbaa !91
  br label %502

502:                                              ; preds = %500, %497
  %503 = phi i32 [ %501, %500 ], [ 0, %497 ]
  %504 = icmp ugt i32 %495, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %506

506:                                              ; preds = %505, %502
  %507 = load ptr, ptr @stmt_vec_info_vec, align 8
  %508 = add i32 %495, -1
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %507, i64 0, i32 2, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !45
  br label %512

512:                                              ; preds = %491, %506
  %513 = phi ptr [ %511, %506 ], [ null, %491 ]
  %514 = add nuw nsw i32 %377, 1
  %515 = icmp eq i32 %514, %193
  br i1 %515, label %516, label %376, !llvm.loop !225

516:                                              ; preds = %512, %231
  %517 = phi ptr [ null, %231 ], [ %388, %512 ]
  %518 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 6
  %519 = load ptr, ptr %518, align 8, !tbaa !162
  store ptr %519, ptr %2, align 8, !tbaa !45
  br label %521

520:                                              ; preds = %228
  unreachable

521:                                              ; preds = %372, %237, %516
  %522 = phi ptr [ %517, %516 ], [ null, %237 ], [ %254, %372 ]
  %523 = icmp eq ptr %522, null
  br i1 %523, label %525, label %524

524:                                              ; preds = %521
  tail call void @free(ptr noundef %522)
  br label %525

525:                                              ; preds = %521, %524
  %526 = load ptr, ptr %2, align 8, !tbaa !45
  %527 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %0, ptr noundef %526) #17
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %533, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %531 = load ptr, ptr %530, align 8, !tbaa !56
  %532 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %531) #17
  br label %533

533:                                              ; preds = %529, %525
  %534 = getelementptr inbounds %struct.tree_common, ptr %229, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !56
  %536 = load i32, ptr %0, align 8
  %537 = and i32 %536, 255
  %538 = add nsw i32 %537, -10
  %539 = icmp ult i32 %538, -9
  br i1 %539, label %552, label %540

540:                                              ; preds = %533
  %541 = zext nneg i32 %537 to i64
  %542 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %541
  %543 = load i32, ptr %542, align 4, !tbaa !60
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %544
  %546 = load i64, ptr %545, align 8, !tbaa !103
  %547 = icmp eq i64 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %540
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %549

549:                                              ; preds = %548, %540
  %550 = getelementptr inbounds i8, ptr %0, i64 %546
  %551 = load ptr, ptr %550, align 8, !tbaa !45
  br label %552

552:                                              ; preds = %533, %549
  %553 = phi ptr [ %551, %549 ], [ null, %533 ]
  %554 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !45
  %555 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %535, ptr noundef %554) #17
  %556 = tail call ptr @gimple_build_assign_stat(ptr noundef %553, ptr noundef %555) #17
  %557 = getelementptr inbounds %struct.gimple_statement_base, ptr %556, i64 0, i32 1
  %558 = load i32, ptr %557, align 4, !tbaa !56
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %584

560:                                              ; preds = %552
  %561 = icmp eq ptr %26, null
  br i1 %561, label %562, label %563

562:                                              ; preds = %560
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 639, ptr noundef nonnull @.str.8) #17
  br label %563

563:                                              ; preds = %562, %560
  %564 = load ptr, ptr @stmt_vec_info_vec, align 8
  %565 = icmp eq ptr %564, null
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load i32, ptr %564, align 8, !tbaa !91
  %568 = add i32 %567, 1
  br label %569

569:                                              ; preds = %566, %563
  %570 = phi i32 [ %568, %566 ], [ 1, %563 ]
  store i32 %570, ptr %557, align 4, !tbaa !56
  %571 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %572 = icmp eq ptr %571, null
  br i1 %572, label %578, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %571, i64 0, i32 1
  %575 = load i32, ptr %574, align 4, !tbaa !158
  %576 = load i32, ptr %571, align 8, !tbaa !91
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %573, %569
  %579 = tail call ptr @vec_heap_p_reserve(ptr noundef %571, i32 noundef 1) #17
  store ptr %579, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  br label %580

580:                                              ; preds = %578, %573
  %581 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %582 = load i32, ptr %581, align 8, !tbaa !91
  %583 = add i32 %582, 1
  store i32 %583, ptr %581, align 8, !tbaa !91
  br label %587

584:                                              ; preds = %552
  %585 = load ptr, ptr @stmt_vec_info_vec, align 8
  %586 = add i32 %558, -1
  br label %587

587:                                              ; preds = %580, %584
  %588 = phi i32 [ %582, %580 ], [ %586, %584 ]
  %589 = phi ptr [ %581, %580 ], [ %585, %584 ]
  %590 = zext i32 %588 to i64
  %591 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %589, i64 0, i32 2, i64 %590
  store ptr %26, ptr %591, align 8, !tbaa !45
  %592 = load i32, ptr %7, align 4, !tbaa !56
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %615

594:                                              ; preds = %587
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 639, ptr noundef nonnull @.str.8) #17
  %595 = load ptr, ptr @stmt_vec_info_vec, align 8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %600, label %597

597:                                              ; preds = %594
  %598 = load i32, ptr %595, align 8, !tbaa !91
  %599 = add i32 %598, 1
  br label %600

600:                                              ; preds = %597, %594
  %601 = phi i32 [ %599, %597 ], [ 1, %594 ]
  store i32 %601, ptr %7, align 4, !tbaa !56
  %602 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %603 = icmp eq ptr %602, null
  br i1 %603, label %609, label %604

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %602, i64 0, i32 1
  %606 = load i32, ptr %605, align 4, !tbaa !158
  %607 = load i32, ptr %602, align 8, !tbaa !91
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %611

609:                                              ; preds = %604, %600
  %610 = tail call ptr @vec_heap_p_reserve(ptr noundef %602, i32 noundef 1) #17
  store ptr %610, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  br label %611

611:                                              ; preds = %609, %604
  %612 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %613 = load i32, ptr %612, align 8, !tbaa !91
  %614 = add i32 %613, 1
  store i32 %614, ptr %612, align 8, !tbaa !91
  br label %618

615:                                              ; preds = %587
  %616 = load ptr, ptr @stmt_vec_info_vec, align 8
  %617 = add i32 %592, -1
  br label %618

618:                                              ; preds = %611, %615
  %619 = phi i32 [ %613, %611 ], [ %617, %615 ]
  %620 = phi ptr [ %612, %611 ], [ %616, %615 ]
  %621 = zext i32 %619 to i64
  %622 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %620, i64 0, i32 2, i64 %621
  store ptr null, ptr %622, align 8, !tbaa !45
  %623 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 1
  store ptr %556, ptr %623, align 8, !tbaa !127
  tail call void @gsi_replace(ptr noundef %1, ptr noundef %556, i8 noundef zeroext 0) #17
  %624 = load i32, ptr %556, align 8
  %625 = and i32 %624, 255
  %626 = add nsw i32 %625, -1
  %627 = icmp ult i32 %626, 9
  tail call void @llvm.assume(i1 %627)
  %628 = zext nneg i32 %625 to i64
  %629 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %628
  %630 = load i32, ptr %629, align 4, !tbaa !60
  %631 = zext i32 %630 to i64
  %632 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %631
  %633 = load i64, ptr %632, align 8, !tbaa !103
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %636

635:                                              ; preds = %618
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %636

636:                                              ; preds = %635, %618
  %637 = getelementptr inbounds i8, ptr %556, i64 %633
  %638 = load ptr, ptr %637, align 8, !tbaa !45
  %639 = getelementptr inbounds %struct.tree_ssa_name, ptr %638, i64 0, i32 2
  store ptr %556, ptr %639, align 8, !tbaa !56
  br label %640

640:                                              ; preds = %228, %171, %174, %164, %146, %123, %117, %120, %105, %108, %62, %56, %43, %39, %35, %31, %636, %204
  %641 = phi i8 [ 1, %636 ], [ 1, %204 ], [ 0, %31 ], [ 0, %35 ], [ 0, %39 ], [ 0, %43 ], [ 0, %56 ], [ 0, %62 ], [ 0, %108 ], [ 0, %105 ], [ 0, %120 ], [ 0, %117 ], [ 0, %123 ], [ 0, %146 ], [ 0, %164 ], [ 0, %174 ], [ 0, %171 ], [ 0, %228 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i8 %641
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vectorizable_store(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !44 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr @stmt_vec_info_vec, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ 0, %16 ]
  %23 = icmp ugt i32 %14, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr @stmt_vec_info_vec, align 8
  %27 = add i32 %14, -1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %26, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  br label %31

31:                                               ; preds = %4, %25
  %32 = phi ptr [ %30, %25 ], [ null, %4 ]
  %33 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %39 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1023
  %42 = zext nneg i32 %41 to i64
  %43 = shl nuw i64 1, %42
  %44 = trunc i64 %43 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store ptr null, ptr %9, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store ptr null, ptr %11, align 8, !tbaa !45
  %45 = icmp ne ptr %3, null
  %46 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 26
  %47 = load ptr, ptr %46, align 8, !tbaa !146
  %48 = icmp eq ptr %38, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %31
  %50 = load ptr, ptr %38, align 8, !tbaa !64
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi ptr [ %50, %49 ], [ null, %31 ]
  br i1 %45, label %57, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct._loop_vec_info, ptr %38, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !182
  %56 = sdiv i32 %55, %44
  br label %57

57:                                               ; preds = %51, %53
  %58 = phi i32 [ %56, %53 ], [ 1, %51 ]
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2923, ptr noundef nonnull @.str.8) #17
  br label %61

61:                                               ; preds = %57, %60
  %62 = icmp eq ptr %52, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !145
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !104
  %72 = icmp eq ptr %65, %71
  br label %73

73:                                               ; preds = %63, %67
  %74 = phi i1 [ false, %63 ], [ %72, %67 ]
  %75 = icmp sgt i32 %58, 1
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %631, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %82 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 30, i64 1, ptr %81)
  br label %631

83:                                               ; preds = %73, %61
  %84 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !93
  %86 = icmp ne i32 %85, 0
  %87 = icmp ne ptr %47, null
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %89, label %631

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 16
  %91 = load i32, ptr %90, align 8, !tbaa !97
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %631

93:                                               ; preds = %89
  %94 = load i32, ptr %0, align 8
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %631

97:                                               ; preds = %93
  %98 = zext nneg i32 %95 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !60
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !103
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %0, i64 %103
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = load i64, ptr %108, align 8
  %110 = trunc i64 %109 to i16
  switch i16 %110, label %631 [
    i16 45, label %111
    i16 47, label %111
    i16 41, label %111
    i16 44, label %111
    i16 43, label %111
  ]

111:                                              ; preds = %106, %106, %106, %106, %106
  %112 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %0) #17
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2952, ptr noundef nonnull @.str.8) #17
  br label %115

115:                                              ; preds = %111, %114
  %116 = load i32, ptr %0, align 8
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -10
  %119 = icmp ult i32 %118, -9
  br i1 %119, label %133, label %120

120:                                              ; preds = %115
  %121 = zext nneg i32 %117 to i64
  %122 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !60
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !103
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %129

129:                                              ; preds = %128, %120
  %130 = getelementptr inbounds i8, ptr %0, i64 %126
  %131 = getelementptr inbounds ptr, ptr %130, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !45
  br label %133

133:                                              ; preds = %115, %129
  %134 = phi ptr [ %132, %129 ], [ null, %115 ]
  %135 = call zeroext i8 @vect_is_simple_use(ptr noundef %134, ptr noundef %38, ptr noundef %47, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8), !range !74
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %631, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %142 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %141)
  br label %631

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !56
  %146 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  %148 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %145, ptr noundef %147) #17
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %631, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %155 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 32, i64 1, ptr %154)
  br label %631

156:                                              ; preds = %143
  %157 = load i64, ptr %36, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 14
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call i32 @vector_type_mode(ptr noundef nonnull %36) #17
  br label %166

162:                                              ; preds = %156
  %163 = load i32, ptr %39, align 4
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  br label %166

166:                                              ; preds = %162, %160
  %167 = phi i32 [ %161, %160 ], [ %165, %162 ]
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !199
  %171 = icmp eq i32 %170, 2956
  br i1 %171, label %631, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %33, align 8, !tbaa !102
  %174 = icmp eq ptr %173, null
  br i1 %174, label %631, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 17
  %177 = load ptr, ptr %176, align 8, !tbaa !126
  %178 = icmp eq ptr %177, null
  br i1 %178, label %247, label %179

179:                                              ; preds = %175
  %180 = tail call zeroext i8 @vect_strided_store_supported(ptr noundef nonnull %36) #17
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 25
  %184 = load i32, ptr %183, align 4, !tbaa !122
  %185 = icmp eq i32 %184, 1
  %186 = or i1 %45, %185
  br i1 %186, label %187, label %631

187:                                              ; preds = %182, %179
  %188 = icmp eq ptr %177, %0
  br i1 %188, label %189, label %247

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 18
  %191 = load ptr, ptr %190, align 8, !tbaa !226
  %192 = icmp eq ptr %191, null
  br i1 %192, label %247, label %193

193:                                              ; preds = %189, %238
  %194 = phi ptr [ %245, %238 ], [ %191, %189 ]
  %195 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %194) #17
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2994, ptr noundef nonnull @.str.8) #17
  br label %198

198:                                              ; preds = %193, %197
  %199 = load i32, ptr %194, align 8
  %200 = and i32 %199, 255
  %201 = add nsw i32 %200, -10
  %202 = icmp ult i32 %201, -9
  br i1 %202, label %216, label %203

203:                                              ; preds = %198
  %204 = zext nneg i32 %200 to i64
  %205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !60
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !103
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %212

212:                                              ; preds = %211, %203
  %213 = getelementptr inbounds i8, ptr %194, i64 %209
  %214 = getelementptr inbounds ptr, ptr %213, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !45
  br label %216

216:                                              ; preds = %198, %212
  %217 = phi ptr [ %215, %212 ], [ null, %198 ]
  %218 = call zeroext i8 @vect_is_simple_use(ptr noundef %217, ptr noundef %38, ptr noundef %47, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8), !range !74
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %631, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %225 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %224)
  br label %631

226:                                              ; preds = %216
  %227 = getelementptr inbounds %struct.gimple_statement_base, ptr %194, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !56
  %229 = icmp ne i32 %228, 0
  tail call void @llvm.assume(i1 %229)
  %230 = load ptr, ptr @stmt_vec_info_vec, align 8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %226
  %233 = load i32, ptr %230, align 8, !tbaa !91
  br label %234

234:                                              ; preds = %232, %226
  %235 = phi i32 [ %233, %232 ], [ 0, %226 ]
  %236 = icmp ugt i32 %228, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %238

238:                                              ; preds = %237, %234
  %239 = load ptr, ptr @stmt_vec_info_vec, align 8
  %240 = add i32 %228, -1
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %239, i64 0, i32 2, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !45
  %244 = getelementptr inbounds %struct._stmt_vec_info, ptr %243, i64 0, i32 18
  %245 = load ptr, ptr %244, align 8, !tbaa !226
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %193, !llvm.loop !227

247:                                              ; preds = %238, %189, %187, %175
  %248 = phi ptr [ %177, %187 ], [ null, %175 ], [ %177, %189 ], [ %177, %238 ]
  %249 = icmp eq ptr %2, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  store i32 2, ptr %32, align 8, !tbaa !108
  %251 = load i32, ptr %8, align 4, !tbaa !60
  tail call void @vect_model_store_cost(ptr noundef nonnull %32, i32 noundef %58, i32 noundef %251, ptr noundef null)
  br label %631

252:                                              ; preds = %247
  br i1 %178, label %362, label %253

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.gimple_statement_base, ptr %248, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !56
  %256 = icmp ne i32 %255, 0
  tail call void @llvm.assume(i1 %256)
  %257 = load ptr, ptr @stmt_vec_info_vec, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %253
  %260 = load i32, ptr %257, align 8, !tbaa !91
  br label %261

261:                                              ; preds = %259, %253
  %262 = phi i32 [ %260, %259 ], [ 0, %253 ]
  %263 = icmp ugt i32 %255, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %265

265:                                              ; preds = %264, %261
  %266 = load ptr, ptr @stmt_vec_info_vec, align 8
  %267 = add i32 %255, -1
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %266, i64 0, i32 2, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !45
  %271 = getelementptr inbounds %struct._stmt_vec_info, ptr %270, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !102
  %273 = load i32, ptr %254, align 4, !tbaa !56
  %274 = icmp ne i32 %273, 0
  tail call void @llvm.assume(i1 %274)
  %275 = icmp eq ptr %266, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %265
  %277 = load i32, ptr %266, align 8, !tbaa !91
  br label %278

278:                                              ; preds = %276, %265
  %279 = phi i32 [ %277, %276 ], [ 0, %265 ]
  %280 = icmp ugt i32 %273, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %282

282:                                              ; preds = %281, %278
  %283 = load ptr, ptr @stmt_vec_info_vec, align 8
  %284 = add i32 %273, -1
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %283, i64 0, i32 2, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !45
  %288 = getelementptr inbounds %struct._stmt_vec_info, ptr %287, i64 0, i32 19
  %289 = load i32, ptr %288, align 8, !tbaa !128
  %290 = load i32, ptr %254, align 4, !tbaa !56
  %291 = icmp ne i32 %290, 0
  tail call void @llvm.assume(i1 %291)
  %292 = icmp eq ptr %283, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %282
  %294 = load i32, ptr %283, align 8, !tbaa !91
  br label %295

295:                                              ; preds = %293, %282
  %296 = phi i32 [ %294, %293 ], [ 0, %282 ]
  %297 = icmp ugt i32 %290, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %299

299:                                              ; preds = %298, %295
  %300 = load ptr, ptr @stmt_vec_info_vec, align 8
  %301 = add i32 %290, -1
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %300, i64 0, i32 2, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !45
  %305 = getelementptr inbounds %struct._stmt_vec_info, ptr %304, i64 0, i32 20
  %306 = load i32, ptr %305, align 4, !tbaa !228
  %307 = add i32 %306, 1
  store i32 %307, ptr %305, align 4, !tbaa !228
  br i1 %62, label %319, label %308

308:                                              ; preds = %299
  %309 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 8
  %310 = load ptr, ptr %309, align 8, !tbaa !145
  %311 = icmp eq ptr %310, null
  br i1 %311, label %319, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %314 = load ptr, ptr %313, align 8, !tbaa !56
  %315 = getelementptr inbounds %struct.basic_block_def, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !104
  %317 = icmp eq ptr %310, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3025, ptr noundef nonnull @.str.8) #17
  br label %319

319:                                              ; preds = %308, %299, %312, %318
  %320 = load i32, ptr %254, align 4, !tbaa !56
  %321 = icmp ne i32 %320, 0
  tail call void @llvm.assume(i1 %321)
  %322 = load ptr, ptr @stmt_vec_info_vec, align 8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %319
  %325 = load i32, ptr %322, align 8, !tbaa !91
  br label %326

326:                                              ; preds = %324, %319
  %327 = phi i32 [ %325, %324 ], [ 0, %319 ]
  %328 = icmp ugt i32 %320, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %330

330:                                              ; preds = %329, %326
  %331 = load ptr, ptr @stmt_vec_info_vec, align 8
  %332 = add i32 %320, -1
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %331, i64 0, i32 2, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !45
  %336 = getelementptr inbounds %struct._stmt_vec_info, ptr %335, i64 0, i32 20
  %337 = load i32, ptr %336, align 4, !tbaa !228
  %338 = load i32, ptr %254, align 4, !tbaa !56
  %339 = icmp ne i32 %338, 0
  tail call void @llvm.assume(i1 %339)
  %340 = icmp eq ptr %331, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %330
  %342 = load i32, ptr %331, align 8, !tbaa !91
  br label %343

343:                                              ; preds = %341, %330
  %344 = phi i32 [ %342, %341 ], [ 0, %330 ]
  %345 = icmp ugt i32 %338, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %347

347:                                              ; preds = %346, %343
  %348 = load ptr, ptr @stmt_vec_info_vec, align 8
  %349 = add i32 %338, -1
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %348, i64 0, i32 2, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !45
  %353 = getelementptr inbounds %struct._stmt_vec_info, ptr %352, i64 0, i32 19
  %354 = load i32, ptr %353, align 8, !tbaa !128
  %355 = icmp uge i32 %337, %354
  %356 = or i1 %45, %355
  br i1 %356, label %358, label %357

357:                                              ; preds = %347
  store ptr null, ptr %2, align 8, !tbaa !45
  br label %631

358:                                              ; preds = %347
  br i1 %45, label %359, label %362

359:                                              ; preds = %358
  %360 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %361 = load i32, ptr %360, align 8, !tbaa !201
  br label %362

362:                                              ; preds = %252, %358, %359
  %363 = phi ptr [ %248, %359 ], [ %248, %358 ], [ %0, %252 ]
  %364 = phi i1 [ true, %359 ], [ %45, %358 ], [ true, %252 ]
  %365 = phi i32 [ %289, %359 ], [ %289, %358 ], [ 1, %252 ]
  %366 = phi ptr [ %272, %359 ], [ %272, %358 ], [ %34, %252 ]
  %367 = phi i32 [ %361, %359 ], [ %289, %358 ], [ 1, %252 ]
  %368 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %362
  %371 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %372 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %371, ptr noundef nonnull @.str.91, i32 noundef %58)
  br label %373

373:                                              ; preds = %370, %362
  %374 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %365) #17
  %375 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %365) #17
  %376 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %366) #17
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3060, ptr noundef nonnull @.str.8) #17
  br label %379

379:                                              ; preds = %373, %378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  %380 = icmp sgt i32 %58, 0
  br i1 %380, label %381, label %619

381:                                              ; preds = %379
  %382 = icmp eq i32 %365, 0
  %383 = icmp eq i32 %365, 0
  %384 = icmp eq ptr %47, null
  %385 = icmp eq i32 %367, 0
  %386 = getelementptr inbounds %struct.data_reference, ptr %366, i64 0, i32 2
  %387 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 6
  %388 = zext i32 %365 to i64
  %389 = zext i32 %367 to i64
  br label %393

390:                                              ; preds = %614
  %391 = add nuw nsw i32 %395, 1
  %392 = icmp eq i32 %391, %58
  br i1 %392, label %619, label %393, !llvm.loop !229

393:                                              ; preds = %381, %390
  %394 = phi ptr [ null, %381 ], [ %617, %390 ]
  %395 = phi i32 [ 0, %381 ], [ %391, %390 ]
  %396 = phi ptr [ null, %381 ], [ %616, %390 ]
  %397 = phi ptr [ null, %381 ], [ %615, %390 ]
  %398 = icmp eq i32 %395, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %393
  br i1 %382, label %487, label %477

400:                                              ; preds = %393
  br i1 %45, label %402, label %401

401:                                              ; preds = %400
  br i1 %383, label %464, label %406

402:                                              ; preds = %400
  call void @vect_get_slp_defs(ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef null) #17
  %403 = load ptr, ptr %11, align 8
  %404 = getelementptr inbounds %struct.VEC_tree_base, ptr %403, i64 0, i32 2, i64 0
  %405 = load ptr, ptr %404, align 8, !tbaa !45
  br label %464

406:                                              ; preds = %401, %454
  %407 = phi i32 [ %462, %454 ], [ 0, %401 ]
  %408 = phi ptr [ %461, %454 ], [ %363, %401 ]
  %409 = icmp eq ptr %408, null
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %408) #17
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410, %406
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3139, ptr noundef nonnull @.str.8) #17
  br label %414

414:                                              ; preds = %410, %413
  %415 = load i32, ptr %408, align 8
  %416 = and i32 %415, 255
  %417 = add nsw i32 %416, -10
  %418 = icmp ult i32 %417, -9
  br i1 %418, label %432, label %419

419:                                              ; preds = %414
  %420 = zext nneg i32 %416 to i64
  %421 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !60
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %423
  %425 = load i64, ptr %424, align 8, !tbaa !103
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %419
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %428

428:                                              ; preds = %427, %419
  %429 = getelementptr inbounds i8, ptr %408, i64 %425
  %430 = getelementptr inbounds ptr, ptr %429, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !45
  br label %432

432:                                              ; preds = %414, %428
  %433 = phi ptr [ %431, %428 ], [ null, %414 ]
  %434 = call ptr @vect_get_vec_def_for_operand(ptr noundef %433, ptr noundef nonnull %408, ptr noundef null)
  %435 = load i32, ptr %374, align 8, !tbaa !183
  %436 = add i32 %435, 1
  store i32 %436, ptr %374, align 8, !tbaa !183
  %437 = zext i32 %435 to i64
  %438 = getelementptr inbounds %struct.VEC_tree_base, ptr %374, i64 0, i32 2, i64 %437
  store ptr %434, ptr %438, align 8, !tbaa !45
  %439 = load i32, ptr %375, align 8, !tbaa !183
  %440 = add i32 %439, 1
  store i32 %440, ptr %375, align 8, !tbaa !183
  %441 = zext i32 %439 to i64
  %442 = getelementptr inbounds %struct.VEC_tree_base, ptr %375, i64 0, i32 2, i64 %441
  store ptr %434, ptr %442, align 8, !tbaa !45
  %443 = getelementptr inbounds %struct.gimple_statement_base, ptr %408, i64 0, i32 1
  %444 = load i32, ptr %443, align 4, !tbaa !56
  %445 = icmp ne i32 %444, 0
  call void @llvm.assume(i1 %445)
  %446 = load ptr, ptr @stmt_vec_info_vec, align 8
  %447 = icmp eq ptr %446, null
  br i1 %447, label %450, label %448

448:                                              ; preds = %432
  %449 = load i32, ptr %446, align 8, !tbaa !91
  br label %450

450:                                              ; preds = %448, %432
  %451 = phi i32 [ %449, %448 ], [ 0, %432 ]
  %452 = icmp ugt i32 %444, %451
  br i1 %452, label %453, label %454

453:                                              ; preds = %450
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %454

454:                                              ; preds = %453, %450
  %455 = load ptr, ptr @stmt_vec_info_vec, align 8
  %456 = add i32 %444, -1
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %455, i64 0, i32 2, i64 %457
  %459 = load ptr, ptr %458, align 8, !tbaa !45
  %460 = getelementptr inbounds %struct._stmt_vec_info, ptr %459, i64 0, i32 18
  %461 = load ptr, ptr %460, align 8, !tbaa !226
  %462 = add nuw i32 %407, 1
  %463 = icmp eq i32 %462, %365
  br i1 %463, label %464, label %406, !llvm.loop !230

464:                                              ; preds = %454, %401, %402
  %465 = phi ptr [ %405, %402 ], [ %394, %401 ], [ %434, %454 ]
  %466 = getelementptr inbounds %struct.tree_common, ptr %465, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !56
  %468 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %36, ptr noundef %467) #17
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %464
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3152, ptr noundef nonnull @.str.8) #17
  br label %471

471:                                              ; preds = %464, %470
  %472 = call ptr @vect_create_data_ref_ptr(ptr noundef %363, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %12, i8 noundef zeroext 0, ptr noundef nonnull %10) #17
  %473 = load i8, ptr %10, align 1
  %474 = icmp ne i8 %473, 0
  %475 = select i1 %384, i1 %474, i1 false
  br i1 %475, label %476, label %491

476:                                              ; preds = %471
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3156, ptr noundef nonnull @.str.8) #17
  br label %491

477:                                              ; preds = %399, %477
  %478 = phi i64 [ %485, %477 ], [ 0, %399 ]
  %479 = getelementptr inbounds %struct.VEC_tree_base, ptr %375, i64 0, i32 2, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !45
  %481 = call zeroext i8 @vect_is_simple_use(ptr noundef %480, ptr noundef %38, ptr noundef %47, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8), !range !74
  %482 = load i32, ptr %8, align 4, !tbaa !60
  %483 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %482, ptr noundef %480)
  %484 = getelementptr inbounds %struct.VEC_tree_base, ptr %374, i64 0, i32 2, i64 %478
  store ptr %483, ptr %484, align 8, !tbaa !45
  store ptr %483, ptr %479, align 8, !tbaa !45
  %485 = add nuw nsw i64 %478, 1
  %486 = icmp eq i64 %485, %388
  br i1 %486, label %487, label %477, !llvm.loop !231

487:                                              ; preds = %477, %399
  %488 = phi ptr [ %394, %399 ], [ %483, %477 ]
  %489 = load ptr, ptr %12, align 8, !tbaa !45
  %490 = call ptr @bump_vector_ptr(ptr noundef %396, ptr noundef %489, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null) #17
  br label %491

491:                                              ; preds = %476, %471, %487
  %492 = phi ptr [ %472, %476 ], [ %472, %471 ], [ %490, %487 ]
  %493 = phi ptr [ %465, %476 ], [ %465, %471 ], [ %488, %487 ]
  br i1 %364, label %498, label %494

494:                                              ; preds = %491
  %495 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %365) #17
  store ptr %495, ptr %9, align 8, !tbaa !45
  %496 = call zeroext i8 @vect_permute_store_chain(ptr noundef %374, i32 noundef %365, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %9) #17
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %614, label %498

498:                                              ; preds = %494, %491
  br i1 %385, label %614, label %499

499:                                              ; preds = %498, %609
  %500 = phi i64 [ %612, %609 ], [ 0, %498 ]
  %501 = phi ptr [ %519, %609 ], [ %493, %498 ]
  %502 = phi ptr [ %611, %609 ], [ %363, %498 ]
  %503 = phi ptr [ %510, %609 ], [ %492, %498 ]
  %504 = phi ptr [ %610, %609 ], [ %397, %498 ]
  %505 = icmp eq i64 %500, 0
  br i1 %505, label %509, label %506

506:                                              ; preds = %499
  %507 = load ptr, ptr %12, align 8, !tbaa !45
  %508 = call ptr @bump_vector_ptr(ptr noundef %503, ptr noundef %507, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null) #17
  br label %509

509:                                              ; preds = %506, %499
  %510 = phi ptr [ %508, %506 ], [ %503, %499 ]
  %511 = xor i1 %364, true
  %512 = or i1 %45, %511
  %513 = select i1 %45, ptr %11, ptr %9
  br i1 %512, label %514, label %518

514:                                              ; preds = %509
  %515 = load ptr, ptr %513, align 8
  %516 = getelementptr inbounds %struct.VEC_tree_base, ptr %515, i64 0, i32 2, i64 %500
  %517 = load ptr, ptr %516, align 8, !tbaa !45
  br label %518

518:                                              ; preds = %509, %514
  %519 = phi ptr [ %517, %514 ], [ %501, %509 ]
  %520 = load ptr, ptr %386, align 8, !tbaa !217
  %521 = ptrtoint ptr %520 to i64
  %522 = trunc i64 %521 to i32
  switch i32 %522, label %527 [
    i32 0, label %523
    i32 -1, label %525
  ]

523:                                              ; preds = %518
  %524 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %510) #17
  br label %536

525:                                              ; preds = %518
  %526 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !45
  br label %531

527:                                              ; preds = %518
  %528 = shl i64 %521, 32
  %529 = ashr exact i64 %528, 32
  %530 = call ptr @size_int_kind(i64 noundef %529, i32 noundef 0) #17
  br label %531

531:                                              ; preds = %527, %525
  %532 = phi ptr [ %526, %525 ], [ %530, %527 ]
  %533 = call ptr @size_int_kind(i64 noundef 8, i32 noundef 0) #17
  %534 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %532, ptr noundef %533) #17
  %535 = call ptr @build2_stat(i32 noundef 49, ptr noundef nonnull %36, ptr noundef %510, ptr noundef %534) #17
  br label %536

536:                                              ; preds = %531, %523
  %537 = phi ptr [ %524, %523 ], [ %535, %531 ]
  %538 = call i32 @get_alias_set(ptr noundef %537) #17
  %539 = load i32, ptr %0, align 8
  %540 = and i32 %539, 255
  %541 = add nsw i32 %540, -10
  %542 = icmp ult i32 %541, -9
  br i1 %542, label %555, label %543

543:                                              ; preds = %536
  %544 = zext nneg i32 %540 to i64
  %545 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !60
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %547
  %549 = load i64, ptr %548, align 8, !tbaa !103
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %543
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %552

552:                                              ; preds = %551, %543
  %553 = getelementptr inbounds i8, ptr %0, i64 %549
  %554 = load ptr, ptr %553, align 8, !tbaa !45
  br label %555

555:                                              ; preds = %536, %552
  %556 = phi ptr [ %554, %552 ], [ null, %536 ]
  %557 = call i32 @get_alias_set(ptr noundef %556) #17
  %558 = call i32 @alias_sets_conflict_p(i32 noundef %538, i32 noundef %557) #17
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %561

560:                                              ; preds = %555
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3217, ptr noundef nonnull @.str.8) #17
  br label %561

561:                                              ; preds = %555, %560
  %562 = call ptr @gimple_build_assign_stat(ptr noundef %537, ptr noundef %519) #17
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef %562, ptr noundef %1)
  call void @mark_symbols_for_renaming(ptr noundef %562) #17
  br i1 %45, label %609, label %563

563:                                              ; preds = %561
  br i1 %398, label %564, label %565

564:                                              ; preds = %563
  store ptr %562, ptr %2, align 8, !tbaa !45
  br label %567

565:                                              ; preds = %563
  %566 = getelementptr inbounds %struct._stmt_vec_info, ptr %504, i64 0, i32 14
  br label %567

567:                                              ; preds = %565, %564
  %568 = phi ptr [ %566, %565 ], [ %387, %564 ]
  store ptr %562, ptr %568, align 8, !tbaa !45
  %569 = getelementptr inbounds %struct.gimple_statement_base, ptr %562, i64 0, i32 1
  %570 = load i32, ptr %569, align 4, !tbaa !56
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %587, label %572

572:                                              ; preds = %567
  %573 = load ptr, ptr @stmt_vec_info_vec, align 8
  %574 = icmp eq ptr %573, null
  br i1 %574, label %577, label %575

575:                                              ; preds = %572
  %576 = load i32, ptr %573, align 8, !tbaa !91
  br label %577

577:                                              ; preds = %575, %572
  %578 = phi i32 [ %576, %575 ], [ 0, %572 ]
  %579 = icmp ugt i32 %570, %578
  br i1 %579, label %580, label %581

580:                                              ; preds = %577
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %581

581:                                              ; preds = %580, %577
  %582 = load ptr, ptr @stmt_vec_info_vec, align 8
  %583 = add i32 %570, -1
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %582, i64 0, i32 2, i64 %584
  %586 = load ptr, ptr %585, align 8, !tbaa !45
  br label %587

587:                                              ; preds = %567, %581
  %588 = phi ptr [ %586, %581 ], [ null, %567 ]
  %589 = getelementptr inbounds %struct.gimple_statement_base, ptr %502, i64 0, i32 1
  %590 = load i32, ptr %589, align 4, !tbaa !56
  %591 = icmp ne i32 %590, 0
  call void @llvm.assume(i1 %591)
  %592 = load ptr, ptr @stmt_vec_info_vec, align 8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %587
  %595 = load i32, ptr %592, align 8, !tbaa !91
  br label %596

596:                                              ; preds = %594, %587
  %597 = phi i32 [ %595, %594 ], [ 0, %587 ]
  %598 = icmp ugt i32 %590, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %596
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %600

600:                                              ; preds = %599, %596
  %601 = load ptr, ptr @stmt_vec_info_vec, align 8
  %602 = add i32 %590, -1
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %601, i64 0, i32 2, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !45
  %606 = getelementptr inbounds %struct._stmt_vec_info, ptr %605, i64 0, i32 18
  %607 = load ptr, ptr %606, align 8, !tbaa !226
  %608 = icmp eq ptr %607, null
  br i1 %608, label %614, label %609

609:                                              ; preds = %600, %561
  %610 = phi ptr [ %504, %561 ], [ %588, %600 ]
  %611 = phi ptr [ %502, %561 ], [ %607, %600 ]
  %612 = add nuw nsw i64 %500, 1
  %613 = icmp eq i64 %612, %389
  br i1 %613, label %614, label %499, !llvm.loop !232

614:                                              ; preds = %600, %609, %498, %494
  %615 = phi ptr [ %397, %494 ], [ %397, %498 ], [ %610, %609 ], [ %588, %600 ]
  %616 = phi ptr [ %492, %494 ], [ %492, %498 ], [ %510, %609 ], [ %510, %600 ]
  %617 = phi ptr [ %493, %494 ], [ %493, %498 ], [ %519, %609 ], [ %519, %600 ]
  %618 = phi i1 [ false, %494 ], [ true, %498 ], [ true, %609 ], [ true, %600 ]
  br i1 %618, label %390, label %629

619:                                              ; preds = %390, %379
  %620 = icmp eq ptr %374, null
  br i1 %620, label %622, label %621

621:                                              ; preds = %619
  call void @free(ptr noundef %374)
  br label %622

622:                                              ; preds = %619, %621
  %623 = icmp eq ptr %375, null
  br i1 %623, label %625, label %624

624:                                              ; preds = %622
  call void @free(ptr noundef %375)
  br label %625

625:                                              ; preds = %622, %624
  %626 = load ptr, ptr %9, align 8, !tbaa !45
  %627 = icmp eq ptr %626, null
  br i1 %627, label %629, label %628

628:                                              ; preds = %625
  call void @free(ptr noundef %626)
  store ptr null, ptr %9, align 8, !tbaa !45
  br label %629

629:                                              ; preds = %614, %625, %628
  %630 = phi i8 [ 1, %628 ], [ 1, %625 ], [ 0, %614 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br label %631

631:                                              ; preds = %220, %223, %182, %172, %166, %150, %153, %137, %140, %106, %93, %89, %83, %77, %80, %629, %357, %250
  %632 = phi i8 [ %630, %629 ], [ 1, %357 ], [ 1, %250 ], [ 0, %80 ], [ 0, %77 ], [ 0, %83 ], [ 0, %89 ], [ 0, %93 ], [ 0, %106 ], [ 0, %140 ], [ 0, %137 ], [ 0, %153 ], [ 0, %150 ], [ 0, %166 ], [ 0, %172 ], [ 0, %182 ], [ 0, %223 ], [ 0, %220 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %632
}

declare zeroext i8 @vectorizable_reduction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vectorizable_live_operation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @vect_transform_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 !prof !44 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stmt_vec_info_vec, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8, !tbaa !91
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %17 = icmp ugt i32 %8, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @stmt_vec_info_vec, align 8
  %21 = add i32 %8, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %20, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  br label %25

25:                                               ; preds = %5, %19
  %26 = phi ptr [ %24, %19 ], [ null, %5 ]
  %27 = load i32, ptr %26, align 8, !tbaa !108
  switch i32 %27, label %93 [
    i32 10, label %28
    i32 9, label %32
    i32 11, label %36
    i32 8, label %40
    i32 3, label %47
    i32 5, label %51
    i32 1, label %55
    i32 2, label %59
    i32 6, label %74
    i32 4, label %81
    i32 7, label %86
  ]

28:                                               ; preds = %25
  %29 = call fastcc zeroext i8 @vectorizable_type_demotion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3), !range !74
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %104

31:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4150, ptr noundef nonnull @.str.8) #17
  br label %104

32:                                               ; preds = %25
  %33 = call fastcc zeroext i8 @vectorizable_type_promotion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3), !range !74
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %104

35:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4155, ptr noundef nonnull @.str.8) #17
  br label %104

36:                                               ; preds = %25
  %37 = call fastcc zeroext i8 @vectorizable_conversion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3), !range !74
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %104

39:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4160, ptr noundef nonnull @.str.8) #17
  br label %104

40:                                               ; preds = %25
  %41 = icmp eq ptr %3, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4164, ptr noundef nonnull @.str.8) #17
  br label %43

43:                                               ; preds = %40, %42
  %44 = call zeroext i8 @vectorizable_induction(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4166, ptr noundef nonnull @.str.8) #17
  br label %104

47:                                               ; preds = %25
  %48 = call fastcc zeroext i8 @vectorizable_operation(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3), !range !74
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %47
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4171, ptr noundef nonnull @.str.8) #17
  br label %104

51:                                               ; preds = %25
  %52 = call fastcc zeroext i8 @vectorizable_assignment(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3), !range !74
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %104

54:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4176, ptr noundef nonnull @.str.8) #17
  br label %104

55:                                               ; preds = %25
  %56 = call fastcc zeroext i8 @vectorizable_load(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4), !range !74
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4182, ptr noundef nonnull @.str.8) #17
  br label %104

59:                                               ; preds = %25
  %60 = call fastcc zeroext i8 @vectorizable_store(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3)
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4187, ptr noundef nonnull @.str.8) #17
  br label %63

63:                                               ; preds = %59, %62
  %64 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !126
  %66 = icmp eq ptr %65, null
  %67 = icmp ne ptr %3, null
  %68 = or i1 %67, %66
  br i1 %68, label %104, label %69

69:                                               ; preds = %63
  store i8 1, ptr %2, align 1, !tbaa !56
  %70 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !162
  %72 = icmp ne ptr %71, null
  %73 = zext i1 %72 to i8
  br label %104

74:                                               ; preds = %25
  %75 = icmp eq ptr %3, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4203, ptr noundef nonnull @.str.8) #17
  br label %77

77:                                               ; preds = %74, %76
  %78 = call zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0)
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4205, ptr noundef nonnull @.str.8) #17
  br label %104

81:                                               ; preds = %25
  %82 = icmp eq ptr %3, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4209, ptr noundef nonnull @.str.8) #17
  br label %84

84:                                               ; preds = %81, %83
  %85 = call fastcc zeroext i8 @vectorizable_call(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6), !range !74
  br label %104

86:                                               ; preds = %25
  %87 = icmp eq ptr %3, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4214, ptr noundef nonnull @.str.8) #17
  br label %89

89:                                               ; preds = %86, %88
  %90 = call zeroext i8 @vectorizable_reduction(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #17
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4216, ptr noundef nonnull @.str.8) #17
  br label %104

93:                                               ; preds = %25
  %94 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 4
  %95 = load i8, ptr %94, align 4, !tbaa !96
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %102 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 19, i64 1, ptr %101)
  br label %103

103:                                              ; preds = %100, %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4224, ptr noundef nonnull @.str.8) #17
  br label %104

104:                                              ; preds = %69, %63, %92, %89, %80, %77, %58, %55, %54, %51, %50, %47, %46, %43, %39, %36, %35, %32, %31, %28, %93, %103, %84
  %105 = phi i8 [ 0, %93 ], [ 0, %103 ], [ 0, %89 ], [ 0, %92 ], [ 0, %84 ], [ 0, %77 ], [ 0, %80 ], [ 0, %55 ], [ 0, %58 ], [ 0, %51 ], [ 0, %54 ], [ 0, %47 ], [ 0, %50 ], [ 0, %43 ], [ 0, %46 ], [ 0, %36 ], [ 0, %39 ], [ 0, %32 ], [ 0, %35 ], [ 0, %28 ], [ 0, %31 ], [ %73, %69 ], [ 1, %63 ]
  %106 = load ptr, ptr %6, align 8, !tbaa !45
  %107 = icmp eq ptr %106, null
  br i1 %107, label %199, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !144
  %111 = icmp eq ptr %110, null
  br i1 %111, label %199, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %110, align 8, !tbaa !64
  %114 = getelementptr inbounds %struct.loop, ptr %113, i64 0, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !145
  %116 = icmp eq ptr %115, null
  br i1 %116, label %199, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !104
  %122 = icmp eq ptr %115, %121
  br i1 %122, label %123, label %199

123:                                              ; preds = %117
  %124 = load i32, ptr %26, align 8, !tbaa !108
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %199, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !93
  %129 = add i32 %128, -1
  %130 = icmp ult i32 %129, 2
  br i1 %130, label %131, label %199

131:                                              ; preds = %126
  %132 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %136 = call i64 @fwrite(ptr nonnull @.str.37, i64 45, i64 1, ptr %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, ptr %0, align 8
  %139 = and i32 %138, 255
  %140 = icmp eq i32 %139, 16
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  br label %156

143:                                              ; preds = %137
  %144 = add nsw i32 %139, -1
  %145 = icmp ult i32 %144, 9
  call void @llvm.assume(i1 %145)
  %146 = zext nneg i32 %139 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !60
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !103
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %154

154:                                              ; preds = %153, %143
  %155 = getelementptr inbounds i8, ptr %0, i64 %151
  br label %156

156:                                              ; preds = %154, %141
  %157 = phi ptr [ %142, %141 ], [ %155, %154 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !45
  %159 = getelementptr inbounds %struct.tree_ssa_name, ptr %158, i64 0, i32 5
  %160 = getelementptr inbounds %struct.tree_ssa_name, ptr %158, i64 0, i32 5, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !112
  %162 = icmp eq ptr %161, %159
  br i1 %162, label %199, label %163

163:                                              ; preds = %156, %193
  %164 = phi ptr [ %197, %193 ], [ %161, %156 ]
  %165 = phi ptr [ %195, %193 ], [ %161, %156 ]
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %164, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !56
  %168 = getelementptr inbounds %struct.gimple_statement_base, ptr %167, i64 0, i32 4
  %169 = load ptr, ptr %168, align 8, !tbaa !56
  %170 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %115, ptr noundef %169) #17
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %193

172:                                              ; preds = %163
  %173 = load ptr, ptr %166, align 8, !tbaa !56
  %174 = load ptr, ptr %6, align 8, !tbaa !45
  %175 = getelementptr inbounds %struct.gimple_statement_base, ptr %173, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !56
  %177 = icmp ne i32 %176, 0
  call void @llvm.assume(i1 %177)
  %178 = load ptr, ptr @stmt_vec_info_vec, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %172
  %181 = load i32, ptr %178, align 8, !tbaa !91
  br label %182

182:                                              ; preds = %180, %172
  %183 = phi i32 [ %181, %180 ], [ 0, %172 ]
  %184 = icmp ugt i32 %176, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %186

186:                                              ; preds = %185, %182
  %187 = load ptr, ptr @stmt_vec_info_vec, align 8
  %188 = add i32 %176, -1
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %187, i64 0, i32 2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !45
  %192 = getelementptr inbounds %struct._stmt_vec_info, ptr %191, i64 0, i32 6
  store ptr %174, ptr %192, align 8, !tbaa !162
  br label %193

193:                                              ; preds = %163, %186
  %194 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %165, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !112
  %196 = icmp eq ptr %195, %159
  %197 = select i1 %196, ptr null, ptr %195
  %198 = icmp eq ptr %195, %159
  br i1 %198, label %199, label %163, !llvm.loop !233

199:                                              ; preds = %193, %156, %112, %126, %123, %117, %108, %104
  %200 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 4
  %201 = load i8, ptr %200, align 4, !tbaa !96
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %199
  %204 = load i32, ptr %26, align 8, !tbaa !108
  %205 = icmp eq i32 %204, 7
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = call zeroext i8 @vectorizable_live_operation(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #17
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4273, ptr noundef nonnull @.str.8) #17
  br label %210

210:                                              ; preds = %209, %206, %203, %199
  %211 = load ptr, ptr %6, align 8, !tbaa !45
  %212 = icmp eq ptr %211, null
  br i1 %212, label %250, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 6
  store ptr %211, ptr %214, align 8, !tbaa !162
  %215 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 14
  %216 = load ptr, ptr %215, align 8, !tbaa !106
  %217 = icmp eq ptr %216, null
  br i1 %217, label %250, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.gimple_statement_base, ptr %216, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !56
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr @stmt_vec_info_vec, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = load i32, ptr %223, align 8, !tbaa !91
  br label %227

227:                                              ; preds = %225, %222
  %228 = phi i32 [ %226, %225 ], [ 0, %222 ]
  %229 = icmp ugt i32 %220, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %231

231:                                              ; preds = %230, %227
  %232 = load ptr, ptr @stmt_vec_info_vec, align 8
  %233 = add i32 %220, -1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %232, i64 0, i32 2, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !45
  br label %237

237:                                              ; preds = %218, %231
  %238 = phi ptr [ %236, %231 ], [ null, %218 ]
  %239 = getelementptr inbounds %struct._stmt_vec_info, ptr %238, i64 0, i32 13
  %240 = load i8, ptr %239, align 8, !tbaa !105
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct._stmt_vec_info, ptr %238, i64 0, i32 14
  %244 = load ptr, ptr %243, align 8, !tbaa !106
  %245 = icmp eq ptr %244, %0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4290, ptr noundef nonnull @.str.8) #17
  br label %247

247:                                              ; preds = %242, %246
  %248 = load ptr, ptr %6, align 8, !tbaa !45
  %249 = getelementptr inbounds %struct._stmt_vec_info, ptr %238, i64 0, i32 6
  store ptr %248, ptr %249, align 8, !tbaa !162
  br label %250

250:                                              ; preds = %237, %247, %213, %210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i8 %105
}

declare zeroext i8 @vectorizable_induction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_remove_stores(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %25, %18 ], [ %0, %1 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = icmp ne i32 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = load ptr, ptr @stmt_vec_info_vec, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %10, align 8, !tbaa !91
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %16 = icmp ugt i32 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr @stmt_vec_info_vec, align 8
  %20 = add i32 %8, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %19, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  call void @free_stmt_vec_info(ptr noundef nonnull %6)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !234

27:                                               ; preds = %18, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @free_stmt_vec_info(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !170 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !56
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5, !prof !171

5:                                                ; preds = %1
  %6 = load ptr, ptr @stmt_vec_info_vec, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !171

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 8, !tbaa !91
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ 0, %5 ]
  %12 = icmp ugt i32 %3, %11
  br i1 %12, label %13, label %14, !prof !171

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = add i32 %3, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %15, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %1, %14
  %21 = phi ptr [ %19, %14 ], [ null, %1 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23, !prof !171

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !171

27:                                               ; preds = %23
  tail call void @free(ptr noundef %25)
  br label %28

28:                                               ; preds = %23, %27
  store ptr null, ptr %24, align 8, !tbaa !45
  %29 = load i32, ptr %2, align 4, !tbaa !56
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52, !prof !171

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 639, ptr noundef nonnull @.str.8) #17
  %32 = load ptr, ptr @stmt_vec_info_vec, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %32, align 8, !tbaa !91
  %36 = add i32 %35, 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %36, %34 ], [ 1, %31 ]
  store i32 %38, ptr %2, align 4, !tbaa !56
  %39 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !158
  %44 = load i32, ptr %39, align 8, !tbaa !91
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %37
  %47 = tail call ptr @vec_heap_p_reserve(ptr noundef %39, i32 noundef 1) #17
  store ptr %47, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  br label %48

48:                                               ; preds = %46, %41
  %49 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %50 = load i32, ptr %49, align 8, !tbaa !91
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !91
  br label %55

52:                                               ; preds = %28
  %53 = load ptr, ptr @stmt_vec_info_vec, align 8
  %54 = add i32 %29, -1
  br label %55

55:                                               ; preds = %48, %52
  %56 = phi i32 [ %50, %48 ], [ %54, %52 ]
  %57 = phi ptr [ %49, %48 ], [ %53, %52 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %57, i64 0, i32 2, i64 %58
  store ptr null, ptr %59, align 8, !tbaa !45
  tail call void @free(ptr noundef %21)
  br label %60

60:                                               ; preds = %20, %55
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_stmt_vec_info_vec() local_unnamed_addr #11 !prof !235 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !236

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4378, ptr noundef nonnull @.str.8) #17
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 50) #17
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_stmt_vec_info_vec() local_unnamed_addr #11 !prof !235 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !237

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4388, ptr noundef nonnull @.str.8) #17
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !237

7:                                                ; preds = %4
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %4, %7
  store ptr null, ptr @stmt_vec_info_vec, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare ptr @build_vector_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @supportable_widening_operation(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7, ptr nocapture noundef %8) local_unnamed_addr #9 !prof !44 {
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp ugt i32 %11, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @stmt_vec_info_vec, align 8
  %24 = add i32 %11, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %23, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  br label %28

28:                                               ; preds = %9, %22
  %29 = phi ptr [ %27, %22 ], [ null, %9 ]
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1)
  %34 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %33)
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !93
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !145
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = icmp eq ptr %40, %46
  %48 = zext i1 %47 to i8
  br label %49

49:                                               ; preds = %38, %42
  %50 = phi i8 [ 0, %38 ], [ %48, %42 ]
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %28
  br label %53

53:                                               ; preds = %49, %52
  %54 = phi i1 [ false, %52 ], [ true, %49 ]
  %55 = icmp eq i32 %0, 169
  %56 = and i1 %55, %54
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 3), align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = tail call ptr %57(ptr noundef %2) #17
  %62 = icmp ne ptr %61, null
  %63 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 4), align 8
  %64 = icmp ne ptr %63, null
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = tail call ptr %63(ptr noundef %2) #17
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #17
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @vect_dump, align 8, !tbaa !45
  %74 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 38, i64 1, ptr %73)
  br label %75

75:                                               ; preds = %72, %69
  store i32 59, ptr %6, align 4, !tbaa !60
  store i32 59, ptr %5, align 4, !tbaa !60
  %76 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 3), align 8, !tbaa !238
  %77 = tail call ptr %76(ptr noundef %2) #17
  store ptr %77, ptr %3, align 8, !tbaa !45
  %78 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 4), align 8, !tbaa !239
  %79 = tail call ptr %78(ptr noundef %2) #17
  store ptr %79, ptr %4, align 8, !tbaa !45
  br label %263

80:                                               ; preds = %66, %60, %53
  switch i32 %0, label %83 [
    i32 169, label %84
    i32 116, label %81
    i32 113, label %81
    i32 78, label %82
    i32 77, label %263
  ]

81:                                               ; preds = %80, %80
  br label %84

82:                                               ; preds = %80
  br label %84

83:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4734, ptr noundef nonnull @.str.8) #17
  unreachable

84:                                               ; preds = %80, %82, %81
  %85 = phi i32 [ 177, %82 ], [ 175, %81 ], [ 173, %80 ]
  %86 = phi i32 [ 176, %82 ], [ 174, %81 ], [ 172, %80 ]
  %87 = icmp eq i32 %0, 77
  %88 = select i1 %87, ptr %33, ptr %2
  %89 = tail call ptr @optab_for_tree_code(i32 noundef %85, ptr noundef %88, i32 noundef 0) #17
  %90 = tail call ptr @optab_for_tree_code(i32 noundef %86, ptr noundef %88, i32 noundef 0) #17
  %91 = icmp ne ptr %89, null
  %92 = icmp ne ptr %90, null
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %263

94:                                               ; preds = %84
  %95 = load i64, ptr %2, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 14
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #17
  br label %105

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  br label %105

105:                                              ; preds = %100, %98
  %106 = phi i32 [ %99, %98 ], [ %104, %100 ]
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.optab_d, ptr %89, i64 0, i32 4, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !199
  %110 = icmp eq i32 %109, 2956
  br i1 %110, label %263, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.optab_d, ptr %90, i64 0, i32 4, i64 %107
  %113 = load i32, ptr %112, align 4, !tbaa !199
  %114 = icmp eq i32 %113, 2956
  br i1 %114, label %263, label %115

115:                                              ; preds = %111
  %116 = zext i32 %109 to i64
  %117 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %116, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !202
  %119 = getelementptr inbounds %struct.insn_operand_data, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 8
  %121 = zext i16 %120 to i32
  %122 = load i64, ptr %34, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 14
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = tail call i32 @vector_type_mode(ptr noundef nonnull %34) #17
  br label %132

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  br label %132

132:                                              ; preds = %127, %125
  %133 = phi i32 [ %126, %125 ], [ %131, %127 ]
  %134 = icmp eq i32 %133, %121
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = zext i32 %113 to i64
  %137 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %136, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !202
  %139 = getelementptr inbounds %struct.insn_operand_data, ptr %138, i64 0, i32 2
  %140 = load i16, ptr %139, align 8
  %141 = zext i16 %140 to i32
  %142 = load i64, ptr %34, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = tail call i32 @vector_type_mode(ptr noundef nonnull %34) #17
  br label %152

147:                                              ; preds = %135
  %148 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %152

152:                                              ; preds = %147, %145
  %153 = phi i32 [ %146, %145 ], [ %151, %147 ]
  %154 = icmp eq i32 %153, %141
  br i1 %154, label %262, label %155

155:                                              ; preds = %152, %132
  switch i32 %0, label %263 [
    i32 116, label %156
    i32 113, label %156
  ]

156:                                              ; preds = %155, %155
  store i32 %85, ptr %5, align 4, !tbaa !60
  store i32 %86, ptr %6, align 4, !tbaa !60
  %157 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #17
  store ptr %157, ptr %8, align 8, !tbaa !45
  %158 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  br label %159

159:                                              ; preds = %156, %259
  %160 = phi i32 [ %106, %156 ], [ %169, %259 ]
  %161 = phi i32 [ %109, %156 ], [ %207, %259 ]
  %162 = phi ptr [ %2, %156 ], [ %175, %259 ]
  %163 = phi i32 [ 0, %156 ], [ %260, %259 ]
  %164 = zext i32 %161 to i64
  %165 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %164, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !202
  %167 = getelementptr inbounds %struct.insn_operand_data, ptr %166, i64 0, i32 2
  %168 = load i16, ptr %167, align 8
  %169 = zext i16 %168 to i32
  %170 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !240
  %171 = load i64, ptr %162, align 8
  %172 = trunc i64 %171 to i32
  %173 = lshr i32 %172, 21
  %174 = and i32 %173, 1
  %175 = tail call ptr %170(i32 noundef %169, i32 noundef %174) #17
  %176 = tail call ptr @optab_for_tree_code(i32 noundef %85, ptr noundef %175, i32 noundef 0) #17
  %177 = tail call ptr @optab_for_tree_code(i32 noundef %86, ptr noundef %175, i32 noundef 0) #17
  %178 = icmp ne ptr %176, null
  %179 = icmp ne ptr %177, null
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %263

181:                                              ; preds = %159
  %182 = sext i32 %160 to i64
  %183 = getelementptr inbounds %struct.optab_d, ptr %89, i64 0, i32 4, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !199
  %185 = icmp eq i32 %184, 2956
  br i1 %185, label %263, label %186

186:                                              ; preds = %181
  %187 = zext i32 %184 to i64
  %188 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %187, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !202
  %190 = getelementptr inbounds %struct.insn_operand_data, ptr %189, i64 0, i32 2
  %191 = load i16, ptr %190, align 8
  %192 = icmp eq i16 %191, %168
  br i1 %192, label %193, label %263

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.optab_d, ptr %90, i64 0, i32 4, i64 %182
  %195 = load i32, ptr %194, align 4, !tbaa !199
  %196 = icmp eq i32 %195, 2956
  br i1 %196, label %263, label %197

197:                                              ; preds = %193
  %198 = zext i32 %195 to i64
  %199 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %198, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !202
  %201 = getelementptr inbounds %struct.insn_operand_data, ptr %200, i64 0, i32 2
  %202 = load i16, ptr %201, align 8
  %203 = icmp eq i16 %202, %168
  br i1 %203, label %204, label %263

204:                                              ; preds = %197
  %205 = zext i16 %168 to i64
  %206 = getelementptr inbounds %struct.optab_d, ptr %176, i64 0, i32 4, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !199
  %208 = icmp eq i32 %207, 2956
  br i1 %208, label %263, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.optab_d, ptr %177, i64 0, i32 4, i64 %205
  %211 = load i32, ptr %210, align 4, !tbaa !199
  %212 = icmp eq i32 %211, 2956
  br i1 %212, label %263, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %8, align 8, !tbaa !45
  %215 = load i32, ptr %214, align 8, !tbaa !183
  %216 = add i32 %215, 1
  store i32 %216, ptr %214, align 8, !tbaa !183
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds %struct.VEC_tree_base, ptr %214, i64 0, i32 2, i64 %217
  store ptr %175, ptr %218, align 8, !tbaa !45
  %219 = load i32, ptr %7, align 4, !tbaa !60
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %7, align 4, !tbaa !60
  %221 = zext i32 %207 to i64
  %222 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %221, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !202
  %224 = getelementptr inbounds %struct.insn_operand_data, ptr %223, i64 0, i32 2
  %225 = load i16, ptr %224, align 8
  %226 = zext i16 %225 to i32
  %227 = load i64, ptr %34, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 14
  br i1 %229, label %230, label %232

230:                                              ; preds = %213
  %231 = tail call i32 @vector_type_mode(ptr noundef nonnull %34) #17
  br label %236

232:                                              ; preds = %213
  %233 = load i32, ptr %158, align 4
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  br label %236

236:                                              ; preds = %232, %230
  %237 = phi i32 [ %231, %230 ], [ %235, %232 ]
  %238 = icmp eq i32 %237, %226
  br i1 %238, label %239, label %259

239:                                              ; preds = %236
  %240 = zext i32 %211 to i64
  %241 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %240, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !202
  %243 = getelementptr inbounds %struct.insn_operand_data, ptr %242, i64 0, i32 2
  %244 = load i16, ptr %243, align 8
  %245 = zext i16 %244 to i32
  %246 = load i64, ptr %34, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 14
  br i1 %248, label %249, label %251

249:                                              ; preds = %239
  %250 = tail call i32 @vector_type_mode(ptr noundef nonnull %34) #17
  br label %256

251:                                              ; preds = %239
  %252 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  br label %256

256:                                              ; preds = %251, %249
  %257 = phi i32 [ %250, %249 ], [ %255, %251 ]
  %258 = icmp eq i32 %257, %245
  br i1 %258, label %263, label %259

259:                                              ; preds = %256, %236
  %260 = add nuw nsw i32 %163, 1
  %261 = icmp eq i32 %260, 3
  br i1 %261, label %263, label %159, !llvm.loop !248

262:                                              ; preds = %152
  store i32 %85, ptr %5, align 4, !tbaa !60
  store i32 %86, ptr %6, align 4, !tbaa !60
  br label %263

263:                                              ; preds = %209, %204, %197, %193, %186, %181, %159, %256, %259, %155, %105, %111, %84, %80, %262, %75
  %264 = phi i8 [ 1, %75 ], [ 1, %262 ], [ 0, %80 ], [ 0, %84 ], [ 0, %111 ], [ 0, %105 ], [ 0, %155 ], [ 0, %209 ], [ 0, %204 ], [ 0, %197 ], [ 0, %193 ], [ 0, %186 ], [ 0, %181 ], [ 0, %159 ], [ 1, %256 ], [ 0, %259 ]
  ret i8 %264
}

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @supportable_narrowing_operation(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #9 !prof !44 {
  %7 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1)
  %8 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %7)
  switch i32 %0, label %10 [
    i32 116, label %11
    i32 113, label %11
    i32 77, label %9
    i32 78, label %122
  ]

9:                                                ; preds = %6
  br label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4869, ptr noundef nonnull @.str.8) #17
  unreachable

11:                                               ; preds = %6, %6, %9
  %12 = phi i32 [ 180, %9 ], [ 178, %6 ], [ 178, %6 ]
  %13 = icmp eq i32 %0, 77
  %14 = select i1 %13, ptr %7, ptr %2
  %15 = tail call ptr @optab_for_tree_code(i32 noundef %12, ptr noundef %14, i32 noundef 0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %122, label %17

17:                                               ; preds = %11
  %18 = load i64, ptr %2, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #17
  br label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.optab_d, ptr %15, i64 0, i32 4, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !199
  %33 = icmp eq i32 %32, 2956
  br i1 %33, label %122, label %34

34:                                               ; preds = %28
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %35, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !202
  %38 = getelementptr inbounds %struct.insn_operand_data, ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = load i64, ptr %8, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #17
  br label %51

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = icmp eq i32 %52, %40
  store i32 %12, ptr %3, align 4, !tbaa !60
  br i1 %53, label %122, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #17
  store ptr %55, ptr %5, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  br label %60

57:                                               ; preds = %119
  %58 = add nuw nsw i32 %62, 1
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %122, label %60, !llvm.loop !249

60:                                               ; preds = %54, %57
  %61 = phi i32 [ %29, %54 ], [ %70, %57 ]
  %62 = phi i32 [ 0, %54 ], [ %58, %57 ]
  %63 = phi ptr [ %2, %54 ], [ %76, %57 ]
  %64 = phi i32 [ %32, %54 ], [ %94, %57 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %65, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !202
  %68 = getelementptr inbounds %struct.insn_operand_data, ptr %67, i64 0, i32 2
  %69 = load i16, ptr %68, align 8
  %70 = zext i16 %69 to i32
  %71 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !240
  %72 = load i64, ptr %63, align 8
  %73 = trunc i64 %72 to i32
  %74 = lshr i32 %73, 21
  %75 = and i32 %74, 1
  %76 = tail call ptr %71(i32 noundef %70, i32 noundef %75) #17
  %77 = tail call ptr @optab_for_tree_code(i32 noundef %12, ptr noundef %76, i32 noundef 0) #17
  %78 = icmp eq ptr %77, null
  br i1 %78, label %122, label %79

79:                                               ; preds = %60
  %80 = sext i32 %61 to i64
  %81 = getelementptr inbounds %struct.optab_d, ptr %15, i64 0, i32 4, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !199
  %83 = icmp eq i32 %82, 2956
  br i1 %83, label %122, label %84

84:                                               ; preds = %79
  %85 = zext i32 %82 to i64
  %86 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %85, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !202
  %88 = getelementptr inbounds %struct.insn_operand_data, ptr %87, i64 0, i32 2
  %89 = load i16, ptr %88, align 8
  %90 = icmp eq i16 %89, %69
  br i1 %90, label %91, label %122

91:                                               ; preds = %84
  %92 = zext i16 %69 to i64
  %93 = getelementptr inbounds %struct.optab_d, ptr %77, i64 0, i32 4, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !199
  %95 = icmp eq i32 %94, 2956
  br i1 %95, label %122, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %5, align 8, !tbaa !45
  %98 = load i32, ptr %97, align 8, !tbaa !183
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8, !tbaa !183
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds %struct.VEC_tree_base, ptr %97, i64 0, i32 2, i64 %100
  store ptr %76, ptr %101, align 8, !tbaa !45
  %102 = load i32, ptr %4, align 4, !tbaa !60
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %4, align 4, !tbaa !60
  %104 = zext i32 %94 to i64
  %105 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %104, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !202
  %107 = getelementptr inbounds %struct.insn_operand_data, ptr %106, i64 0, i32 2
  %108 = load i16, ptr %107, align 8
  %109 = zext i16 %108 to i32
  %110 = load i64, ptr %8, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 14
  br i1 %112, label %113, label %115

113:                                              ; preds = %96
  %114 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #17
  br label %119

115:                                              ; preds = %96
  %116 = load i32, ptr %56, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  br label %119

119:                                              ; preds = %115, %113
  %120 = phi i32 [ %114, %113 ], [ %118, %115 ]
  %121 = icmp eq i32 %120, %109
  br i1 %121, label %122, label %57

122:                                              ; preds = %91, %84, %79, %60, %119, %57, %51, %28, %11, %6
  %123 = phi i8 [ 0, %6 ], [ 0, %11 ], [ 0, %28 ], [ 1, %51 ], [ 0, %91 ], [ 0, %84 ], [ 0, %79 ], [ 0, %60 ], [ 1, %119 ], [ 0, %57 ]
  ret i8 %123
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_get_slp_defs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_create_vectorized_promotion_stmts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr nocapture noundef %12) unnamed_addr #9 !prof !44 {
  br label %14

14:                                               ; preds = %231, %13
  %15 = phi i32 [ %2, %13 ], [ %232, %231 ]
  %16 = phi ptr [ %9, %13 ], [ %10, %231 ]
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !91
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp ugt i32 %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr @stmt_vec_info_vec, align 8
  %31 = add i32 %18, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %30, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %14, %29
  %36 = phi ptr [ %34, %29 ], [ null, %14 ]
  %37 = load i32, ptr %4, align 8, !tbaa !183
  %38 = add i32 %37, -1
  store i32 %38, ptr %4, align 8, !tbaa !183
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = load ptr, ptr %0, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, ptr %42, align 8, !tbaa !183
  %46 = shl i32 %45, 1
  br label %47

47:                                               ; preds = %35, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %35 ]
  %49 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %48) #17
  %50 = icmp eq i32 %11, 2
  %51 = icmp eq i32 %15, 0
  br label %52

52:                                               ; preds = %211, %47
  %53 = phi i64 [ %212, %211 ], [ 0, %47 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !45
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %54, align 8, !tbaa !183
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.VEC_tree_base, ptr %54, i64 0, i32 2, i64 %53
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  br label %63

63:                                               ; preds = %52, %56, %60
  %64 = phi ptr [ %62, %60 ], [ null, %56 ], [ null, %52 ]
  %65 = phi i1 [ false, %60 ], [ true, %56 ], [ true, %52 ]
  br i1 %65, label %213, label %66

66:                                               ; preds = %63
  br i1 %50, label %67, label %71

67:                                               ; preds = %66
  %68 = load ptr, ptr %1, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.VEC_tree_base, ptr %68, i64 0, i32 2, i64 %53
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  br label %71

71:                                               ; preds = %66, %67
  %72 = phi ptr [ %70, %67 ], [ null, %66 ]
  %73 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %7, ptr noundef %16, ptr noundef %64, ptr noundef %72, i32 noundef %11, ptr noundef %41, ptr noundef %5, ptr noundef %3)
  %74 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %8, ptr noundef %10, ptr noundef %64, ptr noundef %72, i32 noundef %11, ptr noundef %41, ptr noundef %5, ptr noundef %3)
  %75 = load i32, ptr %73, align 8
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %102

78:                                               ; preds = %71
  %79 = zext nneg i32 %76 to i64
  %80 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !60
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !103
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %87

87:                                               ; preds = %86, %78
  %88 = getelementptr inbounds i8, ptr %73, i64 %84
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = load i32, ptr %74, align 8
  %91 = and i32 %90, 255
  %92 = add nsw i32 %91, -10
  %93 = icmp ult i32 %92, -9
  br i1 %93, label %139, label %94

94:                                               ; preds = %87
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !60
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !103
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %131, label %134

102:                                              ; preds = %71
  %103 = add nsw i32 %76, -10
  %104 = icmp ult i32 %103, -9
  br i1 %104, label %117, label %105

105:                                              ; preds = %102
  %106 = zext nneg i32 %76 to i64
  %107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !60
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !103
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %114

114:                                              ; preds = %113, %105
  %115 = getelementptr inbounds i8, ptr %73, i64 %111
  %116 = load ptr, ptr %115, align 8, !tbaa !45
  br label %117

117:                                              ; preds = %102, %114
  %118 = phi ptr [ %116, %114 ], [ null, %102 ]
  %119 = load i32, ptr %74, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -10
  %122 = icmp ult i32 %121, -9
  br i1 %122, label %139, label %123

123:                                              ; preds = %117
  %124 = zext nneg i32 %120 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !60
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !103
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123, %94
  %132 = phi i64 [ %100, %94 ], [ %129, %123 ]
  %133 = phi ptr [ %89, %94 ], [ %118, %123 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %134

134:                                              ; preds = %131, %123, %94
  %135 = phi i64 [ %100, %94 ], [ %129, %123 ], [ %132, %131 ]
  %136 = phi ptr [ %89, %94 ], [ %118, %123 ], [ %133, %131 ]
  %137 = getelementptr inbounds i8, ptr %74, i64 %135
  %138 = load ptr, ptr %137, align 8, !tbaa !45
  br label %139

139:                                              ; preds = %134, %117, %87
  %140 = phi ptr [ null, %87 ], [ null, %117 ], [ %138, %134 ]
  %141 = phi ptr [ %89, %87 ], [ %118, %117 ], [ %136, %134 ]
  br i1 %51, label %150, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr %49, align 8, !tbaa !183
  %144 = add i32 %143, 1
  store i32 %144, ptr %49, align 8, !tbaa !183
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %145
  store ptr %141, ptr %146, align 8, !tbaa !45
  %147 = add i32 %143, 2
  store i32 %147, ptr %49, align 8, !tbaa !183
  %148 = zext i32 %144 to i64
  %149 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %148
  store ptr %140, ptr %149, align 8, !tbaa !45
  br label %211

150:                                              ; preds = %139
  %151 = icmp eq ptr %6, null
  br i1 %151, label %164, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct._slp_tree, ptr %6, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !193
  %155 = load i32, ptr %154, align 8, !tbaa !89
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 8, !tbaa !89
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds %struct.VEC_gimple_base, ptr %154, i64 0, i32 2, i64 %157
  store ptr %73, ptr %158, align 8, !tbaa !45
  %159 = load ptr, ptr %153, align 8, !tbaa !193
  %160 = load i32, ptr %159, align 8, !tbaa !89
  %161 = add i32 %160, 1
  store i32 %161, ptr %159, align 8, !tbaa !89
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds %struct.VEC_gimple_base, ptr %159, i64 0, i32 2, i64 %162
  store ptr %74, ptr %163, align 8, !tbaa !45
  br label %211

164:                                              ; preds = %150
  %165 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 6
  %166 = load ptr, ptr %12, align 8, !tbaa !45
  %167 = icmp eq ptr %166, null
  %168 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 14
  %169 = select i1 %167, ptr %165, ptr %168
  store ptr %73, ptr %169, align 8, !tbaa !45
  %170 = getelementptr inbounds %struct.gimple_statement_base, ptr %73, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !56
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %188, label %173

173:                                              ; preds = %164
  %174 = load ptr, ptr @stmt_vec_info_vec, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = load i32, ptr %174, align 8, !tbaa !91
  br label %178

178:                                              ; preds = %176, %173
  %179 = phi i32 [ %177, %176 ], [ 0, %173 ]
  %180 = icmp ugt i32 %171, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %182

182:                                              ; preds = %181, %178
  %183 = load ptr, ptr @stmt_vec_info_vec, align 8
  %184 = add i32 %171, -1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %183, i64 0, i32 2, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !45
  br label %188

188:                                              ; preds = %164, %182
  %189 = phi ptr [ %187, %182 ], [ null, %164 ]
  store ptr %189, ptr %12, align 8, !tbaa !45
  %190 = getelementptr inbounds %struct._stmt_vec_info, ptr %189, i64 0, i32 14
  store ptr %74, ptr %190, align 8, !tbaa !106
  %191 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !56
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %209, label %194

194:                                              ; preds = %188
  %195 = load ptr, ptr @stmt_vec_info_vec, align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %195, align 8, !tbaa !91
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi i32 [ %198, %197 ], [ 0, %194 ]
  %201 = icmp ugt i32 %192, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %203

203:                                              ; preds = %202, %199
  %204 = load ptr, ptr @stmt_vec_info_vec, align 8
  %205 = add i32 %192, -1
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %204, i64 0, i32 2, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !45
  br label %209

209:                                              ; preds = %188, %203
  %210 = phi ptr [ %208, %203 ], [ null, %188 ]
  store ptr %210, ptr %12, align 8, !tbaa !45
  br label %211

211:                                              ; preds = %142, %209, %152
  %212 = add nuw i64 %53, 1
  br label %52, !llvm.loop !250

213:                                              ; preds = %63
  %214 = icmp eq i32 %15, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %213
  %216 = icmp eq ptr %49, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %215
  %218 = load i32, ptr %49, align 8, !tbaa !183
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %218, %217 ], [ 0, %215 ]
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = zext i32 %220 to i64
  %224 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %220) #17
  store i32 %220, ptr %224, align 8, !tbaa !187
  %225 = getelementptr inbounds %struct.VEC_tree_base, ptr %224, i64 0, i32 2
  %226 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2
  %227 = shl nuw nsw i64 %223, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %225, ptr nonnull align 8 %226, i64 %227, i1 false)
  br label %228

228:                                              ; preds = %219, %222
  %229 = phi ptr [ %224, %222 ], [ null, %219 ]
  store ptr %229, ptr %0, align 8, !tbaa !45
  br i1 %216, label %231, label %230

230:                                              ; preds = %228
  tail call void @free(ptr noundef %49)
  br label %231

231:                                              ; preds = %228, %230
  %232 = add nsw i32 %15, -1
  br label %14

233:                                              ; preds = %213
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @vect_gen_widened_results_half(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7) unnamed_addr #9 !prof !44 {
  %9 = icmp eq i32 %0, 59
  br i1 %9, label %10, label %47

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1, i32 noundef 2, ptr noundef %2, ptr noundef %3) #17
  br label %16

14:                                               ; preds = %10
  %15 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1, i32 noundef 1, ptr noundef %2) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !45
  %19 = tail call ptr @make_ssa_name_fn(ptr noundef %18, ptr noundef %5, ptr noundef %17) #17
  %20 = load i32, ptr %17, align 8
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -10
  %23 = icmp ult i32 %22, -9
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !56
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, ptr %17, align 8
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !60
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !103
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %40

40:                                               ; preds = %39, %29
  %41 = getelementptr inbounds i8, ptr %17, i64 %37
  store ptr %19, ptr %41, align 8, !tbaa !45
  %42 = icmp eq ptr %19, null
  br i1 %42, label %91, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %19, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 141
  br i1 %46, label %87, label %91

47:                                               ; preds = %8
  %48 = sext i32 %0 to i64
  %49 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !56
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, %4
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1514, ptr noundef nonnull @.str.8) #17
  br label %54

54:                                               ; preds = %47, %53
  %55 = icmp eq i32 %4, 2
  %56 = select i1 %55, ptr %3, ptr null
  %57 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef %56) #17
  %58 = load ptr, ptr @cfun, align 8, !tbaa !45
  %59 = tail call ptr @make_ssa_name_fn(ptr noundef %58, ptr noundef %5, ptr noundef %57) #17
  %60 = load i32, ptr %57, align 8
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -9
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.gimple_statement_base, ptr %57, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !56
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, ptr %57, align 8
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !60
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !103
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %80

80:                                               ; preds = %79, %69
  %81 = getelementptr inbounds i8, ptr %57, i64 %77
  store ptr %59, ptr %81, align 8, !tbaa !45
  %82 = icmp eq ptr %59, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i64, ptr %59, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %43
  %88 = phi ptr [ %19, %43 ], [ %59, %83 ]
  %89 = phi ptr [ %17, %43 ], [ %57, %83 ]
  %90 = getelementptr inbounds %struct.tree_ssa_name, ptr %88, i64 0, i32 2
  store ptr %89, ptr %90, align 8, !tbaa !56
  br label %91

91:                                               ; preds = %87, %83, %80, %43, %40
  %92 = phi ptr [ %17, %40 ], [ %17, %43 ], [ %57, %80 ], [ %57, %83 ], [ %89, %87 ]
  tail call void @vect_finish_stmt_generation(ptr noundef %7, ptr noundef nonnull %92, ptr noundef %6)
  ret ptr %92
}

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_get_loop_based_defs(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #9 !prof !44 {
  br label %6

6:                                                ; preds = %32, %5
  %7 = phi i32 [ %4, %5 ], [ %33, %32 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %8, ptr noundef %1, ptr noundef null)
  br label %18

16:                                               ; preds = %6
  %17 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %2, ptr noundef %8)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !45
  %21 = load i32, ptr %20, align 8, !tbaa !183
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !183
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %20, i64 0, i32 2, i64 %23
  store ptr %19, ptr %24, align 8, !tbaa !45
  %25 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %2, ptr noundef %19)
  %26 = load ptr, ptr %3, align 8, !tbaa !45
  %27 = load i32, ptr %26, align 8, !tbaa !183
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !183
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds %struct.VEC_tree_base, ptr %26, i64 0, i32 2, i64 %29
  store ptr %25, ptr %30, align 8, !tbaa !45
  store ptr %25, ptr %0, align 8, !tbaa !45
  %31 = icmp eq i32 %7, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = add nsw i32 %7, -1
  br label %6

34:                                               ; preds = %18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_create_vectorized_demotion_stmts(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef %7) unnamed_addr #9 !prof !44 {
  br label %9

9:                                                ; preds = %134, %8
  %10 = phi i32 [ %1, %8 ], [ %135, %134 ]
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %21 = icmp ugt i32 %12, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @stmt_vec_info_vec, align 8
  %25 = add i32 %12, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %24, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %9, %23
  %30 = phi ptr [ %28, %23 ], [ null, %9 ]
  %31 = load i32, ptr %3, align 8, !tbaa !183
  %32 = add i32 %31, -1
  store i32 %32, ptr %3, align 8, !tbaa !183
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.VEC_tree_base, ptr %3, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = icmp eq i32 %10, 0
  br label %37

37:                                               ; preds = %127, %29
  %38 = phi i32 [ 0, %29 ], [ %128, %127 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !45
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 8, !tbaa !183
  br label %43

43:                                               ; preds = %37, %41
  %44 = phi i32 [ %42, %41 ], [ 0, %37 ]
  %45 = icmp ult i32 %38, %44
  br i1 %45, label %46, label %129

46:                                               ; preds = %43
  %47 = zext i32 %38 to i64
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %39, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = or disjoint i32 %38, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.VEC_tree_base, ptr %39, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %6, ptr noundef %35, ptr noundef %49, ptr noundef %53) #17
  %55 = load ptr, ptr @cfun, align 8, !tbaa !45
  %56 = tail call ptr @make_ssa_name_fn(ptr noundef %55, ptr noundef %35, ptr noundef %54) #17
  %57 = load i32, ptr %54, align 8
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, -10
  %60 = icmp ult i32 %59, -9
  br i1 %60, label %65, label %61

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.gimple_statement_base, ptr %54, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !56
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i32, ptr %54, align 8
  %68 = and i32 %67, 255
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !60
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !103
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %77

77:                                               ; preds = %76, %66
  %78 = getelementptr inbounds i8, ptr %54, i64 %74
  store ptr %56, ptr %78, align 8, !tbaa !45
  %79 = icmp eq ptr %56, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i64, ptr %56, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 141
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tree_ssa_name, ptr %56, i64 0, i32 2
  store ptr %54, ptr %85, align 8, !tbaa !56
  br label %86

86:                                               ; preds = %77, %80, %84
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef nonnull %54, ptr noundef %4)
  br i1 %36, label %92, label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %0, align 8, !tbaa !45
  %89 = lshr exact i32 %38, 1
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds %struct.VEC_tree_base, ptr %88, i64 0, i32 2, i64 %90
  store ptr %56, ptr %91, align 8, !tbaa !45
  br label %127

92:                                               ; preds = %86
  %93 = icmp eq ptr %5, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct._slp_tree, ptr %5, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !193
  %97 = load i32, ptr %96, align 8, !tbaa !89
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 8, !tbaa !89
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds %struct.VEC_gimple_base, ptr %96, i64 0, i32 2, i64 %99
  store ptr %54, ptr %100, align 8, !tbaa !45
  br label %127

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 6
  %103 = load ptr, ptr %7, align 8, !tbaa !45
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds %struct._stmt_vec_info, ptr %103, i64 0, i32 14
  %106 = select i1 %104, ptr %102, ptr %105
  store ptr %54, ptr %106, align 8, !tbaa !45
  %107 = getelementptr inbounds %struct.gimple_statement_base, ptr %54, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !56
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %101
  %111 = load ptr, ptr @stmt_vec_info_vec, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %111, align 8, !tbaa !91
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi i32 [ %114, %113 ], [ 0, %110 ]
  %117 = icmp ugt i32 %108, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 629, ptr noundef nonnull @.str.8) #17
  br label %119

119:                                              ; preds = %118, %115
  %120 = load ptr, ptr @stmt_vec_info_vec, align 8
  %121 = add i32 %108, -1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %120, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  br label %125

125:                                              ; preds = %101, %119
  %126 = phi ptr [ %124, %119 ], [ null, %101 ]
  store ptr %126, ptr %7, align 8, !tbaa !45
  br label %127

127:                                              ; preds = %87, %125, %94
  %128 = add i32 %38, 2
  br label %37, !llvm.loop !251

129:                                              ; preds = %43
  %130 = icmp eq i32 %10, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %129
  br i1 %40, label %134, label %132

132:                                              ; preds = %131
  %133 = lshr exact i32 %38, 1
  store i32 %133, ptr %39, align 8, !tbaa !183
  br label %134

134:                                              ; preds = %131, %132
  %135 = add nsw i32 %10, -1
  br label %9

136:                                              ; preds = %129
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_get_vec_defs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !44 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @vect_get_slp_defs(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4) #17
  br label %26

9:                                                ; preds = %6
  %10 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  store ptr %10, ptr %3, align 8, !tbaa !45
  %11 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %0, ptr noundef %2, ptr noundef null)
  %12 = load ptr, ptr %3, align 8, !tbaa !45
  %13 = load i32, ptr %12, align 8, !tbaa !183
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !183
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds %struct.VEC_tree_base, ptr %12, i64 0, i32 2, i64 %15
  store ptr %11, ptr %16, align 8, !tbaa !45
  %17 = icmp eq ptr %1, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  store ptr %19, ptr %4, align 8, !tbaa !45
  %20 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  %21 = load ptr, ptr %4, align 8, !tbaa !45
  %22 = load i32, ptr %21, align 8, !tbaa !183
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !183
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 2, i64 %24
  store ptr %20, ptr %25, align 8, !tbaa !45
  br label %26

26:                                               ; preds = %9, %18, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_get_vec_defs_for_stmt_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #9 !prof !44 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = load i32, ptr %4, align 8, !tbaa !183
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !183
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = load i32, ptr %0, align 4, !tbaa !60
  %11 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %10, ptr noundef %9)
  %12 = load ptr, ptr %1, align 8, !tbaa !45
  %13 = load i32, ptr %12, align 8, !tbaa !183
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !183
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds %struct.VEC_tree_base, ptr %12, i64 0, i32 2, i64 %15
  store ptr %11, ptr %16, align 8, !tbaa !45
  %17 = icmp eq ptr %2, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %2, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 8, !tbaa !183
  %23 = add i32 %22, -1
  store i32 %23, ptr %19, align 8, !tbaa !183
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_tree_base, ptr %19, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds i32, ptr %0, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !60
  %29 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %28, ptr noundef %26)
  %30 = load ptr, ptr %2, align 8, !tbaa !45
  %31 = load i32, ptr %30, align 8, !tbaa !183
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !183
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds %struct.VEC_tree_base, ptr %30, i64 0, i32 2, i64 %33
  store ptr %29, ptr %34, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %21, %18, %3
  ret void
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vect_min_worthwhile_factor(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_strided_load_supported(ptr noundef) local_unnamed_addr #3

declare ptr @vect_setup_realignment(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vect_create_data_ref_ptr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @bump_vector_ptr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_transform_slp_perm_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @vect_transform_strided_load(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @vect_strided_store_supported(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_permute_store_chain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @get_vectype_for_scalar_type, ptr @build_vector_type, i64 2026}
!36 = !{ptr @get_vectype_for_scalar_type, ptr @vect_print_dump_info, i64 4052}
!37 = !{ptr @get_vectype_for_scalar_type, ptr @vector_type_mode, i64 14182}
!38 = !{ptr @new_stmt_vec_info, ptr @xcalloc, i64 338373}
!39 = !{ptr @new_stmt_vec_info, ptr @vec_heap_p_reserve_exact, i64 338373}
!40 = !{ptr @free_stmt_vec_info, ptr @free, i64 676746}
!41 = !{ptr @init_stmt_vec_info_vec, ptr @vec_heap_p_reserve_exact, i64 38}
!42 = !{ptr @free_stmt_vec_info_vec, ptr @free, i64 38}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !46, i64 8}
!50 = !{!"_IO_FILE", !51, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !51, i64 112, !51, i64 116, !52, i64 120, !53, i64 128, !47, i64 130, !47, i64 131, !46, i64 136, !52, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !52, i64 184, !51, i64 192, !47, i64 196}
!51 = !{!"int", !47, i64 0}
!52 = !{!"long", !47, i64 0}
!53 = !{!"short", !47, i64 0}
!54 = !{!50, !46, i64 16}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!47, !47, i64 0}
!57 = !{!50, !46, i64 40}
!58 = !{!50, !46, i64 48}
!59 = !{!50, !51, i64 0}
!60 = !{!51, !51, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65, !46, i64 0}
!65 = !{!"_loop_vec_info", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !51, i64 32, !47, i64 36, !51, i64 40, !46, i64 48, !51, i64 56, !51, i64 60, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !51, i64 96, !46, i64 104, !46, i64 112, !51, i64 120}
!66 = !{!65, !46, i64 8}
!67 = !{!68, !51, i64 36}
!68 = !{!"loop", !51, i64 0, !51, i64 4, !46, i64 8, !46, i64 16, !69, i64 24, !51, i64 32, !51, i64 36, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !70, i64 80, !70, i64 96, !47, i64 112, !47, i64 113, !51, i64 116, !46, i64 120, !46, i64 128, !47, i64 136, !46, i64 144}
!69 = !{!"lpt_decision", !51, i64 0, !51, i64 4}
!70 = !{!"", !52, i64 0, !52, i64 8}
!71 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45}
!72 = !{!73, !46, i64 0}
!73 = !{!"gimple_seq_node_d", !46, i64 0, !46, i64 8, !46, i64 16}
!74 = !{i8 0, i8 2}
!75 = !{!73, !46, i64 16}
!76 = distinct !{!76, !62, !63}
!77 = !{!78, !51, i64 96}
!78 = !{!"basic_block_def", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !47, i64 32, !46, i64 48, !46, i64 56, !47, i64 64, !52, i64 72, !51, i64 80, !51, i64 84, !51, i64 88, !51, i64 92, !51, i64 96}
!79 = !{!80}
!80 = distinct !{!80, !81, !"gsi_start_bb: argument 0"}
!81 = distinct !{!81, !"gsi_start_bb"}
!82 = !{!83, !46, i64 0}
!83 = !{!"gimple_bb_info", !46, i64 0, !46, i64 8}
!84 = !{!85, !46, i64 0}
!85 = !{!"gimple_seq_d", !46, i64 0, !46, i64 8, !46, i64 16}
!86 = distinct !{!86, !62, !63}
!87 = distinct !{!87, !62, !63}
!88 = distinct !{!88, !62, !63}
!89 = !{!90, !51, i64 0}
!90 = !{!"VEC_gimple_base", !51, i64 0, !51, i64 4, !47, i64 8}
!91 = !{!92, !51, i64 0}
!92 = !{!"VEC_vec_void_p_base", !51, i64 0, !51, i64 4, !47, i64 8}
!93 = !{!94, !51, i64 24}
!94 = !{!"_stmt_vec_info", !51, i64 0, !46, i64 8, !46, i64 16, !51, i64 24, !47, i64 28, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !47, i64 96, !46, i64 104, !46, i64 112, !51, i64 120, !46, i64 128, !46, i64 136, !51, i64 144, !51, i64 148, !51, i64 152, !46, i64 160, !47, i64 168, !95, i64 172, !51, i64 180, !46, i64 184}
!95 = !{!"", !51, i64 0, !51, i64 4}
!96 = !{!94, !47, i64 28}
!97 = !{!94, !51, i64 120}
!98 = !{!99, !46, i64 0}
!99 = !{!"use_optype_d", !46, i64 0, !100, i64 8}
!100 = !{!"ssa_use_operand_d", !46, i64 0, !46, i64 8, !47, i64 16, !46, i64 24}
!101 = !{!100, !46, i64 24}
!102 = !{!94, !46, i64 48}
!103 = !{!52, !52, i64 0}
!104 = !{!78, !46, i64 24}
!105 = !{!94, !47, i64 96}
!106 = !{!94, !46, i64 104}
!107 = distinct !{!107, !62, !63}
!108 = !{!94, !51, i64 0}
!109 = !{!110, !46, i64 0}
!110 = !{!"def_optype_d", !46, i64 0, !46, i64 8}
!111 = !{!110, !46, i64 8}
!112 = !{!100, !46, i64 8}
!113 = !{!114, !46, i64 8}
!114 = !{!"edge_def", !46, i64 0, !46, i64 8, !47, i64 16, !46, i64 24, !46, i64 32, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !52, i64 56}
!115 = distinct !{!115, !62, !63}
!116 = distinct !{!116, !62, !63}
!117 = !{!90, !51, i64 4}
!118 = !{!119, !51, i64 376}
!119 = !{!"processor_costs", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !47, i64 16, !51, i64 36, !47, i64 40, !51, i64 60, !51, i64 64, !51, i64 68, !51, i64 72, !51, i64 76, !47, i64 80, !47, i64 92, !51, i64 104, !47, i64 108, !47, i64 120, !51, i64 132, !47, i64 136, !47, i64 144, !51, i64 152, !47, i64 156, !47, i64 168, !51, i64 180, !51, i64 184, !51, i64 188, !51, i64 192, !51, i64 196, !51, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !47, i64 228, !47, i64 300, !51, i64 372, !51, i64 376, !51, i64 380, !51, i64 384, !51, i64 388, !51, i64 392, !51, i64 396, !51, i64 400, !51, i64 404, !51, i64 408, !51, i64 412}
!120 = !{!119, !51, i64 380}
!121 = !{!119, !51, i64 372}
!122 = !{!94, !51, i64 180}
!123 = !{!119, !51, i64 384}
!124 = !{!119, !51, i64 392}
!125 = distinct !{!125, !62, !63}
!126 = !{!94, !46, i64 128}
!127 = !{!94, !46, i64 8}
!128 = !{!94, !51, i64 144}
!129 = !{!119, !51, i64 404}
!130 = !{!119, !51, i64 396}
!131 = !{!119, !51, i64 400}
!132 = !{!133, !46, i64 664}
!133 = !{!"gcc_target", !134, i64 0, !136, i64 368, !137, i64 664, !51, i64 744, !46, i64 752, !46, i64 760, !46, i64 768, !46, i64 776, !46, i64 784, !46, i64 792, !46, i64 800, !46, i64 808, !46, i64 816, !46, i64 824, !46, i64 832, !46, i64 840, !46, i64 848, !46, i64 856, !46, i64 864, !46, i64 872, !46, i64 880, !46, i64 888, !46, i64 896, !46, i64 904, !46, i64 912, !46, i64 920, !46, i64 928, !46, i64 936, !46, i64 944, !46, i64 952, !46, i64 960, !46, i64 968, !46, i64 976, !46, i64 984, !46, i64 992, !46, i64 1000, !46, i64 1008, !46, i64 1016, !46, i64 1024, !46, i64 1032, !46, i64 1040, !46, i64 1048, !46, i64 1056, !52, i64 1064, !52, i64 1072, !46, i64 1080, !46, i64 1088, !46, i64 1096, !46, i64 1104, !46, i64 1112, !46, i64 1120, !46, i64 1128, !46, i64 1136, !46, i64 1144, !46, i64 1152, !46, i64 1160, !46, i64 1168, !138, i64 1176, !46, i64 1232, !46, i64 1240, !46, i64 1248, !46, i64 1256, !46, i64 1264, !46, i64 1272, !46, i64 1280, !46, i64 1288, !46, i64 1296, !46, i64 1304, !46, i64 1312, !46, i64 1320, !46, i64 1328, !46, i64 1336, !46, i64 1344, !46, i64 1352, !46, i64 1360, !46, i64 1368, !46, i64 1376, !46, i64 1384, !46, i64 1392, !46, i64 1400, !46, i64 1408, !46, i64 1416, !46, i64 1424, !46, i64 1432, !46, i64 1440, !46, i64 1448, !46, i64 1456, !52, i64 1464, !139, i64 1472, !46, i64 1664, !46, i64 1672, !46, i64 1680, !46, i64 1688, !46, i64 1696, !46, i64 1704, !46, i64 1712, !46, i64 1720, !46, i64 1728, !46, i64 1736, !46, i64 1744, !46, i64 1752, !46, i64 1760, !46, i64 1768, !46, i64 1776, !140, i64 1784, !141, i64 1792, !142, i64 1896, !143, i64 1968, !46, i64 2016, !47, i64 2024, !47, i64 2025, !47, i64 2026, !47, i64 2027, !47, i64 2028, !47, i64 2029, !47, i64 2030, !47, i64 2031, !47, i64 2032, !47, i64 2033, !47, i64 2034, !47, i64 2035}
!134 = !{!"asm_out", !46, i64 0, !46, i64 8, !46, i64 16, !135, i64 24, !135, i64 56, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !46, i64 288, !46, i64 296, !46, i64 304, !46, i64 312, !46, i64 320, !46, i64 328, !46, i64 336, !46, i64 344, !46, i64 352, !46, i64 360}
!135 = !{!"asm_int_op", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!136 = !{!"sched", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !46, i64 288}
!137 = !{!"vectorize", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72}
!138 = !{!"addr_space", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48}
!139 = !{!"calls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184}
!140 = !{!"c", !46, i64 0}
!141 = !{!"cxx", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96}
!142 = !{!"emutls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !47, i64 64, !47, i64 65}
!143 = !{!"target_option_hooks", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40}
!144 = !{!94, !46, i64 16}
!145 = !{!68, !46, i64 48}
!146 = !{!94, !46, i64 184}
!147 = !{!148, !46, i64 0}
!148 = !{!"_bb_vec_info", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"gsi_start_bb: argument 0"}
!151 = distinct !{!151, !"gsi_start_bb"}
!152 = distinct !{!152, !153, !"gsi_after_labels: argument 0"}
!153 = distinct !{!153, !"gsi_after_labels"}
!154 = !{!152}
!155 = distinct !{!155, !62, !63}
!156 = !{i64 0, i64 8, !45, i64 8, i64 8, !45}
!157 = !{i64 0, i64 8, !45}
!158 = !{!92, !51, i64 4}
!159 = !{!94, !46, i64 32}
!160 = distinct !{!160, !62, !63}
!161 = distinct !{!161, !62, !63}
!162 = !{!94, !46, i64 40}
!163 = !{!114, !51, i64 44}
!164 = !{!"function_entry_count", i64 61475}
!165 = !{!"branch_weights", i32 0, i32 61475}
!166 = !{!"branch_weights", i32 61475, i32 0}
!167 = !{!"branch_weights", i32 2026, i32 59449}
!168 = !{!"branch_weights", i32 0, i32 2026}
!169 = !{!"branch_weights", i32 2026, i32 0}
!170 = !{!"function_entry_count", i64 338373}
!171 = !{!"branch_weights", i32 0, i32 338373}
!172 = !{!68, !46, i64 8}
!173 = !{!78, !46, i64 0}
!174 = !{!175, !51, i64 0}
!175 = !{!"VEC_edge_base", !51, i64 0, !51, i64 4, !47, i64 8}
!176 = !{!94, !46, i64 112}
!177 = !{!94, !51, i64 176}
!178 = !{!94, !51, i64 172}
!179 = !{!94, !46, i64 160}
!180 = !{!94, !47, i64 168}
!181 = !{!133, !46, i64 672}
!182 = !{!65, !51, i64 40}
!183 = !{!184, !51, i64 0}
!184 = !{!"VEC_tree_base", !51, i64 0, !51, i64 4, !47, i64 8}
!185 = distinct !{!185, !62, !63}
!186 = distinct !{!186, !62, !63}
!187 = !{!188, !51, i64 0}
!188 = !{!"VEC_tree_heap", !184, i64 0}
!189 = distinct !{!189, !62, !63}
!190 = distinct !{!190, !62, !63}
!191 = distinct !{!191, !62, !63}
!192 = !{!133, !46, i64 680}
!193 = !{!194, !46, i64 24}
!194 = !{!"_slp_tree", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !51, i64 32, !95, i64 36}
!195 = distinct !{!195, !62, !63}
!196 = distinct !{!196, !62, !63}
!197 = distinct !{!197, !62, !63}
!198 = distinct !{!198, !62, !63}
!199 = !{!200, !51, i64 0}
!200 = !{!"optab_handlers", !51, i64 0}
!201 = !{!194, !51, i64 32}
!202 = !{!203, !46, i64 24}
!203 = !{!"insn_data", !46, i64 0, !47, i64 8, !46, i64 16, !46, i64 24, !47, i64 32, !47, i64 33, !47, i64 34, !47, i64 35}
!204 = distinct !{!204, !62, !63}
!205 = distinct !{!205, !62, !63}
!206 = distinct !{!206, !62, !63}
!207 = distinct !{!207, !62, !63}
!208 = distinct !{!208, !62, !63}
!209 = !{!210, !46, i64 8}
!210 = !{!"data_reference", !46, i64 0, !46, i64 8, !46, i64 16, !47, i64 24, !211, i64 32, !212, i64 72, !213, i64 88, !46, i64 104}
!211 = !{!"innermost_loop_behavior", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!212 = !{!"indices", !46, i64 0, !46, i64 8}
!213 = !{!"dr_alias", !46, i64 0, !46, i64 8}
!214 = !{!215, !46, i64 24}
!215 = !{!"_slp_instance", !46, i64 0, !51, i64 8, !51, i64 12, !95, i64 16, !46, i64 24, !46, i64 32, !46, i64 40}
!216 = !{!210, !46, i64 56}
!217 = !{!210, !46, i64 16}
!218 = distinct !{!218, !62, !63}
!219 = distinct !{!219, !62, !63}
!220 = distinct !{!220, !62, !63}
!221 = distinct !{!221, !62, !63}
!222 = distinct !{!222, !62, !63}
!223 = distinct !{!223, !62, !63}
!224 = distinct !{!224, !62, !63}
!225 = distinct !{!225, !62, !63}
!226 = !{!94, !46, i64 136}
!227 = distinct !{!227, !62, !63}
!228 = !{!94, !51, i64 148}
!229 = distinct !{!229, !62, !63}
!230 = distinct !{!230, !62, !63}
!231 = distinct !{!231, !62, !63}
!232 = distinct !{!232, !62, !63}
!233 = distinct !{!233, !62, !63}
!234 = distinct !{!234, !62, !63}
!235 = !{!"function_entry_count", i64 38}
!236 = !{!"branch_weights", i32 38, i32 0}
!237 = !{!"branch_weights", i32 0, i32 38}
!238 = !{!133, !46, i64 688}
!239 = !{!133, !46, i64 696}
!240 = !{!241, !46, i64 448}
!241 = !{!"lang_hooks", !46, i64 0, !52, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !242, i64 240, !243, i64 248, !244, i64 256, !245, i64 272, !246, i64 432, !247, i64 560, !46, i64 584, !46, i64 592, !46, i64 600, !46, i64 608, !46, i64 616, !46, i64 624, !46, i64 632, !46, i64 640, !46, i64 648, !46, i64 656, !46, i64 664, !47, i64 672}
!242 = !{!"lang_hooks_for_tree_inlining", !46, i64 0}
!243 = !{!"lang_hooks_for_callgraph", !46, i64 0}
!244 = !{!"lang_hooks_for_tree_dump", !46, i64 0, !46, i64 8}
!245 = !{!"lang_hooks_for_decls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152}
!246 = !{!"lang_hooks_for_types", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !47, i64 120}
!247 = !{!"lang_hooks_for_lto", !46, i64 0, !46, i64 8, !46, i64 16}
!248 = distinct !{!248, !62, !63}
!249 = distinct !{!249, !62, !63}
!250 = distinct !{!250, !62, !63}
!251 = distinct !{!251, !62, !63}
