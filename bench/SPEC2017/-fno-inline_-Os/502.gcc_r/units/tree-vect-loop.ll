; ModuleID = 'tree-vect-loop.c'
source_filename = "tree-vect-loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_slp_instance_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
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
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @destroy_loop_vec_info(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %7 = icmp eq ptr %0, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !42
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %15
  %18 = zext nneg i32 %13 to i64
  br label %25

19:                                               ; preds = %8
  tail call void @free(ptr noundef %11) #20
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  tail call void @free_data_refs(ptr noundef %21) #21
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  tail call void @free_dependence_relations(ptr noundef %23) #21
  %24 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %24) #20
  tail call void @free(ptr noundef nonnull %0) #20
  br label %83

25:                                               ; preds = %17, %58
  %26 = phi i64 [ 0, %17 ], [ %59, %58 ]
  %27 = getelementptr inbounds ptr, ptr %11, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %28) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !51
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %31
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call void @free_stmt_vec_info(ptr noundef %32) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !51
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %31, label %35, !llvm.loop !52

35:                                               ; preds = %31, %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %28) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !51
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35, %55
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %40 = call fastcc ptr @vinfo_for_stmt(ptr noundef %39) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %40, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %44) #20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %47, i64 0, i32 13
  %51 = load i8, ptr %50, align 8, !tbaa !57
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42, %46, %49
  call void @free_stmt_vec_info(ptr noundef %39) #21
  br label %55

54:                                               ; preds = %49
  call void @free_stmt_vec_info(ptr noundef %39) #21
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  br label %55

55:                                               ; preds = %53, %54, %38
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %56 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !51
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %38, label %58, !llvm.loop !58

58:                                               ; preds = %55, %35
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %18
  br i1 %60, label %61, label %25, !llvm.loop !59

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8, !tbaa !41
  br label %63

63:                                               ; preds = %61, %15
  %64 = phi ptr [ %62, %61 ], [ %11, %15 ]
  call void @free(ptr noundef %64) #20
  %65 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  call void @free_data_refs(ptr noundef %66) #21
  %67 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  call void @free_dependence_relations(ptr noundef %68) #21
  %69 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %69) #20
  %70 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  call fastcc void @VEC_ddr_p_heap_free(ptr noundef nonnull %70) #20
  %71 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !60
  %73 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %72, i32 noundef 0, ptr noundef nonnull %4) #20, !range !61
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %63, %75
  %76 = phi i32 [ %78, %75 ], [ 0, %63 ]
  %77 = load ptr, ptr %4, align 8, !tbaa !49
  call void @vect_free_slp_instance(ptr noundef %77) #21
  %78 = add nuw nsw i32 %76, 1
  %79 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %72, i32 noundef %78, ptr noundef nonnull %4) #20, !range !61
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %75, !llvm.loop !62

81:                                               ; preds = %75, %63
  call fastcc void @VEC_slp_instance_heap_free(ptr noundef nonnull %71) #20
  %82 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 15
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %82) #20
  call void @free(ptr noundef %0) #20
  br label %83

83:                                               ; preds = %19, %81
  %84 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 10
  store ptr null, ptr %84, align 8, !tbaa !63
  br label %85

85:                                               ; preds = %83, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !34 !PGOFuncName !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !34 !PGOFuncName !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @free_stmt_vec_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !34 !PGOFuncName !68 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  store ptr %4, ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !73 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !76 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #20
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 629, ptr noundef nonnull @.str.7) #21
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = add i32 %2, -1
  %13 = tail call fastcc ptr @VEC_vec_void_p_base_index(ptr noundef %11, i32 noundef %12) #20
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ddr_p_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !34 !PGOFuncName !77 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_slp_instance_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 !PGOFuncName !78 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !79
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !49
  ret i32 %14
}

; Function Attrs: optsize
declare void @vect_free_slp_instance(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_slp_instance_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !34 !PGOFuncName !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vect_analyze_loop_form(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !49
  %3 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !42
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %270, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %21 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 37, i64 1, ptr %20)
  br label %270

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = tail call zeroext i8 @empty_block_p(ptr noundef %24) #21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %129, label %27

27:                                               ; preds = %22
  %28 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %270, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %32 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr %31)
  br label %270

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !82
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %33
  %42 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %270, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %46 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 38, i64 1, ptr %45)
  br label %270

47:                                               ; preds = %37
  %48 = tail call fastcc ptr @vect_analyze_loop_1(ptr noundef nonnull %10) #20
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %270, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %55 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 31, i64 1, ptr %54)
  br label %270

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct._loop_vec_info, ptr %48, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef nonnull %0, ptr noundef %58) #21
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %66 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 47, i64 1, ptr %65)
  br label %67

67:                                               ; preds = %64, %61
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %48, i8 noundef zeroext 1) #20
  br label %270

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !42
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %77 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 37, i64 1, ptr %76)
  br label %78

78:                                               ; preds = %75, %72
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %48, i8 noundef zeroext 1) #20
  br label %270

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !83
  %82 = load ptr, ptr %81, align 8, !tbaa !86
  %83 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %82) #20
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 945, ptr noundef nonnull @.str.7) #21
  %86 = load ptr, ptr %80, align 8, !tbaa !83
  %87 = load ptr, ptr %86, align 8, !tbaa !86
  br label %88

88:                                               ; preds = %79, %85
  %89 = phi ptr [ %82, %79 ], [ %87, %85 ]
  %90 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 0) #20
  %91 = load ptr, ptr %90, align 8, !tbaa !88
  %92 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !90
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 1) #20
  %97 = load ptr, ptr %96, align 8, !tbaa !88
  br label %98

98:                                               ; preds = %95, %88
  %99 = phi ptr [ %97, %95 ], [ %91, %88 ]
  %100 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !83
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = tail call ptr @single_exit(ptr noundef nonnull %10) #21
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %103
  %107 = tail call ptr @single_exit(ptr noundef nonnull %10) #21
  %108 = getelementptr inbounds %struct.edge_def, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !91
  %110 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !90
  %112 = load ptr, ptr %111, align 8, !tbaa !86
  %113 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %112, i32 noundef 0) #20
  %114 = load ptr, ptr %113, align 8, !tbaa !88
  %115 = icmp eq ptr %109, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %106, %103, %98
  %117 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %121 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 43, i64 1, ptr %120)
  br label %122

122:                                              ; preds = %119, %116
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %48, i8 noundef zeroext 1) #20
  br label %270

123:                                              ; preds = %106
  %124 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %128 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 37, i64 1, ptr %127)
  br label %129

129:                                              ; preds = %126, %123, %22
  %130 = phi ptr [ null, %22 ], [ %48, %126 ], [ %48, %123 ]
  %131 = tail call ptr @single_exit(ptr noundef nonnull %0) #21
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !83
  %136 = load ptr, ptr %135, align 8, !tbaa !86
  %137 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %136) #20
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %160, label %139

139:                                              ; preds = %133, %129
  %140 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %139
  %143 = tail call ptr @single_exit(ptr noundef nonnull %0) #21
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %147 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 31, i64 1, ptr %146)
  br label %157

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !83
  %151 = load ptr, ptr %150, align 8, !tbaa !86
  %152 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %151) #20
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %156 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 40, i64 1, ptr %155)
  br label %157

157:                                              ; preds = %145, %154, %148, %139
  %158 = icmp eq ptr %130, null
  br i1 %158, label %270, label %159

159:                                              ; preds = %157
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 1) #20
  br label %270

160:                                              ; preds = %133
  %161 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !90
  %163 = tail call zeroext i8 @empty_block_p(ptr noundef %162) #21
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %161, align 8, !tbaa !90
  %167 = tail call fastcc ptr @phi_nodes(ptr noundef %166) #20
  %168 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %167) #20, !range !51
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165, %160
  %171 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %175 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 37, i64 1, ptr %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = icmp eq ptr %130, null
  br i1 %177, label %270, label %178

178:                                              ; preds = %176
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 1) #20
  br label %270

179:                                              ; preds = %165
  %180 = tail call ptr @single_exit(ptr noundef nonnull %0) #21
  %181 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !91
  %183 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %182) #20, !range !51
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %179
  %186 = tail call ptr @single_exit(ptr noundef nonnull %0) #21
  %187 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 7
  %188 = load i32, ptr %187, align 8, !tbaa !92
  %189 = and i32 %188, 2
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = tail call ptr @split_loop_exit_edge(ptr noundef nonnull %186) #21
  %193 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %207, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %197 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 16, i64 1, ptr %196)
  br label %207

198:                                              ; preds = %185
  %199 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %203 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 40, i64 1, ptr %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = icmp eq ptr %130, null
  br i1 %205, label %270, label %206

206:                                              ; preds = %204
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 1) #20
  br label %270

207:                                              ; preds = %191, %195, %179
  %208 = call fastcc ptr @vect_get_loop_niters(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %215 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 43, i64 1, ptr %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = icmp eq ptr %130, null
  br i1 %217, label %270, label %218

218:                                              ; preds = %216
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 1) #20
  br label %270

219:                                              ; preds = %207
  %220 = load ptr, ptr %2, align 8, !tbaa !49
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %227 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 56, i64 1, ptr %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = icmp eq ptr %130, null
  br i1 %229, label %270, label %230

230:                                              ; preds = %228
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 1) #20
  br label %270

231:                                              ; preds = %219
  %232 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %220) #21
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %231
  %235 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 6) #21
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %239 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 30, i64 1, ptr %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = icmp eq ptr %130, null
  br i1 %241, label %270, label %242

242:                                              ; preds = %240
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 1) #20
  br label %270

243:                                              ; preds = %231
  %244 = tail call i32 @host_integerp(ptr noundef nonnull %220, i32 noundef 0) #21
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.tree_int_cst, ptr %220, i64 0, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !93
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %246, %243
  %251 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %255 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 33, i64 1, ptr %254)
  %256 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_generic_expr(ptr noundef %256, ptr noundef nonnull %220, i32 noundef 8) #21
  br label %257

257:                                              ; preds = %246, %250, %253
  %258 = tail call fastcc ptr @new_loop_vec_info(ptr noundef nonnull %0) #20
  %259 = getelementptr inbounds %struct._loop_vec_info, ptr %258, i64 0, i32 2
  store ptr %220, ptr %259, align 8, !tbaa !85
  %260 = getelementptr inbounds %struct._loop_vec_info, ptr %258, i64 0, i32 3
  store ptr %220, ptr %260, align 8, !tbaa !94
  %261 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %208) #20
  store i32 12, ptr %261, align 8, !tbaa !95
  %262 = icmp eq ptr %130, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %257
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %130, i8 noundef zeroext 0) #20
  br label %264

264:                                              ; preds = %263, %257
  %265 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %266 = load ptr, ptr %265, align 8, !tbaa !63
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1069, ptr noundef nonnull @.str.7) #21
  br label %269

269:                                              ; preds = %264, %268
  store ptr %258, ptr %265, align 8, !tbaa !63
  br label %270

270:                                              ; preds = %50, %53, %41, %44, %67, %122, %78, %206, %204, %240, %242, %228, %230, %216, %218, %176, %178, %157, %159, %27, %30, %16, %19, %269
  %271 = phi ptr [ %258, %269 ], [ null, %19 ], [ null, %16 ], [ null, %30 ], [ null, %27 ], [ null, %159 ], [ null, %157 ], [ null, %178 ], [ null, %176 ], [ null, %218 ], [ null, %216 ], [ null, %230 ], [ null, %228 ], [ null, %242 ], [ null, %240 ], [ null, %204 ], [ null, %206 ], [ null, %78 ], [ null, %122 ], [ null, %67 ], [ null, %44 ], [ null, %41 ], [ null, %53 ], [ null, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %271
}

; Function Attrs: optsize
declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @vect_analyze_loop_1(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !96 {
  %2 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %6 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 31, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %1
  %8 = tail call ptr @vect_analyze_loop_form(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %15 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 20, i64 1, ptr %14)
  br label %16

16:                                               ; preds = %7, %10, %13
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !97 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !100 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !101 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !104 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !105
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.92, i32 noundef 510, ptr noundef nonnull @.str.7) #21
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_get_loop_niters(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !109 {
  %3 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %7 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 23, i64 1, ptr %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = tail call ptr @number_of_exit_cond_executions(ptr noundef %0) #21
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr @chrec_dont_know, align 8
  %12 = icmp eq ptr %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  store ptr %9, ptr %1, align 8, !tbaa !49
  %15 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %19 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 20, i64 1, ptr %18)
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %21 = load ptr, ptr %1, align 8, !tbaa !49
  tail call void @print_generic_expr(ptr noundef %20, ptr noundef %21, i32 noundef 2) #21
  br label %22

22:                                               ; preds = %14, %17, %8
  %23 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #21
  ret ptr %23
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_loop_vec_info(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !110 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #21
  store ptr %0, ptr %6, align 8, !tbaa !35
  %7 = tail call ptr @get_loop_body(ptr noundef %0) #21
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %77, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %11, %72
  %14 = phi i64 [ 0, %11 ], [ %73, %72 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %56, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %12, align 8, !tbaa !82
  %22 = icmp ne ptr %21, null
  %23 = icmp eq ptr %18, %21
  %24 = and i1 %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.7) #21
  br label %26

26:                                               ; preds = %20, %25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %16) #21
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26, %38
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %31 = call fastcc ptr @vinfo_for_stmt(ptr noundef %30) #20
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = load ptr, ptr %12, align 8, !tbaa !82
  %35 = load ptr, ptr %33, align 8, !tbaa !35
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 652, ptr noundef nonnull @.str.7) #21
  br label %38

38:                                               ; preds = %29, %37
  store ptr %6, ptr %32, align 8, !tbaa !112
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %29, label %41, !llvm.loop !113

41:                                               ; preds = %38, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %41, %53
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %46 = call fastcc ptr @vinfo_for_stmt(ptr noundef %45) #20
  %47 = getelementptr inbounds %struct._stmt_vec_info, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !112
  %49 = load ptr, ptr %12, align 8, !tbaa !82
  %50 = load ptr, ptr %48, align 8, !tbaa !35
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 661, ptr noundef nonnull @.str.7) #21
  br label %53

53:                                               ; preds = %44, %52
  store ptr %6, ptr %47, align 8, !tbaa !112
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %44, label %72, !llvm.loop !114

56:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %16) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %57 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %59
  %60 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  call fastcc void @gimple_set_uid(ptr noundef %60, i32 noundef 0) #20
  %61 = call ptr @new_stmt_vec_info(ptr noundef %60, ptr noundef nonnull %6, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %60, ptr noundef %61) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %62 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %59, label %64, !llvm.loop !115

64:                                               ; preds = %59, %56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %65 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64, %67
  %68 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  call fastcc void @gimple_set_uid(ptr noundef %68, i32 noundef 0) #20
  %69 = call ptr @new_stmt_vec_info(ptr noundef %68, ptr noundef nonnull %6, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %68, ptr noundef %69) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %70 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %67, label %72, !llvm.loop !116

72:                                               ; preds = %53, %67, %41, %64
  %73 = add nuw nsw i64 %14, 1
  %74 = load i32, ptr %8, align 4, !tbaa !42
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %13, label %77, !llvm.loop !117

77:                                               ; preds = %72, %1
  call void @free(ptr noundef %7) #20
  %78 = load i32, ptr %8, align 4, !tbaa !42
  %79 = zext i32 %78 to i64
  %80 = call ptr @xcalloc(i64 noundef %79, i64 noundef 8) #21
  %81 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = load i32, ptr %8, align 4, !tbaa !42
  %84 = call i32 @dfs_enumerate_from(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @bb_in_loop_p, ptr noundef %80, i32 noundef %83, ptr noundef nonnull %0) #21
  %85 = load i32, ptr %8, align 4, !tbaa !42
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 693, ptr noundef nonnull @.str.7) #21
  br label %88

88:                                               ; preds = %77, %87
  %89 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 1
  store ptr %80, ptr %89, align 8, !tbaa !41
  %90 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 2
  %91 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 8
  store i32 0, ptr %91, align 8, !tbaa !118
  %92 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 6
  store i32 0, ptr %92, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %90, i8 0, i64 21, i1 false)
  %93 = call fastcc ptr @VEC_data_reference_p_heap_alloc() #20
  %94 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 10
  store ptr %93, ptr %94, align 8, !tbaa !47
  %95 = call fastcc ptr @VEC_ddr_p_heap_alloc(i32 noundef 100) #20
  %96 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 11
  store ptr %95, ptr %96, align 8, !tbaa !48
  %97 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 7
  store ptr null, ptr %97, align 8, !tbaa !120
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !49
  %99 = getelementptr inbounds %struct.param_info, ptr %98, i64 71, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !121
  %101 = call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %100) #20
  %102 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 13
  store ptr %101, ptr %102, align 8, !tbaa !123
  %103 = load ptr, ptr @compiler_params, align 8, !tbaa !49
  %104 = getelementptr inbounds %struct.param_info, ptr %103, i64 72, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !121
  %106 = call fastcc ptr @VEC_ddr_p_heap_alloc(i32 noundef %105) #20
  %107 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 12
  store ptr %106, ptr %107, align 8, !tbaa !124
  %108 = call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef 10) #20
  %109 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 15
  store ptr %108, ptr %109, align 8, !tbaa !125
  %110 = call fastcc ptr @VEC_slp_instance_heap_alloc() #20
  %111 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 16
  store ptr %110, ptr %111, align 8, !tbaa !60
  %112 = getelementptr inbounds %struct._loop_vec_info, ptr %6, i64 0, i32 17
  store i32 1, ptr %112, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vect_analyze_loop(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %6 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 29, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %1
  %8 = tail call fastcc ptr @loop_outer(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @loop_vec_info_for_loop(ptr noundef nonnull %8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._loop_vec_info, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 4, !tbaa !127
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %128, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %22 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %21)
  br label %128

23:                                               ; preds = %13, %10, %7
  %24 = tail call ptr @vect_analyze_loop_form(ptr noundef %0) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %128, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %31 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 14, i64 1, ptr %30)
  br label %128

32:                                               ; preds = %23
  %33 = tail call zeroext i8 @vect_analyze_data_refs(ptr noundef nonnull %24, ptr noundef null) #21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %40 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 20, i64 1, ptr %39)
  br label %41

41:                                               ; preds = %38, %35
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

42:                                               ; preds = %32
  tail call fastcc void @vect_analyze_scalar_cycles(ptr noundef nonnull %24) #20
  tail call void @vect_pattern_recog(ptr noundef nonnull %24) #21
  %43 = tail call zeroext i8 @vect_mark_stmts_to_be_vectorized(ptr noundef nonnull %24) #21
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %50 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 19, i64 1, ptr %49)
  br label %51

51:                                               ; preds = %48, %45
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

52:                                               ; preds = %42
  %53 = tail call zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef nonnull %24, ptr noundef null) #21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %60 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 19, i64 1, ptr %59)
  br label %61

61:                                               ; preds = %58, %55
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

62:                                               ; preds = %52
  %63 = tail call fastcc zeroext i8 @vect_determine_vectorization_factor(ptr noundef nonnull %24) #20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %70 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 37, i64 1, ptr %69)
  br label %71

71:                                               ; preds = %68, %65
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

72:                                               ; preds = %62
  %73 = tail call zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef nonnull %24, ptr noundef null) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %80 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 20, i64 1, ptr %79)
  br label %81

81:                                               ; preds = %78, %75
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

82:                                               ; preds = %72
  %83 = tail call zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef nonnull %24, ptr noundef null) #21
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %90 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 16, i64 1, ptr %89)
  br label %91

91:                                               ; preds = %88, %85
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

92:                                               ; preds = %82
  %93 = tail call zeroext i8 @vect_prune_runtime_alias_test_list(ptr noundef nonnull %24) #21
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %100 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 53, i64 1, ptr %99)
  br label %101

101:                                              ; preds = %98, %95
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

102:                                              ; preds = %92
  %103 = tail call zeroext i8 @vect_analyze_slp(ptr noundef nonnull %24, ptr noundef null) #21
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @vect_make_slp_decision(ptr noundef nonnull %24) #21
  tail call void @vect_detect_hybrid_slp(ptr noundef nonnull %24) #21
  br label %106

106:                                              ; preds = %105, %102
  %107 = tail call zeroext i8 @vect_enhance_data_refs_alignment(ptr noundef nonnull %24) #21
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %114 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 19, i64 1, ptr %113)
  br label %115

115:                                              ; preds = %112, %109
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

116:                                              ; preds = %106
  %117 = tail call fastcc zeroext i8 @vect_analyze_loop_operations(ptr noundef nonnull %24) #20
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %124 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 40, i64 1, ptr %123)
  br label %125

125:                                              ; preds = %122, %119
  tail call void @destroy_loop_vec_info(ptr noundef nonnull %24, i8 noundef zeroext 1) #20
  br label %128

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct._loop_vec_info, ptr %24, i64 0, i32 5
  store i8 1, ptr %127, align 4, !tbaa !127
  br label %128

128:                                              ; preds = %26, %29, %17, %20, %126, %125, %115, %101, %91, %81, %71, %61, %51, %41
  %129 = phi ptr [ %24, %126 ], [ null, %125 ], [ null, %115 ], [ null, %101 ], [ null, %91 ], [ null, %81 ], [ null, %71 ], [ null, %61 ], [ null, %51 ], [ null, %41 ], [ null, %20 ], [ null, %17 ], [ null, %29 ], [ null, %26 ]
  ret ptr %129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !129
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @loop_vec_info_for_loop(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !130 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_refs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_analyze_scalar_cycles(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !131 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  tail call fastcc void @vect_analyze_scalar_cycles_1(ptr noundef nonnull %0, ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @vect_analyze_scalar_cycles_1(ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @vect_pattern_recog(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_mark_stmts_to_be_vectorized(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_determine_vectorization_factor(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !132 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %10 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %14 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 43, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = icmp sgt i32 %9, 0
  br i1 %16, label %17, label %328

17:                                               ; preds = %15
  %18 = zext nneg i32 %9 to i64
  br label %19

19:                                               ; preds = %17, %324
  %20 = phi i64 [ 0, %17 ], [ %326, %324 ]
  %21 = phi i32 [ 0, %17 ], [ %325, %324 ]
  %22 = getelementptr inbounds ptr, ptr %7, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #21
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %19, %92
  %27 = phi i32 [ %93, %92 ], [ %21, %19 ]
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %29 = call fastcc ptr @vinfo_for_stmt(ptr noundef %28) #20
  %30 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %34 = call i64 @fwrite(ptr nonnull @.str.107, i64 19, i64 1, ptr %33)
  %35 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %35, ptr noundef %28, i32 noundef 0, i32 noundef 2) #21
  br label %36

36:                                               ; preds = %32, %26
  %37 = icmp eq ptr %29, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 199, ptr noundef nonnull @.str.7) #21
  br label %39

39:                                               ; preds = %36, %38
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !133
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %92, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !134
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 203, ptr noundef nonnull @.str.7) #21
  br label %48

48:                                               ; preds = %43, %47
  %49 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %28) #20
  %50 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %49) #20
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !93
  %53 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %57 = call i64 @fwrite(ptr nonnull @.str.108, i64 30, i64 1, ptr %56)
  %58 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %58, ptr noundef %52, i32 noundef 2) #21
  br label %59

59:                                               ; preds = %55, %48
  %60 = call ptr @get_vectype_for_scalar_type(ptr noundef %52) #21
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %345, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %67 = call i64 @fwrite(ptr nonnull @.str.109, i64 38, i64 1, ptr %66)
  %68 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %68, ptr noundef %52, i32 noundef 2) #21
  br label %345

69:                                               ; preds = %59
  store ptr %60, ptr %44, align 8, !tbaa !134
  %70 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %74 = call i64 @fwrite(ptr nonnull @.str.110, i64 9, i64 1, ptr %73)
  %75 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %75, ptr noundef nonnull %60, i32 noundef 2) #21
  br label %76

76:                                               ; preds = %72, %69
  %77 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1023
  %80 = zext nneg i32 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = trunc i64 %81 to i32
  %83 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.111, i32 noundef %82) #20
  br label %88

88:                                               ; preds = %85, %76
  %89 = icmp eq i32 %27, 0
  %90 = call i32 @llvm.umax.i32(i32 %27, i32 %82)
  %91 = select i1 %89, i32 %82, i32 %90
  br label %92

92:                                               ; preds = %88, %39
  %93 = phi i32 [ %27, %39 ], [ %91, %88 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %94 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %26, label %96, !llvm.loop !135

96:                                               ; preds = %92, %19
  %97 = phi i32 [ %21, %19 ], [ %93, %92 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %23) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %98 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %324

100:                                              ; preds = %96, %320
  %101 = phi i32 [ %321, %320 ], [ %97, %96 ]
  %102 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %103 = call fastcc ptr @vinfo_for_stmt(ptr noundef %102) #20
  %104 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %108 = call i64 @fwrite(ptr nonnull @.str.112, i64 25, i64 1, ptr %107)
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %109, ptr noundef %102, i32 noundef 0, i32 noundef 2) #21
  br label %110

110:                                              ; preds = %106, %100
  %111 = icmp eq ptr %103, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 252, ptr noundef nonnull @.str.7) #21
  br label %113

113:                                              ; preds = %110, %112
  %114 = getelementptr inbounds %struct._stmt_vec_info, ptr %103, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !133
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct._stmt_vec_info, ptr %103, i64 0, i32 4
  %119 = load i8, ptr %118, align 4, !tbaa !136
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %320, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %126 = call i64 @fwrite(ptr nonnull @.str.113, i64 5, i64 1, ptr %125)
  br label %320

127:                                              ; preds = %117, %113
  %128 = call ptr @gimple_get_lhs(ptr noundef %102) #21
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %345, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %135 = call i64 @fwrite(ptr nonnull @.str.114, i64 31, i64 1, ptr %134)
  %136 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %136, ptr noundef %102, i32 noundef 0, i32 noundef 2) #21
  br label %345

137:                                              ; preds = %127
  %138 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 14
  %142 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  br i1 %141, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 @vector_type_mode(ptr noundef %142) #21
  br label %150

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.tree_type, ptr %142, i64 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = lshr i32 %147, 16
  %149 = and i32 %148, 255
  br label %150

150:                                              ; preds = %145, %143
  %151 = phi i32 [ %144, %143 ], [ %149, %145 ]
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !93
  %155 = icmp eq i8 %154, 12
  br i1 %155, label %251, label %156

156:                                              ; preds = %150
  %157 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  %161 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  br i1 %160, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 @vector_type_mode(ptr noundef %161) #21
  br label %169

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %166 = load i32, ptr %165, align 4
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 255
  br label %169

169:                                              ; preds = %164, %162
  %170 = phi i32 [ %163, %162 ], [ %168, %164 ]
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !93
  %174 = icmp eq i8 %173, 17
  br i1 %174, label %251, label %175

175:                                              ; preds = %169
  %176 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 14
  %180 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  br i1 %179, label %181, label %183

181:                                              ; preds = %175
  %182 = call i32 @vector_type_mode(ptr noundef %180) #21
  br label %188

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.tree_type, ptr %180, i64 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  br label %188

188:                                              ; preds = %183, %181
  %189 = phi i32 [ %182, %181 ], [ %187, %183 ]
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !93
  %193 = icmp eq i8 %192, 13
  br i1 %193, label %251, label %194

194:                                              ; preds = %188
  %195 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 14
  %199 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  br i1 %198, label %200, label %202

200:                                              ; preds = %194
  %201 = call i32 @vector_type_mode(ptr noundef %199) #21
  br label %207

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.tree_type, ptr %199, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %202, %200
  %208 = phi i32 [ %201, %200 ], [ %206, %202 ]
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !93
  %212 = icmp eq i8 %211, 14
  br i1 %212, label %251, label %213

213:                                              ; preds = %207
  %214 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  %215 = load i64, ptr %214, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 14
  %218 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  br i1 %217, label %219, label %221

219:                                              ; preds = %213
  %220 = call i32 @vector_type_mode(ptr noundef %218) #21
  br label %226

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.tree_type, ptr %218, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi i32 [ %220, %219 ], [ %225, %221 ]
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !93
  %231 = icmp eq i8 %230, 15
  br i1 %231, label %251, label %232

232:                                              ; preds = %226
  %233 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  %234 = load i64, ptr %233, align 8
  %235 = and i64 %234, 65535
  %236 = icmp eq i64 %235, 14
  %237 = call fastcc ptr @gimple_expr_type(ptr noundef %102) #20
  br i1 %236, label %238, label %240

238:                                              ; preds = %232
  %239 = call i32 @vector_type_mode(ptr noundef %237) #21
  br label %245

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct.tree_type, ptr %237, i64 0, i32 6
  %242 = load i32, ptr %241, align 4
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  br label %245

245:                                              ; preds = %240, %238
  %246 = phi i32 [ %239, %238 ], [ %244, %240 ]
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !93
  %250 = icmp eq i8 %249, 16
  br i1 %250, label %251, label %258

251:                                              ; preds = %245, %226, %207, %188, %169, %150
  %252 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %345, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %256 = call i64 @fwrite(ptr nonnull @.str.115, i64 36, i64 1, ptr %255)
  %257 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %257, ptr noundef %102, i32 noundef 0, i32 noundef 2) #21
  br label %345

258:                                              ; preds = %245
  %259 = getelementptr inbounds %struct._stmt_vec_info, ptr %103, i64 0, i32 5
  %260 = load ptr, ptr %259, align 8, !tbaa !134
  %261 = icmp eq ptr %260, null
  %262 = getelementptr inbounds %struct._stmt_vec_info, ptr %103, i64 0, i32 7
  %263 = load ptr, ptr %262, align 8, !tbaa !137
  %264 = icmp eq ptr %263, null
  br i1 %261, label %272, label %265

265:                                              ; preds = %258
  br i1 %264, label %266, label %270

266:                                              ; preds = %265
  %267 = call fastcc zeroext i8 @is_pattern_stmt_p(ptr noundef nonnull %103) #20, !range !51
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 289, ptr noundef nonnull @.str.7) #21
  br label %270

270:                                              ; preds = %265, %266, %269
  %271 = load ptr, ptr %259, align 8, !tbaa !134
  br label %296

272:                                              ; preds = %258
  br i1 %264, label %273, label %276

273:                                              ; preds = %272
  %274 = call fastcc zeroext i8 @is_pattern_stmt_p(ptr noundef nonnull %103) #20, !range !51
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %273, %272
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 295, ptr noundef nonnull @.str.7) #21
  br label %277

277:                                              ; preds = %273, %276
  %278 = call ptr @vect_get_smallest_scalar_type(ptr noundef %102, ptr noundef nonnull %3, ptr noundef nonnull %3) #21
  %279 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %283 = call i64 @fwrite(ptr nonnull @.str.108, i64 30, i64 1, ptr %282)
  %284 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %284, ptr noundef %278, i32 noundef 2) #21
  br label %285

285:                                              ; preds = %281, %277
  %286 = call ptr @get_vectype_for_scalar_type(ptr noundef %278) #21
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %285
  %289 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %345, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %293 = call i64 @fwrite(ptr nonnull @.str.109, i64 38, i64 1, ptr %292)
  %294 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %294, ptr noundef %278, i32 noundef 2) #21
  br label %345

295:                                              ; preds = %285
  store ptr %286, ptr %259, align 8, !tbaa !134
  br label %296

296:                                              ; preds = %295, %270
  %297 = phi ptr [ %271, %270 ], [ %286, %295 ]
  %298 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %302 = call i64 @fwrite(ptr nonnull @.str.110, i64 9, i64 1, ptr %301)
  %303 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %303, ptr noundef %297, i32 noundef 2) #21
  br label %304

304:                                              ; preds = %300, %296
  %305 = getelementptr inbounds %struct.tree_type, ptr %297, i64 0, i32 6
  %306 = load i32, ptr %305, align 4
  %307 = and i32 %306, 1023
  %308 = zext nneg i32 %307 to i64
  %309 = shl nuw i64 1, %308
  %310 = trunc i64 %309 to i32
  %311 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %304
  %314 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %314, ptr noundef nonnull @.str.111, i32 noundef %310) #20
  br label %316

316:                                              ; preds = %313, %304
  %317 = icmp eq i32 %101, 0
  %318 = call i32 @llvm.umax.i32(i32 %101, i32 %310)
  %319 = select i1 %317, i32 %310, i32 %318
  br label %320

320:                                              ; preds = %316, %124, %121
  %321 = phi i32 [ %319, %316 ], [ %101, %124 ], [ %101, %121 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %322 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %100, label %324, !llvm.loop !138

324:                                              ; preds = %320, %96
  %325 = phi i32 [ %97, %96 ], [ %321, %320 ]
  %326 = add nuw nsw i64 %20, 1
  %327 = icmp eq i64 %326, %18
  br i1 %327, label %328, label %19, !llvm.loop !139

328:                                              ; preds = %324, %15
  %329 = phi i32 [ 0, %15 ], [ %325, %324 ]
  %330 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %328
  %333 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %333, ptr noundef nonnull @.str.116, i32 noundef %329) #20
  br label %335

335:                                              ; preds = %332, %328
  %336 = icmp ult i32 %329, 2
  br i1 %336, label %337, label %343

337:                                              ; preds = %335
  %338 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %342 = call i64 @fwrite(ptr nonnull @.str.117, i64 37, i64 1, ptr %341)
  br label %345

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  store i32 %329, ptr %344, align 8, !tbaa !119
  br label %345

345:                                              ; preds = %288, %291, %251, %254, %130, %133, %62, %65, %337, %340, %343
  %346 = phi i8 [ 1, %343 ], [ 0, %340 ], [ 0, %337 ], [ 0, %65 ], [ 0, %62 ], [ 0, %133 ], [ 0, %130 ], [ 0, %254 ], [ 0, %251 ], [ 0, %291 ], [ 0, %288 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret i8 %346
}

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_prune_runtime_alias_test_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_slp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_make_slp_decision(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_detect_hybrid_slp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_enhance_data_refs_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_analyze_loop_operations(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !140 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !tbaa !93
  %10 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %14 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 36, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !119
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1099, ptr noundef nonnull @.str.7) #21
  %20 = load i32, ptr %16, align 8, !tbaa !119
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi i32 [ %17, %15 ], [ %20, %19 ]
  %23 = icmp sgt i32 %9, 0
  br i1 %23, label %24, label %144

24:                                               ; preds = %21
  %25 = zext nneg i32 %9 to i64
  br label %26

26:                                               ; preds = %24, %137
  %27 = phi i64 [ 0, %24 ], [ %139, %137 ]
  %28 = phi i8 [ 1, %24 ], [ %138, %137 ]
  %29 = getelementptr inbounds ptr, ptr %7, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %26, %104
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %35 = call fastcc ptr @vinfo_for_stmt(ptr noundef %34) #20
  %36 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %40 = call i64 @fwrite(ptr nonnull @.str.119, i64 15, i64 1, ptr %39)
  %41 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %41, ptr noundef %34, i32 noundef 0, i32 noundef 2) #21
  br label %42

42:                                               ; preds = %38, %33
  %43 = call fastcc zeroext i8 @is_loop_header_bb_p(ptr noundef %30) #20, !range !51
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !133
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 4
  %51 = load i8, ptr %50, align 4, !tbaa !136
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %104, label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !141
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %104, label %57

57:                                               ; preds = %53
  %58 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %298, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %62 = call i64 @fwrite(ptr nonnull @.str.120, i64 42, i64 1, ptr %61)
  br label %298

63:                                               ; preds = %42
  %64 = icmp eq ptr %35, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1139, ptr noundef nonnull @.str.7) #21
  br label %66

66:                                               ; preds = %63, %65
  %67 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 4
  %68 = load i8, ptr %67, align 4, !tbaa !136
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %298, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %75 = call i64 @fwrite(ptr nonnull @.str.121, i64 38, i64 1, ptr %74)
  br label %298

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !133
  switch i32 %78, label %90 [
    i32 4, label %79
    i32 0, label %104
  ]

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 16
  %81 = load i32, ptr %80, align 8, !tbaa !141
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i8 1, ptr %3, align 1, !tbaa !93
  br label %94

84:                                               ; preds = %79
  %85 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %298, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %89 = call i64 @fwrite(ptr nonnull @.str.122, i64 40, i64 1, ptr %88)
  br label %298

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 16
  %92 = load i32, ptr %91, align 8, !tbaa !141
  store i8 1, ptr %3, align 1, !tbaa !93
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %104

94:                                               ; preds = %83, %90
  %95 = call zeroext i8 @vectorizable_induction(ptr noundef %34, ptr poison, ptr noundef null) #20, !range !51
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %298, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %102 = call i64 @fwrite(ptr nonnull @.str.123, i64 44, i64 1, ptr %101)
  %103 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %103, ptr noundef %34, i32 noundef 0, i32 noundef 2) #21
  br label %298

104:                                              ; preds = %76, %90, %94, %49, %53
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %105 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %33, label %107, !llvm.loop !142

107:                                              ; preds = %104, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %107, %133
  %111 = phi i8 [ %134, %133 ], [ %28, %107 ]
  %112 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %113 = call fastcc ptr @vinfo_for_stmt(ptr noundef %112) #20
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1182, ptr noundef nonnull @.str.7) #21
  br label %116

116:                                              ; preds = %110, %115
  %117 = call zeroext i8 @vect_analyze_stmt(ptr noundef %112, ptr noundef nonnull %3, ptr noundef null) #21
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %298, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !133
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 16
  %125 = load i32, ptr %124, align 8, !tbaa !141
  %126 = add i32 %125, -5
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %133

128:                                              ; preds = %123, %119
  %129 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 25
  %130 = load i32, ptr %129, align 4, !tbaa !143
  %131 = icmp eq i32 %130, 1
  %132 = select i1 %131, i8 %111, i8 0
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i8 [ %132, %128 ], [ %111, %123 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %135 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %110, label %137, !llvm.loop !144

137:                                              ; preds = %133, %107
  %138 = phi i8 [ %28, %107 ], [ %134, %133 ]
  %139 = add nuw nsw i64 %27, 1
  %140 = icmp eq i64 %139, %25
  br i1 %140, label %141, label %26, !llvm.loop !145

141:                                              ; preds = %137
  %142 = load i8, ptr %3, align 1, !tbaa !93
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %21, %141
  %145 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %149 = call i64 @fwrite(ptr nonnull @.str.124, i64 49, i64 1, ptr %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %298, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %155 = call i64 @fwrite(ptr nonnull @.str.125, i64 55, i64 1, ptr %154)
  br label %298

156:                                              ; preds = %141
  %157 = icmp eq i8 %138, 0
  %158 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 17
  %159 = load i32, ptr %158, align 8, !tbaa !126
  br i1 %157, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 @least_common_multiple(i32 noundef %22, i32 noundef %159) #21
  br label %162

162:                                              ; preds = %156, %160
  %163 = phi i32 [ %161, %160 ], [ %159, %156 ]
  store i32 %163, ptr %16, align 8, !tbaa !119
  %164 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !85
  %166 = call i32 @host_integerp(ptr noundef %165, i32 noundef 0) #21
  %167 = icmp eq i32 %166, 0
  %168 = load ptr, ptr %164, align 8, !tbaa !85
  br i1 %167, label %183, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.tree_int_cst, ptr %168, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !93
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %169
  %174 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %175 = icmp eq i8 %174, 0
  %176 = load ptr, ptr %164, align 8, !tbaa !85
  br i1 %175, label %183, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %179 = getelementptr inbounds %struct.tree_int_cst, ptr %176, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !93
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.126, i32 noundef %163, i64 noundef %180) #20
  %182 = load ptr, ptr %164, align 8, !tbaa !85
  br label %183

183:                                              ; preds = %177, %173, %169, %162
  %184 = phi ptr [ %182, %177 ], [ %176, %173 ], [ %168, %169 ], [ %168, %162 ]
  %185 = call i32 @host_integerp(ptr noundef %184, i32 noundef 0) #21
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %207, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %164, align 8, !tbaa !85
  %189 = getelementptr inbounds %struct.tree_int_cst, ptr %188, i64 0, i32 1
  %190 = load i64, ptr %189, align 8, !tbaa !93
  %191 = icmp ne i64 %190, 0
  %192 = zext i32 %163 to i64
  %193 = icmp ult i64 %190, %192
  %194 = select i1 %191, i1 %193, i1 false
  br i1 %194, label %195, label %207

195:                                              ; preds = %187
  %196 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %200 = call i64 @fwrite(ptr nonnull @.str.127, i64 42, i64 1, ptr %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %298, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %206 = call i64 @fwrite(ptr nonnull @.str.128, i64 66, i64 1, ptr %205)
  br label %298

207:                                              ; preds = %187, %183
  call void @vect_update_slp_costs_according_to_vf(ptr noundef nonnull %0) #21
  %208 = call i32 @vect_estimate_min_profitable_iters(ptr noundef nonnull %0) #20
  %209 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  store i32 %208, ptr %209, align 8, !tbaa !146
  %210 = icmp slt i32 %208, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %216 = call i64 @fwrite(ptr nonnull @.str.129, i64 45, i64 1, ptr %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %298, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %222 = call i64 @fwrite(ptr nonnull @.str.130, i64 56, i64 1, ptr %221)
  br label %298

223:                                              ; preds = %207
  %224 = load ptr, ptr @compiler_params, align 8, !tbaa !49
  %225 = getelementptr inbounds %struct.param_info, ptr %224, i64 11, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !121
  %227 = load ptr, ptr %164, align 8, !tbaa !85
  %228 = call i32 @host_integerp(ptr noundef %227, i32 noundef 0) #21
  %229 = icmp eq i32 %228, 0
  %230 = load ptr, ptr %164, align 8, !tbaa !85
  br i1 %229, label %257, label %231

231:                                              ; preds = %223
  %232 = icmp eq i32 %208, 0
  %233 = mul i32 %226, %163
  %234 = add i32 %233, -1
  %235 = icmp eq i32 %234, 0
  %236 = call i32 @llvm.smax.i32(i32 %208, i32 %234)
  %237 = select i1 %235, i32 %208, i32 %236
  %238 = select i1 %232, i32 %234, i32 %237
  %239 = getelementptr inbounds %struct.tree_int_cst, ptr %230, i64 0, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !93
  %241 = freeze i32 %238
  %242 = zext i32 %241 to i64
  %243 = add i64 %240, -1
  %244 = icmp ult i64 %243, %242
  br i1 %244, label %245, label %257

245:                                              ; preds = %231
  %246 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %250 = call i64 @fwrite(ptr nonnull @.str.129, i64 45, i64 1, ptr %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %298, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %256 = call i64 @fwrite(ptr nonnull @.str.131, i64 147, i64 1, ptr %255)
  br label %298

257:                                              ; preds = %231, %223
  %258 = call i32 @host_integerp(ptr noundef %230, i32 noundef 0) #21
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %257
  %261 = load ptr, ptr %164, align 8, !tbaa !85
  %262 = getelementptr inbounds %struct.tree_int_cst, ptr %261, i64 0, i32 1
  %263 = load i64, ptr %262, align 8, !tbaa !93
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %260
  %266 = zext i32 %163 to i64
  %267 = urem i64 %263, %266
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %271 = load i32, ptr %270, align 8, !tbaa !118
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %298, label %273

273:                                              ; preds = %269, %265, %260, %257
  %274 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %278 = call i64 @fwrite(ptr nonnull @.str.132, i64 21, i64 1, ptr %277)
  br label %279

279:                                              ; preds = %276, %273
  %280 = call zeroext i8 @vect_can_advance_ivs_p(ptr noundef nonnull %0) #21
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %279
  %283 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %298, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %287 = call i64 @fwrite(ptr nonnull @.str.133, i64 43, i64 1, ptr %286)
  br label %298

288:                                              ; preds = %279
  %289 = call ptr @single_exit(ptr noundef %5) #21
  %290 = call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %5, ptr noundef %289) #21
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %297 = call i64 @fwrite(ptr nonnull @.str.134, i64 43, i64 1, ptr %296)
  br label %298

298:                                              ; preds = %116, %97, %100, %84, %87, %70, %73, %57, %60, %269, %288, %292, %295, %282, %285, %251, %254, %217, %220, %201, %204, %150, %153
  %299 = phi i8 [ 0, %153 ], [ 0, %150 ], [ 0, %204 ], [ 0, %201 ], [ 0, %220 ], [ 0, %217 ], [ 0, %254 ], [ 0, %251 ], [ 0, %285 ], [ 0, %282 ], [ 0, %295 ], [ 0, %292 ], [ 1, %288 ], [ 1, %269 ], [ 0, %60 ], [ 0, %57 ], [ 0, %73 ], [ 0, %70 ], [ 0, %87 ], [ 0, %84 ], [ 0, %100 ], [ 0, %97 ], [ 0, %116 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret i8 %299
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_is_simple_reduction(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #20
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = tail call ptr @loop_latch_edge(ptr noundef %8) #21
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !147
  %13 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %12) #20
  %14 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #19
  store i8 0, ptr %3, align 1, !tbaa !93
  %15 = icmp ne i8 %2, 0
  %16 = icmp eq ptr %8, %9
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %9, ptr noundef %8) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1585, ptr noundef nonnull @.str.7) #21
  br label %24

24:                                               ; preds = %4, %20, %23
  %25 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #20
  %26 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %25) #20
  %27 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef %26) #20
  %28 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #20, !range !51
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %24, %59
  %31 = phi ptr [ %61, %59 ], [ %27, %24 ]
  %32 = phi i32 [ %60, %59 ], [ 0, %24 ]
  %33 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %34) #20, !range !51
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_bb(ptr noundef %34) #20
  %39 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %38) #21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %34) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %34) #20
  %46 = tail call fastcc zeroext i8 @is_pattern_stmt_p(ptr noundef %45) #20, !range !51
  %47 = xor i8 %46, 1
  %48 = zext nneg i8 %47 to i32
  %49 = add nsw i32 %32, %48
  br label %50

50:                                               ; preds = %44, %41, %37
  %51 = phi i32 [ %32, %41 ], [ %32, %37 ], [ %49, %44 ]
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %476, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %58 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 23, i64 1, ptr %57)
  br label %476

59:                                               ; preds = %30, %50
  %60 = phi i32 [ %32, %30 ], [ %51, %50 ]
  %61 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #20
  %62 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #20, !range !51
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %30, label %64, !llvm.loop !148

64:                                               ; preds = %59, %24
  %65 = load i64, ptr %14, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 141
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %476, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %73 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 25, i64 1, ptr %72)
  %74 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_generic_expr(ptr noundef %74, ptr noundef nonnull %14, i32 noundef 2) #21
  br label %476

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !93
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %476, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %84 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 23, i64 1, ptr %83)
  br label %476

85:                                               ; preds = %75
  %86 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %77) #20, !range !51
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %77) #20, !range !149
  %90 = icmp eq i32 %89, 16
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %476, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %95, ptr noundef nonnull %77, i32 noundef 0, i32 noundef 2) #21
  br label %476

96:                                               ; preds = %85
  %97 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %77) #20
  br label %101

98:                                               ; preds = %88
  %99 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef nonnull %77) #20
  %100 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %99) #20
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi ptr [ %97, %96 ], [ %100, %98 ]
  %103 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef %102) #20
  %104 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #20, !range !51
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %101, %135
  %107 = phi ptr [ %137, %135 ], [ %103, %101 ]
  %108 = phi i32 [ %136, %135 ], [ 0, %101 ]
  %109 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %107, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !93
  %111 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %110) #20, !range !51
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %106
  %114 = tail call fastcc ptr @gimple_bb(ptr noundef %110) #20
  %115 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %114) #21
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %113
  %118 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %110) #20
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %110) #20
  %122 = tail call fastcc zeroext i8 @is_pattern_stmt_p(ptr noundef %121) #20, !range !51
  %123 = xor i8 %122, 1
  %124 = zext nneg i8 %123 to i32
  %125 = add nsw i32 %108, %124
  br label %126

126:                                              ; preds = %120, %117, %113
  %127 = phi i32 [ %108, %117 ], [ %108, %113 ], [ %125, %120 ]
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %476, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %134 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 23, i64 1, ptr %133)
  br label %476

135:                                              ; preds = %106, %126
  %136 = phi i32 [ %108, %106 ], [ %127, %126 ]
  %137 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #20
  %138 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #20, !range !51
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %106, label %140, !llvm.loop !150

140:                                              ; preds = %135, %101
  br i1 %87, label %141, label %178

141:                                              ; preds = %140
  %142 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %77, i32 noundef 0) #20
  %143 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %142) #20
  %144 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %77) #20
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i64, ptr %143, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 141
  br i1 %149, label %156, label %150

150:                                              ; preds = %146, %141
  %151 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %476, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %155 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 32, i64 1, ptr %154)
  br label %476

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.tree_ssa_name, ptr %143, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !93
  %159 = tail call fastcc ptr @gimple_bb(ptr noundef %77) #20
  %160 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %159) #21
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %476, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 8
  %164 = load ptr, ptr %163, align 8, !tbaa !82
  %165 = icmp eq ptr %164, null
  br i1 %165, label %476, label %166

166:                                              ; preds = %162
  %167 = tail call fastcc ptr @gimple_bb(ptr noundef %158) #20
  %168 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %164, ptr noundef %167) #21
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %476, label %170

170:                                              ; preds = %166
  %171 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %158) #20, !range !51
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %476, label %173

173:                                              ; preds = %170
  %174 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.35) #20
  br label %177

177:                                              ; preds = %176, %173
  store i8 1, ptr %3, align 1, !tbaa !93
  br label %476

178:                                              ; preds = %140
  %179 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %77) #20, !range !151
  br i1 %15, label %180, label %190

180:                                              ; preds = %178
  %181 = tail call zeroext i8 @commutative_tree_code(i32 noundef %179) #21
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = tail call zeroext i8 @associative_tree_code(i32 noundef %179) #21
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183, %180
  %187 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %476, label %189

189:                                              ; preds = %186
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.36) #20
  br label %476

190:                                              ; preds = %183, %178
  %191 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %179) #20, !range !149
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %233, label %193

193:                                              ; preds = %190
  %194 = icmp eq i32 %179, 56
  br i1 %194, label %199, label %195

195:                                              ; preds = %193
  %196 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %476, label %198

198:                                              ; preds = %195
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.37) #20
  br label %476

199:                                              ; preds = %193
  %200 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %77) #20
  %201 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !93
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !152
  %207 = icmp eq i32 %206, 5
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = getelementptr inbounds %struct.tree_exp, ptr %202, i64 0, i32 3
  %210 = getelementptr inbounds %struct.tree_exp, ptr %202, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !93
  %212 = load ptr, ptr %209, align 8, !tbaa !93
  br label %213

213:                                              ; preds = %208, %199
  %214 = phi ptr [ %212, %208 ], [ %202, %199 ]
  %215 = phi ptr [ %211, %208 ], [ null, %199 ]
  %216 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %77) #20
  %217 = getelementptr inbounds %struct.tree_exp, ptr %216, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !93
  %219 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %77) #20
  %220 = getelementptr inbounds %struct.tree_exp, ptr %219, i64 1, i32 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !93
  %222 = load i64, ptr %218, align 8
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 141
  br i1 %224, label %247, label %225

225:                                              ; preds = %213
  %226 = load i64, ptr %221, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 141
  br i1 %228, label %247, label %229

229:                                              ; preds = %225
  %230 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %476, label %232

232:                                              ; preds = %229
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.38) #20
  br label %476

233:                                              ; preds = %190
  %234 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %77) #20
  %235 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %77) #20
  %236 = load i64, ptr %234, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 141
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i64, ptr %235, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 141
  br i1 %242, label %247, label %243

243:                                              ; preds = %239, %233
  %244 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %476, label %246

246:                                              ; preds = %243
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.38) #20
  br label %476

247:                                              ; preds = %239, %213, %225
  %248 = phi ptr [ %218, %225 ], [ %218, %213 ], [ %234, %239 ]
  %249 = phi ptr [ %221, %225 ], [ %221, %213 ], [ %235, %239 ]
  %250 = phi ptr [ %214, %225 ], [ %214, %213 ], [ null, %239 ]
  %251 = phi ptr [ %215, %225 ], [ %215, %213 ], [ null, %239 ]
  %252 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %77) #20
  %253 = getelementptr inbounds %struct.tree_common, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !93
  %255 = load i64, ptr %248, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 141
  br i1 %257, label %258, label %263

258:                                              ; preds = %247
  %259 = getelementptr inbounds %struct.tree_common, ptr %248, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !93
  %261 = tail call zeroext i8 @types_compatible_p(ptr noundef %254, ptr noundef %260) #21
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %294, label %263

263:                                              ; preds = %258, %247
  %264 = load i64, ptr %249, align 8
  %265 = and i64 %264, 65535
  %266 = icmp eq i64 %265, 141
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.tree_common, ptr %249, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !93
  %270 = tail call zeroext i8 @types_compatible_p(ptr noundef %254, ptr noundef %269) #21
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %294, label %272

272:                                              ; preds = %267, %263
  %273 = icmp eq ptr %250, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %272
  %275 = load i64, ptr %250, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 141
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.tree_common, ptr %250, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !93
  %281 = tail call zeroext i8 @types_compatible_p(ptr noundef %254, ptr noundef %280) #21
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %278, %274, %272
  %284 = icmp eq ptr %251, null
  br i1 %284, label %326, label %285

285:                                              ; preds = %283
  %286 = load i64, ptr %251, align 8
  %287 = and i64 %286, 65535
  %288 = icmp eq i64 %287, 141
  br i1 %288, label %289, label %326

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.tree_common, ptr %251, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !93
  %292 = tail call zeroext i8 @types_compatible_p(ptr noundef %254, ptr noundef %291) #21
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %326

294:                                              ; preds = %289, %278, %267, %258
  %295 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %476, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %299 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 43, i64 1, ptr %298)
  %300 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_generic_expr(ptr noundef %300, ptr noundef %254, i32 noundef 2) #21
  %301 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %302 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 18, i64 1, ptr %301)
  %303 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %304 = getelementptr inbounds %struct.tree_common, ptr %248, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %303, ptr noundef %305, i32 noundef 2) #21
  %306 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %307 = tail call i32 @fputc(i32 44, ptr %306)
  %308 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %309 = getelementptr inbounds %struct.tree_common, ptr %249, i64 0, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %308, ptr noundef %310, i32 noundef 2) #21
  %311 = icmp eq ptr %250, null
  br i1 %311, label %318, label %312

312:                                              ; preds = %297
  %313 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %314 = tail call i32 @fputc(i32 44, ptr %313)
  %315 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %316 = getelementptr inbounds %struct.tree_common, ptr %250, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %315, ptr noundef %317, i32 noundef 2) #21
  br label %318

318:                                              ; preds = %312, %297
  %319 = icmp eq ptr %251, null
  br i1 %319, label %476, label %320

320:                                              ; preds = %318
  %321 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %322 = tail call i32 @fputc(i32 44, ptr %321)
  %323 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %324 = getelementptr inbounds %struct.tree_common, ptr %251, i64 0, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %323, ptr noundef %325, i32 noundef 2) #21
  br label %476

326:                                              ; preds = %289, %285, %283
  %327 = load i64, ptr %254, align 8
  %328 = trunc i64 %327 to i32
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 9
  %331 = load i32, ptr @flag_associative_math, align 4
  %332 = icmp eq i32 %331, 0
  %333 = select i1 %330, i1 %332, i1 false
  %334 = and i1 %15, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %326
  %336 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %476, label %338

338:                                              ; preds = %335
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.42) #20
  br label %476

339:                                              ; preds = %326
  %340 = add nsw i32 %329, -6
  %341 = icmp ult i32 %340, 3
  br i1 %341, label %342, label %353

342:                                              ; preds = %339
  %343 = and i64 %327, 2097152
  %344 = icmp eq i64 %343, 0
  %345 = load i32, ptr @flag_trapv, align 4
  %346 = icmp ne i32 %345, 0
  %347 = select i1 %344, i1 %346, i1 false
  %348 = and i1 %15, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %342
  %350 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %476, label %352

352:                                              ; preds = %349
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.43) #20
  br label %476

353:                                              ; preds = %339, %342
  %354 = and i64 %327, 65535
  %355 = icmp eq i64 %354, 11
  br i1 %355, label %356, label %364

356:                                              ; preds = %353
  %357 = and i64 %327, 2147483648
  %358 = icmp ne i64 %357, 0
  %359 = and i1 %15, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %356
  %361 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %476, label %363

363:                                              ; preds = %360
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.44) #20
  br label %476

364:                                              ; preds = %356, %353
  %365 = load i64, ptr %248, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 141
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.tree_ssa_name, ptr %248, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !93
  br label %371

371:                                              ; preds = %368, %364
  %372 = phi ptr [ %370, %368 ], [ null, %364 ]
  %373 = load i64, ptr %249, align 8
  %374 = and i64 %373, 65535
  %375 = icmp eq i64 %374, 141
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.tree_ssa_name, ptr %249, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !93
  br label %379

379:                                              ; preds = %376, %371
  %380 = phi ptr [ %378, %376 ], [ null, %371 ]
  %381 = icmp eq i32 %179, 56
  br i1 %381, label %396, label %382

382:                                              ; preds = %379
  %383 = icmp ne ptr %372, null
  %384 = icmp ne ptr %380, null
  %385 = select i1 %383, i1 %384, i1 false
  br i1 %385, label %386, label %392

386:                                              ; preds = %382
  %387 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %372) #20, !range !51
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %380) #20, !range !51
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %400, label %392

392:                                              ; preds = %389, %386, %382
  %393 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %476, label %395

395:                                              ; preds = %392
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.45) #20
  br label %476

396:                                              ; preds = %379
  %397 = icmp eq ptr %380, null
  %398 = icmp ne ptr %380, %1
  %399 = or i1 %398, %397
  br i1 %399, label %432, label %426

400:                                              ; preds = %389
  %401 = icmp eq ptr %380, %1
  br i1 %401, label %402, label %430

402:                                              ; preds = %400
  %403 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %372) #20
  %404 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %403) #21
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %430, label %406

406:                                              ; preds = %402
  %407 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %372) #20, !range !51
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %409, label %426

409:                                              ; preds = %406
  %410 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %372) #20
  %411 = getelementptr inbounds %struct._stmt_vec_info, ptr %410, i64 0, i32 16
  %412 = load i32, ptr %411, align 8, !tbaa !141
  %413 = icmp eq i32 %412, 4
  br i1 %413, label %426, label %414

414:                                              ; preds = %409
  %415 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %372) #20, !range !149
  %416 = icmp eq i32 %415, 16
  br i1 %416, label %417, label %430

417:                                              ; preds = %414
  %418 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %372) #20
  %419 = getelementptr inbounds %struct._stmt_vec_info, ptr %418, i64 0, i32 16
  %420 = load i32, ptr %419, align 8, !tbaa !141
  %421 = icmp eq i32 %420, 3
  br i1 %421, label %422, label %430

422:                                              ; preds = %417
  %423 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %372) #20
  %424 = tail call fastcc zeroext i8 @is_loop_header_bb_p(ptr noundef %423) #20, !range !51
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %396, %422, %409, %406
  %427 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %476, label %429

429:                                              ; preds = %426
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.46) #20
  br label %476

430:                                              ; preds = %400, %422, %417, %414, %402
  %431 = icmp eq ptr %372, %1
  br i1 %431, label %436, label %472

432:                                              ; preds = %396
  %433 = icmp ne ptr %372, null
  %434 = icmp eq ptr %372, %1
  %435 = and i1 %433, %434
  br i1 %435, label %461, label %472

436:                                              ; preds = %430
  br i1 %381, label %461, label %437

437:                                              ; preds = %436
  %438 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %380) #20
  %439 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %438) #21
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %472, label %441

441:                                              ; preds = %437
  %442 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %380) #20, !range !51
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %444, label %461

444:                                              ; preds = %441
  %445 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %380) #20
  %446 = getelementptr inbounds %struct._stmt_vec_info, ptr %445, i64 0, i32 16
  %447 = load i32, ptr %446, align 8, !tbaa !141
  %448 = icmp eq i32 %447, 4
  br i1 %448, label %461, label %449

449:                                              ; preds = %444
  %450 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %380) #20, !range !149
  %451 = icmp eq i32 %450, 16
  br i1 %451, label %452, label %472

452:                                              ; preds = %449
  %453 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %380) #20
  %454 = getelementptr inbounds %struct._stmt_vec_info, ptr %453, i64 0, i32 16
  %455 = load i32, ptr %454, align 8, !tbaa !141
  %456 = icmp eq i32 %455, 3
  br i1 %456, label %457, label %472

457:                                              ; preds = %452
  %458 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %380) #20
  %459 = tail call fastcc zeroext i8 @is_loop_header_bb_p(ptr noundef %458) #20, !range !51
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %472

461:                                              ; preds = %432, %457, %444, %441, %436
  %462 = icmp eq i8 %2, 0
  %463 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %464 = icmp eq i8 %463, 0
  br i1 %462, label %470, label %465

465:                                              ; preds = %461
  br i1 %464, label %467, label %466

466:                                              ; preds = %465
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.47) #20
  br label %467

467:                                              ; preds = %466, %465
  %468 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %77) #20
  %469 = tail call fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %77) #20
  tail call void @swap_tree_operands(ptr noundef %77, ptr noundef %468, ptr noundef %469) #21
  br label %476

470:                                              ; preds = %461
  br i1 %464, label %476, label %471

471:                                              ; preds = %470
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.46) #20
  br label %476

472:                                              ; preds = %432, %457, %452, %449, %437, %430
  %473 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %472
  tail call fastcc void @report_vect_op(ptr noundef %77, ptr noundef nonnull @.str.48) #20
  br label %476

476:                                              ; preds = %129, %132, %53, %56, %472, %475, %467, %471, %470, %426, %429, %392, %395, %360, %363, %349, %352, %335, %338, %294, %320, %318, %243, %246, %229, %232, %195, %198, %186, %189, %156, %162, %166, %170, %150, %153, %91, %94, %79, %82, %68, %71, %177
  %477 = phi ptr [ %77, %177 ], [ null, %71 ], [ null, %68 ], [ null, %82 ], [ null, %79 ], [ null, %94 ], [ null, %91 ], [ null, %153 ], [ null, %150 ], [ null, %170 ], [ null, %166 ], [ null, %162 ], [ null, %156 ], [ null, %189 ], [ null, %186 ], [ null, %198 ], [ null, %195 ], [ null, %232 ], [ null, %229 ], [ null, %246 ], [ null, %243 ], [ null, %318 ], [ null, %320 ], [ null, %294 ], [ null, %338 ], [ null, %335 ], [ null, %352 ], [ null, %349 ], [ null, %363 ], [ null, %360 ], [ null, %395 ], [ null, %392 ], [ %77, %429 ], [ %77, %426 ], [ %77, %470 ], [ %77, %471 ], [ %77, %467 ], [ null, %475 ], [ null, %472 ], [ null, %56 ], [ null, %53 ], [ null, %132 ], [ null, %129 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #19
  ret ptr %477
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !157 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !158 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #11 !prof !34 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !160 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  store ptr %6, ptr %0, align 8, !tbaa !164
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !51
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !165 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !166 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_pattern_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !167 {
  %2 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %3) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 13
  %10 = load i8, ptr %9, align 8, !tbaa !57
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %5, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i8 [ 0, %12 ], [ 1, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !168 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  store ptr %4, ptr %0, align 8, !tbaa !164
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !51
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !169 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !170 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !171 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !172 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @report_vect_op(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !173 {
  %3 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %4 = tail call i32 @fputs(ptr %1, ptr %3)
  %5 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %5, ptr noundef %0, i32 noundef 0, i32 noundef 2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !174 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !151
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !149
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

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @associative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 !prof !34 !PGOFuncName !175 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !93
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !176 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !177 {
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

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !178 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_loop_header_bb_p(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !179 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !86
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 694, ptr noundef nonnull @.str.7) #21
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %7 ], [ 0, %11 ]
  ret i8 %13
}

; Function Attrs: optsize
declare void @swap_tree_operands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !180 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !181 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vect_estimate_min_profitable_iters(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !119
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %13 = load i32, ptr @flag_vect_cost_model, align 4, !tbaa !152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %337, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %20 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 20, i64 1, ptr %19)
  br label %337

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %31 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 77, i64 1, ptr %30)
  br label %32

32:                                               ; preds = %26, %29, %21
  %33 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  %35 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %34) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = add i32 %35, %24
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %43 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 64, i64 1, ptr %42)
  br label %44

44:                                               ; preds = %37, %41, %32
  %45 = phi i32 [ %38, %41 ], [ %38, %37 ], [ %24, %32 ]
  %46 = load ptr, ptr %22, align 8, !tbaa !123
  %47 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %46) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load ptr, ptr %33, align 8, !tbaa !124
  %51 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %50) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49, %44
  %54 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %55 = getelementptr inbounds %struct.processor_costs, ptr %54, i64 0, i32 46
  %56 = load i32, ptr %55, align 4, !tbaa !182
  %57 = add nsw i32 %56, %45
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i32 [ %57, %53 ], [ %45, %49 ]
  %60 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !82
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, i32 0, i32 50
  %64 = icmp sgt i32 %10, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %58
  %66 = zext nneg i32 %10 to i64
  br label %67

67:                                               ; preds = %65, %115
  %68 = phi i64 [ 0, %65 ], [ %119, %115 ]
  %69 = phi i32 [ 0, %65 ], [ %118, %115 ]
  %70 = phi i32 [ %59, %65 ], [ %117, %115 ]
  %71 = phi i32 [ 0, %65 ], [ %116, %115 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %72 = getelementptr inbounds ptr, ptr %8, i64 %68
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !111
  %76 = load ptr, ptr %60, align 8, !tbaa !82
  %77 = icmp eq ptr %75, %76
  %78 = select i1 %77, i32 %63, i32 1
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %73) #20
  %79 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !51
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %67, %109
  %82 = phi i32 [ %112, %109 ], [ %69, %67 ]
  %83 = phi i32 [ %111, %109 ], [ %70, %67 ]
  %84 = phi i32 [ %110, %109 ], [ %71, %67 ]
  %85 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %86 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %85) #20
  %87 = getelementptr inbounds %struct._stmt_vec_info, ptr %86, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !133
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct._stmt_vec_info, ptr %86, i64 0, i32 4
  %92 = load i8, ptr %91, align 4, !tbaa !136
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct._stmt_vec_info, ptr %86, i64 0, i32 16
  %96 = load i32, ptr %95, align 8, !tbaa !141
  %97 = icmp eq i32 %96, 5
  br i1 %97, label %98, label %109

98:                                               ; preds = %94, %81
  %99 = tail call i32 @cost_for_stmt(ptr noundef %85) #21
  %100 = mul nsw i32 %99, %78
  %101 = add nsw i32 %100, %84
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %86, i64 0, i32 24
  %103 = getelementptr inbounds %struct._stmt_vec_info, ptr %86, i64 0, i32 24, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !184
  %105 = mul nsw i32 %104, %78
  %106 = add nsw i32 %105, %82
  %107 = load i32, ptr %102, align 4, !tbaa !185
  %108 = add nsw i32 %107, %83
  br label %109

109:                                              ; preds = %90, %94, %98
  %110 = phi i32 [ %101, %98 ], [ %84, %94 ], [ %84, %90 ]
  %111 = phi i32 [ %108, %98 ], [ %83, %94 ], [ %83, %90 ]
  %112 = phi i32 [ %106, %98 ], [ %82, %94 ], [ %82, %90 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %113 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !51
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %81, label %115, !llvm.loop !186

115:                                              ; preds = %109, %67
  %116 = phi i32 [ %71, %67 ], [ %110, %109 ]
  %117 = phi i32 [ %70, %67 ], [ %111, %109 ]
  %118 = phi i32 [ %69, %67 ], [ %112, %109 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %119 = add nuw nsw i64 %68, 1
  %120 = icmp eq i64 %119, %66
  br i1 %120, label %121, label %67, !llvm.loop !187

121:                                              ; preds = %115, %58
  %122 = phi i32 [ 0, %58 ], [ %116, %115 ]
  %123 = phi i32 [ %59, %58 ], [ %117, %115 ]
  %124 = phi i32 [ 0, %58 ], [ %118, %115 ]
  %125 = icmp slt i32 %12, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %121
  %127 = sdiv i32 %5, 2
  %128 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %132 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 44, i64 1, ptr %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %138 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 86, i64 1, ptr %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %141 = getelementptr inbounds %struct.processor_costs, ptr %140, i64 0, i32 46
  %142 = load i32, ptr %141, align 4, !tbaa !182
  %143 = getelementptr inbounds %struct.processor_costs, ptr %140, i64 0, i32 47
  %144 = load i32, ptr %143, align 4, !tbaa !188
  %145 = add nsw i32 %144, %142
  %146 = shl nsw i32 %145, 1
  br label %212

147:                                              ; preds = %121
  %148 = icmp eq i32 %12, 0
  br i1 %148, label %184, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  %151 = load ptr, ptr %150, align 8, !tbaa !120
  %152 = getelementptr inbounds %struct.data_reference, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !189
  %154 = getelementptr inbounds %struct.tree_common, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !93
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 14
  br i1 %158, label %159, label %161

159:                                              ; preds = %149
  %160 = tail call i32 @vector_type_mode(ptr noundef nonnull %155) #21
  br label %166

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.tree_type, ptr %155, i64 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  br label %166

166:                                              ; preds = %161, %159
  %167 = phi i32 [ %160, %159 ], [ %165, %161 ]
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !93
  %171 = zext i8 %170 to i32
  %172 = load ptr, ptr %151, align 8, !tbaa !194
  %173 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %172) #20
  %174 = getelementptr inbounds %struct._stmt_vec_info, ptr %173, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !134
  %176 = getelementptr inbounds %struct.tree_type, ptr %175, i64 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 1023
  %179 = zext nneg i32 %178 to i64
  %180 = shl nuw i64 1, %179
  %181 = trunc i64 %180 to i32
  %182 = udiv i32 %12, %171
  %183 = sub nsw i32 %181, %182
  br label %184

184:                                              ; preds = %147, %166
  %185 = phi i32 [ %183, %166 ], [ 0, %147 ]
  %186 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !85
  %188 = tail call i32 @host_integerp(ptr noundef %187, i32 noundef 0) #21
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load ptr, ptr %186, align 8, !tbaa !85
  %192 = getelementptr inbounds %struct.tree_int_cst, ptr %191, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !93
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %190, %184
  %196 = sdiv i32 %5, 2
  %197 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %201 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 81, i64 1, ptr %200)
  br label %202

202:                                              ; preds = %199, %195
  %203 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %204 = getelementptr inbounds %struct.processor_costs, ptr %203, i64 0, i32 46
  %205 = load i32, ptr %204, align 4, !tbaa !182
  %206 = shl nsw i32 %205, 1
  br label %212

207:                                              ; preds = %190
  %208 = trunc i64 %193 to i32
  %209 = tail call i32 @llvm.smin.i32(i32 %185, i32 %208)
  %210 = sub nsw i32 %208, %209
  %211 = srem i32 %210, %5
  br label %212

212:                                              ; preds = %202, %207, %139
  %213 = phi i32 [ %146, %139 ], [ 0, %207 ], [ %206, %202 ]
  %214 = phi i32 [ %127, %139 ], [ %211, %207 ], [ %196, %202 ]
  %215 = phi i32 [ %127, %139 ], [ %209, %207 ], [ %185, %202 ]
  %216 = add i32 %215, %214
  %217 = mul i32 %216, %122
  %218 = add i32 %213, %123
  %219 = add i32 %218, %217
  %220 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !85
  %222 = tail call i32 @host_integerp(ptr noundef %221, i32 noundef 0) #21
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %212
  %225 = load ptr, ptr %22, align 8, !tbaa !123
  br label %239

226:                                              ; preds = %212
  %227 = load ptr, ptr %220, align 8, !tbaa !85
  %228 = getelementptr inbounds %struct.tree_int_cst, ptr %227, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !93
  %230 = icmp eq i64 %229, 0
  %231 = load ptr, ptr %22, align 8, !tbaa !123
  br i1 %230, label %239, label %232

232:                                              ; preds = %226
  %233 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %231) #20
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load ptr, ptr %33, align 8, !tbaa !124
  %237 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %236) #20
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %262, label %239

239:                                              ; preds = %224, %235, %232, %226
  %240 = phi ptr [ %225, %224 ], [ %231, %235 ], [ %231, %232 ], [ %231, %226 ]
  %241 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %240) #20
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load ptr, ptr %33, align 8, !tbaa !124
  %245 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %244) #20
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %243, %239
  %248 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %249 = getelementptr inbounds %struct.processor_costs, ptr %248, i64 0, i32 47
  %250 = load i32, ptr %249, align 4, !tbaa !188
  br label %262

251:                                              ; preds = %243
  %252 = load i32, ptr %11, align 8, !tbaa !118
  %253 = icmp slt i32 %252, 0
  %254 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %255 = getelementptr inbounds %struct.processor_costs, ptr %254, i64 0, i32 46
  %256 = load i32, ptr %255, align 4, !tbaa !182
  %257 = shl nsw i32 %256, 1
  br i1 %253, label %258, label %262

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.processor_costs, ptr %254, i64 0, i32 47
  %260 = load i32, ptr %259, align 4, !tbaa !188
  %261 = add nsw i32 %257, %260
  br label %262

262:                                              ; preds = %251, %247, %258, %235
  %263 = phi i32 [ %250, %247 ], [ %261, %258 ], [ 0, %235 ], [ %257, %251 ]
  %264 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %265 = load ptr, ptr %264, align 8, !tbaa !60
  %266 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %265, i32 noundef 0, ptr noundef nonnull %2) #20, !range !61
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %282, label %268

268:                                              ; preds = %262, %268
  %269 = phi i32 [ %279, %268 ], [ 0, %262 ]
  %270 = phi i32 [ %278, %268 ], [ %124, %262 ]
  %271 = phi i32 [ %275, %268 ], [ %219, %262 ]
  %272 = load ptr, ptr %2, align 8, !tbaa !49
  %273 = getelementptr inbounds %struct._slp_instance, ptr %272, i64 0, i32 3
  %274 = load i32, ptr %273, align 8, !tbaa !195
  %275 = add nsw i32 %274, %271
  %276 = getelementptr inbounds %struct._slp_instance, ptr %272, i64 0, i32 3, i32 1
  %277 = load i32, ptr %276, align 4, !tbaa !197
  %278 = add nsw i32 %277, %270
  %279 = add nuw nsw i32 %269, 1
  %280 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %265, i32 noundef %279, ptr noundef nonnull %2) #20, !range !61
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %268, !llvm.loop !198

282:                                              ; preds = %268, %262
  %283 = phi i32 [ %219, %262 ], [ %275, %268 ]
  %284 = phi i32 [ %124, %262 ], [ %278, %268 ]
  %285 = mul nsw i32 %122, %5
  %286 = icmp sgt i32 %285, %284
  br i1 %286, label %287, label %302

287:                                              ; preds = %282
  %288 = icmp slt i32 %283, 1
  br i1 %288, label %308, label %289

289:                                              ; preds = %287
  %290 = sub nsw i32 %283, %263
  %291 = mul nsw i32 %290, %5
  %292 = mul i32 %284, %216
  %293 = sub i32 %291, %292
  %294 = sub nsw i32 %285, %284
  %295 = sdiv i32 %293, %294
  %296 = mul nsw i32 %295, %285
  %297 = mul nsw i32 %295, %284
  %298 = add nsw i32 %297, %291
  %299 = icmp sle i32 %296, %298
  %300 = zext i1 %299 to i32
  %301 = add nsw i32 %295, %300
  br label %308

302:                                              ; preds = %282
  %303 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %337, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %307 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef nonnull @.str.55, i32 noundef %284, i32 noundef %122, i32 noundef %5) #20
  br label %337

308:                                              ; preds = %289, %287
  %309 = phi i32 [ 1, %287 ], [ %301, %289 ]
  %310 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %329, label %312

312:                                              ; preds = %308
  %313 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %314 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 22, i64 1, ptr %313)
  %315 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %316 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef nonnull @.str.57, i32 noundef %284) #20
  %317 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %318 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef nonnull @.str.58, i32 noundef %283) #20
  %319 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %320 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %319, ptr noundef nonnull @.str.59, i32 noundef %122) #20
  %321 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %322 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %321, ptr noundef nonnull @.str.60, i32 noundef %263) #20
  %323 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %324 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.61, i32 noundef %215) #20
  %325 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %326 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef nonnull @.str.62, i32 noundef %214) #20
  %327 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %328 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %327, ptr noundef nonnull @.str.63, i32 noundef %309) #20
  br label %329

329:                                              ; preds = %312, %308
  %330 = tail call i32 @llvm.smax.i32(i32 %309, i32 %5)
  %331 = add nsw i32 %330, -1
  %332 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %336 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef nonnull @.str.64, i32 noundef %331) #20
  br label %337

337:                                              ; preds = %329, %334, %302, %305, %15, %18
  %338 = phi i32 [ 0, %18 ], [ 0, %15 ], [ -1, %305 ], [ -1, %302 ], [ %331, %334 ], [ %331, %329 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i32 %338
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !199 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !200
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !202 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !203
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @cost_for_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_initial_def_for_reduction(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca %struct.real_value, align 8
  %5 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %10) #21
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !151
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @dconst0, i64 32, i1 false), !tbaa.struct !205
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2716, ptr noundef nonnull @.str.7) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = trunc i64 %20 to i32
  %22 = load i64, ptr %10, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %24 [
    i16 10, label %25
    i16 12, label %25
    i16 6, label %25
    i16 7, label %25
    i16 8, label %25
    i16 9, label %25
  ]

24:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2720, ptr noundef nonnull @.str.7) #21
  br label %25

25:                                               ; preds = %15, %15, %15, %15, %15, %15, %24
  %26 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %8, ptr noundef %0) #20, !range !51
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = icmp eq ptr %8, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2725, ptr noundef nonnull @.str.7) #21
  br label %34

34:                                               ; preds = %33, %28
  %35 = icmp ne ptr %2, null
  br label %63

36:                                               ; preds = %25
  %37 = icmp eq ptr %2, null
  br i1 %37, label %63, label %38

38:                                               ; preds = %36
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = icmp eq ptr %44, null
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %44) #20, !range !149
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %44) #20
  %51 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %8, ptr noundef %50) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %44) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %44) #20
  %58 = getelementptr inbounds %struct._stmt_vec_info, ptr %57, i64 0, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !141
  %60 = icmp eq i32 %59, 6
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  store ptr null, ptr %2, align 8, !tbaa !49
  %62 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %1, ptr noundef nonnull %11) #21
  br label %146

63:                                               ; preds = %34, %56, %53, %49, %46, %42, %38, %36
  %64 = phi i1 [ %35, %34 ], [ true, %56 ], [ true, %53 ], [ true, %49 ], [ true, %46 ], [ true, %42 ], [ true, %38 ], [ false, %36 ]
  %65 = load i64, ptr %1, align 8
  %66 = and i64 %65, 131072
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load i64, ptr %10, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 9
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !93
  %75 = tail call ptr @build_real(ptr noundef nonnull %10, ptr noundef byval(%struct.real_value) align 8 %74) #21
  br label %80

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !93
  %79 = tail call ptr @build_int_cst(ptr noundef nonnull %10, i64 noundef %78) #21
  br label %80

80:                                               ; preds = %63, %72, %76
  %81 = phi ptr [ %75, %72 ], [ %79, %76 ], [ %1, %63 ]
  %82 = trunc i32 %12 to i16
  switch i16 %82, label %145 [
    i16 168, label %83
    i16 167, label %83
    i16 63, label %83
    i16 64, label %83
    i16 87, label %83
    i16 88, label %83
    i16 65, label %83
    i16 89, label %83
    i16 80, label %125
    i16 81, label %125
    i16 56, label %125
  ]

83:                                               ; preds = %80, %80, %80, %80, %80, %80, %80, %80
  br i1 %64, label %84, label %89

84:                                               ; preds = %83
  br i1 %27, label %87, label %85

85:                                               ; preds = %84
  %86 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %1, ptr noundef %0, ptr noundef null) #21
  br label %87

87:                                               ; preds = %84, %85
  %88 = phi ptr [ %86, %85 ], [ %1, %84 ]
  store ptr %88, ptr %2, align 8, !tbaa !49
  br label %89

89:                                               ; preds = %87, %83
  switch i16 %82, label %91 [
    i16 89, label %90
    i16 65, label %90
  ]

90:                                               ; preds = %89, %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !205
  br label %91

91:                                               ; preds = %89, %90
  %92 = phi i64 [ 1, %90 ], [ 0, %89 ]
  %93 = load i64, ptr %10, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 9
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = tail call ptr @build_real(ptr noundef nonnull %10, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #21
  br label %100

98:                                               ; preds = %91
  %99 = tail call ptr @build_int_cst(ptr noundef nonnull %10, i64 noundef %92) #21
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi ptr [ %97, %96 ], [ %99, %98 ]
  %102 = icmp sgt i32 %21, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = add nsw i32 %21, -2
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i32 [ %109, %105 ], [ %104, %103 ]
  %107 = phi ptr [ %108, %105 ], [ null, %103 ]
  %108 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %101, ptr noundef %107) #21
  %109 = add nsw i32 %106, -1
  %110 = icmp eq i32 %106, 0
  br i1 %110, label %111, label %105, !llvm.loop !206

111:                                              ; preds = %105, %100
  %112 = phi ptr [ null, %100 ], [ %108, %105 ]
  br i1 %64, label %113, label %116

113:                                              ; preds = %111
  %114 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %101, ptr noundef %112) #21
  %115 = tail call ptr @build_vector(ptr noundef %11, ptr noundef %114) #21
  br label %146

116:                                              ; preds = %111
  %117 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %81, ptr noundef %112) #21
  %118 = load i64, ptr %1, align 8
  %119 = and i64 %118, 131072
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = tail call ptr @build_vector(ptr noundef %11, ptr noundef %117) #21
  br label %146

123:                                              ; preds = %116
  %124 = tail call ptr @build_constructor_from_list(ptr noundef %11, ptr noundef %117) #21
  br label %146

125:                                              ; preds = %80, %80, %80
  br i1 %64, label %128, label %126

126:                                              ; preds = %125
  %127 = icmp sgt i32 %21, 0
  br i1 %127, label %130, label %136

128:                                              ; preds = %125
  store ptr null, ptr %2, align 8, !tbaa !49
  %129 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %1, ptr noundef %0, ptr noundef null) #21
  br label %146

130:                                              ; preds = %126, %130
  %131 = phi i32 [ %133, %130 ], [ %21, %126 ]
  %132 = phi ptr [ %134, %130 ], [ null, %126 ]
  %133 = add nsw i32 %131, -1
  %134 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %81, ptr noundef %132) #21
  %135 = icmp ugt i32 %131, 1
  br i1 %135, label %130, label %136, !llvm.loop !207

136:                                              ; preds = %130, %126
  %137 = phi ptr [ null, %126 ], [ %134, %130 ]
  %138 = load i64, ptr %1, align 8
  %139 = and i64 %138, 131072
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = tail call ptr @build_vector(ptr noundef %11, ptr noundef %137) #21
  br label %146

143:                                              ; preds = %136
  %144 = tail call ptr @build_constructor_from_list(ptr noundef %11, ptr noundef %137) #21
  br label %146

145:                                              ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2827, ptr noundef nonnull @.str.7) #21
  br label %146

146:                                              ; preds = %113, %128, %145, %123, %121, %143, %141, %61
  %147 = phi ptr [ %62, %61 ], [ undef, %145 ], [ %129, %128 ], [ %142, %141 ], [ %144, %143 ], [ %115, %113 ], [ %122, %121 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret ptr %147
}

; Function Attrs: optsize
declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @nested_in_vect_loop_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !34 !PGOFuncName !208 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #20
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = icmp eq ptr %4, %9
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %2 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @vect_create_destination_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vect_get_vec_def_for_operand(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vectorizable_reduction(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x ptr], align 16
  %9 = alloca i8, align 1
  %10 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %16 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %14, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !119
  %24 = sdiv i32 %23, %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #19
  %25 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %15, ptr noundef %0) #20, !range !51
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi ptr [ %29, %27 ], [ %15, %3 ]
  %32 = phi ptr [ %15, %27 ], [ null, %3 ]
  %33 = xor i1 %26, true
  %34 = icmp sgt i32 %24, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3517, ptr noundef nonnull @.str.7) #21
  br label %36

36:                                               ; preds = %30, %35
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 25
  %38 = load i32, ptr %37, align 4, !tbaa !143
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %609

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !133
  %43 = icmp ugt i32 %42, 2
  br i1 %43, label %609, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 4
  %48 = load i8, ptr %47, align 4, !tbaa !136
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %609, label %50

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 16
  %52 = load i32, ptr %51, align 8, !tbaa !141
  switch i32 %52, label %609 [
    i32 5, label %53
    i32 7, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %55) #20
  %59 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3550, ptr noundef nonnull @.str.7) #21
  br label %63

63:                                               ; preds = %57, %62
  %64 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 13
  %65 = load i8, ptr %64, align 8, !tbaa !57
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3551, ptr noundef nonnull @.str.7) #21
  br label %68

68:                                               ; preds = %63, %67
  %69 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 13
  %70 = load i8, ptr %69, align 8, !tbaa !57
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3552, ptr noundef nonnull @.str.7) #21
  br label %73

73:                                               ; preds = %72, %68, %53
  %74 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !51
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3559, ptr noundef nonnull @.str.7) #21
  br label %77

77:                                               ; preds = %73, %76
  %78 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !151
  %79 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %78) #20, !range !149
  %80 = trunc i32 %79 to i8
  switch i8 %80, label %107 [
    i8 3, label %81
    i8 1, label %95
    i8 2, label %609
  ]

81:                                               ; preds = %77
  %82 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %83 = tail call fastcc i32 @tree_operand_length(ptr noundef %82) #20
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %609

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %87 = getelementptr inbounds %struct.tree_exp, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !93
  store ptr %88, ptr %8, align 16, !tbaa !49
  %89 = getelementptr inbounds %struct.tree_exp, ptr %86, i64 1
  %90 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  %91 = load <2 x ptr>, ptr %89, align 8, !tbaa !93
  store <2 x ptr> %91, ptr %90, align 8, !tbaa !49
  %92 = load i64, ptr %86, align 8
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65535
  br label %108

95:                                               ; preds = %77
  %96 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !151
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !93
  %100 = zext i8 %99 to i32
  %101 = icmp eq i8 %99, 2
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3581, ptr noundef nonnull @.str.7) #21
  br label %103

103:                                              ; preds = %95, %102
  %104 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  store ptr %104, ptr %8, align 16, !tbaa !49
  %105 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %106 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !49
  br label %108

107:                                              ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3590, ptr noundef nonnull @.str.7) #21
  br label %108

108:                                              ; preds = %107, %103, %85
  %109 = phi ptr [ undef, %107 ], [ %104, %103 ], [ %88, %85 ]
  %110 = phi i32 [ undef, %107 ], [ %100, %103 ], [ 3, %85 ]
  %111 = phi i32 [ undef, %107 ], [ %96, %103 ], [ %94, %85 ]
  %112 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %113 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !93
  %115 = load i64, ptr %114, align 8
  %116 = trunc i64 %115 to i16
  switch i16 %116, label %609 [
    i16 10, label %117
    i16 12, label %117
    i16 6, label %117
    i16 7, label %117
    i16 8, label %117
    i16 9, label %117
  ]

117:                                              ; preds = %108, %108, %108, %108, %108, %108
  %118 = icmp ugt i32 %110, 1
  br i1 %118, label %119, label %156

119:                                              ; preds = %117
  %120 = add i32 %110, -1
  %121 = icmp eq i32 %111, 56
  %122 = zext i32 %120 to i64
  br label %123

123:                                              ; preds = %119, %147
  %124 = phi i64 [ 0, %119 ], [ %151, %147 ]
  %125 = phi i32 [ 2, %119 ], [ %150, %147 ]
  %126 = phi ptr [ null, %119 ], [ %149, %147 ]
  %127 = phi i8 [ 0, %119 ], [ %148, %147 ]
  %128 = icmp eq i64 %124, 0
  %129 = select i1 %128, i1 %121, i1 false
  br i1 %129, label %147, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %124
  %132 = load ptr, ptr %131, align 8, !tbaa !49
  %133 = call zeroext i8 @vect_is_simple_use(ptr noundef %132, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3611, ptr noundef nonnull @.str.7) #21
  br label %136

136:                                              ; preds = %130, %135
  %137 = load i32, ptr %7, align 4
  %138 = add i32 %137, -1
  %139 = icmp ult i32 %138, 4
  %140 = icmp eq i32 %137, 7
  %141 = and i1 %26, %140
  %142 = or i1 %139, %141
  br i1 %142, label %143, label %609

143:                                              ; preds = %136
  br i1 %140, label %144, label %147

144:                                              ; preds = %143
  %145 = load ptr, ptr %6, align 8, !tbaa !49
  %146 = trunc i64 %124 to i32
  br label %147

147:                                              ; preds = %143, %144, %123
  %148 = phi i8 [ %127, %123 ], [ 1, %144 ], [ %127, %143 ]
  %149 = phi ptr [ %126, %123 ], [ %145, %144 ], [ %126, %143 ]
  %150 = phi i32 [ %125, %123 ], [ %146, %144 ], [ %125, %143 ]
  %151 = add nuw nsw i64 %124, 1
  %152 = icmp eq i64 %151, %122
  br i1 %152, label %153, label %123, !llvm.loop !209

153:                                              ; preds = %147
  %154 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %122
  %155 = load ptr, ptr %154, align 8, !tbaa !49
  br label %156

156:                                              ; preds = %117, %153
  %157 = phi ptr [ %155, %153 ], [ %109, %117 ]
  %158 = phi i8 [ %148, %153 ], [ 0, %117 ]
  %159 = phi ptr [ %149, %153 ], [ null, %117 ]
  %160 = phi i32 [ %150, %153 ], [ 2, %117 ]
  %161 = call zeroext i8 @vect_is_simple_use(ptr noundef %157, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3629, ptr noundef nonnull @.str.7) #21
  br label %164

164:                                              ; preds = %156, %163
  %165 = load i32, ptr %7, align 4
  %166 = and i32 %165, -3
  %167 = icmp eq i32 %166, 5
  br i1 %167, label %179, label %168

168:                                              ; preds = %164
  %169 = and i32 %165, -2
  %170 = icmp eq i32 %169, 2
  %171 = icmp eq i32 %165, 1
  %172 = or i1 %171, %170
  %173 = icmp eq i32 %165, 4
  %174 = or i1 %173, %172
  %175 = and i1 %26, %174
  %176 = icmp ne i8 %158, 0
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %179, label %178

178:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3634, ptr noundef nonnull @.str.7) #21
  br label %179

179:                                              ; preds = %164, %168, %178
  %180 = icmp eq i8 %158, 0
  %181 = load ptr, ptr %6, align 8
  %182 = select i1 %180, ptr %181, ptr %159
  %183 = call fastcc i32 @gimple_code(ptr noundef %182) #20, !range !149
  %184 = icmp eq i32 %183, 16
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3638, ptr noundef nonnull @.str.7) #21
  br label %186

186:                                              ; preds = %179, %185
  %187 = zext i1 %33 to i8
  %188 = call ptr @vect_is_simple_reduction(ptr noundef nonnull %14, ptr noundef %182, i8 noundef zeroext %187, ptr noundef nonnull %9) #20
  br i1 %56, label %191, label %189

189:                                              ; preds = %186
  %190 = icmp eq ptr %55, %188
  br i1 %190, label %195, label %193

191:                                              ; preds = %186
  %192 = icmp eq ptr %188, %0
  br i1 %192, label %195, label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ 3643, %189 ], [ 3646, %191 ]
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %194, ptr noundef nonnull @.str.7) #21
  br label %195

195:                                              ; preds = %193, %191, %189
  %196 = call fastcc ptr @vinfo_for_stmt(ptr noundef %182) #20
  %197 = getelementptr inbounds %struct._stmt_vec_info, ptr %196, i64 0, i32 4
  %198 = load i8, ptr %197, align 4, !tbaa !136
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %609

200:                                              ; preds = %195
  %201 = load i64, ptr %12, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 14
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %210

206:                                              ; preds = %200
  %207 = load i32, ptr %16, align 4
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  br label %210

210:                                              ; preds = %206, %204
  %211 = phi i32 [ %205, %204 ], [ %209, %206 ]
  %212 = icmp ne i32 %111, 56
  br i1 %212, label %225, label %213

213:                                              ; preds = %210
  %214 = sext i32 %160 to i64
  %215 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !49
  %217 = call zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %216, i32 noundef 0) #21
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %366

219:                                              ; preds = %213
  %220 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %609, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %224 = call i64 @fwrite(ptr nonnull @.str.65, i64 34, i64 1, ptr %223)
  br label %609

225:                                              ; preds = %210
  %226 = call ptr @optab_for_tree_code(i32 noundef %111, ptr noundef nonnull %12, i32 noundef 0) #21
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %609, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %233 = call i64 @fwrite(ptr nonnull @.str.66, i64 9, i64 1, ptr %232)
  br label %609

234:                                              ; preds = %225
  %235 = sext i32 %211 to i64
  %236 = getelementptr inbounds %struct.optab_d, ptr %226, i64 0, i32 4, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !210
  %238 = icmp eq i32 %237, 2956
  br i1 %238, label %239, label %260

239:                                              ; preds = %234
  %240 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %244 = call i64 @fwrite(ptr nonnull @.str.67, i64 27, i64 1, ptr %243)
  br label %245

245:                                              ; preds = %242, %239
  %246 = zext i32 %211 to i64
  %247 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !93
  %249 = icmp eq i8 %248, 4
  br i1 %249, label %250, label %609

250:                                              ; preds = %245
  %251 = load i32, ptr %22, align 8, !tbaa !119
  %252 = call i32 @vect_min_worthwhile_factor(i32 noundef %111) #20, !range !212
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %609, label %254

254:                                              ; preds = %250
  %255 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %259 = call i64 @fwrite(ptr nonnull @.str.68, i64 27, i64 1, ptr %258)
  br label %260

260:                                              ; preds = %254, %257, %234
  %261 = load i64, ptr %12, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 14
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %270

266:                                              ; preds = %260
  %267 = load i32, ptr %16, align 4
  %268 = lshr i32 %267, 16
  %269 = and i32 %268, 255
  br label %270

270:                                              ; preds = %266, %264
  %271 = phi i32 [ %265, %264 ], [ %269, %266 ]
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !93
  %275 = icmp eq i8 %274, 12
  br i1 %275, label %366, label %276

276:                                              ; preds = %270
  %277 = load i64, ptr %12, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 14
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %286

282:                                              ; preds = %276
  %283 = load i32, ptr %16, align 4
  %284 = lshr i32 %283, 16
  %285 = and i32 %284, 255
  br label %286

286:                                              ; preds = %282, %280
  %287 = phi i32 [ %281, %280 ], [ %285, %282 ]
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !93
  %291 = icmp eq i8 %290, 17
  br i1 %291, label %366, label %292

292:                                              ; preds = %286
  %293 = load i64, ptr %12, align 8
  %294 = and i64 %293, 65535
  %295 = icmp eq i64 %294, 14
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %302

298:                                              ; preds = %292
  %299 = load i32, ptr %16, align 4
  %300 = lshr i32 %299, 16
  %301 = and i32 %300, 255
  br label %302

302:                                              ; preds = %298, %296
  %303 = phi i32 [ %297, %296 ], [ %301, %298 ]
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !93
  %307 = icmp eq i8 %306, 13
  br i1 %307, label %366, label %308

308:                                              ; preds = %302
  %309 = load i64, ptr %12, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 14
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %318

314:                                              ; preds = %308
  %315 = load i32, ptr %16, align 4
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  br label %318

318:                                              ; preds = %314, %312
  %319 = phi i32 [ %313, %312 ], [ %317, %314 ]
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !93
  %323 = icmp eq i8 %322, 14
  br i1 %323, label %366, label %324

324:                                              ; preds = %318
  %325 = load i64, ptr %12, align 8
  %326 = and i64 %325, 65535
  %327 = icmp eq i64 %326, 14
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %334

330:                                              ; preds = %324
  %331 = load i32, ptr %16, align 4
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 255
  br label %334

334:                                              ; preds = %330, %328
  %335 = phi i32 [ %329, %328 ], [ %333, %330 ]
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !93
  %339 = icmp eq i8 %338, 15
  br i1 %339, label %366, label %340

340:                                              ; preds = %334
  %341 = load i64, ptr %12, align 8
  %342 = and i64 %341, 65535
  %343 = icmp eq i64 %342, 14
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  br label %350

346:                                              ; preds = %340
  %347 = load i32, ptr %16, align 4
  %348 = lshr i32 %347, 16
  %349 = and i32 %348, 255
  br label %350

350:                                              ; preds = %346, %344
  %351 = phi i32 [ %345, %344 ], [ %349, %346 ]
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !93
  %355 = icmp eq i8 %354, 16
  br i1 %355, label %366, label %356

356:                                              ; preds = %350
  %357 = load i32, ptr %22, align 8, !tbaa !119
  %358 = call i32 @vect_min_worthwhile_factor(i32 noundef %111) #20, !range !212
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %366

360:                                              ; preds = %356
  %361 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %609, label %363

363:                                              ; preds = %360
  %364 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %365 = call i64 @fwrite(ptr nonnull @.str.69, i64 36, i64 1, ptr %364)
  br label %609

366:                                              ; preds = %270, %286, %302, %318, %334, %350, %356, %213
  br i1 %56, label %395, label %367

367:                                              ; preds = %366
  %368 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %55) #20, !range !151
  %369 = load ptr, ptr %5, align 8, !tbaa !49
  %370 = getelementptr inbounds %struct.tree_common, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !93
  %372 = call ptr @get_vectype_for_scalar_type(ptr noundef %371) #21
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %384

374:                                              ; preds = %367
  %375 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %609, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %379 = call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr %378)
  %380 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %381 = load ptr, ptr %5, align 8, !tbaa !49
  %382 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !93
  call void @print_generic_expr(ptr noundef %380, ptr noundef %383, i32 noundef 2) #21
  br label %609

384:                                              ; preds = %367
  %385 = load i64, ptr %372, align 8
  %386 = and i64 %385, 65535
  %387 = icmp eq i64 %386, 14
  br i1 %387, label %388, label %390

388:                                              ; preds = %384
  %389 = call i32 @vector_type_mode(ptr noundef nonnull %372) #21
  br label %395

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.tree_type, ptr %372, i64 0, i32 6
  %392 = load i32, ptr %391, align 4
  %393 = lshr i32 %392, 16
  %394 = and i32 %393, 255
  br label %395

395:                                              ; preds = %366, %388, %390
  %396 = phi i32 [ %389, %388 ], [ %394, %390 ], [ %211, %366 ]
  %397 = phi i32 [ %368, %388 ], [ %368, %390 ], [ %111, %366 ]
  %398 = phi ptr [ %372, %388 ], [ %372, %390 ], [ %12, %366 ]
  br i1 %26, label %399, label %431

399:                                              ; preds = %395
  %400 = call fastcc ptr @gimple_bb(ptr noundef %182) #20
  %401 = getelementptr inbounds %struct.basic_block_def, ptr %400, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !111
  %403 = call ptr @loop_preheader_edge(ptr noundef %402) #21
  %404 = getelementptr inbounds %struct.edge_def, ptr %403, i64 0, i32 6
  %405 = load i32, ptr %404, align 4, !tbaa !147
  %406 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %182, i32 noundef %405) #20
  %407 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %406) #20
  %408 = load i64, ptr %407, align 8
  %409 = and i64 %408, 65535
  %410 = icmp eq i64 %409, 141
  br i1 %410, label %411, label %431

411:                                              ; preds = %399
  %412 = getelementptr inbounds %struct.tree_ssa_name, ptr %407, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !93
  %414 = icmp eq ptr %413, null
  br i1 %414, label %431, label %415

415:                                              ; preds = %411
  %416 = call fastcc i32 @gimple_code(ptr noundef nonnull %413) #20, !range !149
  %417 = icmp eq i32 %416, 16
  br i1 %417, label %418, label %431

418:                                              ; preds = %415
  %419 = call fastcc ptr @gimple_bb(ptr noundef nonnull %413) #20
  %420 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %32, ptr noundef %419) #21
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %418
  %423 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %413) #20
  %424 = icmp eq ptr %423, null
  br i1 %424, label %431, label %425

425:                                              ; preds = %422
  %426 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %413) #20
  %427 = getelementptr inbounds %struct._stmt_vec_info, ptr %426, i64 0, i32 16
  %428 = load i32, ptr %427, align 8, !tbaa !141
  %429 = icmp eq i32 %428, 6
  %430 = zext i1 %429 to i8
  br label %431

431:                                              ; preds = %425, %399, %411, %415, %418, %422, %395
  %432 = phi i1 [ false, %422 ], [ false, %418 ], [ false, %415 ], [ false, %411 ], [ false, %399 ], [ false, %395 ], [ %429, %425 ]
  %433 = phi i8 [ 0, %422 ], [ 0, %418 ], [ 0, %415 ], [ 0, %411 ], [ 0, %399 ], [ 0, %395 ], [ %430, %425 ]
  store i32 0, ptr %4, align 4, !tbaa !152
  %434 = call fastcc zeroext i8 @reduction_code_for_scalar_code(i32 noundef %397, ptr noundef nonnull %4) #20, !range !51
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %459, label %436

436:                                              ; preds = %431
  %437 = load i32, ptr %4, align 4, !tbaa !152
  %438 = call ptr @optab_for_tree_code(i32 noundef %437, ptr noundef nonnull %398, i32 noundef 0) #21
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %447

440:                                              ; preds = %436
  %441 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %445 = call i64 @fwrite(ptr nonnull @.str.71, i64 23, i64 1, ptr %444)
  br label %446

446:                                              ; preds = %443, %440
  store i32 0, ptr %4, align 4, !tbaa !152
  br label %467

447:                                              ; preds = %436
  %448 = sext i32 %396 to i64
  %449 = getelementptr inbounds %struct.optab_d, ptr %438, i64 0, i32 4, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !210
  %451 = icmp eq i32 %450, 2956
  br i1 %451, label %452, label %467

452:                                              ; preds = %447
  %453 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %458, label %455

455:                                              ; preds = %452
  %456 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %457 = call i64 @fwrite(ptr nonnull @.str.72, i64 33, i64 1, ptr %456)
  br label %458

458:                                              ; preds = %455, %452
  store i32 0, ptr %4, align 4, !tbaa !152
  br label %467

459:                                              ; preds = %431
  %460 = or i1 %432, %33
  br i1 %460, label %461, label %467

461:                                              ; preds = %459
  %462 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %609, label %464

464:                                              ; preds = %461
  %465 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %466 = call i64 @fwrite(ptr nonnull @.str.73, i64 30, i64 1, ptr %465)
  br label %609

467:                                              ; preds = %446, %459, %447, %458
  %468 = icmp sgt i32 %24, 1
  %469 = select i1 %432, i1 %468, i1 false
  br i1 %469, label %470, label %476

470:                                              ; preds = %467
  %471 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %609, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %475 = call i64 @fwrite(ptr nonnull @.str.74, i64 34, i64 1, ptr %474)
  br label %609

476:                                              ; preds = %467
  %477 = icmp eq ptr %2, null
  br i1 %477, label %478, label %481

478:                                              ; preds = %476
  store i32 7, ptr %10, align 8, !tbaa !95
  %479 = load i32, ptr %4, align 4, !tbaa !152
  %480 = call fastcc zeroext i8 @vect_model_reduction_cost(ptr noundef nonnull %10, i32 noundef %479, i32 noundef %24) #20, !range !51
  br label %609

481:                                              ; preds = %476
  %482 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %486 = call i64 @fwrite(ptr nonnull @.str.75, i64 20, i64 1, ptr %485)
  br label %487

487:                                              ; preds = %484, %481
  %488 = icmp eq i32 %24, 1
  %489 = select i1 %212, i1 true, i1 %488
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3835, ptr noundef nonnull @.str.7) #21
  br label %491

491:                                              ; preds = %490, %487
  %492 = call ptr @vect_create_destination_var(ptr noundef %112, ptr noundef nonnull %398) #21
  %493 = load i32, ptr %41, align 8, !tbaa !133
  %494 = icmp eq i32 %493, 0
  %495 = select i1 %494, i32 1, i32 %24
  br i1 %34, label %496, label %597

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 2
  %498 = icmp eq i32 %110, 3
  %499 = icmp eq i32 %160, 0
  %500 = zext i1 %499 to i64
  %501 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %500
  %502 = icmp eq i32 %110, 2
  %503 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  %504 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  %505 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 6
  br label %506

506:                                              ; preds = %496, %591
  %507 = phi ptr [ null, %496 ], [ %581, %591 ]
  %508 = phi ptr [ null, %496 ], [ %582, %591 ]
  %509 = phi i32 [ 0, %496 ], [ %595, %591 ]
  %510 = phi ptr [ null, %496 ], [ %586, %591 ]
  %511 = phi ptr [ null, %496 ], [ %583, %591 ]
  %512 = phi ptr [ null, %496 ], [ %584, %591 ]
  %513 = phi ptr [ null, %496 ], [ %594, %591 ]
  %514 = phi ptr [ null, %496 ], [ %593, %591 ]
  %515 = phi ptr [ null, %496 ], [ %525, %591 ]
  %516 = icmp ne i32 %509, 0
  %517 = and i1 %494, %516
  br i1 %517, label %524, label %518

518:                                              ; preds = %506
  %519 = load ptr, ptr %497, align 8, !tbaa !83
  %520 = call ptr @create_phi_node(ptr noundef %492, ptr noundef %519) #21
  %521 = call ptr @new_stmt_vec_info(ptr noundef %520, ptr noundef nonnull %14, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %520, ptr noundef %521) #20
  %522 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %520) #20
  %523 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %522) #20
  br label %524

524:                                              ; preds = %506, %518
  %525 = phi ptr [ %515, %506 ], [ %520, %518 ]
  %526 = phi ptr [ %511, %506 ], [ %523, %518 ]
  br i1 %212, label %529, label %527

527:                                              ; preds = %524
  %528 = call zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %526, i32 noundef %160) #21
  br label %601

529:                                              ; preds = %524
  %530 = icmp eq i32 %509, 0
  br i1 %530, label %531, label %541

531:                                              ; preds = %529
  %532 = load ptr, ptr %501, align 8, !tbaa !49
  %533 = call ptr @vect_get_vec_def_for_operand(ptr noundef %532, ptr noundef %0, ptr noundef null) #21
  br i1 %498, label %534, label %555

534:                                              ; preds = %531
  br i1 %499, label %535, label %538

535:                                              ; preds = %534
  %536 = load ptr, ptr %504, align 16, !tbaa !49
  %537 = call ptr @vect_get_vec_def_for_operand(ptr noundef %536, ptr noundef %0, ptr noundef null) #21
  br label %570

538:                                              ; preds = %534
  %539 = load ptr, ptr %503, align 8, !tbaa !49
  %540 = call ptr @vect_get_vec_def_for_operand(ptr noundef %539, ptr noundef %0, ptr noundef null) #21
  br label %565

541:                                              ; preds = %529
  %542 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %507) #21
  br i1 %498, label %543, label %545

543:                                              ; preds = %541
  %544 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %508) #21
  br label %545

545:                                              ; preds = %543, %541
  %546 = phi ptr [ %544, %543 ], [ %508, %541 ]
  br i1 %494, label %547, label %549

547:                                              ; preds = %545
  %548 = call fastcc ptr @gimple_assign_lhs(ptr noundef %510) #20
  br label %552

549:                                              ; preds = %545
  %550 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %525) #20
  %551 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %550) #20
  br label %552

552:                                              ; preds = %549, %547
  %553 = phi ptr [ %548, %547 ], [ %551, %549 ]
  %554 = getelementptr inbounds %struct._stmt_vec_info, ptr %513, i64 0, i32 14
  store ptr %525, ptr %554, align 8, !tbaa !54
  br label %555

555:                                              ; preds = %531, %552
  %556 = phi ptr [ %512, %552 ], [ %525, %531 ]
  %557 = phi ptr [ %553, %552 ], [ %526, %531 ]
  %558 = phi ptr [ %546, %552 ], [ %508, %531 ]
  %559 = phi ptr [ %542, %552 ], [ %533, %531 ]
  br i1 %502, label %560, label %565

560:                                              ; preds = %555
  br i1 %499, label %561, label %563

561:                                              ; preds = %560
  %562 = call ptr @build2_stat(i32 noundef %111, ptr noundef nonnull %398, ptr noundef %557, ptr noundef %559) #21
  br label %580

563:                                              ; preds = %560
  %564 = call ptr @build2_stat(i32 noundef %111, ptr noundef nonnull %398, ptr noundef %559, ptr noundef %557) #21
  br label %580

565:                                              ; preds = %538, %555
  %566 = phi ptr [ %559, %555 ], [ %533, %538 ]
  %567 = phi ptr [ %558, %555 ], [ %540, %538 ]
  %568 = phi ptr [ %557, %555 ], [ %526, %538 ]
  %569 = phi ptr [ %556, %555 ], [ %525, %538 ]
  switch i32 %160, label %578 [
    i32 0, label %570
    i32 1, label %576
  ]

570:                                              ; preds = %535, %565
  %571 = phi ptr [ %525, %535 ], [ %569, %565 ]
  %572 = phi ptr [ %526, %535 ], [ %568, %565 ]
  %573 = phi ptr [ %537, %535 ], [ %567, %565 ]
  %574 = phi ptr [ %533, %535 ], [ %566, %565 ]
  %575 = call ptr @build3_stat(i32 noundef %111, ptr noundef nonnull %398, ptr noundef %572, ptr noundef %574, ptr noundef %573) #21
  br label %580

576:                                              ; preds = %565
  %577 = call ptr @build3_stat(i32 noundef %111, ptr noundef nonnull %398, ptr noundef %566, ptr noundef %568, ptr noundef %567) #21
  br label %580

578:                                              ; preds = %565
  %579 = call ptr @build3_stat(i32 noundef %111, ptr noundef nonnull %398, ptr noundef %566, ptr noundef %567, ptr noundef %568) #21
  br label %580

580:                                              ; preds = %570, %578, %576, %561, %563
  %581 = phi ptr [ %559, %561 ], [ %559, %563 ], [ %574, %570 ], [ %566, %576 ], [ %566, %578 ]
  %582 = phi ptr [ %558, %561 ], [ %558, %563 ], [ %573, %570 ], [ %567, %576 ], [ %567, %578 ]
  %583 = phi ptr [ %557, %561 ], [ %557, %563 ], [ %572, %570 ], [ %568, %576 ], [ %568, %578 ]
  %584 = phi ptr [ %556, %561 ], [ %556, %563 ], [ %571, %570 ], [ %569, %576 ], [ %569, %578 ]
  %585 = phi ptr [ %562, %561 ], [ %564, %563 ], [ %575, %570 ], [ %577, %576 ], [ %579, %578 ]
  %586 = call ptr @gimple_build_assign_stat(ptr noundef %492, ptr noundef %585) #21
  %587 = call fastcc ptr @make_ssa_name(ptr noundef %492, ptr noundef %586) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %586, ptr noundef %587) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %586, ptr noundef %1) #21
  br i1 %530, label %588, label %589

588:                                              ; preds = %580
  store ptr %586, ptr %2, align 8, !tbaa !49
  br label %591

589:                                              ; preds = %580
  %590 = getelementptr inbounds %struct._stmt_vec_info, ptr %514, i64 0, i32 14
  br label %591

591:                                              ; preds = %589, %588
  %592 = phi ptr [ %590, %589 ], [ %505, %588 ]
  store ptr %586, ptr %592, align 8, !tbaa !49
  %593 = call fastcc ptr @vinfo_for_stmt(ptr noundef %586) #20
  %594 = call fastcc ptr @vinfo_for_stmt(ptr noundef %525) #20
  %595 = add nuw nsw i32 %509, 1
  %596 = icmp eq i32 %595, %24
  br i1 %596, label %597, label %506, !llvm.loop !213

597:                                              ; preds = %591, %491
  %598 = phi ptr [ null, %491 ], [ %587, %591 ]
  %599 = phi ptr [ null, %491 ], [ %584, %591 ]
  %600 = and i1 %212, %494
  br i1 %600, label %605, label %601

601:                                              ; preds = %527, %597
  %602 = phi ptr [ %525, %527 ], [ %599, %597 ]
  %603 = load ptr, ptr %2, align 8, !tbaa !49
  %604 = call fastcc ptr @gimple_assign_lhs(ptr noundef %603) #20
  br label %605

605:                                              ; preds = %597, %601
  %606 = phi ptr [ %602, %601 ], [ %599, %597 ]
  %607 = phi ptr [ %604, %601 ], [ %598, %597 ]
  %608 = load i32, ptr %4, align 4, !tbaa !152
  call fastcc void @vect_create_epilog_for_reduction(ptr noundef %607, ptr noundef %0, i32 noundef %495, i32 noundef %608, ptr noundef %606, i32 noundef %160, i8 noundef zeroext %433) #20
  br label %609

609:                                              ; preds = %136, %478, %470, %473, %461, %464, %374, %377, %360, %363, %245, %250, %228, %231, %219, %222, %195, %108, %77, %81, %50, %46, %40, %36, %605
  %610 = phi i8 [ 1, %605 ], [ 0, %36 ], [ 0, %40 ], [ 0, %46 ], [ 0, %50 ], [ 0, %81 ], [ 0, %77 ], [ 0, %108 ], [ 0, %195 ], [ 0, %222 ], [ 0, %219 ], [ 0, %231 ], [ 0, %228 ], [ 0, %250 ], [ 0, %245 ], [ 0, %363 ], [ 0, %360 ], [ 0, %377 ], [ 0, %374 ], [ 0, %464 ], [ 0, %461 ], [ 0, %473 ], [ 0, %470 ], [ %480, %478 ], [ 0, %136 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i8 %610
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !214 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !152
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !93
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !93
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare zeroext i8 @vect_is_simple_use(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vectorizable_condition(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @vect_min_worthwhile_factor(i32 noundef %0) local_unnamed_addr #11 !prof !34 {
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

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @reduction_code_for_scalar_code(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !prof !34 !PGOFuncName !215 {
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
  store i32 %7, ptr %1, align 4, !tbaa !152
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %6 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_model_reduction_cost(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !216 {
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.processor_costs, ptr %7, i64 0, i32 40
  %9 = load i32, ptr %8, align 4, !tbaa !217
  %10 = mul nsw i32 %9, %2
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !184
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %12, align 4, !tbaa !184
  %15 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !218
  %17 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %16) #20, !range !151
  %18 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %17) #20, !range !149
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %33 [
    i8 3, label %20
    i8 2, label %29
    i8 1, label %31
  ]

20:                                               ; preds = %3
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #20
  %22 = tail call fastcc i32 @tree_operand_length(ptr noundef %21) #20
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2249, ptr noundef nonnull @.str.7) #21
  br label %25

25:                                               ; preds = %20, %24
  %26 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  br label %34

29:                                               ; preds = %3
  %30 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #20
  br label %34

31:                                               ; preds = %3
  %32 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %16) #20
  br label %34

33:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2259, ptr noundef nonnull @.str.7) #21
  br label %34

34:                                               ; preds = %33, %31, %29, %25
  %35 = phi ptr [ undef, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %25 ]
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %141, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %45 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr %44)
  %46 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %47 = load ptr, ptr %36, align 8, !tbaa !93
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef %47, i32 noundef 2) #21
  br label %141

48:                                               ; preds = %34
  %49 = load i64, ptr %38, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 @vector_type_mode(ptr noundef nonnull %38) #21
  br label %59

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %54, %52
  %60 = phi i32 [ %53, %52 ], [ %58, %54 ]
  %61 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %15, align 8, !tbaa !218
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %62, %59 ], [ %65, %64 ]
  %68 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %67) #20, !range !151
  %69 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %70 = getelementptr inbounds %struct.processor_costs, ptr %69, i64 0, i32 42
  %71 = load i32, ptr %70, align 4, !tbaa !219
  %72 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %6, ptr noundef %67) #20, !range !51
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %66
  %75 = icmp eq i32 %1, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.processor_costs, ptr %69, i64 0, i32 40
  %78 = load i32, ptr %77, align 4, !tbaa !217
  %79 = getelementptr inbounds %struct.processor_costs, ptr %69, i64 0, i32 41
  %80 = load i32, ptr %79, align 4, !tbaa !220
  %81 = add i32 %78, %71
  %82 = add i32 %81, %80
  br label %132

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !93
  %86 = tail call i64 @tree_low_cst(ptr noundef %85, i32 noundef 1) #21
  %87 = trunc i64 %86 to i32
  %88 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %67) #20
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !93
  %93 = tail call i64 @tree_low_cst(ptr noundef %92, i32 noundef 1) #21
  %94 = trunc i64 %93 to i32
  %95 = sdiv i32 %87, %94
  %96 = tail call ptr @optab_for_tree_code(i32 noundef %68, ptr noundef nonnull %38, i32 noundef 0) #21
  %97 = zext i32 %60 to i64
  %98 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !93
  %100 = add i8 %99, -12
  %101 = icmp ult i8 %100, 6
  br i1 %101, label %102, label %122

102:                                              ; preds = %83
  %103 = sext i32 %60 to i64
  %104 = getelementptr inbounds %struct.optab_d, ptr %96, i64 0, i32 4, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !210
  %106 = icmp eq i32 %105, 2956
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 %103
  %109 = load i32, ptr %108, align 4, !tbaa !210
  %110 = icmp eq i32 %109, 2956
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = sext i32 %95 to i64
  %113 = tail call i32 @exact_log2(i64 noundef %112) #21
  %114 = shl nsw i32 %113, 1
  %115 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %116 = getelementptr inbounds %struct.processor_costs, ptr %115, i64 0, i32 40
  %117 = load i32, ptr %116, align 4, !tbaa !217
  %118 = mul nsw i32 %114, %117
  %119 = getelementptr inbounds %struct.processor_costs, ptr %115, i64 0, i32 41
  %120 = load i32, ptr %119, align 4, !tbaa !220
  %121 = add nsw i32 %118, %120
  br label %129

122:                                              ; preds = %83, %107, %102
  %123 = shl nsw i32 %95, 1
  %124 = add nsw i32 %123, -1
  %125 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %126 = getelementptr inbounds %struct.processor_costs, ptr %125, i64 0, i32 40
  %127 = load i32, ptr %126, align 4, !tbaa !217
  %128 = mul nsw i32 %127, %124
  br label %129

129:                                              ; preds = %122, %111
  %130 = phi i32 [ %121, %111 ], [ %128, %122 ]
  %131 = add nsw i32 %130, %71
  br label %132

132:                                              ; preds = %76, %129, %66
  %133 = phi i32 [ %71, %66 ], [ %82, %76 ], [ %131, %129 ]
  store i32 %133, ptr %11, align 4, !tbaa !185
  %134 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %138 = load i32, ptr %12, align 4, !tbaa !184
  %139 = load i32, ptr %11, align 4, !tbaa !185
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.137, i32 noundef %138, i32 noundef %139) #20
  br label %141

141:                                              ; preds = %132, %136, %40, %43
  %142 = phi i8 [ 0, %43 ], [ 0, %40 ], [ 1, %136 ], [ 1, %132 ]
  ret i8 %142
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_vinfo_for_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !221 {
  %3 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.89, i32 noundef 639, ptr noundef nonnull @.str.7) #21
  br label %8

8:                                                ; preds = %5, %7
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %9) #20
  %11 = add i32 %10, 1
  tail call fastcc void @gimple_set_uid(ptr noundef %0, i32 noundef %11) #20
  tail call fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %1) #20
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = add i32 %3, -1
  tail call fastcc void @VEC_vec_void_p_base_replace(ptr noundef %13, i32 noundef %14, ptr noundef %1) #20
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vect_get_vec_def_for_stmt_copy(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !222 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !49
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !223 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !93
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @vect_finish_stmt_generation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_epilog_for_reduction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !prof !34 !PGOFuncName !224 {
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.immediate_use_iterator_d, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #20
  %15 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  store ptr null, ptr %12, align 8, !tbaa !49
  %19 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %17, ptr noundef %1) #20, !range !51
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.loop, ptr %17, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  br label %24

24:                                               ; preds = %21, %7
  %25 = phi ptr [ %17, %21 ], [ null, %7 ]
  %26 = phi ptr [ %23, %21 ], [ %17, %7 ]
  %27 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !151
  %28 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %27) #20, !range !149
  %29 = trunc i32 %28 to i8
  switch i8 %29, label %48 [
    i8 3, label %30
    i8 2, label %40
    i8 1, label %42
  ]

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %32 = tail call fastcc i32 @tree_operand_length(ptr noundef %31) #20
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2942, ptr noundef nonnull @.str.7) #21
  br label %35

35:                                               ; preds = %30, %34
  %36 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %37 = sext i32 %5 to i64
  %38 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  br label %49

40:                                               ; preds = %24
  %41 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  br label %49

42:                                               ; preds = %24
  %43 = icmp eq i32 %5, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  br label %49

46:                                               ; preds = %42
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  br label %49

48:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2953, ptr noundef nonnull @.str.7) #21
  br label %49

49:                                               ; preds = %44, %46, %48, %40, %35
  %50 = phi ptr [ undef, %48 ], [ %41, %40 ], [ %39, %35 ], [ %45, %44 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !93
  %53 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %52) #21
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2957, ptr noundef nonnull @.str.7) #21
  br label %56

56:                                               ; preds = %49, %55
  %57 = load i64, ptr %53, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 14
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call i32 @vector_type_mode(ptr noundef nonnull %53) #21
  br label %67

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i32 [ %61, %60 ], [ %66, %62 ]
  %69 = call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %50, ptr noundef %1, ptr noundef nonnull %10) #21
  %70 = icmp sgt i32 %2, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = call ptr @single_exit(ptr noundef %26) #21
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  br label %131

75:                                               ; preds = %67, %97
  %76 = phi ptr [ %100, %97 ], [ %4, %67 ]
  %77 = phi ptr [ %84, %97 ], [ %0, %67 ]
  %78 = phi i32 [ %101, %97 ], [ 0, %67 ]
  %79 = call ptr @loop_preheader_edge(ptr noundef %26) #21
  call void @add_phi_arg(ptr noundef %76, ptr noundef %69, ptr noundef %79, i32 noundef 0) #21
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %77) #21
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi ptr [ %82, %81 ], [ %77, %75 ]
  %85 = call ptr @loop_latch_edge(ptr noundef %26) #21
  call void @add_phi_arg(ptr noundef %76, ptr noundef %84, ptr noundef %85, i32 noundef 0) #21
  %86 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %90 = call i64 @fwrite(ptr nonnull @.str.138, i64 44, i64 1, ptr %89)
  %91 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %91, ptr noundef %76, i32 noundef 0, i32 noundef 2) #21
  %92 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %93 = call i32 @fputc(i32 10, ptr %92)
  %94 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %95 = getelementptr inbounds %struct.tree_ssa_name, ptr %84, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !93
  call void @print_gimple_stmt(ptr noundef %94, ptr noundef %96, i32 noundef 0, i32 noundef 2) #21
  br label %97

97:                                               ; preds = %88, %83
  %98 = call fastcc ptr @vinfo_for_stmt(ptr noundef %76) #20
  %99 = getelementptr inbounds %struct._stmt_vec_info, ptr %98, i64 0, i32 14
  %100 = load ptr, ptr %99, align 8, !tbaa !54
  %101 = add nuw nsw i32 %78, 1
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %103, label %75, !llvm.loop !225

103:                                              ; preds = %97
  %104 = call ptr @single_exit(ptr noundef %26) #21
  %105 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !91
  br i1 %70, label %107, label %131

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  br label %109

109:                                              ; preds = %107, %121
  %110 = phi ptr [ null, %107 ], [ %128, %121 ]
  %111 = phi ptr [ null, %107 ], [ %123, %121 ]
  %112 = phi ptr [ %0, %107 ], [ %122, %121 ]
  %113 = phi i32 [ 0, %107 ], [ %129, %121 ]
  %114 = load ptr, ptr %108, align 8, !tbaa !93
  %115 = call ptr @create_phi_node(ptr noundef %114, ptr noundef %106) #21
  %116 = call ptr @new_stmt_vec_info(ptr noundef %115, ptr noundef nonnull %16, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %115, ptr noundef %116) #20
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %109
  %119 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef 8, ptr noundef %112) #21
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %110, i64 0, i32 14
  store ptr %115, ptr %120, align 8, !tbaa !54
  br label %121

121:                                              ; preds = %109, %118
  %122 = phi ptr [ %119, %118 ], [ %112, %109 ]
  %123 = phi ptr [ %111, %118 ], [ %115, %109 ]
  %124 = call ptr @single_exit(ptr noundef %26) #21
  %125 = getelementptr inbounds %struct.edge_def, ptr %124, i64 0, i32 6
  %126 = load i32, ptr %125, align 4, !tbaa !147
  %127 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %115, i32 noundef %126) #20
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %127, ptr noundef %122) #20
  %128 = call fastcc ptr @vinfo_for_stmt(ptr noundef %115) #20
  %129 = add nuw nsw i32 %113, 1
  %130 = icmp eq i32 %129, %2
  br i1 %130, label %131, label %109, !llvm.loop !226

131:                                              ; preds = %121, %71, %103
  %132 = phi ptr [ %106, %103 ], [ %74, %71 ], [ %106, %121 ]
  %133 = phi ptr [ null, %103 ], [ null, %71 ], [ %123, %121 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %132) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #19
  %134 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 14
  %135 = load ptr, ptr %134, align 8, !tbaa !54
  %136 = icmp eq ptr %135, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %131
  %138 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %135) #20
  %139 = getelementptr inbounds %struct._stmt_vec_info, ptr %138, i64 0, i32 13
  %140 = load i8, ptr %139, align 8, !tbaa !57
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3061, ptr noundef nonnull @.str.7) #21
  br label %143

143:                                              ; preds = %137, %142
  %144 = getelementptr inbounds %struct._stmt_vec_info, ptr %138, i64 0, i32 14
  %145 = load ptr, ptr %144, align 8, !tbaa !54
  %146 = icmp eq ptr %145, %1
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3062, ptr noundef nonnull @.str.7) #21
  br label %148

148:                                              ; preds = %147, %143, %131
  %149 = phi ptr [ %1, %131 ], [ %135, %143 ], [ %135, %147 ]
  %150 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %149) #20, !range !151
  %151 = call fastcc ptr @gimple_assign_lhs(ptr noundef %149) #20
  %152 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !93
  %154 = call ptr @vect_create_destination_var(ptr noundef %151, ptr noundef null) #21
  %155 = getelementptr inbounds %struct.tree_type, ptr %153, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !93
  %157 = icmp eq i32 %150, 64
  %158 = select i1 %157, i32 63, i32 %150
  %159 = icmp ne i8 %6, 0
  %160 = or i1 %159, %20
  br i1 %160, label %161, label %276

161:                                              ; preds = %148
  %162 = icmp eq i32 %2, 1
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3091, ptr noundef nonnull @.str.7) #21
  br label %164

164:                                              ; preds = %161, %163
  %165 = icmp eq i32 %3, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %164
  %167 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %171 = call i64 @fwrite(ptr nonnull @.str.140, i64 37, i64 1, ptr %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = call ptr @vect_create_destination_var(ptr noundef nonnull %151, ptr noundef nonnull %53) #21
  %174 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %133) #20
  %175 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %174) #20
  %176 = call ptr @build1_stat(i32 noundef %3, ptr noundef nonnull %53, ptr noundef %175) #21
  %177 = call ptr @gimple_build_assign_stat(ptr noundef %173, ptr noundef %176) #21
  %178 = call fastcc ptr @make_ssa_name(ptr noundef %173, ptr noundef %177) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %177, ptr noundef %178) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %177, i32 noundef 1) #21
  br label %258

179:                                              ; preds = %164
  %180 = call i64 @tree_low_cst(ptr noundef %156, i32 noundef 1) #21
  %181 = trunc i64 %180 to i32
  %182 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !93
  %184 = call i64 @tree_low_cst(ptr noundef %183, i32 noundef 1) #21
  %185 = trunc i64 %184 to i32
  %186 = sext i32 %68 to i64
  %187 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !210
  %189 = icmp eq i32 %188, 2956
  %190 = select i1 %189, i32 0, i32 171
  %191 = zext i32 %68 to i64
  %192 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !93
  %194 = add i8 %193, -12
  %195 = icmp ult i8 %194, 6
  br i1 %195, label %196, label %225

196:                                              ; preds = %179
  %197 = call ptr @optab_for_tree_code(i32 noundef %158, ptr noundef nonnull %53, i32 noundef 0) #21
  %198 = getelementptr inbounds %struct.optab_d, ptr %197, i64 0, i32 4, i64 %186
  %199 = load i32, ptr %198, align 4, !tbaa !210
  %200 = icmp eq i32 %199, 2956
  %201 = select i1 %200, i1 true, i1 %189
  br i1 %201, label %225, label %202

202:                                              ; preds = %196
  %203 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %207 = call i64 @fwrite(ptr nonnull @.str.141, i64 26, i64 1, ptr %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = call ptr @vect_create_destination_var(ptr noundef nonnull %151, ptr noundef nonnull %53) #21
  %210 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %133) #20
  %211 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %210) #20
  %212 = sdiv i32 %185, 2
  %213 = icmp slt i32 %212, %181
  br i1 %213, label %258, label %214

214:                                              ; preds = %208, %214
  %215 = phi i32 [ %223, %214 ], [ %212, %208 ]
  %216 = phi ptr [ %222, %214 ], [ %211, %208 ]
  %217 = sext i32 %215 to i64
  %218 = call ptr @size_int_kind(i64 noundef %217, i32 noundef 0) #21
  %219 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %190, ptr noundef %209, ptr noundef %216, ptr noundef %218) #21
  %220 = call fastcc ptr @make_ssa_name(ptr noundef %209, ptr noundef %219) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %219, ptr noundef %220) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %219, i32 noundef 1) #21
  %221 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %158, ptr noundef %209, ptr noundef %220, ptr noundef %216) #21
  %222 = call fastcc ptr @make_ssa_name(ptr noundef %209, ptr noundef %221) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %221, ptr noundef %222) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %221, i32 noundef 1) #21
  %223 = sdiv i32 %215, 2
  %224 = icmp slt i32 %223, %181
  br i1 %224, label %258, label %214, !llvm.loop !227

225:                                              ; preds = %196, %179
  %226 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %230 = call i64 @fwrite(ptr nonnull @.str.142, i64 26, i64 1, ptr %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %133) #20
  %233 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %232) #20
  %234 = load ptr, ptr %182, align 8, !tbaa !93
  %235 = call i64 @tree_low_cst(ptr noundef %234, i32 noundef 1) #21
  %236 = trunc i64 %235 to i32
  %237 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !49
  %238 = call ptr @build3_stat(i32 noundef 42, ptr noundef nonnull %153, ptr noundef %233, ptr noundef %156, ptr noundef %237) #21
  %239 = call ptr @gimple_build_assign_stat(ptr noundef %154, ptr noundef %238) #21
  %240 = call fastcc ptr @make_ssa_name(ptr noundef %154, ptr noundef %239) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %239, ptr noundef %240) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %239, i32 noundef 1) #21
  %241 = icmp slt i32 %181, %236
  br i1 %241, label %242, label %270

242:                                              ; preds = %231
  %243 = shl i64 %180, 32
  %244 = ashr exact i64 %243, 32
  %245 = shl i64 %235, 32
  %246 = ashr exact i64 %245, 32
  br label %247

247:                                              ; preds = %242, %247
  %248 = phi i64 [ %244, %242 ], [ %256, %247 ]
  %249 = phi ptr [ %240, %242 ], [ %255, %247 ]
  %250 = call ptr @size_int_kind(i64 noundef %248, i32 noundef 2) #21
  %251 = call ptr @build3_stat(i32 noundef 42, ptr noundef %153, ptr noundef %233, ptr noundef %156, ptr noundef %250) #21
  %252 = call ptr @gimple_build_assign_stat(ptr noundef %154, ptr noundef %251) #21
  %253 = call fastcc ptr @make_ssa_name(ptr noundef %154, ptr noundef %252) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %252, ptr noundef %253) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %252, i32 noundef 1) #21
  %254 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %158, ptr noundef %154, ptr noundef %253, ptr noundef %249) #21
  %255 = call fastcc ptr @make_ssa_name(ptr noundef %154, ptr noundef %254) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %254, ptr noundef %255) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %254, i32 noundef 1) #21
  %256 = add i64 %248, %244
  %257 = icmp slt i64 %256, %246
  br i1 %257, label %247, label %270, !llvm.loop !228

258:                                              ; preds = %214, %208, %172
  %259 = phi ptr [ %178, %172 ], [ %211, %208 ], [ %222, %214 ]
  %260 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %264 = call i64 @fwrite(ptr nonnull @.str.143, i64 21, i64 1, ptr %263)
  br label %265

265:                                              ; preds = %262, %258
  %266 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !49
  %267 = call ptr @build3_stat(i32 noundef 42, ptr noundef %153, ptr noundef %259, ptr noundef %156, ptr noundef %266) #21
  %268 = call ptr @gimple_build_assign_stat(ptr noundef %154, ptr noundef %267) #21
  %269 = call fastcc ptr @make_ssa_name(ptr noundef %154, ptr noundef %268) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %268, ptr noundef %269) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %268, i32 noundef 1) #21
  br label %270

270:                                              ; preds = %247, %231, %265
  %271 = phi ptr [ %268, %265 ], [ %239, %231 ], [ %254, %247 ]
  %272 = phi ptr [ %269, %265 ], [ %240, %231 ], [ %255, %247 ]
  br i1 %159, label %273, label %276

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 8
  %275 = load ptr, ptr %274, align 8, !tbaa !82
  br label %276

276:                                              ; preds = %148, %273, %270
  %277 = phi ptr [ %272, %273 ], [ %272, %270 ], [ null, %148 ]
  %278 = phi ptr [ %271, %273 ], [ %271, %270 ], [ null, %148 ]
  %279 = phi ptr [ %275, %273 ], [ %26, %270 ], [ %26, %148 ]
  %280 = load ptr, ptr %10, align 8, !tbaa !49
  %281 = icmp eq ptr %280, null
  br i1 %281, label %310, label %282

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.tree_common, ptr %280, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !93
  %285 = load i64, ptr %284, align 8
  %286 = and i64 %285, 65535
  %287 = icmp eq i64 %286, 14
  br i1 %20, label %297, label %288

288:                                              ; preds = %282
  br i1 %287, label %291, label %289

289:                                              ; preds = %288
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3270, ptr noundef nonnull @.str.7) #21
  %290 = load ptr, ptr %10, align 8, !tbaa !49
  br label %291

291:                                              ; preds = %288, %289
  %292 = phi ptr [ %280, %288 ], [ %290, %289 ]
  %293 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %133) #20
  %294 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %293) #20
  %295 = call ptr @build2_stat(i32 noundef %158, ptr noundef nonnull %53, ptr noundef %294, ptr noundef %292) #21
  %296 = call ptr @vect_create_destination_var(ptr noundef %151, ptr noundef nonnull %53) #21
  br label %304

297:                                              ; preds = %282
  br i1 %287, label %298, label %300

298:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3276, ptr noundef nonnull @.str.7) #21
  %299 = load ptr, ptr %10, align 8, !tbaa !49
  br label %300

300:                                              ; preds = %297, %298
  %301 = phi ptr [ %280, %297 ], [ %299, %298 ]
  %302 = call ptr @build2_stat(i32 noundef %158, ptr noundef %153, ptr noundef %277, ptr noundef %301) #21
  %303 = call ptr @vect_create_destination_var(ptr noundef %151, ptr noundef %153) #21
  br label %304

304:                                              ; preds = %300, %291
  %305 = phi ptr [ %295, %291 ], [ %302, %300 ]
  %306 = phi ptr [ %296, %291 ], [ %303, %300 ]
  %307 = call ptr @gimple_build_assign_stat(ptr noundef %306, ptr noundef %305) #21
  %308 = call fastcc ptr @make_ssa_name(ptr noundef %306, ptr noundef %307) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %307, ptr noundef %308) #20
  %309 = getelementptr inbounds %struct.tree_ssa_name, ptr %308, i64 0, i32 2
  store ptr %307, ptr %309, align 8, !tbaa !93
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %307, i32 noundef 1) #21
  br label %310

310:                                              ; preds = %304, %276
  %311 = phi ptr [ %307, %304 ], [ %278, %276 ]
  %312 = phi ptr [ %308, %304 ], [ %277, %276 ]
  %313 = call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef 10) #20
  store ptr %313, ptr %12, align 8, !tbaa !49
  %314 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %11, ptr noundef %151) #20
  %315 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %11) #20, !range !51
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %310, %327
  %318 = phi ptr [ %328, %327 ], [ %314, %310 ]
  %319 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %318, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !93
  %321 = call fastcc ptr @gimple_bb(ptr noundef %320) #20
  %322 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %279, ptr noundef %321) #21
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %317
  %325 = load ptr, ptr %319, align 8, !tbaa !93
  store ptr %325, ptr %9, align 8, !tbaa !49
  %326 = load ptr, ptr %12, align 8
  call fastcc void @VEC_gimple_base_quick_push(ptr noundef %326, ptr noundef %325) #20
  br label %327

327:                                              ; preds = %317, %324
  %328 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %11) #20
  %329 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %11) #20, !range !51
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %317, label %331, !llvm.loop !229

331:                                              ; preds = %327
  %332 = load ptr, ptr %12, align 8
  br label %333

333:                                              ; preds = %331, %310
  %334 = phi ptr [ %332, %331 ], [ %313, %310 ]
  %335 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %334) #20
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3306, ptr noundef nonnull @.str.7) #21
  br label %338

338:                                              ; preds = %333, %337
  %339 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %334, i32 noundef 0, ptr noundef nonnull %9) #20, !range !61
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %473, label %341

341:                                              ; preds = %338
  %342 = icmp eq i8 %6, 0
  br label %343

343:                                              ; preds = %341, %467
  %344 = phi ptr [ %311, %341 ], [ %468, %467 ]
  %345 = phi i32 [ 0, %341 ], [ %469, %467 ]
  %346 = load ptr, ptr %9, align 8, !tbaa !49
  br i1 %20, label %446, label %347

347:                                              ; preds = %343
  %348 = call fastcc ptr @vinfo_for_stmt(ptr noundef %346) #20
  %349 = getelementptr inbounds %struct._stmt_vec_info, ptr %348, i64 0, i32 3
  %350 = load i32, ptr %349, align 8, !tbaa !133
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %357, label %352

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct._stmt_vec_info, ptr %348, i64 0, i32 4
  %354 = load i8, ptr %353, align 4, !tbaa !136
  %355 = icmp eq i8 %354, 0
  %356 = or i1 %159, %355
  br i1 %356, label %359, label %358

357:                                              ; preds = %347
  br i1 %342, label %358, label %359

358:                                              ; preds = %352, %357
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3319, ptr noundef nonnull @.str.7) #21
  br label %359

359:                                              ; preds = %352, %357, %358
  %360 = load ptr, ptr %10, align 8, !tbaa !49
  %361 = icmp eq ptr %360, null
  %362 = select i1 %361, ptr %133, ptr %344
  %363 = getelementptr inbounds %struct._stmt_vec_info, ptr %348, i64 0, i32 6
  store ptr %362, ptr %363, align 8, !tbaa !230
  %364 = call ptr @new_stmt_vec_info(ptr noundef %362, ptr noundef nonnull %16, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %362, ptr noundef %364) #20
  %365 = load ptr, ptr %10, align 8, !tbaa !49
  %366 = icmp eq ptr %365, null
  br i1 %366, label %373, label %367

367:                                              ; preds = %359
  %368 = call fastcc ptr @vinfo_for_stmt(ptr noundef %133) #20
  %369 = getelementptr inbounds %struct._stmt_vec_info, ptr %368, i64 0, i32 14
  %370 = load ptr, ptr %369, align 8, !tbaa !54
  %371 = call fastcc ptr @vinfo_for_stmt(ptr noundef %362) #20
  %372 = getelementptr inbounds %struct._stmt_vec_info, ptr %371, i64 0, i32 14
  store ptr %370, ptr %372, align 8, !tbaa !54
  br label %373

373:                                              ; preds = %367, %359
  br i1 %159, label %374, label %467

374:                                              ; preds = %373
  %375 = getelementptr inbounds %struct._stmt_vec_info, ptr %348, i64 0, i32 16
  %376 = load i32, ptr %375, align 8, !tbaa !141
  %377 = icmp eq i32 %376, 6
  br i1 %377, label %378, label %467

378:                                              ; preds = %374
  %379 = load ptr, ptr %9, align 8, !tbaa !49
  %380 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %379) #20
  %381 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %380) #20
  %382 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %11, ptr noundef %381) #20
  %383 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %11) #20, !range !51
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %385, label %446

385:                                              ; preds = %378, %440
  %386 = phi ptr [ %441, %440 ], [ %382, %378 ]
  %387 = call fastcc ptr @vinfo_for_stmt(ptr noundef %386) #20
  %388 = call fastcc ptr @gimple_bb(ptr noundef %386) #20
  %389 = call fastcc i32 @gimple_code(ptr noundef %386) #20, !range !149
  %390 = icmp eq i32 %389, 16
  br i1 %390, label %391, label %440

391:                                              ; preds = %385
  %392 = call fastcc i32 @gimple_phi_num_args(ptr noundef %386) #20
  %393 = icmp eq i32 %392, 2
  %394 = icmp ne ptr %387, null
  %395 = select i1 %393, i1 %394, i1 false
  br i1 %395, label %396, label %440

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct._stmt_vec_info, ptr %387, i64 0, i32 16
  %398 = load i32, ptr %397, align 8, !tbaa !141
  %399 = icmp eq i32 %398, 6
  br i1 %399, label %400, label %440

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.basic_block_def, ptr %388, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !111
  %403 = icmp eq ptr %402, %25
  br i1 %403, label %404, label %440

404:                                              ; preds = %400
  %405 = call ptr @create_phi_node(ptr noundef %69, ptr noundef nonnull %388) #21
  %406 = call fastcc ptr @loop_vec_info_for_loop(ptr noundef %25) #20
  %407 = call ptr @new_stmt_vec_info(ptr noundef %405, ptr noundef %406, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %405, ptr noundef %407) #20
  %408 = call ptr @loop_preheader_edge(ptr noundef %25) #21
  %409 = getelementptr inbounds %struct.edge_def, ptr %408, i64 0, i32 6
  %410 = load i32, ptr %409, align 4, !tbaa !147
  %411 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %386, i32 noundef %410) #20
  %412 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %411) #20
  %413 = call ptr @get_initial_def_for_reduction(ptr noundef %1, ptr noundef %412, ptr noundef null) #20
  %414 = call ptr @vect_init_vector(ptr noundef %386, ptr noundef %413, ptr noundef nonnull %53, ptr noundef null) #21
  %415 = call ptr @loop_preheader_edge(ptr noundef %25) #21
  call void @add_phi_arg(ptr noundef %405, ptr noundef %414, ptr noundef %415, i32 noundef 0) #21
  %416 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %362) #20
  %417 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %416) #20
  %418 = call ptr @loop_latch_edge(ptr noundef %25) #21
  call void @add_phi_arg(ptr noundef %405, ptr noundef %417, ptr noundef %418, i32 noundef 0) #21
  %419 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %425, label %421

421:                                              ; preds = %404
  %422 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %423 = call i64 @fwrite(ptr nonnull @.str.144, i64 35, i64 1, ptr %422)
  %424 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %424, ptr noundef %405, i32 noundef 0, i32 noundef 2) #21
  br label %425

425:                                              ; preds = %421, %404
  %426 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %405) #20
  %427 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %426) #20
  br i1 %70, label %428, label %440

428:                                              ; preds = %425, %428
  %429 = phi ptr [ %437, %428 ], [ %4, %425 ]
  %430 = phi i32 [ %438, %428 ], [ 0, %425 ]
  %431 = call ptr @loop_preheader_edge(ptr noundef %279) #21
  %432 = getelementptr inbounds %struct.edge_def, ptr %431, i64 0, i32 6
  %433 = load i32, ptr %432, align 4, !tbaa !147
  %434 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %429, i32 noundef %433) #20
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %434, ptr noundef %427) #20
  %435 = call fastcc ptr @vinfo_for_stmt(ptr noundef %429) #20
  %436 = getelementptr inbounds %struct._stmt_vec_info, ptr %435, i64 0, i32 14
  %437 = load ptr, ptr %436, align 8, !tbaa !54
  %438 = add nuw nsw i32 %430, 1
  %439 = icmp eq i32 %438, %2
  br i1 %439, label %440, label %428, !llvm.loop !231

440:                                              ; preds = %428, %425, %385, %391, %396, %400
  %441 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %11) #20
  %442 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %11) #20, !range !51
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %385, label %444, !llvm.loop !232

444:                                              ; preds = %440
  %445 = load ptr, ptr %9, align 8, !tbaa !49
  br label %446

446:                                              ; preds = %444, %378, %343
  %447 = phi ptr [ %346, %343 ], [ %379, %378 ], [ %445, %444 ]
  %448 = phi ptr [ %344, %343 ], [ %362, %378 ], [ %362, %444 ]
  %449 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %447) #20
  %450 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %449) #20
  %451 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %11, ptr noundef %450) #20
  %452 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %11) #20, !range !51
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %454, label %467

454:                                              ; preds = %446, %463
  %455 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %11) #20
  %456 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %11) #20, !range !51
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %458, label %463

458:                                              ; preds = %454, %458
  %459 = phi ptr [ %460, %458 ], [ %455, %454 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %459, ptr noundef %312) #20
  %460 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %11) #20
  %461 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %11) #20, !range !51
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %458, label %463, !llvm.loop !233

463:                                              ; preds = %458, %454
  %464 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %11) #20
  %465 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %11) #20, !range !51
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %454, label %467, !llvm.loop !234

467:                                              ; preds = %463, %446, %373, %374
  %468 = phi ptr [ %362, %374 ], [ %362, %373 ], [ %448, %446 ], [ %448, %463 ]
  %469 = add nuw nsw i32 %345, 1
  %470 = load ptr, ptr %12, align 8
  %471 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %470, i32 noundef %469, ptr noundef nonnull %9) #20, !range !61
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %343, !llvm.loop !235

473:                                              ; preds = %467, %338
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vectorizable_induction(ptr noundef %0, ptr nocapture readnone %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1023
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct._loop_vec_info, ptr %8, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !119
  %18 = sdiv i32 %17, %15
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4027, ptr noundef nonnull @.str.7) #21
  br label %21

21:                                               ; preds = %3, %20
  %22 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %9, ptr noundef %0) #20, !range !51
  %23 = icmp ne i8 %22, 0
  %24 = icmp sgt i32 %18, 1
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %31 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 30, i64 1, ptr %30)
  br label %67

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !133
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 25
  %38 = load i32, ptr %37, align 4, !tbaa !143
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !141
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4043, ptr noundef nonnull @.str.7) #21
  br label %45

45:                                               ; preds = %40, %44
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = icmp eq ptr %2, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  store i32 8, ptr %4, align 8, !tbaa !95
  %51 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %55 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 30, i64 1, ptr %54)
  br label %56

56:                                               ; preds = %53, %50
  tail call fastcc void @vect_model_induction_cost(ptr noundef nonnull %4, i32 noundef %18) #20
  br label %67

57:                                               ; preds = %48
  %58 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %62 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 24, i64 1, ptr %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = tail call fastcc ptr @get_initial_def_for_induction(ptr noundef %0) #20
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  store ptr %66, ptr %2, align 8, !tbaa !49
  br label %67

67:                                               ; preds = %45, %36, %32, %26, %29, %63, %56
  %68 = phi i8 [ 1, %63 ], [ 1, %56 ], [ 0, %29 ], [ 0, %26 ], [ 0, %32 ], [ 0, %36 ], [ 0, %45 ]
  ret i8 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_model_induction_cost(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !236 {
  %3 = load ptr, ptr @ix86_cost, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.processor_costs, ptr %3, i64 0, i32 40
  %5 = load i32, ptr %4, align 4, !tbaa !217
  %6 = mul nsw i32 %5, %1
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  store i32 %6, ptr %8, align 4, !tbaa !184
  %9 = getelementptr inbounds %struct.processor_costs, ptr %3, i64 0, i32 42
  %10 = load i32, ptr %9, align 4, !tbaa !219
  %11 = shl nsw i32 %10, 1
  store i32 %11, ptr %7, align 4, !tbaa !185
  %12 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %16 = load i32, ptr %8, align 4, !tbaa !184
  %17 = load i32, ptr %7, align 4, !tbaa !185
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.145, i32 noundef %16, i32 noundef %17) #20
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_initial_def_for_induction(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !237 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = tail call ptr @loop_preheader_edge(ptr noundef %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %15 = getelementptr inbounds %struct._loop_vec_info, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !119
  %17 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %19 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %13) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2402, ptr noundef nonnull @.str.7) #21
  br label %22

22:                                               ; preds = %1, %21
  %23 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1023
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = trunc i64 %27 to i32
  %29 = sdiv i32 %16, %28
  %30 = icmp eq ptr %17, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2406, ptr noundef nonnull @.str.7) #21
  br label %32

32:                                               ; preds = %22, %31
  %33 = icmp sgt i32 %29, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2407, ptr noundef nonnull @.str.7) #21
  br label %35

35:                                               ; preds = %32, %34
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %18) #20
  %36 = load i64, ptr %13, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %43 [
    i16 6, label %38
    i16 7, label %38
    i16 8, label %38
    i16 10, label %40
    i16 12, label %40
  ]

38:                                               ; preds = %35, %35, %35
  %39 = tail call ptr @build_int_cst(ptr noundef nonnull %13, i64 noundef 0) #21
  store ptr %39, ptr %3, align 8, !tbaa !49
  br label %45

40:                                               ; preds = %35, %35
  %41 = load ptr, ptr @sizetype_tab, align 16, !tbaa !49
  %42 = tail call ptr @build_int_cst(ptr noundef %41, i64 noundef 0) #21
  store ptr %42, ptr %3, align 8, !tbaa !49
  br label %45

43:                                               ; preds = %35
  %44 = tail call ptr @build_real(ptr noundef nonnull %13, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #21
  store ptr %44, ptr %3, align 8, !tbaa !49
  br label %45

45:                                               ; preds = %40, %43, %38
  %46 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %10, ptr noundef %0) #20, !range !51
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  br label %51

51:                                               ; preds = %45, %48
  %52 = phi ptr [ %50, %48 ], [ %10, %45 ]
  %53 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !111
  %56 = icmp eq ptr %52, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2427, ptr noundef nonnull @.str.7) #21
  br label %58

58:                                               ; preds = %51, %57
  %59 = tail call ptr @loop_latch_edge(ptr noundef %52) #21
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !147
  %62 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %61) #20
  %63 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %62) #20
  %64 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #20
  %65 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %64) #20
  %66 = tail call ptr @analyze_scalar_evolution(ptr noundef %52, ptr noundef %65) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2433, ptr noundef nonnull @.str.7) #21
  br label %69

69:                                               ; preds = %58, %68
  %70 = load i32, ptr %52, align 8, !tbaa !238
  %71 = call fastcc zeroext i8 @vect_is_simple_iv_evolution(i32 noundef %70, ptr noundef %66, ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !51
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2436, ptr noundef nonnull @.str.7) #21
  br label %74

74:                                               ; preds = %69, %73
  %75 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %52) #21
  br i1 %47, label %84, label %76

76:                                               ; preds = %74
  %77 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %52) #21
  %78 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !147
  %80 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %79) #20
  %81 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %80) #20
  %82 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %81, ptr noundef %0, ptr noundef null) #21
  %83 = load ptr, ptr %3, align 8, !tbaa !49
  br label %137

84:                                               ; preds = %74
  %85 = tail call ptr @vect_get_new_vect_var(ptr noundef nonnull %13, i32 noundef 2, ptr noundef nonnull @.str.146) #21
  %86 = tail call zeroext i8 @add_referenced_var(ptr noundef %85) #21
  %87 = load ptr, ptr %2, align 8, !tbaa !49
  %88 = call ptr @force_gimple_operand(ptr noundef %87, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %85) #21
  %89 = load ptr, ptr %4, align 8, !tbaa !49
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %75, ptr noundef nonnull %89) #21
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2460, ptr noundef nonnull @.str.7) #21
  br label %95

95:                                               ; preds = %94, %91, %84
  %96 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %87, ptr noundef null) #21
  %97 = icmp sgt i32 %28, 1
  %98 = load ptr, ptr %3, align 8, !tbaa !49
  br i1 %97, label %99, label %126

99:                                               ; preds = %95, %122
  %100 = phi ptr [ %123, %122 ], [ %96, %95 ]
  %101 = phi ptr [ %111, %122 ], [ %88, %95 ]
  %102 = phi i32 [ %124, %122 ], [ 1, %95 ]
  %103 = load i64, ptr %13, align 8
  %104 = trunc i64 %103 to i32
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 10
  %107 = icmp eq i32 %105, 12
  %108 = or i1 %106, %107
  %109 = select i1 %108, i32 66, i32 63
  %110 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %109, ptr noundef %85, ptr noundef %101, ptr noundef %98) #21
  %111 = call fastcc ptr @make_ssa_name(ptr noundef %85, ptr noundef %110) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %110, ptr noundef %111) #20
  %112 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %75, ptr noundef %110) #21
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2476, ptr noundef nonnull @.str.7) #21
  br label %115

115:                                              ; preds = %99, %114
  %116 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %120 = call i64 @fwrite(ptr nonnull @.str.147, i64 23, i64 1, ptr %119)
  %121 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %121, ptr noundef %110, i32 noundef 0, i32 noundef 2) #21
  br label %122

122:                                              ; preds = %118, %115
  %123 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %111, ptr noundef %100) #21
  %124 = add nuw nsw i32 %102, 1
  %125 = icmp eq i32 %124, %28
  br i1 %125, label %126, label %99, !llvm.loop !239

126:                                              ; preds = %122, %95
  %127 = phi ptr [ %96, %95 ], [ %123, %122 ]
  %128 = call ptr @nreverse(ptr noundef %127) #21
  %129 = call ptr @build_constructor_from_list(ptr noundef %19, ptr noundef %128) #21
  %130 = call ptr @vect_init_vector(ptr noundef %0, ptr noundef %129, ptr noundef %19, ptr noundef null) #21
  %131 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !93
  %133 = sext i32 %16 to i64
  %134 = call ptr @build_int_cst(ptr noundef %132, i64 noundef %133) #21
  %135 = load ptr, ptr %131, align 8, !tbaa !93
  %136 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %135, ptr noundef %134, ptr noundef %98) #21
  br label %137

137:                                              ; preds = %126, %76
  %138 = phi ptr [ %83, %76 ], [ %98, %126 ]
  %139 = phi ptr [ %82, %76 ], [ %130, %126 ]
  %140 = phi ptr [ %83, %76 ], [ %136, %126 ]
  %141 = icmp sgt i32 %28, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %146, %142 ], [ null, %137 ]
  %144 = phi i32 [ %147, %142 ], [ 0, %137 ]
  %145 = call ptr @unshare_expr(ptr noundef %140) #21
  %146 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %145, ptr noundef %143) #21
  %147 = add nuw nsw i32 %144, 1
  %148 = icmp eq i32 %147, %28
  br i1 %148, label %149, label %142, !llvm.loop !240

149:                                              ; preds = %142, %137
  %150 = phi ptr [ null, %137 ], [ %146, %142 ]
  %151 = load i64, ptr %140, align 8
  %152 = and i64 %151, 65535
  %153 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !152
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2508, ptr noundef nonnull @.str.7) #21
  br label %157

157:                                              ; preds = %149, %156
  %158 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !93
  %160 = call ptr @get_vectype_for_scalar_type(ptr noundef %159) #21
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2510, ptr noundef nonnull @.str.7) #21
  br label %163

163:                                              ; preds = %157, %162
  %164 = call ptr @build_vector(ptr noundef %160, ptr noundef %150) #21
  %165 = call ptr @vect_init_vector(ptr noundef %0, ptr noundef %164, ptr noundef %160, ptr noundef null) #21
  %166 = call ptr @vect_get_new_vect_var(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.148) #21
  %167 = call zeroext i8 @add_referenced_var(ptr noundef %166) #21
  %168 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !83
  %170 = call ptr @create_phi_node(ptr noundef %166, ptr noundef %169) #21
  %171 = call ptr @new_stmt_vec_info(ptr noundef %170, ptr noundef nonnull %9, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %170, ptr noundef %171) #20
  %172 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %170) #20
  %173 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %172) #20
  %174 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %166, ptr noundef %173, ptr noundef %165) #21
  %175 = call fastcc ptr @make_ssa_name(ptr noundef %166, ptr noundef %174) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %174, ptr noundef %175) #20
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %174, i32 noundef 1) #21
  %176 = call ptr @new_stmt_vec_info(ptr noundef %174, ptr noundef nonnull %9, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %174, ptr noundef %176) #20
  call void @add_phi_arg(ptr noundef %170, ptr noundef %139, ptr noundef %75, i32 noundef 0) #21
  %177 = call ptr @loop_latch_edge(ptr noundef nonnull %52) #21
  call void @add_phi_arg(ptr noundef %170, ptr noundef %175, ptr noundef %177, i32 noundef 0) #21
  %178 = icmp sgt i32 %29, 1
  br i1 %178, label %179, label %219

179:                                              ; preds = %163
  br i1 %47, label %181, label %180

180:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2568, ptr noundef nonnull @.str.7) #21
  br label %181

181:                                              ; preds = %179, %180
  %182 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !93
  %184 = shl i64 4294967296, %26
  %185 = ashr exact i64 %184, 32
  %186 = call ptr @build_int_cst(ptr noundef %183, i64 noundef %185) #21
  %187 = load ptr, ptr %182, align 8, !tbaa !93
  %188 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %187, ptr noundef %186, ptr noundef %138) #21
  br i1 %141, label %189, label %196

189:                                              ; preds = %181, %189
  %190 = phi ptr [ %193, %189 ], [ null, %181 ]
  %191 = phi i32 [ %194, %189 ], [ 0, %181 ]
  %192 = call ptr @unshare_expr(ptr noundef %188) #21
  %193 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %192, ptr noundef %190) #21
  %194 = add nuw nsw i32 %191, 1
  %195 = icmp eq i32 %194, %28
  br i1 %195, label %196, label %189, !llvm.loop !241

196:                                              ; preds = %189, %181
  %197 = phi ptr [ null, %181 ], [ %193, %189 ]
  %198 = load i64, ptr %188, align 8
  %199 = and i64 %198, 65535
  %200 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !152
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %204, label %203

203:                                              ; preds = %196
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2577, ptr noundef nonnull @.str.7) #21
  br label %204

204:                                              ; preds = %203, %196
  %205 = call ptr @build_vector(ptr noundef %160, ptr noundef %197) #21
  %206 = call ptr @vect_init_vector(ptr noundef %0, ptr noundef %205, ptr noundef %160, ptr noundef null) #21
  %207 = call fastcc ptr @vinfo_for_stmt(ptr noundef %170) #20
  %208 = call i32 @llvm.smax.i32(i32 %29, i32 2)
  br label %209

209:                                              ; preds = %204, %209
  %210 = phi ptr [ %216, %209 ], [ %207, %204 ]
  %211 = phi i32 [ %217, %209 ], [ 1, %204 ]
  %212 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %166, ptr noundef %173, ptr noundef %206) #21
  %213 = call fastcc ptr @make_ssa_name(ptr noundef %166, ptr noundef %212) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %212, ptr noundef %213) #20
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %212, i32 noundef 1) #21
  %214 = call ptr @new_stmt_vec_info(ptr noundef %212, ptr noundef nonnull %9, ptr noundef null) #21
  call fastcc void @set_vinfo_for_stmt(ptr noundef %212, ptr noundef %214) #20
  %215 = getelementptr inbounds %struct._stmt_vec_info, ptr %210, i64 0, i32 14
  store ptr %212, ptr %215, align 8, !tbaa !54
  %216 = call fastcc ptr @vinfo_for_stmt(ptr noundef %212) #20
  %217 = add nuw nsw i32 %211, 1
  %218 = icmp eq i32 %217, %208
  br i1 %218, label %219, label %209, !llvm.loop !242

219:                                              ; preds = %209, %163
  %220 = phi ptr [ %175, %163 ], [ %213, %209 ]
  %221 = phi ptr [ %174, %163 ], [ %212, %209 ]
  br i1 %47, label %259, label %222

222:                                              ; preds = %219
  %223 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef %63) #20
  %224 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #20, !range !51
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %259

226:                                              ; preds = %222, %233
  %227 = phi ptr [ %234, %233 ], [ %223, %222 ]
  %228 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !93
  %230 = call fastcc ptr @gimple_bb(ptr noundef %229) #20
  %231 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %52, ptr noundef %230) #21
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %226
  %234 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #20
  %235 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #20, !range !51
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %226, label %259, !llvm.loop !243

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %227, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !93
  %240 = icmp eq ptr %239, null
  br i1 %240, label %259, label %241

241:                                              ; preds = %237
  %242 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %239) #20
  %243 = getelementptr inbounds %struct._stmt_vec_info, ptr %242, i64 0, i32 3
  %244 = load i32, ptr %243, align 8, !tbaa !133
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct._stmt_vec_info, ptr %242, i64 0, i32 4
  %248 = load i8, ptr %247, align 4, !tbaa !136
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %246, %241
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2627, ptr noundef nonnull @.str.7) #21
  br label %251

251:                                              ; preds = %246, %250
  %252 = getelementptr inbounds %struct._stmt_vec_info, ptr %242, i64 0, i32 6
  store ptr %221, ptr %252, align 8, !tbaa !230
  %253 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %257 = call i64 @fwrite(ptr nonnull @.str.149, i64 38, i64 1, ptr %256)
  %258 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %258, ptr noundef %221, i32 noundef 0, i32 noundef 2) #21
  br label %259

259:                                              ; preds = %233, %222, %251, %255, %237, %219
  %260 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %271, label %262

262:                                              ; preds = %259
  %263 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %264 = call i64 @fwrite(ptr nonnull @.str.150, i64 44, i64 1, ptr %263)
  %265 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %265, ptr noundef %170, i32 noundef 0, i32 noundef 2) #21
  %266 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %267 = call i32 @fputc(i32 10, ptr %266)
  %268 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %269 = getelementptr inbounds %struct.tree_ssa_name, ptr %220, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !93
  call void @print_gimple_stmt(ptr noundef %268, ptr noundef %270, i32 noundef 0, i32 noundef 2) #21
  br label %271

271:                                              ; preds = %262, %259
  %272 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 6
  store ptr %170, ptr %272, align 8, !tbaa !230
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %173
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vectorizable_live_operation(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 4
  %12 = load i8, ptr %11, align 4, !tbaa !136
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4089, ptr noundef nonnull @.str.7) #21
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !141
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %79, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !51
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %79, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %79

27:                                               ; preds = %22
  %28 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %10, ptr noundef %0) #20, !range !51
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !151
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !93
  %35 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %31) #20, !range !149
  %36 = icmp ne i32 %35, 2
  %37 = icmp eq i8 %34, 1
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = icmp ne i32 %35, 1
  %41 = icmp eq i8 %34, 2
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %30
  %44 = phi i32 [ 4107, %30 ], [ 4108, %39 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %44, ptr noundef nonnull @.str.7) #21
  br label %45

45:                                               ; preds = %43, %39
  %46 = icmp eq i8 %34, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %45
  %48 = icmp eq i32 %35, 3
  %49 = zext i8 %34 to i64
  br label %53

50:                                               ; preds = %75
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, %49
  br i1 %52, label %79, label %53, !llvm.loop !244

53:                                               ; preds = %47, %50
  %54 = phi i64 [ 0, %47 ], [ %51, %50 ]
  br i1 %48, label %55, label %59

55:                                               ; preds = %53
  %56 = call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  %57 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !93
  br label %63

59:                                               ; preds = %53
  %60 = trunc i64 %54 to i32
  %61 = add i32 %60, 1
  %62 = call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %61) #20
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi ptr [ %58, %55 ], [ %62, %59 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %64, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #21
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %74 = call i64 @fwrite(ptr nonnull @.str.79, i64 15, i64 1, ptr %73)
  br label %79

75:                                               ; preds = %66, %63
  %76 = load i32, ptr %6, align 4
  %77 = add i32 %76, -3
  %78 = icmp ult i32 %77, -2
  br i1 %78, label %79, label %50

79:                                               ; preds = %75, %50, %45, %69, %72, %27, %22, %19, %15
  %80 = phi i8 [ 0, %15 ], [ 0, %19 ], [ 0, %22 ], [ 0, %27 ], [ 0, %72 ], [ 0, %69 ], [ 1, %45 ], [ 0, %75 ], [ 1, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !245 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_transform_loop(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !49
  %16 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %20 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 26, i64 1, ptr %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !118
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @vect_do_peeling_for_alignment(ptr noundef nonnull %0) #21
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = tail call i32 @host_integerp(ptr noundef %28, i32 noundef 0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.tree_int_cst, ptr %32, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !93
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @host_integerp(ptr noundef nonnull %32, i32 noundef 0) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %27, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.tree_int_cst, ptr %40, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !93
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = sext i32 %15 to i64
  %46 = urem i64 %42, %45
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %36, %39, %44, %31, %26
  %49 = phi i1 [ true, %31 ], [ true, %26 ], [ false, %39 ], [ false, %36 ], [ %47, %44 ]
  %50 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !123
  %52 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %51) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !124
  %57 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %56) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %48
  %60 = xor i1 %49, true
  %61 = zext i1 %60 to i8
  call void @vect_loop_versioning(ptr noundef nonnull %0, i8 noundef zeroext %61, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  br label %62

62:                                               ; preds = %59, %54
  br i1 %49, label %63, label %66

63:                                               ; preds = %62
  %64 = load ptr, ptr %5, align 8, !tbaa !49
  %65 = load ptr, ptr %6, align 8, !tbaa !49
  call void @vect_do_peeling_for_loop_bound(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %64, ptr noundef %65) #21
  br label %75

66:                                               ; preds = %62
  %67 = load ptr, ptr %27, align 8, !tbaa !85
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !93
  %70 = getelementptr inbounds %struct.tree_int_cst, ptr %67, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !93
  %72 = sext i32 %15 to i64
  %73 = udiv i64 %71, %72
  %74 = call ptr @build_int_cst(ptr noundef %69, i64 noundef %73) #21
  store ptr %74, ptr %3, align 8, !tbaa !49
  br label %75

75:                                               ; preds = %66, %63
  %76 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !83
  %78 = load ptr, ptr %77, align 8, !tbaa !86
  %79 = call fastcc i32 @VEC_edge_base_length(ptr noundef %78) #20
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4235, ptr noundef nonnull @.str.7) #21
  br label %82

82:                                               ; preds = %75, %81
  %83 = call ptr @loop_preheader_edge(ptr noundef nonnull %9) #21
  %84 = call ptr @split_edge(ptr noundef %83) #21
  %85 = icmp sgt i32 %13, 0
  br i1 %85, label %86, label %255

86:                                               ; preds = %82
  %87 = sext i32 %15 to i64
  %88 = zext nneg i32 %13 to i64
  br label %89

89:                                               ; preds = %86, %251
  %90 = phi i64 [ 0, %86 ], [ %253, %251 ]
  %91 = phi i8 [ 0, %86 ], [ %252, %251 ]
  %92 = getelementptr inbounds ptr, ptr %11, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %93) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %94 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %89, %150
  %97 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %98 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %102 = call i64 @fwrite(ptr nonnull @.str.81, i64 24, i64 1, ptr %101)
  %103 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %103, ptr noundef %97, i32 noundef 0, i32 noundef 2) #21
  br label %104

104:                                              ; preds = %100, %96
  %105 = call fastcc ptr @vinfo_for_stmt(ptr noundef %97) #20
  %106 = icmp eq ptr %105, null
  br i1 %106, label %150, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !152
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._stmt_vec_info, ptr %105, i64 0, i32 4
  %112 = load i8, ptr %111, align 4, !tbaa !136
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  call fastcc void @vect_loop_kill_debug_uses(ptr noundef %9, ptr noundef %97) #20
  br label %115

115:                                              ; preds = %114, %110, %107
  %116 = getelementptr inbounds %struct._stmt_vec_info, ptr %105, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !133
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %105, i64 0, i32 4
  %121 = load i8, ptr %120, align 4, !tbaa !136
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %150, label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds %struct._stmt_vec_info, ptr %105, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !134
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1023
  %129 = zext nneg i32 %128 to i64
  %130 = shl nuw i64 1, %129
  %131 = icmp eq i64 %130, %87
  br i1 %131, label %138, label %132

132:                                              ; preds = %123
  %133 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %137 = call i64 @fwrite(ptr nonnull @.str.82, i64 15, i64 1, ptr %136)
  br label %138

138:                                              ; preds = %135, %132, %123
  %139 = getelementptr inbounds %struct._stmt_vec_info, ptr %105, i64 0, i32 16
  %140 = load i32, ptr %139, align 8, !tbaa !141
  %141 = icmp eq i32 %140, 4
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %147 = call i64 @fwrite(ptr nonnull @.str.83, i64 14, i64 1, ptr %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = call zeroext i8 @vect_transform_stmt(ptr noundef %97, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #21
  br label %150

150:                                              ; preds = %138, %148, %119, %104
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %151 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %96, label %153, !llvm.loop !246

153:                                              ; preds = %150, %89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %93) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  %154 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %251

156:                                              ; preds = %153, %247
  %157 = phi i8 [ %248, %247 ], [ %91, %153 ]
  %158 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %159 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %163 = call i64 @fwrite(ptr nonnull @.str.84, i64 30, i64 1, ptr %162)
  %164 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %164, ptr noundef %158, i32 noundef 0, i32 noundef 2) #21
  br label %165

165:                                              ; preds = %161, %156
  %166 = call fastcc ptr @vinfo_for_stmt(ptr noundef %158) #20
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  br label %247, !llvm.loop !247

169:                                              ; preds = %165
  %170 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !152
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 4
  %174 = load i8, ptr %173, align 4, !tbaa !136
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  call fastcc void @vect_loop_kill_debug_uses(ptr noundef %9, ptr noundef %158) #20
  br label %177

177:                                              ; preds = %176, %172, %169
  %178 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 3
  %179 = load i32, ptr %178, align 8, !tbaa !133
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 4
  %183 = load i8, ptr %182, align 4, !tbaa !136
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  br label %247, !llvm.loop !247

186:                                              ; preds = %181, %177
  %187 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 5
  %188 = load ptr, ptr %187, align 8, !tbaa !134
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4314, ptr noundef nonnull @.str.7) #21
  br label %191

191:                                              ; preds = %186, %190
  %192 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 25
  %193 = load i32, ptr %192, align 4, !tbaa !143
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %191
  %196 = load ptr, ptr %187, align 8, !tbaa !134
  %197 = getelementptr inbounds %struct.tree_type, ptr %196, i64 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 1023
  %200 = zext nneg i32 %199 to i64
  %201 = shl nuw i64 1, %200
  %202 = trunc i64 %201 to i32
  %203 = icmp eq i32 %15, %202
  br i1 %203, label %210, label %204

204:                                              ; preds = %195
  %205 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %209 = call i64 @fwrite(ptr nonnull @.str.82, i64 15, i64 1, ptr %208)
  br label %210

210:                                              ; preds = %207, %204, %195
  %211 = load i32, ptr %192, align 4, !tbaa !143
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %230, label %213

213:                                              ; preds = %191, %210
  %214 = icmp eq i8 %157, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %213
  %216 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %220 = call i64 @fwrite(ptr nonnull @.str.85, i64 32, i64 1, ptr %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = call zeroext i8 @vect_schedule_slp(ptr noundef nonnull %0, ptr noundef null) #21
  br label %223

223:                                              ; preds = %221, %213
  %224 = call fastcc ptr @vinfo_for_stmt(ptr noundef %158) #20
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, ptr %192, align 4, !tbaa !143
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %230

229:                                              ; preds = %226, %223
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  br label %247, !llvm.loop !247

230:                                              ; preds = %226, %210
  %231 = phi i8 [ 1, %226 ], [ %157, %210 ]
  %232 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %236 = call i64 @fwrite(ptr nonnull @.str.86, i64 20, i64 1, ptr %235)
  br label %237

237:                                              ; preds = %234, %230
  store i8 0, ptr %4, align 1, !tbaa !93
  %238 = call zeroext i8 @vect_transform_stmt(ptr noundef %158, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #21
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 17
  %242 = load ptr, ptr %241, align 8, !tbaa !248
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  call void @vect_remove_stores(ptr noundef nonnull %242) #21
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #21
  br label %247, !llvm.loop !247

245:                                              ; preds = %240
  call void @free_stmt_vec_info(ptr noundef %158) #21
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #21
  br label %247, !llvm.loop !247

246:                                              ; preds = %237
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  br label %247

247:                                              ; preds = %246, %245, %244, %229, %185, %168
  %248 = phi i8 [ 1, %229 ], [ %231, %244 ], [ %231, %245 ], [ %231, %246 ], [ %157, %185 ], [ %157, %168 ]
  %249 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !51
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %156, label %251

251:                                              ; preds = %247, %153
  %252 = phi i8 [ %91, %153 ], [ %248, %247 ]
  %253 = add nuw nsw i64 %90, 1
  %254 = icmp eq i64 %253, %88
  br i1 %254, label %255, label %89, !llvm.loop !249

255:                                              ; preds = %251, %82
  %256 = load ptr, ptr %3, align 8, !tbaa !49
  call void @slpeel_make_loop_iterate_ntimes(ptr noundef %9, ptr noundef %256) #21
  call void @update_ssa(i32 noundef 2048) #21
  %257 = call zeroext i8 @vect_print_dump_info(i32 noundef 1) #21
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %261 = call i64 @fwrite(ptr nonnull @.str.87, i64 16, i64 1, ptr %260)
  br label %262

262:                                              ; preds = %259, %255
  %263 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 8
  %264 = load ptr, ptr %263, align 8, !tbaa !82
  %265 = icmp eq ptr %264, null
  br i1 %265, label %272, label %266

266:                                              ; preds = %262
  %267 = call zeroext i8 @vect_print_dump_info(i32 noundef 1) #21
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %271 = call i64 @fwrite(ptr nonnull @.str.88, i64 22, i64 1, ptr %270)
  br label %272

272:                                              ; preds = %269, %266, %262
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @vect_do_peeling_for_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_loop_versioning(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_do_peeling_for_loop_bound(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_loop_kill_debug_uses(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !250 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #19
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %1) #20, !range !149
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call fastcc ptr @op_iter_init_phidef(ptr noundef nonnull %3, ptr noundef %1) #20
  br label %11

9:                                                ; preds = %2
  %10 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %3, ptr noundef %1) #20
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11, %44
  %16 = phi ptr [ %45, %44 ], [ %12, %11 ]
  %17 = call fastcc ptr @get_def_from_ptr(ptr noundef %16) #20
  %18 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef %17) #20
  %19 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #20, !range !51
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %15, %40
  %22 = phi ptr [ %41, %40 ], [ %18, %15 ]
  %23 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %22) #20, !range !51
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = call fastcc ptr @gimple_bb(ptr noundef %22) #20
  %27 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %26) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %22) #20, !range !51
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %37 = call i64 @fwrite(ptr nonnull @.str.151, i64 17, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %35, %32
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %22) #20
  call fastcc void @update_stmt(ptr noundef %22) #20
  br label %40

39:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 4168, ptr noundef nonnull @.str.7) #21
  br label %40

40:                                               ; preds = %25, %39, %38, %21
  %41 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #20
  %42 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #20, !range !51
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %21, label %44, !llvm.loop !251

44:                                               ; preds = %40, %15
  %45 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %3) #20
  %46 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %15, label %48, !llvm.loop !252

48:                                               ; preds = %44, %11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @vect_transform_stmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_schedule_slp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_remove_stores(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @slpeel_make_loop_iterate_ntimes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !253 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !105
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !254
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !255 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !256 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !257 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !258
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !260 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @number_of_exit_cond_executions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_loop_exit_condition(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !34 !PGOFuncName !261 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @bb_in_loop_p(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !262 {
  %3 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %0) #21
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_data_reference_p_heap_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !263 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ddr_p_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !264 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !265 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_slp_instance_heap_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !266 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #21
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !267 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !268
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !270 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_analyze_scalar_cycles_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !271 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %9 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef 64) #20
  store ptr %9, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  %10 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %14 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 34, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %12, %2
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %8) #21
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #20, !range !51
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %20

18:                                               ; preds = %63
  %19 = load ptr, ptr %4, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ %9, %15 ]
  %22 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %21) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %130, label %66

24:                                               ; preds = %15, %63
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #20
  %26 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %25) #20
  %27 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %26) #20
  %28 = call fastcc ptr @vinfo_for_stmt(ptr noundef %25) #20
  %29 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %33 = call i64 @fwrite(ptr nonnull @.str.96, i64 13, i64 1, ptr %32)
  %34 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %34, ptr noundef %25, i32 noundef 0, i32 noundef 2) #21
  br label %35

35:                                               ; preds = %31, %24
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = call zeroext i8 @is_gimple_reg(ptr noundef %37) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 16
  store i32 8, ptr %41, align 8, !tbaa !141
  %42 = call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef nonnull %27) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %49 = call i64 @fwrite(ptr nonnull @.str.97, i64 24, i64 1, ptr %48)
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_generic_expr(ptr noundef %50, ptr noundef nonnull %42, i32 noundef 2) #21
  br label %51

51:                                               ; preds = %44, %47
  %52 = load i32, ptr %1, align 8, !tbaa !238
  %53 = call fastcc zeroext i8 @vect_is_simple_iv_evolution(i32 noundef %52, ptr noundef nonnull %42, ptr noundef nonnull %3, ptr noundef nonnull %3) #20, !range !51
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40, %51
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %4, ptr noundef %25) #20
  br label %63

56:                                               ; preds = %51
  %57 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %61 = call i64 @fwrite(ptr nonnull @.str.98, i64 19, i64 1, ptr %60)
  br label %62

62:                                               ; preds = %59, %56
  store i32 4, ptr %41, align 8, !tbaa !141
  br label %63

63:                                               ; preds = %35, %62, %55
  call fastcc void @gsi_next(ptr noundef nonnull %5) #20
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #20, !range !51
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %24, label %18, !llvm.loop !272

66:                                               ; preds = %20, %127
  %67 = call fastcc ptr @VEC_gimple_base_pop(ptr noundef %21) #20
  %68 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %67) #20
  %69 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %68) #20
  %70 = call fastcc ptr @vinfo_for_stmt(ptr noundef %67) #20
  %71 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %75 = call i64 @fwrite(ptr nonnull @.str.96, i64 13, i64 1, ptr %74)
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  call void @print_gimple_stmt(ptr noundef %76, ptr noundef %67, i32 noundef 0, i32 noundef 2) #21
  br label %77

77:                                               ; preds = %73, %66
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !93
  %80 = call zeroext i8 @is_gimple_reg(ptr noundef %79) #21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 476, ptr noundef nonnull @.str.7) #21
  br label %83

83:                                               ; preds = %77, %82
  %84 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 16
  %85 = load i32, ptr %84, align 8, !tbaa !141
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 477, ptr noundef nonnull @.str.7) #21
  br label %88

88:                                               ; preds = %83, %87
  %89 = load ptr, ptr %0, align 8, !tbaa !35
  %90 = icmp eq ptr %89, %1
  %91 = zext i1 %90 to i8
  %92 = call ptr @vect_is_simple_reduction(ptr noundef nonnull %0, ptr noundef %67, i8 noundef zeroext %91, ptr noundef nonnull %6) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %121, label %94

94:                                               ; preds = %88
  %95 = load i8, ptr %6, align 1, !tbaa !93
  %96 = icmp eq i8 %95, 0
  %97 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %98 = icmp eq i8 %97, 0
  br i1 %96, label %106, label %99

99:                                               ; preds = %94
  br i1 %98, label %103, label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %102 = call i64 @fwrite(ptr nonnull @.str.99, i64 26, i64 1, ptr %101)
  br label %103

103:                                              ; preds = %100, %99
  store i32 6, ptr %84, align 8, !tbaa !141
  %104 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %92) #20
  %105 = getelementptr inbounds %struct._stmt_vec_info, ptr %104, i64 0, i32 16
  store i32 6, ptr %105, align 8, !tbaa !141
  br label %127

106:                                              ; preds = %94
  br i1 %90, label %114, label %107

107:                                              ; preds = %106
  br i1 %98, label %111, label %108

108:                                              ; preds = %107
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %110 = call i64 @fwrite(ptr nonnull @.str.100, i64 35, i64 1, ptr %109)
  br label %111

111:                                              ; preds = %108, %107
  store i32 7, ptr %84, align 8, !tbaa !141
  %112 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %92) #20
  %113 = getelementptr inbounds %struct._stmt_vec_info, ptr %112, i64 0, i32 16
  store i32 7, ptr %113, align 8, !tbaa !141
  br label %127

114:                                              ; preds = %106
  br i1 %98, label %118, label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %117 = call i64 @fwrite(ptr nonnull @.str.101, i64 19, i64 1, ptr %116)
  br label %118

118:                                              ; preds = %115, %114
  store i32 5, ptr %84, align 8, !tbaa !141
  %119 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %92) #20
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %119, i64 0, i32 16
  store i32 5, ptr %120, align 8, !tbaa !141
  br label %127

121:                                              ; preds = %88
  %122 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %126 = call i64 @fwrite(ptr nonnull @.str.102, i64 30, i64 1, ptr %125)
  br label %127

127:                                              ; preds = %121, %124, %103, %118, %111
  %128 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %21) #20
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %66, !llvm.loop !273

130:                                              ; preds = %127, %20
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_is_simple_iv_evolution(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !34 !PGOFuncName !274 {
  %5 = tail call ptr @evolution_part_in_loop_num(ptr noundef %1, i32 noundef %0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef nonnull %5) #20, !range !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call ptr @initial_condition_in_loop_num(ptr noundef %1, i32 noundef %0) #21
  %12 = tail call ptr @unshare_expr(ptr noundef %11) #21
  %13 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %17 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 6, i64 1, ptr %16)
  %18 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_generic_expr(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 2) #21
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %20 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 9, i64 1, ptr %19)
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  tail call void @print_generic_expr(ptr noundef %21, ptr noundef %12, i32 noundef 2) #21
  br label %22

22:                                               ; preds = %15, %10
  store ptr %12, ptr %2, align 8, !tbaa !49
  store ptr %5, ptr %3, align 8, !tbaa !49
  %23 = load i64, ptr %5, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 23
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !49
  %31 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 13, i64 1, ptr %30)
  br label %32

32:                                               ; preds = %22, %26, %29, %7, %4
  %33 = phi i8 [ 0, %4 ], [ 0, %7 ], [ 0, %29 ], [ 0, %26 ], [ 1, %22 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !275 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 !PGOFuncName !276 {
  %2 = load i32, ptr %0, align 8, !tbaa !200
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !200
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !277 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #20, !range !51
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #13 !prof !34 !PGOFuncName !278 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !49
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !279 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !49
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !280 {
  %3 = load i32, ptr %0, align 8, !tbaa !200
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !200
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !282
  %6 = load i32, ptr %0, align 8, !tbaa !200
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !283 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !151
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !49
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @vect_get_smallest_scalar_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !284 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !285 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @least_common_multiple(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_update_slp_costs_according_to_vf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @vect_can_advance_ivs_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !286 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 3103, ptr noundef nonnull @.str.7) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !287 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1446, ptr noundef nonnull @.str.7) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !288 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !289 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !290 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !291 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !292
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1622, ptr noundef nonnull @.str.7) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !293 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !34 !PGOFuncName !294 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !152
  ret i32 %4
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !295 {
  tail call fastcc void @VEC_vec_void_p_heap_reserve() #20
  %2 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !49
  tail call fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 !PGOFuncName !296 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_reserve() unnamed_addr #0 !prof !34 !PGOFuncName !297 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !49
  %2 = tail call fastcc i32 @VEC_vec_void_p_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !49
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !298 {
  %3 = load i32, ptr %0, align 8, !tbaa !258
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !258
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !299 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !300
  %6 = load i32, ptr %0, align 8, !tbaa !258
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !301 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.135, i32 noundef 1665, ptr noundef nonnull @.str.7) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !302 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  store ptr %1, ptr %4, align 8, !tbaa !49
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 !prof !34 !PGOFuncName !303 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #20
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #20, !range !149
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !51
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !304

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 !PGOFuncName !305 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !200
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !49
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !306 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  store ptr %6, ptr %0, align 8, !tbaa !164
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @vect_init_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !308 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !309
  store ptr %4, ptr %0, align 8, !tbaa !164
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !310
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !164
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !311 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !312
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !312
  store ptr %3, ptr %0, align 8, !tbaa !164
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  store ptr %8, ptr %2, align 8, !tbaa !312
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !315 {
  %2 = load ptr, ptr %0, align 8, !tbaa !316
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !163
  store ptr %2, ptr %6, align 8, !tbaa !316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !317 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !316
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !318 {
  store ptr %1, ptr %0, align 8, !tbaa !316
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !163
  store ptr %0, ptr %4, align 8, !tbaa !316
  store ptr %0, ptr %3, align 8, !tbaa !163
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !319 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !149
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !320

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !321

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !310
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !322 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !323
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.92, i32 noundef 918, ptr noundef nonnull @.str.7) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !323
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !325
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !326
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !327
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !328 {
  %2 = load i8, ptr %0, align 8, !tbaa !323
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #14 !prof !34 !PGOFuncName !329 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !330 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !332
  store ptr %7, ptr %2, align 8, !tbaa !331
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !334
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !326
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !325
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !334
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !323
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !335 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.92, i32 noundef 771, ptr noundef nonnull @.str.7) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !327
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !336 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !337
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !338 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #12 !prof !34 !PGOFuncName !339 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !323
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !340 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.92, i32 noundef 747, ptr noundef nonnull @.str.7) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !341
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !341
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !342
  store ptr %22, ptr %16, align 8, !tbaa !341
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !331
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !331
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !332
  store ptr %36, ptr %29, align 8, !tbaa !331
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !323
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !344 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !345 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !346 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !347 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !348 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !149
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @vect_get_new_vect_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !349 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #20
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !323
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !323
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !327
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !350 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !327
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !351 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !352 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !353 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #21
  tail call void @update_stmt_operands(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !354 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = load ptr, ptr %3, align 8, !tbaa !342
  store ptr %8, ptr %2, align 8, !tbaa !341
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !323
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_loop_vec_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !40, i64 40, !37, i64 48, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !37, i64 104, !37, i64 112, !40, i64 120}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!36, !37, i64 8}
!42 = !{!43, !40, i64 36}
!43 = !{!"loop", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 16, !44, i64 24, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !45, i64 80, !45, i64 96, !38, i64 112, !38, i64 113, !40, i64 116, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 144}
!44 = !{!"lpt_decision", !40, i64 0, !40, i64 4}
!45 = !{!"", !46, i64 0, !46, i64 8}
!46 = !{!"long", !38, i64 0}
!47 = !{!36, !37, i64 64}
!48 = !{!36, !37, i64 72}
!49 = !{!37, !37, i64 0}
!50 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49}
!51 = !{i8 0, i8 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !37, i64 104}
!55 = !{!"_stmt_vec_info", !40, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !38, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !38, i64 96, !37, i64 104, !37, i64 112, !40, i64 120, !37, i64 128, !37, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !37, i64 160, !38, i64 168, !56, i64 172, !40, i64 180, !37, i64 184}
!56 = !{!"", !40, i64 0, !40, i64 4}
!57 = !{!55, !38, i64 96}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !53}
!60 = !{!36, !37, i64 112}
!61 = !{i32 0, i32 2}
!62 = distinct !{!62, !53}
!63 = !{!43, !37, i64 64}
!64 = !{!"tree-vect-loop.c:VEC_gimple_heap_free"}
!65 = !{!"tree-vect-loop.c:gsi_end_p"}
!66 = !{!67, !37, i64 0}
!67 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16}
!68 = !{!"tree-vect-loop.c:gsi_stmt"}
!69 = !{!70, !37, i64 0}
!70 = !{!"gimple_seq_node_d", !37, i64 0, !37, i64 8, !37, i64 16}
!71 = !{!"tree-vect-loop.c:gsi_next"}
!72 = !{!70, !37, i64 16}
!73 = !{!"tree-vect-loop.c:gsi_start_bb"}
!74 = !{!67, !37, i64 8}
!75 = !{!67, !37, i64 16}
!76 = !{!"tree-vect-loop.c:vinfo_for_stmt"}
!77 = !{!"tree-vect-loop.c:VEC_ddr_p_heap_free"}
!78 = !{!"tree-vect-loop.c:VEC_slp_instance_base_iterate"}
!79 = !{!80, !40, i64 0}
!80 = !{!"VEC_slp_instance_base", !40, i64 0, !40, i64 4, !38, i64 8}
!81 = !{!"tree-vect-loop.c:VEC_slp_instance_heap_free"}
!82 = !{!43, !37, i64 48}
!83 = !{!43, !37, i64 8}
!84 = !{!43, !37, i64 56}
!85 = !{!36, !37, i64 16}
!86 = !{!87, !37, i64 0}
!87 = !{!"basic_block_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !37, i64 48, !37, i64 56, !38, i64 64, !46, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96}
!88 = !{!89, !37, i64 0}
!89 = !{!"edge_def", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !46, i64 56}
!90 = !{!43, !37, i64 16}
!91 = !{!89, !37, i64 8}
!92 = !{!89, !40, i64 48}
!93 = !{!38, !38, i64 0}
!94 = !{!36, !37, i64 24}
!95 = !{!55, !40, i64 0}
!96 = !{!"tree-vect-loop.c:vect_analyze_loop_1"}
!97 = !{!"tree-vect-loop.c:VEC_edge_base_length"}
!98 = !{!99, !40, i64 0}
!99 = !{!"VEC_edge_base", !40, i64 0, !40, i64 4, !38, i64 8}
!100 = !{!"tree-vect-loop.c:VEC_edge_base_index"}
!101 = !{!"tree-vect-loop.c:gimple_seq_empty_p"}
!102 = !{!103, !37, i64 0}
!103 = !{!"gimple_seq_d", !37, i64 0, !37, i64 8, !37, i64 16}
!104 = !{!"tree-vect-loop.c:phi_nodes"}
!105 = !{!87, !40, i64 96}
!106 = !{!107, !37, i64 8}
!107 = !{!"gimple_bb_info", !37, i64 0, !37, i64 8}
!108 = !{!"tree-vect-loop.c:single_pred_p"}
!109 = !{!"tree-vect-loop.c:vect_get_loop_niters"}
!110 = !{!"tree-vect-loop.c:new_loop_vec_info"}
!111 = !{!87, !37, i64 24}
!112 = !{!55, !37, i64 16}
!113 = distinct !{!113, !53}
!114 = distinct !{!114, !53}
!115 = distinct !{!115, !53}
!116 = distinct !{!116, !53}
!117 = distinct !{!117, !53}
!118 = !{!36, !40, i64 56}
!119 = !{!36, !40, i64 40}
!120 = !{!36, !37, i64 48}
!121 = !{!122, !40, i64 8}
!122 = !{!"param_info", !37, i64 0, !40, i64 8, !38, i64 12, !40, i64 16, !40, i64 20, !37, i64 24}
!123 = !{!36, !37, i64 88}
!124 = !{!36, !37, i64 80}
!125 = !{!36, !37, i64 104}
!126 = !{!36, !40, i64 120}
!127 = !{!36, !38, i64 36}
!128 = !{!"tree-vect-loop.c:loop_outer"}
!129 = !{!43, !37, i64 40}
!130 = !{!"tree-vect-loop.c:loop_vec_info_for_loop"}
!131 = !{!"tree-vect-loop.c:vect_analyze_scalar_cycles"}
!132 = !{!"tree-vect-loop.c:vect_determine_vectorization_factor"}
!133 = !{!55, !40, i64 24}
!134 = !{!55, !37, i64 32}
!135 = distinct !{!135, !53}
!136 = !{!55, !38, i64 28}
!137 = !{!55, !37, i64 48}
!138 = distinct !{!138, !53}
!139 = distinct !{!139, !53}
!140 = !{!"tree-vect-loop.c:vect_analyze_loop_operations"}
!141 = !{!55, !40, i64 120}
!142 = distinct !{!142, !53}
!143 = !{!55, !40, i64 180}
!144 = distinct !{!144, !53}
!145 = distinct !{!145, !53}
!146 = !{!36, !40, i64 32}
!147 = !{!89, !40, i64 44}
!148 = distinct !{!148, !53}
!149 = !{i32 0, i32 256}
!150 = distinct !{!150, !53}
!151 = !{i32 0, i32 65536}
!152 = !{!40, !40, i64 0}
!153 = !{!"tree-vect-loop.c:gimple_bb"}
!154 = !{!"tree-vect-loop.c:get_use_from_ptr"}
!155 = !{!156, !37, i64 24}
!156 = !{!"ssa_use_operand_d", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24}
!157 = !{!"tree-vect-loop.c:gimple_phi_arg_imm_use_ptr"}
!158 = !{!"tree-vect-loop.c:get_def_from_ptr"}
!159 = !{!"tree-vect-loop.c:gimple_phi_result_ptr"}
!160 = !{!"tree-vect-loop.c:first_readonly_imm_use"}
!161 = !{!162, !37, i64 8}
!162 = !{!"immediate_use_iterator_d", !37, i64 0, !37, i64 8, !156, i64 16, !37, i64 48}
!163 = !{!156, !37, i64 8}
!164 = !{!162, !37, i64 0}
!165 = !{!"tree-vect-loop.c:end_readonly_imm_use_p"}
!166 = !{!"tree-vect-loop.c:is_gimple_debug"}
!167 = !{!"tree-vect-loop.c:is_pattern_stmt_p"}
!168 = !{!"tree-vect-loop.c:next_readonly_imm_use"}
!169 = !{!"tree-vect-loop.c:is_gimple_assign"}
!170 = !{!"tree-vect-loop.c:gimple_code"}
!171 = !{!"tree-vect-loop.c:gimple_assign_lhs"}
!172 = !{!"tree-vect-loop.c:gimple_phi_num_args"}
!173 = !{!"tree-vect-loop.c:report_vect_op"}
!174 = !{!"tree-vect-loop.c:gimple_assign_rhs_code"}
!175 = !{!"tree-vect-loop.c:get_gimple_rhs_class"}
!176 = !{!"tree-vect-loop.c:gimple_assign_rhs1"}
!177 = !{!"tree-vect-loop.c:gimple_assign_rhs2"}
!178 = !{!"tree-vect-loop.c:gimple_nop_p"}
!179 = !{!"tree-vect-loop.c:is_loop_header_bb_p"}
!180 = !{!"tree-vect-loop.c:gimple_assign_rhs1_ptr"}
!181 = !{!"tree-vect-loop.c:gimple_assign_rhs2_ptr"}
!182 = !{!183, !40, i64 408}
!183 = !{!"processor_costs", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !38, i64 16, !40, i64 36, !38, i64 40, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !38, i64 80, !38, i64 92, !40, i64 104, !38, i64 108, !38, i64 120, !40, i64 132, !38, i64 136, !38, i64 144, !40, i64 152, !38, i64 156, !38, i64 168, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !38, i64 228, !38, i64 300, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412}
!184 = !{!55, !40, i64 176}
!185 = !{!55, !40, i64 172}
!186 = distinct !{!186, !53}
!187 = distinct !{!187, !53}
!188 = !{!183, !40, i64 412}
!189 = !{!190, !37, i64 8}
!190 = !{!"data_reference", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !191, i64 32, !192, i64 72, !193, i64 88, !37, i64 104}
!191 = !{!"innermost_loop_behavior", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!192 = !{!"indices", !37, i64 0, !37, i64 8}
!193 = !{!"dr_alias", !37, i64 0, !37, i64 8}
!194 = !{!190, !37, i64 0}
!195 = !{!196, !40, i64 16}
!196 = !{!"_slp_instance", !37, i64 0, !40, i64 8, !40, i64 12, !56, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!197 = !{!196, !40, i64 20}
!198 = distinct !{!198, !53}
!199 = !{!"tree-vect-loop.c:VEC_gimple_base_length"}
!200 = !{!201, !40, i64 0}
!201 = !{!"VEC_gimple_base", !40, i64 0, !40, i64 4, !38, i64 8}
!202 = !{!"tree-vect-loop.c:VEC_ddr_p_base_length"}
!203 = !{!204, !40, i64 0}
!204 = !{!"VEC_ddr_p_base", !40, i64 0, !40, i64 4, !38, i64 8}
!205 = !{i64 0, i64 4, !152, i64 0, i64 4, !152, i64 0, i64 4, !152, i64 0, i64 4, !152, i64 0, i64 4, !152, i64 0, i64 4, !152, i64 8, i64 24, !93}
!206 = distinct !{!206, !53}
!207 = distinct !{!207, !53}
!208 = !{!"tree-vect-loop.c:nested_in_vect_loop_p"}
!209 = distinct !{!209, !53}
!210 = !{!211, !40, i64 0}
!211 = !{!"optab_handlers", !40, i64 0}
!212 = !{i32 2, i32 -2147483648}
!213 = distinct !{!213, !53}
!214 = !{!"tree-vect-loop.c:tree_operand_length"}
!215 = !{!"tree-vect-loop.c:reduction_code_for_scalar_code"}
!216 = !{!"tree-vect-loop.c:vect_model_reduction_cost"}
!217 = !{!183, !40, i64 384}
!218 = !{!55, !37, i64 8}
!219 = !{!183, !40, i64 392}
!220 = !{!183, !40, i64 388}
!221 = !{!"tree-vect-loop.c:set_vinfo_for_stmt"}
!222 = !{!"tree-vect-loop.c:make_ssa_name"}
!223 = !{!"tree-vect-loop.c:gimple_assign_set_lhs"}
!224 = !{!"tree-vect-loop.c:vect_create_epilog_for_reduction"}
!225 = distinct !{!225, !53}
!226 = distinct !{!226, !53}
!227 = distinct !{!227, !53}
!228 = distinct !{!228, !53}
!229 = distinct !{!229, !53}
!230 = !{!55, !37, i64 40}
!231 = distinct !{!231, !53}
!232 = distinct !{!232, !53}
!233 = distinct !{!233, !53}
!234 = distinct !{!234, !53}
!235 = distinct !{!235, !53}
!236 = !{!"tree-vect-loop.c:vect_model_induction_cost"}
!237 = !{!"tree-vect-loop.c:get_initial_def_for_induction"}
!238 = !{!43, !40, i64 0}
!239 = distinct !{!239, !53}
!240 = distinct !{!240, !53}
!241 = distinct !{!241, !53}
!242 = distinct !{!242, !53}
!243 = distinct !{!243, !53}
!244 = distinct !{!244, !53}
!245 = !{!"tree-vect-loop.c:gimple_op"}
!246 = distinct !{!246, !53}
!247 = distinct !{!247, !53}
!248 = !{!55, !37, i64 128}
!249 = distinct !{!249, !53}
!250 = !{!"tree-vect-loop.c:vect_loop_kill_debug_uses"}
!251 = distinct !{!251, !53}
!252 = distinct !{!252, !53}
!253 = !{!"tree-vect-loop.c:bb_seq"}
!254 = !{!107, !37, i64 0}
!255 = !{!"tree-vect-loop.c:gimple_seq_first"}
!256 = !{!"tree-vect-loop.c:gimple_uid"}
!257 = !{!"tree-vect-loop.c:VEC_vec_void_p_base_length"}
!258 = !{!259, !40, i64 0}
!259 = !{!"VEC_vec_void_p_base", !40, i64 0, !40, i64 4, !38, i64 8}
!260 = !{!"tree-vect-loop.c:VEC_vec_void_p_base_index"}
!261 = !{!"tree-vect-loop.c:gimple_set_uid"}
!262 = !{!"tree-vect-loop.c:bb_in_loop_p"}
!263 = !{!"tree-vect-loop.c:VEC_data_reference_p_heap_alloc"}
!264 = !{!"tree-vect-loop.c:VEC_ddr_p_heap_alloc"}
!265 = !{!"tree-vect-loop.c:VEC_gimple_heap_alloc"}
!266 = !{!"tree-vect-loop.c:VEC_slp_instance_heap_alloc"}
!267 = !{!"tree-vect-loop.c:VEC_loop_p_base_length"}
!268 = !{!269, !40, i64 0}
!269 = !{!"VEC_loop_p_base", !40, i64 0, !40, i64 4, !38, i64 8}
!270 = !{!"tree-vect-loop.c:VEC_loop_p_base_index"}
!271 = !{!"tree-vect-loop.c:vect_analyze_scalar_cycles_1"}
!272 = distinct !{!272, !53}
!273 = distinct !{!273, !53}
!274 = !{!"tree-vect-loop.c:vect_is_simple_iv_evolution"}
!275 = !{!"tree-vect-loop.c:VEC_gimple_heap_safe_push"}
!276 = !{!"tree-vect-loop.c:VEC_gimple_base_pop"}
!277 = !{!"tree-vect-loop.c:tree_is_chrec"}
!278 = !{!"tree-vect-loop.c:automatically_generated_chrec_p"}
!279 = !{!"tree-vect-loop.c:VEC_gimple_heap_reserve"}
!280 = !{!"tree-vect-loop.c:VEC_gimple_base_quick_push"}
!281 = !{!"tree-vect-loop.c:VEC_gimple_base_space"}
!282 = !{!201, !40, i64 4}
!283 = !{!"tree-vect-loop.c:gimple_expr_type"}
!284 = !{!"tree-vect-loop.c:gimple_call_return_type"}
!285 = !{!"tree-vect-loop.c:gimple_call_fn"}
!286 = !{!"tree-vect-loop.c:gimple_phi_arg"}
!287 = !{!"tree-vect-loop.c:gimple_expr_code"}
!288 = !{!"tree-vect-loop.c:gimple_num_ops"}
!289 = !{!"tree-vect-loop.c:gimple_op_ptr"}
!290 = !{!"tree-vect-loop.c:gimple_has_ops"}
!291 = !{!"tree-vect-loop.c:gimple_ops"}
!292 = !{!46, !46, i64 0}
!293 = !{!"tree-vect-loop.c:gimple_statement_structure"}
!294 = !{!"tree-vect-loop.c:gss_for_code"}
!295 = !{!"tree-vect-loop.c:VEC_vec_void_p_heap_safe_push"}
!296 = !{!"tree-vect-loop.c:VEC_vec_void_p_base_replace"}
!297 = !{!"tree-vect-loop.c:VEC_vec_void_p_heap_reserve"}
!298 = !{!"tree-vect-loop.c:VEC_vec_void_p_base_quick_push"}
!299 = !{!"tree-vect-loop.c:VEC_vec_void_p_base_space"}
!300 = !{!259, !40, i64 4}
!301 = !{!"tree-vect-loop.c:gimple_set_op"}
!302 = !{!"tree-vect-loop.c:set_ssa_use_from_ptr"}
!303 = !{!"tree-vect-loop.c:gsi_after_labels"}
!304 = distinct !{!304, !53}
!305 = !{!"tree-vect-loop.c:VEC_gimple_base_iterate"}
!306 = !{!"tree-vect-loop.c:first_imm_use_stmt"}
!307 = !{!"tree-vect-loop.c:end_imm_use_stmt_p"}
!308 = !{!"tree-vect-loop.c:next_imm_use_stmt"}
!309 = !{!162, !37, i64 24}
!310 = !{!162, !37, i64 16}
!311 = !{!"tree-vect-loop.c:first_imm_use_on_stmt"}
!312 = !{!162, !37, i64 48}
!313 = !{!"tree-vect-loop.c:end_imm_use_on_stmt_p"}
!314 = !{!"tree-vect-loop.c:next_imm_use_on_stmt"}
!315 = !{!"tree-vect-loop.c:delink_imm_use"}
!316 = !{!156, !37, i64 0}
!317 = !{!"tree-vect-loop.c:link_imm_use"}
!318 = !{!"tree-vect-loop.c:link_imm_use_to_list"}
!319 = !{!"tree-vect-loop.c:link_use_stmts_after"}
!320 = distinct !{!320, !53}
!321 = distinct !{!321, !53}
!322 = !{!"tree-vect-loop.c:op_iter_init_phiuse"}
!323 = !{!324, !38, i64 0}
!324 = !{!"ssa_operand_iterator_d", !38, i64 0, !40, i64 4, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !37, i64 32}
!325 = !{!324, !37, i64 32}
!326 = !{!324, !40, i64 28}
!327 = !{!324, !40, i64 4}
!328 = !{!"tree-vect-loop.c:op_iter_done"}
!329 = !{!"tree-vect-loop.c:move_use_after_head"}
!330 = !{!"tree-vect-loop.c:op_iter_next_use"}
!331 = !{!324, !37, i64 16}
!332 = !{!333, !37, i64 0}
!333 = !{!"use_optype_d", !37, i64 0, !156, i64 8}
!334 = !{!324, !40, i64 24}
!335 = !{!"tree-vect-loop.c:op_iter_init_use"}
!336 = !{!"tree-vect-loop.c:gimple_vuse_op"}
!337 = !{!333, !37, i64 32}
!338 = !{!"tree-vect-loop.c:gimple_phi_result"}
!339 = !{!"tree-vect-loop.c:clear_and_done_ssa_iter"}
!340 = !{!"tree-vect-loop.c:op_iter_init"}
!341 = !{!324, !37, i64 8}
!342 = !{!343, !37, i64 0}
!343 = !{!"def_optype_d", !37, i64 0, !37, i64 8}
!344 = !{!"tree-vect-loop.c:gimple_def_ops"}
!345 = !{!"tree-vect-loop.c:gimple_vdef"}
!346 = !{!"tree-vect-loop.c:gimple_use_ops"}
!347 = !{!"tree-vect-loop.c:gimple_vuse"}
!348 = !{!"tree-vect-loop.c:gimple_has_mem_ops"}
!349 = !{!"tree-vect-loop.c:op_iter_init_phidef"}
!350 = !{!"tree-vect-loop.c:op_iter_init_def"}
!351 = !{!"tree-vect-loop.c:gimple_debug_bind_p"}
!352 = !{!"tree-vect-loop.c:gimple_debug_bind_reset_value"}
!353 = !{!"tree-vect-loop.c:update_stmt"}
!354 = !{!"tree-vect-loop.c:op_iter_next_def"}
!355 = !{!343, !37, i64 8}
