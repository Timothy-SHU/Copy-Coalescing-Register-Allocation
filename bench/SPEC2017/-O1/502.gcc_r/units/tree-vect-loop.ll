; ModuleID = 'tree-vect-loop.c'
source_filename = "tree-vect-loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
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
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.VEC_slp_instance_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct._slp_instance = type { ptr, i32, i32, %struct.anon.0, ptr, ptr, ptr }
%struct.anon.0 = type { i32, i32 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"=== vect_analyze_loop_form ===\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"not vectorized: control flow in loop.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"not vectorized: empty loop.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"not vectorized: multiple nested loops.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"not vectorized: Bad inner loop.\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"not vectorized: inner-loop count not invariant.\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"tree-vect-loop.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"not vectorized: unsupported outerloop form.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Considering outer-loop vectorization.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"not vectorized: multiple exits.\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"not vectorized: too many incoming edges.\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"not vectorized: unexpected loop form.\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"split exit edge.\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"not vectorized: abnormal loop exit edge.\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"not vectorized: complicated exit condition.\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"not vectorized: number of iterations cannot be computed.\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Infinite number of iterations.\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Symbolic number of iterations is \00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"===== analyze_loop_nest =====\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"outer-loop already vectorized.\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"bad loop form.\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"bad data references.\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"unexpected pattern.\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"bad data alignment.\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"can't determine vectorization factor.\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"bad data dependence.\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"bad data access.\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"too long list of versioning for alias run-time tests.\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"bad operation or unsupported loop bound.\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"reduction used in loop.\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"reduction: not ssa_name: \00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"reduction: no def_stmt.\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"unsupported phi node definition.\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"detected double reduction: \00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"reduction: not commutative/associative: \00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"reduction: not binary operation: \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.38 = private unnamed_addr constant [32 x i8] c"reduction: uses not ssa_names: \00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"reduction: multiple types: operation type: \00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c", operands types: \00", align 1
@flag_associative_math = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [41 x i8] c"reduction: unsafe fp math optimization: \00", align 1
@flag_trapv = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [42 x i8] c"reduction: unsafe int math optimization: \00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"reduction: unsafe fixed-point math optimization: \00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"reduction: no defs for operands: \00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"detected reduction: \00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"detected reduction: need to swap operands: \00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"reduction: unknown pattern: \00", align 1
@flag_vect_cost_model = external local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [21 x i8] c"cost model disabled.\00", align 1
@.str.50 = private unnamed_addr constant [78 x i8] c"cost model: Adding cost of checks for loop versioning to treat misalignment.\0A\00", align 1
@.str.51 = private unnamed_addr constant [65 x i8] c"cost model: Adding cost of checks for loop versioning aliasing.\0A\00", align 1
@ix86_cost = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [45 x i8] c"cost model: prologue peel iters set to vf/2.\00", align 1
@.str.53 = private unnamed_addr constant [87 x i8] c"cost model: epilogue peel iters set to vf/2 because peeling for alignment is unknown .\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.54 = private unnamed_addr constant [82 x i8] c"cost model: epilogue peel iters set to vf/2 because loop iterations are unknown .\00", align 1
@.str.55 = private unnamed_addr constant [139 x i8] c"cost model: the vector iteration cost = %d divided by the scalar iteration cost = %d is greater or equal to the vectorization factor = %d.\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Cost model analysis: \0A\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"  Vector inside of loop cost: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"  Vector outside of loop cost: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"  Scalar iteration cost: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"  Scalar outside cost: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"  prologue iterations: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"  epilogue iterations: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"  Calculated minimum iters for profitability: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"  Profitability threshold = %d\0A\00", align 1
@dconst0 = external global %struct.real_value, align 8
@dconst1 = external local_unnamed_addr global %struct.real_value, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"unsupported condition in reduction\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"no optab.\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"op not supported by target.\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"proceeding using word mode.\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.69 = private unnamed_addr constant [37 x i8] c"not worthwhile without SIMD support.\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"unsupported data-type \00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"no optab for reduction.\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"reduc op not supported by target.\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"no reduc code for scalar code.\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"multiple types in double reduction\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"transform reduction.\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"multiple types in nested loop.\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"=== vectorizable_induction ===\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"transform induction phi.\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"use not simple.\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"=== vec_transform_loop ===\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"------>vectorizing phi: \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.82 = private unnamed_addr constant [16 x i8] c"multiple-types.\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"transform phi.\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"------>vectorizing statement: \00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"=== scheduling SLP instances ===\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"transform statement.\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"LOOP VECTORIZED.\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"OUTER LOOP VECTORIZED.\00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.89 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"===== analyze_loop_nest_1 =====\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"bad inner-loop form.\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"=== get_loop_niters ===\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.94 = private unnamed_addr constant [21 x i8] c"==> get_loop_niters:\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.95 = private unnamed_addr constant [35 x i8] c"=== vect_analyze_scalar_cycles ===\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"Analyze phi: \00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"Access function of PHI: \00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"Detected induction.\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"Detected double reduction.\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"Detected vectorizable nested cycle.\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"Detected reduction.\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"Unknown def-use cycle pattern.\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c",  init: \00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"step unknown.\00", align 1
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.106 = private unnamed_addr constant [44 x i8] c"=== vect_determine_vectorization_factor ===\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"==> examining phi: \00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"get vectype for scalar type:  \00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"not vectorized: unsupported data-type \00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"vectype: \00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"nunits = %d\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"==> examining statement: \00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"skip.\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"not vectorized: irregular stmt.\00", align 1
@.str.115 = private unnamed_addr constant [37 x i8] c"not vectorized: vector stmt in loop:\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"vectorization factor = %d\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"not vectorized: unsupported data-type\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.118 = private unnamed_addr constant [37 x i8] c"=== vect_analyze_loop_operations ===\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"examining phi: \00", align 1
@.str.120 = private unnamed_addr constant [43 x i8] c"Unsupported loop-closed phi in outer-loop.\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"not vectorized: value used after loop.\00", align 1
@.str.122 = private unnamed_addr constant [41 x i8] c"not vectorized: scalar dependence cycle.\00", align 1
@.str.123 = private unnamed_addr constant [45 x i8] c"not vectorized: relevant phi not supported: \00", align 1
@.str.124 = private unnamed_addr constant [50 x i8] c"All the computation can be taken out of the loop.\00", align 1
@.str.125 = private unnamed_addr constant [56 x i8] c"not vectorized: redundant loop. no profit to vectorize.\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"vectorization_factor = %d, niters = %ld\00", align 1
@.str.127 = private unnamed_addr constant [43 x i8] c"not vectorized: iteration count too small.\00", align 1
@.str.128 = private unnamed_addr constant [67 x i8] c"not vectorized: iteration count smaller than vectorization factor.\00", align 1
@.str.129 = private unnamed_addr constant [46 x i8] c"not vectorized: vectorization not profitable.\00", align 1
@.str.130 = private unnamed_addr constant [57 x i8] c"not vectorized: vector version will never be profitable.\00", align 1
@.str.131 = private unnamed_addr constant [148 x i8] c"not vectorized: iteration count smaller than user specified loop bound parameter or minimum profitable iterations (whichever is more conservative).\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"epilog loop required.\00", align 1
@.str.133 = private unnamed_addr constant [44 x i8] c"not vectorized: can't create epilog loop 1.\00", align 1
@.str.134 = private unnamed_addr constant [44 x i8] c"not vectorized: can't create epilog loop 2.\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.137 = private unnamed_addr constant [65 x i8] c"vect_model_reduction_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.138 = private unnamed_addr constant [45 x i8] c"transform reduction: created def-use cycle: \00", align 1
@.str.140 = private unnamed_addr constant [38 x i8] c"Reduce using direct vector reduction.\00", align 1
@.str.141 = private unnamed_addr constant [27 x i8] c"Reduce using vector shifts\00", align 1
@.str.142 = private unnamed_addr constant [27 x i8] c"Reduce using scalar code. \00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"extract scalar result\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"created double reduction phi node: \00", align 1
@.str.145 = private unnamed_addr constant [65 x i8] c"vect_model_induction_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.146 = private unnamed_addr constant [5 x i8] c"var_\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"created new init_stmt: \00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"vec_iv_\00", align 1
@.str.149 = private unnamed_addr constant [39 x i8] c"vector of inductions after inner-loop:\00", align 1
@.str.150 = private unnamed_addr constant [45 x i8] c"transform induction: created def-use cycle: \00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"killing debug use\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
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
  %5 = tail call ptr @__ctype_tolower_loc() #18
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
  %5 = tail call ptr @__ctype_toupper_loc() #18
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
define dso_local void @destroy_loop_vec_info(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %5 = icmp eq ptr %0, null
  br i1 %5, label %173, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !57
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %126

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  %17 = getelementptr inbounds i8, ptr %3, i64 16
  %18 = zext nneg i32 %11 to i64
  br label %27

19:                                               ; preds = %6
  tail call void @free(ptr noundef %9)
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  tail call void @free_data_refs(ptr noundef %21) #18
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  tail call void @free_dependence_relations(ptr noundef %23) #18
  %24 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %170, label %167

27:                                               ; preds = %15, %123
  %28 = phi i64 [ 0, %15 ], [ %124, %123 ]
  %29 = getelementptr inbounds ptr, ptr %9, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %31 = load ptr, ptr %3, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27, %33
  %34 = phi ptr [ %38, %33 ], [ %31, %27 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  call void @free_stmt_vec_info(ptr noundef %35) #18
  %36 = load ptr, ptr %3, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  store ptr %38, ptr %3, align 8, !tbaa !66
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !69

40:                                               ; preds = %33, %27
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !70, !noalias !72
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !46, !noalias !72
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !75, !noalias !72
  br label %51

51:                                               ; preds = %49, %45, %40
  %52 = phi ptr [ %50, %49 ], [ null, %45 ], [ null, %40 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %52, align 8, !tbaa !77, !noalias !72
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %55, %54 ], [ null, %51 ]
  store ptr %57, ptr %3, align 8, !tbaa.struct !63
  store ptr %52, ptr %16, align 8, !tbaa.struct !79
  store ptr %30, ptr %17, align 8, !tbaa.struct !80
  %58 = icmp eq ptr %57, null
  br i1 %58, label %123, label %59

59:                                               ; preds = %56, %118
  %60 = phi ptr [ %121, %118 ], [ %57, %56 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.gimple_statement_base, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !46
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr @stmt_vec_info_vec, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %66, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %69, %68 ], [ 0, %65 ]
  %72 = icmp ugt i32 %63, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %74

74:                                               ; preds = %73, %70
  %75 = load ptr, ptr @stmt_vec_info_vec, align 8
  %76 = add i32 %63, -1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %75, i64 0, i32 2, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  br label %80

80:                                               ; preds = %59, %74
  %81 = phi ptr [ %79, %74 ], [ null, %59 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %118, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct._stmt_vec_info, ptr %81, i64 0, i32 14
  %85 = load ptr, ptr %84, align 8, !tbaa !83
  %86 = icmp eq ptr %85, null
  br i1 %86, label %114, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.gimple_statement_base, ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !46
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @stmt_vec_info_vec, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %92, align 8, !tbaa !81
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %95, %94 ], [ 0, %91 ]
  %98 = icmp ugt i32 %89, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %100

100:                                              ; preds = %99, %96
  %101 = load ptr, ptr @stmt_vec_info_vec, align 8
  %102 = add i32 %89, -1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %101, i64 0, i32 2, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !35
  br label %106

106:                                              ; preds = %87, %100
  %107 = phi ptr [ %105, %100 ], [ null, %87 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct._stmt_vec_info, ptr %107, i64 0, i32 13
  %111 = load i8, ptr %110, align 8, !tbaa !86
  %112 = icmp ne i8 %111, 0
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %109, %106, %83
  %115 = phi i8 [ 0, %83 ], [ 0, %106 ], [ %113, %109 ]
  call void @free_stmt_vec_info(ptr noundef %61) #18
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #18
  br label %118

118:                                              ; preds = %114, %117, %80
  %119 = load ptr, ptr %3, align 8, !tbaa !66
  %120 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  store ptr %121, ptr %3, align 8, !tbaa !66
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %59, !llvm.loop !87

123:                                              ; preds = %118, %56
  %124 = add nuw nsw i64 %28, 1
  %125 = icmp eq i64 %124, %18
  br i1 %125, label %126, label %27, !llvm.loop !88

126:                                              ; preds = %123, %13
  %127 = load ptr, ptr %8, align 8, !tbaa !56
  call void @free(ptr noundef %127)
  %128 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %129 = load ptr, ptr %128, align 8, !tbaa !61
  call void @free_data_refs(ptr noundef %129) #18
  %130 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %131 = load ptr, ptr %130, align 8, !tbaa !62
  call void @free_dependence_relations(ptr noundef %131) #18
  %132 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  call void @free(ptr noundef %133)
  br label %136

136:                                              ; preds = %126, %135
  store ptr null, ptr %132, align 8, !tbaa !35
  %137 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !35
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void @free(ptr noundef %138)
  br label %141

141:                                              ; preds = %136, %140
  store ptr null, ptr %137, align 8, !tbaa !35
  %142 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %143 = load ptr, ptr %142, align 8, !tbaa !89
  %144 = icmp eq ptr %143, null
  br label %145

145:                                              ; preds = %157, %141
  %146 = phi i64 [ %158, %157 ], [ 0, %141 ]
  br i1 %144, label %154, label %147

147:                                              ; preds = %145
  %148 = load i32, ptr %143, align 8, !tbaa !90
  %149 = zext i32 %148 to i64
  %150 = icmp ult i64 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %143, i64 0, i32 2, i64 %146
  %153 = load ptr, ptr %152, align 8, !tbaa !35
  br label %154

154:                                              ; preds = %145, %147, %151
  %155 = phi ptr [ %153, %151 ], [ null, %147 ], [ null, %145 ]
  %156 = phi i1 [ false, %151 ], [ true, %147 ], [ true, %145 ]
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  call void @vect_free_slp_instance(ptr noundef %155) #18
  %158 = add nuw i64 %146, 1
  br label %145, !llvm.loop !92

159:                                              ; preds = %154
  %160 = load ptr, ptr %142, align 8, !tbaa !35
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call void @free(ptr noundef %160)
  br label %163

163:                                              ; preds = %159, %162
  store ptr null, ptr %142, align 8, !tbaa !35
  %164 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 15
  %165 = load ptr, ptr %164, align 8, !tbaa !35
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %163, %19
  %168 = phi ptr [ %25, %19 ], [ %165, %163 ]
  %169 = phi ptr [ %24, %19 ], [ %164, %163 ]
  call void @free(ptr noundef %168)
  br label %170

170:                                              ; preds = %167, %163, %19
  %171 = phi ptr [ %24, %19 ], [ %164, %163 ], [ %169, %167 ]
  store ptr null, ptr %171, align 8, !tbaa !35
  call void @free(ptr noundef %0)
  %172 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 10
  store ptr null, ptr %172, align 8, !tbaa !93
  br label %173

173:                                              ; preds = %170, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @free_stmt_vec_info(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @vect_free_slp_instance(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @vect_analyze_loop_form(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %361, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %20 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 37, i64 1, ptr %19)
  br label %361

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = tail call zeroext i8 @empty_block_p(ptr noundef %23) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %152, label %26

26:                                               ; preds = %21
  %27 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %361, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %31 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr %30)
  br label %361

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %32
  %41 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %149, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %45 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 38, i64 1, ptr %44)
  br label %149

46:                                               ; preds = %36
  %47 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %51 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 31, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = tail call ptr @vect_analyze_loop_form(ptr noundef nonnull %9)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %60 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 20, i64 1, ptr %59)
  br label %61

61:                                               ; preds = %52, %55, %58
  %62 = phi ptr [ null, %58 ], [ null, %55 ], [ %53, %52 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %149, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %69 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 31, i64 1, ptr %68)
  br label %149

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct._loop_vec_info, ptr %62, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !97
  %73 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %72) #18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %80 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 47, i64 1, ptr %79)
  br label %81

81:                                               ; preds = %78, %75
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %62, i8 noundef zeroext 1)
  br label %149

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !57
  %85 = icmp eq i32 %84, 5
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %91 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 37, i64 1, ptr %90)
  br label %92

92:                                               ; preds = %89, %86
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %62, i8 noundef zeroext 1)
  br label %149

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !95
  %96 = load ptr, ptr %95, align 8, !tbaa !98
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = load i32, ptr %96, align 8, !tbaa !99
  br label %100

100:                                              ; preds = %93, %98
  %101 = phi i32 [ %99, %98 ], [ 0, %93 ]
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 945, ptr noundef nonnull @.str.7) #18
  br label %104

104:                                              ; preds = %100, %103
  %105 = load ptr, ptr %94, align 8, !tbaa !95
  %106 = load ptr, ptr %105, align 8, !tbaa !98
  %107 = getelementptr inbounds %struct.VEC_edge_base, ptr %106, i64 0, i32 2, i64 0
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load ptr, ptr %108, align 8, !tbaa !101
  %110 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !103
  %112 = icmp eq ptr %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.VEC_edge_base, ptr %106, i64 0, i32 2, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  br label %116

116:                                              ; preds = %113, %104
  %117 = phi ptr [ %115, %113 ], [ %108, %104 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !101
  %119 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !95
  %121 = icmp eq ptr %118, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = tail call ptr @single_exit(ptr noundef nonnull %9) #18
  %124 = icmp eq ptr %123, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %122
  %126 = tail call ptr @single_exit(ptr noundef nonnull %9) #18
  %127 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !104
  %129 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !103
  %131 = load ptr, ptr %130, align 8, !tbaa !98
  %132 = getelementptr inbounds %struct.VEC_edge_base, ptr %131, i64 0, i32 2, i64 0
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  %134 = load ptr, ptr %133, align 8, !tbaa !101
  %135 = icmp eq ptr %128, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %125, %122, %116
  %137 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %141 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 43, i64 1, ptr %140)
  br label %142

142:                                              ; preds = %139, %136
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %62, i8 noundef zeroext 1)
  br label %149

143:                                              ; preds = %125
  %144 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %148 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 37, i64 1, ptr %147)
  br label %149

149:                                              ; preds = %143, %146, %64, %67, %40, %43, %142, %92, %81
  %150 = phi i1 [ false, %92 ], [ false, %142 ], [ false, %81 ], [ false, %43 ], [ false, %40 ], [ false, %67 ], [ false, %64 ], [ true, %146 ], [ true, %143 ]
  %151 = phi ptr [ %62, %92 ], [ %62, %142 ], [ %62, %81 ], [ null, %43 ], [ null, %40 ], [ null, %67 ], [ null, %64 ], [ %62, %146 ], [ %62, %143 ]
  br i1 %150, label %152, label %361

152:                                              ; preds = %149, %21
  %153 = phi ptr [ %151, %149 ], [ null, %21 ]
  %154 = tail call ptr @single_exit(ptr noundef %0) #18
  %155 = icmp eq ptr %154, null
  br i1 %155, label %166, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !95
  %159 = load ptr, ptr %158, align 8, !tbaa !98
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %159, align 8, !tbaa !99
  br label %163

163:                                              ; preds = %156, %161
  %164 = phi i32 [ %162, %161 ], [ 0, %156 ]
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %189, label %166

166:                                              ; preds = %163, %152
  %167 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %166
  %170 = tail call ptr @single_exit(ptr noundef %0) #18
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %174 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 31, i64 1, ptr %173)
  br label %186

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !95
  %178 = load ptr, ptr %177, align 8, !tbaa !98
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = load i32, ptr %178, align 8, !tbaa !99
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %186, label %183

183:                                              ; preds = %175, %180
  %184 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %185 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 40, i64 1, ptr %184)
  br label %186

186:                                              ; preds = %172, %183, %180, %166
  %187 = icmp eq ptr %153, null
  br i1 %187, label %361, label %188

188:                                              ; preds = %186
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 1)
  br label %361

189:                                              ; preds = %163
  %190 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !103
  %192 = tail call zeroext i8 @empty_block_p(ptr noundef %191) #18
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %218, label %194

194:                                              ; preds = %189
  %195 = load ptr, ptr %190, align 8, !tbaa !103
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 13
  %197 = load i32, ptr %196, align 8, !tbaa !70
  %198 = and i32 %197, 512
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.92, i32 noundef 510, ptr noundef nonnull @.str.7) #18
  br label %201

201:                                              ; preds = %200, %194
  %202 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = icmp eq ptr %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.gimple_bb_info, ptr %203, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !105
  br label %208

208:                                              ; preds = %201, %205
  %209 = phi ptr [ %207, %205 ], [ null, %201 ]
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr %209, align 8, !tbaa !77
  %213 = icmp eq ptr %212, null
  %214 = zext i1 %213 to i8
  br label %215

215:                                              ; preds = %208, %211
  %216 = phi i8 [ 1, %208 ], [ %214, %211 ]
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215, %189
  %219 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %223 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 37, i64 1, ptr %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = icmp eq ptr %153, null
  br i1 %225, label %361, label %226

226:                                              ; preds = %224
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 1)
  br label %361

227:                                              ; preds = %215
  %228 = tail call ptr @single_exit(ptr noundef %0) #18
  %229 = getelementptr inbounds %struct.edge_def, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !104
  %231 = load ptr, ptr %230, align 8, !tbaa !98
  %232 = icmp eq ptr %231, null
  br i1 %232, label %237, label %233

233:                                              ; preds = %227
  %234 = load i32, ptr %231, align 8, !tbaa !99
  %235 = icmp eq i32 %234, 1
  %236 = zext i1 %235 to i8
  br label %237

237:                                              ; preds = %227, %233
  %238 = phi i8 [ %236, %233 ], [ 0, %227 ]
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %263

240:                                              ; preds = %237
  %241 = tail call ptr @single_exit(ptr noundef %0) #18
  %242 = getelementptr inbounds %struct.edge_def, ptr %241, i64 0, i32 7
  %243 = load i32, ptr %242, align 8, !tbaa !106
  %244 = and i32 %243, 2
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = tail call ptr @split_loop_exit_edge(ptr noundef %241) #18
  %248 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %246
  %251 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %252 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 16, i64 1, ptr %251)
  br label %262

253:                                              ; preds = %240
  %254 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %258 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 40, i64 1, ptr %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = icmp eq ptr %153, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %259
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 1)
  br label %262

262:                                              ; preds = %250, %246, %259, %261
  br i1 %245, label %263, label %361

263:                                              ; preds = %262, %237
  %264 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %268 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 23, i64 1, ptr %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = tail call ptr @number_of_exit_cond_executions(ptr noundef %0) #18
  %271 = icmp eq ptr %270, null
  %272 = load ptr, ptr @chrec_dont_know, align 8
  %273 = icmp eq ptr %270, %272
  %274 = select i1 %271, i1 true, i1 %273
  br i1 %274, label %282, label %275

275:                                              ; preds = %269
  %276 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %280 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 20, i64 1, ptr %279)
  %281 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %281, ptr noundef %270, i32 noundef 2) #18
  br label %282

282:                                              ; preds = %269, %275, %278
  %283 = phi ptr [ null, %269 ], [ %270, %275 ], [ %270, %278 ]
  %284 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #18
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %295

286:                                              ; preds = %282
  %287 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %291 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 43, i64 1, ptr %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = icmp eq ptr %153, null
  br i1 %293, label %361, label %294

294:                                              ; preds = %292
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 1)
  br label %361

295:                                              ; preds = %282
  %296 = icmp eq ptr %283, null
  br i1 %296, label %297, label %306

297:                                              ; preds = %295
  %298 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %302 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 56, i64 1, ptr %301)
  br label %303

303:                                              ; preds = %300, %297
  %304 = icmp eq ptr %153, null
  br i1 %304, label %361, label %305

305:                                              ; preds = %303
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 1)
  br label %361

306:                                              ; preds = %295
  %307 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %283) #18
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %306
  %310 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #18
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %314 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 30, i64 1, ptr %313)
  br label %315

315:                                              ; preds = %312, %309
  %316 = icmp eq ptr %153, null
  br i1 %316, label %361, label %317

317:                                              ; preds = %315
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 1)
  br label %361

318:                                              ; preds = %306
  %319 = tail call i32 @host_integerp(ptr noundef nonnull %283, i32 noundef 0) #18
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.tree_int_cst, ptr %283, i64 0, i32 1
  %323 = load i64, ptr %322, align 8, !tbaa !46
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %321, %318
  %326 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %325
  %329 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %330 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 33, i64 1, ptr %329)
  %331 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %331, ptr noundef nonnull %283, i32 noundef 8) #18
  br label %332

332:                                              ; preds = %325, %321, %328
  %333 = tail call fastcc ptr @new_loop_vec_info(ptr noundef %0)
  %334 = getelementptr inbounds %struct._loop_vec_info, ptr %333, i64 0, i32 2
  store ptr %283, ptr %334, align 8, !tbaa !97
  %335 = getelementptr inbounds %struct._loop_vec_info, ptr %333, i64 0, i32 3
  store ptr %283, ptr %335, align 8, !tbaa !107
  %336 = getelementptr inbounds %struct.gimple_statement_base, ptr %284, i64 0, i32 1
  %337 = load i32, ptr %336, align 4, !tbaa !46
  %338 = icmp ne i32 %337, 0
  tail call void @llvm.assume(i1 %338)
  %339 = load ptr, ptr @stmt_vec_info_vec, align 8
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %332
  %342 = load i32, ptr %339, align 8, !tbaa !81
  br label %343

343:                                              ; preds = %341, %332
  %344 = phi i32 [ %342, %341 ], [ 0, %332 ]
  %345 = icmp ugt i32 %337, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %347

347:                                              ; preds = %346, %343
  %348 = load ptr, ptr @stmt_vec_info_vec, align 8
  %349 = add i32 %337, -1
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %348, i64 0, i32 2, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !35
  store i32 12, ptr %352, align 8, !tbaa !108
  %353 = icmp eq ptr %153, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %347
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %153, i8 noundef zeroext 0)
  br label %355

355:                                              ; preds = %354, %347
  %356 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %357 = load ptr, ptr %356, align 8, !tbaa !93
  %358 = icmp eq ptr %357, null
  br i1 %358, label %360, label %359

359:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1069, ptr noundef nonnull @.str.7) #18
  br label %360

360:                                              ; preds = %355, %359
  store ptr %333, ptr %356, align 8, !tbaa !93
  br label %361

361:                                              ; preds = %186, %315, %317, %303, %305, %292, %294, %224, %226, %188, %26, %29, %15, %18, %149, %262, %360
  %362 = phi ptr [ %333, %360 ], [ null, %262 ], [ null, %149 ], [ null, %18 ], [ null, %15 ], [ null, %29 ], [ null, %26 ], [ null, %188 ], [ null, %226 ], [ null, %224 ], [ null, %294 ], [ null, %292 ], [ null, %305 ], [ null, %303 ], [ null, %317 ], [ null, %315 ], [ null, %186 ]
  ret ptr %362
}

declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @new_loop_vec_info(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #18
  store ptr %0, ptr %4, align 8, !tbaa !54
  %5 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %223, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  br label %11

11:                                               ; preds = %9, %218
  %12 = phi i64 [ 0, %9 ], [ %219, %218 ]
  %13 = getelementptr inbounds ptr, ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %112, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %10, align 8, !tbaa !94
  %20 = icmp ne ptr %19, null
  %21 = icmp eq ptr %16, %19
  %22 = and i1 %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.7) #18
  br label %24

24:                                               ; preds = %18, %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %14) #18
  %25 = load ptr, ptr %2, align 8, !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %24, %56
  %28 = phi ptr [ %58, %56 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.gimple_statement_base, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr @stmt_vec_info_vec, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %34, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %37, %36 ], [ 0, %33 ]
  %40 = icmp ugt i32 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr @stmt_vec_info_vec, align 8
  %44 = add i32 %31, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %43, i64 0, i32 2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %27, %42
  %49 = phi ptr [ %47, %42 ], [ null, %27 ]
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !110
  %52 = load ptr, ptr %10, align 8, !tbaa !94
  %53 = load ptr, ptr %51, align 8, !tbaa !54
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 652, ptr noundef nonnull @.str.7) #18
  br label %56

56:                                               ; preds = %48, %55
  store ptr %4, ptr %50, align 8, !tbaa !110
  %57 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %28, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %27, !llvm.loop !111

60:                                               ; preds = %56, %24
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %62 = load i32, ptr %61, align 8, !tbaa !70, !noalias !112
  %63 = and i32 %62, 512
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !46, !noalias !112
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %67, align 8, !tbaa !75, !noalias !112
  br label %71

71:                                               ; preds = %69, %65, %60
  %72 = phi ptr [ %70, %69 ], [ null, %65 ], [ null, %60 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %72, align 8, !tbaa !77, !noalias !112
  br label %76

76:                                               ; preds = %71, %74
  %77 = phi ptr [ %75, %74 ], [ null, %71 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %218, label %79

79:                                               ; preds = %76, %108
  %80 = phi ptr [ %110, %108 ], [ %77, %76 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !46
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr @stmt_vec_info_vec, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %86, align 8, !tbaa !81
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %89, %88 ], [ 0, %85 ]
  %92 = icmp ugt i32 %83, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %94

94:                                               ; preds = %93, %90
  %95 = load ptr, ptr @stmt_vec_info_vec, align 8
  %96 = add i32 %83, -1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %95, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  br label %100

100:                                              ; preds = %79, %94
  %101 = phi ptr [ %99, %94 ], [ null, %79 ]
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !110
  %104 = load ptr, ptr %10, align 8, !tbaa !94
  %105 = load ptr, ptr %103, align 8, !tbaa !54
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 661, ptr noundef nonnull @.str.7) #18
  br label %108

108:                                              ; preds = %100, %107
  store ptr %4, ptr %102, align 8, !tbaa !110
  %109 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %80, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !68
  %111 = icmp eq ptr %110, null
  br i1 %111, label %218, label %79, !llvm.loop !115

112:                                              ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %14) #18
  %113 = load ptr, ptr %3, align 8, !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %114 = icmp eq ptr %113, null
  br i1 %114, label %157, label %115

115:                                              ; preds = %112, %149
  %116 = phi ptr [ %155, %149 ], [ %113, %112 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !64
  %118 = getelementptr inbounds %struct.gimple_statement_base, ptr %117, i64 0, i32 1
  store i32 0, ptr %118, align 4, !tbaa !46
  %119 = call ptr @new_stmt_vec_info(ptr noundef %117, ptr noundef nonnull %4, ptr noundef null) #18
  %120 = load i32, ptr %118, align 4, !tbaa !46
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %115
  %123 = icmp eq ptr %119, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %125

125:                                              ; preds = %124, %122
  %126 = load ptr, ptr @stmt_vec_info_vec, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %126, align 8, !tbaa !81
  %130 = add i32 %129, 1
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i32 [ %130, %128 ], [ 1, %125 ]
  store i32 %132, ptr %118, align 4, !tbaa !46
  %133 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %133, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !116
  %138 = load i32, ptr %133, align 8, !tbaa !81
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %131
  %141 = call ptr @vec_heap_p_reserve(ptr noundef %133, i32 noundef 1) #18
  store ptr %141, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %142

142:                                              ; preds = %140, %135
  %143 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %144 = load i32, ptr %143, align 8, !tbaa !81
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8, !tbaa !81
  br label %149

146:                                              ; preds = %115
  %147 = load ptr, ptr @stmt_vec_info_vec, align 8
  %148 = add i32 %120, -1
  br label %149

149:                                              ; preds = %142, %146
  %150 = phi i32 [ %144, %142 ], [ %148, %146 ]
  %151 = phi ptr [ %143, %142 ], [ %147, %146 ]
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %151, i64 0, i32 2, i64 %152
  store ptr %119, ptr %153, align 8, !tbaa !35
  %154 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %116, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !68
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %115, !llvm.loop !117

157:                                              ; preds = %149, %112
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %159 = load i32, ptr %158, align 8, !tbaa !70, !noalias !118
  %160 = and i32 %159, 512
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %164 = load ptr, ptr %163, align 8, !tbaa !46, !noalias !118
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %164, align 8, !tbaa !75, !noalias !118
  br label %168

168:                                              ; preds = %166, %162, %157
  %169 = phi ptr [ %167, %166 ], [ null, %162 ], [ null, %157 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %169, align 8, !tbaa !77, !noalias !118
  br label %173

173:                                              ; preds = %168, %171
  %174 = phi ptr [ %172, %171 ], [ null, %168 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %218, label %176

176:                                              ; preds = %173, %210
  %177 = phi ptr [ %216, %210 ], [ %174, %173 ]
  %178 = load ptr, ptr %177, align 8, !tbaa !64
  %179 = getelementptr inbounds %struct.gimple_statement_base, ptr %178, i64 0, i32 1
  store i32 0, ptr %179, align 4, !tbaa !46
  %180 = call ptr @new_stmt_vec_info(ptr noundef %178, ptr noundef nonnull %4, ptr noundef null) #18
  %181 = load i32, ptr %179, align 4, !tbaa !46
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %176
  %184 = icmp eq ptr %180, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %186

186:                                              ; preds = %185, %183
  %187 = load ptr, ptr @stmt_vec_info_vec, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, ptr %187, align 8, !tbaa !81
  %191 = add i32 %190, 1
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi i32 [ %191, %189 ], [ 1, %186 ]
  store i32 %193, ptr %179, align 4, !tbaa !46
  %194 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %195 = icmp eq ptr %194, null
  br i1 %195, label %201, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %194, i64 0, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !116
  %199 = load i32, ptr %194, align 8, !tbaa !81
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %196, %192
  %202 = call ptr @vec_heap_p_reserve(ptr noundef %194, i32 noundef 1) #18
  store ptr %202, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %203

203:                                              ; preds = %201, %196
  %204 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %205 = load i32, ptr %204, align 8, !tbaa !81
  %206 = add i32 %205, 1
  store i32 %206, ptr %204, align 8, !tbaa !81
  br label %210

207:                                              ; preds = %176
  %208 = load ptr, ptr @stmt_vec_info_vec, align 8
  %209 = add i32 %181, -1
  br label %210

210:                                              ; preds = %203, %207
  %211 = phi i32 [ %205, %203 ], [ %209, %207 ]
  %212 = phi ptr [ %204, %203 ], [ %208, %207 ]
  %213 = zext i32 %211 to i64
  %214 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %212, i64 0, i32 2, i64 %213
  store ptr %180, ptr %214, align 8, !tbaa !35
  %215 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %177, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !68
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %176, !llvm.loop !121

218:                                              ; preds = %108, %210, %76, %173
  %219 = add nuw nsw i64 %12, 1
  %220 = load i32, ptr %6, align 4, !tbaa !57
  %221 = zext i32 %220 to i64
  %222 = icmp ult i64 %219, %221
  br i1 %222, label %11, label %223, !llvm.loop !122

223:                                              ; preds = %218, %1
  %224 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  call void @free(ptr noundef %5)
  %225 = load i32, ptr %224, align 4, !tbaa !57
  %226 = zext i32 %225 to i64
  %227 = call ptr @xcalloc(i64 noundef %226, i64 noundef 8) #18
  %228 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !95
  %230 = load i32, ptr %224, align 4, !tbaa !57
  %231 = call i32 @dfs_enumerate_from(ptr noundef %229, i32 noundef 0, ptr noundef nonnull @bb_in_loop_p, ptr noundef %227, i32 noundef %230, ptr noundef %0) #18
  %232 = load i32, ptr %224, align 4, !tbaa !57
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %235, label %234

234:                                              ; preds = %223
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 693, ptr noundef nonnull @.str.7) #18
  br label %235

235:                                              ; preds = %223, %234
  %236 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 1
  store ptr %227, ptr %236, align 8, !tbaa !56
  %237 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 2
  %238 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 8
  store i32 0, ptr %238, align 8, !tbaa !123
  %239 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 6
  store i32 0, ptr %239, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %237, i8 0, i64 21, i1 false)
  %240 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  %241 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 10
  store ptr %240, ptr %241, align 8, !tbaa !61
  %242 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #18
  %243 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 11
  store ptr %242, ptr %243, align 8, !tbaa !62
  %244 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 7
  store ptr null, ptr %244, align 8, !tbaa !125
  %245 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %246 = getelementptr inbounds %struct.param_info, ptr %245, i64 71, i32 1
  %247 = load i32, ptr %246, align 8, !tbaa !126
  %248 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %247) #18
  %249 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 13
  store ptr %248, ptr %249, align 8, !tbaa !128
  %250 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %251 = getelementptr inbounds %struct.param_info, ptr %250, i64 72, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !126
  %253 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %252) #18
  %254 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 12
  store ptr %253, ptr %254, align 8, !tbaa !129
  %255 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  %256 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 15
  store ptr %255, ptr %256, align 8, !tbaa !130
  %257 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  %258 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 16
  store ptr %257, ptr %258, align 8, !tbaa !89
  %259 = getelementptr inbounds %struct._loop_vec_info, ptr %4, i64 0, i32 17
  store i32 1, ptr %259, align 8, !tbaa !131
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @vect_analyze_loop(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %8 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 29, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !133
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi ptr [ %22, %18 ], [ null, %15 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  br i1 %12, label %29, label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %11, align 8, !tbaa !133
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %28, %27 ], [ 0, %26 ]
  %31 = icmp ne i32 %30, 0
  tail call void @llvm.assume(i1 %31)
  %32 = add i32 %30, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.loop, ptr %35, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %29
  br i1 %12, label %42, label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %11, align 8, !tbaa !133
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ %41, %40 ], [ 0, %39 ]
  %44 = icmp ne i32 %43, 0
  tail call void @llvm.assume(i1 %44)
  %45 = add i32 %43, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = getelementptr inbounds %struct._loop_vec_info, ptr %50, i64 0, i32 5
  %52 = load i8, ptr %51, align 4, !tbaa !135
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %625, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %59 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %58)
  br label %625

60:                                               ; preds = %42, %29, %23
  %61 = tail call ptr @vect_analyze_loop_form(ptr noundef %0)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %625, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %68 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 14, i64 1, ptr %67)
  br label %625

69:                                               ; preds = %60
  %70 = tail call zeroext i8 @vect_analyze_data_refs(ptr noundef %61, ptr noundef null) #18
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %77 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 20, i64 1, ptr %76)
  br label %78

78:                                               ; preds = %75, %72
  tail call void @destroy_loop_vec_info(ptr noundef %61, i8 noundef zeroext 1)
  br label %625

79:                                               ; preds = %69
  %80 = load ptr, ptr %61, align 8, !tbaa !54
  tail call fastcc void @vect_analyze_scalar_cycles_1(ptr noundef nonnull %61, ptr noundef %80)
  %81 = getelementptr inbounds %struct.loop, ptr %80, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !94
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call fastcc void @vect_analyze_scalar_cycles_1(ptr noundef nonnull %61, ptr noundef nonnull %82)
  br label %85

85:                                               ; preds = %79, %84
  tail call void @vect_pattern_recog(ptr noundef nonnull %61) #18
  %86 = tail call zeroext i8 @vect_mark_stmts_to_be_vectorized(ptr noundef nonnull %61) #18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %93 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 19, i64 1, ptr %92)
  br label %94

94:                                               ; preds = %91, %88
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

95:                                               ; preds = %85
  %96 = tail call zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef nonnull %61, ptr noundef null) #18
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %103 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 19, i64 1, ptr %102)
  br label %104

104:                                              ; preds = %101, %98
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

105:                                              ; preds = %95
  %106 = load ptr, ptr %61, align 8, !tbaa !54
  %107 = getelementptr inbounds %struct._loop_vec_info, ptr %61, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !56
  %109 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 6
  %110 = load i32, ptr %109, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %111 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %115 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 43, i64 1, ptr %114)
  br label %116

116:                                              ; preds = %113, %105
  %117 = icmp sgt i32 %110, 0
  br i1 %117, label %118, label %546

118:                                              ; preds = %116
  %119 = zext nneg i32 %110 to i64
  br label %123

120:                                              ; preds = %542
  %121 = add nuw nsw i64 %124, 1
  %122 = icmp eq i64 %121, %119
  br i1 %122, label %546, label %123, !llvm.loop !136

123:                                              ; preds = %118, %120
  %124 = phi i64 [ 0, %118 ], [ %121, %120 ]
  %125 = phi i32 [ 0, %118 ], [ %543, %120 ]
  %126 = getelementptr inbounds ptr, ptr %108, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %127) #18
  %128 = load ptr, ptr %3, align 8, !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %129 = icmp eq ptr %128, null
  br i1 %129, label %221, label %130

130:                                              ; preds = %123, %216
  %131 = phi i32 [ %217, %216 ], [ %125, %123 ]
  %132 = phi ptr [ %219, %216 ], [ %128, %123 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !64
  %134 = getelementptr inbounds %struct.gimple_statement_base, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !46
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %130
  %138 = load ptr, ptr @stmt_vec_info_vec, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %138, align 8, !tbaa !81
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi i32 [ %141, %140 ], [ 0, %137 ]
  %144 = icmp ugt i32 %135, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %146

146:                                              ; preds = %145, %142
  %147 = load ptr, ptr @stmt_vec_info_vec, align 8
  %148 = add i32 %135, -1
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %147, i64 0, i32 2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  br label %152

152:                                              ; preds = %146, %130
  %153 = phi ptr [ %151, %146 ], [ null, %130 ]
  %154 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %158 = call i64 @fwrite(ptr nonnull @.str.107, i64 19, i64 1, ptr %157)
  %159 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %159, ptr noundef %133, i32 noundef 0, i32 noundef 2) #18
  br label %160

160:                                              ; preds = %156, %152
  %161 = icmp eq ptr %153, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %160
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 199, ptr noundef nonnull @.str.7) #18
  br label %163

163:                                              ; preds = %162, %160
  %164 = getelementptr inbounds %struct._stmt_vec_info, ptr %153, i64 0, i32 3
  %165 = load i32, ptr %164, align 8, !tbaa !137
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %216, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct._stmt_vec_info, ptr %153, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !138
  %170 = icmp eq ptr %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 203, ptr noundef nonnull @.str.7) #18
  br label %172

172:                                              ; preds = %171, %167
  %173 = getelementptr inbounds %struct.gimple_statement_phi, ptr %133, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !35
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %181 = call i64 @fwrite(ptr nonnull @.str.108, i64 30, i64 1, ptr %180)
  %182 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %182, ptr noundef %176, i32 noundef 2) #18
  br label %183

183:                                              ; preds = %179, %172
  %184 = call ptr @get_vectype_for_scalar_type(ptr noundef %176) #18
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %542, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %191 = call i64 @fwrite(ptr nonnull @.str.109, i64 38, i64 1, ptr %190)
  %192 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %192, ptr noundef %176, i32 noundef 2) #18
  br label %542

193:                                              ; preds = %183
  store ptr %184, ptr %168, align 8, !tbaa !138
  %194 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %198 = call i64 @fwrite(ptr nonnull @.str.110, i64 9, i64 1, ptr %197)
  %199 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %199, ptr noundef nonnull %184, i32 noundef 2) #18
  br label %200

200:                                              ; preds = %196, %193
  %201 = getelementptr inbounds %struct.tree_type, ptr %184, i64 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 1023
  %204 = zext nneg i32 %203 to i64
  %205 = shl nuw i64 1, %204
  %206 = trunc i64 %205 to i32
  %207 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %200
  %210 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef nonnull @.str.111, i32 noundef %206)
  br label %212

212:                                              ; preds = %209, %200
  %213 = icmp eq i32 %131, 0
  %214 = call i32 @llvm.umax.i32(i32 %131, i32 %206)
  %215 = select i1 %213, i32 %206, i32 %214
  br label %216

216:                                              ; preds = %212, %163
  %217 = phi i32 [ %131, %163 ], [ %215, %212 ]
  %218 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %132, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !68
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %130, !llvm.loop !139

221:                                              ; preds = %216, %123
  %222 = phi i32 [ %125, %123 ], [ %217, %216 ]
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 13
  %224 = load i32, ptr %223, align 8, !tbaa !70, !noalias !140
  %225 = and i32 %224, 512
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 7
  %229 = load ptr, ptr %228, align 8, !tbaa !46, !noalias !140
  %230 = icmp eq ptr %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = load ptr, ptr %229, align 8, !tbaa !75, !noalias !140
  br label %233

233:                                              ; preds = %231, %227, %221
  %234 = phi ptr [ %232, %231 ], [ null, %227 ], [ null, %221 ]
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %234, align 8, !tbaa !77, !noalias !140
  br label %238

238:                                              ; preds = %236, %233
  %239 = phi ptr [ %237, %236 ], [ null, %233 ]
  %240 = icmp eq ptr %239, null
  br i1 %240, label %542, label %241

241:                                              ; preds = %238, %538
  %242 = phi i32 [ %536, %538 ], [ %222, %238 ]
  %243 = phi ptr [ %540, %538 ], [ %239, %238 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !64
  %245 = getelementptr inbounds %struct.gimple_statement_base, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !46
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %263, label %248

248:                                              ; preds = %241
  %249 = load ptr, ptr @stmt_vec_info_vec, align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = load i32, ptr %249, align 8, !tbaa !81
  br label %253

253:                                              ; preds = %251, %248
  %254 = phi i32 [ %252, %251 ], [ 0, %248 ]
  %255 = icmp ugt i32 %246, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %257

257:                                              ; preds = %256, %253
  %258 = load ptr, ptr @stmt_vec_info_vec, align 8
  %259 = add i32 %246, -1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %258, i64 0, i32 2, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !35
  br label %263

263:                                              ; preds = %257, %241
  %264 = phi ptr [ %262, %257 ], [ null, %241 ]
  %265 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %269 = call i64 @fwrite(ptr nonnull @.str.112, i64 25, i64 1, ptr %268)
  %270 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %270, ptr noundef %244, i32 noundef 0, i32 noundef 2) #18
  br label %271

271:                                              ; preds = %267, %263
  %272 = icmp eq ptr %264, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %271
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 252, ptr noundef nonnull @.str.7) #18
  br label %274

274:                                              ; preds = %273, %271
  %275 = getelementptr inbounds %struct._stmt_vec_info, ptr %264, i64 0, i32 3
  %276 = load i32, ptr %275, align 8, !tbaa !137
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct._stmt_vec_info, ptr %264, i64 0, i32 4
  %280 = load i8, ptr %279, align 4, !tbaa !143
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %535, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %287 = call i64 @fwrite(ptr nonnull @.str.113, i64 5, i64 1, ptr %286)
  br label %535

288:                                              ; preds = %278, %274
  %289 = call ptr @gimple_get_lhs(ptr noundef %244) #18
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %535, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %296 = call i64 @fwrite(ptr nonnull @.str.114, i64 31, i64 1, ptr %295)
  %297 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %297, ptr noundef %244, i32 noundef 0, i32 noundef 2) #18
  br label %535

298:                                              ; preds = %288
  %299 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 14
  %303 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  br i1 %302, label %304, label %306

304:                                              ; preds = %298
  %305 = call i32 @vector_type_mode(ptr noundef %303) #18
  br label %311

306:                                              ; preds = %298
  %307 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 6
  %308 = load i32, ptr %307, align 4
  %309 = lshr i32 %308, 16
  %310 = and i32 %309, 255
  br label %311

311:                                              ; preds = %306, %304
  %312 = phi i32 [ %305, %304 ], [ %310, %306 ]
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !46
  %316 = icmp eq i8 %315, 12
  br i1 %316, label %412, label %317

317:                                              ; preds = %311
  %318 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  %319 = load i64, ptr %318, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 14
  %322 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  br i1 %321, label %323, label %325

323:                                              ; preds = %317
  %324 = call i32 @vector_type_mode(ptr noundef %322) #18
  br label %330

325:                                              ; preds = %317
  %326 = getelementptr inbounds %struct.tree_type, ptr %322, i64 0, i32 6
  %327 = load i32, ptr %326, align 4
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  br label %330

330:                                              ; preds = %325, %323
  %331 = phi i32 [ %324, %323 ], [ %329, %325 ]
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !46
  %335 = icmp eq i8 %334, 17
  br i1 %335, label %412, label %336

336:                                              ; preds = %330
  %337 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 65535
  %340 = icmp eq i64 %339, 14
  %341 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  br i1 %340, label %342, label %344

342:                                              ; preds = %336
  %343 = call i32 @vector_type_mode(ptr noundef %341) #18
  br label %349

344:                                              ; preds = %336
  %345 = getelementptr inbounds %struct.tree_type, ptr %341, i64 0, i32 6
  %346 = load i32, ptr %345, align 4
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  br label %349

349:                                              ; preds = %344, %342
  %350 = phi i32 [ %343, %342 ], [ %348, %344 ]
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !46
  %354 = icmp eq i8 %353, 13
  br i1 %354, label %412, label %355

355:                                              ; preds = %349
  %356 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  %357 = load i64, ptr %356, align 8
  %358 = and i64 %357, 65535
  %359 = icmp eq i64 %358, 14
  %360 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  br i1 %359, label %361, label %363

361:                                              ; preds = %355
  %362 = call i32 @vector_type_mode(ptr noundef %360) #18
  br label %368

363:                                              ; preds = %355
  %364 = getelementptr inbounds %struct.tree_type, ptr %360, i64 0, i32 6
  %365 = load i32, ptr %364, align 4
  %366 = lshr i32 %365, 16
  %367 = and i32 %366, 255
  br label %368

368:                                              ; preds = %363, %361
  %369 = phi i32 [ %362, %361 ], [ %367, %363 ]
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !46
  %373 = icmp eq i8 %372, 14
  br i1 %373, label %412, label %374

374:                                              ; preds = %368
  %375 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  %376 = load i64, ptr %375, align 8
  %377 = and i64 %376, 65535
  %378 = icmp eq i64 %377, 14
  %379 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  br i1 %378, label %380, label %382

380:                                              ; preds = %374
  %381 = call i32 @vector_type_mode(ptr noundef %379) #18
  br label %387

382:                                              ; preds = %374
  %383 = getelementptr inbounds %struct.tree_type, ptr %379, i64 0, i32 6
  %384 = load i32, ptr %383, align 4
  %385 = lshr i32 %384, 16
  %386 = and i32 %385, 255
  br label %387

387:                                              ; preds = %382, %380
  %388 = phi i32 [ %381, %380 ], [ %386, %382 ]
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !46
  %392 = icmp eq i8 %391, 15
  br i1 %392, label %412, label %393

393:                                              ; preds = %387
  %394 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  %395 = load i64, ptr %394, align 8
  %396 = and i64 %395, 65535
  %397 = icmp eq i64 %396, 14
  %398 = call fastcc ptr @gimple_expr_type(ptr noundef %244)
  br i1 %397, label %399, label %401

399:                                              ; preds = %393
  %400 = call i32 @vector_type_mode(ptr noundef %398) #18
  br label %406

401:                                              ; preds = %393
  %402 = getelementptr inbounds %struct.tree_type, ptr %398, i64 0, i32 6
  %403 = load i32, ptr %402, align 4
  %404 = lshr i32 %403, 16
  %405 = and i32 %404, 255
  br label %406

406:                                              ; preds = %401, %399
  %407 = phi i32 [ %400, %399 ], [ %405, %401 ]
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !46
  %411 = icmp eq i8 %410, 16
  br i1 %411, label %412, label %419

412:                                              ; preds = %406, %387, %368, %349, %330, %311
  %413 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %535, label %415

415:                                              ; preds = %412
  %416 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %417 = call i64 @fwrite(ptr nonnull @.str.115, i64 36, i64 1, ptr %416)
  %418 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %418, ptr noundef %244, i32 noundef 0, i32 noundef 2) #18
  br label %535

419:                                              ; preds = %406
  %420 = getelementptr inbounds %struct._stmt_vec_info, ptr %264, i64 0, i32 5
  %421 = load ptr, ptr %420, align 8, !tbaa !138
  %422 = icmp eq ptr %421, null
  %423 = getelementptr inbounds %struct._stmt_vec_info, ptr %264, i64 0, i32 7
  %424 = load ptr, ptr %423, align 8, !tbaa !144
  %425 = icmp eq ptr %424, null
  br i1 %422, label %460, label %426

426:                                              ; preds = %419
  br i1 %425, label %427, label %458

427:                                              ; preds = %426
  %428 = getelementptr inbounds %struct._stmt_vec_info, ptr %264, i64 0, i32 14
  %429 = load ptr, ptr %428, align 8, !tbaa !83
  %430 = icmp eq ptr %429, null
  br i1 %430, label %457, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.gimple_statement_base, ptr %429, i64 0, i32 1
  %433 = load i32, ptr %432, align 4, !tbaa !46
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %450, label %435

435:                                              ; preds = %431
  %436 = load ptr, ptr @stmt_vec_info_vec, align 8
  %437 = icmp eq ptr %436, null
  br i1 %437, label %440, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %436, align 8, !tbaa !81
  br label %440

440:                                              ; preds = %438, %435
  %441 = phi i32 [ %439, %438 ], [ 0, %435 ]
  %442 = icmp ugt i32 %433, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %444

444:                                              ; preds = %443, %440
  %445 = load ptr, ptr @stmt_vec_info_vec, align 8
  %446 = add i32 %433, -1
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %445, i64 0, i32 2, i64 %447
  %449 = load ptr, ptr %448, align 8, !tbaa !35
  br label %450

450:                                              ; preds = %444, %431
  %451 = phi ptr [ %449, %444 ], [ null, %431 ]
  %452 = icmp eq ptr %451, null
  br i1 %452, label %457, label %453

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct._stmt_vec_info, ptr %451, i64 0, i32 13
  %455 = load i8, ptr %454, align 8, !tbaa !86
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %457, label %458

457:                                              ; preds = %453, %450, %427
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 289, ptr noundef nonnull @.str.7) #18
  br label %458

458:                                              ; preds = %453, %457, %426
  %459 = load ptr, ptr %420, align 8, !tbaa !138
  br label %511

460:                                              ; preds = %419
  br i1 %425, label %461, label %491

461:                                              ; preds = %460
  %462 = getelementptr inbounds %struct._stmt_vec_info, ptr %264, i64 0, i32 14
  %463 = load ptr, ptr %462, align 8, !tbaa !83
  %464 = icmp eq ptr %463, null
  br i1 %464, label %492, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.gimple_statement_base, ptr %463, i64 0, i32 1
  %467 = load i32, ptr %466, align 4, !tbaa !46
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %484, label %469

469:                                              ; preds = %465
  %470 = load ptr, ptr @stmt_vec_info_vec, align 8
  %471 = icmp eq ptr %470, null
  br i1 %471, label %474, label %472

472:                                              ; preds = %469
  %473 = load i32, ptr %470, align 8, !tbaa !81
  br label %474

474:                                              ; preds = %472, %469
  %475 = phi i32 [ %473, %472 ], [ 0, %469 ]
  %476 = icmp ugt i32 %467, %475
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %478

478:                                              ; preds = %477, %474
  %479 = load ptr, ptr @stmt_vec_info_vec, align 8
  %480 = add i32 %467, -1
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %479, i64 0, i32 2, i64 %481
  %483 = load ptr, ptr %482, align 8, !tbaa !35
  br label %484

484:                                              ; preds = %478, %465
  %485 = phi ptr [ %483, %478 ], [ null, %465 ]
  %486 = icmp eq ptr %485, null
  br i1 %486, label %492, label %487

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct._stmt_vec_info, ptr %485, i64 0, i32 13
  %489 = load i8, ptr %488, align 8, !tbaa !86
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %487, %460
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 295, ptr noundef nonnull @.str.7) #18
  br label %492

492:                                              ; preds = %461, %484, %487, %491
  %493 = call ptr @vect_get_smallest_scalar_type(ptr noundef %244, ptr noundef nonnull %2, ptr noundef nonnull %2) #18
  %494 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %500, label %496

496:                                              ; preds = %492
  %497 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %498 = call i64 @fwrite(ptr nonnull @.str.108, i64 30, i64 1, ptr %497)
  %499 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %499, ptr noundef %493, i32 noundef 2) #18
  br label %500

500:                                              ; preds = %496, %492
  %501 = call ptr @get_vectype_for_scalar_type(ptr noundef %493) #18
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %510

503:                                              ; preds = %500
  %504 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %535, label %506

506:                                              ; preds = %503
  %507 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %508 = call i64 @fwrite(ptr nonnull @.str.109, i64 38, i64 1, ptr %507)
  %509 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %509, ptr noundef %493, i32 noundef 2) #18
  br label %535

510:                                              ; preds = %500
  store ptr %501, ptr %420, align 8, !tbaa !138
  br label %511

511:                                              ; preds = %510, %458
  %512 = phi ptr [ %459, %458 ], [ %501, %510 ]
  %513 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %519, label %515

515:                                              ; preds = %511
  %516 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %517 = call i64 @fwrite(ptr nonnull @.str.110, i64 9, i64 1, ptr %516)
  %518 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %518, ptr noundef %512, i32 noundef 2) #18
  br label %519

519:                                              ; preds = %515, %511
  %520 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 6
  %521 = load i32, ptr %520, align 4
  %522 = and i32 %521, 1023
  %523 = zext nneg i32 %522 to i64
  %524 = shl nuw i64 1, %523
  %525 = trunc i64 %524 to i32
  %526 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %531, label %528

528:                                              ; preds = %519
  %529 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %530 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %529, ptr noundef nonnull @.str.111, i32 noundef %525)
  br label %531

531:                                              ; preds = %528, %519
  %532 = icmp eq i32 %242, 0
  %533 = call i32 @llvm.umax.i32(i32 %242, i32 %525)
  %534 = select i1 %532, i32 %525, i32 %533
  br label %535

535:                                              ; preds = %531, %506, %503, %415, %412, %294, %291, %285, %282
  %536 = phi i32 [ %534, %531 ], [ %242, %285 ], [ %242, %282 ], [ %242, %294 ], [ %242, %291 ], [ %242, %415 ], [ %242, %412 ], [ %242, %506 ], [ %242, %503 ]
  %537 = phi i32 [ 0, %531 ], [ 10, %285 ], [ 10, %282 ], [ 1, %294 ], [ 1, %291 ], [ 1, %415 ], [ 1, %412 ], [ 1, %506 ], [ 1, %503 ]
  switch i32 %537, label %542 [
    i32 0, label %538
    i32 10, label %538
  ]

538:                                              ; preds = %535, %535
  %539 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %243, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !68
  %541 = icmp eq ptr %540, null
  br i1 %541, label %542, label %241, !llvm.loop !145

542:                                              ; preds = %538, %535, %238, %189, %186
  %543 = phi i32 [ %131, %189 ], [ %131, %186 ], [ %222, %238 ], [ %536, %535 ], [ %536, %538 ]
  %544 = phi i32 [ 1, %189 ], [ 1, %186 ], [ 0, %238 ], [ 0, %538 ], [ %537, %535 ]
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %120, label %565

546:                                              ; preds = %120, %116
  %547 = phi i32 [ 0, %116 ], [ %543, %120 ]
  %548 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %546
  %551 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %552 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %551, ptr noundef nonnull @.str.116, i32 noundef %547)
  br label %553

553:                                              ; preds = %550, %546
  %554 = icmp ult i32 %547, 2
  br i1 %554, label %555, label %561

555:                                              ; preds = %553
  %556 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %565, label %558

558:                                              ; preds = %555
  %559 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %560 = call i64 @fwrite(ptr nonnull @.str.117, i64 37, i64 1, ptr %559)
  br label %565

561:                                              ; preds = %553
  %562 = getelementptr inbounds %struct._loop_vec_info, ptr %61, i64 0, i32 6
  store i32 %547, ptr %562, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %563 = call zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef nonnull %61, ptr noundef null) #18
  %564 = icmp eq i8 %563, 0
  br i1 %564, label %572, label %579

565:                                              ; preds = %542, %555, %558
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %566 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %565
  %569 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %570 = call i64 @fwrite(ptr nonnull @.str.26, i64 37, i64 1, ptr %569)
  br label %571

571:                                              ; preds = %568, %565
  call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

572:                                              ; preds = %561
  %573 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %572
  %576 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %577 = call i64 @fwrite(ptr nonnull @.str.27, i64 20, i64 1, ptr %576)
  br label %578

578:                                              ; preds = %575, %572
  call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

579:                                              ; preds = %561
  %580 = call zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef nonnull %61, ptr noundef null) #18
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %582, label %589

582:                                              ; preds = %579
  %583 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %588, label %585

585:                                              ; preds = %582
  %586 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %587 = call i64 @fwrite(ptr nonnull @.str.28, i64 16, i64 1, ptr %586)
  br label %588

588:                                              ; preds = %585, %582
  call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

589:                                              ; preds = %579
  %590 = call zeroext i8 @vect_prune_runtime_alias_test_list(ptr noundef nonnull %61) #18
  %591 = icmp eq i8 %590, 0
  br i1 %591, label %592, label %599

592:                                              ; preds = %589
  %593 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %592
  %596 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %597 = call i64 @fwrite(ptr nonnull @.str.29, i64 53, i64 1, ptr %596)
  br label %598

598:                                              ; preds = %595, %592
  call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

599:                                              ; preds = %589
  %600 = call zeroext i8 @vect_analyze_slp(ptr noundef nonnull %61, ptr noundef null) #18
  %601 = icmp eq i8 %600, 0
  br i1 %601, label %603, label %602

602:                                              ; preds = %599
  call void @vect_make_slp_decision(ptr noundef nonnull %61) #18
  call void @vect_detect_hybrid_slp(ptr noundef nonnull %61) #18
  br label %603

603:                                              ; preds = %602, %599
  %604 = call zeroext i8 @vect_enhance_data_refs_alignment(ptr noundef nonnull %61) #18
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %606, label %613

606:                                              ; preds = %603
  %607 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %612, label %609

609:                                              ; preds = %606
  %610 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %611 = call i64 @fwrite(ptr nonnull @.str.25, i64 19, i64 1, ptr %610)
  br label %612

612:                                              ; preds = %609, %606
  call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

613:                                              ; preds = %603
  %614 = call fastcc zeroext i8 @vect_analyze_loop_operations(ptr noundef nonnull %61)
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %616, label %623

616:                                              ; preds = %613
  %617 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %622, label %619

619:                                              ; preds = %616
  %620 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %621 = call i64 @fwrite(ptr nonnull @.str.30, i64 40, i64 1, ptr %620)
  br label %622

622:                                              ; preds = %619, %616
  call void @destroy_loop_vec_info(ptr noundef nonnull %61, i8 noundef zeroext 1)
  br label %625

623:                                              ; preds = %613
  %624 = getelementptr inbounds %struct._loop_vec_info, ptr %61, i64 0, i32 5
  store i8 1, ptr %624, align 4, !tbaa !135
  br label %625

625:                                              ; preds = %63, %66, %54, %57, %623, %622, %612, %598, %588, %578, %571, %104, %94, %78
  %626 = phi ptr [ %61, %623 ], [ null, %622 ], [ null, %612 ], [ null, %598 ], [ null, %588 ], [ null, %578 ], [ null, %571 ], [ null, %104 ], [ null, %94 ], [ null, %78 ], [ null, %57 ], [ null, %54 ], [ null, %66 ], [ null, %63 ]
  ret ptr %626
}

declare zeroext i8 @vect_analyze_data_refs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_pattern_recog(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_mark_stmts_to_be_vectorized(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_prune_runtime_alias_test_list(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_slp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_make_slp_decision(ptr noundef) local_unnamed_addr #3

declare void @vect_detect_hybrid_slp(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_enhance_data_refs_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_analyze_loop_operations(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #18
  store i8 0, ptr %2, align 1, !tbaa !46
  %9 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %13 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 36, i64 1, ptr %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !124
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1099, ptr noundef nonnull @.str.7) #18
  br label %19

19:                                               ; preds = %14, %18
  %20 = load i32, ptr %15, align 8, !tbaa !124
  %21 = icmp sgt i32 %8, 0
  br i1 %21, label %22, label %215

22:                                               ; preds = %19
  %23 = zext nneg i32 %8 to i64
  br label %27

24:                                               ; preds = %212
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %215, label %27, !llvm.loop !146

27:                                               ; preds = %22, %24
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = phi i8 [ 1, %22 ], [ %213, %24 ]
  %30 = getelementptr inbounds ptr, ptr %6, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %31) #18
  %32 = load ptr, ptr %3, align 8, !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %144, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  br label %36

36:                                               ; preds = %34, %140
  %37 = phi ptr [ %32, %34 ], [ %142, %140 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !46
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr @stmt_vec_info_vec, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %43, align 8, !tbaa !81
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %46, %45 ], [ 0, %42 ]
  %49 = icmp ugt i32 %40, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %51

51:                                               ; preds = %50, %47
  %52 = load ptr, ptr @stmt_vec_info_vec, align 8
  %53 = add i32 %40, -1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %52, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %36, %51
  %58 = phi ptr [ %56, %51 ], [ null, %36 ]
  %59 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %63 = call i64 @fwrite(ptr nonnull @.str.119, i64 15, i64 1, ptr %62)
  %64 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %64, ptr noundef %38, i32 noundef 0, i32 noundef 2) #18
  br label %65

65:                                               ; preds = %61, %57
  %66 = load ptr, ptr %35, align 8, !tbaa !109
  %67 = getelementptr inbounds %struct.loop, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !95
  %69 = icmp eq ptr %68, %31
  br i1 %69, label %96, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %31, align 8, !tbaa !98
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %71, align 8, !tbaa !99
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %73
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 694, ptr noundef nonnull @.str.7) #18
  br label %77

77:                                               ; preds = %73, %76
  br i1 %69, label %96, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !137
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 4
  %84 = load i8, ptr %83, align 4, !tbaa !143
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %140, label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 16
  %88 = load i32, ptr %87, align 8, !tbaa !147
  %89 = icmp eq i32 %88, 6
  br i1 %89, label %140, label %90

90:                                               ; preds = %86
  %91 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %212, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %95 = call i64 @fwrite(ptr nonnull @.str.120, i64 42, i64 1, ptr %94)
  br label %212

96:                                               ; preds = %65, %77
  %97 = icmp eq ptr %58, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1139, ptr noundef nonnull @.str.7) #18
  br label %99

99:                                               ; preds = %96, %98
  %100 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 4
  %101 = load i8, ptr %100, align 4, !tbaa !143
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %212, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %108 = call i64 @fwrite(ptr nonnull @.str.121, i64 38, i64 1, ptr %107)
  br label %212

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 3
  %111 = load i32, ptr %110, align 8, !tbaa !137
  switch i32 %111, label %124 [
    i32 4, label %112
    i32 0, label %130
  ]

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 16
  %114 = load i32, ptr %113, align 8, !tbaa !147
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %212, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %121 = call i64 @fwrite(ptr nonnull @.str.122, i64 40, i64 1, ptr %120)
  br label %212

122:                                              ; preds = %112
  %123 = icmp eq i32 %111, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %109, %122
  store i8 1, ptr %2, align 1, !tbaa !46
  %125 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 16
  %126 = load i32, ptr %125, align 8, !tbaa !147
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call zeroext i8 @vectorizable_induction(ptr noundef %38, ptr poison, ptr noundef null), !range !148
  br label %130

130:                                              ; preds = %109, %124, %128, %122
  %131 = phi i8 [ %129, %128 ], [ 1, %124 ], [ 1, %122 ], [ 1, %109 ]
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %212, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %138 = call i64 @fwrite(ptr nonnull @.str.123, i64 44, i64 1, ptr %137)
  %139 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %139, ptr noundef %38, i32 noundef 0, i32 noundef 2) #18
  br label %212

140:                                              ; preds = %82, %130, %86
  %141 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %37, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !68
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %36, !llvm.loop !149

144:                                              ; preds = %140, %27
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 13
  %146 = load i32, ptr %145, align 8, !tbaa !70, !noalias !150
  %147 = and i32 %146, 512
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %151 = load ptr, ptr %150, align 8, !tbaa !46, !noalias !150
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %151, align 8, !tbaa !75, !noalias !150
  br label %155

155:                                              ; preds = %153, %149, %144
  %156 = phi ptr [ %154, %153 ], [ null, %149 ], [ null, %144 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %156, align 8, !tbaa !77, !noalias !150
  br label %160

160:                                              ; preds = %155, %158
  %161 = phi ptr [ %159, %158 ], [ null, %155 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %212, label %163

163:                                              ; preds = %160, %208
  %164 = phi i8 [ %207, %208 ], [ %29, %160 ]
  %165 = phi ptr [ %210, %208 ], [ %161, %160 ]
  %166 = load ptr, ptr %165, align 8, !tbaa !64
  %167 = getelementptr inbounds %struct.gimple_statement_base, ptr %166, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !46
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %185, label %170

170:                                              ; preds = %163
  %171 = load ptr, ptr @stmt_vec_info_vec, align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %171, align 8, !tbaa !81
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i32 [ %174, %173 ], [ 0, %170 ]
  %177 = icmp ugt i32 %168, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %179

179:                                              ; preds = %178, %175
  %180 = load ptr, ptr @stmt_vec_info_vec, align 8
  %181 = add i32 %168, -1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %180, i64 0, i32 2, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !35
  br label %185

185:                                              ; preds = %163, %179
  %186 = phi ptr [ %184, %179 ], [ null, %163 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1182, ptr noundef nonnull @.str.7) #18
  br label %189

189:                                              ; preds = %185, %188
  %190 = call zeroext i8 @vect_analyze_stmt(ptr noundef %166, ptr noundef nonnull %2, ptr noundef null) #18
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct._stmt_vec_info, ptr %186, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !137
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct._stmt_vec_info, ptr %186, i64 0, i32 16
  %198 = load i32, ptr %197, align 8, !tbaa !147
  %199 = add i32 %198, -5
  %200 = icmp ult i32 %199, 3
  br i1 %200, label %201, label %206

201:                                              ; preds = %196, %192
  %202 = getelementptr inbounds %struct._stmt_vec_info, ptr %186, i64 0, i32 25
  %203 = load i32, ptr %202, align 4, !tbaa !153
  %204 = icmp eq i32 %203, 1
  %205 = select i1 %204, i8 %164, i8 0
  br label %206

206:                                              ; preds = %201, %196, %189
  %207 = phi i8 [ %164, %189 ], [ %164, %196 ], [ %205, %201 ]
  br i1 %191, label %208, label %212

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %165, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !68
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %163, !llvm.loop !154

212:                                              ; preds = %206, %208, %160, %133, %136, %116, %119, %103, %106, %90, %93
  %213 = phi i8 [ %29, %93 ], [ %29, %90 ], [ %29, %106 ], [ %29, %103 ], [ %29, %119 ], [ %29, %116 ], [ %29, %136 ], [ %29, %133 ], [ %29, %160 ], [ %207, %208 ], [ %207, %206 ]
  %214 = phi i1 [ false, %93 ], [ false, %90 ], [ false, %106 ], [ false, %103 ], [ false, %119 ], [ false, %116 ], [ false, %136 ], [ false, %133 ], [ true, %160 ], [ %191, %208 ], [ %191, %206 ]
  br i1 %214, label %24, label %373

215:                                              ; preds = %24, %19
  %216 = phi i8 [ 1, %19 ], [ %213, %24 ]
  %217 = load i8, ptr %2, align 1, !tbaa !46
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %224 = call i64 @fwrite(ptr nonnull @.str.124, i64 49, i64 1, ptr %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %373, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %230 = call i64 @fwrite(ptr nonnull @.str.125, i64 55, i64 1, ptr %229)
  br label %373

231:                                              ; preds = %215
  %232 = icmp eq i8 %216, 0
  %233 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 17
  %234 = load i32, ptr %233, align 8, !tbaa !131
  br i1 %232, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 @least_common_multiple(i32 noundef %20, i32 noundef %234) #18
  br label %237

237:                                              ; preds = %231, %235
  %238 = phi i32 [ %236, %235 ], [ %234, %231 ]
  store i32 %238, ptr %15, align 8, !tbaa !124
  %239 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !97
  %241 = call i32 @host_integerp(ptr noundef %240, i32 noundef 0) #18
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %257, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr %239, align 8, !tbaa !97
  %245 = getelementptr inbounds %struct.tree_int_cst, ptr %244, i64 0, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !46
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %243
  %249 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %253 = load ptr, ptr %239, align 8, !tbaa !97
  %254 = getelementptr inbounds %struct.tree_int_cst, ptr %253, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !46
  %256 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef nonnull @.str.126, i32 noundef %238, i64 noundef %255)
  br label %257

257:                                              ; preds = %251, %248, %243, %237
  %258 = load ptr, ptr %239, align 8, !tbaa !97
  %259 = call i32 @host_integerp(ptr noundef %258, i32 noundef 0) #18
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %281, label %261

261:                                              ; preds = %257
  %262 = load ptr, ptr %239, align 8, !tbaa !97
  %263 = getelementptr inbounds %struct.tree_int_cst, ptr %262, i64 0, i32 1
  %264 = load i64, ptr %263, align 8, !tbaa !46
  %265 = icmp ne i64 %264, 0
  %266 = zext i32 %238 to i64
  %267 = icmp ult i64 %264, %266
  %268 = select i1 %265, i1 %267, i1 false
  br i1 %268, label %269, label %281

269:                                              ; preds = %261
  %270 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %274 = call i64 @fwrite(ptr nonnull @.str.127, i64 42, i64 1, ptr %273)
  br label %275

275:                                              ; preds = %272, %269
  %276 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %373, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %280 = call i64 @fwrite(ptr nonnull @.str.128, i64 66, i64 1, ptr %279)
  br label %373

281:                                              ; preds = %261, %257
  call void @vect_update_slp_costs_according_to_vf(ptr noundef nonnull %0) #18
  %282 = call i32 @vect_estimate_min_profitable_iters(ptr noundef nonnull %0)
  %283 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  store i32 %282, ptr %283, align 8, !tbaa !155
  %284 = icmp slt i32 %282, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %281
  %286 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %290 = call i64 @fwrite(ptr nonnull @.str.129, i64 45, i64 1, ptr %289)
  br label %291

291:                                              ; preds = %288, %285
  %292 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %373, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %296 = call i64 @fwrite(ptr nonnull @.str.130, i64 56, i64 1, ptr %295)
  br label %373

297:                                              ; preds = %281
  %298 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %299 = getelementptr inbounds %struct.param_info, ptr %298, i64 11, i32 1
  %300 = load i32, ptr %299, align 8, !tbaa !126
  %301 = load ptr, ptr %239, align 8, !tbaa !97
  %302 = call i32 @host_integerp(ptr noundef %301, i32 noundef 0) #18
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %331, label %304

304:                                              ; preds = %297
  %305 = icmp eq i32 %282, 0
  %306 = mul i32 %300, %238
  %307 = add i32 %306, -1
  %308 = icmp eq i32 %307, 0
  %309 = call i32 @llvm.smax.i32(i32 %282, i32 %307)
  %310 = select i1 %308, i32 %282, i32 %309
  %311 = select i1 %305, i32 %307, i32 %310
  %312 = load ptr, ptr %239, align 8, !tbaa !97
  %313 = getelementptr inbounds %struct.tree_int_cst, ptr %312, i64 0, i32 1
  %314 = load i64, ptr %313, align 8, !tbaa !46
  %315 = freeze i32 %311
  %316 = zext i32 %315 to i64
  %317 = add i64 %314, -1
  %318 = icmp ult i64 %317, %316
  br i1 %318, label %319, label %331

319:                                              ; preds = %304
  %320 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %324 = call i64 @fwrite(ptr nonnull @.str.129, i64 45, i64 1, ptr %323)
  br label %325

325:                                              ; preds = %322, %319
  %326 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %373, label %328

328:                                              ; preds = %325
  %329 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %330 = call i64 @fwrite(ptr nonnull @.str.131, i64 147, i64 1, ptr %329)
  br label %373

331:                                              ; preds = %304, %297
  %332 = load ptr, ptr %239, align 8, !tbaa !97
  %333 = call i32 @host_integerp(ptr noundef %332, i32 noundef 0) #18
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %348, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %239, align 8, !tbaa !97
  %337 = getelementptr inbounds %struct.tree_int_cst, ptr %336, i64 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !46
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %348, label %340

340:                                              ; preds = %335
  %341 = zext i32 %238 to i64
  %342 = urem i64 %338, %341
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %346 = load i32, ptr %345, align 8, !tbaa !123
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %373, label %348

348:                                              ; preds = %344, %340, %335, %331
  %349 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %353 = call i64 @fwrite(ptr nonnull @.str.132, i64 21, i64 1, ptr %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = call zeroext i8 @vect_can_advance_ivs_p(ptr noundef nonnull %0) #18
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %373, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %362 = call i64 @fwrite(ptr nonnull @.str.133, i64 43, i64 1, ptr %361)
  br label %373

363:                                              ; preds = %354
  %364 = call ptr @single_exit(ptr noundef %4) #18
  %365 = call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %4, ptr noundef %364) #18
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %363
  %368 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %372 = call i64 @fwrite(ptr nonnull @.str.134, i64 43, i64 1, ptr %371)
  br label %373

373:                                              ; preds = %212, %344, %363, %367, %370, %357, %360, %325, %328, %291, %294, %275, %278, %225, %228
  %374 = phi i8 [ 0, %228 ], [ 0, %225 ], [ 0, %278 ], [ 0, %275 ], [ 0, %294 ], [ 0, %291 ], [ 0, %328 ], [ 0, %325 ], [ 0, %360 ], [ 0, %357 ], [ 0, %370 ], [ 0, %367 ], [ 1, %363 ], [ 1, %344 ], [ 0, %212 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  ret i8 %374
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_is_simple_reduction(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = load ptr, ptr %0, align 8, !tbaa !54
  %10 = tail call ptr @loop_latch_edge(ptr noundef %8) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !156
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp ult i32 %14, %12
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %17

17:                                               ; preds = %4, %16
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !157
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  store i8 0, ptr %3, align 1, !tbaa !46
  %22 = icmp ne i8 %2, 0
  %23 = icmp eq ptr %8, %9
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %9, ptr noundef %8) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1585, ptr noundef nonnull @.str.7) #18
  br label %31

31:                                               ; preds = %17, %27, %30
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 5
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 5, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  %37 = icmp eq ptr %36, %34
  br i1 %37, label %141, label %38

38:                                               ; preds = %31, %135
  %39 = phi ptr [ %139, %135 ], [ %36, %31 ]
  %40 = phi i32 [ %133, %135 ], [ 0, %31 ]
  %41 = phi ptr [ %137, %135 ], [ %36, %31 ]
  %42 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %132, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.gimple_statement_base, ptr %43, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %49) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %123, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %43, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !46
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @stmt_vec_info_vec, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !81
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %60, %59 ], [ 0, %56 ]
  %63 = icmp ugt i32 %54, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %65

65:                                               ; preds = %64, %61
  %66 = load ptr, ptr @stmt_vec_info_vec, align 8
  %67 = add i32 %54, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %66, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %52, %65
  %72 = phi ptr [ %70, %65 ], [ null, %52 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %123, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %53, align 4, !tbaa !46
  %76 = icmp ne i32 %75, 0
  tail call void @llvm.assume(i1 %76)
  %77 = load ptr, ptr @stmt_vec_info_vec, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %77, align 8, !tbaa !81
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi i32 [ %80, %79 ], [ 0, %74 ]
  %83 = icmp ugt i32 %75, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %85

85:                                               ; preds = %84, %81
  %86 = load ptr, ptr @stmt_vec_info_vec, align 8
  %87 = add i32 %75, -1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %86, i64 0, i32 2, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct._stmt_vec_info, ptr %90, i64 0, i32 14
  %92 = load ptr, ptr %91, align 8, !tbaa !83
  %93 = icmp eq ptr %92, null
  br i1 %93, label %119, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.gimple_statement_base, ptr %92, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !46
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = icmp eq ptr %86, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = load i32, ptr %86, align 8, !tbaa !81
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %101, %100 ], [ 0, %98 ]
  %104 = icmp ugt i32 %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %106

106:                                              ; preds = %105, %102
  %107 = load ptr, ptr @stmt_vec_info_vec, align 8
  %108 = add i32 %96, -1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %107, i64 0, i32 2, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  br label %112

112:                                              ; preds = %106, %94
  %113 = phi ptr [ %111, %106 ], [ null, %94 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 13
  %117 = load i8, ptr %116, align 8, !tbaa !86
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %112, %85
  br label %120

120:                                              ; preds = %115, %119
  %121 = phi i32 [ 1, %119 ], [ 0, %115 ]
  %122 = add nsw i32 %121, %40
  br label %123

123:                                              ; preds = %120, %71, %47
  %124 = phi i32 [ %40, %71 ], [ %40, %47 ], [ %122, %120 ]
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %131 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 23, i64 1, ptr %130)
  br label %132

132:                                              ; preds = %123, %126, %129, %38
  %133 = phi i32 [ %40, %38 ], [ %124, %129 ], [ %124, %126 ], [ %124, %123 ]
  %134 = phi i32 [ 4, %38 ], [ 1, %129 ], [ 1, %126 ], [ 0, %123 ]
  switch i32 %134, label %933 [
    i32 0, label %135
    i32 4, label %135
  ]

135:                                              ; preds = %132, %132
  %136 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !159
  %138 = icmp eq ptr %137, %34
  %139 = select i1 %138, ptr null, ptr %137
  %140 = icmp eq ptr %137, %34
  br i1 %140, label %141, label %38, !llvm.loop !160

141:                                              ; preds = %135, %31
  %142 = load i64, ptr %21, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 141
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %933, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %150 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 25, i64 1, ptr %149)
  %151 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %151, ptr noundef nonnull %21, i32 noundef 2) #18
  br label %933

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %933, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %161 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 23, i64 1, ptr %160)
  br label %933

162:                                              ; preds = %152
  %163 = load i32, ptr %154, align 8
  %164 = and i32 %163, 255
  %165 = icmp eq i32 %164, 6
  %166 = trunc i32 %163 to i8
  switch i8 %166, label %167 [
    i8 16, label %172
    i8 6, label %172
  ]

167:                                              ; preds = %162
  %168 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %933, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %171, ptr noundef %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

172:                                              ; preds = %162, %162
  br i1 %165, label %173, label %184

173:                                              ; preds = %172
  %174 = zext nneg i32 %164 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !50
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !161
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %182

182:                                              ; preds = %181, %173
  %183 = getelementptr inbounds i8, ptr %154, i64 %179
  br label %186

184:                                              ; preds = %172
  %185 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 3
  br label %186

186:                                              ; preds = %182, %184
  %187 = phi ptr [ %185, %184 ], [ %183, %182 ]
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = getelementptr inbounds %struct.tree_ssa_name, ptr %188, i64 0, i32 5
  %190 = getelementptr inbounds %struct.tree_ssa_name, ptr %188, i64 0, i32 5, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !159
  %192 = icmp eq ptr %191, %189
  br i1 %192, label %296, label %193

193:                                              ; preds = %186, %290
  %194 = phi ptr [ %294, %290 ], [ %191, %186 ]
  %195 = phi i32 [ %288, %290 ], [ 0, %186 ]
  %196 = phi ptr [ %292, %290 ], [ %191, %186 ]
  %197 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %194, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !46
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 255
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %287, label %202

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.gimple_statement_base, ptr %198, i64 0, i32 4
  %204 = load ptr, ptr %203, align 8, !tbaa !46
  %205 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %204) #18
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %278, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.gimple_statement_base, ptr %198, i64 0, i32 1
  %209 = load i32, ptr %208, align 4, !tbaa !46
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr @stmt_vec_info_vec, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load i32, ptr %212, align 8, !tbaa !81
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi i32 [ %215, %214 ], [ 0, %211 ]
  %218 = icmp ugt i32 %209, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %220

220:                                              ; preds = %219, %216
  %221 = load ptr, ptr @stmt_vec_info_vec, align 8
  %222 = add i32 %209, -1
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %221, i64 0, i32 2, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !35
  br label %226

226:                                              ; preds = %207, %220
  %227 = phi ptr [ %225, %220 ], [ null, %207 ]
  %228 = icmp eq ptr %227, null
  br i1 %228, label %278, label %229

229:                                              ; preds = %226
  %230 = load i32, ptr %208, align 4, !tbaa !46
  %231 = icmp ne i32 %230, 0
  tail call void @llvm.assume(i1 %231)
  %232 = load ptr, ptr @stmt_vec_info_vec, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %232, align 8, !tbaa !81
  br label %236

236:                                              ; preds = %234, %229
  %237 = phi i32 [ %235, %234 ], [ 0, %229 ]
  %238 = icmp ugt i32 %230, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %240

240:                                              ; preds = %239, %236
  %241 = load ptr, ptr @stmt_vec_info_vec, align 8
  %242 = add i32 %230, -1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %241, i64 0, i32 2, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !35
  %246 = getelementptr inbounds %struct._stmt_vec_info, ptr %245, i64 0, i32 14
  %247 = load ptr, ptr %246, align 8, !tbaa !83
  %248 = icmp eq ptr %247, null
  br i1 %248, label %274, label %249

249:                                              ; preds = %240
  %250 = getelementptr inbounds %struct.gimple_statement_base, ptr %247, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !46
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %267, label %253

253:                                              ; preds = %249
  %254 = icmp eq ptr %241, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %253
  %256 = load i32, ptr %241, align 8, !tbaa !81
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %256, %255 ], [ 0, %253 ]
  %259 = icmp ugt i32 %251, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %261

261:                                              ; preds = %260, %257
  %262 = load ptr, ptr @stmt_vec_info_vec, align 8
  %263 = add i32 %251, -1
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %262, i64 0, i32 2, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  br label %267

267:                                              ; preds = %261, %249
  %268 = phi ptr [ %266, %261 ], [ null, %249 ]
  %269 = icmp eq ptr %268, null
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct._stmt_vec_info, ptr %268, i64 0, i32 13
  %272 = load i8, ptr %271, align 8, !tbaa !86
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270, %267, %240
  br label %275

275:                                              ; preds = %270, %274
  %276 = phi i32 [ 1, %274 ], [ 0, %270 ]
  %277 = add nsw i32 %276, %195
  br label %278

278:                                              ; preds = %275, %226, %202
  %279 = phi i32 [ %195, %226 ], [ %195, %202 ], [ %277, %275 ]
  %280 = icmp sgt i32 %279, 1
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %286 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 23, i64 1, ptr %285)
  br label %287

287:                                              ; preds = %278, %281, %284, %193
  %288 = phi i32 [ %195, %193 ], [ %279, %284 ], [ %279, %281 ], [ %279, %278 ]
  %289 = phi i32 [ 7, %193 ], [ 1, %284 ], [ 1, %281 ], [ 0, %278 ]
  switch i32 %289, label %933 [
    i32 0, label %290
    i32 7, label %290
  ]

290:                                              ; preds = %287, %287
  %291 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %196, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !159
  %293 = icmp eq ptr %292, %189
  %294 = select i1 %293, ptr null, ptr %292
  %295 = icmp eq ptr %292, %189
  br i1 %295, label %296, label %193, !llvm.loop !162

296:                                              ; preds = %290, %186
  br i1 %165, label %342, label %297

297:                                              ; preds = %296
  %298 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 4, i64 0, i32 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !157
  %300 = load ptr, ptr %299, align 8, !tbaa !35
  %301 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !46
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %308

304:                                              ; preds = %297
  %305 = load i64, ptr %300, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 141
  br i1 %307, label %314, label %308

308:                                              ; preds = %304, %297
  %309 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %933, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %313 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 32, i64 1, ptr %312)
  br label %933

314:                                              ; preds = %304
  %315 = getelementptr inbounds %struct.tree_ssa_name, ptr %300, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !46
  %317 = getelementptr inbounds %struct.gimple_statement_base, ptr %154, i64 0, i32 4
  %318 = load ptr, ptr %317, align 8, !tbaa !46
  %319 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %318) #18
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %933, label %321

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 8
  %323 = load ptr, ptr %322, align 8, !tbaa !94
  %324 = icmp eq ptr %323, null
  br i1 %324, label %933, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.gimple_statement_base, ptr %316, i64 0, i32 4
  %327 = load ptr, ptr %326, align 8, !tbaa !46
  %328 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %323, ptr noundef %327) #18
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %933, label %330

330:                                              ; preds = %325
  %331 = load i32, ptr %316, align 8
  %332 = and i32 %331, 255
  %333 = icmp eq i32 %332, 6
  br i1 %333, label %334, label %933

334:                                              ; preds = %330
  %335 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %339 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 27, i64 1, ptr %338)
  %340 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %340, ptr noundef %154, i32 noundef 0, i32 noundef 2) #18
  br label %341

341:                                              ; preds = %337, %334
  store i8 1, ptr %3, align 1, !tbaa !46
  br label %933

342:                                              ; preds = %296
  %343 = load i32, ptr %154, align 8
  %344 = trunc i32 %343 to i8
  switch i8 %344, label %347 [
    i8 6, label %345
    i8 1, label %345
    i8 8, label %348
  ]

345:                                              ; preds = %342, %342
  %346 = lshr i32 %343, 16
  br label %348

347:                                              ; preds = %342
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %348

348:                                              ; preds = %347, %345, %342
  %349 = phi i32 [ %346, %345 ], [ 0, %347 ], [ 59, %342 ]
  %350 = zext nneg i32 %349 to i64
  %351 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !46
  %353 = icmp eq i8 %352, 3
  br i1 %353, label %354, label %374

354:                                              ; preds = %348
  %355 = load i32, ptr %154, align 8
  %356 = and i32 %355, 255
  %357 = add nsw i32 %356, -1
  %358 = icmp ult i32 %357, 9
  tail call void @llvm.assume(i1 %358)
  %359 = zext nneg i32 %356 to i64
  %360 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !50
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %362
  %364 = load i64, ptr %363, align 8, !tbaa !161
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %354
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %367

367:                                              ; preds = %366, %354
  %368 = getelementptr inbounds i8, ptr %154, i64 %364
  %369 = getelementptr inbounds ptr, ptr %368, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !35
  %371 = load i64, ptr %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = and i32 %372, 65535
  br label %374

374:                                              ; preds = %348, %367
  %375 = phi i32 [ %373, %367 ], [ %349, %348 ]
  br i1 %22, label %376, label %389

376:                                              ; preds = %374
  %377 = tail call zeroext i8 @commutative_tree_code(i32 noundef %375) #18
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = tail call zeroext i8 @associative_tree_code(i32 noundef %375) #18
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %379, %376
  %383 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %933, label %385

385:                                              ; preds = %382
  %386 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %387 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 40, i64 1, ptr %386)
  %388 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %388, ptr noundef %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

389:                                              ; preds = %379, %374
  %390 = zext nneg i32 %375 to i64
  %391 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !46
  %393 = icmp eq i8 %392, 1
  br i1 %393, label %485, label %394

394:                                              ; preds = %389
  %395 = icmp eq i32 %375, 56
  br i1 %395, label %403, label %396

396:                                              ; preds = %394
  %397 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %933, label %399

399:                                              ; preds = %396
  %400 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %401 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 33, i64 1, ptr %400)
  %402 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %402, ptr noundef %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

403:                                              ; preds = %394
  %404 = load i32, ptr %154, align 8
  %405 = and i32 %404, 255
  %406 = add nsw i32 %405, -1
  %407 = icmp ult i32 %406, 9
  tail call void @llvm.assume(i1 %407)
  %408 = zext nneg i32 %405 to i64
  %409 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !50
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !161
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %403
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %416

416:                                              ; preds = %415, %403
  %417 = getelementptr inbounds i8, ptr %154, i64 %413
  %418 = getelementptr inbounds ptr, ptr %417, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !35
  %420 = getelementptr inbounds %struct.tree_exp, ptr %419, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !46
  %422 = load i64, ptr %421, align 8
  %423 = and i64 %422, 65535
  %424 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !50
  %426 = icmp eq i32 %425, 5
  br i1 %426, label %427, label %432

427:                                              ; preds = %416
  %428 = getelementptr inbounds %struct.tree_exp, ptr %421, i64 0, i32 3
  %429 = getelementptr inbounds %struct.tree_exp, ptr %421, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !46
  %431 = load ptr, ptr %428, align 8, !tbaa !46
  br label %432

432:                                              ; preds = %427, %416
  %433 = phi ptr [ %431, %427 ], [ %421, %416 ]
  %434 = phi ptr [ %430, %427 ], [ null, %416 ]
  %435 = load i32, ptr %154, align 8
  %436 = and i32 %435, 255
  %437 = add nsw i32 %436, -1
  %438 = icmp ult i32 %437, 9
  tail call void @llvm.assume(i1 %438)
  %439 = zext nneg i32 %436 to i64
  %440 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !50
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %442
  %444 = load i64, ptr %443, align 8, !tbaa !161
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %432
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %447

447:                                              ; preds = %446, %432
  %448 = getelementptr inbounds i8, ptr %154, i64 %444
  %449 = getelementptr inbounds ptr, ptr %448, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !35
  %451 = getelementptr inbounds %struct.tree_exp, ptr %450, i64 1
  %452 = load ptr, ptr %451, align 8, !tbaa !46
  %453 = load i32, ptr %154, align 8
  %454 = and i32 %453, 255
  %455 = add nsw i32 %454, -1
  %456 = icmp ult i32 %455, 9
  tail call void @llvm.assume(i1 %456)
  %457 = zext nneg i32 %454 to i64
  %458 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !50
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !161
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %447
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %465

465:                                              ; preds = %464, %447
  %466 = getelementptr inbounds i8, ptr %154, i64 %462
  %467 = getelementptr inbounds ptr, ptr %466, i64 1
  %468 = load ptr, ptr %467, align 8, !tbaa !35
  %469 = getelementptr inbounds %struct.tree_exp, ptr %468, i64 1, i32 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !46
  %471 = load i64, ptr %452, align 8
  %472 = and i64 %471, 65535
  %473 = icmp eq i64 %472, 141
  br i1 %473, label %542, label %474

474:                                              ; preds = %465
  %475 = load i64, ptr %470, align 8
  %476 = and i64 %475, 65535
  %477 = icmp eq i64 %476, 141
  br i1 %477, label %542, label %478

478:                                              ; preds = %474
  %479 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %933, label %481

481:                                              ; preds = %478
  %482 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %483 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 31, i64 1, ptr %482)
  %484 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %484, ptr noundef %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

485:                                              ; preds = %389
  %486 = load i32, ptr %154, align 8
  %487 = and i32 %486, 255
  %488 = add nsw i32 %487, -10
  %489 = icmp ult i32 %488, -9
  br i1 %489, label %503, label %490

490:                                              ; preds = %485
  %491 = zext nneg i32 %487 to i64
  %492 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !50
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !161
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %490
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %499

499:                                              ; preds = %498, %490
  %500 = getelementptr inbounds i8, ptr %154, i64 %496
  %501 = getelementptr inbounds ptr, ptr %500, i64 1
  %502 = load ptr, ptr %501, align 8, !tbaa !35
  br label %503

503:                                              ; preds = %485, %499
  %504 = phi ptr [ %502, %499 ], [ null, %485 ]
  %505 = getelementptr inbounds %struct.gimple_statement_base, ptr %154, i64 0, i32 3
  %506 = load i32, ptr %505, align 4, !tbaa !46
  %507 = icmp ugt i32 %506, 2
  br i1 %507, label %508, label %526

508:                                              ; preds = %503
  %509 = load i32, ptr %154, align 8
  %510 = and i32 %509, 255
  %511 = add nsw i32 %510, -10
  %512 = icmp ult i32 %511, -9
  br i1 %512, label %526, label %513

513:                                              ; preds = %508
  %514 = zext nneg i32 %510 to i64
  %515 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !50
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %517
  %519 = load i64, ptr %518, align 8, !tbaa !161
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %513
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %522

522:                                              ; preds = %521, %513
  %523 = getelementptr inbounds i8, ptr %154, i64 %519
  %524 = getelementptr inbounds ptr, ptr %523, i64 2
  %525 = load ptr, ptr %524, align 8, !tbaa !35
  br label %526

526:                                              ; preds = %503, %508, %522
  %527 = phi ptr [ null, %503 ], [ %525, %522 ], [ null, %508 ]
  %528 = load i64, ptr %504, align 8
  %529 = and i64 %528, 65535
  %530 = icmp eq i64 %529, 141
  br i1 %530, label %531, label %535

531:                                              ; preds = %526
  %532 = load i64, ptr %527, align 8
  %533 = and i64 %532, 65535
  %534 = icmp eq i64 %533, 141
  br i1 %534, label %542, label %535

535:                                              ; preds = %531, %526
  %536 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %933, label %538

538:                                              ; preds = %535
  %539 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %540 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 31, i64 1, ptr %539)
  %541 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %541, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

542:                                              ; preds = %531, %465, %474
  %543 = phi ptr [ %452, %474 ], [ %452, %465 ], [ %504, %531 ]
  %544 = phi ptr [ %470, %474 ], [ %470, %465 ], [ %527, %531 ]
  %545 = phi ptr [ %433, %474 ], [ %433, %465 ], [ null, %531 ]
  %546 = phi ptr [ %434, %474 ], [ %434, %465 ], [ null, %531 ]
  %547 = load i32, ptr %154, align 8
  %548 = and i32 %547, 255
  %549 = add nsw i32 %548, -1
  %550 = icmp ult i32 %549, 9
  tail call void @llvm.assume(i1 %550)
  %551 = zext nneg i32 %548 to i64
  %552 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %551
  %553 = load i32, ptr %552, align 4, !tbaa !50
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !161
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %558, label %559

558:                                              ; preds = %542
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %559

559:                                              ; preds = %558, %542
  %560 = getelementptr inbounds i8, ptr %154, i64 %556
  %561 = load ptr, ptr %560, align 8, !tbaa !35
  %562 = getelementptr inbounds %struct.tree_common, ptr %561, i64 0, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !46
  %564 = load i64, ptr %543, align 8
  %565 = and i64 %564, 65535
  %566 = icmp eq i64 %565, 141
  br i1 %566, label %567, label %572

567:                                              ; preds = %559
  %568 = getelementptr inbounds %struct.tree_common, ptr %543, i64 0, i32 2
  %569 = load ptr, ptr %568, align 8, !tbaa !46
  %570 = tail call zeroext i8 @types_compatible_p(ptr noundef %563, ptr noundef %569) #18
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %603, label %572

572:                                              ; preds = %567, %559
  %573 = load i64, ptr %544, align 8
  %574 = and i64 %573, 65535
  %575 = icmp eq i64 %574, 141
  br i1 %575, label %576, label %581

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.tree_common, ptr %544, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !46
  %579 = tail call zeroext i8 @types_compatible_p(ptr noundef %563, ptr noundef %578) #18
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %603, label %581

581:                                              ; preds = %576, %572
  %582 = icmp eq ptr %545, null
  br i1 %582, label %592, label %583

583:                                              ; preds = %581
  %584 = load i64, ptr %545, align 8
  %585 = and i64 %584, 65535
  %586 = icmp eq i64 %585, 141
  br i1 %586, label %587, label %592

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.tree_common, ptr %545, i64 0, i32 2
  %589 = load ptr, ptr %588, align 8, !tbaa !46
  %590 = tail call zeroext i8 @types_compatible_p(ptr noundef %563, ptr noundef %589) #18
  %591 = icmp eq i8 %590, 0
  br i1 %591, label %603, label %592

592:                                              ; preds = %587, %583, %581
  %593 = icmp eq ptr %546, null
  br i1 %593, label %635, label %594

594:                                              ; preds = %592
  %595 = load i64, ptr %546, align 8
  %596 = and i64 %595, 65535
  %597 = icmp eq i64 %596, 141
  br i1 %597, label %598, label %635

598:                                              ; preds = %594
  %599 = getelementptr inbounds %struct.tree_common, ptr %546, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !46
  %601 = tail call zeroext i8 @types_compatible_p(ptr noundef %563, ptr noundef %600) #18
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %603, label %635

603:                                              ; preds = %598, %587, %576, %567
  %604 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %933, label %606

606:                                              ; preds = %603
  %607 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %608 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 43, i64 1, ptr %607)
  %609 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %609, ptr noundef %563, i32 noundef 2) #18
  %610 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %611 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 18, i64 1, ptr %610)
  %612 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %613 = getelementptr inbounds %struct.tree_common, ptr %543, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !46
  tail call void @print_generic_expr(ptr noundef %612, ptr noundef %614, i32 noundef 2) #18
  %615 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %616 = tail call i32 @fputc(i32 44, ptr %615)
  %617 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %618 = getelementptr inbounds %struct.tree_common, ptr %544, i64 0, i32 2
  %619 = load ptr, ptr %618, align 8, !tbaa !46
  tail call void @print_generic_expr(ptr noundef %617, ptr noundef %619, i32 noundef 2) #18
  %620 = icmp eq ptr %545, null
  br i1 %620, label %627, label %621

621:                                              ; preds = %606
  %622 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %623 = tail call i32 @fputc(i32 44, ptr %622)
  %624 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %625 = getelementptr inbounds %struct.tree_common, ptr %545, i64 0, i32 2
  %626 = load ptr, ptr %625, align 8, !tbaa !46
  tail call void @print_generic_expr(ptr noundef %624, ptr noundef %626, i32 noundef 2) #18
  br label %627

627:                                              ; preds = %621, %606
  %628 = icmp eq ptr %546, null
  br i1 %628, label %933, label %629

629:                                              ; preds = %627
  %630 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %631 = tail call i32 @fputc(i32 44, ptr %630)
  %632 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %633 = getelementptr inbounds %struct.tree_common, ptr %546, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !46
  tail call void @print_generic_expr(ptr noundef %632, ptr noundef %634, i32 noundef 2) #18
  br label %933

635:                                              ; preds = %598, %594, %592
  %636 = load i64, ptr %563, align 8
  %637 = trunc i64 %636 to i32
  %638 = and i32 %637, 65535
  %639 = icmp eq i32 %638, 9
  %640 = load i32, ptr @flag_associative_math, align 4
  %641 = icmp eq i32 %640, 0
  %642 = select i1 %639, i1 %641, i1 false
  %643 = and i1 %22, %642
  br i1 %643, label %644, label %651

644:                                              ; preds = %635
  %645 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %933, label %647

647:                                              ; preds = %644
  %648 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %649 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 40, i64 1, ptr %648)
  %650 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %650, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

651:                                              ; preds = %635
  %652 = add nsw i32 %638, -6
  %653 = icmp ult i32 %652, 3
  br i1 %653, label %654, label %668

654:                                              ; preds = %651
  %655 = and i64 %636, 2097152
  %656 = icmp eq i64 %655, 0
  %657 = load i32, ptr @flag_trapv, align 4
  %658 = icmp ne i32 %657, 0
  %659 = select i1 %656, i1 %658, i1 false
  %660 = and i1 %22, %659
  br i1 %660, label %661, label %668

661:                                              ; preds = %654
  %662 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %933, label %664

664:                                              ; preds = %661
  %665 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %666 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 41, i64 1, ptr %665)
  %667 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %667, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

668:                                              ; preds = %651, %654
  %669 = and i64 %636, 65535
  %670 = icmp eq i64 %669, 11
  br i1 %670, label %671, label %682

671:                                              ; preds = %668
  %672 = and i64 %636, 2147483648
  %673 = icmp ne i64 %672, 0
  %674 = and i1 %22, %673
  br i1 %674, label %675, label %682

675:                                              ; preds = %671
  %676 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %677 = icmp eq i8 %676, 0
  br i1 %677, label %933, label %678

678:                                              ; preds = %675
  %679 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %680 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 49, i64 1, ptr %679)
  %681 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %681, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

682:                                              ; preds = %671, %668
  %683 = load i64, ptr %543, align 8
  %684 = and i64 %683, 65535
  %685 = icmp eq i64 %684, 141
  br i1 %685, label %686, label %689

686:                                              ; preds = %682
  %687 = getelementptr inbounds %struct.tree_ssa_name, ptr %543, i64 0, i32 2
  %688 = load ptr, ptr %687, align 8, !tbaa !46
  br label %689

689:                                              ; preds = %686, %682
  %690 = phi ptr [ %688, %686 ], [ null, %682 ]
  %691 = load i64, ptr %544, align 8
  %692 = and i64 %691, 65535
  %693 = icmp eq i64 %692, 141
  br i1 %693, label %694, label %697

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.tree_ssa_name, ptr %544, i64 0, i32 2
  %696 = load ptr, ptr %695, align 8, !tbaa !46
  br label %697

697:                                              ; preds = %694, %689
  %698 = phi ptr [ %696, %694 ], [ null, %689 ]
  %699 = icmp eq i32 %375, 56
  br i1 %699, label %719, label %700

700:                                              ; preds = %697
  %701 = icmp ne ptr %690, null
  %702 = icmp ne ptr %698, null
  %703 = select i1 %701, i1 %702, i1 false
  br i1 %703, label %704, label %712

704:                                              ; preds = %700
  %705 = load i32, ptr %690, align 8
  %706 = and i32 %705, 255
  %707 = icmp eq i32 %706, 18
  br i1 %707, label %712, label %708

708:                                              ; preds = %704
  %709 = load i32, ptr %698, align 8
  %710 = and i32 %709, 255
  %711 = icmp eq i32 %710, 18
  br i1 %711, label %712, label %719

712:                                              ; preds = %708, %704, %700
  %713 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %933, label %715

715:                                              ; preds = %712
  %716 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %717 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 33, i64 1, ptr %716)
  %718 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %718, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

719:                                              ; preds = %708, %697
  %720 = icmp ne ptr %698, null
  %721 = icmp eq ptr %698, %1
  %722 = and i1 %720, %721
  br i1 %722, label %723, label %801

723:                                              ; preds = %719
  br i1 %699, label %794, label %724

724:                                              ; preds = %723
  %725 = icmp eq ptr %690, null
  br i1 %725, label %926, label %726

726:                                              ; preds = %724
  %727 = getelementptr inbounds %struct.gimple_statement_base, ptr %690, i64 0, i32 4
  %728 = load ptr, ptr %727, align 8, !tbaa !46
  %729 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %728) #18
  %730 = icmp eq i8 %729, 0
  br i1 %730, label %801, label %731

731:                                              ; preds = %726
  %732 = load i32, ptr %690, align 8
  %733 = and i32 %732, 255
  %734 = icmp eq i32 %733, 6
  br i1 %734, label %794, label %735

735:                                              ; preds = %731
  %736 = getelementptr inbounds %struct.gimple_statement_base, ptr %690, i64 0, i32 1
  %737 = load i32, ptr %736, align 4, !tbaa !46
  %738 = icmp ne i32 %737, 0
  tail call void @llvm.assume(i1 %738)
  %739 = load ptr, ptr @stmt_vec_info_vec, align 8
  %740 = icmp eq ptr %739, null
  br i1 %740, label %743, label %741

741:                                              ; preds = %735
  %742 = load i32, ptr %739, align 8, !tbaa !81
  br label %743

743:                                              ; preds = %741, %735
  %744 = phi i32 [ %742, %741 ], [ 0, %735 ]
  %745 = icmp ugt i32 %737, %744
  br i1 %745, label %746, label %747

746:                                              ; preds = %743
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %747

747:                                              ; preds = %746, %743
  %748 = load ptr, ptr @stmt_vec_info_vec, align 8
  %749 = add i32 %737, -1
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %748, i64 0, i32 2, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !35
  %753 = getelementptr inbounds %struct._stmt_vec_info, ptr %752, i64 0, i32 16
  %754 = load i32, ptr %753, align 8, !tbaa !147
  %755 = icmp eq i32 %754, 4
  br i1 %755, label %794, label %756

756:                                              ; preds = %747
  %757 = load i32, ptr %690, align 8
  %758 = and i32 %757, 255
  %759 = icmp eq i32 %758, 16
  br i1 %759, label %760, label %801

760:                                              ; preds = %756
  %761 = load i32, ptr %736, align 4, !tbaa !46
  %762 = icmp ne i32 %761, 0
  tail call void @llvm.assume(i1 %762)
  %763 = icmp eq ptr %748, null
  br i1 %763, label %766, label %764

764:                                              ; preds = %760
  %765 = load i32, ptr %748, align 8, !tbaa !81
  br label %766

766:                                              ; preds = %764, %760
  %767 = phi i32 [ %765, %764 ], [ 0, %760 ]
  %768 = icmp ugt i32 %761, %767
  br i1 %768, label %769, label %770

769:                                              ; preds = %766
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %770

770:                                              ; preds = %769, %766
  %771 = load ptr, ptr @stmt_vec_info_vec, align 8
  %772 = add i32 %761, -1
  %773 = zext i32 %772 to i64
  %774 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %771, i64 0, i32 2, i64 %773
  %775 = load ptr, ptr %774, align 8, !tbaa !35
  %776 = getelementptr inbounds %struct._stmt_vec_info, ptr %775, i64 0, i32 16
  %777 = load i32, ptr %776, align 8, !tbaa !147
  %778 = icmp eq i32 %777, 3
  br i1 %778, label %779, label %801

779:                                              ; preds = %770
  %780 = load ptr, ptr %727, align 8, !tbaa !46
  %781 = getelementptr inbounds %struct.basic_block_def, ptr %780, i64 0, i32 3
  %782 = load ptr, ptr %781, align 8, !tbaa !109
  %783 = getelementptr inbounds %struct.loop, ptr %782, i64 0, i32 2
  %784 = load ptr, ptr %783, align 8, !tbaa !95
  %785 = icmp eq ptr %784, %780
  br i1 %785, label %801, label %786

786:                                              ; preds = %779
  %787 = load ptr, ptr %780, align 8, !tbaa !98
  %788 = icmp eq ptr %787, null
  br i1 %788, label %792, label %789

789:                                              ; preds = %786
  %790 = load i32, ptr %787, align 8, !tbaa !99
  %791 = icmp eq i32 %790, 1
  br i1 %791, label %793, label %792

792:                                              ; preds = %786, %789
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 694, ptr noundef nonnull @.str.7) #18
  br label %793

793:                                              ; preds = %789, %792
  br i1 %785, label %801, label %794

794:                                              ; preds = %793, %747, %731, %723
  %795 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %796 = icmp eq i8 %795, 0
  br i1 %796, label %933, label %797

797:                                              ; preds = %794
  %798 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %799 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 20, i64 1, ptr %798)
  %800 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %800, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

801:                                              ; preds = %779, %793, %770, %756, %726, %719
  %802 = icmp ne ptr %690, null
  %803 = icmp eq ptr %690, %1
  %804 = and i1 %802, %803
  br i1 %804, label %805, label %926

805:                                              ; preds = %801
  br i1 %699, label %875, label %806

806:                                              ; preds = %805
  br i1 %720, label %807, label %926

807:                                              ; preds = %806
  %808 = getelementptr inbounds %struct.gimple_statement_base, ptr %698, i64 0, i32 4
  %809 = load ptr, ptr %808, align 8, !tbaa !46
  %810 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %809) #18
  %811 = icmp eq i8 %810, 0
  br i1 %811, label %926, label %812

812:                                              ; preds = %807
  %813 = load i32, ptr %698, align 8
  %814 = and i32 %813, 255
  %815 = icmp eq i32 %814, 6
  br i1 %815, label %875, label %816

816:                                              ; preds = %812
  %817 = getelementptr inbounds %struct.gimple_statement_base, ptr %698, i64 0, i32 1
  %818 = load i32, ptr %817, align 4, !tbaa !46
  %819 = icmp ne i32 %818, 0
  tail call void @llvm.assume(i1 %819)
  %820 = load ptr, ptr @stmt_vec_info_vec, align 8
  %821 = icmp eq ptr %820, null
  br i1 %821, label %824, label %822

822:                                              ; preds = %816
  %823 = load i32, ptr %820, align 8, !tbaa !81
  br label %824

824:                                              ; preds = %822, %816
  %825 = phi i32 [ %823, %822 ], [ 0, %816 ]
  %826 = icmp ugt i32 %818, %825
  br i1 %826, label %827, label %828

827:                                              ; preds = %824
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %828

828:                                              ; preds = %827, %824
  %829 = load ptr, ptr @stmt_vec_info_vec, align 8
  %830 = add i32 %818, -1
  %831 = zext i32 %830 to i64
  %832 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %829, i64 0, i32 2, i64 %831
  %833 = load ptr, ptr %832, align 8, !tbaa !35
  %834 = getelementptr inbounds %struct._stmt_vec_info, ptr %833, i64 0, i32 16
  %835 = load i32, ptr %834, align 8, !tbaa !147
  %836 = icmp eq i32 %835, 4
  br i1 %836, label %875, label %837

837:                                              ; preds = %828
  %838 = load i32, ptr %698, align 8
  %839 = and i32 %838, 255
  %840 = icmp eq i32 %839, 16
  br i1 %840, label %841, label %926

841:                                              ; preds = %837
  %842 = load i32, ptr %817, align 4, !tbaa !46
  %843 = icmp ne i32 %842, 0
  tail call void @llvm.assume(i1 %843)
  %844 = icmp eq ptr %829, null
  br i1 %844, label %847, label %845

845:                                              ; preds = %841
  %846 = load i32, ptr %829, align 8, !tbaa !81
  br label %847

847:                                              ; preds = %845, %841
  %848 = phi i32 [ %846, %845 ], [ 0, %841 ]
  %849 = icmp ugt i32 %842, %848
  br i1 %849, label %850, label %851

850:                                              ; preds = %847
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %851

851:                                              ; preds = %850, %847
  %852 = load ptr, ptr @stmt_vec_info_vec, align 8
  %853 = add i32 %842, -1
  %854 = zext i32 %853 to i64
  %855 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %852, i64 0, i32 2, i64 %854
  %856 = load ptr, ptr %855, align 8, !tbaa !35
  %857 = getelementptr inbounds %struct._stmt_vec_info, ptr %856, i64 0, i32 16
  %858 = load i32, ptr %857, align 8, !tbaa !147
  %859 = icmp eq i32 %858, 3
  br i1 %859, label %860, label %926

860:                                              ; preds = %851
  %861 = load ptr, ptr %808, align 8, !tbaa !46
  %862 = getelementptr inbounds %struct.basic_block_def, ptr %861, i64 0, i32 3
  %863 = load ptr, ptr %862, align 8, !tbaa !109
  %864 = getelementptr inbounds %struct.loop, ptr %863, i64 0, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !95
  %866 = icmp eq ptr %865, %861
  br i1 %866, label %926, label %867

867:                                              ; preds = %860
  %868 = load ptr, ptr %861, align 8, !tbaa !98
  %869 = icmp eq ptr %868, null
  br i1 %869, label %873, label %870

870:                                              ; preds = %867
  %871 = load i32, ptr %868, align 8, !tbaa !99
  %872 = icmp eq i32 %871, 1
  br i1 %872, label %874, label %873

873:                                              ; preds = %867, %870
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 694, ptr noundef nonnull @.str.7) #18
  br label %874

874:                                              ; preds = %870, %873
  br i1 %866, label %926, label %875

875:                                              ; preds = %874, %828, %812, %805
  %876 = icmp eq i8 %2, 0
  %877 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %878 = icmp eq i8 %877, 0
  br i1 %876, label %921, label %879

879:                                              ; preds = %875
  br i1 %878, label %884, label %880

880:                                              ; preds = %879
  %881 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %882 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 43, i64 1, ptr %881)
  %883 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %883, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %884

884:                                              ; preds = %880, %879
  %885 = load i32, ptr %154, align 8
  %886 = and i32 %885, 255
  %887 = add nsw i32 %886, -10
  %888 = icmp ult i32 %887, -9
  br i1 %888, label %901, label %889

889:                                              ; preds = %884
  %890 = zext nneg i32 %886 to i64
  %891 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %890
  %892 = load i32, ptr %891, align 4, !tbaa !50
  %893 = zext i32 %892 to i64
  %894 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %893
  %895 = load i64, ptr %894, align 8, !tbaa !161
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %897, label %898

897:                                              ; preds = %889
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %898

898:                                              ; preds = %897, %889
  %899 = getelementptr inbounds i8, ptr %154, i64 %895
  %900 = getelementptr inbounds ptr, ptr %899, i64 1
  br label %901

901:                                              ; preds = %884, %898
  %902 = phi ptr [ %900, %898 ], [ null, %884 ]
  %903 = load i32, ptr %154, align 8
  %904 = and i32 %903, 255
  %905 = add nsw i32 %904, -10
  %906 = icmp ult i32 %905, -9
  br i1 %906, label %919, label %907

907:                                              ; preds = %901
  %908 = zext nneg i32 %904 to i64
  %909 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !50
  %911 = zext i32 %910 to i64
  %912 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %911
  %913 = load i64, ptr %912, align 8, !tbaa !161
  %914 = icmp eq i64 %913, 0
  br i1 %914, label %915, label %916

915:                                              ; preds = %907
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %916

916:                                              ; preds = %915, %907
  %917 = getelementptr inbounds i8, ptr %154, i64 %913
  %918 = getelementptr inbounds ptr, ptr %917, i64 2
  br label %919

919:                                              ; preds = %901, %916
  %920 = phi ptr [ %918, %916 ], [ null, %901 ]
  tail call void @swap_tree_operands(ptr noundef nonnull %154, ptr noundef %902, ptr noundef %920) #18
  br label %933

921:                                              ; preds = %875
  br i1 %878, label %933, label %922

922:                                              ; preds = %921
  %923 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %924 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 20, i64 1, ptr %923)
  %925 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %925, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

926:                                              ; preds = %860, %724, %874, %851, %837, %807, %806, %801
  %927 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %933, label %929

929:                                              ; preds = %926
  %930 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %931 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 28, i64 1, ptr %930)
  %932 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %932, ptr noundef nonnull %154, i32 noundef 0, i32 noundef 2) #18
  br label %933

933:                                              ; preds = %132, %287, %603, %926, %929, %919, %922, %921, %794, %797, %712, %715, %675, %678, %661, %664, %644, %647, %629, %627, %535, %538, %478, %481, %396, %399, %382, %385, %314, %321, %325, %330, %308, %311, %167, %170, %156, %159, %145, %148, %341
  %934 = phi ptr [ %154, %341 ], [ null, %148 ], [ null, %145 ], [ null, %159 ], [ null, %156 ], [ null, %170 ], [ null, %167 ], [ null, %311 ], [ null, %308 ], [ null, %330 ], [ null, %325 ], [ null, %321 ], [ null, %314 ], [ null, %385 ], [ null, %382 ], [ null, %399 ], [ null, %396 ], [ null, %481 ], [ null, %478 ], [ null, %538 ], [ null, %535 ], [ null, %627 ], [ null, %629 ], [ null, %647 ], [ null, %644 ], [ null, %664 ], [ null, %661 ], [ null, %678 ], [ null, %675 ], [ null, %715 ], [ null, %712 ], [ %154, %797 ], [ %154, %794 ], [ %154, %921 ], [ %154, %922 ], [ %154, %919 ], [ null, %929 ], [ null, %926 ], [ null, %603 ], [ null, %287 ], [ null, %132 ]
  ret ptr %934
}

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @associative_tree_code(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @swap_tree_operands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @vect_estimate_min_profitable_iters(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !124
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !123
  %11 = load i32, ptr @flag_vect_cost_model, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %424, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %18 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 20, i64 1, ptr %17)
  br label %424

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !163
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  br i1 %22, label %31, label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %21, align 8, !tbaa !163
  br label %31

31:                                               ; preds = %28, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %28 ]
  %33 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %37 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 77, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %31, %35, %25
  %39 = phi i32 [ %32, %35 ], [ %32, %31 ], [ 0, %25 ]
  %40 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !129
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %41, align 8, !tbaa !165
  br label %45

45:                                               ; preds = %38, %43
  %46 = phi i32 [ %44, %43 ], [ 0, %38 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  br i1 %42, label %51, label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %41, align 8, !tbaa !165
  br label %51

51:                                               ; preds = %48, %49
  %52 = phi i32 [ %50, %49 ], [ 0, %48 ]
  %53 = add i32 %52, %39
  %54 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %58 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 64, i64 1, ptr %57)
  br label %59

59:                                               ; preds = %51, %56, %45
  %60 = phi i32 [ %53, %56 ], [ %53, %51 ], [ %39, %45 ]
  %61 = load ptr, ptr %20, align 8, !tbaa !128
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 8, !tbaa !163
  br label %65

65:                                               ; preds = %59, %63
  %66 = phi i32 [ %64, %63 ], [ 0, %59 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load ptr, ptr %40, align 8, !tbaa !129
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %69, align 8, !tbaa !165
  br label %73

73:                                               ; preds = %68, %71
  %74 = phi i32 [ %72, %71 ], [ 0, %68 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73, %65
  %77 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %78 = getelementptr inbounds %struct.processor_costs, ptr %77, i64 0, i32 46
  %79 = load i32, ptr %78, align 4, !tbaa !167
  %80 = add nsw i32 %79, %60
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i32 [ %80, %76 ], [ %60, %73 ]
  %83 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !94
  %85 = icmp eq ptr %84, null
  %86 = select i1 %85, i32 0, i32 50
  %87 = icmp sgt i32 %8, 0
  br i1 %87, label %88, label %181

88:                                               ; preds = %81
  %89 = zext nneg i32 %8 to i64
  br label %90

90:                                               ; preds = %88, %175
  %91 = phi i64 [ 0, %88 ], [ %179, %175 ]
  %92 = phi i32 [ 0, %88 ], [ %178, %175 ]
  %93 = phi i32 [ %82, %88 ], [ %177, %175 ]
  %94 = phi i32 [ 0, %88 ], [ %176, %175 ]
  %95 = getelementptr inbounds ptr, ptr %6, i64 %91
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !109
  %99 = load ptr, ptr %83, align 8, !tbaa !94
  %100 = icmp eq ptr %98, %99
  %101 = select i1 %100, i32 %86, i32 1
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 13
  %103 = load i32, ptr %102, align 8, !tbaa !70, !noalias !169
  %104 = and i32 %103, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %90
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !46, !noalias !169
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %108, align 8, !tbaa !75, !noalias !169
  br label %112

112:                                              ; preds = %110, %106, %90
  %113 = phi ptr [ %111, %110 ], [ null, %106 ], [ null, %90 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %113, align 8, !tbaa !77, !noalias !169
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi ptr [ %116, %115 ], [ null, %112 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %175, label %120

120:                                              ; preds = %117, %168
  %121 = phi i32 [ %171, %168 ], [ %92, %117 ]
  %122 = phi i32 [ %170, %168 ], [ %93, %117 ]
  %123 = phi i32 [ %169, %168 ], [ %94, %117 ]
  %124 = phi ptr [ %173, %168 ], [ %118, %117 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !64
  %126 = getelementptr inbounds %struct.gimple_statement_base, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !46
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %120
  %130 = load ptr, ptr @stmt_vec_info_vec, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i32, ptr %130, align 8, !tbaa !81
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %133, %132 ], [ 0, %129 ]
  %136 = icmp ugt i32 %127, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %138

138:                                              ; preds = %137, %134
  %139 = load ptr, ptr @stmt_vec_info_vec, align 8
  %140 = add i32 %127, -1
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %139, i64 0, i32 2, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !35
  br label %144

144:                                              ; preds = %120, %138
  %145 = phi ptr [ %143, %138 ], [ null, %120 ]
  %146 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !137
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 4
  %151 = load i8, ptr %150, align 4, !tbaa !143
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 16
  %155 = load i32, ptr %154, align 8, !tbaa !147
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %168

157:                                              ; preds = %153, %144
  %158 = tail call i32 @cost_for_stmt(ptr noundef %125) #18
  %159 = mul nsw i32 %158, %101
  %160 = add nsw i32 %159, %123
  %161 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 24
  %162 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 24, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !172
  %164 = mul nsw i32 %163, %101
  %165 = add nsw i32 %164, %121
  %166 = load i32, ptr %161, align 4, !tbaa !173
  %167 = add nsw i32 %166, %122
  br label %168

168:                                              ; preds = %149, %153, %157
  %169 = phi i32 [ %160, %157 ], [ %123, %153 ], [ %123, %149 ]
  %170 = phi i32 [ %167, %157 ], [ %122, %153 ], [ %122, %149 ]
  %171 = phi i32 [ %165, %157 ], [ %121, %153 ], [ %121, %149 ]
  %172 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %124, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !68
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %120, !llvm.loop !174

175:                                              ; preds = %168, %117
  %176 = phi i32 [ %94, %117 ], [ %169, %168 ]
  %177 = phi i32 [ %93, %117 ], [ %170, %168 ]
  %178 = phi i32 [ %92, %117 ], [ %171, %168 ]
  %179 = add nuw nsw i64 %91, 1
  %180 = icmp eq i64 %179, %89
  br i1 %180, label %181, label %90, !llvm.loop !175

181:                                              ; preds = %175, %81
  %182 = phi i32 [ 0, %81 ], [ %176, %175 ]
  %183 = phi i32 [ %82, %81 ], [ %177, %175 ]
  %184 = phi i32 [ 0, %81 ], [ %178, %175 ]
  %185 = icmp slt i32 %10, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %181
  %187 = sdiv i32 %3, 2
  %188 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %192 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 44, i64 1, ptr %191)
  br label %193

193:                                              ; preds = %190, %186
  %194 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %198 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 86, i64 1, ptr %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %201 = getelementptr inbounds %struct.processor_costs, ptr %200, i64 0, i32 46
  %202 = load i32, ptr %201, align 4, !tbaa !167
  %203 = getelementptr inbounds %struct.processor_costs, ptr %200, i64 0, i32 47
  %204 = load i32, ptr %203, align 4, !tbaa !176
  %205 = add nsw i32 %204, %202
  %206 = shl nsw i32 %205, 1
  br label %288

207:                                              ; preds = %181
  %208 = icmp eq i32 %10, 0
  br i1 %208, label %260, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  %211 = load ptr, ptr %210, align 8, !tbaa !125
  %212 = getelementptr inbounds %struct.data_reference, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !177
  %214 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !46
  %216 = load i64, ptr %215, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 14
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = tail call i32 @vector_type_mode(ptr noundef nonnull %215) #18
  br label %226

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.tree_type, ptr %215, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi i32 [ %220, %219 ], [ %225, %221 ]
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !46
  %231 = zext i8 %230 to i32
  %232 = load ptr, ptr %211, align 8, !tbaa !182
  %233 = getelementptr inbounds %struct.gimple_statement_base, ptr %232, i64 0, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !46
  %235 = icmp ne i32 %234, 0
  tail call void @llvm.assume(i1 %235)
  %236 = load ptr, ptr @stmt_vec_info_vec, align 8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %226
  %239 = load i32, ptr %236, align 8, !tbaa !81
  br label %240

240:                                              ; preds = %238, %226
  %241 = phi i32 [ %239, %238 ], [ 0, %226 ]
  %242 = icmp ugt i32 %234, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %244

244:                                              ; preds = %243, %240
  %245 = load ptr, ptr @stmt_vec_info_vec, align 8
  %246 = add i32 %234, -1
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %245, i64 0, i32 2, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !35
  %250 = getelementptr inbounds %struct._stmt_vec_info, ptr %249, i64 0, i32 5
  %251 = load ptr, ptr %250, align 8, !tbaa !138
  %252 = getelementptr inbounds %struct.tree_type, ptr %251, i64 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = and i32 %253, 1023
  %255 = zext nneg i32 %254 to i64
  %256 = shl nuw i64 1, %255
  %257 = trunc i64 %256 to i32
  %258 = udiv i32 %10, %231
  %259 = sub nsw i32 %257, %258
  br label %260

260:                                              ; preds = %207, %244
  %261 = phi i32 [ %259, %244 ], [ 0, %207 ]
  %262 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !97
  %264 = tail call i32 @host_integerp(ptr noundef %263, i32 noundef 0) #18
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %260
  %267 = load ptr, ptr %262, align 8, !tbaa !97
  %268 = getelementptr inbounds %struct.tree_int_cst, ptr %267, i64 0, i32 1
  %269 = load i64, ptr %268, align 8, !tbaa !46
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %266, %260
  %272 = sdiv i32 %3, 2
  %273 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %277 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 81, i64 1, ptr %276)
  br label %278

278:                                              ; preds = %275, %271
  %279 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %280 = getelementptr inbounds %struct.processor_costs, ptr %279, i64 0, i32 46
  %281 = load i32, ptr %280, align 4, !tbaa !167
  %282 = shl nsw i32 %281, 1
  br label %288

283:                                              ; preds = %266
  %284 = trunc i64 %269 to i32
  %285 = tail call i32 @llvm.smin.i32(i32 %261, i32 %284)
  %286 = sub nsw i32 %284, %285
  %287 = srem i32 %286, %3
  br label %288

288:                                              ; preds = %278, %283, %199
  %289 = phi i32 [ %206, %199 ], [ 0, %283 ], [ %282, %278 ]
  %290 = phi i32 [ %187, %199 ], [ %287, %283 ], [ %272, %278 ]
  %291 = phi i32 [ %187, %199 ], [ %285, %283 ], [ %261, %278 ]
  %292 = add i32 %291, %290
  %293 = mul i32 %292, %182
  %294 = add i32 %289, %183
  %295 = add i32 %294, %293
  %296 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !97
  %298 = tail call i32 @host_integerp(ptr noundef %297, i32 noundef 0) #18
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %317, label %300

300:                                              ; preds = %288
  %301 = load ptr, ptr %296, align 8, !tbaa !97
  %302 = getelementptr inbounds %struct.tree_int_cst, ptr %301, i64 0, i32 1
  %303 = load i64, ptr %302, align 8, !tbaa !46
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %317, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr %20, align 8, !tbaa !128
  %307 = icmp eq ptr %306, null
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr %306, align 8, !tbaa !163
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %305, %308
  %312 = load ptr, ptr %40, align 8, !tbaa !129
  %313 = icmp eq ptr %312, null
  br i1 %313, label %344, label %314

314:                                              ; preds = %311
  %315 = load i32, ptr %312, align 8, !tbaa !165
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %344, label %317

317:                                              ; preds = %314, %308, %300, %288
  %318 = load ptr, ptr %20, align 8, !tbaa !128
  %319 = icmp eq ptr %318, null
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr %318, align 8, !tbaa !163
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %317, %320
  %324 = load ptr, ptr %40, align 8, !tbaa !129
  %325 = icmp eq ptr %324, null
  br i1 %325, label %333, label %326

326:                                              ; preds = %323
  %327 = load i32, ptr %324, align 8, !tbaa !165
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %326, %320
  %330 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %331 = getelementptr inbounds %struct.processor_costs, ptr %330, i64 0, i32 47
  %332 = load i32, ptr %331, align 4, !tbaa !176
  br label %344

333:                                              ; preds = %323, %326
  %334 = load i32, ptr %9, align 8, !tbaa !123
  %335 = icmp slt i32 %334, 0
  %336 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %337 = getelementptr inbounds %struct.processor_costs, ptr %336, i64 0, i32 46
  %338 = load i32, ptr %337, align 4, !tbaa !167
  %339 = shl nsw i32 %338, 1
  br i1 %335, label %340, label %344

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.processor_costs, ptr %336, i64 0, i32 47
  %342 = load i32, ptr %341, align 4, !tbaa !176
  %343 = add nsw i32 %339, %342
  br label %344

344:                                              ; preds = %333, %311, %329, %340, %314
  %345 = phi i32 [ %332, %329 ], [ %343, %340 ], [ 0, %314 ], [ 0, %311 ], [ %339, %333 ]
  %346 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %347 = load ptr, ptr %346, align 8, !tbaa !89
  %348 = icmp eq ptr %347, null
  br label %349

349:                                              ; preds = %363, %344
  %350 = phi i64 [ %370, %363 ], [ 0, %344 ]
  %351 = phi i32 [ %366, %363 ], [ %295, %344 ]
  %352 = phi i32 [ %369, %363 ], [ %184, %344 ]
  br i1 %348, label %360, label %353

353:                                              ; preds = %349
  %354 = load i32, ptr %347, align 8, !tbaa !90
  %355 = zext i32 %354 to i64
  %356 = icmp ult i64 %350, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %347, i64 0, i32 2, i64 %350
  %359 = load ptr, ptr %358, align 8, !tbaa !35
  br label %360

360:                                              ; preds = %349, %353, %357
  %361 = phi ptr [ %359, %357 ], [ null, %353 ], [ null, %349 ]
  %362 = phi i1 [ false, %357 ], [ true, %353 ], [ true, %349 ]
  br i1 %362, label %371, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct._slp_instance, ptr %361, i64 0, i32 3
  %365 = load i32, ptr %364, align 8, !tbaa !183
  %366 = add nsw i32 %365, %351
  %367 = getelementptr inbounds %struct._slp_instance, ptr %361, i64 0, i32 3, i32 1
  %368 = load i32, ptr %367, align 4, !tbaa !185
  %369 = add nsw i32 %368, %352
  %370 = add nuw i64 %350, 1
  br label %349, !llvm.loop !186

371:                                              ; preds = %360
  %372 = mul nsw i32 %182, %3
  %373 = icmp sgt i32 %372, %352
  br i1 %373, label %374, label %389

374:                                              ; preds = %371
  %375 = icmp slt i32 %351, 1
  br i1 %375, label %395, label %376

376:                                              ; preds = %374
  %377 = sub nsw i32 %351, %345
  %378 = mul nsw i32 %377, %3
  %379 = mul i32 %352, %292
  %380 = sub i32 %378, %379
  %381 = sub nsw i32 %372, %352
  %382 = sdiv i32 %380, %381
  %383 = mul nsw i32 %382, %372
  %384 = mul nsw i32 %382, %352
  %385 = add nsw i32 %384, %378
  %386 = icmp sle i32 %383, %385
  %387 = zext i1 %386 to i32
  %388 = add nsw i32 %382, %387
  br label %395

389:                                              ; preds = %371
  %390 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %424, label %392

392:                                              ; preds = %389
  %393 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %394 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %393, ptr noundef nonnull @.str.55, i32 noundef %352, i32 noundef %182, i32 noundef %3)
  br label %424

395:                                              ; preds = %376, %374
  %396 = phi i32 [ 1, %374 ], [ %388, %376 ]
  %397 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %416, label %399

399:                                              ; preds = %395
  %400 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %401 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 22, i64 1, ptr %400)
  %402 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %403 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %402, ptr noundef nonnull @.str.57, i32 noundef %352)
  %404 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %405 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %404, ptr noundef nonnull @.str.58, i32 noundef %351)
  %406 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %407 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %406, ptr noundef nonnull @.str.59, i32 noundef %182)
  %408 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %409 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %408, ptr noundef nonnull @.str.60, i32 noundef %345)
  %410 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %411 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %410, ptr noundef nonnull @.str.61, i32 noundef %291)
  %412 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %413 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %412, ptr noundef nonnull @.str.62, i32 noundef %290)
  %414 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %415 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %414, ptr noundef nonnull @.str.63, i32 noundef %396)
  br label %416

416:                                              ; preds = %399, %395
  %417 = tail call i32 @llvm.smax.i32(i32 %396, i32 %3)
  %418 = add nsw i32 %417, -1
  %419 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %416
  %422 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %423 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %422, ptr noundef nonnull @.str.64, i32 noundef %418)
  br label %424

424:                                              ; preds = %416, %421, %389, %392, %13, %16
  %425 = phi i32 [ 0, %16 ], [ 0, %13 ], [ -1, %392 ], [ -1, %389 ], [ %418, %421 ], [ %418, %416 ]
  ret i32 %425
}

declare i32 @cost_for_stmt(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_initial_def_for_reduction(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.real_value, align 8
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = load ptr, ptr @stmt_vec_info_vec, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %14 = icmp ugt i32 %6, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @stmt_vec_info_vec, align 8
  %18 = add i32 %6, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %17, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %26) #18
  %28 = load i32, ptr %0, align 8
  %29 = trunc i32 %28 to i8
  switch i8 %29, label %32 [
    i8 6, label %30
    i8 1, label %30
    i8 8, label %33
  ]

30:                                               ; preds = %16, %16
  %31 = lshr i32 %28, 16
  br label %33

32:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %33

33:                                               ; preds = %32, %30, %16
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ], [ 59, %16 ]
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = icmp eq i8 %37, 3
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load i32, ptr %0, align 8
  %41 = and i32 %40, 255
  %42 = add nsw i32 %41, -1
  %43 = icmp ult i32 %42, 9
  tail call void @llvm.assume(i1 %43)
  %44 = zext nneg i32 %41 to i64
  %45 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !161
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %52

52:                                               ; preds = %51, %39
  %53 = getelementptr inbounds i8, ptr %0, i64 %49
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  br label %59

59:                                               ; preds = %33, %52
  %60 = phi i32 [ %58, %52 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @dconst0, i64 32, i1 false), !tbaa.struct !187
  %61 = icmp eq ptr %27, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2716, ptr noundef nonnull @.str.7) #18
  br label %63

63:                                               ; preds = %59, %62
  %64 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1023
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = trunc i64 %68 to i32
  %70 = load i64, ptr %26, align 8
  %71 = trunc i64 %70 to i16
  switch i16 %71, label %72 [
    i16 10, label %73
    i16 12, label %73
    i16 6, label %73
    i16 7, label %73
    i16 8, label %73
    i16 9, label %73
  ]

72:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2720, ptr noundef nonnull @.str.7) #18
  br label %73

73:                                               ; preds = %63, %63, %63, %63, %63, %63, %72
  %74 = getelementptr inbounds %struct.loop, ptr %24, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !94
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !109
  %82 = icmp eq ptr %75, %81
  br label %83

83:                                               ; preds = %73, %77
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  br i1 %84, label %92, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !109
  %90 = icmp eq ptr %24, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2725, ptr noundef nonnull @.str.7) #18
  br label %92

92:                                               ; preds = %83, %91, %85
  %93 = icmp ne ptr %2, null
  %94 = and i1 %93, %84
  br i1 %94, label %95, label %156

95:                                               ; preds = %92
  %96 = load i64, ptr %1, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %99, label %156

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %156, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %101, align 8
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %107, label %156

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.gimple_statement_base, ptr %101, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %24, ptr noundef %109) #18
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %156, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.gimple_statement_base, ptr %101, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !46
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @stmt_vec_info_vec, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !81
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ %120, %119 ], [ 0, %116 ]
  %123 = icmp ugt i32 %114, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %125

125:                                              ; preds = %124, %121
  %126 = load ptr, ptr @stmt_vec_info_vec, align 8
  %127 = add i32 %114, -1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %126, i64 0, i32 2, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  br label %131

131:                                              ; preds = %112, %125
  %132 = phi ptr [ %130, %125 ], [ null, %112 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %156, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr %113, align 4, !tbaa !46
  %136 = icmp ne i32 %135, 0
  tail call void @llvm.assume(i1 %136)
  %137 = load ptr, ptr @stmt_vec_info_vec, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load i32, ptr %137, align 8, !tbaa !81
  br label %141

141:                                              ; preds = %139, %134
  %142 = phi i32 [ %140, %139 ], [ 0, %134 ]
  %143 = icmp ugt i32 %135, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr @stmt_vec_info_vec, align 8
  %147 = add i32 %135, -1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %146, i64 0, i32 2, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  %151 = getelementptr inbounds %struct._stmt_vec_info, ptr %150, i64 0, i32 16
  %152 = load i32, ptr %151, align 8, !tbaa !147
  %153 = icmp eq i32 %152, 6
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  store ptr null, ptr %2, align 8, !tbaa !35
  %155 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %1, ptr noundef %27) #18
  br label %238

156:                                              ; preds = %145, %131, %107, %103, %99, %95, %92
  %157 = load i64, ptr %1, align 8
  %158 = and i64 %157, 131072
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %156
  %161 = load i64, ptr %26, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 9
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !46
  %167 = tail call ptr @build_real(ptr noundef nonnull %26, ptr noundef byval(%struct.real_value) align 8 %166) #18
  br label %172

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !46
  %171 = tail call ptr @build_int_cst(ptr noundef nonnull %26, i64 noundef %170) #18
  br label %172

172:                                              ; preds = %156, %164, %168
  %173 = phi ptr [ %167, %164 ], [ %171, %168 ], [ %1, %156 ]
  %174 = trunc i32 %60 to i16
  switch i16 %174, label %237 [
    i16 168, label %175
    i16 167, label %175
    i16 63, label %175
    i16 64, label %175
    i16 87, label %175
    i16 88, label %175
    i16 65, label %175
    i16 89, label %175
    i16 80, label %217
    i16 81, label %217
    i16 56, label %217
  ]

175:                                              ; preds = %172, %172, %172, %172, %172, %172, %172, %172
  br i1 %93, label %176, label %181

176:                                              ; preds = %175
  br i1 %84, label %177, label %179

177:                                              ; preds = %176
  %178 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef null) #18
  br label %179

179:                                              ; preds = %176, %177
  %180 = phi ptr [ %178, %177 ], [ %1, %176 ]
  store ptr %180, ptr %2, align 8, !tbaa !35
  br label %181

181:                                              ; preds = %179, %175
  switch i32 %60, label %183 [
    i32 89, label %182
    i32 65, label %182
  ]

182:                                              ; preds = %181, %181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !187
  br label %183

183:                                              ; preds = %181, %182
  %184 = phi i64 [ 1, %182 ], [ 0, %181 ]
  %185 = load i64, ptr %26, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 9
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = tail call ptr @build_real(ptr noundef nonnull %26, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #18
  br label %192

190:                                              ; preds = %183
  %191 = tail call ptr @build_int_cst(ptr noundef nonnull %26, i64 noundef %184) #18
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi ptr [ %189, %188 ], [ %191, %190 ]
  %194 = icmp sgt i32 %69, 1
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = add nsw i32 %69, -2
  br label %197

197:                                              ; preds = %195, %197
  %198 = phi i32 [ %201, %197 ], [ %196, %195 ]
  %199 = phi ptr [ %200, %197 ], [ null, %195 ]
  %200 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %193, ptr noundef %199) #18
  %201 = add nsw i32 %198, -1
  %202 = icmp sgt i32 %198, 0
  br i1 %202, label %197, label %203, !llvm.loop !188

203:                                              ; preds = %197, %192
  %204 = phi ptr [ null, %192 ], [ %200, %197 ]
  br i1 %93, label %205, label %208

205:                                              ; preds = %203
  %206 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %193, ptr noundef %204) #18
  %207 = tail call ptr @build_vector(ptr noundef %27, ptr noundef %206) #18
  br label %238

208:                                              ; preds = %203
  %209 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %173, ptr noundef %204) #18
  %210 = load i64, ptr %1, align 8
  %211 = and i64 %210, 131072
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %208
  %214 = tail call ptr @build_vector(ptr noundef %27, ptr noundef %209) #18
  br label %238

215:                                              ; preds = %208
  %216 = tail call ptr @build_constructor_from_list(ptr noundef %27, ptr noundef %209) #18
  br label %238

217:                                              ; preds = %172, %172, %172
  br i1 %93, label %220, label %218

218:                                              ; preds = %217
  %219 = icmp sgt i32 %69, 0
  br i1 %219, label %222, label %228

220:                                              ; preds = %217
  store ptr null, ptr %2, align 8, !tbaa !35
  %221 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef null) #18
  br label %238

222:                                              ; preds = %218, %222
  %223 = phi i32 [ %225, %222 ], [ %69, %218 ]
  %224 = phi ptr [ %226, %222 ], [ null, %218 ]
  %225 = add nsw i32 %223, -1
  %226 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %173, ptr noundef %224) #18
  %227 = icmp sgt i32 %223, 1
  br i1 %227, label %222, label %228, !llvm.loop !189

228:                                              ; preds = %222, %218
  %229 = phi ptr [ null, %218 ], [ %226, %222 ]
  %230 = load i64, ptr %1, align 8
  %231 = and i64 %230, 131072
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %228
  %234 = tail call ptr @build_vector(ptr noundef %27, ptr noundef %229) #18
  br label %238

235:                                              ; preds = %228
  %236 = tail call ptr @build_constructor_from_list(ptr noundef %27, ptr noundef %229) #18
  br label %238

237:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2827, ptr noundef nonnull @.str.7) #18
  br label %238

238:                                              ; preds = %205, %220, %237, %215, %213, %235, %233, %154
  %239 = phi ptr [ %155, %154 ], [ undef, %237 ], [ %221, %220 ], [ %234, %233 ], [ %236, %235 ], [ %207, %205 ], [ %214, %213 ], [ %216, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret ptr %239
}

declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

declare ptr @vect_create_destination_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vect_get_vec_def_for_operand(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vectorizable_reduction(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x ptr], align 16
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !81
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp ugt i32 %11, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @stmt_vec_info_vec, align 8
  %24 = add i32 %11, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %23, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %3, %22
  %29 = phi ptr [ %27, %22 ], [ null, %3 ]
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %35 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct._loop_vec_info, ptr %33, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !124
  %43 = sdiv i32 %42, %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #18
  %44 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !94
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = icmp eq ptr %45, %51
  br label %53

53:                                               ; preds = %28, %47
  %54 = phi i1 [ false, %28 ], [ %52, %47 ]
  %55 = select i1 %54, ptr %45, ptr %34
  %56 = select i1 %54, ptr %34, ptr null
  %57 = xor i1 %54, true
  %58 = icmp sgt i32 %43, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3517, ptr noundef nonnull @.str.7) #18
  br label %60

60:                                               ; preds = %53, %59
  %61 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 25
  %62 = load i32, ptr %61, align 4, !tbaa !153
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %1049

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !137
  %67 = icmp ugt i32 %66, 2
  br i1 %67, label %1049, label %68

68:                                               ; preds = %64
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 4
  %72 = load i8, ptr %71, align 4, !tbaa !143
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %1049, label %74

74:                                               ; preds = %70, %68
  %75 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 16
  %76 = load i32, ptr %75, align 8, !tbaa !147
  switch i32 %76, label %1049 [
    i32 5, label %77
    i32 7, label %77
  ]

77:                                               ; preds = %74, %74
  %78 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 14
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = icmp eq ptr %79, null
  br i1 %80, label %116, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %79, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !46
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @stmt_vec_info_vec, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %86, align 8, !tbaa !81
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %89, %88 ], [ 0, %85 ]
  %92 = icmp ugt i32 %83, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %94

94:                                               ; preds = %93, %90
  %95 = load ptr, ptr @stmt_vec_info_vec, align 8
  %96 = add i32 %83, -1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %95, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  br label %100

100:                                              ; preds = %81, %94
  %101 = phi ptr [ %99, %94 ], [ null, %81 ]
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %101, i64 0, i32 14
  %103 = load ptr, ptr %102, align 8, !tbaa !83
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3550, ptr noundef nonnull @.str.7) #18
  br label %106

106:                                              ; preds = %100, %105
  %107 = getelementptr inbounds %struct._stmt_vec_info, ptr %101, i64 0, i32 13
  %108 = load i8, ptr %107, align 8, !tbaa !86
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3551, ptr noundef nonnull @.str.7) #18
  br label %111

111:                                              ; preds = %106, %110
  %112 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 13
  %113 = load i8, ptr %112, align 8, !tbaa !86
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3552, ptr noundef nonnull @.str.7) #18
  br label %116

116:                                              ; preds = %115, %111, %77
  %117 = load i32, ptr %0, align 8
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 6
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3559, ptr noundef nonnull @.str.7) #18
  br label %121

121:                                              ; preds = %116, %120
  %122 = load i32, ptr %0, align 8
  %123 = trunc i32 %122 to i8
  switch i8 %123, label %126 [
    i8 6, label %124
    i8 1, label %124
    i8 8, label %127
  ]

124:                                              ; preds = %121, %121
  %125 = lshr i32 %122, 16
  br label %127

126:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %127

127:                                              ; preds = %126, %124, %121
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ], [ 59, %121 ]
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !46
  %132 = icmp eq i8 %131, 3
  br i1 %132, label %133, label %153

133:                                              ; preds = %127
  %134 = load i32, ptr %0, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -1
  %137 = icmp ult i32 %136, 9
  tail call void @llvm.assume(i1 %137)
  %138 = zext nneg i32 %135 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !50
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !161
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %146

146:                                              ; preds = %145, %133
  %147 = getelementptr inbounds i8, ptr %0, i64 %143
  %148 = getelementptr inbounds ptr, ptr %147, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = load i64, ptr %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 65535
  br label %153

153:                                              ; preds = %127, %146
  %154 = phi i32 [ %152, %146 ], [ %128, %127 ]
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !46
  switch i8 %157, label %308 [
    i8 3, label %158
    i8 1, label %224
    i8 2, label %1049
  ]

158:                                              ; preds = %153
  %159 = load i32, ptr %0, align 8
  %160 = and i32 %159, 255
  %161 = add nsw i32 %160, -10
  %162 = icmp ult i32 %161, -9
  br i1 %162, label %176, label %163

163:                                              ; preds = %158
  %164 = zext nneg i32 %160 to i64
  %165 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !50
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %167
  %169 = load i64, ptr %168, align 8, !tbaa !161
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %172

172:                                              ; preds = %171, %163
  %173 = getelementptr inbounds i8, ptr %0, i64 %169
  %174 = getelementptr inbounds ptr, ptr %173, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !35
  br label %176

176:                                              ; preds = %158, %172
  %177 = phi ptr [ %175, %172 ], [ null, %158 ]
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 65535
  %180 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !50
  %182 = icmp eq i32 %181, 9
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.tree_exp, ptr %177, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  %186 = getelementptr inbounds %struct.tree_int_cst, ptr %185, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !46
  %188 = trunc i64 %187 to i32
  br label %193

189:                                              ; preds = %176
  %190 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %179
  %191 = load i8, ptr %190, align 1, !tbaa !46
  %192 = zext i8 %191 to i32
  br label %193

193:                                              ; preds = %183, %189
  %194 = phi i32 [ %188, %183 ], [ %192, %189 ]
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %196, label %1049

196:                                              ; preds = %193
  %197 = load i32, ptr %0, align 8
  %198 = and i32 %197, 255
  %199 = add nsw i32 %198, -1
  %200 = icmp ult i32 %199, 9
  tail call void @llvm.assume(i1 %200)
  %201 = zext nneg i32 %198 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !50
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !161
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %209

209:                                              ; preds = %208, %196
  %210 = getelementptr inbounds i8, ptr %0, i64 %206
  %211 = getelementptr inbounds ptr, ptr %210, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !35
  %213 = getelementptr inbounds %struct.tree_exp, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  store ptr %214, ptr %8, align 16, !tbaa !35
  %215 = getelementptr inbounds %struct.tree_exp, ptr %212, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store ptr %216, ptr %217, align 8, !tbaa !35
  %218 = getelementptr inbounds %struct.tree_exp, ptr %212, i64 1, i32 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !46
  %220 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  store ptr %219, ptr %220, align 16, !tbaa !35
  %221 = load i64, ptr %212, align 8
  %222 = trunc i64 %221 to i32
  %223 = and i32 %222, 65535
  br label %309

224:                                              ; preds = %153
  %225 = load i32, ptr %0, align 8
  %226 = trunc i32 %225 to i8
  switch i8 %226, label %229 [
    i8 6, label %227
    i8 1, label %227
    i8 8, label %230
  ]

227:                                              ; preds = %224, %224
  %228 = lshr i32 %225, 16
  br label %230

229:                                              ; preds = %224
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %230

230:                                              ; preds = %229, %227, %224
  %231 = phi i32 [ %228, %227 ], [ 0, %229 ], [ 59, %224 ]
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !46
  %235 = icmp eq i8 %234, 3
  br i1 %235, label %236, label %256

236:                                              ; preds = %230
  %237 = load i32, ptr %0, align 8
  %238 = and i32 %237, 255
  %239 = add nsw i32 %238, -1
  %240 = icmp ult i32 %239, 9
  tail call void @llvm.assume(i1 %240)
  %241 = zext nneg i32 %238 to i64
  %242 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !50
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !161
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %249

249:                                              ; preds = %248, %236
  %250 = getelementptr inbounds i8, ptr %0, i64 %246
  %251 = getelementptr inbounds ptr, ptr %250, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !35
  %253 = load i64, ptr %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = and i32 %254, 65535
  br label %256

256:                                              ; preds = %230, %249
  %257 = phi i32 [ %255, %249 ], [ %231, %230 ]
  %258 = zext nneg i32 %257 to i64
  %259 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !46
  %261 = zext i8 %260 to i32
  %262 = icmp eq i8 %260, 2
  br i1 %262, label %264, label %263

263:                                              ; preds = %256
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3581, ptr noundef nonnull @.str.7) #18
  br label %264

264:                                              ; preds = %256, %263
  %265 = load i32, ptr %0, align 8
  %266 = and i32 %265, 255
  %267 = add nsw i32 %266, -10
  %268 = icmp ult i32 %267, -9
  br i1 %268, label %282, label %269

269:                                              ; preds = %264
  %270 = zext nneg i32 %266 to i64
  %271 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !50
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %273
  %275 = load i64, ptr %274, align 8, !tbaa !161
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %278

278:                                              ; preds = %277, %269
  %279 = getelementptr inbounds i8, ptr %0, i64 %275
  %280 = getelementptr inbounds ptr, ptr %279, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !35
  br label %282

282:                                              ; preds = %264, %278
  %283 = phi ptr [ %281, %278 ], [ null, %264 ]
  store ptr %283, ptr %8, align 16, !tbaa !35
  %284 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %285 = load i32, ptr %284, align 4, !tbaa !46
  %286 = icmp ugt i32 %285, 2
  br i1 %286, label %287, label %305

287:                                              ; preds = %282
  %288 = load i32, ptr %0, align 8
  %289 = and i32 %288, 255
  %290 = add nsw i32 %289, -10
  %291 = icmp ult i32 %290, -9
  br i1 %291, label %305, label %292

292:                                              ; preds = %287
  %293 = zext nneg i32 %289 to i64
  %294 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !50
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %296
  %298 = load i64, ptr %297, align 8, !tbaa !161
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %301

301:                                              ; preds = %300, %292
  %302 = getelementptr inbounds i8, ptr %0, i64 %298
  %303 = getelementptr inbounds ptr, ptr %302, i64 2
  %304 = load ptr, ptr %303, align 8, !tbaa !35
  br label %305

305:                                              ; preds = %282, %287, %301
  %306 = phi ptr [ null, %282 ], [ %304, %301 ], [ null, %287 ]
  %307 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store ptr %306, ptr %307, align 8, !tbaa !35
  br label %309

308:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3590, ptr noundef nonnull @.str.7) #18
  br label %309

309:                                              ; preds = %308, %305, %209
  %310 = phi i32 [ undef, %308 ], [ %261, %305 ], [ 3, %209 ]
  %311 = phi i32 [ undef, %308 ], [ %257, %305 ], [ %223, %209 ]
  %312 = load i32, ptr %0, align 8
  %313 = and i32 %312, 255
  %314 = add nsw i32 %313, -10
  %315 = icmp ult i32 %314, -9
  br i1 %315, label %328, label %316

316:                                              ; preds = %309
  %317 = zext nneg i32 %313 to i64
  %318 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !50
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %320
  %322 = load i64, ptr %321, align 8, !tbaa !161
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %316
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %325

325:                                              ; preds = %324, %316
  %326 = getelementptr inbounds i8, ptr %0, i64 %322
  %327 = load ptr, ptr %326, align 8, !tbaa !35
  br label %328

328:                                              ; preds = %309, %325
  %329 = phi ptr [ %327, %325 ], [ null, %309 ]
  %330 = getelementptr inbounds %struct.tree_common, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !46
  %332 = load i64, ptr %331, align 8
  %333 = trunc i64 %332 to i16
  switch i16 %333, label %1049 [
    i16 10, label %334
    i16 12, label %334
    i16 6, label %334
    i16 7, label %334
    i16 8, label %334
    i16 9, label %334
  ]

334:                                              ; preds = %328, %328, %328, %328, %328, %328
  %335 = icmp sgt i32 %310, 1
  br i1 %335, label %336, label %370

336:                                              ; preds = %334
  %337 = add nsw i32 %310, -1
  %338 = icmp eq i32 %311, 56
  %339 = zext i32 %337 to i64
  br label %340

340:                                              ; preds = %336, %364
  %341 = phi i64 [ 0, %336 ], [ %368, %364 ]
  %342 = phi i32 [ 2, %336 ], [ %367, %364 ]
  %343 = phi ptr [ null, %336 ], [ %366, %364 ]
  %344 = phi i8 [ 0, %336 ], [ %365, %364 ]
  %345 = icmp eq i64 %341, 0
  %346 = select i1 %345, i1 %338, i1 false
  br i1 %346, label %364, label %347

347:                                              ; preds = %340
  %348 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %341
  %349 = load ptr, ptr %348, align 8, !tbaa !35
  %350 = call zeroext i8 @vect_is_simple_use(ptr noundef %349, ptr noundef nonnull %33, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #18
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %347
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3611, ptr noundef nonnull @.str.7) #18
  br label %353

353:                                              ; preds = %347, %352
  %354 = load i32, ptr %7, align 4
  %355 = add i32 %354, -1
  %356 = icmp ult i32 %355, 4
  %357 = icmp eq i32 %354, 7
  %358 = and i1 %54, %357
  %359 = or i1 %356, %358
  br i1 %359, label %360, label %1049

360:                                              ; preds = %353
  br i1 %357, label %361, label %364

361:                                              ; preds = %360
  %362 = load ptr, ptr %6, align 8, !tbaa !35
  %363 = trunc i64 %341 to i32
  br label %364

364:                                              ; preds = %360, %361, %340
  %365 = phi i8 [ %344, %340 ], [ 1, %361 ], [ %344, %360 ]
  %366 = phi ptr [ %343, %340 ], [ %362, %361 ], [ %343, %360 ]
  %367 = phi i32 [ %342, %340 ], [ %363, %361 ], [ %342, %360 ]
  %368 = add nuw nsw i64 %341, 1
  %369 = icmp eq i64 %368, %339
  br i1 %369, label %370, label %340, !llvm.loop !190

370:                                              ; preds = %364, %334
  %371 = phi i64 [ 0, %334 ], [ %368, %364 ]
  %372 = phi i8 [ 0, %334 ], [ %365, %364 ]
  %373 = phi ptr [ null, %334 ], [ %366, %364 ]
  %374 = phi i32 [ 2, %334 ], [ %367, %364 ]
  %375 = and i64 %371, 4294967295
  %376 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !35
  %378 = call zeroext i8 @vect_is_simple_use(ptr noundef %377, ptr noundef nonnull %33, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #18
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3629, ptr noundef nonnull @.str.7) #18
  br label %381

381:                                              ; preds = %370, %380
  %382 = load i32, ptr %7, align 4
  %383 = and i32 %382, -3
  %384 = icmp eq i32 %383, 5
  br i1 %384, label %396, label %385

385:                                              ; preds = %381
  %386 = and i32 %382, -2
  %387 = icmp eq i32 %386, 2
  %388 = icmp eq i32 %382, 1
  %389 = or i1 %388, %387
  %390 = icmp eq i32 %382, 4
  %391 = or i1 %390, %389
  %392 = and i1 %54, %391
  %393 = icmp ne i8 %372, 0
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %396, label %395

395:                                              ; preds = %385
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3634, ptr noundef nonnull @.str.7) #18
  br label %396

396:                                              ; preds = %381, %385, %395
  %397 = icmp eq i8 %372, 0
  %398 = load ptr, ptr %6, align 8
  %399 = select i1 %397, ptr %398, ptr %373
  %400 = load i32, ptr %399, align 8
  %401 = and i32 %400, 255
  %402 = icmp eq i32 %401, 16
  br i1 %402, label %404, label %403

403:                                              ; preds = %396
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3638, ptr noundef nonnull @.str.7) #18
  br label %404

404:                                              ; preds = %396, %403
  %405 = zext i1 %57 to i8
  %406 = call ptr @vect_is_simple_reduction(ptr noundef nonnull %33, ptr noundef nonnull %399, i8 noundef zeroext %405, ptr noundef nonnull %9)
  br i1 %80, label %409, label %407

407:                                              ; preds = %404
  %408 = icmp eq ptr %79, %406
  br i1 %408, label %413, label %411

409:                                              ; preds = %404
  %410 = icmp eq ptr %406, %0
  br i1 %410, label %413, label %411

411:                                              ; preds = %409, %407
  %412 = phi i32 [ 3643, %407 ], [ 3646, %409 ]
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %412, ptr noundef nonnull @.str.7) #18
  br label %413

413:                                              ; preds = %411, %409, %407
  %414 = getelementptr inbounds %struct.gimple_statement_base, ptr %399, i64 0, i32 1
  %415 = load i32, ptr %414, align 4, !tbaa !46
  %416 = icmp ne i32 %415, 0
  call void @llvm.assume(i1 %416)
  %417 = load ptr, ptr @stmt_vec_info_vec, align 8
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %413
  %420 = load i32, ptr %417, align 8, !tbaa !81
  br label %421

421:                                              ; preds = %419, %413
  %422 = phi i32 [ %420, %419 ], [ 0, %413 ]
  %423 = icmp ugt i32 %415, %422
  br i1 %423, label %424, label %425

424:                                              ; preds = %421
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %425

425:                                              ; preds = %424, %421
  %426 = load ptr, ptr @stmt_vec_info_vec, align 8
  %427 = add i32 %415, -1
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %426, i64 0, i32 2, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !35
  %431 = getelementptr inbounds %struct._stmt_vec_info, ptr %430, i64 0, i32 4
  %432 = load i8, ptr %431, align 4, !tbaa !143
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %434, label %1049

434:                                              ; preds = %425
  %435 = load i64, ptr %31, align 8
  %436 = and i64 %435, 65535
  %437 = icmp eq i64 %436, 14
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  %439 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %444

440:                                              ; preds = %434
  %441 = load i32, ptr %35, align 4
  %442 = lshr i32 %441, 16
  %443 = and i32 %442, 255
  br label %444

444:                                              ; preds = %440, %438
  %445 = phi i32 [ %439, %438 ], [ %443, %440 ]
  %446 = icmp ne i32 %311, 56
  br i1 %446, label %459, label %447

447:                                              ; preds = %444
  %448 = sext i32 %374 to i64
  %449 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !35
  %451 = call zeroext i8 @vectorizable_condition(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef %450, i32 noundef 0) #18
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %606

453:                                              ; preds = %447
  %454 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %1049, label %456

456:                                              ; preds = %453
  %457 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %458 = call i64 @fwrite(ptr nonnull @.str.65, i64 34, i64 1, ptr %457)
  br label %1049

459:                                              ; preds = %444
  %460 = call ptr @optab_for_tree_code(i32 noundef %311, ptr noundef nonnull %31, i32 noundef 0) #18
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %468

462:                                              ; preds = %459
  %463 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %1049, label %465

465:                                              ; preds = %462
  %466 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %467 = call i64 @fwrite(ptr nonnull @.str.66, i64 9, i64 1, ptr %466)
  br label %1049

468:                                              ; preds = %459
  %469 = sext i32 %445 to i64
  %470 = getelementptr inbounds %struct.optab_d, ptr %460, i64 0, i32 4, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !191
  %472 = icmp eq i32 %471, 2956
  br i1 %472, label %473, label %497

473:                                              ; preds = %468
  %474 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %473
  %477 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %478 = call i64 @fwrite(ptr nonnull @.str.67, i64 27, i64 1, ptr %477)
  br label %479

479:                                              ; preds = %476, %473
  %480 = zext i32 %445 to i64
  %481 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !46
  %483 = icmp eq i8 %482, 4
  br i1 %483, label %484, label %1049

484:                                              ; preds = %479
  %485 = load i32, ptr %41, align 8, !tbaa !124
  switch i32 %311, label %487 [
    i32 63, label %488
    i32 64, label %488
    i32 79, label %488
    i32 89, label %486
    i32 87, label %486
    i32 88, label %486
    i32 90, label %486
  ]

486:                                              ; preds = %484, %484, %484, %484
  br label %488

487:                                              ; preds = %484
  br label %488

488:                                              ; preds = %484, %484, %484, %486, %487
  %489 = phi i32 [ 2147483647, %487 ], [ 2, %486 ], [ 4, %484 ], [ 4, %484 ], [ 4, %484 ]
  %490 = icmp slt i32 %485, %489
  br i1 %490, label %1049, label %491

491:                                              ; preds = %488
  %492 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %496 = call i64 @fwrite(ptr nonnull @.str.68, i64 27, i64 1, ptr %495)
  br label %497

497:                                              ; preds = %491, %494, %468
  %498 = load i64, ptr %31, align 8
  %499 = and i64 %498, 65535
  %500 = icmp eq i64 %499, 14
  br i1 %500, label %501, label %503

501:                                              ; preds = %497
  %502 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %507

503:                                              ; preds = %497
  %504 = load i32, ptr %35, align 4
  %505 = lshr i32 %504, 16
  %506 = and i32 %505, 255
  br label %507

507:                                              ; preds = %503, %501
  %508 = phi i32 [ %502, %501 ], [ %506, %503 ]
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !46
  %512 = icmp eq i8 %511, 12
  br i1 %512, label %606, label %513

513:                                              ; preds = %507
  %514 = load i64, ptr %31, align 8
  %515 = and i64 %514, 65535
  %516 = icmp eq i64 %515, 14
  br i1 %516, label %517, label %519

517:                                              ; preds = %513
  %518 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %523

519:                                              ; preds = %513
  %520 = load i32, ptr %35, align 4
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  br label %523

523:                                              ; preds = %519, %517
  %524 = phi i32 [ %518, %517 ], [ %522, %519 ]
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !46
  %528 = icmp eq i8 %527, 17
  br i1 %528, label %606, label %529

529:                                              ; preds = %523
  %530 = load i64, ptr %31, align 8
  %531 = and i64 %530, 65535
  %532 = icmp eq i64 %531, 14
  br i1 %532, label %533, label %535

533:                                              ; preds = %529
  %534 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %539

535:                                              ; preds = %529
  %536 = load i32, ptr %35, align 4
  %537 = lshr i32 %536, 16
  %538 = and i32 %537, 255
  br label %539

539:                                              ; preds = %535, %533
  %540 = phi i32 [ %534, %533 ], [ %538, %535 ]
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !46
  %544 = icmp eq i8 %543, 13
  br i1 %544, label %606, label %545

545:                                              ; preds = %539
  %546 = load i64, ptr %31, align 8
  %547 = and i64 %546, 65535
  %548 = icmp eq i64 %547, 14
  br i1 %548, label %549, label %551

549:                                              ; preds = %545
  %550 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %555

551:                                              ; preds = %545
  %552 = load i32, ptr %35, align 4
  %553 = lshr i32 %552, 16
  %554 = and i32 %553, 255
  br label %555

555:                                              ; preds = %551, %549
  %556 = phi i32 [ %550, %549 ], [ %554, %551 ]
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !46
  %560 = icmp eq i8 %559, 14
  br i1 %560, label %606, label %561

561:                                              ; preds = %555
  %562 = load i64, ptr %31, align 8
  %563 = and i64 %562, 65535
  %564 = icmp eq i64 %563, 14
  br i1 %564, label %565, label %567

565:                                              ; preds = %561
  %566 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %571

567:                                              ; preds = %561
  %568 = load i32, ptr %35, align 4
  %569 = lshr i32 %568, 16
  %570 = and i32 %569, 255
  br label %571

571:                                              ; preds = %567, %565
  %572 = phi i32 [ %566, %565 ], [ %570, %567 ]
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !46
  %576 = icmp eq i8 %575, 15
  br i1 %576, label %606, label %577

577:                                              ; preds = %571
  %578 = load i64, ptr %31, align 8
  %579 = and i64 %578, 65535
  %580 = icmp eq i64 %579, 14
  br i1 %580, label %581, label %583

581:                                              ; preds = %577
  %582 = call i32 @vector_type_mode(ptr noundef nonnull %31) #18
  br label %587

583:                                              ; preds = %577
  %584 = load i32, ptr %35, align 4
  %585 = lshr i32 %584, 16
  %586 = and i32 %585, 255
  br label %587

587:                                              ; preds = %583, %581
  %588 = phi i32 [ %582, %581 ], [ %586, %583 ]
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %589
  %591 = load i8, ptr %590, align 1, !tbaa !46
  %592 = icmp eq i8 %591, 16
  br i1 %592, label %606, label %593

593:                                              ; preds = %587
  %594 = load i32, ptr %41, align 8, !tbaa !124
  switch i32 %311, label %596 [
    i32 63, label %597
    i32 64, label %597
    i32 79, label %597
    i32 89, label %595
    i32 87, label %595
    i32 88, label %595
    i32 90, label %595
  ]

595:                                              ; preds = %593, %593, %593, %593
  br label %597

596:                                              ; preds = %593
  br label %597

597:                                              ; preds = %593, %593, %593, %595, %596
  %598 = phi i32 [ 2147483647, %596 ], [ 2, %595 ], [ 4, %593 ], [ 4, %593 ], [ 4, %593 ]
  %599 = icmp slt i32 %594, %598
  br i1 %599, label %600, label %606

600:                                              ; preds = %597
  %601 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %1049, label %603

603:                                              ; preds = %600
  %604 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %605 = call i64 @fwrite(ptr nonnull @.str.69, i64 36, i64 1, ptr %604)
  br label %1049

606:                                              ; preds = %507, %523, %539, %555, %571, %587, %597, %447
  br i1 %80, label %667, label %607

607:                                              ; preds = %606
  %608 = load i32, ptr %79, align 8
  %609 = trunc i32 %608 to i8
  switch i8 %609, label %612 [
    i8 6, label %610
    i8 1, label %610
    i8 8, label %613
  ]

610:                                              ; preds = %607, %607
  %611 = lshr i32 %608, 16
  br label %613

612:                                              ; preds = %607
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %613

613:                                              ; preds = %612, %610, %607
  %614 = phi i32 [ %611, %610 ], [ 0, %612 ], [ 59, %607 ]
  %615 = zext nneg i32 %614 to i64
  %616 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !46
  %618 = icmp eq i8 %617, 3
  br i1 %618, label %619, label %639

619:                                              ; preds = %613
  %620 = load i32, ptr %79, align 8
  %621 = and i32 %620, 255
  %622 = add nsw i32 %621, -1
  %623 = icmp ult i32 %622, 9
  call void @llvm.assume(i1 %623)
  %624 = zext nneg i32 %621 to i64
  %625 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !50
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %627
  %629 = load i64, ptr %628, align 8, !tbaa !161
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %631, label %632

631:                                              ; preds = %619
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %632

632:                                              ; preds = %631, %619
  %633 = getelementptr inbounds i8, ptr %79, i64 %629
  %634 = getelementptr inbounds ptr, ptr %633, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !35
  %636 = load i64, ptr %635, align 8
  %637 = trunc i64 %636 to i32
  %638 = and i32 %637, 65535
  br label %639

639:                                              ; preds = %613, %632
  %640 = phi i32 [ %638, %632 ], [ %614, %613 ]
  %641 = load ptr, ptr %5, align 8, !tbaa !35
  %642 = getelementptr inbounds %struct.tree_common, ptr %641, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !46
  %644 = call ptr @get_vectype_for_scalar_type(ptr noundef %643) #18
  %645 = icmp eq ptr %644, null
  br i1 %645, label %646, label %656

646:                                              ; preds = %639
  %647 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %1049, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %651 = call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr %650)
  %652 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %653 = load ptr, ptr %5, align 8, !tbaa !35
  %654 = getelementptr inbounds %struct.tree_common, ptr %653, i64 0, i32 2
  %655 = load ptr, ptr %654, align 8, !tbaa !46
  call void @print_generic_expr(ptr noundef %652, ptr noundef %655, i32 noundef 2) #18
  br label %1049

656:                                              ; preds = %639
  %657 = load i64, ptr %644, align 8
  %658 = and i64 %657, 65535
  %659 = icmp eq i64 %658, 14
  br i1 %659, label %660, label %662

660:                                              ; preds = %656
  %661 = call i32 @vector_type_mode(ptr noundef nonnull %644) #18
  br label %667

662:                                              ; preds = %656
  %663 = getelementptr inbounds %struct.tree_type, ptr %644, i64 0, i32 6
  %664 = load i32, ptr %663, align 4
  %665 = lshr i32 %664, 16
  %666 = and i32 %665, 255
  br label %667

667:                                              ; preds = %606, %660, %662
  %668 = phi i32 [ %661, %660 ], [ %666, %662 ], [ %445, %606 ]
  %669 = phi i32 [ %640, %660 ], [ %640, %662 ], [ %311, %606 ]
  %670 = phi ptr [ %644, %660 ], [ %644, %662 ], [ %31, %606 ]
  br i1 %54, label %671, label %747

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.gimple_statement_base, ptr %399, i64 0, i32 4
  %673 = load ptr, ptr %672, align 8, !tbaa !46
  %674 = getelementptr inbounds %struct.basic_block_def, ptr %673, i64 0, i32 3
  %675 = load ptr, ptr %674, align 8, !tbaa !109
  %676 = call ptr @loop_preheader_edge(ptr noundef %675) #18
  %677 = getelementptr inbounds %struct.edge_def, ptr %676, i64 0, i32 6
  %678 = load i32, ptr %677, align 4, !tbaa !156
  %679 = getelementptr inbounds %struct.gimple_statement_phi, ptr %399, i64 0, i32 1
  %680 = load i32, ptr %679, align 8, !tbaa !46
  %681 = icmp ult i32 %680, %678
  br i1 %681, label %682, label %683

682:                                              ; preds = %671
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %683

683:                                              ; preds = %671, %682
  %684 = zext i32 %678 to i64
  %685 = getelementptr inbounds %struct.gimple_statement_phi, ptr %399, i64 0, i32 4, i64 %684, i32 0, i32 3
  %686 = load ptr, ptr %685, align 8, !tbaa !157
  %687 = load ptr, ptr %686, align 8, !tbaa !35
  %688 = load i64, ptr %687, align 8
  %689 = and i64 %688, 65535
  %690 = icmp eq i64 %689, 141
  br i1 %690, label %691, label %747

691:                                              ; preds = %683
  %692 = getelementptr inbounds %struct.tree_ssa_name, ptr %687, i64 0, i32 2
  %693 = load ptr, ptr %692, align 8, !tbaa !46
  %694 = icmp eq ptr %693, null
  br i1 %694, label %747, label %695

695:                                              ; preds = %691
  %696 = load i32, ptr %693, align 8
  %697 = and i32 %696, 255
  %698 = icmp eq i32 %697, 16
  br i1 %698, label %699, label %747

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.gimple_statement_base, ptr %693, i64 0, i32 4
  %701 = load ptr, ptr %700, align 8, !tbaa !46
  %702 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %56, ptr noundef %701) #18
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %747, label %704

704:                                              ; preds = %699
  %705 = getelementptr inbounds %struct.gimple_statement_base, ptr %693, i64 0, i32 1
  %706 = load i32, ptr %705, align 4, !tbaa !46
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %723, label %708

708:                                              ; preds = %704
  %709 = load ptr, ptr @stmt_vec_info_vec, align 8
  %710 = icmp eq ptr %709, null
  br i1 %710, label %713, label %711

711:                                              ; preds = %708
  %712 = load i32, ptr %709, align 8, !tbaa !81
  br label %713

713:                                              ; preds = %711, %708
  %714 = phi i32 [ %712, %711 ], [ 0, %708 ]
  %715 = icmp ugt i32 %706, %714
  br i1 %715, label %716, label %717

716:                                              ; preds = %713
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %717

717:                                              ; preds = %716, %713
  %718 = load ptr, ptr @stmt_vec_info_vec, align 8
  %719 = add i32 %706, -1
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %718, i64 0, i32 2, i64 %720
  %722 = load ptr, ptr %721, align 8, !tbaa !35
  br label %723

723:                                              ; preds = %704, %717
  %724 = phi ptr [ %722, %717 ], [ null, %704 ]
  %725 = icmp eq ptr %724, null
  br i1 %725, label %747, label %726

726:                                              ; preds = %723
  %727 = load i32, ptr %705, align 4, !tbaa !46
  %728 = icmp ne i32 %727, 0
  call void @llvm.assume(i1 %728)
  %729 = load ptr, ptr @stmt_vec_info_vec, align 8
  %730 = icmp eq ptr %729, null
  br i1 %730, label %733, label %731

731:                                              ; preds = %726
  %732 = load i32, ptr %729, align 8, !tbaa !81
  br label %733

733:                                              ; preds = %731, %726
  %734 = phi i32 [ %732, %731 ], [ 0, %726 ]
  %735 = icmp ugt i32 %727, %734
  br i1 %735, label %736, label %737

736:                                              ; preds = %733
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %737

737:                                              ; preds = %736, %733
  %738 = load ptr, ptr @stmt_vec_info_vec, align 8
  %739 = add i32 %727, -1
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %738, i64 0, i32 2, i64 %740
  %742 = load ptr, ptr %741, align 8, !tbaa !35
  %743 = getelementptr inbounds %struct._stmt_vec_info, ptr %742, i64 0, i32 16
  %744 = load i32, ptr %743, align 8, !tbaa !147
  %745 = icmp eq i32 %744, 6
  %746 = zext i1 %745 to i8
  br label %747

747:                                              ; preds = %737, %683, %691, %695, %699, %723, %667
  %748 = phi i1 [ false, %723 ], [ false, %699 ], [ false, %695 ], [ false, %691 ], [ false, %683 ], [ false, %667 ], [ %745, %737 ]
  %749 = phi i8 [ 0, %723 ], [ 0, %699 ], [ 0, %695 ], [ 0, %691 ], [ 0, %683 ], [ 0, %667 ], [ %746, %737 ]
  store i32 0, ptr %4, align 4, !tbaa !50
  %750 = call fastcc zeroext i8 @reduction_code_for_scalar_code(i32 noundef %669, ptr noundef nonnull %4), !range !148
  %751 = icmp eq i8 %750, 0
  br i1 %751, label %775, label %752

752:                                              ; preds = %747
  %753 = load i32, ptr %4, align 4, !tbaa !50
  %754 = call ptr @optab_for_tree_code(i32 noundef %753, ptr noundef nonnull %670, i32 noundef 0) #18
  %755 = icmp eq ptr %754, null
  br i1 %755, label %756, label %763

756:                                              ; preds = %752
  %757 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %762, label %759

759:                                              ; preds = %756
  %760 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %761 = call i64 @fwrite(ptr nonnull @.str.71, i64 23, i64 1, ptr %760)
  br label %762

762:                                              ; preds = %759, %756
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %783

763:                                              ; preds = %752
  %764 = sext i32 %668 to i64
  %765 = getelementptr inbounds %struct.optab_d, ptr %754, i64 0, i32 4, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !191
  %767 = icmp eq i32 %766, 2956
  br i1 %767, label %768, label %783

768:                                              ; preds = %763
  %769 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %774, label %771

771:                                              ; preds = %768
  %772 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %773 = call i64 @fwrite(ptr nonnull @.str.72, i64 33, i64 1, ptr %772)
  br label %774

774:                                              ; preds = %771, %768
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %783

775:                                              ; preds = %747
  %776 = or i1 %748, %57
  br i1 %776, label %777, label %783

777:                                              ; preds = %775
  %778 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %779 = icmp eq i8 %778, 0
  br i1 %779, label %1049, label %780

780:                                              ; preds = %777
  %781 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %782 = call i64 @fwrite(ptr nonnull @.str.73, i64 30, i64 1, ptr %781)
  br label %1049

783:                                              ; preds = %762, %775, %763, %774
  %784 = icmp sgt i32 %43, 1
  %785 = select i1 %748, i1 %784, i1 false
  br i1 %785, label %786, label %792

786:                                              ; preds = %783
  %787 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %1049, label %789

789:                                              ; preds = %786
  %790 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %791 = call i64 @fwrite(ptr nonnull @.str.74, i64 34, i64 1, ptr %790)
  br label %1049

792:                                              ; preds = %783
  %793 = icmp eq ptr %2, null
  br i1 %793, label %794, label %797

794:                                              ; preds = %792
  store i32 7, ptr %29, align 8, !tbaa !108
  %795 = load i32, ptr %4, align 4, !tbaa !50
  %796 = call fastcc zeroext i8 @vect_model_reduction_cost(ptr noundef nonnull %29, i32 noundef %795, i32 noundef %43), !range !148
  br label %1049

797:                                              ; preds = %792
  %798 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %799 = icmp eq i8 %798, 0
  br i1 %799, label %803, label %800

800:                                              ; preds = %797
  %801 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %802 = call i64 @fwrite(ptr nonnull @.str.75, i64 20, i64 1, ptr %801)
  br label %803

803:                                              ; preds = %800, %797
  %804 = icmp eq i32 %43, 1
  %805 = select i1 %446, i1 true, i1 %804
  br i1 %805, label %807, label %806

806:                                              ; preds = %803
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3835, ptr noundef nonnull @.str.7) #18
  br label %807

807:                                              ; preds = %806, %803
  %808 = call ptr @vect_create_destination_var(ptr noundef %329, ptr noundef nonnull %670) #18
  %809 = load i32, ptr %65, align 8, !tbaa !137
  %810 = icmp eq i32 %809, 0
  %811 = select i1 %810, i32 1, i32 %43
  %812 = icmp sgt i32 %43, 0
  br i1 %812, label %813, label %1024

813:                                              ; preds = %807
  %814 = getelementptr inbounds %struct.loop, ptr %55, i64 0, i32 2
  %815 = icmp eq i32 %310, 3
  %816 = icmp eq i32 %374, 0
  %817 = zext i1 %816 to i64
  %818 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %817
  %819 = icmp eq i32 %310, 3
  %820 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  %821 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  %822 = icmp eq i32 %310, 2
  %823 = icmp eq i32 %374, 0
  %824 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 6
  br label %825

825:                                              ; preds = %813, %1020
  %826 = phi ptr [ null, %813 ], [ %929, %1020 ]
  %827 = phi ptr [ null, %813 ], [ %928, %1020 ]
  %828 = phi i32 [ 0, %813 ], [ %1022, %1020 ]
  %829 = phi ptr [ null, %813 ], [ %944, %1020 ]
  %830 = phi ptr [ null, %813 ], [ %927, %1020 ]
  %831 = phi ptr [ null, %813 ], [ %926, %1020 ]
  %832 = phi ptr [ null, %813 ], [ %1021, %1020 ]
  %833 = phi ptr [ null, %813 ], [ %1001, %1020 ]
  %834 = phi ptr [ null, %813 ], [ %879, %1020 ]
  %835 = icmp ne i32 %828, 0
  %836 = and i1 %810, %835
  br i1 %836, label %878, label %837

837:                                              ; preds = %825
  %838 = load ptr, ptr %814, align 8, !tbaa !95
  %839 = call ptr @create_phi_node(ptr noundef %808, ptr noundef %838) #18
  %840 = call ptr @new_stmt_vec_info(ptr noundef %839, ptr noundef nonnull %33, ptr noundef null) #18
  %841 = getelementptr inbounds %struct.gimple_statement_base, ptr %839, i64 0, i32 1
  %842 = load i32, ptr %841, align 4, !tbaa !46
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %868

844:                                              ; preds = %837
  %845 = icmp eq ptr %840, null
  br i1 %845, label %846, label %847

846:                                              ; preds = %844
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %847

847:                                              ; preds = %846, %844
  %848 = load ptr, ptr @stmt_vec_info_vec, align 8
  %849 = icmp eq ptr %848, null
  br i1 %849, label %853, label %850

850:                                              ; preds = %847
  %851 = load i32, ptr %848, align 8, !tbaa !81
  %852 = add i32 %851, 1
  br label %853

853:                                              ; preds = %850, %847
  %854 = phi i32 [ %852, %850 ], [ 1, %847 ]
  store i32 %854, ptr %841, align 4, !tbaa !46
  %855 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %856 = icmp eq ptr %855, null
  br i1 %856, label %862, label %857

857:                                              ; preds = %853
  %858 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %855, i64 0, i32 1
  %859 = load i32, ptr %858, align 4, !tbaa !116
  %860 = load i32, ptr %855, align 8, !tbaa !81
  %861 = icmp eq i32 %859, %860
  br i1 %861, label %862, label %864

862:                                              ; preds = %857, %853
  %863 = call ptr @vec_heap_p_reserve(ptr noundef %855, i32 noundef 1) #18
  store ptr %863, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %864

864:                                              ; preds = %862, %857
  %865 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %866 = load i32, ptr %865, align 8, !tbaa !81
  %867 = add i32 %866, 1
  store i32 %867, ptr %865, align 8, !tbaa !81
  br label %871

868:                                              ; preds = %837
  %869 = load ptr, ptr @stmt_vec_info_vec, align 8
  %870 = add i32 %842, -1
  br label %871

871:                                              ; preds = %864, %868
  %872 = phi i32 [ %866, %864 ], [ %870, %868 ]
  %873 = phi ptr [ %865, %864 ], [ %869, %868 ]
  %874 = zext i32 %872 to i64
  %875 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %873, i64 0, i32 2, i64 %874
  store ptr %840, ptr %875, align 8, !tbaa !35
  %876 = getelementptr inbounds %struct.gimple_statement_phi, ptr %839, i64 0, i32 3
  %877 = load ptr, ptr %876, align 8, !tbaa !35
  br label %878

878:                                              ; preds = %825, %871
  %879 = phi ptr [ %834, %825 ], [ %839, %871 ]
  %880 = phi ptr [ %830, %825 ], [ %877, %871 ]
  br i1 %446, label %883, label %881

881:                                              ; preds = %878
  %882 = call zeroext i8 @vectorizable_condition(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %880, i32 noundef %374) #18
  br label %1024

883:                                              ; preds = %878
  %884 = icmp eq i32 %828, 0
  br i1 %884, label %885, label %895

885:                                              ; preds = %883
  %886 = load ptr, ptr %818, align 8, !tbaa !35
  %887 = call ptr @vect_get_vec_def_for_operand(ptr noundef %886, ptr noundef nonnull %0, ptr noundef null) #18
  br i1 %819, label %888, label %925

888:                                              ; preds = %885
  br i1 %816, label %889, label %892

889:                                              ; preds = %888
  %890 = load ptr, ptr %821, align 16, !tbaa !35
  %891 = call ptr @vect_get_vec_def_for_operand(ptr noundef %890, ptr noundef nonnull %0, ptr noundef null) #18
  br label %925

892:                                              ; preds = %888
  %893 = load ptr, ptr %820, align 8, !tbaa !35
  %894 = call ptr @vect_get_vec_def_for_operand(ptr noundef %893, ptr noundef nonnull %0, ptr noundef null) #18
  br label %925

895:                                              ; preds = %883
  %896 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %826) #18
  br i1 %815, label %897, label %899

897:                                              ; preds = %895
  %898 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %827) #18
  br label %899

899:                                              ; preds = %897, %895
  %900 = phi ptr [ %898, %897 ], [ %827, %895 ]
  br i1 %810, label %901, label %917

901:                                              ; preds = %899
  %902 = load i32, ptr %829, align 8
  %903 = and i32 %902, 255
  %904 = add nsw i32 %903, -10
  %905 = icmp ult i32 %904, -9
  br i1 %905, label %922, label %906

906:                                              ; preds = %901
  %907 = zext nneg i32 %903 to i64
  %908 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %907
  %909 = load i32, ptr %908, align 4, !tbaa !50
  %910 = zext i32 %909 to i64
  %911 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %910
  %912 = load i64, ptr %911, align 8, !tbaa !161
  %913 = icmp eq i64 %912, 0
  br i1 %913, label %914, label %915

914:                                              ; preds = %906
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %915

915:                                              ; preds = %914, %906
  %916 = getelementptr inbounds i8, ptr %829, i64 %912
  br label %919

917:                                              ; preds = %899
  %918 = getelementptr inbounds %struct.gimple_statement_phi, ptr %879, i64 0, i32 3
  br label %919

919:                                              ; preds = %917, %915
  %920 = phi ptr [ %916, %915 ], [ %918, %917 ]
  %921 = load ptr, ptr %920, align 8, !tbaa !35
  br label %922

922:                                              ; preds = %919, %901
  %923 = phi ptr [ null, %901 ], [ %921, %919 ]
  %924 = getelementptr inbounds %struct._stmt_vec_info, ptr %832, i64 0, i32 14
  store ptr %879, ptr %924, align 8, !tbaa !83
  br label %925

925:                                              ; preds = %885, %892, %889, %922
  %926 = phi ptr [ %831, %922 ], [ %879, %889 ], [ %879, %892 ], [ %879, %885 ]
  %927 = phi ptr [ %923, %922 ], [ %880, %889 ], [ %880, %892 ], [ %880, %885 ]
  %928 = phi ptr [ %900, %922 ], [ %891, %889 ], [ %894, %892 ], [ %827, %885 ]
  %929 = phi ptr [ %896, %922 ], [ %887, %889 ], [ %887, %892 ], [ %887, %885 ]
  br i1 %822, label %930, label %935

930:                                              ; preds = %925
  br i1 %823, label %931, label %933

931:                                              ; preds = %930
  %932 = call ptr @build2_stat(i32 noundef %311, ptr noundef nonnull %670, ptr noundef %927, ptr noundef %929) #18
  br label %942

933:                                              ; preds = %930
  %934 = call ptr @build2_stat(i32 noundef %311, ptr noundef nonnull %670, ptr noundef %929, ptr noundef %927) #18
  br label %942

935:                                              ; preds = %925
  switch i32 %374, label %940 [
    i32 0, label %936
    i32 1, label %938
  ]

936:                                              ; preds = %935
  %937 = call ptr @build3_stat(i32 noundef %311, ptr noundef nonnull %670, ptr noundef %927, ptr noundef %929, ptr noundef %928) #18
  br label %942

938:                                              ; preds = %935
  %939 = call ptr @build3_stat(i32 noundef %311, ptr noundef nonnull %670, ptr noundef %929, ptr noundef %927, ptr noundef %928) #18
  br label %942

940:                                              ; preds = %935
  %941 = call ptr @build3_stat(i32 noundef %311, ptr noundef nonnull %670, ptr noundef %929, ptr noundef %928, ptr noundef %927) #18
  br label %942

942:                                              ; preds = %936, %940, %938, %931, %933
  %943 = phi ptr [ %932, %931 ], [ %934, %933 ], [ %937, %936 ], [ %939, %938 ], [ %941, %940 ]
  %944 = call ptr @gimple_build_assign_stat(ptr noundef %808, ptr noundef %943) #18
  %945 = load ptr, ptr @cfun, align 8, !tbaa !35
  %946 = call ptr @make_ssa_name_fn(ptr noundef %945, ptr noundef %808, ptr noundef %944) #18
  %947 = load i32, ptr %944, align 8
  %948 = and i32 %947, 255
  %949 = add nsw i32 %948, -10
  %950 = icmp ult i32 %949, -9
  br i1 %950, label %955, label %951

951:                                              ; preds = %942
  %952 = getelementptr inbounds %struct.gimple_statement_base, ptr %944, i64 0, i32 3
  %953 = load i32, ptr %952, align 4, !tbaa !46
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %956

955:                                              ; preds = %951, %942
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %956

956:                                              ; preds = %955, %951
  %957 = load i32, ptr %944, align 8
  %958 = and i32 %957, 255
  %959 = zext nneg i32 %958 to i64
  %960 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %959
  %961 = load i32, ptr %960, align 4, !tbaa !50
  %962 = zext i32 %961 to i64
  %963 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %962
  %964 = load i64, ptr %963, align 8, !tbaa !161
  %965 = icmp eq i64 %964, 0
  br i1 %965, label %966, label %967

966:                                              ; preds = %956
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %967

967:                                              ; preds = %966, %956
  %968 = getelementptr inbounds i8, ptr %944, i64 %964
  store ptr %946, ptr %968, align 8, !tbaa !35
  %969 = icmp eq ptr %946, null
  br i1 %969, label %976, label %970

970:                                              ; preds = %967
  %971 = load i64, ptr %946, align 8
  %972 = and i64 %971, 65535
  %973 = icmp eq i64 %972, 141
  br i1 %973, label %974, label %976

974:                                              ; preds = %970
  %975 = getelementptr inbounds %struct.tree_ssa_name, ptr %946, i64 0, i32 2
  store ptr %944, ptr %975, align 8, !tbaa !46
  br label %976

976:                                              ; preds = %967, %970, %974
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %944, ptr noundef %1) #18
  br i1 %884, label %977, label %978

977:                                              ; preds = %976
  store ptr %944, ptr %2, align 8, !tbaa !35
  br label %980

978:                                              ; preds = %976
  %979 = getelementptr inbounds %struct._stmt_vec_info, ptr %833, i64 0, i32 14
  br label %980

980:                                              ; preds = %978, %977
  %981 = phi ptr [ %979, %978 ], [ %824, %977 ]
  store ptr %944, ptr %981, align 8, !tbaa !35
  %982 = getelementptr inbounds %struct.gimple_statement_base, ptr %944, i64 0, i32 1
  %983 = load i32, ptr %982, align 4, !tbaa !46
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1000, label %985

985:                                              ; preds = %980
  %986 = load ptr, ptr @stmt_vec_info_vec, align 8
  %987 = icmp eq ptr %986, null
  br i1 %987, label %990, label %988

988:                                              ; preds = %985
  %989 = load i32, ptr %986, align 8, !tbaa !81
  br label %990

990:                                              ; preds = %988, %985
  %991 = phi i32 [ %989, %988 ], [ 0, %985 ]
  %992 = icmp ugt i32 %983, %991
  br i1 %992, label %993, label %994

993:                                              ; preds = %990
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %994

994:                                              ; preds = %993, %990
  %995 = load ptr, ptr @stmt_vec_info_vec, align 8
  %996 = add i32 %983, -1
  %997 = zext i32 %996 to i64
  %998 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %995, i64 0, i32 2, i64 %997
  %999 = load ptr, ptr %998, align 8, !tbaa !35
  br label %1000

1000:                                             ; preds = %980, %994
  %1001 = phi ptr [ %999, %994 ], [ null, %980 ]
  %1002 = getelementptr inbounds %struct.gimple_statement_base, ptr %879, i64 0, i32 1
  %1003 = load i32, ptr %1002, align 4, !tbaa !46
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1020, label %1005

1005:                                             ; preds = %1000
  %1006 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1010, label %1008

1008:                                             ; preds = %1005
  %1009 = load i32, ptr %1006, align 8, !tbaa !81
  br label %1010

1010:                                             ; preds = %1008, %1005
  %1011 = phi i32 [ %1009, %1008 ], [ 0, %1005 ]
  %1012 = icmp ugt i32 %1003, %1011
  br i1 %1012, label %1013, label %1014

1013:                                             ; preds = %1010
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %1014

1014:                                             ; preds = %1013, %1010
  %1015 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1016 = add i32 %1003, -1
  %1017 = zext i32 %1016 to i64
  %1018 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1015, i64 0, i32 2, i64 %1017
  %1019 = load ptr, ptr %1018, align 8, !tbaa !35
  br label %1020

1020:                                             ; preds = %1000, %1014
  %1021 = phi ptr [ %1019, %1014 ], [ null, %1000 ]
  %1022 = add nuw nsw i32 %828, 1
  %1023 = icmp eq i32 %1022, %43
  br i1 %1023, label %1024, label %825, !llvm.loop !193

1024:                                             ; preds = %1020, %807, %881
  %1025 = phi ptr [ null, %881 ], [ null, %807 ], [ %946, %1020 ]
  %1026 = phi ptr [ %879, %881 ], [ null, %807 ], [ %926, %1020 ]
  %1027 = and i1 %446, %810
  br i1 %1027, label %1046, label %1028

1028:                                             ; preds = %1024
  %1029 = load ptr, ptr %2, align 8, !tbaa !35
  %1030 = load i32, ptr %1029, align 8
  %1031 = and i32 %1030, 255
  %1032 = add nsw i32 %1031, -10
  %1033 = icmp ult i32 %1032, -9
  br i1 %1033, label %1046, label %1034

1034:                                             ; preds = %1028
  %1035 = zext nneg i32 %1031 to i64
  %1036 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1035
  %1037 = load i32, ptr %1036, align 4, !tbaa !50
  %1038 = zext i32 %1037 to i64
  %1039 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1038
  %1040 = load i64, ptr %1039, align 8, !tbaa !161
  %1041 = icmp eq i64 %1040, 0
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1034
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %1043

1043:                                             ; preds = %1042, %1034
  %1044 = getelementptr inbounds i8, ptr %1029, i64 %1040
  %1045 = load ptr, ptr %1044, align 8, !tbaa !35
  br label %1046

1046:                                             ; preds = %1043, %1028, %1024
  %1047 = phi ptr [ %1025, %1024 ], [ %1045, %1043 ], [ null, %1028 ]
  %1048 = load i32, ptr %4, align 4, !tbaa !50
  call fastcc void @vect_create_epilog_for_reduction(ptr noundef %1047, ptr noundef nonnull %0, i32 noundef %811, i32 noundef %1048, ptr noundef %1026, i32 noundef %374, i8 noundef zeroext %749)
  br label %1049

1049:                                             ; preds = %353, %153, %70, %794, %786, %789, %777, %780, %646, %649, %600, %603, %479, %488, %462, %465, %453, %456, %425, %328, %193, %74, %64, %60, %1046
  %1050 = phi i8 [ 1, %1046 ], [ 0, %60 ], [ 0, %64 ], [ 0, %74 ], [ 0, %193 ], [ 0, %328 ], [ 0, %425 ], [ 0, %456 ], [ 0, %453 ], [ 0, %465 ], [ 0, %462 ], [ 0, %488 ], [ 0, %479 ], [ 0, %603 ], [ 0, %600 ], [ 0, %649 ], [ 0, %646 ], [ 0, %780 ], [ 0, %777 ], [ 0, %789 ], [ 0, %786 ], [ %796, %794 ], [ 0, %70 ], [ 0, %153 ], [ 0, %353 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i8 %1050
}

declare zeroext i8 @vect_is_simple_use(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vectorizable_condition(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @vect_min_worthwhile_factor(i32 noundef %0) local_unnamed_addr #12 !prof !34 {
  switch i32 %0, label %3 [
    i32 63, label %4
    i32 64, label %4
    i32 79, label %4
    i32 89, label %2
    i32 87, label %2
    i32 88, label %2
    i32 90, label %2
  ]

2:                                                ; preds = %1, %1, %1, %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %1, %1, %1, %3, %2
  %5 = phi i32 [ 2147483647, %3 ], [ 2, %2 ], [ 4, %1 ], [ 4, %1 ], [ 4, %1 ]
  ret i32 %5
}

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @reduction_code_for_scalar_code(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 !prof !34 {
  switch i32 %0, label %8 [
    i32 81, label %6
    i32 80, label %3
    i32 63, label %4
    i32 65, label %5
    i32 64, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
  ]

3:                                                ; preds = %2
  br label %6

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2, %2, %2, %2, %2
  br label %6

6:                                                ; preds = %2, %3, %4, %5
  %7 = phi i32 [ 0, %5 ], [ 166, %4 ], [ 165, %3 ], [ 164, %2 ]
  store i32 %7, ptr %1, align 4, !tbaa !50
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %6 ]
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_model_reduction_cost(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.processor_costs, ptr %7, i64 0, i32 40
  %9 = load i32, ptr %8, align 4, !tbaa !194
  %10 = mul nsw i32 %9, %2
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !172
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %12, align 4, !tbaa !172
  %15 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !195
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %21 [
    i8 6, label %19
    i8 1, label %19
    i8 8, label %22
  ]

19:                                               ; preds = %3, %3
  %20 = lshr i32 %17, 16
  br label %22

21:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %22

22:                                               ; preds = %21, %19, %3
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], [ 59, %3 ]
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !46
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i32, ptr %16, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -1
  %32 = icmp ult i32 %31, 9
  tail call void @llvm.assume(i1 %32)
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !161
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %41

41:                                               ; preds = %40, %28
  %42 = getelementptr inbounds i8, ptr %16, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  br label %48

48:                                               ; preds = %22, %41
  %49 = phi i32 [ %47, %41 ], [ %23, %22 ]
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !46
  switch i8 %52, label %151 [
    i8 3, label %53
    i8 2, label %111
    i8 1, label %129
  ]

53:                                               ; preds = %48
  %54 = load i32, ptr %16, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !161
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %16, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %53, %67
  %72 = phi ptr [ %70, %67 ], [ null, %53 ]
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = getelementptr inbounds %struct.tree_int_cst, ptr %80, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !46
  %83 = trunc i64 %82 to i32
  br label %88

84:                                               ; preds = %71
  %85 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %74
  %86 = load i8, ptr %85, align 1, !tbaa !46
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %78, %84
  %89 = phi i32 [ %83, %78 ], [ %87, %84 ]
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2249, ptr noundef nonnull @.str.7) #18
  br label %92

92:                                               ; preds = %88, %91
  %93 = load i32, ptr %16, align 8
  %94 = and i32 %93, 255
  %95 = add nsw i32 %94, -1
  %96 = icmp ult i32 %95, 9
  tail call void @llvm.assume(i1 %96)
  %97 = zext nneg i32 %94 to i64
  %98 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !161
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %105

105:                                              ; preds = %104, %92
  %106 = getelementptr inbounds i8, ptr %16, i64 %102
  %107 = getelementptr inbounds ptr, ptr %106, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 1, i32 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  br label %152

111:                                              ; preds = %48
  %112 = load i32, ptr %16, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -10
  %115 = icmp ult i32 %114, -9
  br i1 %115, label %152, label %116

116:                                              ; preds = %111
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !50
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !161
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %125

125:                                              ; preds = %124, %116
  %126 = getelementptr inbounds i8, ptr %16, i64 %122
  %127 = getelementptr inbounds ptr, ptr %126, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !35
  br label %152

129:                                              ; preds = %48
  %130 = getelementptr inbounds %struct.gimple_statement_base, ptr %16, i64 0, i32 3
  %131 = load i32, ptr %130, align 4, !tbaa !46
  %132 = icmp ugt i32 %131, 2
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i32, ptr %16, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %152, label %138

138:                                              ; preds = %133
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !161
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %16, i64 %144
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  br label %152

151:                                              ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2259, ptr noundef nonnull @.str.7) #18
  br label %152

152:                                              ; preds = %147, %133, %129, %125, %111, %151, %105
  %153 = phi ptr [ undef, %151 ], [ %110, %105 ], [ %128, %125 ], [ null, %111 ], [ null, %129 ], [ %150, %147 ], [ null, %133 ]
  %154 = getelementptr inbounds %struct.tree_common, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  %156 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %155) #18
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %312, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %163 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr %162)
  %164 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %165 = load ptr, ptr %154, align 8, !tbaa !46
  tail call void @print_generic_expr(ptr noundef %164, ptr noundef %165, i32 noundef 2) #18
  br label %312

166:                                              ; preds = %152
  %167 = load i64, ptr %156, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 14
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = tail call i32 @vector_type_mode(ptr noundef nonnull %156) #18
  br label %177

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.tree_type, ptr %156, i64 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  br label %177

177:                                              ; preds = %172, %170
  %178 = phi i32 [ %171, %170 ], [ %176, %172 ]
  %179 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 14
  %180 = load ptr, ptr %179, align 8, !tbaa !83
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load ptr, ptr %15, align 8, !tbaa !195
  br label %184

184:                                              ; preds = %182, %177
  %185 = phi ptr [ %180, %177 ], [ %183, %182 ]
  %186 = load i32, ptr %185, align 8
  %187 = trunc i32 %186 to i8
  switch i8 %187, label %190 [
    i8 6, label %188
    i8 1, label %188
    i8 8, label %191
  ]

188:                                              ; preds = %184, %184
  %189 = lshr i32 %186, 16
  br label %191

190:                                              ; preds = %184
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %191

191:                                              ; preds = %190, %188, %184
  %192 = phi i32 [ %189, %188 ], [ 0, %190 ], [ 59, %184 ]
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !46
  %196 = icmp eq i8 %195, 3
  br i1 %196, label %197, label %217

197:                                              ; preds = %191
  %198 = load i32, ptr %185, align 8
  %199 = and i32 %198, 255
  %200 = add nsw i32 %199, -1
  %201 = icmp ult i32 %200, 9
  tail call void @llvm.assume(i1 %201)
  %202 = zext nneg i32 %199 to i64
  %203 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !50
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !161
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %210

210:                                              ; preds = %209, %197
  %211 = getelementptr inbounds i8, ptr %185, i64 %207
  %212 = getelementptr inbounds ptr, ptr %211, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  %214 = load i64, ptr %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = and i32 %215, 65535
  br label %217

217:                                              ; preds = %191, %210
  %218 = phi i32 [ %216, %210 ], [ %192, %191 ]
  %219 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %220 = getelementptr inbounds %struct.processor_costs, ptr %219, i64 0, i32 42
  %221 = load i32, ptr %220, align 4, !tbaa !196
  %222 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 8
  %223 = load ptr, ptr %222, align 8, !tbaa !94
  %224 = icmp eq ptr %223, null
  br i1 %224, label %231, label %225

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.gimple_statement_base, ptr %185, i64 0, i32 4
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !109
  %230 = icmp eq ptr %223, %229
  br i1 %230, label %303, label %231

231:                                              ; preds = %217, %225
  %232 = icmp eq i32 %1, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.processor_costs, ptr %219, i64 0, i32 40
  %235 = load i32, ptr %234, align 4, !tbaa !194
  %236 = getelementptr inbounds %struct.processor_costs, ptr %219, i64 0, i32 41
  %237 = load i32, ptr %236, align 4, !tbaa !197
  %238 = add i32 %235, %221
  %239 = add i32 %238, %237
  br label %303

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.tree_type, ptr %156, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !46
  %243 = tail call i64 @tree_low_cst(ptr noundef %242, i32 noundef 1) #18
  %244 = trunc i64 %243 to i32
  %245 = load i32, ptr %185, align 8
  %246 = and i32 %245, 255
  %247 = add nsw i32 %246, -1
  %248 = icmp ult i32 %247, 9
  tail call void @llvm.assume(i1 %248)
  %249 = zext nneg i32 %246 to i64
  %250 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !50
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %252
  %254 = load i64, ptr %253, align 8, !tbaa !161
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %240
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %257

257:                                              ; preds = %256, %240
  %258 = getelementptr inbounds i8, ptr %185, i64 %254
  %259 = load ptr, ptr %258, align 8, !tbaa !35
  %260 = getelementptr inbounds %struct.tree_common, ptr %259, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !46
  %262 = getelementptr inbounds %struct.tree_type, ptr %261, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = tail call i64 @tree_low_cst(ptr noundef %263, i32 noundef 1) #18
  %265 = trunc i64 %264 to i32
  %266 = sdiv i32 %244, %265
  %267 = tail call ptr @optab_for_tree_code(i32 noundef %218, ptr noundef nonnull %156, i32 noundef 0) #18
  %268 = zext i32 %178 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !46
  %271 = add i8 %270, -12
  %272 = icmp ult i8 %271, 6
  br i1 %272, label %273, label %293

273:                                              ; preds = %257
  %274 = sext i32 %178 to i64
  %275 = getelementptr inbounds %struct.optab_d, ptr %267, i64 0, i32 4, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !191
  %277 = icmp eq i32 %276, 2956
  br i1 %277, label %293, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 %274
  %280 = load i32, ptr %279, align 4, !tbaa !191
  %281 = icmp eq i32 %280, 2956
  br i1 %281, label %293, label %282

282:                                              ; preds = %278
  %283 = sext i32 %266 to i64
  %284 = tail call i32 @exact_log2(i64 noundef %283) #18
  %285 = shl nsw i32 %284, 1
  %286 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %287 = getelementptr inbounds %struct.processor_costs, ptr %286, i64 0, i32 40
  %288 = load i32, ptr %287, align 4, !tbaa !194
  %289 = mul nsw i32 %285, %288
  %290 = getelementptr inbounds %struct.processor_costs, ptr %286, i64 0, i32 41
  %291 = load i32, ptr %290, align 4, !tbaa !197
  %292 = add nsw i32 %289, %291
  br label %300

293:                                              ; preds = %257, %278, %273
  %294 = shl nsw i32 %266, 1
  %295 = add nsw i32 %294, -1
  %296 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %297 = getelementptr inbounds %struct.processor_costs, ptr %296, i64 0, i32 40
  %298 = load i32, ptr %297, align 4, !tbaa !194
  %299 = mul nsw i32 %298, %295
  br label %300

300:                                              ; preds = %293, %282
  %301 = phi i32 [ %292, %282 ], [ %299, %293 ]
  %302 = add nsw i32 %301, %221
  br label %303

303:                                              ; preds = %233, %300, %225
  %304 = phi i32 [ %221, %225 ], [ %239, %233 ], [ %302, %300 ]
  store i32 %304, ptr %11, align 4, !tbaa !173
  %305 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %303
  %308 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %309 = load i32, ptr %12, align 4, !tbaa !172
  %310 = load i32, ptr %11, align 4, !tbaa !173
  %311 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef nonnull @.str.137, i32 noundef %309, i32 noundef %310)
  br label %312

312:                                              ; preds = %303, %307, %158, %161
  %313 = phi i8 [ 0, %161 ], [ 0, %158 ], [ 1, %307 ], [ 1, %303 ]
  ret i8 %313
}

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vect_get_vec_def_for_stmt_copy(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_finish_stmt_generation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_create_epilog_for_reduction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #9 !prof !34 {
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.immediate_use_iterator_d, align 8
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !81
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %21 = icmp ugt i32 %12, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @stmt_vec_info_vec, align 8
  %25 = add i32 %12, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %24, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %7, %23
  %30 = phi ptr [ %28, %23 ], [ null, %7 ]
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !110
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %34 = load i32, ptr %1, align 8
  %35 = trunc i32 %34 to i8
  switch i8 %35, label %38 [
    i8 6, label %36
    i8 1, label %36
    i8 8, label %39
  ]

36:                                               ; preds = %29, %29
  %37 = lshr i32 %34, 16
  br label %39

38:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %39

39:                                               ; preds = %38, %36, %29
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ], [ 59, %29 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i32, ptr %1, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -1
  %49 = icmp ult i32 %48, 9
  tail call void @llvm.assume(i1 %49)
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !161
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %58

58:                                               ; preds = %45, %57, %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #18
  %59 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !94
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !109
  %67 = icmp eq ptr %60, %66
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %58, %62
  %70 = phi i8 [ 0, %58 ], [ %68, %62 ]
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, ptr null, ptr %33
  %73 = select i1 %71, ptr %33, ptr %60
  %74 = load i32, ptr %1, align 8
  %75 = trunc i32 %74 to i8
  switch i8 %75, label %78 [
    i8 6, label %76
    i8 1, label %76
    i8 8, label %79
  ]

76:                                               ; preds = %69, %69
  %77 = lshr i32 %74, 16
  br label %79

78:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %79

79:                                               ; preds = %78, %76, %69
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ], [ 59, %69 ]
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !46
  %84 = icmp eq i8 %83, 3
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load i32, ptr %1, align 8
  %87 = and i32 %86, 255
  %88 = add nsw i32 %87, -1
  %89 = icmp ult i32 %88, 9
  tail call void @llvm.assume(i1 %89)
  %90 = zext nneg i32 %87 to i64
  %91 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !161
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %98

98:                                               ; preds = %97, %85
  %99 = getelementptr inbounds i8, ptr %1, i64 %95
  %100 = getelementptr inbounds ptr, ptr %99, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = load i64, ptr %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = and i32 %103, 65535
  br label %105

105:                                              ; preds = %79, %98
  %106 = phi i32 [ %104, %98 ], [ %80, %79 ]
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !46
  switch i8 %109, label %229 [
    i8 3, label %110
    i8 2, label %169
    i8 1, label %187
  ]

110:                                              ; preds = %105
  %111 = load i32, ptr %1, align 8
  %112 = and i32 %111, 255
  %113 = add nsw i32 %112, -10
  %114 = icmp ult i32 %113, -9
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = zext nneg i32 %112 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !161
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds i8, ptr %1, i64 %121
  %126 = getelementptr inbounds ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  br label %128

128:                                              ; preds = %110, %124
  %129 = phi ptr [ %127, %124 ], [ null, %110 ]
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !50
  %134 = icmp eq i32 %133, 9
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = getelementptr inbounds %struct.tree_int_cst, ptr %137, i64 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !46
  %140 = trunc i64 %139 to i32
  br label %145

141:                                              ; preds = %128
  %142 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %131
  %143 = load i8, ptr %142, align 1, !tbaa !46
  %144 = zext i8 %143 to i32
  br label %145

145:                                              ; preds = %135, %141
  %146 = phi i32 [ %140, %135 ], [ %144, %141 ]
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2942, ptr noundef nonnull @.str.7) #18
  br label %149

149:                                              ; preds = %145, %148
  %150 = load i32, ptr %1, align 8
  %151 = and i32 %150, 255
  %152 = add nsw i32 %151, -1
  %153 = icmp ult i32 %152, 9
  tail call void @llvm.assume(i1 %153)
  %154 = zext nneg i32 %151 to i64
  %155 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !50
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !161
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %162

162:                                              ; preds = %161, %149
  %163 = getelementptr inbounds i8, ptr %1, i64 %159
  %164 = getelementptr inbounds ptr, ptr %163, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !35
  %166 = sext i32 %5 to i64
  %167 = getelementptr inbounds %struct.tree_exp, ptr %165, i64 0, i32 3, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  br label %230

169:                                              ; preds = %105
  %170 = load i32, ptr %1, align 8
  %171 = and i32 %170, 255
  %172 = add nsw i32 %171, -10
  %173 = icmp ult i32 %172, -9
  br i1 %173, label %230, label %174

174:                                              ; preds = %169
  %175 = zext nneg i32 %171 to i64
  %176 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !50
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %178
  %180 = load i64, ptr %179, align 8, !tbaa !161
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %183

183:                                              ; preds = %182, %174
  %184 = getelementptr inbounds i8, ptr %1, i64 %180
  %185 = getelementptr inbounds ptr, ptr %184, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !35
  br label %230

187:                                              ; preds = %105
  %188 = icmp eq i32 %5, 0
  br i1 %188, label %211, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %191 = load i32, ptr %190, align 4, !tbaa !46
  %192 = icmp ugt i32 %191, 2
  br i1 %192, label %193, label %230

193:                                              ; preds = %189
  %194 = load i32, ptr %1, align 8
  %195 = and i32 %194, 255
  %196 = add nsw i32 %195, -10
  %197 = icmp ult i32 %196, -9
  br i1 %197, label %230, label %198

198:                                              ; preds = %193
  %199 = zext nneg i32 %195 to i64
  %200 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !50
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !161
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %207

207:                                              ; preds = %206, %198
  %208 = getelementptr inbounds i8, ptr %1, i64 %204
  %209 = getelementptr inbounds ptr, ptr %208, i64 2
  %210 = load ptr, ptr %209, align 8, !tbaa !35
  br label %230

211:                                              ; preds = %187
  %212 = load i32, ptr %1, align 8
  %213 = and i32 %212, 255
  %214 = add nsw i32 %213, -10
  %215 = icmp ult i32 %214, -9
  br i1 %215, label %230, label %216

216:                                              ; preds = %211
  %217 = zext nneg i32 %213 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !50
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !161
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %225

225:                                              ; preds = %224, %216
  %226 = getelementptr inbounds i8, ptr %1, i64 %222
  %227 = getelementptr inbounds ptr, ptr %226, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !35
  br label %230

229:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2953, ptr noundef nonnull @.str.7) #18
  br label %230

230:                                              ; preds = %225, %211, %207, %193, %189, %183, %169, %229, %162
  %231 = phi ptr [ undef, %229 ], [ %168, %162 ], [ %186, %183 ], [ null, %169 ], [ null, %189 ], [ %210, %207 ], [ null, %193 ], [ %228, %225 ], [ null, %211 ]
  %232 = getelementptr inbounds %struct.tree_common, ptr %231, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  %234 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %233) #18
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2957, ptr noundef nonnull @.str.7) #18
  br label %237

237:                                              ; preds = %230, %236
  %238 = load i64, ptr %234, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 14
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = tail call i32 @vector_type_mode(ptr noundef nonnull %234) #18
  br label %248

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.tree_type, ptr %234, i64 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  br label %248

248:                                              ; preds = %243, %241
  %249 = phi i32 [ %242, %241 ], [ %247, %243 ]
  %250 = call ptr @vect_get_vec_def_for_operand(ptr noundef %231, ptr noundef nonnull %1, ptr noundef nonnull %9) #18
  %251 = icmp sgt i32 %2, 0
  br i1 %251, label %252, label %296

252:                                              ; preds = %248, %286
  %253 = phi ptr [ %293, %286 ], [ %4, %248 ]
  %254 = phi ptr [ %261, %286 ], [ %0, %248 ]
  %255 = phi i32 [ %294, %286 ], [ 0, %248 ]
  %256 = call ptr @loop_preheader_edge(ptr noundef %73) #18
  call void @add_phi_arg(ptr noundef %253, ptr noundef %250, ptr noundef %256, i32 noundef 0) #18
  %257 = icmp eq i32 %255, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %252
  %259 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %254) #18
  br label %260

260:                                              ; preds = %258, %252
  %261 = phi ptr [ %259, %258 ], [ %254, %252 ]
  %262 = call ptr @loop_latch_edge(ptr noundef %73) #18
  call void @add_phi_arg(ptr noundef %253, ptr noundef %261, ptr noundef %262, i32 noundef 0) #18
  %263 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %260
  %266 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %267 = call i64 @fwrite(ptr nonnull @.str.138, i64 44, i64 1, ptr %266)
  %268 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %268, ptr noundef %253, i32 noundef 0, i32 noundef 2) #18
  %269 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %270 = call i32 @fputc(i32 10, ptr %269)
  %271 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %272 = getelementptr inbounds %struct.tree_ssa_name, ptr %261, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !46
  call void @print_gimple_stmt(ptr noundef %271, ptr noundef %273, i32 noundef 0, i32 noundef 2) #18
  br label %274

274:                                              ; preds = %265, %260
  %275 = getelementptr inbounds %struct.gimple_statement_base, ptr %253, i64 0, i32 1
  %276 = load i32, ptr %275, align 4, !tbaa !46
  %277 = icmp ne i32 %276, 0
  call void @llvm.assume(i1 %277)
  %278 = load ptr, ptr @stmt_vec_info_vec, align 8
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %274
  %281 = load i32, ptr %278, align 8, !tbaa !81
  br label %282

282:                                              ; preds = %280, %274
  %283 = phi i32 [ %281, %280 ], [ 0, %274 ]
  %284 = icmp ugt i32 %276, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %286

286:                                              ; preds = %285, %282
  %287 = load ptr, ptr @stmt_vec_info_vec, align 8
  %288 = add i32 %276, -1
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %287, i64 0, i32 2, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !35
  %292 = getelementptr inbounds %struct._stmt_vec_info, ptr %291, i64 0, i32 14
  %293 = load ptr, ptr %292, align 8, !tbaa !83
  %294 = add nuw nsw i32 %255, 1
  %295 = icmp eq i32 %294, %2
  br i1 %295, label %296, label %252, !llvm.loop !198

296:                                              ; preds = %286, %248
  %297 = call ptr @single_exit(ptr noundef %73) #18
  %298 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !104
  %300 = icmp sgt i32 %2, 0
  br i1 %300, label %301, label %407

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  br label %303

303:                                              ; preds = %301, %403
  %304 = phi ptr [ null, %301 ], [ %404, %403 ]
  %305 = phi ptr [ null, %301 ], [ %352, %403 ]
  %306 = phi ptr [ %0, %301 ], [ %351, %403 ]
  %307 = phi i32 [ 0, %301 ], [ %405, %403 ]
  %308 = load ptr, ptr %302, align 8, !tbaa !46
  %309 = call ptr @create_phi_node(ptr noundef %308, ptr noundef %299) #18
  %310 = call ptr @new_stmt_vec_info(ptr noundef %309, ptr noundef nonnull %32, ptr noundef null) #18
  %311 = getelementptr inbounds %struct.gimple_statement_base, ptr %309, i64 0, i32 1
  %312 = load i32, ptr %311, align 4, !tbaa !46
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %338

314:                                              ; preds = %303
  %315 = icmp eq ptr %310, null
  br i1 %315, label %316, label %317

316:                                              ; preds = %314
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %317

317:                                              ; preds = %316, %314
  %318 = load ptr, ptr @stmt_vec_info_vec, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr %318, align 8, !tbaa !81
  %322 = add i32 %321, 1
  br label %323

323:                                              ; preds = %320, %317
  %324 = phi i32 [ %322, %320 ], [ 1, %317 ]
  store i32 %324, ptr %311, align 4, !tbaa !46
  %325 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %326 = icmp eq ptr %325, null
  br i1 %326, label %332, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %325, i64 0, i32 1
  %329 = load i32, ptr %328, align 4, !tbaa !116
  %330 = load i32, ptr %325, align 8, !tbaa !81
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %327, %323
  %333 = call ptr @vec_heap_p_reserve(ptr noundef %325, i32 noundef 1) #18
  store ptr %333, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %334

334:                                              ; preds = %332, %327
  %335 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %336 = load i32, ptr %335, align 8, !tbaa !81
  %337 = add i32 %336, 1
  store i32 %337, ptr %335, align 8, !tbaa !81
  br label %341

338:                                              ; preds = %303
  %339 = load ptr, ptr @stmt_vec_info_vec, align 8
  %340 = add i32 %312, -1
  br label %341

341:                                              ; preds = %334, %338
  %342 = phi i32 [ %336, %334 ], [ %340, %338 ]
  %343 = phi ptr [ %335, %334 ], [ %339, %338 ]
  %344 = zext i32 %342 to i64
  %345 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %343, i64 0, i32 2, i64 %344
  store ptr %310, ptr %345, align 8, !tbaa !35
  %346 = icmp eq i32 %307, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %341
  %348 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %306) #18
  %349 = getelementptr inbounds %struct._stmt_vec_info, ptr %304, i64 0, i32 14
  store ptr %309, ptr %349, align 8, !tbaa !83
  br label %350

350:                                              ; preds = %341, %347
  %351 = phi ptr [ %348, %347 ], [ %306, %341 ]
  %352 = phi ptr [ %305, %347 ], [ %309, %341 ]
  %353 = call ptr @single_exit(ptr noundef %73) #18
  %354 = getelementptr inbounds %struct.edge_def, ptr %353, i64 0, i32 6
  %355 = load i32, ptr %354, align 4, !tbaa !156
  %356 = getelementptr inbounds %struct.gimple_statement_phi, ptr %309, i64 0, i32 1
  %357 = load i32, ptr %356, align 8, !tbaa !46
  %358 = icmp ult i32 %357, %355
  br i1 %358, label %359, label %360

359:                                              ; preds = %350
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %360

360:                                              ; preds = %350, %359
  %361 = zext i32 %355 to i64
  %362 = getelementptr inbounds %struct.gimple_statement_phi, ptr %309, i64 0, i32 4, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !199
  %364 = icmp eq ptr %363, null
  br i1 %364, label %370, label %365

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %362, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !159
  %368 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %363, i64 0, i32 1
  store ptr %367, ptr %368, align 8, !tbaa !159
  %369 = load ptr, ptr %366, align 8, !tbaa !159
  store ptr %363, ptr %369, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %362, i8 0, i64 16, i1 false)
  br label %370

370:                                              ; preds = %365, %360
  %371 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %362, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !157
  store ptr %351, ptr %372, align 8, !tbaa !35
  %373 = icmp eq ptr %351, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load i64, ptr %351, align 8
  %376 = and i64 %375, 65535
  %377 = icmp eq i64 %376, 141
  br i1 %377, label %379, label %378

378:                                              ; preds = %374, %370
  store ptr null, ptr %362, align 8, !tbaa !199
  br label %385

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.tree_ssa_name, ptr %351, i64 0, i32 5
  store ptr %380, ptr %362, align 8, !tbaa !199
  %381 = getelementptr inbounds %struct.tree_ssa_name, ptr %351, i64 0, i32 5, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !159
  %383 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %362, i64 0, i32 1
  store ptr %382, ptr %383, align 8, !tbaa !159
  %384 = load ptr, ptr %381, align 8, !tbaa !159
  store ptr %362, ptr %384, align 8, !tbaa !199
  store ptr %362, ptr %381, align 8, !tbaa !159
  br label %385

385:                                              ; preds = %378, %379
  %386 = load i32, ptr %311, align 4, !tbaa !46
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %403, label %388

388:                                              ; preds = %385
  %389 = load ptr, ptr @stmt_vec_info_vec, align 8
  %390 = icmp eq ptr %389, null
  br i1 %390, label %393, label %391

391:                                              ; preds = %388
  %392 = load i32, ptr %389, align 8, !tbaa !81
  br label %393

393:                                              ; preds = %391, %388
  %394 = phi i32 [ %392, %391 ], [ 0, %388 ]
  %395 = icmp ugt i32 %386, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %397

397:                                              ; preds = %396, %393
  %398 = load ptr, ptr @stmt_vec_info_vec, align 8
  %399 = add i32 %386, -1
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %398, i64 0, i32 2, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  br label %403

403:                                              ; preds = %385, %397
  %404 = phi ptr [ %402, %397 ], [ null, %385 ]
  %405 = add nuw nsw i32 %307, 1
  %406 = icmp eq i32 %405, %2
  br i1 %406, label %407, label %303, !llvm.loop !200

407:                                              ; preds = %403, %296
  %408 = phi ptr [ null, %296 ], [ %352, %403 ]
  %409 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 13
  %410 = load i32, ptr %409, align 8, !tbaa !70, !noalias !201
  %411 = and i32 %410, 512
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 7
  %415 = load ptr, ptr %414, align 8, !tbaa !46, !noalias !201
  %416 = icmp eq ptr %415, null
  br i1 %416, label %419, label %417

417:                                              ; preds = %413
  %418 = load ptr, ptr %415, align 8, !tbaa !75, !noalias !201
  br label %419

419:                                              ; preds = %417, %413, %407
  %420 = phi ptr [ %418, %417 ], [ null, %413 ], [ null, %407 ]
  %421 = icmp eq ptr %420, null
  br i1 %421, label %424, label %422

422:                                              ; preds = %419
  %423 = load ptr, ptr %420, align 8, !tbaa !77, !noalias !201
  br label %424

424:                                              ; preds = %422, %419
  %425 = phi ptr [ %423, %422 ], [ null, %419 ]
  %426 = icmp eq ptr %425, null
  br i1 %426, label %437, label %427

427:                                              ; preds = %424, %433
  %428 = phi ptr [ %435, %433 ], [ %425, %424 ]
  %429 = load ptr, ptr %428, align 8, !tbaa !64, !noalias !206
  %430 = load i32, ptr %429, align 8, !noalias !206
  %431 = and i32 %430, 255
  %432 = icmp eq i32 %431, 4
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %428, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !68, !noalias !206
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %427, !llvm.loop !207

437:                                              ; preds = %427, %433, %424
  %438 = phi ptr [ %425, %424 ], [ %428, %427 ], [ %435, %433 ]
  store ptr %438, ptr %8, align 8, !tbaa.struct !63
  %439 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %420, ptr %439, align 8, !tbaa.struct !79
  %440 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr %299, ptr %440, align 8, !tbaa.struct !80
  %441 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 14
  %442 = load ptr, ptr %441, align 8, !tbaa !83
  %443 = icmp eq ptr %442, null
  br i1 %443, label %474, label %444

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.gimple_statement_base, ptr %442, i64 0, i32 1
  %446 = load i32, ptr %445, align 4, !tbaa !46
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %463, label %448

448:                                              ; preds = %444
  %449 = load ptr, ptr @stmt_vec_info_vec, align 8
  %450 = icmp eq ptr %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %448
  %452 = load i32, ptr %449, align 8, !tbaa !81
  br label %453

453:                                              ; preds = %451, %448
  %454 = phi i32 [ %452, %451 ], [ 0, %448 ]
  %455 = icmp ugt i32 %446, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %457

457:                                              ; preds = %456, %453
  %458 = load ptr, ptr @stmt_vec_info_vec, align 8
  %459 = add i32 %446, -1
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %458, i64 0, i32 2, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !35
  br label %463

463:                                              ; preds = %444, %457
  %464 = phi ptr [ %462, %457 ], [ null, %444 ]
  %465 = getelementptr inbounds %struct._stmt_vec_info, ptr %464, i64 0, i32 13
  %466 = load i8, ptr %465, align 8, !tbaa !86
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %463
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3061, ptr noundef nonnull @.str.7) #18
  br label %469

469:                                              ; preds = %463, %468
  %470 = getelementptr inbounds %struct._stmt_vec_info, ptr %464, i64 0, i32 14
  %471 = load ptr, ptr %470, align 8, !tbaa !83
  %472 = icmp eq ptr %471, %1
  br i1 %472, label %474, label %473

473:                                              ; preds = %469
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3062, ptr noundef nonnull @.str.7) #18
  br label %474

474:                                              ; preds = %473, %469, %437
  %475 = phi ptr [ %1, %437 ], [ %442, %469 ], [ %442, %473 ]
  %476 = load i32, ptr %475, align 8
  %477 = trunc i32 %476 to i8
  switch i8 %477, label %480 [
    i8 6, label %478
    i8 1, label %478
    i8 8, label %481
  ]

478:                                              ; preds = %474, %474
  %479 = lshr i32 %476, 16
  br label %481

480:                                              ; preds = %474
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %481

481:                                              ; preds = %480, %478, %474
  %482 = phi i32 [ %479, %478 ], [ 0, %480 ], [ 59, %474 ]
  %483 = zext nneg i32 %482 to i64
  %484 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !46
  %486 = icmp eq i8 %485, 3
  br i1 %486, label %487, label %507

487:                                              ; preds = %481
  %488 = load i32, ptr %475, align 8
  %489 = and i32 %488, 255
  %490 = add nsw i32 %489, -1
  %491 = icmp ult i32 %490, 9
  call void @llvm.assume(i1 %491)
  %492 = zext nneg i32 %489 to i64
  %493 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !50
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !161
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %487
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %500

500:                                              ; preds = %499, %487
  %501 = getelementptr inbounds i8, ptr %475, i64 %497
  %502 = getelementptr inbounds ptr, ptr %501, i64 1
  %503 = load ptr, ptr %502, align 8, !tbaa !35
  %504 = load i64, ptr %503, align 8
  %505 = trunc i64 %504 to i32
  %506 = and i32 %505, 65535
  br label %507

507:                                              ; preds = %481, %500
  %508 = phi i32 [ %506, %500 ], [ %482, %481 ]
  %509 = load i32, ptr %475, align 8
  %510 = and i32 %509, 255
  %511 = add nsw i32 %510, -10
  %512 = icmp ult i32 %511, -9
  br i1 %512, label %525, label %513

513:                                              ; preds = %507
  %514 = zext nneg i32 %510 to i64
  %515 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !50
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %517
  %519 = load i64, ptr %518, align 8, !tbaa !161
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %513
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %522

522:                                              ; preds = %521, %513
  %523 = getelementptr inbounds i8, ptr %475, i64 %519
  %524 = load ptr, ptr %523, align 8, !tbaa !35
  br label %525

525:                                              ; preds = %507, %522
  %526 = phi ptr [ %524, %522 ], [ null, %507 ]
  %527 = getelementptr inbounds %struct.tree_common, ptr %526, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !46
  %529 = call ptr @vect_create_destination_var(ptr noundef %526, ptr noundef null) #18
  %530 = getelementptr inbounds %struct.tree_type, ptr %528, i64 0, i32 2
  %531 = load ptr, ptr %530, align 8, !tbaa !46
  %532 = icmp eq i32 %508, 64
  %533 = select i1 %532, i32 63, i32 %508
  %534 = icmp ne i8 %6, 0
  %535 = or i1 %534, %71
  br i1 %535, label %536, label %868

536:                                              ; preds = %525
  %537 = select i1 %534, ptr %72, ptr %73
  %538 = icmp eq i32 %2, 1
  br i1 %538, label %540, label %539

539:                                              ; preds = %536
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3091, ptr noundef nonnull @.str.7) #18
  br label %540

540:                                              ; preds = %536, %539
  %541 = icmp eq i32 %3, 0
  br i1 %541, label %586, label %542

542:                                              ; preds = %540
  %543 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %547 = call i64 @fwrite(ptr nonnull @.str.140, i64 37, i64 1, ptr %546)
  br label %548

548:                                              ; preds = %545, %542
  %549 = call ptr @vect_create_destination_var(ptr noundef %526, ptr noundef nonnull %234) #18
  %550 = getelementptr inbounds %struct.gimple_statement_phi, ptr %408, i64 0, i32 3
  %551 = load ptr, ptr %550, align 8, !tbaa !35
  %552 = call ptr @build1_stat(i32 noundef %3, ptr noundef nonnull %234, ptr noundef %551) #18
  %553 = call ptr @gimple_build_assign_stat(ptr noundef %549, ptr noundef %552) #18
  %554 = load ptr, ptr @cfun, align 8, !tbaa !35
  %555 = call ptr @make_ssa_name_fn(ptr noundef %554, ptr noundef %549, ptr noundef %553) #18
  %556 = load i32, ptr %553, align 8
  %557 = and i32 %556, 255
  %558 = add nsw i32 %557, -10
  %559 = icmp ult i32 %558, -9
  br i1 %559, label %564, label %560

560:                                              ; preds = %548
  %561 = getelementptr inbounds %struct.gimple_statement_base, ptr %553, i64 0, i32 3
  %562 = load i32, ptr %561, align 4, !tbaa !46
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %565

564:                                              ; preds = %560, %548
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %565

565:                                              ; preds = %564, %560
  %566 = load i32, ptr %553, align 8
  %567 = and i32 %566, 255
  %568 = zext nneg i32 %567 to i64
  %569 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %568
  %570 = load i32, ptr %569, align 4, !tbaa !50
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %571
  %573 = load i64, ptr %572, align 8, !tbaa !161
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %565
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %576

576:                                              ; preds = %575, %565
  %577 = getelementptr inbounds i8, ptr %553, i64 %573
  store ptr %555, ptr %577, align 8, !tbaa !35
  %578 = icmp eq ptr %555, null
  br i1 %578, label %585, label %579

579:                                              ; preds = %576
  %580 = load i64, ptr %555, align 8
  %581 = and i64 %580, 65535
  %582 = icmp eq i64 %581, 141
  br i1 %582, label %583, label %585

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.tree_ssa_name, ptr %555, i64 0, i32 2
  store ptr %553, ptr %584, align 8, !tbaa !46
  br label %585

585:                                              ; preds = %576, %579, %583
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %553, i32 noundef 1) #18
  br label %822

586:                                              ; preds = %540
  %587 = call i64 @tree_low_cst(ptr noundef %531, i32 noundef 1) #18
  %588 = trunc i64 %587 to i32
  %589 = getelementptr inbounds %struct.tree_type, ptr %234, i64 0, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !46
  %591 = call i64 @tree_low_cst(ptr noundef %590, i32 noundef 1) #18
  %592 = trunc i64 %591 to i32
  %593 = sext i32 %249 to i64
  %594 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 %593
  %595 = load i32, ptr %594, align 4, !tbaa !191
  %596 = icmp ne i32 %595, 2956
  %597 = select i1 %596, i32 171, i32 0
  %598 = zext i32 %249 to i64
  %599 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %598
  %600 = load i8, ptr %599, align 1, !tbaa !46
  %601 = add i8 %600, -12
  %602 = icmp ult i8 %601, 6
  br i1 %602, label %603, label %610

603:                                              ; preds = %586
  %604 = call ptr @optab_for_tree_code(i32 noundef %533, ptr noundef nonnull %234, i32 noundef 0) #18
  %605 = getelementptr inbounds %struct.optab_d, ptr %604, i64 0, i32 4, i64 %593
  %606 = load i32, ptr %605, align 4, !tbaa !191
  %607 = icmp ne i32 %606, 2956
  %608 = select i1 %607, i1 %596, i1 false
  %609 = zext i1 %608 to i8
  br label %610

610:                                              ; preds = %586, %603
  %611 = phi i8 [ %609, %603 ], [ 0, %586 ]
  %612 = icmp eq i8 %611, 0
  %613 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %614 = icmp eq i8 %613, 0
  br i1 %612, label %698, label %615

615:                                              ; preds = %610
  br i1 %614, label %619, label %616

616:                                              ; preds = %615
  %617 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %618 = call i64 @fwrite(ptr nonnull @.str.141, i64 26, i64 1, ptr %617)
  br label %619

619:                                              ; preds = %616, %615
  %620 = call ptr @vect_create_destination_var(ptr noundef %526, ptr noundef nonnull %234) #18
  %621 = getelementptr inbounds %struct.gimple_statement_phi, ptr %408, i64 0, i32 3
  %622 = load ptr, ptr %621, align 8, !tbaa !35
  %623 = sdiv i32 %592, 2
  %624 = icmp slt i32 %623, %588
  br i1 %624, label %822, label %625

625:                                              ; preds = %619, %695
  %626 = phi i32 [ %696, %695 ], [ %623, %619 ]
  %627 = phi ptr [ %665, %695 ], [ %622, %619 ]
  %628 = sext i32 %626 to i64
  %629 = call ptr @size_int_kind(i64 noundef %628, i32 noundef 0) #18
  %630 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %597, ptr noundef %620, ptr noundef %627, ptr noundef %629) #18
  %631 = load ptr, ptr @cfun, align 8, !tbaa !35
  %632 = call ptr @make_ssa_name_fn(ptr noundef %631, ptr noundef %620, ptr noundef %630) #18
  %633 = load i32, ptr %630, align 8
  %634 = and i32 %633, 255
  %635 = add nsw i32 %634, -10
  %636 = icmp ult i32 %635, -9
  br i1 %636, label %641, label %637

637:                                              ; preds = %625
  %638 = getelementptr inbounds %struct.gimple_statement_base, ptr %630, i64 0, i32 3
  %639 = load i32, ptr %638, align 4, !tbaa !46
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %642

641:                                              ; preds = %637, %625
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %642

642:                                              ; preds = %641, %637
  %643 = load i32, ptr %630, align 8
  %644 = and i32 %643, 255
  %645 = zext nneg i32 %644 to i64
  %646 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %645
  %647 = load i32, ptr %646, align 4, !tbaa !50
  %648 = zext i32 %647 to i64
  %649 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %648
  %650 = load i64, ptr %649, align 8, !tbaa !161
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %652, label %653

652:                                              ; preds = %642
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %653

653:                                              ; preds = %652, %642
  %654 = getelementptr inbounds i8, ptr %630, i64 %650
  store ptr %632, ptr %654, align 8, !tbaa !35
  %655 = icmp eq ptr %632, null
  br i1 %655, label %662, label %656

656:                                              ; preds = %653
  %657 = load i64, ptr %632, align 8
  %658 = and i64 %657, 65535
  %659 = icmp eq i64 %658, 141
  br i1 %659, label %660, label %662

660:                                              ; preds = %656
  %661 = getelementptr inbounds %struct.tree_ssa_name, ptr %632, i64 0, i32 2
  store ptr %630, ptr %661, align 8, !tbaa !46
  br label %662

662:                                              ; preds = %653, %656, %660
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %630, i32 noundef 1) #18
  %663 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %533, ptr noundef %620, ptr noundef %632, ptr noundef %627) #18
  %664 = load ptr, ptr @cfun, align 8, !tbaa !35
  %665 = call ptr @make_ssa_name_fn(ptr noundef %664, ptr noundef %620, ptr noundef %663) #18
  %666 = load i32, ptr %663, align 8
  %667 = and i32 %666, 255
  %668 = add nsw i32 %667, -10
  %669 = icmp ult i32 %668, -9
  br i1 %669, label %674, label %670

670:                                              ; preds = %662
  %671 = getelementptr inbounds %struct.gimple_statement_base, ptr %663, i64 0, i32 3
  %672 = load i32, ptr %671, align 4, !tbaa !46
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %675

674:                                              ; preds = %670, %662
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %675

675:                                              ; preds = %674, %670
  %676 = load i32, ptr %663, align 8
  %677 = and i32 %676, 255
  %678 = zext nneg i32 %677 to i64
  %679 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !50
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %681
  %683 = load i64, ptr %682, align 8, !tbaa !161
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %685, label %686

685:                                              ; preds = %675
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %686

686:                                              ; preds = %685, %675
  %687 = getelementptr inbounds i8, ptr %663, i64 %683
  store ptr %665, ptr %687, align 8, !tbaa !35
  %688 = icmp eq ptr %665, null
  br i1 %688, label %695, label %689

689:                                              ; preds = %686
  %690 = load i64, ptr %665, align 8
  %691 = and i64 %690, 65535
  %692 = icmp eq i64 %691, 141
  br i1 %692, label %693, label %695

693:                                              ; preds = %689
  %694 = getelementptr inbounds %struct.tree_ssa_name, ptr %665, i64 0, i32 2
  store ptr %663, ptr %694, align 8, !tbaa !46
  br label %695

695:                                              ; preds = %686, %689, %693
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %663, i32 noundef 1) #18
  %696 = sdiv i32 %626, 2
  %697 = icmp slt i32 %696, %588
  br i1 %697, label %822, label %625, !llvm.loop !208

698:                                              ; preds = %610
  br i1 %614, label %702, label %699

699:                                              ; preds = %698
  %700 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %701 = call i64 @fwrite(ptr nonnull @.str.142, i64 26, i64 1, ptr %700)
  br label %702

702:                                              ; preds = %699, %698
  %703 = getelementptr inbounds %struct.gimple_statement_phi, ptr %408, i64 0, i32 3
  %704 = load ptr, ptr %703, align 8, !tbaa !35
  %705 = load ptr, ptr %589, align 8, !tbaa !46
  %706 = call i64 @tree_low_cst(ptr noundef %705, i32 noundef 1) #18
  %707 = trunc i64 %706 to i32
  %708 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !35
  %709 = call ptr @build3_stat(i32 noundef 42, ptr noundef %528, ptr noundef %704, ptr noundef %531, ptr noundef %708) #18
  %710 = call ptr @gimple_build_assign_stat(ptr noundef %529, ptr noundef %709) #18
  %711 = load ptr, ptr @cfun, align 8, !tbaa !35
  %712 = call ptr @make_ssa_name_fn(ptr noundef %711, ptr noundef %529, ptr noundef %710) #18
  %713 = load i32, ptr %710, align 8
  %714 = and i32 %713, 255
  %715 = add nsw i32 %714, -10
  %716 = icmp ult i32 %715, -9
  br i1 %716, label %721, label %717

717:                                              ; preds = %702
  %718 = getelementptr inbounds %struct.gimple_statement_base, ptr %710, i64 0, i32 3
  %719 = load i32, ptr %718, align 4, !tbaa !46
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %722

721:                                              ; preds = %717, %702
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %722

722:                                              ; preds = %721, %717
  %723 = load i32, ptr %710, align 8
  %724 = and i32 %723, 255
  %725 = zext nneg i32 %724 to i64
  %726 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !50
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %728
  %730 = load i64, ptr %729, align 8, !tbaa !161
  %731 = icmp eq i64 %730, 0
  br i1 %731, label %732, label %733

732:                                              ; preds = %722
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %733

733:                                              ; preds = %732, %722
  %734 = getelementptr inbounds i8, ptr %710, i64 %730
  store ptr %712, ptr %734, align 8, !tbaa !35
  %735 = icmp eq ptr %712, null
  br i1 %735, label %742, label %736

736:                                              ; preds = %733
  %737 = load i64, ptr %712, align 8
  %738 = and i64 %737, 65535
  %739 = icmp eq i64 %738, 141
  br i1 %739, label %740, label %742

740:                                              ; preds = %736
  %741 = getelementptr inbounds %struct.tree_ssa_name, ptr %712, i64 0, i32 2
  store ptr %710, ptr %741, align 8, !tbaa !46
  br label %742

742:                                              ; preds = %733, %736, %740
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %710, i32 noundef 1) #18
  %743 = icmp slt i32 %588, %707
  br i1 %743, label %744, label %822

744:                                              ; preds = %742
  %745 = shl i64 %587, 32
  %746 = ashr exact i64 %745, 32
  %747 = shl i64 %706, 32
  %748 = ashr exact i64 %747, 32
  br label %749

749:                                              ; preds = %744, %819
  %750 = phi i64 [ %746, %744 ], [ %820, %819 ]
  %751 = phi ptr [ %712, %744 ], [ %789, %819 ]
  %752 = call ptr @size_int_kind(i64 noundef %750, i32 noundef 2) #18
  %753 = call ptr @build3_stat(i32 noundef 42, ptr noundef %528, ptr noundef %704, ptr noundef %531, ptr noundef %752) #18
  %754 = call ptr @gimple_build_assign_stat(ptr noundef %529, ptr noundef %753) #18
  %755 = load ptr, ptr @cfun, align 8, !tbaa !35
  %756 = call ptr @make_ssa_name_fn(ptr noundef %755, ptr noundef %529, ptr noundef %754) #18
  %757 = load i32, ptr %754, align 8
  %758 = and i32 %757, 255
  %759 = add nsw i32 %758, -10
  %760 = icmp ult i32 %759, -9
  br i1 %760, label %765, label %761

761:                                              ; preds = %749
  %762 = getelementptr inbounds %struct.gimple_statement_base, ptr %754, i64 0, i32 3
  %763 = load i32, ptr %762, align 4, !tbaa !46
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %766

765:                                              ; preds = %761, %749
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %766

766:                                              ; preds = %765, %761
  %767 = load i32, ptr %754, align 8
  %768 = and i32 %767, 255
  %769 = zext nneg i32 %768 to i64
  %770 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %769
  %771 = load i32, ptr %770, align 4, !tbaa !50
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %772
  %774 = load i64, ptr %773, align 8, !tbaa !161
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %776, label %777

776:                                              ; preds = %766
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %777

777:                                              ; preds = %776, %766
  %778 = getelementptr inbounds i8, ptr %754, i64 %774
  store ptr %756, ptr %778, align 8, !tbaa !35
  %779 = icmp eq ptr %756, null
  br i1 %779, label %786, label %780

780:                                              ; preds = %777
  %781 = load i64, ptr %756, align 8
  %782 = and i64 %781, 65535
  %783 = icmp eq i64 %782, 141
  br i1 %783, label %784, label %786

784:                                              ; preds = %780
  %785 = getelementptr inbounds %struct.tree_ssa_name, ptr %756, i64 0, i32 2
  store ptr %754, ptr %785, align 8, !tbaa !46
  br label %786

786:                                              ; preds = %777, %780, %784
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %754, i32 noundef 1) #18
  %787 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %533, ptr noundef %529, ptr noundef %756, ptr noundef %751) #18
  %788 = load ptr, ptr @cfun, align 8, !tbaa !35
  %789 = call ptr @make_ssa_name_fn(ptr noundef %788, ptr noundef %529, ptr noundef %787) #18
  %790 = load i32, ptr %787, align 8
  %791 = and i32 %790, 255
  %792 = add nsw i32 %791, -10
  %793 = icmp ult i32 %792, -9
  br i1 %793, label %798, label %794

794:                                              ; preds = %786
  %795 = getelementptr inbounds %struct.gimple_statement_base, ptr %787, i64 0, i32 3
  %796 = load i32, ptr %795, align 4, !tbaa !46
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %799

798:                                              ; preds = %794, %786
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %799

799:                                              ; preds = %798, %794
  %800 = load i32, ptr %787, align 8
  %801 = and i32 %800, 255
  %802 = zext nneg i32 %801 to i64
  %803 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %802
  %804 = load i32, ptr %803, align 4, !tbaa !50
  %805 = zext i32 %804 to i64
  %806 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %805
  %807 = load i64, ptr %806, align 8, !tbaa !161
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %809, label %810

809:                                              ; preds = %799
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %810

810:                                              ; preds = %809, %799
  %811 = getelementptr inbounds i8, ptr %787, i64 %807
  store ptr %789, ptr %811, align 8, !tbaa !35
  %812 = icmp eq ptr %789, null
  br i1 %812, label %819, label %813

813:                                              ; preds = %810
  %814 = load i64, ptr %789, align 8
  %815 = and i64 %814, 65535
  %816 = icmp eq i64 %815, 141
  br i1 %816, label %817, label %819

817:                                              ; preds = %813
  %818 = getelementptr inbounds %struct.tree_ssa_name, ptr %789, i64 0, i32 2
  store ptr %787, ptr %818, align 8, !tbaa !46
  br label %819

819:                                              ; preds = %810, %813, %817
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %787, i32 noundef 1) #18
  %820 = add i64 %750, %746
  %821 = icmp slt i64 %820, %748
  br i1 %821, label %749, label %822, !llvm.loop !209

822:                                              ; preds = %695, %819, %619, %742, %585
  %823 = phi i1 [ false, %585 ], [ true, %742 ], [ false, %619 ], [ true, %819 ], [ false, %695 ]
  %824 = phi ptr [ %553, %585 ], [ %710, %742 ], [ null, %619 ], [ %787, %819 ], [ %663, %695 ]
  %825 = phi ptr [ %555, %585 ], [ %712, %742 ], [ %622, %619 ], [ %789, %819 ], [ %665, %695 ]
  br i1 %823, label %868, label %826

826:                                              ; preds = %822
  %827 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %828 = icmp eq i8 %827, 0
  br i1 %828, label %832, label %829

829:                                              ; preds = %826
  %830 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %831 = call i64 @fwrite(ptr nonnull @.str.143, i64 21, i64 1, ptr %830)
  br label %832

832:                                              ; preds = %829, %826
  %833 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !35
  %834 = call ptr @build3_stat(i32 noundef 42, ptr noundef %528, ptr noundef %825, ptr noundef %531, ptr noundef %833) #18
  %835 = call ptr @gimple_build_assign_stat(ptr noundef %529, ptr noundef %834) #18
  %836 = load ptr, ptr @cfun, align 8, !tbaa !35
  %837 = call ptr @make_ssa_name_fn(ptr noundef %836, ptr noundef %529, ptr noundef %835) #18
  %838 = load i32, ptr %835, align 8
  %839 = and i32 %838, 255
  %840 = add nsw i32 %839, -10
  %841 = icmp ult i32 %840, -9
  br i1 %841, label %846, label %842

842:                                              ; preds = %832
  %843 = getelementptr inbounds %struct.gimple_statement_base, ptr %835, i64 0, i32 3
  %844 = load i32, ptr %843, align 4, !tbaa !46
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %847

846:                                              ; preds = %842, %832
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %847

847:                                              ; preds = %846, %842
  %848 = load i32, ptr %835, align 8
  %849 = and i32 %848, 255
  %850 = zext nneg i32 %849 to i64
  %851 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %850
  %852 = load i32, ptr %851, align 4, !tbaa !50
  %853 = zext i32 %852 to i64
  %854 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %853
  %855 = load i64, ptr %854, align 8, !tbaa !161
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %857, label %858

857:                                              ; preds = %847
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %858

858:                                              ; preds = %857, %847
  %859 = getelementptr inbounds i8, ptr %835, i64 %855
  store ptr %837, ptr %859, align 8, !tbaa !35
  %860 = icmp eq ptr %837, null
  br i1 %860, label %867, label %861

861:                                              ; preds = %858
  %862 = load i64, ptr %837, align 8
  %863 = and i64 %862, 65535
  %864 = icmp eq i64 %863, 141
  br i1 %864, label %865, label %867

865:                                              ; preds = %861
  %866 = getelementptr inbounds %struct.tree_ssa_name, ptr %837, i64 0, i32 2
  store ptr %835, ptr %866, align 8, !tbaa !46
  br label %867

867:                                              ; preds = %858, %861, %865
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %835, i32 noundef 1) #18
  br label %868

868:                                              ; preds = %822, %867, %525
  %869 = phi ptr [ %835, %867 ], [ %824, %822 ], [ null, %525 ]
  %870 = phi ptr [ %837, %867 ], [ %825, %822 ], [ null, %525 ]
  %871 = phi ptr [ %537, %867 ], [ %537, %822 ], [ %73, %525 ]
  br i1 %534, label %872, label %875

872:                                              ; preds = %868
  %873 = getelementptr inbounds %struct.loop, ptr %871, i64 0, i32 8
  %874 = load ptr, ptr %873, align 8, !tbaa !94
  br label %875

875:                                              ; preds = %872, %868
  %876 = phi ptr [ %874, %872 ], [ %871, %868 ]
  %877 = load ptr, ptr %9, align 8, !tbaa !35
  %878 = icmp eq ptr %877, null
  br i1 %878, label %936, label %879

879:                                              ; preds = %875
  %880 = getelementptr inbounds %struct.tree_common, ptr %877, i64 0, i32 2
  %881 = load ptr, ptr %880, align 8, !tbaa !46
  %882 = load i64, ptr %881, align 8
  %883 = and i64 %882, 65535
  %884 = icmp eq i64 %883, 14
  br i1 %71, label %893, label %885

885:                                              ; preds = %879
  br i1 %884, label %887, label %886

886:                                              ; preds = %885
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3270, ptr noundef nonnull @.str.7) #18
  br label %887

887:                                              ; preds = %885, %886
  %888 = getelementptr inbounds %struct.gimple_statement_phi, ptr %408, i64 0, i32 3
  %889 = load ptr, ptr %888, align 8, !tbaa !35
  %890 = load ptr, ptr %9, align 8, !tbaa !35
  %891 = call ptr @build2_stat(i32 noundef %533, ptr noundef nonnull %234, ptr noundef %889, ptr noundef %890) #18
  %892 = call ptr @vect_create_destination_var(ptr noundef %526, ptr noundef nonnull %234) #18
  br label %899

893:                                              ; preds = %879
  br i1 %884, label %894, label %895

894:                                              ; preds = %893
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3276, ptr noundef nonnull @.str.7) #18
  br label %895

895:                                              ; preds = %893, %894
  %896 = load ptr, ptr %9, align 8, !tbaa !35
  %897 = call ptr @build2_stat(i32 noundef %533, ptr noundef %528, ptr noundef %870, ptr noundef %896) #18
  %898 = call ptr @vect_create_destination_var(ptr noundef %526, ptr noundef %528) #18
  br label %899

899:                                              ; preds = %895, %887
  %900 = phi ptr [ %891, %887 ], [ %897, %895 ]
  %901 = phi ptr [ %892, %887 ], [ %898, %895 ]
  %902 = call ptr @gimple_build_assign_stat(ptr noundef %901, ptr noundef %900) #18
  %903 = load ptr, ptr @cfun, align 8, !tbaa !35
  %904 = call ptr @make_ssa_name_fn(ptr noundef %903, ptr noundef %901, ptr noundef %902) #18
  %905 = load i32, ptr %902, align 8
  %906 = and i32 %905, 255
  %907 = add nsw i32 %906, -10
  %908 = icmp ult i32 %907, -9
  br i1 %908, label %913, label %909

909:                                              ; preds = %899
  %910 = getelementptr inbounds %struct.gimple_statement_base, ptr %902, i64 0, i32 3
  %911 = load i32, ptr %910, align 4, !tbaa !46
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %914

913:                                              ; preds = %909, %899
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %914

914:                                              ; preds = %913, %909
  %915 = load i32, ptr %902, align 8
  %916 = and i32 %915, 255
  %917 = zext nneg i32 %916 to i64
  %918 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %917
  %919 = load i32, ptr %918, align 4, !tbaa !50
  %920 = zext i32 %919 to i64
  %921 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %920
  %922 = load i64, ptr %921, align 8, !tbaa !161
  %923 = icmp eq i64 %922, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %914
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %925

925:                                              ; preds = %924, %914
  %926 = getelementptr inbounds i8, ptr %902, i64 %922
  store ptr %904, ptr %926, align 8, !tbaa !35
  %927 = icmp eq ptr %904, null
  br i1 %927, label %934, label %928

928:                                              ; preds = %925
  %929 = load i64, ptr %904, align 8
  %930 = and i64 %929, 65535
  %931 = icmp eq i64 %930, 141
  br i1 %931, label %932, label %934

932:                                              ; preds = %928
  %933 = getelementptr inbounds %struct.tree_ssa_name, ptr %904, i64 0, i32 2
  store ptr %902, ptr %933, align 8, !tbaa !46
  br label %934

934:                                              ; preds = %925, %928, %932
  %935 = getelementptr inbounds %struct.tree_ssa_name, ptr %904, i64 0, i32 2
  store ptr %902, ptr %935, align 8, !tbaa !46
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %902, i32 noundef 1) #18
  br label %936

936:                                              ; preds = %934, %875
  %937 = phi ptr [ %902, %934 ], [ %869, %875 ]
  %938 = phi ptr [ %904, %934 ], [ %870, %875 ]
  %939 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  %940 = getelementptr inbounds %struct.tree_ssa_name, ptr %526, i64 0, i32 5
  %941 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %10, i64 0, i32 1
  store ptr %940, ptr %941, align 8, !tbaa !210
  %942 = getelementptr inbounds %struct.tree_ssa_name, ptr %526, i64 0, i32 5, i32 1
  %943 = load ptr, ptr %942, align 8, !tbaa !159
  store ptr %943, ptr %10, align 8, !tbaa !212
  %944 = icmp eq ptr %943, %940
  br i1 %944, label %967, label %945

945:                                              ; preds = %936, %959
  %946 = phi ptr [ %965, %959 ], [ %943, %936 ]
  %947 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %946, i64 0, i32 2
  %948 = load ptr, ptr %947, align 8, !tbaa !46
  %949 = getelementptr inbounds %struct.gimple_statement_base, ptr %948, i64 0, i32 4
  %950 = load ptr, ptr %949, align 8, !tbaa !46
  %951 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %876, ptr noundef %950) #18
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %953, label %959

953:                                              ; preds = %945
  %954 = load ptr, ptr %947, align 8, !tbaa !46
  %955 = load i32, ptr %939, align 8, !tbaa !163
  %956 = add i32 %955, 1
  store i32 %956, ptr %939, align 8, !tbaa !163
  %957 = zext i32 %955 to i64
  %958 = getelementptr inbounds %struct.VEC_gimple_base, ptr %939, i64 0, i32 2, i64 %957
  store ptr %954, ptr %958, align 8, !tbaa !35
  br label %959

959:                                              ; preds = %945, %953
  %960 = load ptr, ptr %10, align 8, !tbaa !212
  %961 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %960, i64 0, i32 1
  %962 = load ptr, ptr %961, align 8, !tbaa !159
  store ptr %962, ptr %10, align 8, !tbaa !212
  %963 = load ptr, ptr %941, align 8, !tbaa !210
  %964 = icmp eq ptr %962, %963
  %965 = select i1 %964, ptr null, ptr %962
  %966 = icmp eq ptr %962, %963
  br i1 %966, label %967, label %945, !llvm.loop !213

967:                                              ; preds = %959, %936
  %968 = icmp eq ptr %939, null
  br i1 %968, label %972, label %969

969:                                              ; preds = %967
  %970 = load i32, ptr %939, align 8, !tbaa !163
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %973

972:                                              ; preds = %967, %969
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3306, ptr noundef nonnull @.str.7) #18
  br label %973

973:                                              ; preds = %969, %972
  %974 = icmp eq i8 %6, 0
  %975 = getelementptr inbounds %struct.gimple_statement_base, ptr %408, i64 0, i32 1
  %976 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %10, i64 0, i32 2
  %977 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %10, i64 0, i32 2, i32 1
  %978 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %10, i64 0, i32 3
  %979 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %10, i64 0, i32 2
  %980 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %10, i64 0, i32 2, i32 1
  %981 = icmp eq ptr %938, null
  %982 = getelementptr inbounds %struct.tree_ssa_name, ptr %938, i64 0, i32 5
  %983 = getelementptr inbounds %struct.tree_ssa_name, ptr %938, i64 0, i32 5, i32 1
  br label %984

984:                                              ; preds = %1379, %973
  %985 = phi i64 [ %1381, %1379 ], [ 0, %973 ]
  %986 = phi ptr [ %1380, %1379 ], [ %937, %973 ]
  br i1 %968, label %994, label %987

987:                                              ; preds = %984
  %988 = load i32, ptr %939, align 8, !tbaa !163
  %989 = zext i32 %988 to i64
  %990 = icmp ult i64 %985, %989
  br i1 %990, label %991, label %994

991:                                              ; preds = %987
  %992 = getelementptr inbounds %struct.VEC_gimple_base, ptr %939, i64 0, i32 2, i64 %985
  %993 = load ptr, ptr %992, align 8, !tbaa !35
  br label %994

994:                                              ; preds = %984, %987, %991
  %995 = phi ptr [ %993, %991 ], [ null, %987 ], [ null, %984 ]
  %996 = phi i1 [ false, %991 ], [ true, %987 ], [ true, %984 ]
  br i1 %996, label %1382, label %997

997:                                              ; preds = %994
  br i1 %71, label %1314, label %998

998:                                              ; preds = %997
  %999 = getelementptr inbounds %struct.gimple_statement_base, ptr %995, i64 0, i32 1
  %1000 = load i32, ptr %999, align 4, !tbaa !46
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1017, label %1002

1002:                                             ; preds = %998
  %1003 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1007, label %1005

1005:                                             ; preds = %1002
  %1006 = load i32, ptr %1003, align 8, !tbaa !81
  br label %1007

1007:                                             ; preds = %1005, %1002
  %1008 = phi i32 [ %1006, %1005 ], [ 0, %1002 ]
  %1009 = icmp ugt i32 %1000, %1008
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1007
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %1011

1011:                                             ; preds = %1010, %1007
  %1012 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1013 = add i32 %1000, -1
  %1014 = zext i32 %1013 to i64
  %1015 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1012, i64 0, i32 2, i64 %1014
  %1016 = load ptr, ptr %1015, align 8, !tbaa !35
  br label %1017

1017:                                             ; preds = %998, %1011
  %1018 = phi ptr [ %1016, %1011 ], [ null, %998 ]
  %1019 = getelementptr inbounds %struct._stmt_vec_info, ptr %1018, i64 0, i32 3
  %1020 = load i32, ptr %1019, align 8, !tbaa !137
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1027, label %1022

1022:                                             ; preds = %1017
  %1023 = getelementptr inbounds %struct._stmt_vec_info, ptr %1018, i64 0, i32 4
  %1024 = load i8, ptr %1023, align 4, !tbaa !143
  %1025 = icmp eq i8 %1024, 0
  %1026 = or i1 %534, %1025
  br i1 %1026, label %1029, label %1028

1027:                                             ; preds = %1017
  br i1 %974, label %1028, label %1029

1028:                                             ; preds = %1027, %1022
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3319, ptr noundef nonnull @.str.7) #18
  br label %1029

1029:                                             ; preds = %1022, %1027, %1028
  %1030 = load ptr, ptr %9, align 8, !tbaa !35
  %1031 = icmp eq ptr %1030, null
  %1032 = select i1 %1031, ptr %408, ptr %986
  %1033 = getelementptr inbounds %struct._stmt_vec_info, ptr %1018, i64 0, i32 6
  store ptr %1032, ptr %1033, align 8, !tbaa !214
  %1034 = call ptr @new_stmt_vec_info(ptr noundef %1032, ptr noundef nonnull %32, ptr noundef null) #18
  %1035 = getelementptr inbounds %struct.gimple_statement_base, ptr %1032, i64 0, i32 1
  %1036 = load i32, ptr %1035, align 4, !tbaa !46
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %1062

1038:                                             ; preds = %1029
  %1039 = icmp eq ptr %1034, null
  br i1 %1039, label %1040, label %1041

1040:                                             ; preds = %1038
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %1041

1041:                                             ; preds = %1040, %1038
  %1042 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1041
  %1045 = load i32, ptr %1042, align 8, !tbaa !81
  %1046 = add i32 %1045, 1
  br label %1047

1047:                                             ; preds = %1044, %1041
  %1048 = phi i32 [ %1046, %1044 ], [ 1, %1041 ]
  store i32 %1048, ptr %1035, align 4, !tbaa !46
  %1049 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1056, label %1051

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1049, i64 0, i32 1
  %1053 = load i32, ptr %1052, align 4, !tbaa !116
  %1054 = load i32, ptr %1049, align 8, !tbaa !81
  %1055 = icmp eq i32 %1053, %1054
  br i1 %1055, label %1056, label %1058

1056:                                             ; preds = %1051, %1047
  %1057 = call ptr @vec_heap_p_reserve(ptr noundef %1049, i32 noundef 1) #18
  store ptr %1057, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %1058

1058:                                             ; preds = %1056, %1051
  %1059 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %1060 = load i32, ptr %1059, align 8, !tbaa !81
  %1061 = add i32 %1060, 1
  store i32 %1061, ptr %1059, align 8, !tbaa !81
  br label %1065

1062:                                             ; preds = %1029
  %1063 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1064 = add i32 %1036, -1
  br label %1065

1065:                                             ; preds = %1058, %1062
  %1066 = phi i32 [ %1060, %1058 ], [ %1064, %1062 ]
  %1067 = phi ptr [ %1059, %1058 ], [ %1063, %1062 ]
  %1068 = zext i32 %1066 to i64
  %1069 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1067, i64 0, i32 2, i64 %1068
  store ptr %1034, ptr %1069, align 8, !tbaa !35
  %1070 = load ptr, ptr %9, align 8, !tbaa !35
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1107, label %1072

1072:                                             ; preds = %1065
  %1073 = load i32, ptr %975, align 4, !tbaa !46
  %1074 = icmp ne i32 %1073, 0
  call void @llvm.assume(i1 %1074)
  %1075 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1076 = icmp eq ptr %1075, null
  br i1 %1076, label %1079, label %1077

1077:                                             ; preds = %1072
  %1078 = load i32, ptr %1075, align 8, !tbaa !81
  br label %1079

1079:                                             ; preds = %1077, %1072
  %1080 = phi i32 [ %1078, %1077 ], [ 0, %1072 ]
  %1081 = icmp ugt i32 %1073, %1080
  br i1 %1081, label %1082, label %1083

1082:                                             ; preds = %1079
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %1083

1083:                                             ; preds = %1082, %1079
  %1084 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1085 = add i32 %1073, -1
  %1086 = zext i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1084, i64 0, i32 2, i64 %1086
  %1088 = load ptr, ptr %1087, align 8, !tbaa !35
  %1089 = getelementptr inbounds %struct._stmt_vec_info, ptr %1088, i64 0, i32 14
  %1090 = load ptr, ptr %1089, align 8, !tbaa !83
  %1091 = load i32, ptr %1035, align 4, !tbaa !46
  %1092 = icmp ne i32 %1091, 0
  call void @llvm.assume(i1 %1092)
  %1093 = icmp eq ptr %1084, null
  br i1 %1093, label %1096, label %1094

1094:                                             ; preds = %1083
  %1095 = load i32, ptr %1084, align 8, !tbaa !81
  br label %1096

1096:                                             ; preds = %1094, %1083
  %1097 = phi i32 [ %1095, %1094 ], [ 0, %1083 ]
  %1098 = icmp ugt i32 %1091, %1097
  br i1 %1098, label %1099, label %1100

1099:                                             ; preds = %1096
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %1100

1100:                                             ; preds = %1099, %1096
  %1101 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1102 = add i32 %1091, -1
  %1103 = zext i32 %1102 to i64
  %1104 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1101, i64 0, i32 2, i64 %1103
  %1105 = load ptr, ptr %1104, align 8, !tbaa !35
  %1106 = getelementptr inbounds %struct._stmt_vec_info, ptr %1105, i64 0, i32 14
  store ptr %1090, ptr %1106, align 8, !tbaa !83
  br label %1107

1107:                                             ; preds = %1100, %1065
  br i1 %534, label %1108, label %1379

1108:                                             ; preds = %1107
  %1109 = getelementptr inbounds %struct._stmt_vec_info, ptr %1018, i64 0, i32 16
  %1110 = load i32, ptr %1109, align 8, !tbaa !147
  %1111 = icmp eq i32 %1110, 6
  br i1 %1111, label %1112, label %1379

1112:                                             ; preds = %1108
  %1113 = getelementptr inbounds %struct.gimple_statement_phi, ptr %995, i64 0, i32 3
  %1114 = load ptr, ptr %1113, align 8, !tbaa !35
  %1115 = getelementptr inbounds %struct.tree_ssa_name, ptr %1114, i64 0, i32 5
  store ptr %1115, ptr %941, align 8, !tbaa !210
  %1116 = getelementptr inbounds %struct.tree_ssa_name, ptr %1114, i64 0, i32 5, i32 1
  %1117 = load ptr, ptr %1116, align 8, !tbaa !159
  store ptr %1117, ptr %10, align 8, !tbaa !212
  %1118 = icmp eq ptr %1117, %1115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %976, i8 0, i64 40, i1 false)
  br i1 %1118, label %1123, label %1119

1119:                                             ; preds = %1112
  call fastcc void @link_use_stmts_after(ptr noundef %1117, ptr noundef nonnull %10)
  %1120 = load ptr, ptr %10, align 8, !tbaa !212
  %1121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1120, i64 0, i32 2
  %1122 = load ptr, ptr %1121, align 8, !tbaa !46
  br label %1123

1123:                                             ; preds = %1112, %1119
  %1124 = phi ptr [ %1122, %1119 ], [ null, %1112 ]
  %1125 = load ptr, ptr %10, align 8, !tbaa !212
  %1126 = load ptr, ptr %941, align 8, !tbaa !210
  %1127 = icmp eq ptr %1125, %1126
  br i1 %1127, label %1314, label %1128

1128:                                             ; preds = %1123, %1309
  %1129 = phi ptr [ %1310, %1309 ], [ %1124, %1123 ]
  %1130 = getelementptr inbounds %struct.gimple_statement_base, ptr %1129, i64 0, i32 1
  %1131 = load i32, ptr %1130, align 4, !tbaa !46
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1148, label %1133

1133:                                             ; preds = %1128
  %1134 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1138, label %1136

1136:                                             ; preds = %1133
  %1137 = load i32, ptr %1134, align 8, !tbaa !81
  br label %1138

1138:                                             ; preds = %1136, %1133
  %1139 = phi i32 [ %1137, %1136 ], [ 0, %1133 ]
  %1140 = icmp ugt i32 %1131, %1139
  br i1 %1140, label %1141, label %1142

1141:                                             ; preds = %1138
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %1142

1142:                                             ; preds = %1141, %1138
  %1143 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1144 = add i32 %1131, -1
  %1145 = zext i32 %1144 to i64
  %1146 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1143, i64 0, i32 2, i64 %1145
  %1147 = load ptr, ptr %1146, align 8, !tbaa !35
  br label %1148

1148:                                             ; preds = %1128, %1142
  %1149 = phi ptr [ %1147, %1142 ], [ null, %1128 ]
  %1150 = getelementptr inbounds %struct.gimple_statement_base, ptr %1129, i64 0, i32 4
  %1151 = load ptr, ptr %1150, align 8, !tbaa !46
  %1152 = load i32, ptr %1129, align 8
  %1153 = and i32 %1152, 255
  %1154 = icmp eq i32 %1153, 16
  br i1 %1154, label %1155, label %1295

1155:                                             ; preds = %1148
  %1156 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1129, i64 0, i32 2
  %1157 = load i32, ptr %1156, align 4, !tbaa !46
  %1158 = icmp eq i32 %1157, 2
  %1159 = icmp ne ptr %1149, null
  %1160 = select i1 %1158, i1 %1159, i1 false
  br i1 %1160, label %1161, label %1295

1161:                                             ; preds = %1155
  %1162 = getelementptr inbounds %struct._stmt_vec_info, ptr %1149, i64 0, i32 16
  %1163 = load i32, ptr %1162, align 8, !tbaa !147
  %1164 = icmp eq i32 %1163, 6
  br i1 %1164, label %1165, label %1295

1165:                                             ; preds = %1161
  %1166 = getelementptr inbounds %struct.basic_block_def, ptr %1151, i64 0, i32 3
  %1167 = load ptr, ptr %1166, align 8, !tbaa !109
  %1168 = icmp eq ptr %1167, %72
  br i1 %1168, label %1169, label %1295

1169:                                             ; preds = %1165
  %1170 = getelementptr inbounds %struct.loop, ptr %72, i64 0, i32 10
  %1171 = call ptr @create_phi_node(ptr noundef %250, ptr noundef %1151) #18
  %1172 = load ptr, ptr %1170, align 8, !tbaa !93
  %1173 = call ptr @new_stmt_vec_info(ptr noundef %1171, ptr noundef %1172, ptr noundef null) #18
  %1174 = getelementptr inbounds %struct.gimple_statement_base, ptr %1171, i64 0, i32 1
  %1175 = load i32, ptr %1174, align 4, !tbaa !46
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1177, label %1201

1177:                                             ; preds = %1169
  %1178 = icmp eq ptr %1173, null
  br i1 %1178, label %1179, label %1180

1179:                                             ; preds = %1177
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %1180

1180:                                             ; preds = %1179, %1177
  %1181 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1186, label %1183

1183:                                             ; preds = %1180
  %1184 = load i32, ptr %1181, align 8, !tbaa !81
  %1185 = add i32 %1184, 1
  br label %1186

1186:                                             ; preds = %1183, %1180
  %1187 = phi i32 [ %1185, %1183 ], [ 1, %1180 ]
  store i32 %1187, ptr %1174, align 4, !tbaa !46
  %1188 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1195, label %1190

1190:                                             ; preds = %1186
  %1191 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1188, i64 0, i32 1
  %1192 = load i32, ptr %1191, align 4, !tbaa !116
  %1193 = load i32, ptr %1188, align 8, !tbaa !81
  %1194 = icmp eq i32 %1192, %1193
  br i1 %1194, label %1195, label %1197

1195:                                             ; preds = %1190, %1186
  %1196 = call ptr @vec_heap_p_reserve(ptr noundef %1188, i32 noundef 1) #18
  store ptr %1196, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %1197

1197:                                             ; preds = %1195, %1190
  %1198 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %1199 = load i32, ptr %1198, align 8, !tbaa !81
  %1200 = add i32 %1199, 1
  store i32 %1200, ptr %1198, align 8, !tbaa !81
  br label %1204

1201:                                             ; preds = %1169
  %1202 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1203 = add i32 %1175, -1
  br label %1204

1204:                                             ; preds = %1197, %1201
  %1205 = phi i32 [ %1199, %1197 ], [ %1203, %1201 ]
  %1206 = phi ptr [ %1198, %1197 ], [ %1202, %1201 ]
  %1207 = zext i32 %1205 to i64
  %1208 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1206, i64 0, i32 2, i64 %1207
  store ptr %1173, ptr %1208, align 8, !tbaa !35
  %1209 = call ptr @loop_preheader_edge(ptr noundef %72) #18
  %1210 = getelementptr inbounds %struct.edge_def, ptr %1209, i64 0, i32 6
  %1211 = load i32, ptr %1210, align 4, !tbaa !156
  %1212 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1129, i64 0, i32 1
  %1213 = load i32, ptr %1212, align 8, !tbaa !46
  %1214 = icmp ult i32 %1213, %1211
  br i1 %1214, label %1215, label %1216

1215:                                             ; preds = %1204
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %1216

1216:                                             ; preds = %1204, %1215
  %1217 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1032, i64 0, i32 3
  %1218 = zext i32 %1211 to i64
  %1219 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1129, i64 0, i32 4, i64 %1218, i32 0, i32 3
  %1220 = load ptr, ptr %1219, align 8, !tbaa !157
  %1221 = load ptr, ptr %1220, align 8, !tbaa !35
  %1222 = call ptr @get_initial_def_for_reduction(ptr noundef nonnull %1, ptr noundef %1221, ptr noundef null)
  %1223 = call ptr @vect_init_vector(ptr noundef nonnull %1129, ptr noundef %1222, ptr noundef nonnull %234, ptr noundef null) #18
  %1224 = call ptr @loop_preheader_edge(ptr noundef %72) #18
  call void @add_phi_arg(ptr noundef %1171, ptr noundef %1223, ptr noundef %1224, i32 noundef 0) #18
  %1225 = load ptr, ptr %1217, align 8, !tbaa !35
  %1226 = call ptr @loop_latch_edge(ptr noundef %72) #18
  call void @add_phi_arg(ptr noundef %1171, ptr noundef %1225, ptr noundef %1226, i32 noundef 0) #18
  %1227 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %1228 = icmp eq i8 %1227, 0
  br i1 %1228, label %1233, label %1229

1229:                                             ; preds = %1216
  %1230 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %1231 = call i64 @fwrite(ptr nonnull @.str.144, i64 35, i64 1, ptr %1230)
  %1232 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %1232, ptr noundef %1171, i32 noundef 0, i32 noundef 2) #18
  br label %1233

1233:                                             ; preds = %1229, %1216
  %1234 = icmp sgt i32 %2, 0
  %1235 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1171, i64 0, i32 3
  %1236 = load ptr, ptr %1235, align 8, !tbaa !35
  br i1 %1234, label %1237, label %1295

1237:                                             ; preds = %1233
  %1238 = icmp eq ptr %1236, null
  %1239 = getelementptr inbounds %struct.tree_ssa_name, ptr %1236, i64 0, i32 5
  %1240 = getelementptr inbounds %struct.tree_ssa_name, ptr %1236, i64 0, i32 5, i32 1
  br label %1241

1241:                                             ; preds = %1237, %1285
  %1242 = phi ptr [ %4, %1237 ], [ %1292, %1285 ]
  %1243 = phi i32 [ 0, %1237 ], [ %1293, %1285 ]
  %1244 = call ptr @loop_preheader_edge(ptr noundef %876) #18
  %1245 = getelementptr inbounds %struct.edge_def, ptr %1244, i64 0, i32 6
  %1246 = load i32, ptr %1245, align 4, !tbaa !156
  %1247 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1242, i64 0, i32 1
  %1248 = load i32, ptr %1247, align 8, !tbaa !46
  %1249 = icmp ult i32 %1248, %1246
  br i1 %1249, label %1250, label %1251

1250:                                             ; preds = %1241
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %1251

1251:                                             ; preds = %1241, %1250
  %1252 = zext i32 %1246 to i64
  %1253 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1242, i64 0, i32 4, i64 %1252
  %1254 = load ptr, ptr %1253, align 8, !tbaa !199
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1261, label %1256

1256:                                             ; preds = %1251
  %1257 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1253, i64 0, i32 1
  %1258 = load ptr, ptr %1257, align 8, !tbaa !159
  %1259 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1254, i64 0, i32 1
  store ptr %1258, ptr %1259, align 8, !tbaa !159
  %1260 = load ptr, ptr %1257, align 8, !tbaa !159
  store ptr %1254, ptr %1260, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1253, i8 0, i64 16, i1 false)
  br label %1261

1261:                                             ; preds = %1256, %1251
  %1262 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1253, i64 0, i32 3
  %1263 = load ptr, ptr %1262, align 8, !tbaa !157
  store ptr %1236, ptr %1263, align 8, !tbaa !35
  br i1 %1238, label %1268, label %1264

1264:                                             ; preds = %1261
  %1265 = load i64, ptr %1236, align 8
  %1266 = and i64 %1265, 65535
  %1267 = icmp eq i64 %1266, 141
  br i1 %1267, label %1269, label %1268

1268:                                             ; preds = %1264, %1261
  store ptr null, ptr %1253, align 8, !tbaa !199
  br label %1273

1269:                                             ; preds = %1264
  store ptr %1239, ptr %1253, align 8, !tbaa !199
  %1270 = load ptr, ptr %1240, align 8, !tbaa !159
  %1271 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1253, i64 0, i32 1
  store ptr %1270, ptr %1271, align 8, !tbaa !159
  %1272 = load ptr, ptr %1240, align 8, !tbaa !159
  store ptr %1253, ptr %1272, align 8, !tbaa !199
  store ptr %1253, ptr %1240, align 8, !tbaa !159
  br label %1273

1273:                                             ; preds = %1268, %1269
  %1274 = getelementptr inbounds %struct.gimple_statement_base, ptr %1242, i64 0, i32 1
  %1275 = load i32, ptr %1274, align 4, !tbaa !46
  %1276 = icmp ne i32 %1275, 0
  call void @llvm.assume(i1 %1276)
  %1277 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1281, label %1279

1279:                                             ; preds = %1273
  %1280 = load i32, ptr %1277, align 8, !tbaa !81
  br label %1281

1281:                                             ; preds = %1279, %1273
  %1282 = phi i32 [ %1280, %1279 ], [ 0, %1273 ]
  %1283 = icmp ugt i32 %1275, %1282
  br i1 %1283, label %1284, label %1285

1284:                                             ; preds = %1281
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %1285

1285:                                             ; preds = %1284, %1281
  %1286 = load ptr, ptr @stmt_vec_info_vec, align 8
  %1287 = add i32 %1275, -1
  %1288 = zext i32 %1287 to i64
  %1289 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %1286, i64 0, i32 2, i64 %1288
  %1290 = load ptr, ptr %1289, align 8, !tbaa !35
  %1291 = getelementptr inbounds %struct._stmt_vec_info, ptr %1290, i64 0, i32 14
  %1292 = load ptr, ptr %1291, align 8, !tbaa !83
  %1293 = add nuw nsw i32 %1243, 1
  %1294 = icmp eq i32 %1293, %2
  br i1 %1294, label %1295, label %1241, !llvm.loop !215

1295:                                             ; preds = %1285, %1233, %1148, %1155, %1161, %1165
  %1296 = load ptr, ptr %977, align 8, !tbaa !159
  store ptr %1296, ptr %10, align 8, !tbaa !212
  %1297 = load ptr, ptr %941, align 8, !tbaa !210
  %1298 = icmp eq ptr %1296, %1297
  br i1 %1298, label %1299, label %1305

1299:                                             ; preds = %1295
  %1300 = load ptr, ptr %976, align 8, !tbaa !199
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %1309, label %1302

1302:                                             ; preds = %1299
  %1303 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1300, i64 0, i32 1
  store ptr %1296, ptr %1303, align 8, !tbaa !159
  %1304 = load ptr, ptr %977, align 8, !tbaa !159
  store ptr %1300, ptr %1304, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %976, i8 0, i64 16, i1 false)
  br label %1309

1305:                                             ; preds = %1295
  call fastcc void @link_use_stmts_after(ptr noundef %1296, ptr noundef nonnull %10)
  %1306 = load ptr, ptr %10, align 8, !tbaa !212
  %1307 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1306, i64 0, i32 2
  %1308 = load ptr, ptr %1307, align 8, !tbaa !46
  br label %1309

1309:                                             ; preds = %1299, %1302, %1305
  %1310 = phi ptr [ %1308, %1305 ], [ null, %1302 ], [ null, %1299 ]
  %1311 = load ptr, ptr %10, align 8, !tbaa !212
  %1312 = load ptr, ptr %941, align 8, !tbaa !210
  %1313 = icmp eq ptr %1311, %1312
  br i1 %1313, label %1314, label %1128, !llvm.loop !216

1314:                                             ; preds = %1309, %1123, %997
  %1315 = phi ptr [ %986, %997 ], [ %1032, %1123 ], [ %1032, %1309 ]
  %1316 = getelementptr inbounds %struct.gimple_statement_phi, ptr %995, i64 0, i32 3
  %1317 = load ptr, ptr %1316, align 8, !tbaa !35
  %1318 = getelementptr inbounds %struct.tree_ssa_name, ptr %1317, i64 0, i32 5
  store ptr %1318, ptr %941, align 8, !tbaa !210
  %1319 = getelementptr inbounds %struct.tree_ssa_name, ptr %1317, i64 0, i32 5, i32 1
  %1320 = load ptr, ptr %1319, align 8, !tbaa !159
  store ptr %1320, ptr %10, align 8, !tbaa !212
  %1321 = icmp eq ptr %1320, %1318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %979, i8 0, i64 40, i1 false)
  br i1 %1321, label %1323, label %1322

1322:                                             ; preds = %1314
  call fastcc void @link_use_stmts_after(ptr noundef %1320, ptr noundef nonnull %10)
  br label %1323

1323:                                             ; preds = %1314, %1322
  %1324 = load ptr, ptr %10, align 8, !tbaa !212
  %1325 = load ptr, ptr %941, align 8, !tbaa !210
  %1326 = icmp eq ptr %1324, %1325
  br i1 %1326, label %1379, label %1327

1327:                                             ; preds = %1323, %1375
  %1328 = phi ptr [ %1376, %1375 ], [ %1324, %1323 ]
  %1329 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1328, i64 0, i32 1
  %1330 = load ptr, ptr %1329, align 8, !tbaa !159
  store ptr %1330, ptr %978, align 8, !tbaa !217
  %1331 = load ptr, ptr %10, align 8, !tbaa !212
  %1332 = icmp eq ptr %1331, %979
  br i1 %1332, label %1364, label %1333

1333:                                             ; preds = %1327, %1360
  %1334 = phi ptr [ %1361, %1360 ], [ %1328, %1327 ]
  %1335 = load ptr, ptr %1334, align 8, !tbaa !199
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1342, label %1337

1337:                                             ; preds = %1333
  %1338 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1334, i64 0, i32 1
  %1339 = load ptr, ptr %1338, align 8, !tbaa !159
  %1340 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1335, i64 0, i32 1
  store ptr %1339, ptr %1340, align 8, !tbaa !159
  %1341 = load ptr, ptr %1338, align 8, !tbaa !159
  store ptr %1335, ptr %1341, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1334, i8 0, i64 16, i1 false)
  br label %1342

1342:                                             ; preds = %1337, %1333
  %1343 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1334, i64 0, i32 3
  %1344 = load ptr, ptr %1343, align 8, !tbaa !157
  store ptr %938, ptr %1344, align 8, !tbaa !35
  br i1 %981, label %1349, label %1345

1345:                                             ; preds = %1342
  %1346 = load i64, ptr %938, align 8
  %1347 = and i64 %1346, 65535
  %1348 = icmp eq i64 %1347, 141
  br i1 %1348, label %1350, label %1349

1349:                                             ; preds = %1345, %1342
  store ptr null, ptr %1334, align 8, !tbaa !199
  br label %1354

1350:                                             ; preds = %1345
  store ptr %982, ptr %1334, align 8, !tbaa !199
  %1351 = load ptr, ptr %983, align 8, !tbaa !159
  %1352 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1334, i64 0, i32 1
  store ptr %1351, ptr %1352, align 8, !tbaa !159
  %1353 = load ptr, ptr %983, align 8, !tbaa !159
  store ptr %1334, ptr %1353, align 8, !tbaa !199
  store ptr %1334, ptr %983, align 8, !tbaa !159
  br label %1354

1354:                                             ; preds = %1349, %1350
  %1355 = load ptr, ptr %978, align 8, !tbaa !217
  store ptr %1355, ptr %10, align 8, !tbaa !212
  %1356 = icmp eq ptr %1355, %979
  br i1 %1356, label %1360, label %1357

1357:                                             ; preds = %1354
  %1358 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1355, i64 0, i32 1
  %1359 = load ptr, ptr %1358, align 8, !tbaa !159
  store ptr %1359, ptr %978, align 8, !tbaa !217
  br label %1360

1360:                                             ; preds = %1354, %1357
  %1361 = phi ptr [ %1355, %1357 ], [ null, %1354 ]
  %1362 = load ptr, ptr %10, align 8, !tbaa !212
  %1363 = icmp eq ptr %1362, %979
  br i1 %1363, label %1364, label %1333, !llvm.loop !218

1364:                                             ; preds = %1360, %1327
  %1365 = load ptr, ptr %980, align 8, !tbaa !159
  store ptr %1365, ptr %10, align 8, !tbaa !212
  %1366 = load ptr, ptr %941, align 8, !tbaa !210
  %1367 = icmp eq ptr %1365, %1366
  br i1 %1367, label %1368, label %1374

1368:                                             ; preds = %1364
  %1369 = load ptr, ptr %979, align 8, !tbaa !199
  %1370 = icmp eq ptr %1369, null
  br i1 %1370, label %1375, label %1371

1371:                                             ; preds = %1368
  %1372 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1369, i64 0, i32 1
  store ptr %1365, ptr %1372, align 8, !tbaa !159
  %1373 = load ptr, ptr %980, align 8, !tbaa !159
  store ptr %1369, ptr %1373, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %979, i8 0, i64 16, i1 false)
  br label %1375

1374:                                             ; preds = %1364
  call fastcc void @link_use_stmts_after(ptr noundef %1365, ptr noundef nonnull %10)
  br label %1375

1375:                                             ; preds = %1368, %1371, %1374
  %1376 = load ptr, ptr %10, align 8, !tbaa !212
  %1377 = load ptr, ptr %941, align 8, !tbaa !210
  %1378 = icmp eq ptr %1376, %1377
  br i1 %1378, label %1379, label %1327, !llvm.loop !219

1379:                                             ; preds = %1375, %1323, %1108, %1107
  %1380 = phi ptr [ %1032, %1107 ], [ %1032, %1108 ], [ %1315, %1323 ], [ %1315, %1375 ]
  %1381 = add nuw i64 %985, 1
  br label %984, !llvm.loop !220

1382:                                             ; preds = %994
  br i1 %968, label %1384, label %1383

1383:                                             ; preds = %1382
  call void @free(ptr noundef %939)
  br label %1384

1384:                                             ; preds = %1382, %1383
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vectorizable_induction(ptr noundef %0, ptr nocapture readnone %1, ptr noundef writeonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @stmt_vec_info_vec, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %18 = icmp ugt i32 %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = add i32 %9, -1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %21, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %3, %20
  %27 = phi ptr [ %25, %20 ], [ null, %3 ]
  %28 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !138
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !110
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1023
  %36 = zext nneg i32 %35 to i64
  %37 = shl nuw i64 1, %36
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct._loop_vec_info, ptr %31, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !124
  %41 = sdiv i32 %40, %38
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4027, ptr noundef nonnull @.str.7) #18
  br label %44

44:                                               ; preds = %26, %43
  %45 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !109
  %53 = icmp eq ptr %46, %52
  br label %54

54:                                               ; preds = %44, %48
  %55 = phi i1 [ false, %44 ], [ %53, %48 ]
  %56 = icmp sgt i32 %41, 1
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %730, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %63 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 30, i64 1, ptr %62)
  br label %730

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !137
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %730, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 25
  %70 = load i32, ptr %69, align 4, !tbaa !153
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %730

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 16
  %74 = load i32, ptr %73, align 8, !tbaa !147
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4043, ptr noundef nonnull @.str.7) #18
  br label %77

77:                                               ; preds = %72, %76
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %730

81:                                               ; preds = %77
  %82 = icmp eq ptr %2, null
  br i1 %82, label %83, label %106

83:                                               ; preds = %81
  store i32 8, ptr %27, align 8, !tbaa !108
  %84 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %88 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 30, i64 1, ptr %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load ptr, ptr @ix86_cost, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.processor_costs, ptr %90, i64 0, i32 40
  %92 = load i32, ptr %91, align 4, !tbaa !194
  %93 = mul nsw i32 %92, %41
  %94 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 24
  %95 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 24, i32 1
  store i32 %93, ptr %95, align 4, !tbaa !172
  %96 = getelementptr inbounds %struct.processor_costs, ptr %90, i64 0, i32 42
  %97 = load i32, ptr %96, align 4, !tbaa !196
  %98 = shl nsw i32 %97, 1
  store i32 %98, ptr %94, align 4, !tbaa !173
  %99 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %730, label %101

101:                                              ; preds = %89
  %102 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %103 = load i32, ptr %95, align 4, !tbaa !172
  %104 = load i32, ptr %94, align 4, !tbaa !173
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.145, i32 noundef %103, i32 noundef %104)
  br label %730

106:                                              ; preds = %81
  %107 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %111 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 24, i64 1, ptr %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, ptr %8, align 4, !tbaa !46
  %114 = icmp ne i32 %113, 0
  tail call void @llvm.assume(i1 %114)
  %115 = load ptr, ptr @stmt_vec_info_vec, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %115, align 8, !tbaa !81
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi i32 [ %118, %117 ], [ 0, %112 ]
  %121 = icmp ugt i32 %113, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %123

123:                                              ; preds = %122, %119
  %124 = load ptr, ptr @stmt_vec_info_vec, align 8
  %125 = add i32 %113, -1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %124, i64 0, i32 2, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !35
  %129 = getelementptr inbounds %struct._stmt_vec_info, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !110
  %131 = load ptr, ptr %130, align 8, !tbaa !54
  %132 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = tail call ptr @loop_preheader_edge(ptr noundef %131) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %137 = getelementptr inbounds %struct._loop_vec_info, ptr %130, i64 0, i32 6
  %138 = load i32, ptr %137, align 8, !tbaa !124
  %139 = load i32, ptr %8, align 4, !tbaa !46
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %123
  %142 = load ptr, ptr @stmt_vec_info_vec, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr %142, align 8, !tbaa !81
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %145, %144 ], [ 0, %141 ]
  %148 = icmp ugt i32 %139, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %150

150:                                              ; preds = %149, %146
  %151 = load ptr, ptr @stmt_vec_info_vec, align 8
  %152 = add i32 %139, -1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %151, i64 0, i32 2, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !35
  br label %156

156:                                              ; preds = %150, %123
  %157 = phi ptr [ %155, %150 ], [ null, %123 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %158 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  %160 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %135) #18
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2402, ptr noundef nonnull @.str.7) #18
  br label %163

163:                                              ; preds = %162, %156
  %164 = getelementptr inbounds %struct.tree_type, ptr %160, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, 1023
  %167 = zext nneg i32 %166 to i64
  %168 = shl nuw i64 1, %167
  %169 = trunc i64 %168 to i32
  %170 = sdiv i32 %138, %169
  %171 = icmp eq ptr %157, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2406, ptr noundef nonnull @.str.7) #18
  br label %173

173:                                              ; preds = %172, %163
  %174 = icmp sgt i32 %170, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2407, ptr noundef nonnull @.str.7) #18
  br label %176

176:                                              ; preds = %175, %173
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 13
  %178 = load i32, ptr %177, align 8, !tbaa !70, !noalias !221
  %179 = and i32 %178, 512
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 7
  %183 = load ptr, ptr %182, align 8, !tbaa !46, !noalias !221
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %183, align 8, !tbaa !75, !noalias !221
  br label %187

187:                                              ; preds = %185, %181, %176
  %188 = phi ptr [ %186, %185 ], [ null, %181 ], [ null, %176 ]
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %188, align 8, !tbaa !77, !noalias !221
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi ptr [ %191, %190 ], [ null, %187 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %205, label %195

195:                                              ; preds = %192, %201
  %196 = phi ptr [ %203, %201 ], [ %193, %192 ]
  %197 = load ptr, ptr %196, align 8, !tbaa !64, !noalias !226
  %198 = load i32, ptr %197, align 8, !noalias !226
  %199 = and i32 %198, 255
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %196, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !68, !noalias !226
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %195, !llvm.loop !207

205:                                              ; preds = %201, %195, %192
  %206 = phi ptr [ %193, %192 ], [ %203, %201 ], [ %196, %195 ]
  store ptr %206, ptr %7, align 8, !tbaa.struct !63
  %207 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %188, ptr %207, align 8, !tbaa.struct !79
  %208 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr %159, ptr %208, align 8, !tbaa.struct !80
  %209 = load i64, ptr %135, align 8
  %210 = trunc i64 %209 to i16
  switch i16 %210, label %216 [
    i16 6, label %211
    i16 7, label %211
    i16 8, label %211
    i16 10, label %213
    i16 12, label %213
  ]

211:                                              ; preds = %205, %205, %205
  %212 = tail call ptr @build_int_cst(ptr noundef nonnull %135, i64 noundef 0) #18
  store ptr %212, ptr %5, align 8, !tbaa !35
  br label %218

213:                                              ; preds = %205, %205
  %214 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %215 = tail call ptr @build_int_cst(ptr noundef %214, i64 noundef 0) #18
  store ptr %215, ptr %5, align 8, !tbaa !35
  br label %218

216:                                              ; preds = %205
  %217 = tail call ptr @build_real(ptr noundef nonnull %135, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  store ptr %217, ptr %5, align 8, !tbaa !35
  br label %218

218:                                              ; preds = %216, %213, %211
  %219 = getelementptr inbounds %struct.loop, ptr %131, i64 0, i32 8
  %220 = load ptr, ptr %219, align 8, !tbaa !94
  %221 = icmp eq ptr %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %158, align 8, !tbaa !46
  %224 = getelementptr inbounds %struct.basic_block_def, ptr %223, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !109
  %226 = icmp eq ptr %220, %225
  %227 = zext i1 %226 to i8
  br label %228

228:                                              ; preds = %222, %218
  %229 = phi i8 [ 0, %218 ], [ %227, %222 ]
  %230 = icmp eq i8 %229, 0
  %231 = select i1 %230, ptr %131, ptr %220
  %232 = load ptr, ptr %158, align 8, !tbaa !46
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %232, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !109
  %235 = icmp eq ptr %231, %234
  br i1 %235, label %237, label %236

236:                                              ; preds = %228
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2427, ptr noundef nonnull @.str.7) #18
  br label %237

237:                                              ; preds = %236, %228
  %238 = tail call ptr @loop_latch_edge(ptr noundef %231) #18
  %239 = getelementptr inbounds %struct.edge_def, ptr %238, i64 0, i32 6
  %240 = load i32, ptr %239, align 4, !tbaa !156
  %241 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !46
  %243 = icmp ult i32 %242, %240
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %245

245:                                              ; preds = %244, %237
  %246 = zext i32 %240 to i64
  %247 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %246, i32 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !157
  %249 = load ptr, ptr %248, align 8, !tbaa !35
  %250 = load ptr, ptr %132, align 8, !tbaa !35
  %251 = tail call ptr @analyze_scalar_evolution(ptr noundef %231, ptr noundef %250) #18
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2433, ptr noundef nonnull @.str.7) #18
  br label %254

254:                                              ; preds = %253, %245
  %255 = load i32, ptr %231, align 8, !tbaa !227
  %256 = call fastcc zeroext i8 @vect_is_simple_iv_evolution(i32 noundef %255, ptr noundef %251, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !148
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2436, ptr noundef nonnull @.str.7) #18
  br label %259

259:                                              ; preds = %258, %254
  %260 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %231) #18
  br i1 %230, label %274, label %261

261:                                              ; preds = %259
  %262 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %231) #18
  %263 = getelementptr inbounds %struct.edge_def, ptr %262, i64 0, i32 6
  %264 = load i32, ptr %263, align 4, !tbaa !156
  %265 = load i32, ptr %241, align 8, !tbaa !46
  %266 = icmp ult i32 %265, %264
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %268

268:                                              ; preds = %267, %261
  %269 = zext i32 %264 to i64
  %270 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %269, i32 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !157
  %272 = load ptr, ptr %271, align 8, !tbaa !35
  %273 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %272, ptr noundef nonnull %0, ptr noundef null) #18
  br label %353

274:                                              ; preds = %259
  %275 = tail call ptr @vect_get_new_vect_var(ptr noundef nonnull %135, i32 noundef 2, ptr noundef nonnull @.str.146) #18
  %276 = tail call zeroext i8 @add_referenced_var(ptr noundef %275) #18
  %277 = load ptr, ptr %4, align 8, !tbaa !35
  %278 = call ptr @force_gimple_operand(ptr noundef %277, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %275) #18
  %279 = load ptr, ptr %6, align 8, !tbaa !35
  %280 = icmp eq ptr %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %274
  %282 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %260, ptr noundef nonnull %279) #18
  %283 = icmp eq ptr %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2460, ptr noundef nonnull @.str.7) #18
  br label %285

285:                                              ; preds = %284, %281, %274
  %286 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %277, ptr noundef null) #18
  %287 = icmp sgt i32 %169, 1
  br i1 %287, label %288, label %348

288:                                              ; preds = %285
  %289 = load ptr, ptr %5, align 8, !tbaa !35
  br label %290

290:                                              ; preds = %288, %344
  %291 = phi ptr [ %286, %288 ], [ %345, %344 ]
  %292 = phi ptr [ %278, %288 ], [ %303, %344 ]
  %293 = phi i32 [ 1, %288 ], [ %346, %344 ]
  %294 = load i64, ptr %135, align 8
  %295 = trunc i64 %294 to i32
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 10
  %298 = icmp eq i32 %296, 12
  %299 = or i1 %297, %298
  %300 = select i1 %299, i32 66, i32 63
  %301 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %300, ptr noundef %275, ptr noundef %292, ptr noundef %289) #18
  %302 = load ptr, ptr @cfun, align 8, !tbaa !35
  %303 = call ptr @make_ssa_name_fn(ptr noundef %302, ptr noundef %275, ptr noundef %301) #18
  %304 = load i32, ptr %301, align 8
  %305 = and i32 %304, 255
  %306 = add nsw i32 %305, -10
  %307 = icmp ult i32 %306, -9
  br i1 %307, label %312, label %308

308:                                              ; preds = %290
  %309 = getelementptr inbounds %struct.gimple_statement_base, ptr %301, i64 0, i32 3
  %310 = load i32, ptr %309, align 4, !tbaa !46
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %308, %290
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %313

313:                                              ; preds = %312, %308
  %314 = load i32, ptr %301, align 8
  %315 = and i32 %314, 255
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !50
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %319
  %321 = load i64, ptr %320, align 8, !tbaa !161
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %324

324:                                              ; preds = %323, %313
  %325 = getelementptr inbounds i8, ptr %301, i64 %321
  store ptr %303, ptr %325, align 8, !tbaa !35
  %326 = icmp eq ptr %303, null
  br i1 %326, label %333, label %327

327:                                              ; preds = %324
  %328 = load i64, ptr %303, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 141
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.tree_ssa_name, ptr %303, i64 0, i32 2
  store ptr %301, ptr %332, align 8, !tbaa !46
  br label %333

333:                                              ; preds = %331, %327, %324
  %334 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %260, ptr noundef nonnull %301) #18
  %335 = icmp eq ptr %334, null
  br i1 %335, label %337, label %336

336:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2476, ptr noundef nonnull @.str.7) #18
  br label %337

337:                                              ; preds = %336, %333
  %338 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %342 = call i64 @fwrite(ptr nonnull @.str.147, i64 23, i64 1, ptr %341)
  %343 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %343, ptr noundef nonnull %301, i32 noundef 0, i32 noundef 2) #18
  br label %344

344:                                              ; preds = %340, %337
  %345 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %303, ptr noundef %291) #18
  %346 = add nuw nsw i32 %293, 1
  %347 = icmp eq i32 %346, %169
  br i1 %347, label %348, label %290, !llvm.loop !228

348:                                              ; preds = %344, %285
  %349 = phi ptr [ %286, %285 ], [ %345, %344 ]
  %350 = call ptr @nreverse(ptr noundef %349) #18
  %351 = call ptr @build_constructor_from_list(ptr noundef %160, ptr noundef %350) #18
  %352 = call ptr @vect_init_vector(ptr noundef nonnull %0, ptr noundef %351, ptr noundef %160, ptr noundef null) #18
  br label %353

353:                                              ; preds = %348, %268
  %354 = phi ptr [ %273, %268 ], [ %352, %348 ]
  %355 = load ptr, ptr %5, align 8, !tbaa !35
  br i1 %230, label %356, label %363

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.tree_common, ptr %355, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !46
  %359 = sext i32 %138 to i64
  %360 = call ptr @build_int_cst(ptr noundef %358, i64 noundef %359) #18
  %361 = load ptr, ptr %357, align 8, !tbaa !46
  %362 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %361, ptr noundef %360, ptr noundef %355) #18
  br label %363

363:                                              ; preds = %353, %356
  %364 = phi ptr [ %362, %356 ], [ %355, %353 ]
  %365 = icmp sgt i32 %169, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %363, %366
  %367 = phi ptr [ %370, %366 ], [ null, %363 ]
  %368 = phi i32 [ %371, %366 ], [ 0, %363 ]
  %369 = call ptr @unshare_expr(ptr noundef %364) #18
  %370 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %369, ptr noundef %367) #18
  %371 = add nuw nsw i32 %368, 1
  %372 = icmp eq i32 %371, %169
  br i1 %372, label %373, label %366, !llvm.loop !229

373:                                              ; preds = %366, %363
  %374 = phi ptr [ null, %363 ], [ %370, %366 ]
  %375 = load i64, ptr %364, align 8
  %376 = and i64 %375, 65535
  %377 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !50
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %381, label %380

380:                                              ; preds = %373
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2508, ptr noundef nonnull @.str.7) #18
  br label %381

381:                                              ; preds = %380, %373
  %382 = getelementptr inbounds %struct.tree_common, ptr %364, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !46
  %384 = call ptr @get_vectype_for_scalar_type(ptr noundef %383) #18
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2510, ptr noundef nonnull @.str.7) #18
  br label %387

387:                                              ; preds = %386, %381
  %388 = call ptr @build_vector(ptr noundef %384, ptr noundef %374) #18
  %389 = call ptr @vect_init_vector(ptr noundef nonnull %0, ptr noundef %388, ptr noundef %384, ptr noundef null) #18
  %390 = call ptr @vect_get_new_vect_var(ptr noundef %160, i32 noundef 0, ptr noundef nonnull @.str.148) #18
  %391 = call zeroext i8 @add_referenced_var(ptr noundef %390) #18
  %392 = getelementptr inbounds %struct.loop, ptr %231, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !95
  %394 = call ptr @create_phi_node(ptr noundef %390, ptr noundef %393) #18
  %395 = call ptr @new_stmt_vec_info(ptr noundef %394, ptr noundef nonnull %130, ptr noundef null) #18
  %396 = getelementptr inbounds %struct.gimple_statement_base, ptr %394, i64 0, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !46
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %423

399:                                              ; preds = %387
  %400 = icmp eq ptr %395, null
  br i1 %400, label %401, label %402

401:                                              ; preds = %399
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %402

402:                                              ; preds = %401, %399
  %403 = load ptr, ptr @stmt_vec_info_vec, align 8
  %404 = icmp eq ptr %403, null
  br i1 %404, label %408, label %405

405:                                              ; preds = %402
  %406 = load i32, ptr %403, align 8, !tbaa !81
  %407 = add i32 %406, 1
  br label %408

408:                                              ; preds = %405, %402
  %409 = phi i32 [ %407, %405 ], [ 1, %402 ]
  store i32 %409, ptr %396, align 4, !tbaa !46
  %410 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %411 = icmp eq ptr %410, null
  br i1 %411, label %417, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %410, i64 0, i32 1
  %414 = load i32, ptr %413, align 4, !tbaa !116
  %415 = load i32, ptr %410, align 8, !tbaa !81
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %412, %408
  %418 = call ptr @vec_heap_p_reserve(ptr noundef %410, i32 noundef 1) #18
  store ptr %418, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %419

419:                                              ; preds = %417, %412
  %420 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %421 = load i32, ptr %420, align 8, !tbaa !81
  %422 = add i32 %421, 1
  store i32 %422, ptr %420, align 8, !tbaa !81
  br label %426

423:                                              ; preds = %387
  %424 = load ptr, ptr @stmt_vec_info_vec, align 8
  %425 = add i32 %397, -1
  br label %426

426:                                              ; preds = %423, %419
  %427 = phi i32 [ %425, %423 ], [ %421, %419 ]
  %428 = phi ptr [ %424, %423 ], [ %420, %419 ]
  %429 = zext i32 %427 to i64
  %430 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %428, i64 0, i32 2, i64 %429
  store ptr %395, ptr %430, align 8, !tbaa !35
  %431 = getelementptr inbounds %struct.gimple_statement_phi, ptr %394, i64 0, i32 3
  %432 = load ptr, ptr %431, align 8, !tbaa !35
  %433 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %390, ptr noundef %432, ptr noundef %389) #18
  %434 = load ptr, ptr @cfun, align 8, !tbaa !35
  %435 = call ptr @make_ssa_name_fn(ptr noundef %434, ptr noundef %390, ptr noundef %433) #18
  %436 = load i32, ptr %433, align 8
  %437 = and i32 %436, 255
  %438 = add nsw i32 %437, -10
  %439 = icmp ult i32 %438, -9
  br i1 %439, label %444, label %440

440:                                              ; preds = %426
  %441 = getelementptr inbounds %struct.gimple_statement_base, ptr %433, i64 0, i32 3
  %442 = load i32, ptr %441, align 4, !tbaa !46
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %440, %426
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %445

445:                                              ; preds = %444, %440
  %446 = load i32, ptr %433, align 8
  %447 = and i32 %446, 255
  %448 = zext nneg i32 %447 to i64
  %449 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !50
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %451
  %453 = load i64, ptr %452, align 8, !tbaa !161
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %445
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %456

456:                                              ; preds = %455, %445
  %457 = getelementptr inbounds i8, ptr %433, i64 %453
  store ptr %435, ptr %457, align 8, !tbaa !35
  %458 = icmp eq ptr %435, null
  br i1 %458, label %465, label %459

459:                                              ; preds = %456
  %460 = load i64, ptr %435, align 8
  %461 = and i64 %460, 65535
  %462 = icmp eq i64 %461, 141
  br i1 %462, label %463, label %465

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.tree_ssa_name, ptr %435, i64 0, i32 2
  store ptr %433, ptr %464, align 8, !tbaa !46
  br label %465

465:                                              ; preds = %463, %459, %456
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef nonnull %433, i32 noundef 1) #18
  %466 = call ptr @new_stmt_vec_info(ptr noundef nonnull %433, ptr noundef nonnull %130, ptr noundef null) #18
  %467 = getelementptr inbounds %struct.gimple_statement_base, ptr %433, i64 0, i32 1
  %468 = load i32, ptr %467, align 4, !tbaa !46
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %494

470:                                              ; preds = %465
  %471 = icmp eq ptr %466, null
  br i1 %471, label %472, label %473

472:                                              ; preds = %470
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %473

473:                                              ; preds = %472, %470
  %474 = load ptr, ptr @stmt_vec_info_vec, align 8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %479, label %476

476:                                              ; preds = %473
  %477 = load i32, ptr %474, align 8, !tbaa !81
  %478 = add i32 %477, 1
  br label %479

479:                                              ; preds = %476, %473
  %480 = phi i32 [ %478, %476 ], [ 1, %473 ]
  store i32 %480, ptr %467, align 4, !tbaa !46
  %481 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %482 = icmp eq ptr %481, null
  br i1 %482, label %488, label %483

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %481, i64 0, i32 1
  %485 = load i32, ptr %484, align 4, !tbaa !116
  %486 = load i32, ptr %481, align 8, !tbaa !81
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %490

488:                                              ; preds = %483, %479
  %489 = call ptr @vec_heap_p_reserve(ptr noundef %481, i32 noundef 1) #18
  store ptr %489, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %490

490:                                              ; preds = %488, %483
  %491 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %492 = load i32, ptr %491, align 8, !tbaa !81
  %493 = add i32 %492, 1
  store i32 %493, ptr %491, align 8, !tbaa !81
  br label %497

494:                                              ; preds = %465
  %495 = load ptr, ptr @stmt_vec_info_vec, align 8
  %496 = add i32 %468, -1
  br label %497

497:                                              ; preds = %494, %490
  %498 = phi i32 [ %496, %494 ], [ %492, %490 ]
  %499 = phi ptr [ %495, %494 ], [ %491, %490 ]
  %500 = zext i32 %498 to i64
  %501 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %499, i64 0, i32 2, i64 %500
  store ptr %466, ptr %501, align 8, !tbaa !35
  call void @add_phi_arg(ptr noundef %394, ptr noundef %354, ptr noundef %260, i32 noundef 0) #18
  %502 = call ptr @loop_latch_edge(ptr noundef nonnull %231) #18
  call void @add_phi_arg(ptr noundef %394, ptr noundef %435, ptr noundef %502, i32 noundef 0) #18
  %503 = icmp sgt i32 %170, 1
  br i1 %503, label %504, label %648

504:                                              ; preds = %497
  br i1 %230, label %506, label %505

505:                                              ; preds = %504
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2568, ptr noundef nonnull @.str.7) #18
  br label %506

506:                                              ; preds = %505, %504
  %507 = load ptr, ptr %5, align 8, !tbaa !35
  %508 = getelementptr inbounds %struct.tree_common, ptr %507, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !46
  %510 = shl i64 4294967296, %167
  %511 = ashr exact i64 %510, 32
  %512 = call ptr @build_int_cst(ptr noundef %509, i64 noundef %511) #18
  %513 = load ptr, ptr %508, align 8, !tbaa !46
  %514 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %513, ptr noundef %512, ptr noundef %507) #18
  %515 = icmp sgt i32 %169, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %506, %516
  %517 = phi ptr [ %520, %516 ], [ null, %506 ]
  %518 = phi i32 [ %521, %516 ], [ 0, %506 ]
  %519 = call ptr @unshare_expr(ptr noundef %514) #18
  %520 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %519, ptr noundef %517) #18
  %521 = add nuw nsw i32 %518, 1
  %522 = icmp eq i32 %521, %169
  br i1 %522, label %523, label %516, !llvm.loop !230

523:                                              ; preds = %516, %506
  %524 = phi ptr [ null, %506 ], [ %520, %516 ]
  %525 = load i64, ptr %514, align 8
  %526 = and i64 %525, 65535
  %527 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !50
  %529 = icmp eq i32 %528, 1
  br i1 %529, label %531, label %530

530:                                              ; preds = %523
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2577, ptr noundef nonnull @.str.7) #18
  br label %531

531:                                              ; preds = %530, %523
  %532 = call ptr @build_vector(ptr noundef %384, ptr noundef %524) #18
  %533 = call ptr @vect_init_vector(ptr noundef nonnull %0, ptr noundef %532, ptr noundef %384, ptr noundef null) #18
  %534 = load i32, ptr %396, align 4, !tbaa !46
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %551, label %536

536:                                              ; preds = %531
  %537 = load ptr, ptr @stmt_vec_info_vec, align 8
  %538 = icmp eq ptr %537, null
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %537, align 8, !tbaa !81
  br label %541

541:                                              ; preds = %539, %536
  %542 = phi i32 [ %540, %539 ], [ 0, %536 ]
  %543 = icmp ugt i32 %534, %542
  br i1 %543, label %544, label %545

544:                                              ; preds = %541
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %545

545:                                              ; preds = %544, %541
  %546 = load ptr, ptr @stmt_vec_info_vec, align 8
  %547 = add i32 %534, -1
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %546, i64 0, i32 2, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !35
  br label %551

551:                                              ; preds = %531, %545
  %552 = phi ptr [ %550, %545 ], [ null, %531 ]
  %553 = call i32 @llvm.smax.i32(i32 %170, i32 2)
  br label %554

554:                                              ; preds = %551, %644
  %555 = phi ptr [ %645, %644 ], [ %552, %551 ]
  %556 = phi i32 [ %646, %644 ], [ 1, %551 ]
  %557 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %390, ptr noundef %432, ptr noundef %533) #18
  %558 = load ptr, ptr @cfun, align 8, !tbaa !35
  %559 = call ptr @make_ssa_name_fn(ptr noundef %558, ptr noundef %390, ptr noundef %557) #18
  %560 = load i32, ptr %557, align 8
  %561 = and i32 %560, 255
  %562 = add nsw i32 %561, -10
  %563 = icmp ult i32 %562, -9
  br i1 %563, label %568, label %564

564:                                              ; preds = %554
  %565 = getelementptr inbounds %struct.gimple_statement_base, ptr %557, i64 0, i32 3
  %566 = load i32, ptr %565, align 4, !tbaa !46
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %569

568:                                              ; preds = %564, %554
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %569

569:                                              ; preds = %568, %564
  %570 = load i32, ptr %557, align 8
  %571 = and i32 %570, 255
  %572 = zext nneg i32 %571 to i64
  %573 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !50
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %575
  %577 = load i64, ptr %576, align 8, !tbaa !161
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %569
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %580

580:                                              ; preds = %579, %569
  %581 = getelementptr inbounds i8, ptr %557, i64 %577
  store ptr %559, ptr %581, align 8, !tbaa !35
  %582 = icmp eq ptr %559, null
  br i1 %582, label %589, label %583

583:                                              ; preds = %580
  %584 = load i64, ptr %559, align 8
  %585 = and i64 %584, 65535
  %586 = icmp eq i64 %585, 141
  br i1 %586, label %587, label %589

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.tree_ssa_name, ptr %559, i64 0, i32 2
  store ptr %557, ptr %588, align 8, !tbaa !46
  br label %589

589:                                              ; preds = %587, %583, %580
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef nonnull %557, i32 noundef 1) #18
  %590 = call ptr @new_stmt_vec_info(ptr noundef nonnull %557, ptr noundef nonnull %130, ptr noundef null) #18
  %591 = getelementptr inbounds %struct.gimple_statement_base, ptr %557, i64 0, i32 1
  %592 = load i32, ptr %591, align 4, !tbaa !46
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %618

594:                                              ; preds = %589
  %595 = icmp eq ptr %590, null
  br i1 %595, label %596, label %597

596:                                              ; preds = %594
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #18
  br label %597

597:                                              ; preds = %596, %594
  %598 = load ptr, ptr @stmt_vec_info_vec, align 8
  %599 = icmp eq ptr %598, null
  br i1 %599, label %603, label %600

600:                                              ; preds = %597
  %601 = load i32, ptr %598, align 8, !tbaa !81
  %602 = add i32 %601, 1
  br label %603

603:                                              ; preds = %600, %597
  %604 = phi i32 [ %602, %600 ], [ 1, %597 ]
  store i32 %604, ptr %591, align 4, !tbaa !46
  %605 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %606 = icmp eq ptr %605, null
  br i1 %606, label %612, label %607

607:                                              ; preds = %603
  %608 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %605, i64 0, i32 1
  %609 = load i32, ptr %608, align 4, !tbaa !116
  %610 = load i32, ptr %605, align 8, !tbaa !81
  %611 = icmp eq i32 %609, %610
  br i1 %611, label %612, label %614

612:                                              ; preds = %607, %603
  %613 = call ptr @vec_heap_p_reserve(ptr noundef %605, i32 noundef 1) #18
  store ptr %613, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %614

614:                                              ; preds = %612, %607
  %615 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %616 = load i32, ptr %615, align 8, !tbaa !81
  %617 = add i32 %616, 1
  store i32 %617, ptr %615, align 8, !tbaa !81
  br label %621

618:                                              ; preds = %589
  %619 = load ptr, ptr @stmt_vec_info_vec, align 8
  %620 = add i32 %592, -1
  br label %621

621:                                              ; preds = %618, %614
  %622 = phi i32 [ %620, %618 ], [ %616, %614 ]
  %623 = phi ptr [ %619, %618 ], [ %615, %614 ]
  %624 = zext i32 %622 to i64
  %625 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %623, i64 0, i32 2, i64 %624
  store ptr %590, ptr %625, align 8, !tbaa !35
  %626 = getelementptr inbounds %struct._stmt_vec_info, ptr %555, i64 0, i32 14
  store ptr %557, ptr %626, align 8, !tbaa !83
  %627 = load i32, ptr %591, align 4, !tbaa !46
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %644, label %629

629:                                              ; preds = %621
  %630 = load ptr, ptr @stmt_vec_info_vec, align 8
  %631 = icmp eq ptr %630, null
  br i1 %631, label %634, label %632

632:                                              ; preds = %629
  %633 = load i32, ptr %630, align 8, !tbaa !81
  br label %634

634:                                              ; preds = %632, %629
  %635 = phi i32 [ %633, %632 ], [ 0, %629 ]
  %636 = icmp ugt i32 %627, %635
  br i1 %636, label %637, label %638

637:                                              ; preds = %634
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %638

638:                                              ; preds = %637, %634
  %639 = load ptr, ptr @stmt_vec_info_vec, align 8
  %640 = add i32 %627, -1
  %641 = zext i32 %640 to i64
  %642 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %639, i64 0, i32 2, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !35
  br label %644

644:                                              ; preds = %638, %621
  %645 = phi ptr [ %643, %638 ], [ null, %621 ]
  %646 = add nuw nsw i32 %556, 1
  %647 = icmp eq i32 %646, %553
  br i1 %647, label %648, label %554, !llvm.loop !231

648:                                              ; preds = %644, %497
  %649 = phi ptr [ %435, %497 ], [ %559, %644 ]
  %650 = phi ptr [ %433, %497 ], [ %557, %644 ]
  br i1 %230, label %714, label %651

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.tree_ssa_name, ptr %249, i64 0, i32 5
  %653 = getelementptr inbounds %struct.tree_ssa_name, ptr %249, i64 0, i32 5, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !159
  %655 = icmp eq ptr %654, %652
  br i1 %655, label %674, label %656

656:                                              ; preds = %651, %668
  %657 = phi ptr [ %672, %668 ], [ %654, %651 ]
  %658 = phi ptr [ %670, %668 ], [ %654, %651 ]
  %659 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %657, i64 0, i32 2
  %660 = load ptr, ptr %659, align 8, !tbaa !46
  %661 = getelementptr inbounds %struct.gimple_statement_base, ptr %660, i64 0, i32 4
  %662 = load ptr, ptr %661, align 8, !tbaa !46
  %663 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %231, ptr noundef %662) #18
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %665, label %668

665:                                              ; preds = %656
  %666 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %657, i64 0, i32 2
  %667 = load ptr, ptr %666, align 8, !tbaa !46
  br label %674

668:                                              ; preds = %656
  %669 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %658, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !159
  %671 = icmp eq ptr %670, %652
  %672 = select i1 %671, ptr null, ptr %670
  %673 = icmp eq ptr %670, %652
  br i1 %673, label %674, label %656, !llvm.loop !232

674:                                              ; preds = %668, %651, %665
  %675 = phi ptr [ %667, %665 ], [ null, %651 ], [ null, %668 ]
  %676 = icmp eq ptr %675, null
  br i1 %676, label %714, label %677

677:                                              ; preds = %674
  %678 = getelementptr inbounds %struct.gimple_statement_base, ptr %675, i64 0, i32 1
  %679 = load i32, ptr %678, align 4, !tbaa !46
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %696, label %681

681:                                              ; preds = %677
  %682 = load ptr, ptr @stmt_vec_info_vec, align 8
  %683 = icmp eq ptr %682, null
  br i1 %683, label %686, label %684

684:                                              ; preds = %681
  %685 = load i32, ptr %682, align 8, !tbaa !81
  br label %686

686:                                              ; preds = %684, %681
  %687 = phi i32 [ %685, %684 ], [ 0, %681 ]
  %688 = icmp ugt i32 %679, %687
  br i1 %688, label %689, label %690

689:                                              ; preds = %686
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %690

690:                                              ; preds = %689, %686
  %691 = load ptr, ptr @stmt_vec_info_vec, align 8
  %692 = add i32 %679, -1
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %691, i64 0, i32 2, i64 %693
  %695 = load ptr, ptr %694, align 8, !tbaa !35
  br label %696

696:                                              ; preds = %690, %677
  %697 = phi ptr [ %695, %690 ], [ null, %677 ]
  %698 = getelementptr inbounds %struct._stmt_vec_info, ptr %697, i64 0, i32 3
  %699 = load i32, ptr %698, align 8, !tbaa !137
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %705, label %701

701:                                              ; preds = %696
  %702 = getelementptr inbounds %struct._stmt_vec_info, ptr %697, i64 0, i32 4
  %703 = load i8, ptr %702, align 4, !tbaa !143
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %706, label %705

705:                                              ; preds = %701, %696
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2627, ptr noundef nonnull @.str.7) #18
  br label %706

706:                                              ; preds = %705, %701
  %707 = getelementptr inbounds %struct._stmt_vec_info, ptr %697, i64 0, i32 6
  store ptr %650, ptr %707, align 8, !tbaa !214
  %708 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %714, label %710

710:                                              ; preds = %706
  %711 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %712 = call i64 @fwrite(ptr nonnull @.str.149, i64 38, i64 1, ptr %711)
  %713 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %713, ptr noundef nonnull %650, i32 noundef 0, i32 noundef 2) #18
  br label %714

714:                                              ; preds = %710, %706, %674, %648
  %715 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %726, label %717

717:                                              ; preds = %714
  %718 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %719 = call i64 @fwrite(ptr nonnull @.str.150, i64 44, i64 1, ptr %718)
  %720 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %720, ptr noundef %394, i32 noundef 0, i32 noundef 2) #18
  %721 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %722 = call i32 @fputc(i32 10, ptr %721)
  %723 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %724 = getelementptr inbounds %struct.tree_ssa_name, ptr %649, i64 0, i32 2
  %725 = load ptr, ptr %724, align 8, !tbaa !46
  call void @print_gimple_stmt(ptr noundef %723, ptr noundef %725, i32 noundef 0, i32 noundef 2) #18
  br label %726

726:                                              ; preds = %714, %717
  %727 = getelementptr inbounds %struct._stmt_vec_info, ptr %157, i64 0, i32 6
  store ptr %394, ptr %727, align 8, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %728 = getelementptr inbounds %struct.tree_ssa_name, ptr %432, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !46
  store ptr %729, ptr %2, align 8, !tbaa !35
  br label %730

730:                                              ; preds = %101, %89, %77, %68, %64, %58, %61, %726
  %731 = phi i8 [ 1, %726 ], [ 0, %61 ], [ 0, %58 ], [ 0, %64 ], [ 0, %68 ], [ 0, %77 ], [ 1, %89 ], [ 1, %101 ]
  ret i8 %731
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vectorizable_live_operation(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @stmt_vec_info_vec, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8, !tbaa !81
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %17 = icmp ugt i32 %8, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @stmt_vec_info_vec, align 8
  %21 = add i32 %8, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %20, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  br label %25

25:                                               ; preds = %3, %19
  %26 = phi ptr [ %24, %19 ], [ null, %3 ]
  %27 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !110
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 4
  %31 = load i8, ptr %30, align 4, !tbaa !143
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4089, ptr noundef nonnull @.str.7) #18
  br label %34

34:                                               ; preds = %25, %33
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %26, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !147
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %178, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %178

42:                                               ; preds = %38
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !161
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %51

51:                                               ; preds = %50, %42
  %52 = getelementptr inbounds i8, ptr %0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 141
  br i1 %56, label %57, label %178

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !94
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !109
  %66 = icmp eq ptr %59, %65
  br i1 %66, label %178, label %67

67:                                               ; preds = %57, %61
  %68 = load i32, ptr %0, align 8
  %69 = trunc i32 %68 to i8
  switch i8 %69, label %72 [
    i8 6, label %70
    i8 1, label %70
    i8 8, label %73
  ]

70:                                               ; preds = %67, %67
  %71 = lshr i32 %68, 16
  br label %73

72:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #18
  br label %73

73:                                               ; preds = %72, %70, %67
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ], [ 59, %67 ]
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !46
  %78 = icmp eq i8 %77, 3
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load i32, ptr %0, align 8
  %81 = and i32 %80, 255
  %82 = add nsw i32 %81, -1
  %83 = icmp ult i32 %82, 9
  tail call void @llvm.assume(i1 %83)
  %84 = zext nneg i32 %81 to i64
  %85 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !50
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !161
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %92

92:                                               ; preds = %91, %79
  %93 = getelementptr inbounds i8, ptr %0, i64 %89
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 65535
  br label %99

99:                                               ; preds = %73, %92
  %100 = phi i32 [ %98, %92 ], [ %74, %73 ]
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !46
  %104 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %101
  %105 = load i8, ptr %104, align 1, !tbaa !46
  %106 = icmp ne i8 %105, 2
  %107 = icmp eq i8 %103, 1
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4107, ptr noundef nonnull @.str.7) #18
  br label %110

110:                                              ; preds = %99, %109
  %111 = icmp ne i8 %105, 1
  %112 = icmp eq i8 %103, 2
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4108, ptr noundef nonnull @.str.7) #18
  br label %115

115:                                              ; preds = %110, %114
  %116 = getelementptr ptr, ptr %0, i64 1
  %117 = icmp eq i8 %103, 0
  br i1 %117, label %178, label %118

118:                                              ; preds = %115
  %119 = icmp eq i8 %105, 3
  %120 = zext i8 %103 to i64
  br label %124

121:                                              ; preds = %174
  %122 = add nuw nsw i64 %125, 1
  %123 = icmp eq i64 %122, %120
  br i1 %123, label %178, label %124, !llvm.loop !233

124:                                              ; preds = %118, %121
  %125 = phi i64 [ 0, %118 ], [ %122, %121 ]
  %126 = load i32, ptr %0, align 8
  %127 = and i32 %126, 255
  br i1 %119, label %128, label %143

128:                                              ; preds = %124
  %129 = add nsw i32 %127, -1
  %130 = icmp ult i32 %129, 9
  call void @llvm.assume(i1 %130)
  %131 = zext nneg i32 %127 to i64
  %132 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !50
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !161
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %139

139:                                              ; preds = %138, %128
  %140 = getelementptr i8, ptr %116, i64 %136
  %141 = load ptr, ptr %140, align 8, !tbaa !35
  %142 = getelementptr inbounds %struct.tree_exp, ptr %141, i64 0, i32 3, i64 %125
  br label %159

143:                                              ; preds = %124
  %144 = add nsw i32 %127, -10
  %145 = icmp ult i32 %144, -9
  br i1 %145, label %162, label %146

146:                                              ; preds = %143
  %147 = zext nneg i32 %127 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !50
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !161
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %155

155:                                              ; preds = %154, %146
  %156 = getelementptr inbounds i8, ptr %0, i64 %152
  %157 = getelementptr ptr, ptr %156, i64 %125
  %158 = getelementptr ptr, ptr %157, i64 1
  br label %159

159:                                              ; preds = %139, %155
  %160 = phi ptr [ %158, %155 ], [ %142, %139 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  br label %162

162:                                              ; preds = %159, %143
  %163 = phi ptr [ null, %143 ], [ %161, %159 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %162
  %166 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %163, ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #18
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %173 = call i64 @fwrite(ptr nonnull @.str.79, i64 15, i64 1, ptr %172)
  br label %178

174:                                              ; preds = %165, %162
  %175 = load i32, ptr %6, align 4
  %176 = add i32 %175, -3
  %177 = icmp ult i32 %176, -2
  br i1 %177, label %178, label %121

178:                                              ; preds = %174, %121, %115, %168, %171, %61, %51, %38, %34
  %179 = phi i8 [ 0, %34 ], [ 0, %38 ], [ 0, %51 ], [ 0, %61 ], [ 0, %171 ], [ 0, %168 ], [ 1, %115 ], [ 1, %121 ], [ 0, %174 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %179
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_transform_loop(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !35
  %15 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %19 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 26, i64 1, ptr %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !123
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @vect_do_peeling_for_alignment(ptr noundef nonnull %0) #18
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = tail call i32 @host_integerp(ptr noundef %27, i32 noundef 0) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !97
  %32 = getelementptr inbounds %struct.tree_int_cst, ptr %31, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !46
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @host_integerp(ptr noundef %31, i32 noundef 0) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %26, align 8, !tbaa !97
  %40 = getelementptr inbounds %struct.tree_int_cst, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !46
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = sext i32 %14 to i64
  %45 = urem i64 %41, %44
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %35, %38, %43, %30, %25
  %48 = phi i1 [ true, %30 ], [ true, %25 ], [ false, %38 ], [ false, %35 ], [ %46, %43 ]
  %49 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %50, align 8, !tbaa !163
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %52
  %56 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !129
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %57, align 8, !tbaa !165
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %52
  %63 = xor i1 %48, true
  %64 = zext i1 %63 to i8
  call void @vect_loop_versioning(ptr noundef nonnull %0, i8 noundef zeroext %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %65

65:                                               ; preds = %55, %62, %59
  br i1 %48, label %66, label %69

66:                                               ; preds = %65
  %67 = load ptr, ptr %5, align 8, !tbaa !35
  %68 = load ptr, ptr %6, align 8, !tbaa !35
  call void @vect_do_peeling_for_loop_bound(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %67, ptr noundef %68) #18
  br label %78

69:                                               ; preds = %65
  %70 = load ptr, ptr %26, align 8, !tbaa !97
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.tree_int_cst, ptr %70, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !46
  %75 = sext i32 %14 to i64
  %76 = udiv i64 %74, %75
  %77 = call ptr @build_int_cst(ptr noundef %72, i64 noundef %76) #18
  store ptr %77, ptr %3, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %69, %66
  %79 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !95
  %81 = load ptr, ptr %80, align 8, !tbaa !98
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %81, align 8, !tbaa !99
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %87, label %86

86:                                               ; preds = %78, %83
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4235, ptr noundef nonnull @.str.7) #18
  br label %87

87:                                               ; preds = %83, %86
  %88 = call ptr @loop_preheader_edge(ptr noundef %8) #18
  %89 = call ptr @split_edge(ptr noundef %88) #18
  %90 = icmp sgt i32 %12, 0
  br i1 %90, label %91, label %350

91:                                               ; preds = %87
  %92 = sext i32 %14 to i64
  %93 = getelementptr inbounds i8, ptr %2, i64 8
  %94 = getelementptr inbounds i8, ptr %2, i64 16
  %95 = zext nneg i32 %12 to i64
  br label %96

96:                                               ; preds = %91, %346
  %97 = phi i64 [ 0, %91 ], [ %348, %346 ]
  %98 = phi i8 [ 0, %91 ], [ %347, %346 ]
  %99 = getelementptr inbounds ptr, ptr %10, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %100) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  %101 = load ptr, ptr %2, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %182, label %103

103:                                              ; preds = %96, %177
  %104 = phi ptr [ %180, %177 ], [ %101, %96 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %110 = call i64 @fwrite(ptr nonnull @.str.81, i64 24, i64 1, ptr %109)
  %111 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %111, ptr noundef %105, i32 noundef 0, i32 noundef 2) #18
  br label %112

112:                                              ; preds = %108, %103
  %113 = getelementptr inbounds %struct.gimple_statement_base, ptr %105, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !46
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @stmt_vec_info_vec, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !81
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ %120, %119 ], [ 0, %116 ]
  %123 = icmp ugt i32 %114, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %125

125:                                              ; preds = %124, %121
  %126 = load ptr, ptr @stmt_vec_info_vec, align 8
  %127 = add i32 %114, -1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %126, i64 0, i32 2, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  br label %131

131:                                              ; preds = %112, %125
  %132 = phi ptr [ %130, %125 ], [ null, %112 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %177, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 4
  %139 = load i8, ptr %138, align 4, !tbaa !143
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  call fastcc void @vect_loop_kill_debug_uses(ptr noundef %8, ptr noundef %105)
  br label %142

142:                                              ; preds = %141, %137, %134
  %143 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 3
  %144 = load i32, ptr %143, align 8, !tbaa !137
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 4
  %148 = load i8, ptr %147, align 4, !tbaa !143
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %177, label %150

150:                                              ; preds = %146, %142
  %151 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !138
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 1023
  %156 = zext nneg i32 %155 to i64
  %157 = shl nuw i64 1, %156
  %158 = icmp eq i64 %157, %92
  br i1 %158, label %165, label %159

159:                                              ; preds = %150
  %160 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %164 = call i64 @fwrite(ptr nonnull @.str.82, i64 15, i64 1, ptr %163)
  br label %165

165:                                              ; preds = %162, %159, %150
  %166 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 16
  %167 = load i32, ptr %166, align 8, !tbaa !147
  %168 = icmp eq i32 %167, 4
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %174 = call i64 @fwrite(ptr nonnull @.str.83, i64 14, i64 1, ptr %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = call zeroext i8 @vect_transform_stmt(ptr noundef %105, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #18
  br label %177

177:                                              ; preds = %146, %165, %175, %131
  %178 = load ptr, ptr %2, align 8, !tbaa !66
  %179 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !68
  store ptr %180, ptr %2, align 8, !tbaa !66
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %103, !llvm.loop !234

182:                                              ; preds = %177, %96
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 13
  %184 = load i32, ptr %183, align 8, !tbaa !70, !noalias !235
  %185 = and i32 %184, 512
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !46, !noalias !235
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = load ptr, ptr %189, align 8, !tbaa !75, !noalias !235
  br label %193

193:                                              ; preds = %191, %187, %182
  %194 = phi ptr [ %192, %191 ], [ null, %187 ], [ null, %182 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr %194, align 8, !tbaa !77, !noalias !235
  br label %198

198:                                              ; preds = %193, %196
  %199 = phi ptr [ %197, %196 ], [ null, %193 ]
  store ptr %199, ptr %2, align 8, !tbaa.struct !63
  store ptr %194, ptr %93, align 8, !tbaa.struct !79
  store ptr %100, ptr %94, align 8, !tbaa.struct !80
  %200 = icmp eq ptr %199, null
  br i1 %200, label %346, label %201

201:                                              ; preds = %198, %342
  %202 = phi ptr [ %344, %342 ], [ %199, %198 ]
  %203 = phi i8 [ %343, %342 ], [ %98, %198 ]
  %204 = load ptr, ptr %202, align 8, !tbaa !64
  %205 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %209 = call i64 @fwrite(ptr nonnull @.str.84, i64 30, i64 1, ptr %208)
  %210 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %210, ptr noundef %204, i32 noundef 0, i32 noundef 2) #18
  br label %211

211:                                              ; preds = %207, %201
  %212 = getelementptr inbounds %struct.gimple_statement_base, ptr %204, i64 0, i32 1
  %213 = load i32, ptr %212, align 4, !tbaa !46
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %230, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr @stmt_vec_info_vec, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = load i32, ptr %216, align 8, !tbaa !81
  br label %220

220:                                              ; preds = %218, %215
  %221 = phi i32 [ %219, %218 ], [ 0, %215 ]
  %222 = icmp ugt i32 %213, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %224

224:                                              ; preds = %223, %220
  %225 = load ptr, ptr @stmt_vec_info_vec, align 8
  %226 = add i32 %213, -1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %225, i64 0, i32 2, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !35
  br label %230

230:                                              ; preds = %211, %224
  %231 = phi ptr [ %229, %224 ], [ null, %211 ]
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load ptr, ptr %2, align 8, !tbaa !66
  %235 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !68
  store ptr %236, ptr %2, align 8, !tbaa !66
  br label %342, !llvm.loop !238

237:                                              ; preds = %230
  %238 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._stmt_vec_info, ptr %231, i64 0, i32 4
  %242 = load i8, ptr %241, align 4, !tbaa !143
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  call fastcc void @vect_loop_kill_debug_uses(ptr noundef %8, ptr noundef %204)
  br label %245

245:                                              ; preds = %244, %240, %237
  %246 = getelementptr inbounds %struct._stmt_vec_info, ptr %231, i64 0, i32 3
  %247 = load i32, ptr %246, align 8, !tbaa !137
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct._stmt_vec_info, ptr %231, i64 0, i32 4
  %251 = load i8, ptr %250, align 4, !tbaa !143
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load ptr, ptr %2, align 8, !tbaa !66
  %255 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !68
  store ptr %256, ptr %2, align 8, !tbaa !66
  br label %342, !llvm.loop !238

257:                                              ; preds = %249, %245
  %258 = getelementptr inbounds %struct._stmt_vec_info, ptr %231, i64 0, i32 5
  %259 = load ptr, ptr %258, align 8, !tbaa !138
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4314, ptr noundef nonnull @.str.7) #18
  br label %262

262:                                              ; preds = %257, %261
  %263 = getelementptr inbounds %struct._stmt_vec_info, ptr %231, i64 0, i32 25
  %264 = load i32, ptr %263, align 4, !tbaa !153
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %262
  %267 = load ptr, ptr %258, align 8, !tbaa !138
  %268 = getelementptr inbounds %struct.tree_type, ptr %267, i64 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 1023
  %271 = zext nneg i32 %270 to i64
  %272 = shl nuw i64 1, %271
  %273 = trunc i64 %272 to i32
  %274 = icmp eq i32 %14, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %266
  %276 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %280 = call i64 @fwrite(ptr nonnull @.str.82, i64 15, i64 1, ptr %279)
  br label %281

281:                                              ; preds = %278, %275, %266, %262
  %282 = load i32, ptr %263, align 4, !tbaa !153
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %322, label %284

284:                                              ; preds = %281
  %285 = icmp eq i8 %203, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %284
  %287 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %291 = call i64 @fwrite(ptr nonnull @.str.85, i64 32, i64 1, ptr %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = call zeroext i8 @vect_schedule_slp(ptr noundef nonnull %0, ptr noundef null) #18
  br label %294

294:                                              ; preds = %292, %284
  %295 = load i32, ptr %212, align 4, !tbaa !46
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %312, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr @stmt_vec_info_vec, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = load i32, ptr %298, align 8, !tbaa !81
  br label %302

302:                                              ; preds = %300, %297
  %303 = phi i32 [ %301, %300 ], [ 0, %297 ]
  %304 = icmp ugt i32 %295, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %306

306:                                              ; preds = %305, %302
  %307 = load ptr, ptr @stmt_vec_info_vec, align 8
  %308 = add i32 %295, -1
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %307, i64 0, i32 2, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !35
  br label %312

312:                                              ; preds = %294, %306
  %313 = phi ptr [ %311, %306 ], [ null, %294 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %318, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %263, align 4, !tbaa !153
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %322

318:                                              ; preds = %315, %312
  %319 = load ptr, ptr %2, align 8, !tbaa !66
  %320 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %319, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !68
  store ptr %321, ptr %2, align 8, !tbaa !66
  br label %342, !llvm.loop !238

322:                                              ; preds = %315, %281
  %323 = phi i8 [ 1, %315 ], [ %203, %281 ]
  %324 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %328 = call i64 @fwrite(ptr nonnull @.str.86, i64 20, i64 1, ptr %327)
  br label %329

329:                                              ; preds = %326, %322
  store i8 0, ptr %4, align 1, !tbaa !46
  %330 = call zeroext i8 @vect_transform_stmt(ptr noundef %204, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #18
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct._stmt_vec_info, ptr %231, i64 0, i32 17
  %334 = load ptr, ptr %333, align 8, !tbaa !239
  %335 = icmp eq ptr %334, null
  br i1 %335, label %337, label %336

336:                                              ; preds = %332
  call void @vect_remove_stores(ptr noundef nonnull %334) #18
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #18
  br label %342, !llvm.loop !238

337:                                              ; preds = %332
  call void @free_stmt_vec_info(ptr noundef %204) #18
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #18
  br label %342, !llvm.loop !238

338:                                              ; preds = %329
  %339 = load ptr, ptr %2, align 8, !tbaa !66
  %340 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !68
  store ptr %341, ptr %2, align 8, !tbaa !66
  br label %342

342:                                              ; preds = %338, %337, %336, %318, %253, %233
  %343 = phi i8 [ 1, %318 ], [ %323, %336 ], [ %323, %337 ], [ %323, %338 ], [ %203, %253 ], [ %203, %233 ]
  %344 = load ptr, ptr %2, align 8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %201

346:                                              ; preds = %342, %198
  %347 = phi i8 [ %98, %198 ], [ %343, %342 ]
  %348 = add nuw nsw i64 %97, 1
  %349 = icmp eq i64 %348, %95
  br i1 %349, label %350, label %96, !llvm.loop !240

350:                                              ; preds = %346, %87
  %351 = load ptr, ptr %3, align 8, !tbaa !35
  call void @slpeel_make_loop_iterate_ntimes(ptr noundef %8, ptr noundef %351) #18
  call void @update_ssa(i32 noundef 2048) #18
  %352 = call zeroext i8 @vect_print_dump_info(i32 noundef 1) #18
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %356 = call i64 @fwrite(ptr nonnull @.str.87, i64 16, i64 1, ptr %355)
  br label %357

357:                                              ; preds = %354, %350
  %358 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 8
  %359 = load ptr, ptr %358, align 8, !tbaa !94
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %357
  %362 = call zeroext i8 @vect_print_dump_info(i32 noundef 1) #18
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %366 = call i64 @fwrite(ptr nonnull @.str.88, i64 22, i64 1, ptr %365)
  br label %367

367:                                              ; preds = %364, %361, %357
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

declare void @vect_do_peeling_for_alignment(ptr noundef) local_unnamed_addr #3

declare void @vect_loop_versioning(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_do_peeling_for_loop_bound(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_loop_kill_debug_uses(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = tail call zeroext i8 @is_gimple_reg(ptr noundef %9) #18
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  %13 = select i1 %11, ptr null, ptr %8
  br label %40

14:                                               ; preds = %2
  %15 = add nsw i32 %5, -10
  %16 = icmp ult i32 %15, -9
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ null, %14 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = and i32 %4, 254
  %25 = add nsw i32 %24, -10
  %26 = icmp ult i32 %25, -4
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %21, align 8, !tbaa !241
  br label %33

33:                                               ; preds = %31, %27, %23, %20
  %34 = phi ptr [ %21, %20 ], [ %21, %23 ], [ %21, %27 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.def_optype_d, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !243
  %39 = load ptr, ptr %34, align 8, !tbaa !241
  br label %40

40:                                               ; preds = %36, %33, %7
  %41 = phi ptr [ null, %7 ], [ %39, %36 ], [ %34, %33 ]
  %42 = phi i8 [ %12, %7 ], [ 0, %36 ], [ 1, %33 ]
  %43 = phi ptr [ %13, %7 ], [ %38, %36 ], [ null, %33 ]
  %44 = icmp eq i8 %42, 0
  br i1 %44, label %45, label %147

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  %47 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %48 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  br label %49

49:                                               ; preds = %45, %142
  %50 = phi ptr [ %43, %45 ], [ %145, %142 ]
  %51 = phi i8 [ %42, %45 ], [ %144, %142 ]
  %52 = phi ptr [ %41, %45 ], [ %143, %142 ]
  %53 = load ptr, ptr %50, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %53, i64 0, i32 5
  store ptr %54, ptr %46, align 8, !tbaa !210
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %53, i64 0, i32 5, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  store ptr %56, ptr %3, align 8, !tbaa !212
  %57 = icmp eq ptr %56, %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %47, i8 0, i64 40, i1 false)
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  call fastcc void @link_use_stmts_after(ptr noundef %56, ptr noundef nonnull %3)
  %59 = load ptr, ptr %3, align 8, !tbaa !212
  %60 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  br label %62

62:                                               ; preds = %49, %58
  %63 = phi ptr [ %61, %58 ], [ null, %49 ]
  %64 = load ptr, ptr %3, align 8, !tbaa !212
  %65 = load ptr, ptr %46, align 8, !tbaa !210
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %136, label %67

67:                                               ; preds = %62, %131
  %68 = phi ptr [ %132, %131 ], [ %63, %62 ]
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %68, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %74) #18
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %72
  %78 = load i32, ptr %68, align 8
  %79 = and i32 %78, -65281
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %86 = call i64 @fwrite(ptr nonnull @.str.151, i64 17, i64 1, ptr %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, ptr %68, align 8
  %89 = and i32 %88, 255
  %90 = add nsw i32 %89, -10
  %91 = icmp ult i32 %90, -9
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.gimple_statement_base, ptr %68, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !46
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %87
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #18
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32, ptr %68, align 8
  %99 = and i32 %98, 255
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !161
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %108

108:                                              ; preds = %97, %107
  %109 = getelementptr inbounds i8, ptr %68, i64 %105
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  store ptr null, ptr %110, align 8, !tbaa !35
  %111 = load i32, ptr %68, align 8
  %112 = and i32 %111, 255
  %113 = add nsw i32 %112, -10
  %114 = icmp ult i32 %113, -9
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  call void @gimple_set_modified(ptr noundef nonnull %68, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %68) #18
  br label %117

116:                                              ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4168, ptr noundef nonnull @.str.7) #18
  br label %117

117:                                              ; preds = %115, %108, %72, %116, %67
  %118 = load ptr, ptr %48, align 8, !tbaa !159
  store ptr %118, ptr %3, align 8, !tbaa !212
  %119 = load ptr, ptr %46, align 8, !tbaa !210
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load ptr, ptr %47, align 8, !tbaa !199
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %122, i64 0, i32 1
  store ptr %118, ptr %125, align 8, !tbaa !159
  %126 = load ptr, ptr %48, align 8, !tbaa !159
  store ptr %122, ptr %126, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  br label %131

127:                                              ; preds = %117
  call fastcc void @link_use_stmts_after(ptr noundef %118, ptr noundef nonnull %3)
  %128 = load ptr, ptr %3, align 8, !tbaa !212
  %129 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  br label %131

131:                                              ; preds = %121, %124, %127
  %132 = phi ptr [ %130, %127 ], [ null, %124 ], [ null, %121 ]
  %133 = load ptr, ptr %3, align 8, !tbaa !212
  %134 = load ptr, ptr %46, align 8, !tbaa !210
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %136, label %67, !llvm.loop !244

136:                                              ; preds = %131, %62
  %137 = icmp eq ptr %52, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.def_optype_d, ptr %52, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !243
  %141 = load ptr, ptr %52, align 8, !tbaa !241
  br label %142

142:                                              ; preds = %136, %138
  %143 = phi ptr [ %141, %138 ], [ %52, %136 ]
  %144 = phi i8 [ %51, %138 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %138 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %49, label %147, !llvm.loop !245

147:                                              ; preds = %142, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret void
}

declare zeroext i8 @vect_transform_stmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_schedule_slp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_remove_stores(ptr noundef) local_unnamed_addr #3

declare void @slpeel_make_loop_iterate_ntimes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare ptr @number_of_exit_cond_executions(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_condition(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @bb_in_loop_p(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %0) #18
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_analyze_scalar_cycles_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %8 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  %9 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %13 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 34, i64 1, ptr %12)
  br label %14

14:                                               ; preds = %11, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %7) #18
  %15 = load ptr, ptr %5, align 8, !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %94, %14
  %18 = phi ptr [ %8, %14 ], [ %95, %94 ]
  %19 = icmp eq ptr %18, null
  br label %99

20:                                               ; preds = %14, %94
  %21 = phi ptr [ %97, %94 ], [ %15, %14 ]
  %22 = phi ptr [ %95, %94 ], [ %8, %14 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr @stmt_vec_info_vec, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %30, align 8, !tbaa !81
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ 0, %29 ]
  %36 = icmp ugt i32 %27, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %38

38:                                               ; preds = %37, %34
  %39 = load ptr, ptr @stmt_vec_info_vec, align 8
  %40 = add i32 %27, -1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %39, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %20, %38
  %45 = phi ptr [ %43, %38 ], [ null, %20 ]
  %46 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %50 = call i64 @fwrite(ptr nonnull @.str.96, i64 13, i64 1, ptr %49)
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %51, ptr noundef %23, i32 noundef 0, i32 noundef 2) #18
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = call zeroext i8 @is_gimple_reg(ptr noundef %54) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %94, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct._stmt_vec_info, ptr %45, i64 0, i32 16
  store i32 8, ptr %58, align 8, !tbaa !147
  %59 = call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef %25) #18
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %66 = call i64 @fwrite(ptr nonnull @.str.97, i64 24, i64 1, ptr %65)
  %67 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %67, ptr noundef nonnull %59, i32 noundef 2) #18
  br label %68

68:                                               ; preds = %61, %64
  %69 = load i32, ptr %1, align 8, !tbaa !227
  %70 = call fastcc zeroext i8 @vect_is_simple_iv_evolution(i32 noundef %69, ptr noundef nonnull %59, ptr noundef nonnull %3, ptr noundef nonnull %3), !range !148
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %57, %68
  %73 = icmp eq ptr %22, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.VEC_gimple_base, ptr %22, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !246
  %77 = load i32, ptr %22, align 8, !tbaa !163
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72, %74
  %80 = call ptr @vec_heap_p_reserve(ptr noundef %22, i32 noundef 1) #18
  br label %81

81:                                               ; preds = %74, %79
  %82 = phi ptr [ %80, %79 ], [ %22, %74 ]
  %83 = load i32, ptr %82, align 8, !tbaa !163
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8, !tbaa !163
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds %struct.VEC_gimple_base, ptr %82, i64 0, i32 2, i64 %85
  store ptr %23, ptr %86, align 8, !tbaa !35
  br label %94

87:                                               ; preds = %68
  %88 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %92 = call i64 @fwrite(ptr nonnull @.str.98, i64 19, i64 1, ptr %91)
  br label %93

93:                                               ; preds = %90, %87
  store i32 4, ptr %58, align 8, !tbaa !147
  br label %94

94:                                               ; preds = %52, %93, %81
  %95 = phi ptr [ %22, %52 ], [ %82, %81 ], [ %22, %93 ]
  %96 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !68
  %98 = icmp eq ptr %97, null
  br i1 %98, label %17, label %20, !llvm.loop !247

99:                                               ; preds = %234, %17
  br i1 %19, label %102, label %100

100:                                              ; preds = %99
  %101 = load i32, ptr %18, align 8, !tbaa !163
  br label %102

102:                                              ; preds = %99, %100
  %103 = phi i32 [ %101, %100 ], [ 0, %99 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %238, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %18, align 8, !tbaa !163
  %107 = add i32 %106, -1
  store i32 %107, ptr %18, align 8, !tbaa !163
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.VEC_gimple_base, ptr %18, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = getelementptr inbounds %struct.gimple_statement_phi, ptr %110, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.gimple_statement_base, ptr %110, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !46
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %105
  %117 = load ptr, ptr @stmt_vec_info_vec, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !81
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ %120, %119 ], [ 0, %116 ]
  %123 = icmp ugt i32 %114, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %125

125:                                              ; preds = %124, %121
  %126 = load ptr, ptr @stmt_vec_info_vec, align 8
  %127 = add i32 %114, -1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %126, i64 0, i32 2, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  br label %131

131:                                              ; preds = %105, %125
  %132 = phi ptr [ %130, %125 ], [ null, %105 ]
  %133 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %137 = call i64 @fwrite(ptr nonnull @.str.96, i64 13, i64 1, ptr %136)
  %138 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %138, ptr noundef %110, i32 noundef 0, i32 noundef 2) #18
  br label %139

139:                                              ; preds = %135, %131
  %140 = getelementptr inbounds %struct.tree_ssa_name, ptr %112, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = call zeroext i8 @is_gimple_reg(ptr noundef %141) #18
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 476, ptr noundef nonnull @.str.7) #18
  br label %145

145:                                              ; preds = %139, %144
  %146 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 16
  %147 = load i32, ptr %146, align 8, !tbaa !147
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 477, ptr noundef nonnull @.str.7) #18
  br label %150

150:                                              ; preds = %145, %149
  %151 = load ptr, ptr %0, align 8, !tbaa !54
  %152 = icmp eq ptr %151, %1
  %153 = zext i1 %152 to i8
  %154 = call ptr @vect_is_simple_reduction(ptr noundef nonnull %0, ptr noundef %110, i8 noundef zeroext %153, ptr noundef nonnull %4)
  %155 = icmp eq ptr %154, null
  br i1 %155, label %231, label %156

156:                                              ; preds = %150
  %157 = load i8, ptr %4, align 1, !tbaa !46
  %158 = icmp eq i8 %157, 0
  %159 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %160 = icmp eq i8 %159, 0
  br i1 %158, label %184, label %161

161:                                              ; preds = %156
  br i1 %160, label %165, label %162

162:                                              ; preds = %161
  %163 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %164 = call i64 @fwrite(ptr nonnull @.str.99, i64 26, i64 1, ptr %163)
  br label %165

165:                                              ; preds = %162, %161
  store i32 6, ptr %146, align 8, !tbaa !147
  %166 = getelementptr inbounds %struct.gimple_statement_base, ptr %154, i64 0, i32 1
  %167 = load i32, ptr %166, align 4, !tbaa !46
  %168 = icmp ne i32 %167, 0
  call void @llvm.assume(i1 %168)
  %169 = load ptr, ptr @stmt_vec_info_vec, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = load i32, ptr %169, align 8, !tbaa !81
  br label %173

173:                                              ; preds = %171, %165
  %174 = phi i32 [ %172, %171 ], [ 0, %165 ]
  %175 = icmp ugt i32 %167, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %177

177:                                              ; preds = %176, %173
  %178 = load ptr, ptr @stmt_vec_info_vec, align 8
  %179 = add i32 %167, -1
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %178, i64 0, i32 2, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !35
  %183 = getelementptr inbounds %struct._stmt_vec_info, ptr %182, i64 0, i32 16
  store i32 6, ptr %183, align 8, !tbaa !147
  br label %234

184:                                              ; preds = %156
  br i1 %152, label %208, label %185

185:                                              ; preds = %184
  br i1 %160, label %189, label %186

186:                                              ; preds = %185
  %187 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %188 = call i64 @fwrite(ptr nonnull @.str.100, i64 35, i64 1, ptr %187)
  br label %189

189:                                              ; preds = %186, %185
  store i32 7, ptr %146, align 8, !tbaa !147
  %190 = getelementptr inbounds %struct.gimple_statement_base, ptr %154, i64 0, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !46
  %192 = icmp ne i32 %191, 0
  call void @llvm.assume(i1 %192)
  %193 = load ptr, ptr @stmt_vec_info_vec, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = load i32, ptr %193, align 8, !tbaa !81
  br label %197

197:                                              ; preds = %195, %189
  %198 = phi i32 [ %196, %195 ], [ 0, %189 ]
  %199 = icmp ugt i32 %191, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %201

201:                                              ; preds = %200, %197
  %202 = load ptr, ptr @stmt_vec_info_vec, align 8
  %203 = add i32 %191, -1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %202, i64 0, i32 2, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !35
  %207 = getelementptr inbounds %struct._stmt_vec_info, ptr %206, i64 0, i32 16
  store i32 7, ptr %207, align 8, !tbaa !147
  br label %234

208:                                              ; preds = %184
  br i1 %160, label %212, label %209

209:                                              ; preds = %208
  %210 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %211 = call i64 @fwrite(ptr nonnull @.str.101, i64 19, i64 1, ptr %210)
  br label %212

212:                                              ; preds = %209, %208
  store i32 5, ptr %146, align 8, !tbaa !147
  %213 = getelementptr inbounds %struct.gimple_statement_base, ptr %154, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !46
  %215 = icmp ne i32 %214, 0
  call void @llvm.assume(i1 %215)
  %216 = load ptr, ptr @stmt_vec_info_vec, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = load i32, ptr %216, align 8, !tbaa !81
  br label %220

220:                                              ; preds = %218, %212
  %221 = phi i32 [ %219, %218 ], [ 0, %212 ]
  %222 = icmp ugt i32 %214, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #18
  br label %224

224:                                              ; preds = %223, %220
  %225 = load ptr, ptr @stmt_vec_info_vec, align 8
  %226 = add i32 %214, -1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %225, i64 0, i32 2, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !35
  %230 = getelementptr inbounds %struct._stmt_vec_info, ptr %229, i64 0, i32 16
  store i32 5, ptr %230, align 8, !tbaa !147
  br label %234

231:                                              ; preds = %150
  %232 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231, %235, %177, %224, %201
  br label %99, !llvm.loop !248

235:                                              ; preds = %231
  %236 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %237 = call i64 @fwrite(ptr nonnull @.str.102, i64 30, i64 1, ptr %236)
  br label %234

238:                                              ; preds = %102
  br i1 %19, label %240, label %239

239:                                              ; preds = %238
  call void @free(ptr noundef %18)
  br label %240

240:                                              ; preds = %238, %239
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_is_simple_iv_evolution(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !34 {
  %5 = tail call ptr @evolution_part_in_loop_num(ptr noundef %1, i32 noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 146
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %13 = icmp ne ptr %12, %5
  %14 = load ptr, ptr @chrec_known, align 8
  %15 = icmp ne ptr %14, %5
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = tail call ptr @initial_condition_in_loop_num(ptr noundef %1, i32 noundef %0) #18
  %19 = tail call ptr @unshare_expr(ptr noundef %18) #18
  %20 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %24 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 6, i64 1, ptr %23)
  %25 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 2) #18
  %26 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %27 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 9, i64 1, ptr %26)
  %28 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %28, ptr noundef %19, i32 noundef 2) #18
  br label %29

29:                                               ; preds = %22, %17
  store ptr %19, ptr %2, align 8, !tbaa !35
  store ptr %5, ptr %3, align 8, !tbaa !35
  %30 = load i64, ptr %5, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 23
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %38 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 13, i64 1, ptr %37)
  br label %39

39:                                               ; preds = %7, %29, %33, %36, %11, %4
  %40 = phi i8 [ 0, %4 ], [ 0, %11 ], [ 0, %36 ], [ 0, %33 ], [ 1, %29 ], [ 0, %7 ]
  ret i8 %40
}

declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !34 {
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
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !161
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !46
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
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !161
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
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
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !161
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #18
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #18
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  ret ptr %78
}

declare ptr @vect_get_smallest_scalar_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @least_common_multiple(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @vect_update_slp_costs_according_to_vf(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_can_advance_ivs_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vect_init_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #18
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #18
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !157
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !159
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !199
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !159
  %56 = load ptr, ptr %53, align 8, !tbaa !159
  store ptr %50, ptr %56, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !199
  %58 = load ptr, ptr %46, align 8, !tbaa !159
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !159
  %60 = load ptr, ptr %46, align 8, !tbaa !159
  store ptr %35, ptr %60, align 8, !tbaa !199
  store ptr %35, ptr %46, align 8, !tbaa !159
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !46
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #18
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !249

77:                                               ; preds = %2
  br i1 %9, label %147, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !250
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !250
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !157
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !159
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !199
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !159
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !159
  %131 = load ptr, ptr %128, align 8, !tbaa !159
  store ptr %125, ptr %131, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !199
  %133 = load ptr, ptr %121, align 8, !tbaa !159
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !159
  %135 = load ptr, ptr %121, align 8, !tbaa !159
  store ptr %110, ptr %135, align 8, !tbaa !199
  store ptr %110, ptr %121, align 8, !tbaa !159
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !250
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !252

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !253
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !157
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !159
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !199
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !159
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !159
  %183 = load ptr, ptr %180, align 8, !tbaa !159
  store ptr %177, ptr %183, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !199
  %185 = load ptr, ptr %173, align 8, !tbaa !159
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !159
  %187 = load ptr, ptr %173, align 8, !tbaa !159
  store ptr %163, ptr %187, align 8, !tbaa !199
  store ptr %163, ptr %173, align 8, !tbaa !159
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !199
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !159
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !159
  %197 = load ptr, ptr %194, align 8, !tbaa !159
  store ptr %191, ptr %197, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !199
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !159
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !159
  %202 = load ptr, ptr %199, align 8, !tbaa !159
  store ptr %190, ptr %202, align 8, !tbaa !199
  store ptr %190, ptr %199, align 8, !tbaa !159
  ret void
}

declare ptr @vect_get_new_vect_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

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
!55 = !{!"_loop_vec_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !36, i64 104, !36, i64 112, !41, i64 120}
!56 = !{!55, !36, i64 8}
!57 = !{!58, !41, i64 36}
!58 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !59, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !60, i64 80, !60, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!59 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!60 = !{!"", !42, i64 0, !42, i64 8}
!61 = !{!55, !36, i64 64}
!62 = !{!55, !36, i64 72}
!63 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!64 = !{!65, !36, i64 0}
!65 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!66 = !{!67, !36, i64 0}
!67 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!68 = !{!65, !36, i64 16}
!69 = distinct !{!69, !52, !53}
!70 = !{!71, !41, i64 96}
!71 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!72 = !{!73}
!73 = distinct !{!73, !74, !"gsi_start_bb: argument 0"}
!74 = distinct !{!74, !"gsi_start_bb"}
!75 = !{!76, !36, i64 0}
!76 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!77 = !{!78, !36, i64 0}
!78 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!79 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!80 = !{i64 0, i64 8, !35}
!81 = !{!82, !41, i64 0}
!82 = !{!"VEC_vec_void_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!83 = !{!84, !36, i64 104}
!84 = !{!"_stmt_vec_info", !41, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !36, i64 104, !36, i64 112, !41, i64 120, !36, i64 128, !36, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !36, i64 160, !37, i64 168, !85, i64 172, !41, i64 180, !36, i64 184}
!85 = !{!"", !41, i64 0, !41, i64 4}
!86 = !{!84, !37, i64 96}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = !{!55, !36, i64 112}
!90 = !{!91, !41, i64 0}
!91 = !{!"VEC_slp_instance_base", !41, i64 0, !41, i64 4, !37, i64 8}
!92 = distinct !{!92, !52, !53}
!93 = !{!58, !36, i64 64}
!94 = !{!58, !36, i64 48}
!95 = !{!58, !36, i64 8}
!96 = !{!58, !36, i64 56}
!97 = !{!55, !36, i64 16}
!98 = !{!71, !36, i64 0}
!99 = !{!100, !41, i64 0}
!100 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!101 = !{!102, !36, i64 0}
!102 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!103 = !{!58, !36, i64 16}
!104 = !{!102, !36, i64 8}
!105 = !{!76, !36, i64 8}
!106 = !{!102, !41, i64 48}
!107 = !{!55, !36, i64 24}
!108 = !{!84, !41, i64 0}
!109 = !{!71, !36, i64 24}
!110 = !{!84, !36, i64 16}
!111 = distinct !{!111, !52, !53}
!112 = !{!113}
!113 = distinct !{!113, !114, !"gsi_start_bb: argument 0"}
!114 = distinct !{!114, !"gsi_start_bb"}
!115 = distinct !{!115, !52, !53}
!116 = !{!82, !41, i64 4}
!117 = distinct !{!117, !52, !53}
!118 = !{!119}
!119 = distinct !{!119, !120, !"gsi_start_bb: argument 0"}
!120 = distinct !{!120, !"gsi_start_bb"}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = !{!55, !41, i64 56}
!124 = !{!55, !41, i64 40}
!125 = !{!55, !36, i64 48}
!126 = !{!127, !41, i64 8}
!127 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!128 = !{!55, !36, i64 88}
!129 = !{!55, !36, i64 80}
!130 = !{!55, !36, i64 104}
!131 = !{!55, !41, i64 120}
!132 = !{!58, !36, i64 40}
!133 = !{!134, !41, i64 0}
!134 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!135 = !{!55, !37, i64 36}
!136 = distinct !{!136, !52, !53}
!137 = !{!84, !41, i64 24}
!138 = !{!84, !36, i64 32}
!139 = distinct !{!139, !52, !53}
!140 = !{!141}
!141 = distinct !{!141, !142, !"gsi_start_bb: argument 0"}
!142 = distinct !{!142, !"gsi_start_bb"}
!143 = !{!84, !37, i64 28}
!144 = !{!84, !36, i64 48}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = !{!84, !41, i64 120}
!148 = !{i8 0, i8 2}
!149 = distinct !{!149, !52, !53}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_start_bb: argument 0"}
!152 = distinct !{!152, !"gsi_start_bb"}
!153 = !{!84, !41, i64 180}
!154 = distinct !{!154, !52, !53}
!155 = !{!55, !41, i64 32}
!156 = !{!102, !41, i64 44}
!157 = !{!158, !36, i64 24}
!158 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!159 = !{!158, !36, i64 8}
!160 = distinct !{!160, !52, !53}
!161 = !{!42, !42, i64 0}
!162 = distinct !{!162, !52, !53}
!163 = !{!164, !41, i64 0}
!164 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !37, i64 8}
!165 = !{!166, !41, i64 0}
!166 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!167 = !{!168, !41, i64 408}
!168 = !{!"processor_costs", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !41, i64 36, !37, i64 40, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 92, !41, i64 104, !37, i64 108, !37, i64 120, !41, i64 132, !37, i64 136, !37, i64 144, !41, i64 152, !37, i64 156, !37, i64 168, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !37, i64 228, !37, i64 300, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412}
!169 = !{!170}
!170 = distinct !{!170, !171, !"gsi_start_bb: argument 0"}
!171 = distinct !{!171, !"gsi_start_bb"}
!172 = !{!84, !41, i64 176}
!173 = !{!84, !41, i64 172}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
!176 = !{!168, !41, i64 412}
!177 = !{!178, !36, i64 8}
!178 = !{!"data_reference", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !179, i64 32, !180, i64 72, !181, i64 88, !36, i64 104}
!179 = !{!"innermost_loop_behavior", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!180 = !{!"indices", !36, i64 0, !36, i64 8}
!181 = !{!"dr_alias", !36, i64 0, !36, i64 8}
!182 = !{!178, !36, i64 0}
!183 = !{!184, !41, i64 16}
!184 = !{!"_slp_instance", !36, i64 0, !41, i64 8, !41, i64 12, !85, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!185 = !{!184, !41, i64 20}
!186 = distinct !{!186, !52, !53}
!187 = !{i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 8, i64 24, !46}
!188 = distinct !{!188, !52, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = !{!192, !41, i64 0}
!192 = !{!"optab_handlers", !41, i64 0}
!193 = distinct !{!193, !52, !53}
!194 = !{!168, !41, i64 384}
!195 = !{!84, !36, i64 8}
!196 = !{!168, !41, i64 392}
!197 = !{!168, !41, i64 388}
!198 = distinct !{!198, !52, !53}
!199 = !{!158, !36, i64 0}
!200 = distinct !{!200, !52, !53}
!201 = !{!202, !204}
!202 = distinct !{!202, !203, !"gsi_start_bb: argument 0"}
!203 = distinct !{!203, !"gsi_start_bb"}
!204 = distinct !{!204, !205, !"gsi_after_labels: argument 0"}
!205 = distinct !{!205, !"gsi_after_labels"}
!206 = !{!204}
!207 = distinct !{!207, !52, !53}
!208 = distinct !{!208, !52, !53}
!209 = distinct !{!209, !52, !53}
!210 = !{!211, !36, i64 8}
!211 = !{!"immediate_use_iterator_d", !36, i64 0, !36, i64 8, !158, i64 16, !36, i64 48}
!212 = !{!211, !36, i64 0}
!213 = distinct !{!213, !52, !53}
!214 = !{!84, !36, i64 40}
!215 = distinct !{!215, !52, !53}
!216 = distinct !{!216, !52, !53}
!217 = !{!211, !36, i64 48}
!218 = distinct !{!218, !52, !53}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"gsi_start_bb: argument 0"}
!223 = distinct !{!223, !"gsi_start_bb"}
!224 = distinct !{!224, !225, !"gsi_after_labels: argument 0"}
!225 = distinct !{!225, !"gsi_after_labels"}
!226 = !{!224}
!227 = !{!58, !41, i64 0}
!228 = distinct !{!228, !52, !53}
!229 = distinct !{!229, !52, !53}
!230 = distinct !{!230, !52, !53}
!231 = distinct !{!231, !52, !53}
!232 = distinct !{!232, !52, !53}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = !{!236}
!236 = distinct !{!236, !237, !"gsi_start_bb: argument 0"}
!237 = distinct !{!237, !"gsi_start_bb"}
!238 = distinct !{!238, !52, !53}
!239 = !{!84, !36, i64 128}
!240 = distinct !{!240, !52, !53}
!241 = !{!242, !36, i64 0}
!242 = !{!"def_optype_d", !36, i64 0, !36, i64 8}
!243 = !{!242, !36, i64 8}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = !{!164, !41, i64 4}
!247 = distinct !{!247, !52, !53}
!248 = distinct !{!248, !52, !53}
!249 = distinct !{!249, !52, !53}
!250 = !{!251, !36, i64 0}
!251 = !{!"use_optype_d", !36, i64 0, !158, i64 8}
!252 = distinct !{!252, !52, !53}
!253 = !{!251, !36, i64 32}
