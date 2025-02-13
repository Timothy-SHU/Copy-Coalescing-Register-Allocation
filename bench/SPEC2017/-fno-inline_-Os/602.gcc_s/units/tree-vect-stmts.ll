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
%struct.insn_data = type { ptr, %union.anon.1, ptr, ptr, i8, i8, i8, i8 }
%union.anon.1 = type { ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct._slp_tree = type { ptr, ptr, ptr, ptr, i32, %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct._slp_instance = type { ptr, i32, i32, %struct.anon.2, ptr, ptr, ptr }
%struct.anon.2 = type { i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [41 x i8] c"=== vect_mark_stmts_to_be_vectorized ===\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"init: phi relevant? \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"init: stmt relevant? \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"worklist: examine stmt: \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unsupported use of reduction.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"unsupported use of nested cycle.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unsupported use of double reduction.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"vec_stmt_relevant_p: stmt has vdefs.\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"vec_stmt_relevant_p: used out of loop.\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"tree-vect-stmts.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"mark relevant %d, live %d.\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"last stmt in pattern. don't mark relevant/live.\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"already marked relevant/live.\00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"not vectorized: unsupported use in stmt.\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"def_stmt is out of loop.\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"reduc-stmt defining reduc-phi in the same nest.\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"outer-loop def-stmt defining inner-loop stmt.\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"inner-loop def-stmt defining outer-loop stmt.\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@ix86_cost = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [62 x i8] c"vect_model_simple_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"vect_model_store_cost: strided group_size = %d .\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"vect_model_store_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"vect_model_load_cost: strided group_size = %d .\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"vect_model_load_cost: aligned.\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"vect_model_load_cost: unaligned supported by hardware.\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.28 = private unnamed_addr constant [52 x i8] c"vect_model_load_cost: unaligned software pipelined.\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"vect_model_load_cost: inside_cost = %d, outside_cost = %d .\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"cst_\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"created new init_stmt: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [31 x i8] c"vect_get_vec_def_for_operand: \00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"def =  \00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"  def_stmt =  \00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Create vector_cst. nunits = %d\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Create vector_inv.\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"add new stmt: \00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"value used after loop.\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.39 = private unnamed_addr constant [26 x i8] c"==> examining statement: \00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"not vectorized: stmt has volatile operands\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"irrelevant.\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"get vectype for scalar type:  \00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"not SLPed: unsupported data-type \00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"vectype:  \00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.45 = private unnamed_addr constant [35 x i8] c"not vectorized: relevant stmt not \00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"supported: \00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"not vectorized: live stmt not \00", align 1
@.str.48 = private unnamed_addr constant [74 x i8] c"not vectorized: the size of group of strided accesses is not a power of 2\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.49 = private unnamed_addr constant [16 x i8] c"use not simple.\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"=== vectorizable_promotion ===\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"transform type promotion operation. ncopies = %d.\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"=== vectorizable_demotion ===\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"transform type demotion operation. ncopies = %d.\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"conversion not supported by target.\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"transform conversion.\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"num. args = %d (not unary/binary op).\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"vector/vector shift/rotate found.\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"vector/scalar shift/rotate found.\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"operand mode requires invariant argument.\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"no optab.\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"op not supported by target.\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.62 = private unnamed_addr constant [28 x i8] c"proceeding using word mode.\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"not worthwhile without SIMD support.\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"=== vectorizable_operation ===\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"transform binary/unary operation.\00", align 1
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str.66 = private unnamed_addr constant [29 x i8] c"operand 1 using scalar mode.\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"=== vectorizable_assignment ===\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"transform assignment.\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"multiple types in nested loop.\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.70 = private unnamed_addr constant [36 x i8] c"Aligned load, but unsupported type.\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"???  operands of different types\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"transform load.\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"argument types differ.\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"function is not vectorizable.\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"=== vectorizable_call ===\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"transform operation.\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"transform store. ncopies = %d\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"stmt not supported.\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"Record the vdef for outer-loop vectorization.\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.80 = private unnamed_addr constant [35 x i8] c"get vectype with %d units of type \00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"vectype: \00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"mode not supported by target.\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"vect_is_simple_use: operand \00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"non-associatable copy.\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"not ssa-name.\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"no def_stmt.\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"def_stmt: \00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"Unsupported pattern.\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"type of def: %d.\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"unsupported defining stmt: \00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"Unordered widening operation detected.\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_mark_stmts_to_be_vectorized(ptr noundef %0) local_unnamed_addr #0 !prof !494 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %8 = load ptr, ptr %0, align 8, !tbaa !495
  %9 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !501
  %11 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %13 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15, !prof !507

15:                                               ; preds = %1
  %16 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %17 = tail call i64 @fwrite(ptr nonnull @.str, i64 40, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = tail call fastcc ptr @VEC_gimple_heap_alloc() #20
  store ptr %19, ptr %2, align 8, !tbaa !508
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %25, label %21, !prof !509

21:                                               ; preds = %18
  %22 = zext i32 %12 to i64
  br label %29

23:                                               ; preds = %72
  %24 = load ptr, ptr %2, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %27 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %26) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %147, label %75, !prof !510

29:                                               ; preds = %21, %72
  %30 = phi i64 [ 0, %21 ], [ %73, %72 ]
  %31 = getelementptr inbounds ptr, ptr %10, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !508
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %32) #19
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !511
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %52, !prof !512

35:                                               ; preds = %29, %49
  %36 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %37 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39, !prof !513

39:                                               ; preds = %35
  %40 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %41 = call i64 @fwrite(ptr nonnull @.str.1, i64 20, i64 1, ptr %40)
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %42, ptr noundef %36, i32 noundef 0, i32 noundef 2) #19
  br label %43

43:                                               ; preds = %39, %35
  %44 = call fastcc zeroext i8 @vect_stmt_relevant_p(ptr noundef %36, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #20, !range !511
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46, !prof !513

46:                                               ; preds = %43
  %47 = load i32, ptr %5, align 4, !tbaa !514
  %48 = load i8, ptr %4, align 1, !tbaa !515
  call fastcc void @vect_mark_relevant(ptr noundef nonnull %2, ptr noundef %36, i32 noundef %47, i8 noundef zeroext %48) #20
  br label %49

49:                                               ; preds = %43, %46
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !511
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %35, label %52, !prof !516, !llvm.loop !517

52:                                               ; preds = %49, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %32) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !511
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %72, !prof !512

55:                                               ; preds = %52, %69
  %56 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %57 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59, !prof !520

59:                                               ; preds = %55
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %61 = call i64 @fwrite(ptr nonnull @.str.2, i64 21, i64 1, ptr %60)
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %62, ptr noundef %56, i32 noundef 0, i32 noundef 2) #19
  br label %63

63:                                               ; preds = %59, %55
  %64 = call fastcc zeroext i8 @vect_stmt_relevant_p(ptr noundef %56, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #20, !range !511
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66, !prof !521

66:                                               ; preds = %63
  %67 = load i32, ptr %5, align 4, !tbaa !514
  %68 = load i8, ptr %4, align 1, !tbaa !515
  call fastcc void @vect_mark_relevant(ptr noundef nonnull %2, ptr noundef %56, i32 noundef %67, i8 noundef zeroext %68) #20
  br label %69

69:                                               ; preds = %63, %66
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %70 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !511
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %55, label %72, !prof !522, !llvm.loop !523

72:                                               ; preds = %69, %52
  %73 = add nuw nsw i64 %30, 1
  %74 = icmp eq i64 %73, %22
  br i1 %74, label %23, label %29, !prof !524, !llvm.loop !525

75:                                               ; preds = %25, %143
  %76 = phi ptr [ %144, %143 ], [ %26, %25 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  %77 = call fastcc ptr @VEC_gimple_base_pop(ptr noundef %76) #20
  %78 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %84, label %80, !prof !526

80:                                               ; preds = %75
  %81 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %82 = call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %81)
  %83 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %83, ptr noundef %77, i32 noundef 0, i32 noundef 2) #19
  br label %84

84:                                               ; preds = %80, %75
  %85 = call fastcc ptr @vinfo_for_stmt(ptr noundef %77) #20
  %86 = getelementptr inbounds %struct._stmt_vec_info, ptr %85, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !527
  store i32 %87, ptr %5, align 4, !tbaa !514
  %88 = getelementptr inbounds %struct._stmt_vec_info, ptr %85, i64 0, i32 4
  %89 = load i8, ptr %88, align 4, !tbaa !530
  store i8 %89, ptr %4, align 1, !tbaa !515
  %90 = getelementptr inbounds %struct._stmt_vec_info, ptr %85, i64 0, i32 16
  %91 = load i32, ptr %90, align 8, !tbaa !531
  switch i32 %91, label %121 [
    i32 5, label %92
    i32 7, label %104
    i32 6, label %113
  ], !prof !532

92:                                               ; preds = %84
  switch i32 %87, label %97 [
    i32 0, label %93
    i32 3, label %94
  ], !prof !533

93:                                               ; preds = %92
  store i32 3, ptr %5, align 4, !tbaa !514
  br label %103

94:                                               ; preds = %92
  %95 = call fastcc i32 @gimple_code(ptr noundef %77) #20, !range !534
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %103, label %97, !prof !535

97:                                               ; preds = %94, %92
  %98 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %148, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %102 = call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr %101)
  br label %148

103:                                              ; preds = %94, %93
  store i8 0, ptr %4, align 1, !tbaa !515
  br label %121

104:                                              ; preds = %84
  %105 = icmp ugt i32 %87, 2
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %148, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %111 = call i64 @fwrite(ptr nonnull @.str.5, i64 32, i64 1, ptr %110)
  br label %148

112:                                              ; preds = %104
  store i8 0, ptr %4, align 1, !tbaa !515
  br label %121

113:                                              ; preds = %84
  switch i32 %87, label %114 [
    i32 3, label %120
    i32 0, label %120
  ]

114:                                              ; preds = %113
  %115 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %148, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %119 = call i64 @fwrite(ptr nonnull @.str.6, i64 36, i64 1, ptr %118)
  br label %148

120:                                              ; preds = %113, %113
  store i8 0, ptr %4, align 1, !tbaa !515
  br label %121

121:                                              ; preds = %84, %120, %112, %103
  %122 = phi i8 [ %89, %84 ], [ 0, %120 ], [ 0, %112 ], [ 0, %103 ]
  %123 = phi i32 [ %87, %84 ], [ %87, %120 ], [ %87, %112 ], [ 3, %103 ]
  %124 = call fastcc i32 @gimple_code(ptr noundef %77) #20, !range !534
  %125 = icmp eq i32 %124, 16
  br i1 %125, label %126, label %128, !prof !536

126:                                              ; preds = %121
  %127 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %7, ptr noundef %77) #20
  br label %130

128:                                              ; preds = %121
  %129 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %7, ptr noundef %77) #20
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi ptr [ %127, %126 ], [ %129, %128 ]
  %132 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %143, !prof !537

134:                                              ; preds = %130, %139
  %135 = phi ptr [ %140, %139 ], [ %131, %130 ]
  %136 = call fastcc ptr @get_use_from_ptr(ptr noundef %135) #20
  %137 = call fastcc zeroext i8 @process_use(ptr noundef %77, ptr noundef %136, ptr noundef nonnull %0, i8 noundef zeroext %122, i32 noundef %123, ptr noundef nonnull %2) #20, !range !511
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %148, label %139, !prof !538

139:                                              ; preds = %134
  %140 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #20
  %141 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %134, label %143, !prof !539, !llvm.loop !540

143:                                              ; preds = %139, %130
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  %144 = load ptr, ptr %2, align 8
  %145 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %144) #20
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %75, !prof !541, !llvm.loop !542

147:                                              ; preds = %143, %25
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %2) #20
  br label %149

148:                                              ; preds = %134, %114, %117, %106, %109, %97, %100
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  br label %149

149:                                              ; preds = %148, %147
  %150 = phi i8 [ 1, %147 ], [ 0, %148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i8 %150
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !494 !PGOFuncName !543 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #19
  ret ptr %1
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !544 !PGOFuncName !545 {
  %2 = load ptr, ptr %0, align 8, !tbaa !546
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !548 !PGOFuncName !549 {
  %2 = load ptr, ptr %0, align 8, !tbaa !546
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  ret ptr %3
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vect_stmt_relevant_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !552 !PGOFuncName !553 {
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.immediate_use_iterator_d, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !495
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  store i32 0, ptr %2, align 4, !tbaa !514
  store i8 0, ptr %3, align 1, !tbaa !515
  %8 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %0) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !554

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %12 = load i32, ptr %11, align 8, !tbaa !555
  %13 = icmp eq i32 %12, 12
  br i1 %13, label %15, label %14, !prof !507

14:                                               ; preds = %10
  store i32 4, ptr %2, align 4, !tbaa !514
  br label %15

15:                                               ; preds = %14, %10, %4
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %28, label %18, !prof !556

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !557

21:                                               ; preds = %18
  %22 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24, !prof !558

24:                                               ; preds = %21
  %25 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %26 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 36, i64 1, ptr %25)
  br label %27

27:                                               ; preds = %24, %21
  store i32 4, ptr %2, align 4, !tbaa !514
  br label %28

28:                                               ; preds = %18, %27, %15
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %33, !prof !556

31:                                               ; preds = %28
  %32 = call fastcc ptr @op_iter_init_phidef(ptr noundef nonnull %5, ptr noundef %0) #20
  br label %35

33:                                               ; preds = %28
  %34 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %5, ptr noundef %0) #20
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %81, !prof !559

39:                                               ; preds = %35, %77
  %40 = phi ptr [ %78, %77 ], [ %36, %35 ]
  %41 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %40) #20
  %42 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %6, ptr noundef %41) #20
  %43 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #20, !range !511
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %77, !prof !560

45:                                               ; preds = %39, %73
  %46 = phi ptr [ %74, %73 ], [ %42, %39 ]
  %47 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !515
  %49 = tail call fastcc ptr @gimple_bb(ptr noundef %48) #20
  %50 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %7, ptr noundef %49) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %73, !prof !561

52:                                               ; preds = %45
  %53 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55, !prof !562

55:                                               ; preds = %52
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %57 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 38, i64 1, ptr %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load ptr, ptr %47, align 8, !tbaa !515
  %60 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %59) #20, !range !511
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %73, !prof !562

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @gimple_code(ptr noundef %59) #20, !range !534
  %64 = icmp eq i32 %63, 16
  br i1 %64, label %66, label %65, !prof !562

65:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 153, ptr noundef nonnull @.str.10) #19
  br label %66

66:                                               ; preds = %62, %65
  %67 = tail call ptr @single_exit(ptr noundef %7) #19
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !563
  %70 = icmp eq ptr %49, %69
  br i1 %70, label %72, label %71, !prof !562

71:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 154, ptr noundef nonnull @.str.10) #19
  br label %72

72:                                               ; preds = %66, %71
  store i8 1, ptr %3, align 1, !tbaa !515
  br label %73

73:                                               ; preds = %45, %72, %58
  %74 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %6) #20
  %75 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #20, !range !511
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %45, label %77, !prof !565, !llvm.loop !566

77:                                               ; preds = %73, %39
  %78 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %5) #20
  %79 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #20
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %39, label %81, !prof !567, !llvm.loop !568

81:                                               ; preds = %77, %35
  %82 = load i8, ptr %3, align 1, !tbaa !515
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %88, !prof !569

84:                                               ; preds = %81
  %85 = load i32, ptr %2, align 4, !tbaa !514
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i8
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i8 [ 1, %81 ], [ %87, %84 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  ret i8 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_mark_relevant(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !570 !PGOFuncName !571 {
  %5 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #20
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !527
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 4
  %9 = load i8, ptr %8, align 4, !tbaa !530
  %10 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12, !prof !572

12:                                               ; preds = %4
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %14 = zext i8 %3 to i32
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %2, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 13
  %18 = load i8, ptr %17, align 8, !tbaa !573
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23, !prof !572

20:                                               ; preds = %16
  %21 = load i8, ptr %8, align 4, !tbaa !530
  %22 = load i32, ptr %6, align 8, !tbaa !527
  br label %42

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !574
  %26 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %30 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 47, i64 1, ptr %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %25) #20
  %33 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !574
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 75, ptr noundef nonnull @.str.10) #19
  br label %37

37:                                               ; preds = %31, %36
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !527
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %32, i64 0, i32 4
  %41 = load i8, ptr %40, align 4, !tbaa !530
  br label %42

42:                                               ; preds = %20, %37
  %43 = phi i32 [ %39, %37 ], [ %22, %20 ]
  %44 = phi i8 [ %41, %37 ], [ %21, %20 ]
  %45 = phi ptr [ %32, %37 ], [ %5, %20 ]
  %46 = phi i32 [ %39, %37 ], [ %7, %20 ]
  %47 = phi i8 [ %41, %37 ], [ %9, %20 ]
  %48 = phi ptr [ %25, %37 ], [ %1, %20 ]
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %45, i64 0, i32 4
  %50 = or i8 %44, %3
  store i8 %50, ptr %49, align 4, !tbaa !530
  %51 = icmp ult i32 %43, %2
  br i1 %51, label %52, label %54, !prof !575

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct._stmt_vec_info, ptr %45, i64 0, i32 3
  store i32 %2, ptr %53, align 8, !tbaa !527
  br label %54

54:                                               ; preds = %52, %42
  %55 = phi i32 [ %2, %52 ], [ %43, %42 ]
  %56 = icmp eq i32 %55, %46
  %57 = icmp eq i8 %50, %47
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %65, !prof !576

59:                                               ; preds = %54
  %60 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62, !prof !577

62:                                               ; preds = %59
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %64 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr %63)
  br label %66

65:                                               ; preds = %54
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0, ptr noundef %48) #20
  br label %66

66:                                               ; preds = %59, %62, %65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !552 !PGOFuncName !578 {
  %2 = load ptr, ptr %0, align 8, !tbaa !546
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !579
  store ptr %4, ptr %0, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !580 !PGOFuncName !581 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !546
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !582
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !583
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !584 !PGOFuncName !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !586

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !587
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #8 !prof !589 !PGOFuncName !590 {
  %2 = load i32, ptr %0, align 8, !tbaa !587
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !587
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4, !prof !593

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #20
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10, !prof !594

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.10) #19
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !595 !PGOFuncName !596 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !494 !PGOFuncName !597 {
  %2 = load ptr, ptr %0, align 8, !tbaa !508
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !598

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !508
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !599 !PGOFuncName !600 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !601
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !603

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !601
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !604
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !605
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !606
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !607 !PGOFuncName !608 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !606
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !609 !PGOFuncName !610 {
  %2 = load i8, ptr %0, align 8, !tbaa !601
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !611 !PGOFuncName !612 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !613
  %4 = load ptr, ptr %3, align 8, !tbaa !508
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_use(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !prof !611 !PGOFuncName !615 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %2, align 8, !tbaa !495
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %12 = tail call fastcc zeroext i8 @exist_non_indexing_operands_for_use_p(ptr noundef %1, ptr noundef %0) #20, !range !511
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %141, label %14, !prof !616

14:                                               ; preds = %6
  %15 = call zeroext i8 @vect_is_simple_use(ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #20, !range !511
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23, !prof !617

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %141, label %20, !prof !618

20:                                               ; preds = %17
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %22 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 40, i64 1, ptr %21)
  br label %141

23:                                               ; preds = %14
  %24 = load ptr, ptr %8, align 8, !tbaa !508
  %25 = icmp eq ptr %24, null
  br i1 %25, label %141, label %26, !prof !619

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %24) #20, !range !511
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %141, !prof !620

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %24) #20
  %31 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %10, ptr noundef %30) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39, !prof !621

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %141, label %36, !prof !622

36:                                               ; preds = %33
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %38 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %37)
  br label %141

39:                                               ; preds = %29
  %40 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %24) #20
  %41 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %42 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %89, !prof !623

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !531
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %89, !prof !624

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %24) #20, !range !534
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %89, label %51, !prof !625

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._stmt_vec_info, ptr %40, i64 0, i32 16
  %53 = load i32, ptr %52, align 8, !tbaa !531
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %89, !prof !535

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !626
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !626
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %61, label %89, !prof !535

61:                                               ; preds = %55
  %62 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64, !prof !535

64:                                               ; preds = %61
  %65 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %66 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 47, i64 1, ptr %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = getelementptr inbounds %struct._stmt_vec_info, ptr %40, i64 0, i32 13
  %69 = load i8, ptr %68, align 8, !tbaa !573
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %75, label %71, !prof !535

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct._stmt_vec_info, ptr %40, i64 0, i32 14
  %73 = load ptr, ptr %72, align 8, !tbaa !574
  %74 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %73) #20
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi ptr [ %74, %71 ], [ %40, %67 ]
  %77 = getelementptr inbounds %struct._stmt_vec_info, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !527
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %81, label %80, !prof !535

80:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 287, ptr noundef nonnull @.str.10) #19
  br label %81

81:                                               ; preds = %75, %80
  %82 = getelementptr inbounds %struct._stmt_vec_info, ptr %76, i64 0, i32 4
  %83 = load i8, ptr %82, align 4, !tbaa !530
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %141, !prof !625

85:                                               ; preds = %81
  %86 = load i32, ptr %77, align 8, !tbaa !527
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %141

88:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 289, ptr noundef nonnull @.str.10) #19
  br label %141

89:                                               ; preds = %55, %51, %48, %44, %39
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !626
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !626
  %94 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %91, ptr noundef %93) #19
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %119, label %96, !prof !628

96:                                               ; preds = %89
  %97 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %101 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 45, i64 1, ptr %100)
  br label %102

102:                                              ; preds = %99, %96
  switch i32 %4, label %118 [
    i32 0, label %103
    i32 1, label %108
    i32 2, label %113
    i32 4, label %139
  ]

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 16
  %105 = load i32, ptr %104, align 8, !tbaa !531
  %106 = icmp eq i32 %105, 7
  %107 = select i1 %106, i32 4, i32 0
  br label %139

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 16
  %110 = load i32, ptr %109, align 8, !tbaa !531
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %112, label %139

112:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 313, ptr noundef nonnull @.str.10) #19
  br label %139

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 16
  %115 = load i32, ptr %114, align 8, !tbaa !531
  %116 = icmp eq i32 %115, 5
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 318, ptr noundef nonnull @.str.10) #19
  br label %139

118:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 326, ptr noundef nonnull @.str.10) #19
  br label %139

119:                                              ; preds = %89
  %120 = load ptr, ptr %92, align 8, !tbaa !626
  %121 = load ptr, ptr %90, align 8, !tbaa !626
  %122 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %120, ptr noundef %121) #19
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %139, label %124, !prof !628

124:                                              ; preds = %119
  %125 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %129 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 45, i64 1, ptr %128)
  br label %130

130:                                              ; preds = %127, %124
  switch i32 %4, label %138 [
    i32 0, label %131
    i32 3, label %139
    i32 4, label %137
  ]

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 16
  %133 = load i32, ptr %132, align 8, !tbaa !531
  %134 = add i32 %133, -5
  %135 = icmp ult i32 %134, 2
  %136 = zext i1 %135 to i32
  br label %139

137:                                              ; preds = %130
  br label %139

138:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 359, ptr noundef nonnull @.str.10) #19
  br label %139

139:                                              ; preds = %130, %117, %113, %112, %108, %119, %138, %137, %131, %103, %102, %118
  %140 = phi i32 [ %4, %118 ], [ %4, %102 ], [ %107, %103 ], [ %4, %138 ], [ 2, %137 ], [ %136, %131 ], [ %4, %119 ], [ 3, %108 ], [ 3, %112 ], [ 4, %113 ], [ 4, %117 ], [ 1, %130 ]
  tail call fastcc void @vect_mark_relevant(ptr noundef %5, ptr noundef nonnull %24, i32 noundef %140, i8 noundef zeroext %3) #20
  br label %141

141:                                              ; preds = %88, %85, %81, %33, %36, %23, %26, %17, %20, %6, %139
  %142 = phi i8 [ 1, %139 ], [ 1, %6 ], [ 0, %20 ], [ 0, %17 ], [ 1, %26 ], [ 1, %23 ], [ 1, %36 ], [ 1, %33 ], [ 1, %81 ], [ 1, %85 ], [ 1, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret i8 %142
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !629 !PGOFuncName !630 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !631
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !632

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !633
  store ptr %7, ptr %2, align 8, !tbaa !631
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !635
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !605
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !636

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !604
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !635
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !601
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !637 !PGOFuncName !638 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !511
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !639

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !640 !PGOFuncName !641 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #20
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !601
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !642

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !601
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !606
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !643 !PGOFuncName !644 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !606
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 !prof !645 !PGOFuncName !646 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !647
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !649
  store ptr %6, ptr %0, align 8, !tbaa !650
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !511
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !651
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !652 !PGOFuncName !653 {
  %2 = load ptr, ptr %0, align 8, !tbaa !508
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !654 !PGOFuncName !655 {
  %2 = load ptr, ptr %0, align 8, !tbaa !650
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !647
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !656 !PGOFuncName !657 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !515
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !658 !PGOFuncName !659 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #7 !prof !660 !PGOFuncName !661 {
  %2 = load ptr, ptr %0, align 8, !tbaa !650
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !649
  store ptr %4, ptr %0, align 8, !tbaa !650
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !511
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !662
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #7 !prof !663 !PGOFuncName !664 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !665
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !666

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !667
  %8 = load ptr, ptr %3, align 8, !tbaa !669
  store ptr %8, ptr %2, align 8, !tbaa !665
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !601
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !670 !PGOFuncName !671 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #10 !prof !672 !PGOFuncName !673 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !674 !PGOFuncName !675 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !601
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !prof !676 !PGOFuncName !677 {
  %4 = and i32 %2, 10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !678

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !665
  br label %17

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !665
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12, !prof !679

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !680

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8, !tbaa !669
  store ptr %16, ptr %10, align 8, !tbaa !665
  br label %17

17:                                               ; preds = %6, %15, %12, %8
  %18 = and i32 %2, 5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22, !prof !681

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !631
  br label %31

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %24 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !631
  %25 = icmp eq ptr %23, null
  br i1 %25, label %31, label %26, !prof !682

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !683

29:                                               ; preds = %26
  %30 = load ptr, ptr %23, align 8, !tbaa !633
  store ptr %30, ptr %24, align 8, !tbaa !631
  br label %31

31:                                               ; preds = %20, %29, %26, %22
  store i8 0, ptr %0, align 8, !tbaa !601
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !643 !PGOFuncName !684 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !511
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !685

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !607 !PGOFuncName !686 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !511
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !687

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !607 !PGOFuncName !688 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !511
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !687

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !689 !PGOFuncName !690 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !691 !PGOFuncName !692 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !508
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !691 !PGOFuncName !693 {
  %2 = load ptr, ptr %0, align 8, !tbaa !508
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !694

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !508
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !691 !PGOFuncName !695 {
  %3 = load i32, ptr %0, align 8, !tbaa !587
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !587
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !691 !PGOFuncName !696 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !694

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !697
  %6 = load i32, ptr %0, align 8, !tbaa !587
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !580 !PGOFuncName !698 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !699
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !700

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !701

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !702
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !580 !PGOFuncName !704 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !701

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !705
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !707 !PGOFuncName !708 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !515
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !709 !PGOFuncName !710 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !711

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !712
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !714 !PGOFuncName !715 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !508
  ret ptr %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !716 !PGOFuncName !717 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !515
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !599 !PGOFuncName !718 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !515
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @exist_non_indexing_operands_for_use_p(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 !prof !611 !PGOFuncName !719 {
  %3 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #20
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !720
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7, !prof !721

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %1) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10, !prof !722

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #20
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %23, label %15, !prof !723

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %23, !prof !724

20:                                               ; preds = %15
  %21 = icmp eq ptr %16, %0
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %20, %15, %10, %7, %2
  %24 = phi i8 [ 1, %2 ], [ 0, %7 ], [ 0, %10 ], [ 0, %15 ], [ %22, %20 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_is_simple_use(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 !prof !725 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8, !prof !726

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 8, !tbaa !495
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ null, %6 ]
  store ptr null, ptr %3, align 8, !tbaa !508
  store ptr null, ptr %4, align 8, !tbaa !508
  %12 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14, !prof !727

14:                                               ; preds = %10
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %16 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 28, i64 1, ptr %15)
  %17 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %0, i32 noundef 2) #19
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i64, ptr %0, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -23
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %25, !prof !728

24:                                               ; preds = %18
  store i32 1, ptr %5, align 4, !tbaa !514
  br label %126

25:                                               ; preds = %18
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !729

28:                                               ; preds = %25
  store ptr %0, ptr %4, align 8, !tbaa !508
  store i32 2, ptr %5, align 4, !tbaa !514
  br label %126

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 112
  br i1 %32, label %33, label %43, !prof !730

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %38 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 22, i64 1, ptr %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !515
  %42 = load i64, ptr %41, align 8
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi i64 [ %42, %39 ], [ %30, %29 ]
  %45 = phi ptr [ %41, %39 ], [ %0, %29 ]
  %46 = and i64 %44, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %54, label %48, !prof !731

48:                                               ; preds = %43
  %49 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %126, label %51, !prof !732

51:                                               ; preds = %48
  %52 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %53 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 13, i64 1, ptr %52)
  br label %126

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !515
  store ptr %56, ptr %3, align 8, !tbaa !508
  %57 = icmp eq ptr %56, null
  %58 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %59 = icmp eq i8 %58, 0
  br i1 %57, label %60, label %64, !prof !733

60:                                               ; preds = %54
  br i1 %59, label %126, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %63 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 12, i64 1, ptr %62)
  br label %126

64:                                               ; preds = %54
  br i1 %59, label %70, label %65, !prof !734

65:                                               ; preds = %64
  %66 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %67 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 10, i64 1, ptr %66)
  %68 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %69 = load ptr, ptr %3, align 8, !tbaa !508
  tail call void @print_gimple_stmt(ptr noundef %68, ptr noundef %69, i32 noundef 0, i32 noundef 2) #19
  br label %70

70:                                               ; preds = %65, %64
  %71 = load ptr, ptr %3, align 8, !tbaa !508
  %72 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %71) #20, !range !511
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74, !prof !735

74:                                               ; preds = %70
  store ptr %45, ptr %4, align 8, !tbaa !508
  store i32 2, ptr %5, align 4, !tbaa !514
  br label %126

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @gimple_bb(ptr noundef %71) #20
  %77 = icmp eq ptr %11, null
  br i1 %77, label %83, label %78, !prof !736

78:                                               ; preds = %75
  %79 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %11, ptr noundef %76) #19
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81, !prof !737

81:                                               ; preds = %78
  %82 = load ptr, ptr %3, align 8, !tbaa !508
  br label %90

83:                                               ; preds = %75
  %84 = load ptr, ptr %2, align 8, !tbaa !738
  %85 = icmp eq ptr %76, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @gimple_code(ptr noundef %71) #20, !range !534
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83, %78
  store i32 2, ptr %5, align 4, !tbaa !514
  br label %102

90:                                               ; preds = %81, %86
  %91 = phi ptr [ %82, %81 ], [ %71, %86 ]
  %92 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %91) #20
  %93 = getelementptr inbounds %struct._stmt_vec_info, ptr %92, i64 0, i32 16
  %94 = load i32, ptr %93, align 8, !tbaa !531
  store i32 %94, ptr %5, align 4, !tbaa !514
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %102, !prof !740

96:                                               ; preds = %90
  %97 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %126, label %99, !prof !741

99:                                               ; preds = %96
  %100 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %101 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 20, i64 1, ptr %100)
  br label %126

102:                                              ; preds = %89, %90
  %103 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105, !prof !742

105:                                              ; preds = %102
  %106 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %107 = load i32, ptr %5, align 4, !tbaa !514
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.89, i32 noundef %107) #20
  br label %109

109:                                              ; preds = %105, %102
  %110 = load ptr, ptr %3, align 8, !tbaa !508
  %111 = tail call fastcc i32 @gimple_code(ptr noundef %110) #20, !range !534
  %112 = trunc i32 %111 to i8
  switch i8 %112, label %120 [
    i8 16, label %113
    i8 6, label %115
    i8 8, label %117
  ], !prof !743

113:                                              ; preds = %109
  %114 = tail call fastcc ptr @gimple_phi_result(ptr noundef %110) #20
  store ptr %114, ptr %4, align 8, !tbaa !508
  br label %126

115:                                              ; preds = %109
  %116 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %110) #20
  store ptr %116, ptr %4, align 8, !tbaa !508
  br label %126

117:                                              ; preds = %109
  %118 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %110) #20
  store ptr %118, ptr %4, align 8, !tbaa !508
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %126, !prof !625

120:                                              ; preds = %117, %109
  %121 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %125 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 27, i64 1, ptr %124)
  br label %126

126:                                              ; preds = %113, %115, %117, %120, %123, %96, %99, %60, %61, %48, %51, %74, %28, %24
  %127 = phi i8 [ 1, %24 ], [ 1, %28 ], [ 1, %74 ], [ 0, %51 ], [ 0, %48 ], [ 0, %61 ], [ 0, %60 ], [ 0, %99 ], [ 0, %96 ], [ 0, %123 ], [ 0, %120 ], [ 1, %117 ], [ 1, %115 ], [ 1, %113 ]
  ret i8 %127
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !744 !PGOFuncName !745 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !746 !PGOFuncName !747 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !748 !PGOFuncName !749 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !750 !PGOFuncName !751 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !511
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !752

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !508
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !753 !PGOFuncName !754 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !755
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !756

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.10) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !753 !PGOFuncName !757 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !753 !PGOFuncName !758 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !514
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !759 !PGOFuncName !760 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !759 !PGOFuncName !761 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !515
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !762

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.10) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cost_for_stmt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !763 {
  %2 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %3 = load i32, ptr %2, align 8, !tbaa !555
  switch i32 %3, label %16 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %12
    i32 6, label %12
    i32 5, label %12
    i32 7, label %12
    i32 8, label %12
    i32 9, label %12
    i32 10, label %12
    i32 11, label %12
    i32 4, label %12
  ], !prof !764

4:                                                ; preds = %1
  %5 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %6 = getelementptr inbounds %struct.processor_costs, ptr %5, i64 0, i32 38
  %7 = load i32, ptr %6, align 4, !tbaa !765
  br label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %10 = getelementptr inbounds %struct.processor_costs, ptr %9, i64 0, i32 39
  %11 = load i32, ptr %10, align 4, !tbaa !767
  br label %17

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %13 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %14 = getelementptr inbounds %struct.processor_costs, ptr %13, i64 0, i32 37
  %15 = load i32, ptr %14, align 4, !tbaa !768
  br label %17

16:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 570, ptr noundef nonnull @.str.10) #19
  br label %17

17:                                               ; preds = %16, %12, %8, %4
  %18 = phi i32 [ 0, %16 ], [ %15, %12 ], [ %11, %8 ], [ %7, %4 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_model_simple_cost(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 !prof !769 {
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 4, !tbaa !770
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %34, label %8, !prof !625

8:                                                ; preds = %4
  %9 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %10 = getelementptr inbounds %struct.processor_costs, ptr %9, i64 0, i32 40
  %11 = load i32, ptr %10, align 4, !tbaa !771
  %12 = getelementptr inbounds %struct.processor_costs, ptr %9, i64 0, i32 42
  br label %13

13:                                               ; preds = %8, %24
  %14 = phi i1 [ true, %8 ], [ false, %24 ]
  %15 = phi i64 [ 0, %8 ], [ 1, %24 ]
  %16 = phi i32 [ 0, %8 ], [ %25, %24 ]
  %17 = getelementptr inbounds i32, ptr %2, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !514
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %24, !prof !772

21:                                               ; preds = %13
  %22 = load i32, ptr %12, align 4, !tbaa !773
  %23 = add nsw i32 %22, %16
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi i32 [ %23, %21 ], [ %16, %13 ]
  br i1 %14, label %13, label %26, !prof !774, !llvm.loop !775

26:                                               ; preds = %24
  %27 = mul nsw i32 %11, %1
  %28 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30, !prof !535

30:                                               ; preds = %26
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef %27, i32 noundef %25) #20
  br label %33

33:                                               ; preds = %30, %26
  tail call fastcc void @stmt_vinfo_set_inside_of_loop_cost(ptr noundef %0, ptr noundef %3, i32 noundef %27) #20
  tail call fastcc void @stmt_vinfo_set_outside_of_loop_cost(ptr noundef %0, ptr noundef %3, i32 noundef %25) #20
  br label %34

34:                                               ; preds = %4, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @stmt_vinfo_set_inside_of_loop_cost(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #13 !prof !763 !PGOFuncName !776 {
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24, i32 1
  %6 = getelementptr inbounds %struct._slp_tree, ptr %1, i64 0, i32 5, i32 1
  %7 = select i1 %4, ptr %5, ptr %6, !prof !558
  store i32 %2, ptr %7, align 4, !tbaa !514
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @stmt_vinfo_set_outside_of_loop_cost(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #13 !prof !763 !PGOFuncName !777 {
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 24
  %6 = getelementptr inbounds %struct._slp_tree, ptr %1, i64 0, i32 5
  %7 = select i1 %4, ptr %5, ptr %6, !prof !558
  store i32 %2, ptr %7, align 4, !tbaa !514
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_model_store_cost(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !778 {
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 4, !tbaa !770
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %52, label %8, !prof !779

8:                                                ; preds = %4
  %9 = add i32 %2, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %15, !prof !780

11:                                               ; preds = %8
  %12 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %13 = getelementptr inbounds %struct.processor_costs, ptr %12, i64 0, i32 42
  %14 = load i32, ptr %13, align 4, !tbaa !773
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !781
  %19 = icmp eq ptr %18, null
  %20 = icmp ne ptr %3, null
  %21 = or i1 %20, %19
  br i1 %21, label %39, label %22, !prof !782

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @vect_cost_strided_group_size(ptr noundef nonnull %0) #20
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %39, !prof !783

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  %27 = tail call i32 @exact_log2(i64 noundef %26) #19
  %28 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %29 = getelementptr inbounds %struct.processor_costs, ptr %28, i64 0, i32 40
  %30 = load i32, ptr %29, align 4, !tbaa !771
  %31 = mul i32 %23, %1
  %32 = mul i32 %31, %27
  %33 = mul nsw i32 %32, %30
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.23, i32 noundef %23) #20
  br label %39

39:                                               ; preds = %15, %25, %36, %22
  %40 = phi i32 [ %33, %36 ], [ %33, %25 ], [ 0, %22 ], [ 0, %15 ]
  %41 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %42 = getelementptr inbounds %struct.processor_costs, ptr %41, i64 0, i32 45
  %43 = load i32, ptr %42, align 4, !tbaa !784
  %44 = mul nsw i32 %43, %1
  %45 = add nsw i32 %44, %40
  %46 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !785

48:                                               ; preds = %39
  %49 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.24, i32 noundef %45, i32 noundef %16) #20
  br label %51

51:                                               ; preds = %48, %39
  tail call fastcc void @stmt_vinfo_set_inside_of_loop_cost(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %45) #20
  tail call fastcc void @stmt_vinfo_set_outside_of_loop_cost(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %16) #20
  br label %52

52:                                               ; preds = %4, %51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @vect_cost_strided_group_size(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !786 !PGOFuncName !787 {
  %2 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !781
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !788
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !789
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_model_load_cost(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !599 {
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !720
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 25
  %7 = load i32, ptr %6, align 4, !tbaa !770
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %115, label %9, !prof !603

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !781
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %2, null
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %17, !prof !790

15:                                               ; preds = %9
  %16 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %5) #19
  br label %38

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @vect_cost_strided_group_size(ptr noundef nonnull %0) #20
  %19 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %11) #20
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !720
  %22 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %21) #19
  %23 = icmp sgt i32 %18, 1
  br i1 %23, label %24, label %38, !prof !783

24:                                               ; preds = %17
  %25 = zext nneg i32 %18 to i64
  %26 = tail call i32 @exact_log2(i64 noundef %25) #19
  %27 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %28 = getelementptr inbounds %struct.processor_costs, ptr %27, i64 0, i32 40
  %29 = load i32, ptr %28, align 4, !tbaa !771
  %30 = mul i32 %18, %1
  %31 = mul i32 %30, %26
  %32 = mul nsw i32 %31, %29
  %33 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.25, i32 noundef %18) #20
  br label %38

38:                                               ; preds = %15, %24, %35, %17
  %39 = phi i1 [ true, %35 ], [ true, %24 ], [ false, %17 ], [ false, %15 ]
  %40 = phi i32 [ %22, %35 ], [ %22, %24 ], [ %22, %17 ], [ %16, %15 ]
  %41 = phi i32 [ %32, %35 ], [ %32, %24 ], [ 0, %17 ], [ 0, %15 ]
  switch i32 %40, label %105 [
    i32 4, label %42
    i32 1, label %53
    i32 2, label %64
    i32 3, label %78
  ], !prof !791

42:                                               ; preds = %38
  %43 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %44 = getelementptr inbounds %struct.processor_costs, ptr %43, i64 0, i32 43
  %45 = load i32, ptr %44, align 4, !tbaa !792
  %46 = mul nsw i32 %45, %1
  %47 = add nsw i32 %46, %41
  %48 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %106, label %50, !prof !577

50:                                               ; preds = %42
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %52 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 30, i64 1, ptr %51)
  br label %106

53:                                               ; preds = %38
  %54 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %55 = getelementptr inbounds %struct.processor_costs, ptr %54, i64 0, i32 44
  %56 = load i32, ptr %55, align 4, !tbaa !793
  %57 = mul nsw i32 %56, %1
  %58 = add nsw i32 %57, %41
  %59 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %63 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 54, i64 1, ptr %62)
  br label %106

64:                                               ; preds = %38
  %65 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %66 = getelementptr inbounds %struct.processor_costs, ptr %65, i64 0, i32 43
  %67 = load i32, ptr %66, align 4, !tbaa !792
  %68 = shl nsw i32 %67, 1
  %69 = getelementptr inbounds %struct.processor_costs, ptr %65, i64 0, i32 40
  %70 = load i32, ptr %69, align 4, !tbaa !771
  %71 = add nsw i32 %68, %70
  %72 = mul nsw i32 %71, %1
  %73 = add nsw i32 %72, %41
  %74 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !794
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, i32 0, i32 %70
  %77 = add nsw i32 %73, %76
  br label %106

78:                                               ; preds = %38
  %79 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %83 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 51, i64 1, ptr %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr %10, align 8, !tbaa !781
  %86 = icmp eq ptr %85, null
  %87 = or i1 %39, %86
  %88 = or i1 %13, %87
  %89 = load ptr, ptr @ix86_cost, align 8, !tbaa !508
  %90 = getelementptr inbounds %struct.processor_costs, ptr %89, i64 0, i32 40
  %91 = load i32, ptr %90, align 4, !tbaa !771
  br i1 %88, label %92, label %98

92:                                               ; preds = %84
  %93 = shl nsw i32 %91, 1
  %94 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !794
  %95 = icmp eq ptr %94, null
  %96 = mul nsw i32 %91, 3
  %97 = select i1 %95, i32 %93, i32 %96
  br label %98

98:                                               ; preds = %84, %92
  %99 = phi i32 [ %97, %92 ], [ 0, %84 ]
  %100 = getelementptr inbounds %struct.processor_costs, ptr %89, i64 0, i32 43
  %101 = load i32, ptr %100, align 4, !tbaa !792
  %102 = add nsw i32 %91, %101
  %103 = mul nsw i32 %102, %1
  %104 = add nsw i32 %103, %41
  br label %106

105:                                              ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 796, ptr noundef nonnull @.str.10) #19
  br label %106

106:                                              ; preds = %64, %53, %61, %42, %50, %105, %98
  %107 = phi i32 [ %41, %105 ], [ %104, %98 ], [ %58, %61 ], [ %58, %53 ], [ %47, %50 ], [ %47, %42 ], [ %77, %64 ]
  %108 = phi i32 [ 0, %105 ], [ %99, %98 ], [ 0, %61 ], [ 0, %53 ], [ 0, %50 ], [ 0, %42 ], [ 0, %64 ]
  %109 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #19
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111, !prof !577

111:                                              ; preds = %106
  %112 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.29, i32 noundef %107, i32 noundef %108) #20
  br label %114

114:                                              ; preds = %111, %106
  tail call fastcc void @stmt_vinfo_set_inside_of_loop_cost(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %107) #20
  tail call fastcc void @stmt_vinfo_set_outside_of_loop_cost(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %108) #20
  br label %115

115:                                              ; preds = %3, %114
  ret void
}

; Function Attrs: optsize
declare i32 @vect_supportable_dr_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_init_vector(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !806 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %7 = tail call ptr @vect_get_new_vect_var(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.30) #19
  %8 = tail call zeroext i8 @add_referenced_var(ptr noundef %7) #19
  %9 = tail call ptr @gimple_build_assign_stat(ptr noundef %7, ptr noundef %1) #19
  %10 = tail call fastcc ptr @make_ssa_name(ptr noundef %7, ptr noundef %9) #20
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %9, ptr noundef %10) #20
  %11 = icmp eq ptr %3, null
  br i1 %11, label %13, label %12, !prof !807

12:                                               ; preds = %4
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %3) #20
  br label %37

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !808
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !809

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !495
  %19 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %18, ptr noundef %0) #20, !range !511
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !807

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !810
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ %18, %17 ]
  %26 = tail call ptr @loop_preheader_edge(ptr noundef %25) #19
  %27 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef %26, ptr noundef %9) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29, !prof !807

29:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 850, ptr noundef nonnull @.str.10) #19
  br label %37

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 26
  %32 = load ptr, ptr %31, align 8, !tbaa !811
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 858, ptr noundef nonnull @.str.10) #19
  br label %35

35:                                               ; preds = %30, %34
  %36 = load ptr, ptr %32, align 8, !tbaa !738
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %36) #20
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %9, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %37

37:                                               ; preds = %35, %24, %29, %12
  %38 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40, !prof !807

40:                                               ; preds = %37
  %41 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %42 = call i64 @fwrite(ptr nonnull @.str.31, i64 23, i64 1, ptr %41)
  %43 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %43, ptr noundef %9, i32 noundef 0, i32 noundef 2) #19
  br label %44

44:                                               ; preds = %40, %37
  %45 = call fastcc ptr @gimple_assign_lhs(ptr noundef %9) #20
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @vect_get_new_vect_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !812 !PGOFuncName !813 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !508
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !812 !PGOFuncName !814 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !815

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !816

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !515
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_finish_stmt_generation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !817 {
  %4 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !808
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !811
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %12, !prof !818

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1174, ptr noundef nonnull @.str.10) #19
  br label %12

12:                                               ; preds = %3, %11
  tail call void @gsi_insert_before(ptr noundef %2, ptr noundef %1, i32 noundef 1) #19
  %13 = tail call ptr @new_stmt_vec_info(ptr noundef %1, ptr noundef %6, ptr noundef %8) #20
  tail call fastcc void @set_vinfo_for_stmt(ptr noundef %1, ptr noundef %13) #20
  %14 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16, !prof !819

16:                                               ; preds = %12
  %17 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %18 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 14, i64 1, ptr %17)
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %1, i32 noundef 0, i32 noundef 2) #19
  br label %20

20:                                               ; preds = %16, %12
  %21 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %22 = tail call fastcc i32 @gimple_location(ptr noundef %21) #20
  tail call fastcc void @gimple_set_location(ptr noundef %1, i32 noundef %22) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @nested_in_vect_loop_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !820 !PGOFuncName !821 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !810
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !822

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #20
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !626
  %10 = icmp eq ptr %4, %9
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %2 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 !prof !786 !PGOFuncName !823 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #20
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !511
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #20, !range !534
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !511
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !824

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !812 !PGOFuncName !825 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !511
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !815

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !815

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.10) #19
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  store ptr %1, ptr %10, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !826 !PGOFuncName !827 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !515
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_get_vec_def_for_operand(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !812 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %7 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #20
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !828
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1023
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %18 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20, !prof !816

20:                                               ; preds = %3
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %22 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 30, i64 1, ptr %21)
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %0, i32 noundef 2) #19
  br label %24

24:                                               ; preds = %20, %3
  %25 = call zeroext i8 @vect_is_simple_use(ptr noundef %0, ptr noundef %17, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !511
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28, !prof !815

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 915, ptr noundef nonnull @.str.10) #19
  br label %28

28:                                               ; preds = %24, %27
  %29 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31, !prof !816

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !tbaa !508
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %36 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 7, i64 1, ptr %35)
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_generic_expr(ptr noundef %37, ptr noundef nonnull %32, i32 noundef 2) #19
  br label %38

38:                                               ; preds = %34, %31
  %39 = load ptr, ptr %4, align 8, !tbaa !508
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %43 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 14, i64 1, ptr %42)
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_gimple_stmt(ptr noundef %44, ptr noundef nonnull %39, i32 noundef 0, i32 noundef 2) #19
  br label %45

45:                                               ; preds = %38, %41, %28
  %46 = load i32, ptr %6, align 4, !tbaa !514
  switch i32 %46, label %165 [
    i32 1, label %47
    i32 2, label %75
    i32 3, label %110
    i32 5, label %133
    i32 6, label %133
    i32 7, label %133
    i32 4, label %148
  ], !prof !829

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !515
  %50 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %49) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !809

52:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 936, ptr noundef nonnull @.str.10) #19
  br label %53

53:                                               ; preds = %47, %52
  %54 = icmp eq ptr %2, null
  br i1 %54, label %56, label %55, !prof !807

55:                                               ; preds = %53
  store ptr %0, ptr %2, align 8, !tbaa !508
  br label %56

56:                                               ; preds = %55, %53
  %57 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59, !prof !807

59:                                               ; preds = %56
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.35, i32 noundef %15) #20
  br label %62

62:                                               ; preds = %59, %56
  %63 = add i32 %15, -1
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %71, !prof !830

65:                                               ; preds = %62, %65
  %66 = phi i32 [ %69, %65 ], [ %63, %62 ]
  %67 = phi ptr [ %68, %65 ], [ null, %62 ]
  %68 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %0, ptr noundef %67) #19
  %69 = add nsw i32 %66, -1
  %70 = icmp eq i32 %66, 0
  br i1 %70, label %71, label %65, !prof !831, !llvm.loop !832

71:                                               ; preds = %65, %62
  %72 = phi ptr [ null, %62 ], [ %68, %65 ]
  %73 = tail call ptr @build_vector(ptr noundef %50, ptr noundef %72) #19
  %74 = tail call ptr @vect_init_vector(ptr noundef %1, ptr noundef %73, ptr noundef %50, ptr noundef null) #20
  br label %166

75:                                               ; preds = %45
  %76 = load ptr, ptr %5, align 8, !tbaa !508
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !515
  %79 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %78) #20
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 957, ptr noundef nonnull @.str.10) #19
  br label %82

82:                                               ; preds = %75, %81
  %83 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = trunc i64 %87 to i32
  %89 = icmp eq ptr %2, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  store ptr %76, ptr %2, align 8, !tbaa !508
  br label %91

91:                                               ; preds = %90, %82
  %92 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %96 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 18, i64 1, ptr %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = add i32 %88, -1
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %106

100:                                              ; preds = %97, %100
  %101 = phi i32 [ %104, %100 ], [ %98, %97 ]
  %102 = phi ptr [ %103, %100 ], [ null, %97 ]
  %103 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %76, ptr noundef %102) #19
  %104 = add nsw i32 %101, -1
  %105 = icmp eq i32 %101, 0
  br i1 %105, label %106, label %100, !llvm.loop !833

106:                                              ; preds = %100, %97
  %107 = phi ptr [ null, %97 ], [ %103, %100 ]
  %108 = tail call ptr @build_constructor_from_list(ptr noundef %79, ptr noundef %107) #19
  %109 = tail call ptr @vect_init_vector(ptr noundef %1, ptr noundef %108, ptr noundef %79, ptr noundef null) #20
  br label %166

110:                                              ; preds = %45
  %111 = icmp eq ptr %2, null
  br i1 %111, label %113, label %112, !prof !834

112:                                              ; preds = %110
  store ptr null, ptr %2, align 8, !tbaa !508
  br label %113

113:                                              ; preds = %112, %110
  %114 = load ptr, ptr %4, align 8, !tbaa !508
  %115 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %114) #20
  %116 = getelementptr inbounds %struct._stmt_vec_info, ptr %115, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !835
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120, !prof !836

119:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 986, ptr noundef nonnull @.str.10) #19
  br label %120

120:                                              ; preds = %113, %119
  %121 = tail call fastcc i32 @gimple_code(ptr noundef %117) #20, !range !534
  %122 = icmp eq i32 %121, 16
  br i1 %122, label %123, label %126, !prof !836

123:                                              ; preds = %120
  %124 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %117) #20
  %125 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %124) #20
  br label %166

126:                                              ; preds = %120
  %127 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %117) #20, !range !511
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129, !prof !834

129:                                              ; preds = %126
  %130 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %117) #20
  br label %166

131:                                              ; preds = %126
  %132 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %117) #20
  br label %166

133:                                              ; preds = %45, %45, %45
  %134 = load ptr, ptr %4, align 8, !tbaa !508
  %135 = tail call fastcc i32 @gimple_code(ptr noundef %134) #20, !range !534
  %136 = icmp eq i32 %135, 16
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1003, ptr noundef nonnull @.str.10) #19
  br label %138

138:                                              ; preds = %133, %137
  %139 = tail call fastcc ptr @gimple_bb(ptr noundef %134) #20
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !626
  %142 = tail call ptr @loop_preheader_edge(ptr noundef %141) #19
  %143 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 6
  %144 = load i32, ptr %143, align 4, !tbaa !837
  %145 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %134, i32 noundef %144) #20
  %146 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %145) #20
  %147 = tail call ptr @get_initial_def_for_reduction(ptr noundef %1, ptr noundef %146, ptr noundef %2) #19
  br label %166

148:                                              ; preds = %45
  %149 = load ptr, ptr %4, align 8, !tbaa !508
  %150 = tail call fastcc i32 @gimple_code(ptr noundef %149) #20, !range !534
  %151 = icmp eq i32 %150, 16
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1014, ptr noundef nonnull @.str.10) #19
  br label %153

153:                                              ; preds = %148, %152
  %154 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %149) #20
  %155 = getelementptr inbounds %struct._stmt_vec_info, ptr %154, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8, !tbaa !835
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %156) #20, !range !534
  %160 = icmp eq i32 %159, 16
  br i1 %160, label %162, label %161

161:                                              ; preds = %158, %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1019, ptr noundef nonnull @.str.10) #19
  br label %162

162:                                              ; preds = %158, %161
  %163 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %156) #20
  %164 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %163) #20
  br label %166

165:                                              ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1025, ptr noundef nonnull @.str.10) #19
  br label %166

166:                                              ; preds = %123, %131, %129, %165, %162, %138, %106, %71
  %167 = phi ptr [ null, %165 ], [ %164, %162 ], [ %147, %138 ], [ %109, %106 ], [ %74, %71 ], [ %125, %123 ], [ %130, %129 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %167
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_vectype_for_scalar_type(ptr noundef %0) local_unnamed_addr #0 !prof !838 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %5, label %7, !prof !839

5:                                                ; preds = %1
  %6 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #19
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
  %16 = load i8, ptr %15, align 1, !tbaa !515
  %17 = zext i8 %16 to i32
  %18 = icmp eq i8 %16, 0
  br i1 %18, label %238, label %19, !prof !840

19:                                               ; preds = %12
  %20 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !514
  %21 = and i32 %20, 65568
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 4, i32 16, !prof !841
  %24 = icmp ugt i32 %23, %17
  br i1 %24, label %25, label %238, !prof !842

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !515
  %28 = lshr i32 %27, 3
  %29 = icmp ugt i32 %28, %17
  br i1 %29, label %238, label %30, !prof !843

30:                                               ; preds = %25
  %31 = load i64, ptr %0, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -6
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %36, label %42, !prof !844

36:                                               ; preds = %30
  %37 = shl nuw nsw i32 %17, 3
  %38 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1023
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %238, !prof !845

42:                                               ; preds = %30, %36
  %43 = select i1 %22, i8 4, i8 16, !prof !846
  %44 = udiv i8 %43, %16
  %45 = zext nneg i8 %44 to i32
  %46 = tail call ptr @build_vector_type(ptr noundef nonnull %0, i32 noundef %45) #19
  %47 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.80, i32 noundef %45) #20
  %52 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_generic_expr(ptr noundef %52, ptr noundef nonnull %0, i32 noundef 2) #19
  br label %53

53:                                               ; preds = %49, %42
  %54 = icmp eq ptr %46, null
  br i1 %54, label %238, label %55, !prof !847

55:                                               ; preds = %53
  %56 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58, !prof !846

58:                                               ; preds = %55
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %60 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 9, i64 1, ptr %59)
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_generic_expr(ptr noundef %61, ptr noundef nonnull %46, i32 noundef 2) #19
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i64, ptr %46, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 14
  br i1 %65, label %66, label %68, !prof !846

66:                                               ; preds = %62
  %67 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !515
  %78 = icmp eq i8 %77, 12
  br i1 %78, label %238, label %79, !prof !847

79:                                               ; preds = %73
  %80 = load i64, ptr %46, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 14
  br i1 %82, label %83, label %85, !prof !846

83:                                               ; preds = %79
  %84 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %90

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  br label %90

90:                                               ; preds = %85, %83
  %91 = phi i32 [ %84, %83 ], [ %89, %85 ]
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !515
  %95 = icmp eq i8 %94, 17
  br i1 %95, label %238, label %96, !prof !847

96:                                               ; preds = %90
  %97 = load i64, ptr %46, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102, !prof !846

100:                                              ; preds = %96
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %107

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %101, %100 ], [ %106, %102 ]
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !515
  %112 = icmp eq i8 %111, 13
  br i1 %112, label %238, label %113, !prof !847

113:                                              ; preds = %107
  %114 = load i64, ptr %46, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 14
  br i1 %116, label %117, label %119, !prof !846

117:                                              ; preds = %113
  %118 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %124

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %123, %119 ]
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !515
  %129 = icmp eq i8 %128, 14
  br i1 %129, label %238, label %130, !prof !847

130:                                              ; preds = %124
  %131 = load i64, ptr %46, align 8
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 14
  br i1 %133, label %134, label %136, !prof !846

134:                                              ; preds = %130
  %135 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %141

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  br label %141

141:                                              ; preds = %136, %134
  %142 = phi i32 [ %135, %134 ], [ %140, %136 ]
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !515
  %146 = icmp eq i8 %145, 15
  br i1 %146, label %238, label %147, !prof !847

147:                                              ; preds = %141
  %148 = load i64, ptr %46, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 14
  br i1 %150, label %151, label %153, !prof !846

151:                                              ; preds = %147
  %152 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %158

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  br label %158

158:                                              ; preds = %153, %151
  %159 = phi i32 [ %152, %151 ], [ %157, %153 ]
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !515
  %163 = icmp eq i8 %162, 16
  br i1 %163, label %238, label %164, !prof !847

164:                                              ; preds = %158
  %165 = load i64, ptr %46, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 14
  br i1 %167, label %168, label %170, !prof !846

168:                                              ; preds = %164
  %169 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %175

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %172 = load i32, ptr %171, align 4
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  br label %175

175:                                              ; preds = %170, %168
  %176 = phi i32 [ %169, %168 ], [ %174, %170 ]
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !515
  %180 = icmp eq i8 %179, 2
  br i1 %180, label %238, label %181, !prof !846

181:                                              ; preds = %175
  %182 = load i64, ptr %46, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 14
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %192

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  br label %192

192:                                              ; preds = %187, %185
  %193 = phi i32 [ %186, %185 ], [ %191, %187 ]
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !515
  %197 = icmp eq i8 %196, 3
  br i1 %197, label %238, label %198

198:                                              ; preds = %192
  %199 = load i64, ptr %46, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 14
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %209

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %206 = load i32, ptr %205, align 4
  %207 = lshr i32 %206, 16
  %208 = and i32 %207, 255
  br label %209

209:                                              ; preds = %204, %202
  %210 = phi i32 [ %203, %202 ], [ %208, %204 ]
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !515
  %214 = icmp eq i8 %213, 10
  br i1 %214, label %238, label %215

215:                                              ; preds = %209
  %216 = load i64, ptr %46, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 14
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #19
  br label %226

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi i32 [ %220, %219 ], [ %225, %221 ]
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !515
  %231 = icmp eq i8 %230, 12
  br i1 %231, label %238, label %232

232:                                              ; preds = %226
  %233 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %237 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 29, i64 1, ptr %236)
  br label %238

238:                                              ; preds = %73, %90, %107, %124, %141, %158, %175, %192, %209, %226, %232, %235, %53, %36, %25, %12, %19
  %239 = phi ptr [ null, %19 ], [ null, %12 ], [ null, %25 ], [ null, %36 ], [ null, %53 ], [ null, %235 ], [ null, %232 ], [ %46, %226 ], [ %46, %209 ], [ %46, %192 ], [ %46, %175 ], [ %46, %158 ], [ %46, %141 ], [ %46, %124 ], [ %46, %107 ], [ %46, %90 ], [ %46, %73 ]
  ret ptr %239
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !763 !PGOFuncName !848 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !769 !PGOFuncName !849 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_initial_def_for_reduction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !786 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !515
  %8 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %7) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1101, ptr noundef nonnull @.str.10) #19
  br label %11

11:                                               ; preds = %5, %10
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !574
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1103, ptr noundef nonnull @.str.10) #19
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call ptr @gimple_get_lhs(ptr noundef %13) #19
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %13) #20, !range !534
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %13) #20
  %22 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %21) #20
  br label %25

23:                                               ; preds = %16
  %24 = tail call ptr @gimple_get_lhs(ptr noundef %13) #19
  br label %25

25:                                               ; preds = %20, %23, %2
  %26 = phi ptr [ %1, %2 ], [ %22, %20 ], [ %24, %23 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_vinfo_for_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !850 !PGOFuncName !851 {
  %3 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !852

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !818

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 639, ptr noundef nonnull @.str.10) #19
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_stmt_vec_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !853 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 192) #19
  store i32 0, ptr %4, align 8, !tbaa !555
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !788
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !808
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 26
  store ptr %2, ptr %7, align 8, !tbaa !811
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !527
  %9 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 4
  store i8 0, ptr %9, align 4, !tbaa !530
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 5
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !574
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %10, i8 0, i64 65, i1 false)
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %18, !prof !854

14:                                               ; preds = %3
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %16 = tail call fastcc zeroext i8 @is_loop_header_bb_p(ptr noundef %15) #20, !range !511
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !855

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %14, %18
  %20 = phi i32 [ 3, %18 ], [ 8, %14 ]
  %21 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 16
  store i32 %20, ptr %21, align 8, !tbaa !531
  %22 = tail call fastcc ptr @VEC_dr_p_heap_alloc() #20
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 15
  store ptr %22, ptr %23, align 8, !tbaa !856
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 24
  %25 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 24, i32 1
  store i32 0, ptr %25, align 4, !tbaa !857
  store i32 0, ptr %24, align 4, !tbaa !858
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 25
  store i32 0, ptr %26, align 4, !tbaa !770
  %27 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 17
  %28 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 22
  store ptr null, ptr %28, align 8, !tbaa !859
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 23
  store i8 0, ptr %29, align 8, !tbaa !860
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %27, i8 0, i64 28, i1 false)
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !817 !PGOFuncName !861 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !817 !PGOFuncName !862 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !515
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !817 !PGOFuncName !863 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !515
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !817 !PGOFuncName !864 {
  tail call fastcc void @VEC_vec_void_p_heap_reserve() #20
  %2 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  tail call fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 !prof !865 !PGOFuncName !866 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !508
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_reserve() unnamed_addr #0 !prof !817 !PGOFuncName !867 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  %2 = tail call fastcc i32 @VEC_vec_void_p_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !868

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #19
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !817 !PGOFuncName !869 {
  %3 = load i32, ptr %0, align 8, !tbaa !712
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !712
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !817 !PGOFuncName !870 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !818

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !871
  %6 = load i32, ptr %0, align 8, !tbaa !712
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vectorizable_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !786 {
  %4 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %5 = tail call i32 @gimple_call_flags(ptr noundef %0) #19
  %6 = and i32 %5, 513
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %4, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 29
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 6144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 1), align 8, !tbaa !872
  %21 = tail call ptr %20(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #19
  br label %22

22:                                               ; preds = %10, %14, %3, %19
  %23 = phi ptr [ %21, %19 ], [ null, %3 ], [ null, %14 ], [ null, %10 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !786 !PGOFuncName !873 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !786 !PGOFuncName !874 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !786 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !828
  %13 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %15 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct._loop_vec_info, ptr %14, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !875
  %23 = sdiv i32 %22, %20
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3833, ptr noundef nonnull @.str.10) #19
  br label %28

26:                                               ; preds = %5
  %27 = icmp eq i32 %23, 1
  br i1 %27, label %28, label %143

28:                                               ; preds = %25, %26
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !527
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %143, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !531
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %34, 7
  %38 = icmp ne ptr %3, null
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %143

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 25
  %42 = load i32, ptr %41, align 4, !tbaa !770
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 4
  %46 = load i8, ptr %45, align 4, !tbaa !530
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %143, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %53 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 22, i64 1, ptr %52)
  br label %143

54:                                               ; preds = %44
  %55 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %143, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %59 = icmp eq i32 %58, 56
  br i1 %59, label %60, label %143

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3866, ptr noundef nonnull @.str.10) #19
  br label %64

64:                                               ; preds = %60, %63
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %66 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !515
  %68 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !515
  %70 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !515
  %72 = tail call fastcc zeroext i8 @vect_is_simple_cond(ptr noundef %67, ptr noundef nonnull %14) #20, !range !511
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %143, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !515
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !515
  %79 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !515
  %81 = tail call zeroext i8 @types_compatible_p(ptr noundef %78, ptr noundef %80) #19
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %143, label %83

83:                                               ; preds = %74
  %84 = load i64, ptr %69, align 8
  %85 = trunc i64 %84 to i16
  switch i16 %85, label %143 [
    i16 141, label %86
    i16 23, label %91
    i16 24, label %91
    i16 25, label %91
  ]

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !515
  store ptr %88, ptr %8, align 8, !tbaa !508
  %89 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %69, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #20, !range !511
  %90 = icmp eq i8 %89, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br i1 %90, label %143, label %91

91:                                               ; preds = %83, %83, %83, %86
  %92 = load i64, ptr %71, align 8
  %93 = trunc i64 %92 to i16
  switch i16 %93, label %143 [
    i16 141, label %94
    i16 23, label %99
    i16 24, label %99
    i16 25, label %99
  ]

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %95 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !515
  store ptr %96, ptr %9, align 8, !tbaa !508
  %97 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %71, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #20, !range !511
  %98 = icmp eq i8 %97, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br i1 %98, label %143, label %99

99:                                               ; preds = %91, %91, %91, %94
  %100 = load i64, ptr %12, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %12) #19
  br label %109

105:                                              ; preds = %99
  %106 = load i32, ptr %15, align 4
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  br label %109

109:                                              ; preds = %105, %103
  %110 = phi i32 [ %104, %103 ], [ %108, %105 ]
  %111 = icmp eq ptr %2, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  store i32 6, ptr %10, align 8, !tbaa !555
  %113 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !515
  %115 = tail call zeroext i8 @expand_vec_cond_expr_p(ptr noundef %114, i32 noundef %110) #19
  br label %143

116:                                              ; preds = %109
  %117 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %118 = tail call ptr @vect_create_destination_var(ptr noundef %117, ptr noundef nonnull %12) #19
  %119 = load ptr, ptr %75, align 8, !tbaa !515
  %120 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %119, ptr noundef %0, ptr noundef null) #20
  %121 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !515
  %123 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %122, ptr noundef %0, ptr noundef null) #20
  %124 = icmp eq i32 %4, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %116
  %126 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %69, ptr noundef %0, ptr noundef null) #20
  %127 = icmp eq i32 %4, 2
  br i1 %127, label %131, label %128

128:                                              ; preds = %116, %125
  %129 = phi ptr [ %126, %125 ], [ %3, %116 ]
  %130 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %71, ptr noundef %0, ptr noundef null) #20
  br label %131

131:                                              ; preds = %125, %128
  %132 = phi ptr [ %129, %128 ], [ %126, %125 ]
  %133 = phi ptr [ %130, %128 ], [ %3, %125 ]
  %134 = load i64, ptr %67, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65535
  %137 = tail call ptr @build2_stat(i32 noundef %136, ptr noundef nonnull %12, ptr noundef %120, ptr noundef %123) #19
  %138 = tail call ptr @build3_stat(i32 noundef 57, ptr noundef nonnull %12, ptr noundef %137, ptr noundef %132, ptr noundef %133) #19
  %139 = tail call ptr @gimple_build_assign_stat(ptr noundef %118, ptr noundef %138) #19
  store ptr %139, ptr %2, align 8, !tbaa !508
  %140 = tail call fastcc ptr @make_ssa_name(ptr noundef %118, ptr noundef %139) #20
  %141 = load ptr, ptr %2, align 8, !tbaa !508
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %141, ptr noundef %140) #20
  %142 = load ptr, ptr %2, align 8, !tbaa !508
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %142, ptr noundef %1) #20
  br label %143

143:                                              ; preds = %91, %83, %74, %64, %57, %54, %48, %51, %40, %36, %28, %26, %86, %94, %131, %112
  %144 = phi i8 [ 1, %131 ], [ %115, %112 ], [ 0, %94 ], [ 0, %86 ], [ 0, %26 ], [ 0, %28 ], [ 0, %36 ], [ 0, %40 ], [ 0, %51 ], [ 0, %48 ], [ 0, %54 ], [ 0, %57 ], [ 0, %64 ], [ 0, %74 ], [ 0, %83 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i8 %144
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !877 !PGOFuncName !878 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !879 !PGOFuncName !880 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !876
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !534
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !881

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
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_is_simple_cond(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !786 !PGOFuncName !882 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !514
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !515
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !515
  %17 = load i64, ptr %14, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %33 [
    i16 141, label %19
    i16 23, label %24
    i16 24, label %24
    i16 25, label %24
  ]

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !515
  store ptr %21, ptr %5, align 8, !tbaa !508
  %22 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %14, ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !511
  %23 = icmp eq i8 %22, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !515
  store ptr %29, ptr %6, align 8, !tbaa !508
  %30 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %16, ptr noundef %1, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !511
  %31 = icmp eq i8 %30, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %31, label %33, label %32

32:                                               ; preds = %24, %24, %24, %27
  br label %33

33:                                               ; preds = %24, %12, %2, %19, %27, %32
  %34 = phi i8 [ 1, %32 ], [ 0, %27 ], [ 0, %19 ], [ 0, %2 ], [ 0, %12 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i8 %34
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @expand_vec_cond_expr_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vect_create_destination_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !879 !PGOFuncName !883 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !884

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.10) #19
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 !prof !879 !PGOFuncName !885 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !515
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_analyze_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !886 {
  %4 = alloca i64, align 8
  %5 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !811
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !527
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %10 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12, !prof !887

12:                                               ; preds = %3
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %14 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 25, i64 1, ptr %13)
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %0, i32 noundef 0, i32 noundef 2) #19
  br label %16

16:                                               ; preds = %12, %3
  %17 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !511
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19, !prof !887

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %303, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %24 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 42, i64 1, ptr %23)
  br label %303

25:                                               ; preds = %16
  %26 = load i32, ptr %8, align 8, !tbaa !527
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38, !prof !888

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 4
  %30 = load i8, ptr %29, align 4, !tbaa !530
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %38, !prof !889

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %303, label %35, !prof !889

35:                                               ; preds = %32
  %36 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %37 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 11, i64 1, ptr %36)
  br label %303

38:                                               ; preds = %28, %25
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 16
  %40 = load i32, ptr %39, align 8, !tbaa !531
  switch i32 %40, label %45 [
    i32 3, label %47
    i32 5, label %41
    i32 7, label %41
  ], !prof !890

41:                                               ; preds = %38, %38
  %42 = icmp eq ptr %7, null
  %43 = icmp ult i32 %9, 3
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %79, label %45

45:                                               ; preds = %38, %41
  %46 = phi i32 [ 4001, %41 ], [ 4009, %38 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef %46, ptr noundef nonnull @.str.10) #19
  br label %47

47:                                               ; preds = %45, %38
  %48 = icmp eq ptr %7, null
  br i1 %48, label %79, label %49, !prof !891

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 25
  %51 = load i32, ptr %50, align 4, !tbaa !770
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4014, ptr noundef nonnull @.str.10) #19
  br label %54

54:                                               ; preds = %49, %53
  %55 = call ptr @vect_get_smallest_scalar_type(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4) #19
  %56 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %60 = call i64 @fwrite(ptr nonnull @.str.42, i64 30, i64 1, ptr %59)
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_generic_expr(ptr noundef %61, ptr noundef %55, i32 noundef 2) #19
  br label %62

62:                                               ; preds = %58, %54
  %63 = call ptr @get_vectype_for_scalar_type(ptr noundef %55) #20
  %64 = icmp eq ptr %63, null
  %65 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %66 = icmp eq i8 %65, 0
  br i1 %64, label %67, label %72

67:                                               ; preds = %62
  br i1 %66, label %303, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %70 = call i64 @fwrite(ptr nonnull @.str.43, i64 33, i64 1, ptr %69)
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_generic_expr(ptr noundef %71, ptr noundef %55, i32 noundef 2) #19
  br label %303

72:                                               ; preds = %62
  br i1 %66, label %77, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %75 = call i64 @fwrite(ptr nonnull @.str.44, i64 10, i64 1, ptr %74)
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_generic_expr(ptr noundef %76, ptr noundef nonnull %63, i32 noundef 2) #19
  br label %77

77:                                               ; preds = %73, %72
  %78 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 5
  store ptr %63, ptr %78, align 8, !tbaa !828
  br label %79

79:                                               ; preds = %41, %77, %47
  %80 = phi i1 [ false, %77 ], [ true, %47 ], [ true, %41 ]
  %81 = load i32, ptr %8, align 8, !tbaa !527
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %204, label %83, !prof !892

83:                                               ; preds = %79
  %84 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 14
  %88 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  br i1 %87, label %89, label %91, !prof !892

89:                                               ; preds = %83
  %90 = call i32 @vector_type_mode(ptr noundef %88) #19
  br label %96

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i32 [ %90, %89 ], [ %95, %91 ]
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !515
  %101 = icmp eq i8 %100, 12
  br i1 %101, label %197, label %102, !prof !892

102:                                              ; preds = %96
  %103 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 14
  %107 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  br i1 %106, label %108, label %110, !prof !892

108:                                              ; preds = %102
  %109 = call i32 @vector_type_mode(ptr noundef %107) #19
  br label %115

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.tree_type, ptr %107, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  br label %115

115:                                              ; preds = %110, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %110 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !515
  %120 = icmp eq i8 %119, 17
  br i1 %120, label %197, label %121, !prof !892

121:                                              ; preds = %115
  %122 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 14
  %126 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  br i1 %125, label %127, label %129, !prof !892

127:                                              ; preds = %121
  %128 = call i32 @vector_type_mode(ptr noundef %126) #19
  br label %134

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br label %134

134:                                              ; preds = %129, %127
  %135 = phi i32 [ %128, %127 ], [ %133, %129 ]
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !515
  %139 = icmp eq i8 %138, 13
  br i1 %139, label %197, label %140, !prof !892

140:                                              ; preds = %134
  %141 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %142 = load i64, ptr %141, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  %145 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  br i1 %144, label %146, label %148, !prof !892

146:                                              ; preds = %140
  %147 = call i32 @vector_type_mode(ptr noundef %145) #19
  br label %153

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.tree_type, ptr %145, i64 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  br label %153

153:                                              ; preds = %148, %146
  %154 = phi i32 [ %147, %146 ], [ %152, %148 ]
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !515
  %158 = icmp eq i8 %157, 14
  br i1 %158, label %197, label %159, !prof !892

159:                                              ; preds = %153
  %160 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 14
  %164 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  br i1 %163, label %165, label %167, !prof !892

165:                                              ; preds = %159
  %166 = call i32 @vector_type_mode(ptr noundef %164) #19
  br label %172

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.tree_type, ptr %164, i64 0, i32 6
  %169 = load i32, ptr %168, align 4
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  br label %172

172:                                              ; preds = %167, %165
  %173 = phi i32 [ %166, %165 ], [ %171, %167 ]
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !515
  %177 = icmp eq i8 %176, 15
  br i1 %177, label %197, label %178, !prof !892

178:                                              ; preds = %172
  %179 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 14
  %183 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  br i1 %182, label %184, label %186, !prof !892

184:                                              ; preds = %178
  %185 = call i32 @vector_type_mode(ptr noundef %183) #19
  br label %191

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.tree_type, ptr %183, i64 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  br label %191

191:                                              ; preds = %186, %184
  %192 = phi i32 [ %185, %184 ], [ %190, %186 ]
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !515
  %196 = icmp eq i8 %195, 16
  br i1 %196, label %197, label %198, !prof !892

197:                                              ; preds = %191, %172, %153, %134, %115, %96
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4045, ptr noundef nonnull @.str.10) #19
  br label %198

198:                                              ; preds = %191, %197
  %199 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 5
  %200 = load ptr, ptr %199, align 8, !tbaa !828
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203, !prof !892

202:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4046, ptr noundef nonnull @.str.10) #19
  br label %203

203:                                              ; preds = %198, %202
  store i8 1, ptr %1, align 1, !tbaa !515
  br label %204

204:                                              ; preds = %203, %79
  br i1 %80, label %205, label %238, !prof !558

205:                                              ; preds = %204
  %206 = load i32, ptr %8, align 8, !tbaa !527
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211, !prof !892

208:                                              ; preds = %205
  %209 = load i32, ptr %39, align 8, !tbaa !531
  %210 = icmp eq i32 %209, 5
  br i1 %210, label %211, label %262

211:                                              ; preds = %208, %205
  %212 = call fastcc zeroext i8 @vectorizable_type_promotion(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20, !range !511
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %262, !prof !558

214:                                              ; preds = %211
  %215 = call fastcc zeroext i8 @vectorizable_type_demotion(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20, !range !511
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %262, !prof !558

217:                                              ; preds = %214
  %218 = call fastcc zeroext i8 @vectorizable_conversion(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20, !range !511
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %262, !prof !558

220:                                              ; preds = %217
  %221 = call fastcc zeroext i8 @vectorizable_operation(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20, !range !511
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %262, !prof !893

223:                                              ; preds = %220
  %224 = call fastcc zeroext i8 @vectorizable_assignment(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20, !range !511
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %262, !prof !894

226:                                              ; preds = %223
  %227 = call fastcc zeroext i8 @vectorizable_load(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #20, !range !511
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %262, !prof !895

229:                                              ; preds = %226
  %230 = call fastcc zeroext i8 @vectorizable_call(ptr noundef %0, ptr noundef null, ptr noundef null) #20, !range !511
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %262, !prof !785

232:                                              ; preds = %229
  %233 = call fastcc zeroext i8 @vectorizable_store(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %262, !prof !779

235:                                              ; preds = %232
  %236 = call zeroext i8 @vectorizable_reduction(ptr noundef %0, ptr noundef null, ptr noundef null) #19
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %247, label %262

238:                                              ; preds = %204
  %239 = call fastcc zeroext i8 @vectorizable_operation(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %2) #20, !range !511
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %303

241:                                              ; preds = %238
  %242 = call fastcc zeroext i8 @vectorizable_assignment(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %2) #20, !range !511
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %303

244:                                              ; preds = %241
  %245 = call fastcc zeroext i8 @vectorizable_load(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef null) #20, !range !511
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %250, label %303

247:                                              ; preds = %235
  %248 = call zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %253, label %262, !prof !783

250:                                              ; preds = %244
  %251 = call fastcc zeroext i8 @vectorizable_store(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %2) #20
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %303, !prof !783

253:                                              ; preds = %250, %247
  %254 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #19
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %303, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %258 = call i64 @fwrite(ptr nonnull @.str.45, i64 34, i64 1, ptr %257)
  %259 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %260 = call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %259)
  %261 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %261, ptr noundef %0, i32 noundef 0, i32 noundef 2) #19
  br label %303

262:                                              ; preds = %247, %235, %232, %229, %226, %223, %220, %217, %214, %211, %208
  %263 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 4
  %264 = load i8, ptr %263, align 4, !tbaa !530
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %281, label %266, !prof !558

266:                                              ; preds = %262
  %267 = load i32, ptr %5, align 8, !tbaa !555
  %268 = icmp eq i32 %267, 7
  br i1 %268, label %281, label %269

269:                                              ; preds = %266
  %270 = call zeroext i8 @vectorizable_live_operation(ptr noundef %0, ptr noundef null, ptr noundef null) #19
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %281, !prof !892

272:                                              ; preds = %269
  %273 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #19
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %303, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %277 = call i64 @fwrite(ptr nonnull @.str.47, i64 30, i64 1, ptr %276)
  %278 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %279 = call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %278)
  %280 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %280, ptr noundef %0, i32 noundef 0, i32 noundef 2) #19
  br label %303

281:                                              ; preds = %266, %262, %269
  %282 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 25
  %283 = load i32, ptr %282, align 4, !tbaa !770
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %303, label %285, !prof !892

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct._stmt_vec_info, ptr %5, i64 0, i32 17
  %287 = load ptr, ptr %286, align 8, !tbaa !781
  %288 = icmp eq ptr %287, null
  br i1 %288, label %303, label %289, !prof !558

289:                                              ; preds = %285
  %290 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %287) #20
  %291 = getelementptr inbounds %struct._stmt_vec_info, ptr %290, i64 0, i32 19
  %292 = load i32, ptr %291, align 8, !tbaa !789
  %293 = zext i32 %292 to i64
  %294 = call i32 @exact_log2(i64 noundef %293) #19
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %296, label %303

296:                                              ; preds = %289
  %297 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %296
  %300 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %301 = call i64 @fwrite(ptr nonnull @.str.48, i64 73, i64 1, ptr %300)
  %302 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  call void @print_gimple_stmt(ptr noundef %302, ptr noundef %0, i32 noundef 0, i32 noundef 2) #19
  br label %303

303:                                              ; preds = %244, %241, %238, %250, %281, %289, %285, %296, %299, %272, %275, %253, %256, %67, %68, %32, %35, %19, %22
  %304 = phi i8 [ 0, %22 ], [ 0, %19 ], [ 1, %35 ], [ 1, %32 ], [ 0, %68 ], [ 0, %67 ], [ 0, %256 ], [ 0, %253 ], [ 0, %275 ], [ 0, %272 ], [ 0, %299 ], [ 0, %296 ], [ 1, %285 ], [ 1, %289 ], [ 1, %281 ], [ 1, %250 ], [ 1, %238 ], [ 1, %241 ], [ 1, %244 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %304
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !886 !PGOFuncName !896 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !511
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !897

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
declare ptr @vect_get_smallest_scalar_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !898 !PGOFuncName !899 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !900

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !901

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !515
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #19
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !515
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !508
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !508
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_type_promotion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !prof !763 !PGOFuncName !902 {
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
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %21 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr null, ptr %8, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store i64 34359738376, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store ptr null, ptr %13, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  store i32 0, ptr %14, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  store ptr null, ptr %15, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  store ptr null, ptr %16, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  store ptr null, ptr %17, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #18
  store ptr null, ptr %18, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  store ptr null, ptr %19, align 8, !tbaa !508
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !892

24:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2682, ptr noundef nonnull @.str.10) #19
  br label %25

25:                                               ; preds = %4, %24
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !527
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %219, label %29, !prof !892

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !531
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %219, !prof !558

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %219, label %36, !prof !892

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %219, !prof !903

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %219 [
    i16 169, label %44
    i16 116, label %44
    i16 113, label %44
  ]

44:                                               ; preds = %41, %41, %41
  %45 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !515
  %48 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %47) #20
  %49 = icmp eq ptr %48, null
  br i1 %49, label %219, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1023
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = trunc i64 %55 to i32
  %57 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !515
  %60 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %59) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %219, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1023
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = trunc i64 %67 to i32
  %69 = icmp sgt i32 %56, %68
  br i1 %69, label %70, label %219

70:                                               ; preds = %62
  %71 = icmp eq ptr %3, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct._loop_vec_info, ptr %22, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !875
  %75 = sdiv i32 %74, %56
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2724, ptr noundef nonnull @.str.10) #19
  br label %78

78:                                               ; preds = %70, %72, %77
  %79 = phi i32 [ %75, %72 ], [ %75, %77 ], [ 1, %70 ]
  %80 = load ptr, ptr %58, align 8, !tbaa !515
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -6
  %85 = icmp ult i32 %84, 3
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load ptr, ptr %46, align 8, !tbaa !515
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -6
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %102, label %93

93:                                               ; preds = %86, %78
  %94 = and i64 %81, 65535
  %95 = icmp eq i64 %94, 9
  br i1 %95, label %96, label %219

96:                                               ; preds = %93
  %97 = load ptr, ptr %46, align 8, !tbaa !515
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 9
  br i1 %100, label %101, label %219

101:                                              ; preds = %96
  switch i16 %43, label %219 [
    i16 116, label %102
    i16 113, label %102
  ]

102:                                              ; preds = %86, %101, %101
  %103 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %45, ptr noundef %22, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11) #20, !range !511
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %219, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %110 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %109)
  br label %219

111:                                              ; preds = %102
  %112 = zext nneg i32 %42 to i64
  %113 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !515
  %115 = zext i8 %114 to i32
  %116 = icmp eq i8 %114, 2
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %119 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %120 = call zeroext i8 @vect_is_simple_use(ptr noundef %118, ptr noundef %22, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %119) #20, !range !511
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %219, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %127 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %126)
  br label %219

128:                                              ; preds = %117, %111
  %129 = phi ptr [ %118, %117 ], [ null, %111 ]
  %130 = call zeroext i8 @supportable_widening_operation(i32 noundef %42, ptr noundef %0, ptr noundef nonnull %48, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %18) #20, !range !511
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %219, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %14, align 4, !tbaa !514
  %134 = icmp ne i32 %133, 0
  %135 = and i1 %116, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2761, ptr noundef nonnull @.str.10) #19
  br label %137

137:                                              ; preds = %132, %136
  %138 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 5
  store ptr %48, ptr %138, align 8, !tbaa !828
  %139 = icmp eq ptr %2, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  store i32 9, ptr %20, align 8, !tbaa !555
  %141 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %145 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 30, i64 1, ptr %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = shl nsw i32 %79, 1
  call void @vect_model_simple_cost(ptr noundef nonnull %20, i32 noundef %147, ptr noundef nonnull %11, ptr noundef null) #20
  br label %219

148:                                              ; preds = %137
  %149 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.51, i32 noundef %79) #20
  br label %154

154:                                              ; preds = %151, %148
  %155 = icmp eq i32 %133, 0
  %156 = add nsw i32 %133, 1
  %157 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %156) #20
  store ptr %157, ptr %17, align 8, !tbaa !508
  %158 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %57, ptr noundef nonnull %60) #19
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %157, ptr noundef %158) #20
  br i1 %155, label %173, label %159

159:                                              ; preds = %154
  %160 = load ptr, ptr %18, align 8
  %161 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %160) #20
  %162 = add i32 %161, -1
  %163 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %160, i32 noundef %162, ptr noundef nonnull %13) #20, !range !904
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %159, %165
  %166 = phi i32 [ %169, %165 ], [ %162, %159 ]
  %167 = load ptr, ptr %13, align 8, !tbaa !508
  %168 = tail call ptr @vect_create_destination_var(ptr noundef %57, ptr noundef %167) #19
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %157, ptr noundef %168) #20
  %169 = add i32 %166, -1
  %170 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %160, i32 noundef %169, ptr noundef nonnull %13) #20, !range !904
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %165, !llvm.loop !905

172:                                              ; preds = %165, %159
  br i1 %71, label %174, label %181

173:                                              ; preds = %154
  br i1 %71, label %176, label %181

174:                                              ; preds = %172
  %175 = tail call fastcc i32 @vect_pow2(i32 noundef %133) #20
  br label %176

176:                                              ; preds = %173, %174
  %177 = phi i32 [ %175, %174 ], [ 1, %173 ]
  %178 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %177) #20
  store ptr %178, ptr %15, align 8, !tbaa !508
  br i1 %116, label %179, label %181

179:                                              ; preds = %176
  %180 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #20
  store ptr %180, ptr %16, align 8, !tbaa !508
  br label %181

181:                                              ; preds = %173, %176, %179, %172
  store ptr null, ptr %12, align 8, !tbaa !508
  %182 = icmp sgt i32 %79, 0
  br i1 %182, label %183, label %216

183:                                              ; preds = %181
  %184 = load i32, ptr %11, align 8
  %185 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %5, align 4
  %188 = load i32, ptr %6, align 4
  %189 = load ptr, ptr %7, align 8
  %190 = load ptr, ptr %8, align 8
  br label %191

191:                                              ; preds = %183, %210
  %192 = phi i32 [ 0, %183 ], [ %214, %210 ]
  %193 = phi ptr [ null, %183 ], [ %212, %210 ]
  %194 = phi ptr [ null, %183 ], [ %211, %210 ]
  %195 = icmp eq i32 %192, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  br i1 %71, label %198, label %197

197:                                              ; preds = %196
  call void @vect_get_slp_defs(ptr noundef nonnull %3, ptr noundef nonnull %15, ptr noundef nonnull %16) #19
  br label %210

198:                                              ; preds = %196
  %199 = call ptr @vect_get_vec_def_for_operand(ptr noundef %45, ptr noundef %0, ptr noundef null) #20
  %200 = load ptr, ptr %15, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %200, ptr noundef %199) #20
  br i1 %116, label %201, label %210

201:                                              ; preds = %198
  %202 = call ptr @vect_get_vec_def_for_operand(ptr noundef %129, ptr noundef %0, ptr noundef null) #20
  %203 = load ptr, ptr %16, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %203, ptr noundef %202) #20
  br label %210

204:                                              ; preds = %191
  %205 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %184, ptr noundef %193) #20
  %206 = load ptr, ptr %15, align 8
  call fastcc void @VEC_tree_base_replace(ptr noundef %206, i32 noundef 0, ptr noundef %205) #20
  br i1 %116, label %207, label %210

207:                                              ; preds = %204
  %208 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %186, ptr noundef %194) #20
  %209 = load ptr, ptr %16, align 8
  call fastcc void @VEC_tree_base_replace(ptr noundef %209, i32 noundef 0, ptr noundef %208) #20
  br label %210

210:                                              ; preds = %204, %207, %197, %201, %198
  %211 = phi ptr [ %194, %197 ], [ %202, %201 ], [ %194, %198 ], [ %208, %207 ], [ %194, %204 ]
  %212 = phi ptr [ %193, %197 ], [ %199, %201 ], [ %199, %198 ], [ %205, %207 ], [ %205, %204 ]
  %213 = call fastcc ptr @VEC_tree_heap_copy(ptr noundef %157) #20
  store ptr %213, ptr %19, align 8, !tbaa !508
  call fastcc void @vect_create_vectorized_promotion_stmts(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %133, ptr noundef %0, ptr noundef %213, ptr noundef %1, ptr noundef %3, i32 noundef %187, i32 noundef %188, ptr noundef %189, ptr noundef %190, i32 noundef %115, ptr noundef nonnull %12) #20
  %214 = add nuw nsw i32 %192, 1
  %215 = icmp eq i32 %214, %79
  br i1 %215, label %216, label %191, !llvm.loop !906

216:                                              ; preds = %210, %181
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %17) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %19) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %18) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %15) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %16) #20
  %217 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !835
  store ptr %218, ptr %2, align 8, !tbaa !508
  br label %219

219:                                              ; preds = %128, %122, %125, %105, %108, %93, %96, %101, %62, %50, %44, %41, %36, %33, %29, %25, %216, %146
  %220 = phi i8 [ 1, %216 ], [ 1, %146 ], [ 0, %25 ], [ 0, %29 ], [ 0, %33 ], [ 0, %36 ], [ 0, %41 ], [ 0, %44 ], [ 0, %50 ], [ 0, %62 ], [ 0, %101 ], [ 0, %96 ], [ 0, %93 ], [ 0, %108 ], [ 0, %105 ], [ 0, %125 ], [ 0, %122 ], [ 0, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i8 %220
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_type_demotion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !prof !763 !PGOFuncName !907 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store i64 34359738376, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  store i32 0, ptr %10, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr null, ptr %11, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  store ptr null, ptr %12, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store ptr null, ptr %13, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  store ptr null, ptr %14, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !892

21:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2413, ptr noundef nonnull @.str.10) #19
  br label %22

22:                                               ; preds = %4, %21
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !527
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %170, label %26, !prof !892

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !531
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %170, !prof !558

30:                                               ; preds = %26
  %31 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %170, label %33, !prof !892

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %170, !prof !903

38:                                               ; preds = %33
  %39 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %40 = trunc i32 %39 to i16
  switch i16 %40, label %170 [
    i16 116, label %41
    i16 113, label %41
  ]

41:                                               ; preds = %38, %38
  %42 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !515
  %45 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %44) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %170, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !515
  %53 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %52) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %170, label %55

55:                                               ; preds = %47
  %56 = and i32 %49, 1023
  %57 = zext nneg i32 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1023
  %63 = zext nneg i32 %62 to i64
  %64 = shl nuw i64 1, %63
  %65 = trunc i64 %64 to i32
  %66 = icmp slt i32 %59, %65
  br i1 %66, label %67, label %170

67:                                               ; preds = %55
  %68 = icmp eq ptr %3, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct._loop_vec_info, ptr %19, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !875
  %72 = sdiv i32 %71, %65
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2453, ptr noundef nonnull @.str.10) #19
  br label %75

75:                                               ; preds = %67, %69, %74
  %76 = phi i32 [ %72, %69 ], [ %72, %74 ], [ 1, %67 ]
  %77 = load ptr, ptr %51, align 8, !tbaa !515
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -6
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load ptr, ptr %43, align 8, !tbaa !515
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -6
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %98, label %90

90:                                               ; preds = %83, %75
  %91 = and i64 %78, 65535
  %92 = icmp eq i64 %91, 9
  br i1 %92, label %93, label %170

93:                                               ; preds = %90
  %94 = load ptr, ptr %43, align 8, !tbaa !515
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 9
  br i1 %97, label %98, label %170

98:                                               ; preds = %83, %93
  %99 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %42, ptr noundef %19, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !511
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %170, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %106 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %105)
  br label %170

107:                                              ; preds = %98
  %108 = call zeroext i8 @supportable_narrowing_operation(i32 noundef %39, ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %13) #20, !range !511
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %170, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 5
  store ptr %45, ptr %111, align 8, !tbaa !828
  %112 = icmp eq ptr %2, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  store i32 10, ptr %17, align 8, !tbaa !555
  %114 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %118 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 29, i64 1, ptr %117)
  br label %119

119:                                              ; preds = %116, %113
  call void @vect_model_simple_cost(ptr noundef nonnull %17, i32 noundef %76, ptr noundef nonnull %8, ptr noundef null) #20
  br label %170

120:                                              ; preds = %110
  %121 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.53, i32 noundef %76) #20
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, ptr %10, align 4, !tbaa !514
  %128 = icmp eq i32 %127, 0
  %129 = add nsw i32 %127, 1
  %130 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %129) #20
  store ptr %130, ptr %12, align 8, !tbaa !508
  %131 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %50, ptr noundef nonnull %53) #19
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %130, ptr noundef %131) #20
  br i1 %128, label %145, label %132

132:                                              ; preds = %126
  %133 = load ptr, ptr %13, align 8
  %134 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %133) #20
  %135 = add i32 %134, -1
  %136 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %133, i32 noundef %135, ptr noundef nonnull %16) #20, !range !904
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %132, %138
  %139 = phi i32 [ %142, %138 ], [ %135, %132 ]
  %140 = load ptr, ptr %16, align 8, !tbaa !508
  %141 = tail call ptr @vect_create_destination_var(ptr noundef %50, ptr noundef %140) #19
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %130, ptr noundef %141) #20
  %142 = add i32 %139, -1
  %143 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %133, i32 noundef %142, ptr noundef nonnull %16) #20, !range !904
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %138, !llvm.loop !908

145:                                              ; preds = %138, %132, %126
  store ptr %42, ptr %15, align 8, !tbaa !508
  store ptr null, ptr %9, align 8, !tbaa !508
  %146 = icmp sgt i32 %76, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %145
  %148 = load i32, ptr %8, align 8
  %149 = load i32, ptr %5, align 4
  br label %150

150:                                              ; preds = %147, %162
  %151 = phi i32 [ 0, %147 ], [ %164, %162 ]
  br i1 %68, label %153, label %152

152:                                              ; preds = %150
  call void @vect_get_slp_defs(ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef null) #19
  br label %162

153:                                              ; preds = %150
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %11) #20
  br i1 %128, label %157, label %154

154:                                              ; preds = %153
  %155 = call fastcc i32 @vect_pow2(i32 noundef %127) #20
  %156 = shl nsw i32 %155, 1
  br label %157

157:                                              ; preds = %153, %154
  %158 = phi i32 [ %156, %154 ], [ 2, %153 ]
  %159 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %158) #20
  store ptr %159, ptr %11, align 8, !tbaa !508
  %160 = call fastcc i32 @vect_pow2(i32 noundef %127) #20
  %161 = add nsw i32 %160, -1
  call fastcc void @vect_get_loop_based_defs(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %148, ptr noundef nonnull %11, i32 noundef %161) #20
  br label %162

162:                                              ; preds = %157, %152
  %163 = call fastcc ptr @VEC_tree_heap_copy(ptr noundef %130) #20
  call fastcc void @vect_create_vectorized_demotion_stmts(ptr noundef nonnull %11, i32 noundef %127, ptr noundef %0, ptr noundef %163, ptr noundef %1, ptr noundef %3, i32 noundef %149, ptr noundef nonnull %9) #20
  %164 = add nuw nsw i32 %151, 1
  %165 = icmp eq i32 %164, %76
  br i1 %165, label %166, label %150, !llvm.loop !909

166:                                              ; preds = %162, %145
  %167 = phi ptr [ null, %145 ], [ %163, %162 ]
  store ptr %167, ptr %14, align 8, !tbaa !508
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %11) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %12) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %14) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %13) #20
  %168 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !835
  store ptr %169, ptr %2, align 8, !tbaa !508
  br label %170

170:                                              ; preds = %107, %101, %104, %90, %93, %55, %47, %41, %38, %33, %30, %26, %22, %166, %119
  %171 = phi i8 [ 1, %166 ], [ 1, %119 ], [ 0, %22 ], [ 0, %26 ], [ 0, %30 ], [ 0, %33 ], [ 0, %38 ], [ 0, %41 ], [ 0, %47 ], [ 0, %55 ], [ 0, %93 ], [ 0, %90 ], [ 0, %104 ], [ 0, %101 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i8 %171
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_conversion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !prof !763 !PGOFuncName !910 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr null, ptr %8, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store i64 34359738376, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  store ptr null, ptr %12, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  store ptr null, ptr %14, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !892

20:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1568, ptr noundef nonnull @.str.10) #19
  br label %21

21:                                               ; preds = %4, %20
  %22 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !527
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %258, label %25, !prof !892

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !531
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %258, !prof !558

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %258, label %32, !prof !892

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %258, !prof !903

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %39 = add nsw i32 %38, -79
  %40 = icmp ult i32 %39, -2
  br i1 %40, label %258, label %41, !prof !911

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !515
  %45 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %44) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %258, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = trunc i64 %52 to i32
  %54 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !515
  %57 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %56) #20
  %58 = icmp eq ptr %57, null
  br i1 %58, label %258, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1023
  %63 = zext nneg i32 %62 to i64
  %64 = shl nuw i64 1, %63
  %65 = trunc i64 %64 to i32
  %66 = sdiv i32 %65, 2
  %67 = icmp eq i32 %66, %53
  br i1 %67, label %78, label %68

68:                                               ; preds = %59
  %69 = icmp eq i32 %65, %53
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = sdiv i32 %53, 2
  %72 = icmp eq i32 %71, %65
  br i1 %72, label %78, label %258

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !828
  %76 = icmp eq ptr %75, %57
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1612, ptr noundef nonnull @.str.10) #19
  br label %78

78:                                               ; preds = %70, %59, %77, %73
  %79 = phi i32 [ 1, %77 ], [ 1, %73 ], [ 2, %70 ], [ 0, %59 ]
  %80 = phi i1 [ false, %77 ], [ false, %73 ], [ true, %70 ], [ true, %59 ]
  %81 = phi i1 [ false, %77 ], [ false, %73 ], [ true, %70 ], [ false, %59 ]
  %82 = phi i1 [ true, %77 ], [ true, %73 ], [ false, %70 ], [ false, %59 ]
  %83 = load i64, ptr %44, align 8
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -6
  %87 = icmp ult i32 %86, 3
  %88 = load i64, ptr %56, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -6
  %92 = icmp ult i32 %91, 3
  br i1 %87, label %93, label %94

93:                                               ; preds = %78
  br i1 %92, label %258, label %95

94:                                               ; preds = %78
  br i1 %92, label %95, label %258

95:                                               ; preds = %93, %94
  %96 = phi ptr [ %45, %93 ], [ %57, %94 ]
  %97 = getelementptr inbounds %struct._loop_vec_info, ptr %18, i64 0, i32 6
  %98 = load i32, ptr %97, align 8, !tbaa !875
  %99 = select i1 %67, i32 %65, i32 %53
  %100 = sdiv i32 %98, %99
  %101 = icmp ne ptr %3, null
  %102 = select i1 %101, i32 1, i32 %100
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1633, ptr noundef nonnull @.str.10) #19
  br label %105

105:                                              ; preds = %95, %104
  %106 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %42, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11) #20, !range !511
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %258, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %113 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %112)
  br label %258

114:                                              ; preds = %105
  br i1 %82, label %115, label %119

115:                                              ; preds = %114
  %116 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 2), align 8, !tbaa !912
  %117 = tail call ptr %116(i32 noundef %38, ptr noundef nonnull %96) #19
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %115, %114
  br i1 %81, label %120, label %123

120:                                              ; preds = %119
  %121 = call zeroext i8 @supportable_widening_operation(i32 noundef %38, ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %15, ptr noundef nonnull %14) #20, !range !511
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120, %119
  br i1 %67, label %124, label %133

124:                                              ; preds = %123
  %125 = call zeroext i8 @supportable_narrowing_operation(i32 noundef %38, ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %14) #20, !range !511
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124, %120, %115
  %128 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %258, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %132 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 35, i64 1, ptr %131)
  br label %258

133:                                              ; preds = %124, %123
  br i1 %80, label %134, label %139

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 5
  store ptr %45, ptr %135, align 8, !tbaa !828
  %136 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 25
  %137 = load i32, ptr %136, align 4, !tbaa !770
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %258

139:                                              ; preds = %134, %133
  %140 = icmp eq ptr %2, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  store i32 11, ptr %16, align 8, !tbaa !555
  br label %258

142:                                              ; preds = %139
  %143 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %147 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 21, i64 1, ptr %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %54, ptr noundef nonnull %57) #19
  %150 = or i1 %101, %80
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #20
  store ptr %152, ptr %12, align 8, !tbaa !508
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi ptr [ %152, %151 ], [ null, %148 ]
  switch i32 %79, label %251 [
    i32 1, label %169
    i32 2, label %160
    i32 0, label %155
  ]

155:                                              ; preds = %153
  br i1 %103, label %156, label %248

156:                                              ; preds = %155
  %157 = load i32, ptr %11, align 8
  %158 = load i32, ptr %5, align 4
  %159 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 6
  br label %229

160:                                              ; preds = %153
  br i1 %103, label %161, label %254

161:                                              ; preds = %160
  %162 = load i32, ptr %11, align 8
  %163 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 5
  %164 = load i32, ptr %5, align 4
  %165 = load ptr, ptr %7, align 8
  %166 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 6
  %167 = load i32, ptr %6, align 4
  %168 = load ptr, ptr %8, align 8
  br label %208

169:                                              ; preds = %153
  br i1 %103, label %170, label %254

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  %172 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 6
  br label %173

173:                                              ; preds = %170, %203
  %174 = phi i32 [ 0, %170 ], [ %206, %203 ]
  %175 = phi ptr [ null, %170 ], [ %199, %203 ]
  %176 = phi ptr [ null, %170 ], [ %205, %203 ]
  %177 = icmp eq i32 %174, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  call fastcc void @vect_get_vec_defs(ptr noundef %42, ptr noundef null, ptr noundef %0, ptr noundef nonnull %12, ptr noundef null, ptr noundef %3) #20
  br label %180

179:                                              ; preds = %173
  call fastcc void @vect_get_vec_defs_for_stmt_copy(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null) #20
  br label %180

180:                                              ; preds = %179, %178
  %181 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 2), align 8, !tbaa !912
  %182 = call ptr %181(i32 noundef %38, ptr noundef nonnull %96) #19
  %183 = load ptr, ptr %12, align 8
  %184 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %183, i32 noundef 0, ptr noundef nonnull %13) #20, !range !904
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %180, %193
  %187 = phi i32 [ %194, %193 ], [ 0, %180 ]
  %188 = load ptr, ptr %13, align 8, !tbaa !508
  %189 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %182, i32 noundef 1, ptr noundef %188) #19
  %190 = call fastcc ptr @make_ssa_name(ptr noundef %149, ptr noundef %189) #20
  call fastcc void @gimple_call_set_lhs(ptr noundef %189, ptr noundef %190) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %189, ptr noundef %1) #20
  br i1 %101, label %191, label %193

191:                                              ; preds = %186
  %192 = load ptr, ptr %171, align 8, !tbaa !913
  call fastcc void @VEC_gimple_base_quick_push(ptr noundef %192, ptr noundef %189) #20
  br label %193

193:                                              ; preds = %186, %191
  %194 = add nuw nsw i32 %187, 1
  %195 = load ptr, ptr %12, align 8
  %196 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %195, i32 noundef %194, ptr noundef nonnull %13) #20, !range !904
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %186, !llvm.loop !915

198:                                              ; preds = %193, %180
  %199 = phi ptr [ %175, %180 ], [ %189, %193 ]
  br i1 %177, label %200, label %201

200:                                              ; preds = %198
  store ptr %199, ptr %2, align 8, !tbaa !508
  br label %203

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct._stmt_vec_info, ptr %176, i64 0, i32 14
  br label %203

203:                                              ; preds = %201, %200
  %204 = phi ptr [ %202, %201 ], [ %172, %200 ]
  store ptr %199, ptr %204, align 8, !tbaa !508
  %205 = call fastcc ptr @vinfo_for_stmt(ptr noundef %199) #20
  %206 = add nuw nsw i32 %174, 1
  %207 = icmp eq i32 %206, %102
  br i1 %207, label %252, label %173, !llvm.loop !916

208:                                              ; preds = %161, %220
  %209 = phi ptr [ null, %161 ], [ %222, %220 ]
  %210 = phi i32 [ 0, %161 ], [ %227, %220 ]
  %211 = phi ptr [ null, %161 ], [ %226, %220 ]
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %42, ptr noundef %0, ptr noundef null) #20
  store ptr %45, ptr %163, align 8, !tbaa !828
  %215 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %164, ptr noundef %165, ptr noundef %214, ptr noundef null, i32 noundef 1, ptr noundef %149, ptr noundef %1, ptr noundef %0) #20
  store ptr %215, ptr %166, align 8, !tbaa !835
  br label %220

216:                                              ; preds = %208
  %217 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %162, ptr noundef %209) #20
  store ptr %45, ptr %163, align 8, !tbaa !828
  %218 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %164, ptr noundef %165, ptr noundef %217, ptr noundef null, i32 noundef 1, ptr noundef %149, ptr noundef %1, ptr noundef %0) #20
  %219 = getelementptr inbounds %struct._stmt_vec_info, ptr %211, i64 0, i32 14
  store ptr %218, ptr %219, align 8, !tbaa !574
  br label %220

220:                                              ; preds = %216, %213
  %221 = phi ptr [ %218, %216 ], [ %215, %213 ]
  %222 = phi ptr [ %217, %216 ], [ %214, %213 ]
  %223 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %221) #20
  %224 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %167, ptr noundef %168, ptr noundef %222, ptr noundef null, i32 noundef 1, ptr noundef %149, ptr noundef %1, ptr noundef %0) #20
  %225 = getelementptr inbounds %struct._stmt_vec_info, ptr %223, i64 0, i32 14
  store ptr %224, ptr %225, align 8, !tbaa !574
  %226 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %224) #20
  %227 = add nuw nsw i32 %210, 1
  %228 = icmp eq i32 %227, %102
  br i1 %228, label %254, label %208, !llvm.loop !917

229:                                              ; preds = %156, %238
  %230 = phi ptr [ null, %156 ], [ %240, %238 ]
  %231 = phi i32 [ 0, %156 ], [ %246, %238 ]
  %232 = phi ptr [ null, %156 ], [ %245, %238 ]
  %233 = icmp eq i32 %231, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %42, ptr noundef %0, ptr noundef null) #20
  br label %238

236:                                              ; preds = %229
  %237 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %157, ptr noundef %230) #20
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi ptr [ %237, %236 ], [ %235, %234 ]
  %240 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %157, ptr noundef %239) #20
  %241 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %158, ptr noundef %149, ptr noundef %239, ptr noundef %240) #19
  %242 = tail call fastcc ptr @make_ssa_name(ptr noundef %149, ptr noundef %241) #20
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %241, ptr noundef %242) #20
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %241, ptr noundef %1) #20
  %243 = getelementptr inbounds %struct._stmt_vec_info, ptr %232, i64 0, i32 14
  %244 = select i1 %233, ptr %159, ptr %243
  store ptr %241, ptr %244, align 8, !tbaa !508
  %245 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %241) #20
  %246 = add nuw nsw i32 %231, 1
  %247 = icmp eq i32 %246, %102
  br i1 %247, label %248, label %229, !llvm.loop !918

248:                                              ; preds = %238, %155
  %249 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !835
  store ptr %250, ptr %2, align 8, !tbaa !508
  br label %254

251:                                              ; preds = %153
  unreachable

252:                                              ; preds = %203
  %253 = load ptr, ptr %12, align 8, !tbaa !508
  br label %254

254:                                              ; preds = %220, %252, %160, %169, %248
  %255 = phi ptr [ %253, %252 ], [ %154, %160 ], [ %154, %169 ], [ %154, %248 ], [ %154, %220 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %12) #20
  br label %258

258:                                              ; preds = %94, %93, %254, %257, %134, %127, %130, %108, %111, %70, %47, %41, %37, %32, %29, %25, %21, %141
  %259 = phi i8 [ 1, %141 ], [ 0, %21 ], [ 0, %25 ], [ 0, %29 ], [ 0, %32 ], [ 0, %37 ], [ 0, %41 ], [ 0, %47 ], [ 0, %70 ], [ 0, %94 ], [ 0, %93 ], [ 0, %111 ], [ 0, %108 ], [ 0, %130 ], [ 0, %127 ], [ 0, %134 ], [ 1, %257 ], [ 1, %254 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i8 %259
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_operation(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !prof !919 !PGOFuncName !920 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !828
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store i64 34359738376, ptr %7, align 8
  %16 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = trunc i64 %20 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr null, ptr %8, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr null, ptr %9, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %22 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !811
  %24 = icmp eq ptr %15, null
  br i1 %24, label %28, label %25, !prof !921

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct._loop_vec_info, ptr %15, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !875
  br label %28

28:                                               ; preds = %4, %25
  %29 = phi i32 [ %27, %25 ], [ 1, %4 ]
  %30 = icmp eq ptr %3, null
  br i1 %30, label %31, label %37, !prof !922

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._loop_vec_info, ptr %15, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !875
  %34 = sdiv i32 %33, %21
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %37, label %36, !prof !923

36:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1966, ptr noundef nonnull @.str.10) #19
  br label %37

37:                                               ; preds = %28, %31, %36
  %38 = phi i32 [ %34, %31 ], [ %34, %36 ], [ 1, %28 ]
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !527
  %41 = icmp ne i32 %40, 0
  %42 = icmp ne ptr %23, null
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %464, !prof !618

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !531
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %464, !prof !922

48:                                               ; preds = %44
  %49 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %464, label %51, !prof !921

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %464, !prof !924

56:                                               ; preds = %51
  %57 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !515
  %60 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %59) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %464, label %62, !prof !925

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1023
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, %21
  br i1 %69, label %70, label %464, !prof !926

70:                                               ; preds = %62
  %71 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %72 = icmp eq i32 %71, 66
  %73 = select i1 %72, i32 63, i32 %71, !prof !925
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !515
  %77 = zext i8 %76 to i32
  %78 = icmp ne i8 %76, 2
  %79 = add i8 %76, -3
  %80 = icmp ult i8 %79, -2
  br i1 %80, label %81, label %87, !prof !927

81:                                               ; preds = %70
  %82 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %464, label %84, !prof !622

84:                                               ; preds = %81
  %85 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.56, i32 noundef %77) #20
  br label %464

87:                                               ; preds = %70
  %88 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %89 = call zeroext i8 @vect_is_simple_use(ptr noundef %88, ptr noundef %15, ptr noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !511
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %97, !prof !928

91:                                               ; preds = %87
  %92 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %464, label %94, !prof !929

94:                                               ; preds = %91
  %95 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %96 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %95)
  br label %464

97:                                               ; preds = %87
  %98 = icmp eq i8 %76, 2
  br i1 %98, label %99, label %110, !prof !622

99:                                               ; preds = %97
  %100 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %101 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %102 = call zeroext i8 @vect_is_simple_use(ptr noundef %100, ptr noundef %15, ptr noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %101) #20, !range !511
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %110, !prof !930

104:                                              ; preds = %99
  %105 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %464, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %109 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %108)
  br label %464

110:                                              ; preds = %99, %97
  %111 = phi ptr [ %100, %99 ], [ null, %97 ]
  %112 = add nsw i32 %73, -83
  %113 = icmp ult i32 %112, 4
  br i1 %113, label %114, label %190, !prof !931

114:                                              ; preds = %110
  %115 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = tail call ptr @optab_for_tree_code(i32 noundef %73, ptr noundef nonnull %13, i32 noundef 2) #19
  %120 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %192, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %124 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 33, i64 1, ptr %123)
  br label %192

125:                                              ; preds = %114
  %126 = add i32 %116, -1
  %127 = icmp ult i32 %126, 2
  br i1 %127, label %128, label %184

128:                                              ; preds = %125
  %129 = tail call ptr @optab_for_tree_code(i32 noundef %73, ptr noundef nonnull %13, i32 noundef 1) #19
  %130 = icmp eq ptr %129, null
  br i1 %130, label %153, label %131

131:                                              ; preds = %128
  %132 = load i64, ptr %13, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 14
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %141

137:                                              ; preds = %131
  %138 = load i32, ptr %16, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i32 [ %136, %135 ], [ %140, %137 ]
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.optab_d, ptr %129, i64 0, i32 4, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !932
  %146 = icmp eq i32 %145, 2956
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %201, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %152 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 33, i64 1, ptr %151)
  br label %201

153:                                              ; preds = %141, %128
  %154 = tail call ptr @optab_for_tree_code(i32 noundef %73, ptr noundef nonnull %13, i32 noundef 2) #19
  %155 = icmp eq ptr %154, null
  br i1 %155, label %195, label %156

156:                                              ; preds = %153
  %157 = load i64, ptr %13, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 14
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %166

162:                                              ; preds = %156
  %163 = load i32, ptr %16, align 4
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  br label %166

166:                                              ; preds = %162, %160
  %167 = phi i32 [ %161, %160 ], [ %165, %162 ]
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.optab_d, ptr %154, i64 0, i32 4, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !932
  %171 = icmp eq i32 %170, 2956
  br i1 %171, label %201, label %172

172:                                              ; preds = %166
  %173 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %177 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 33, i64 1, ptr %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = icmp eq i32 %116, 1
  br i1 %179, label %180, label %201

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !515
  %183 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %182, ptr noundef %111) #19
  br label %201

184:                                              ; preds = %125
  %185 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %464, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %189 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 41, i64 1, ptr %188)
  br label %464

190:                                              ; preds = %110
  %191 = tail call ptr @optab_for_tree_code(i32 noundef %73, ptr noundef nonnull %13, i32 noundef 0) #19
  br label %192

192:                                              ; preds = %122, %118, %190
  %193 = phi ptr [ %119, %122 ], [ %119, %118 ], [ %191, %190 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %201, !prof !934

195:                                              ; preds = %153, %192
  %196 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %464, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %200 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 9, i64 1, ptr %199)
  br label %464

201:                                              ; preds = %166, %178, %180, %147, %150, %192
  %202 = phi i1 [ false, %192 ], [ false, %166 ], [ false, %178 ], [ false, %180 ], [ true, %147 ], [ true, %150 ]
  %203 = phi i1 [ true, %192 ], [ true, %166 ], [ true, %178 ], [ true, %180 ], [ false, %147 ], [ false, %150 ]
  %204 = phi ptr [ %111, %192 ], [ %111, %166 ], [ %111, %178 ], [ %183, %180 ], [ %111, %147 ], [ %111, %150 ]
  %205 = phi ptr [ %193, %192 ], [ %154, %166 ], [ %154, %178 ], [ %154, %180 ], [ %129, %147 ], [ %129, %150 ]
  %206 = load i64, ptr %13, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %208, label %209, label %211, !prof !622

209:                                              ; preds = %201
  %210 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %215

211:                                              ; preds = %201
  %212 = load i32, ptr %16, align 4
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  br label %215

215:                                              ; preds = %211, %209
  %216 = phi i32 [ %210, %209 ], [ %214, %211 ]
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.optab_d, ptr %205, i64 0, i32 4, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !932
  %220 = icmp eq i32 %219, 2956
  br i1 %220, label %221, label %243, !prof !930

221:                                              ; preds = %215
  %222 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %226 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 27, i64 1, ptr %225)
  br label %227

227:                                              ; preds = %224, %221
  %228 = zext i32 %216 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !515
  %231 = icmp eq i8 %230, 4
  br i1 %231, label %232, label %464

232:                                              ; preds = %227
  %233 = tail call i32 @vect_min_worthwhile_factor(i32 noundef %73) #19
  %234 = icmp sge i32 %29, %233
  %235 = icmp ne ptr %2, null
  %236 = or i1 %235, %234
  br i1 %236, label %237, label %464

237:                                              ; preds = %232
  %238 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %242 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 27, i64 1, ptr %241)
  br label %243

243:                                              ; preds = %237, %240, %215
  %244 = load i64, ptr %13, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 14
  br i1 %246, label %247, label %249, !prof !622

247:                                              ; preds = %243
  %248 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %253

249:                                              ; preds = %243
  %250 = load i32, ptr %16, align 4
  %251 = lshr i32 %250, 16
  %252 = and i32 %251, 255
  br label %253

253:                                              ; preds = %249, %247
  %254 = phi i32 [ %248, %247 ], [ %252, %249 ]
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !515
  %258 = icmp eq i8 %257, 12
  br i1 %258, label %350, label %259, !prof !930

259:                                              ; preds = %253
  %260 = load i64, ptr %13, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 14
  br i1 %262, label %263, label %265, !prof !622

263:                                              ; preds = %259
  %264 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %269

265:                                              ; preds = %259
  %266 = load i32, ptr %16, align 4
  %267 = lshr i32 %266, 16
  %268 = and i32 %267, 255
  br label %269

269:                                              ; preds = %265, %263
  %270 = phi i32 [ %264, %263 ], [ %268, %265 ]
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !515
  %274 = icmp eq i8 %273, 17
  br i1 %274, label %350, label %275, !prof !930

275:                                              ; preds = %269
  %276 = load i64, ptr %13, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 14
  br i1 %278, label %279, label %281, !prof !622

279:                                              ; preds = %275
  %280 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %285

281:                                              ; preds = %275
  %282 = load i32, ptr %16, align 4
  %283 = lshr i32 %282, 16
  %284 = and i32 %283, 255
  br label %285

285:                                              ; preds = %281, %279
  %286 = phi i32 [ %280, %279 ], [ %284, %281 ]
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !515
  %290 = icmp eq i8 %289, 13
  br i1 %290, label %350, label %291, !prof !930

291:                                              ; preds = %285
  %292 = load i64, ptr %13, align 8
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 14
  br i1 %294, label %295, label %297, !prof !622

295:                                              ; preds = %291
  %296 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %301

297:                                              ; preds = %291
  %298 = load i32, ptr %16, align 4
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  br label %301

301:                                              ; preds = %297, %295
  %302 = phi i32 [ %296, %295 ], [ %300, %297 ]
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !515
  %306 = icmp eq i8 %305, 14
  br i1 %306, label %350, label %307, !prof !930

307:                                              ; preds = %301
  %308 = load i64, ptr %13, align 8
  %309 = and i64 %308, 65535
  %310 = icmp eq i64 %309, 14
  br i1 %310, label %311, label %313, !prof !622

311:                                              ; preds = %307
  %312 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %317

313:                                              ; preds = %307
  %314 = load i32, ptr %16, align 4
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 255
  br label %317

317:                                              ; preds = %313, %311
  %318 = phi i32 [ %312, %311 ], [ %316, %313 ]
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !515
  %322 = icmp eq i8 %321, 15
  br i1 %322, label %350, label %323, !prof !930

323:                                              ; preds = %317
  %324 = load i64, ptr %13, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 14
  br i1 %326, label %327, label %329, !prof !622

327:                                              ; preds = %323
  %328 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #19
  br label %333

329:                                              ; preds = %323
  %330 = load i32, ptr %16, align 4
  %331 = lshr i32 %330, 16
  %332 = and i32 %331, 255
  br label %333

333:                                              ; preds = %329, %327
  %334 = phi i32 [ %328, %327 ], [ %332, %329 ]
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !515
  %338 = icmp eq i8 %337, 16
  br i1 %338, label %350, label %339, !prof !930

339:                                              ; preds = %333
  %340 = tail call i32 @vect_min_worthwhile_factor(i32 noundef %73) #19
  %341 = icmp sge i32 %29, %340
  %342 = icmp ne ptr %2, null
  %343 = or i1 %342, %341
  br i1 %343, label %350, label %344, !prof !732

344:                                              ; preds = %339
  %345 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %464, label %347

347:                                              ; preds = %344
  %348 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %349 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 36, i64 1, ptr %348)
  br label %464

350:                                              ; preds = %339, %333, %317, %301, %285, %269, %253
  %351 = icmp eq ptr %2, null
  br i1 %351, label %352, label %359, !prof !935

352:                                              ; preds = %350
  store i32 3, ptr %11, align 8, !tbaa !555
  %353 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %358, label %355, !prof !535

355:                                              ; preds = %352
  %356 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %357 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 30, i64 1, ptr %356)
  br label %358

358:                                              ; preds = %355, %352
  call void @vect_model_simple_cost(ptr noundef nonnull %11, i32 noundef %38, ptr noundef nonnull %7, ptr noundef null) #20
  br label %464

359:                                              ; preds = %350
  %360 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %365, label %362, !prof !535

362:                                              ; preds = %359
  %363 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %364 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 33, i64 1, ptr %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %57, ptr noundef nonnull %13) #19
  br i1 %30, label %367, label %371, !prof !535

367:                                              ; preds = %365
  %368 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #20
  store ptr %368, ptr %8, align 8, !tbaa !508
  br i1 %98, label %369, label %376, !prof !535

369:                                              ; preds = %367
  %370 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #20
  store ptr %370, ptr %9, align 8, !tbaa !508
  br label %376

371:                                              ; preds = %365
  br i1 %203, label %376, label %372

372:                                              ; preds = %371
  %373 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %374 = load i32, ptr %373, align 8, !tbaa !936
  %375 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %374) #20
  store ptr %375, ptr %9, align 8, !tbaa !508
  br label %376

376:                                              ; preds = %371, %372, %367, %369
  %377 = icmp sgt i32 %38, 0
  br i1 %377, label %378, label %460, !prof !507

378:                                              ; preds = %376, %456
  %379 = phi i32 [ %458, %456 ], [ 0, %376 ]
  %380 = phi ptr [ %424, %456 ], [ null, %376 ]
  %381 = phi ptr [ %457, %456 ], [ null, %376 ]
  %382 = phi ptr [ %447, %456 ], [ null, %376 ]
  %383 = icmp eq i32 %379, 0
  br i1 %383, label %384, label %422, !prof !535

384:                                              ; preds = %378
  %385 = and i1 %98, %202
  br i1 %385, label %386, label %416, !prof !937

386:                                              ; preds = %384
  %387 = sext i32 %219 to i64
  %388 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %387, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !938
  %390 = getelementptr inbounds %struct.insn_operand_data, ptr %389, i64 2, i32 2
  %391 = load i16, ptr %390, align 8
  %392 = zext i16 %391 to i64
  %393 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !515
  %395 = add i8 %394, -12
  %396 = icmp ult i8 %395, 6
  br i1 %396, label %416, label %397

397:                                              ; preds = %386
  %398 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %397
  %401 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %402 = call i64 @fwrite(ptr nonnull @.str.66, i64 28, i64 1, ptr %401)
  br label %403

403:                                              ; preds = %400, %397
  %404 = load ptr, ptr %9, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %404, ptr noundef %204) #20
  br i1 %30, label %416, label %405

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %407 = load i32, ptr %406, align 8, !tbaa !936
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %416, label %409

409:                                              ; preds = %405, %409
  %410 = phi i32 [ %412, %409 ], [ 0, %405 ]
  %411 = load ptr, ptr %9, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %411, ptr noundef %204) #20
  %412 = add nuw i32 %410, 1
  %413 = load i32, ptr %406, align 8, !tbaa !936
  %414 = add i32 %413, -1
  %415 = icmp ult i32 %412, %414
  br i1 %415, label %409, label %416, !llvm.loop !940

416:                                              ; preds = %409, %405, %386, %403, %384
  %417 = phi ptr [ %204, %403 ], [ %380, %384 ], [ %380, %386 ], [ %204, %405 ], [ %204, %409 ]
  %418 = icmp ne ptr %417, null
  %419 = select i1 %78, i1 true, i1 %418
  br i1 %419, label %421, label %420, !prof !941

420:                                              ; preds = %416
  call fastcc void @vect_get_vec_defs(ptr noundef %88, ptr noundef %204, ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %3) #20
  br label %423

421:                                              ; preds = %416
  call fastcc void @vect_get_vec_defs(ptr noundef %88, ptr noundef null, ptr noundef %0, ptr noundef nonnull %8, ptr noundef null, ptr noundef %3) #20
  br label %423

422:                                              ; preds = %378
  call fastcc void @vect_get_vec_defs_for_stmt_copy(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  br label %423

423:                                              ; preds = %420, %421, %422
  %424 = phi ptr [ %417, %421 ], [ null, %420 ], [ %380, %422 ]
  %425 = load ptr, ptr %8, align 8
  %426 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %425, i32 noundef 0, ptr noundef nonnull %10) #20, !range !904
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %446, label %428, !prof !598

428:                                              ; preds = %423, %441
  %429 = phi i32 [ %442, %441 ], [ 0, %423 ]
  br i1 %98, label %430, label %433, !prof !535

430:                                              ; preds = %428
  %431 = load ptr, ptr %9, align 8
  %432 = call fastcc ptr @VEC_tree_base_index(ptr noundef %431, i32 noundef %429) #20
  br label %433

433:                                              ; preds = %428, %430
  %434 = phi ptr [ %432, %430 ], [ null, %428 ]
  %435 = load ptr, ptr %10, align 8, !tbaa !508
  %436 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %73, ptr noundef %366, ptr noundef %435, ptr noundef %434) #19
  %437 = call fastcc ptr @make_ssa_name(ptr noundef %366, ptr noundef %436) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %436, ptr noundef %437) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %436, ptr noundef %1) #20
  br i1 %30, label %441, label %438, !prof !535

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  %440 = load ptr, ptr %439, align 8, !tbaa !913
  call fastcc void @VEC_gimple_base_quick_push(ptr noundef %440, ptr noundef %436) #20
  br label %441

441:                                              ; preds = %433, %438
  %442 = add nuw nsw i32 %429, 1
  %443 = load ptr, ptr %8, align 8
  %444 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %443, i32 noundef %442, ptr noundef nonnull %10) #20, !range !904
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %428, !prof !507, !llvm.loop !942

446:                                              ; preds = %441, %423
  %447 = phi ptr [ %382, %423 ], [ %436, %441 ]
  br i1 %30, label %448, label %456, !prof !535

448:                                              ; preds = %446
  br i1 %383, label %449, label %451, !prof !535

449:                                              ; preds = %448
  %450 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 6
  store ptr %447, ptr %2, align 8, !tbaa !508
  br label %453

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct._stmt_vec_info, ptr %381, i64 0, i32 14
  br label %453

453:                                              ; preds = %451, %449
  %454 = phi ptr [ %452, %451 ], [ %450, %449 ]
  store ptr %447, ptr %454, align 8, !tbaa !508
  %455 = call fastcc ptr @vinfo_for_stmt(ptr noundef %447) #20
  br label %456

456:                                              ; preds = %446, %453
  %457 = phi ptr [ %381, %446 ], [ %455, %453 ]
  %458 = add nuw nsw i32 %379, 1
  %459 = icmp eq i32 %458, %38
  br i1 %459, label %460, label %378, !prof !507, !llvm.loop !943

460:                                              ; preds = %456, %376
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %8) #20
  %461 = load ptr, ptr %9, align 8, !tbaa !508
  %462 = icmp eq ptr %461, null
  br i1 %462, label %464, label %463, !prof !625

463:                                              ; preds = %460
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #20
  br label %464

464:                                              ; preds = %460, %463, %344, %347, %227, %232, %195, %198, %184, %187, %104, %107, %91, %94, %81, %84, %62, %56, %51, %48, %44, %37, %358
  %465 = phi i8 [ 1, %358 ], [ 0, %37 ], [ 0, %44 ], [ 0, %48 ], [ 0, %51 ], [ 0, %56 ], [ 0, %62 ], [ 0, %84 ], [ 0, %81 ], [ 0, %94 ], [ 0, %91 ], [ 0, %107 ], [ 0, %104 ], [ 0, %187 ], [ 0, %184 ], [ 0, %198 ], [ 0, %195 ], [ 0, %232 ], [ 0, %227 ], [ 0, %347 ], [ 0, %344 ], [ 1, %463 ], [ 1, %460 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i8 %465
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_assignment(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !prof !826 !PGOFuncName !944 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !828
  %13 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store i64 34359738376, ptr %7, align 8
  %15 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr null, ptr %8, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !811
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %30, !prof !894

20:                                               ; preds = %4
  %21 = and i32 %16, 1023
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct._loop_vec_info, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !875
  %27 = sdiv i32 %26, %24
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %30, label %29, !prof !945

29:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1831, ptr noundef nonnull @.str.10) #19
  br label %30

30:                                               ; preds = %4, %20, %29
  %31 = phi i32 [ %27, %20 ], [ %27, %29 ], [ 1, %4 ]
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !527
  %34 = icmp ne i32 %33, 0
  %35 = icmp ne ptr %18, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %123, !prof !946

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !531
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %123, !prof !894

41:                                               ; preds = %37
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %123, label %44, !prof !947

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %123, !prof !948

49:                                               ; preds = %44
  %50 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55, !prof !603

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %54 = icmp eq i32 %53, 112
  br i1 %54, label %55, label %123

55:                                               ; preds = %52, %49
  %56 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %57 = call zeroext i8 @vect_is_simple_use(ptr noundef %56, ptr noundef %14, ptr noundef %18, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !511
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65, !prof !577

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %123, label %62, !prof !577

62:                                               ; preds = %59
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %64 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %63)
  br label %123

65:                                               ; preds = %55
  %66 = icmp eq ptr %2, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  store i32 5, ptr %10, align 8, !tbaa !555
  %68 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %72 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 31, i64 1, ptr %71)
  br label %73

73:                                               ; preds = %70, %67
  call void @vect_model_simple_cost(ptr noundef nonnull %10, i32 noundef %31, ptr noundef nonnull %7, ptr noundef null) #20
  br label %123

74:                                               ; preds = %65
  %75 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %79 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 21, i64 1, ptr %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = tail call ptr @vect_create_destination_var(ptr noundef nonnull %45, ptr noundef nonnull %12) #19
  %82 = icmp sgt i32 %31, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  %85 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 6
  br label %86

86:                                               ; preds = %83, %118
  %87 = phi ptr [ null, %83 ], [ %119, %118 ]
  %88 = phi ptr [ null, %83 ], [ %110, %118 ]
  %89 = phi i32 [ 0, %83 ], [ %120, %118 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  call fastcc void @vect_get_vec_defs(ptr noundef %56, ptr noundef null, ptr noundef %0, ptr noundef nonnull %8, ptr noundef null, ptr noundef %3) #20
  br label %93

92:                                               ; preds = %86
  call fastcc void @vect_get_vec_defs_for_stmt_copy(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #20
  br label %93

93:                                               ; preds = %92, %91
  %94 = load ptr, ptr %8, align 8
  %95 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %94, i32 noundef 0, ptr noundef nonnull %9) #20, !range !904
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93, %104
  %98 = phi i32 [ %105, %104 ], [ 0, %93 ]
  %99 = load ptr, ptr %9, align 8, !tbaa !508
  %100 = call ptr @gimple_build_assign_stat(ptr noundef %81, ptr noundef %99) #19
  %101 = call fastcc ptr @make_ssa_name(ptr noundef %81, ptr noundef %100) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %100, ptr noundef %101) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %100, ptr noundef %1) #20
  br i1 %19, label %104, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %84, align 8, !tbaa !913
  call fastcc void @VEC_gimple_base_quick_push(ptr noundef %103, ptr noundef %100) #20
  br label %104

104:                                              ; preds = %97, %102
  %105 = add nuw nsw i32 %98, 1
  %106 = load ptr, ptr %8, align 8
  %107 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %106, i32 noundef %105, ptr noundef nonnull %9) #20, !range !904
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %97, !llvm.loop !949

109:                                              ; preds = %104, %93
  %110 = phi ptr [ %88, %93 ], [ %100, %104 ]
  br i1 %19, label %111, label %118

111:                                              ; preds = %109
  br i1 %90, label %112, label %113

112:                                              ; preds = %111
  store ptr %110, ptr %2, align 8, !tbaa !508
  br label %115

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct._stmt_vec_info, ptr %87, i64 0, i32 14
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi ptr [ %114, %113 ], [ %85, %112 ]
  store ptr %110, ptr %116, align 8, !tbaa !508
  %117 = call fastcc ptr @vinfo_for_stmt(ptr noundef %110) #20
  br label %118

118:                                              ; preds = %109, %115
  %119 = phi ptr [ %87, %109 ], [ %117, %115 ]
  %120 = add nuw nsw i32 %89, 1
  %121 = icmp eq i32 %120, %31
  br i1 %121, label %122, label %86, !llvm.loop !950

122:                                              ; preds = %118, %80
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %8) #20
  br label %123

123:                                              ; preds = %59, %62, %52, %44, %41, %37, %30, %122, %73
  %124 = phi i8 [ 1, %122 ], [ 1, %73 ], [ 0, %30 ], [ 0, %37 ], [ 0, %41 ], [ 0, %44 ], [ 0, %52 ], [ 0, %62 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i8 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_load(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #0 !prof !951 !PGOFuncName !952 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !808
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !626
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !720
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = trunc i64 %26 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr null, ptr %8, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr null, ptr %9, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  %28 = icmp ne ptr %3, null
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !811
  %31 = icmp eq ptr %14, null
  br i1 %31, label %37, label %32, !prof !953

32:                                               ; preds = %5
  %33 = load ptr, ptr %14, align 8, !tbaa !495
  %34 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %33, ptr noundef %0) #20, !range !511
  %35 = getelementptr inbounds %struct._loop_vec_info, ptr %14, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !875
  br label %37

37:                                               ; preds = %5, %32
  %38 = phi i32 [ %36, %32 ], [ 1, %5 ]
  %39 = phi i8 [ %34, %32 ], [ 0, %5 ]
  %40 = phi ptr [ %33, %32 ], [ null, %5 ]
  br i1 %28, label %57, label %41, !prof !953

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._loop_vec_info, ptr %14, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !875
  %44 = sdiv i32 %43, %27
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %47, label %46, !prof !954

46:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3315, ptr noundef nonnull @.str.10) #19
  br label %57

47:                                               ; preds = %41
  %48 = icmp ne i8 %39, 0
  %49 = icmp ne i32 %44, 1
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %57, !prof !955

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %451, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %56 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %55)
  br label %451

57:                                               ; preds = %37, %46, %47
  %58 = phi i32 [ %44, %47 ], [ %44, %46 ], [ 1, %37 ]
  %59 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !527
  %61 = icmp ne i32 %60, 0
  %62 = icmp ne ptr %30, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %451, !prof !956

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 16
  %66 = load i32, ptr %65, align 8, !tbaa !531
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %451, !prof !957

68:                                               ; preds = %64
  %69 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %451, label %71, !prof !953

71:                                               ; preds = %68
  %72 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 141
  br i1 %75, label %76, label %451, !prof !958

76:                                               ; preds = %71
  %77 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !876
  %78 = freeze i32 %77
  %79 = and i32 %78, 65533
  %80 = icmp eq i32 %79, 45
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  switch i32 %78, label %451 [
    i32 44, label %82
    i32 43, label %82
    i32 41, label %82
  ]

82:                                               ; preds = %81, %81, %81, %76
  %83 = load ptr, ptr %18, align 8, !tbaa !720
  %84 = icmp eq ptr %83, null
  br i1 %84, label %451, label %85, !prof !762

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !959
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !515
  %90 = load i64, ptr %21, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 14
  br i1 %92, label %93, label %95, !prof !964

93:                                               ; preds = %85
  %94 = tail call i32 @vector_type_mode(ptr noundef nonnull %21) #19
  br label %99

95:                                               ; preds = %85
  %96 = load i32, ptr %22, align 4
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 255
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !932
  %104 = icmp eq i32 %103, 2956
  br i1 %104, label %105, label %111, !prof !762

105:                                              ; preds = %99
  %106 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %451, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %110 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 35, i64 1, ptr %109)
  br label %451

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !515
  %114 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !515
  %116 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %113, ptr noundef %115) #19
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %124, !prof !762

118:                                              ; preds = %111
  %119 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %451, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %123 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 32, i64 1, ptr %122)
  br label %451

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 17
  %126 = load ptr, ptr %125, align 8, !tbaa !781
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128, !prof !964

128:                                              ; preds = %124
  %129 = icmp eq i8 %39, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3376, ptr noundef nonnull @.str.10) #19
  br label %131

131:                                              ; preds = %128, %130
  %132 = tail call zeroext i8 @vect_strided_load_supported(ptr noundef nonnull %21) #19
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 25
  %136 = load i32, ptr %135, align 4, !tbaa !770
  %137 = icmp eq i32 %136, 1
  %138 = or i1 %28, %137
  br i1 %138, label %139, label %451

139:                                              ; preds = %131, %134, %124
  %140 = icmp eq ptr %2, null
  br i1 %140, label %141, label %142, !prof !965

141:                                              ; preds = %139
  store i32 1, ptr %12, align 8, !tbaa !555
  tail call void @vect_model_load_cost(ptr noundef nonnull %12, i32 noundef %58, ptr noundef null) #20
  br label %451

142:                                              ; preds = %139
  %143 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145, !prof !577

145:                                              ; preds = %142
  %146 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %147 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 15, i64 1, ptr %146)
  br label %148

148:                                              ; preds = %145, %142
  br i1 %127, label %177, label %149, !prof !577

149:                                              ; preds = %148
  %150 = load ptr, ptr %125, align 8, !tbaa !781
  %151 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %150) #20
  %152 = getelementptr inbounds %struct._stmt_vec_info, ptr %151, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !835
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !835
  store ptr %157, ptr %2, align 8, !tbaa !508
  br label %451

158:                                              ; preds = %149
  %159 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %150) #20
  %160 = getelementptr inbounds %struct._stmt_vec_info, ptr %159, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !720
  %162 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %150) #20
  %163 = getelementptr inbounds %struct._stmt_vec_info, ptr %162, i64 0, i32 19
  %164 = load i32, ptr %163, align 8, !tbaa !789
  br i1 %28, label %165, label %172

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %167 = load i32, ptr %166, align 8, !tbaa !936
  %168 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 4
  %169 = load ptr, ptr %168, align 8, !tbaa !966
  %170 = icmp ne ptr %169, null
  %171 = zext i1 %170 to i8
  br label %172

172:                                              ; preds = %165, %158
  %173 = phi i8 [ 0, %165 ], [ 1, %158 ]
  %174 = phi i32 [ %167, %165 ], [ %164, %158 ]
  %175 = phi i8 [ %171, %165 ], [ 0, %158 ]
  %176 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %174) #20
  store ptr %176, ptr %9, align 8, !tbaa !508
  br label %177

177:                                              ; preds = %148, %172
  %178 = phi ptr [ %176, %172 ], [ null, %148 ]
  %179 = phi i32 [ %164, %172 ], [ 1, %148 ]
  %180 = phi i8 [ %173, %172 ], [ 0, %148 ]
  %181 = phi ptr [ %150, %172 ], [ %0, %148 ]
  %182 = phi i32 [ %174, %172 ], [ 1, %148 ]
  %183 = phi i8 [ %175, %172 ], [ 0, %148 ]
  %184 = phi ptr [ %161, %172 ], [ %19, %148 ]
  %185 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %184) #19
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188, !prof !603

187:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3429, ptr noundef nonnull @.str.10) #19
  br label %188

188:                                              ; preds = %177, %187
  %189 = icmp eq ptr %40, null
  br i1 %189, label %221, label %190, !prof !603

190:                                              ; preds = %188
  %191 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %40, ptr noundef %0) #20, !range !511
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %221, label %193, !prof !577

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 4, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !968
  %196 = getelementptr inbounds %struct.tree_int_cst, ptr %195, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !515
  %198 = load i64, ptr %21, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 14
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = tail call i32 @vector_type_mode(ptr noundef nonnull %21) #19
  br label %207

203:                                              ; preds = %193
  %204 = load i32, ptr %22, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %203, %201
  %208 = phi i32 [ %202, %201 ], [ %206, %203 ]
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !515
  %212 = zext i8 %211 to i64
  %213 = urem i64 %197, %212
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %207
  %216 = icmp eq i32 %185, 3
  br i1 %216, label %217, label %218

217:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3538, ptr noundef nonnull @.str.10) #19
  br label %218

218:                                              ; preds = %215, %217
  %219 = and i32 %185, -2
  %220 = icmp ne i32 %219, 2
  br label %236

221:                                              ; preds = %207, %190, %188
  %222 = icmp eq i32 %185, 3
  %223 = and i32 %185, -2
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %236, !prof !969

225:                                              ; preds = %221
  %226 = call ptr @vect_setup_realignment(ptr noundef %181, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %185, ptr noundef null, ptr noundef nonnull %11) #19
  br i1 %222, label %227, label %240

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.tree_ssa_name, ptr %226, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !515
  %230 = load i32, ptr %22, align 4
  %231 = and i32 %230, 1023
  %232 = zext nneg i32 %231 to i64
  %233 = shl nsw i64 -1, %232
  %234 = xor i64 %233, -1
  %235 = call ptr @size_int_kind(i64 noundef %234, i32 noundef 0) #19
  br label %240

236:                                              ; preds = %218, %221
  %237 = phi i1 [ %220, %218 ], [ true, %221 ]
  %238 = phi i1 [ %216, %218 ], [ %222, %221 ]
  %239 = phi i1 [ true, %218 ], [ false, %221 ]
  store ptr %40, ptr %11, align 8, !tbaa !508
  br label %240

240:                                              ; preds = %225, %227, %236
  %241 = phi i1 [ %237, %236 ], [ false, %227 ], [ false, %225 ]
  %242 = phi i1 [ %238, %236 ], [ true, %227 ], [ false, %225 ]
  %243 = phi i1 [ %239, %236 ], [ false, %227 ], [ false, %225 ]
  %244 = phi ptr [ null, %236 ], [ %226, %227 ], [ %226, %225 ]
  %245 = phi ptr [ null, %236 ], [ %235, %227 ], [ null, %225 ]
  %246 = phi ptr [ null, %236 ], [ %229, %227 ], [ null, %225 ]
  %247 = icmp sgt i32 %58, 0
  br i1 %247, label %248, label %447, !prof !970

248:                                              ; preds = %240
  %249 = icmp sgt i32 %182, 0
  %250 = icmp eq i8 %180, 0
  %251 = icmp eq i8 %183, 0
  %252 = and i1 %28, %251
  br label %253

253:                                              ; preds = %248, %441
  %254 = phi ptr [ null, %248 ], [ %417, %441 ]
  %255 = phi ptr [ null, %248 ], [ %442, %441 ]
  %256 = phi ptr [ null, %248 ], [ %416, %441 ]
  %257 = phi ptr [ null, %248 ], [ %415, %441 ]
  %258 = phi i32 [ 0, %248 ], [ %443, %441 ]
  %259 = phi ptr [ %244, %248 ], [ %414, %441 ]
  %260 = icmp eq i32 %258, 0
  br i1 %260, label %261, label %264, !prof !577

261:                                              ; preds = %253
  %262 = load ptr, ptr %11, align 8, !tbaa !508
  %263 = call ptr @vect_create_data_ref_ptr(ptr noundef %181, ptr noundef %262, ptr noundef %245, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef nonnull %10) #19
  br label %267

264:                                              ; preds = %253
  %265 = load ptr, ptr %7, align 8, !tbaa !508
  %266 = call ptr @bump_vector_ptr(ptr noundef %257, ptr noundef %265, ptr noundef %1, ptr noundef %0, ptr noundef null) #19
  br label %267

267:                                              ; preds = %264, %261
  %268 = phi ptr [ %263, %261 ], [ %266, %264 ]
  br i1 %249, label %269, label %413, !prof !970

269:                                              ; preds = %267
  %270 = or i8 %183, %180
  %271 = icmp eq i8 %270, 0
  br label %272

272:                                              ; preds = %269, %410
  %273 = phi ptr [ %254, %269 ], [ %332, %410 ]
  %274 = phi ptr [ %268, %269 ], [ %282, %410 ]
  %275 = phi i32 [ 0, %269 ], [ %411, %410 ]
  %276 = phi ptr [ %259, %269 ], [ %366, %410 ]
  %277 = icmp eq i32 %275, 0
  br i1 %277, label %281, label %278, !prof !577

278:                                              ; preds = %272
  %279 = load ptr, ptr %7, align 8, !tbaa !508
  %280 = call ptr @bump_vector_ptr(ptr noundef %274, ptr noundef %279, ptr noundef %1, ptr noundef %0, ptr noundef null) #19
  br label %281

281:                                              ; preds = %278, %272
  %282 = phi ptr [ %280, %278 ], [ %274, %272 ]
  switch i32 %185, label %329 [
    i32 4, label %283
    i32 1, label %289
    i32 2, label %306
    i32 3, label %327
  ], !prof !791

283:                                              ; preds = %281
  %284 = call fastcc zeroext i8 @aligned_access_p(ptr noundef %184) #20, !range !511
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %287, !prof !603

286:                                              ; preds = %283
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3581, ptr noundef nonnull @.str.10) #19
  br label %287

287:                                              ; preds = %283, %286
  %288 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %282) #19
  br label %330

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.data_reference, ptr %184, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !971
  %292 = ptrtoint ptr %291 to i64
  %293 = and i64 %292, 4294967295
  %294 = icmp eq i64 %293, 4294967295
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !508
  br label %301

297:                                              ; preds = %289
  %298 = shl i64 %292, 32
  %299 = ashr exact i64 %298, 32
  %300 = call ptr @size_int_kind(i64 noundef %299, i32 noundef 0) #19
  br label %301

301:                                              ; preds = %297, %295
  %302 = phi ptr [ %296, %295 ], [ %300, %297 ]
  %303 = call ptr @size_int_kind(i64 noundef 8, i32 noundef 0) #19
  %304 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %302, ptr noundef %303) #19
  %305 = call ptr @build2_stat(i32 noundef 49, ptr noundef nonnull %21, ptr noundef %282, ptr noundef %304) #19
  br label %330

306:                                              ; preds = %281
  %307 = load i32, ptr %22, align 4
  %308 = and i32 %307, 1023
  %309 = zext nneg i32 %308 to i64
  %310 = shl nsw i64 -1, %309
  %311 = xor i64 %310, -1
  %312 = call ptr @size_int_kind(i64 noundef %311, i32 noundef 0) #19
  br i1 %243, label %313, label %315

313:                                              ; preds = %306
  %314 = call ptr @vect_setup_realignment(ptr noundef %181, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 2, ptr noundef %282, ptr noundef null) #19
  br label %315

315:                                              ; preds = %313, %306
  %316 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 3
  %317 = call ptr @build1_stat(i32 noundef 48, ptr noundef nonnull %21, ptr noundef %282) #19
  %318 = call ptr @vect_create_destination_var(ptr noundef nonnull %72, ptr noundef nonnull %21) #19
  %319 = call ptr @gimple_build_assign_stat(ptr noundef %318, ptr noundef %317) #19
  %320 = call fastcc ptr @make_ssa_name(ptr noundef %318, ptr noundef %319) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %319, ptr noundef %320) #20
  %321 = call fastcc ptr @gimple_vdef(ptr noundef %0) #20
  call fastcc void @gimple_set_vdef(ptr noundef %319, ptr noundef %321) #20
  %322 = call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  call fastcc void @gimple_set_vuse(ptr noundef %319, ptr noundef %322) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %319, ptr noundef %1) #20
  %323 = load ptr, ptr %316, align 8, !tbaa !515
  %324 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %312, ptr noundef %323) #19
  %325 = call ptr @bump_vector_ptr(ptr noundef %282, ptr noundef null, ptr noundef %1, ptr noundef %0, ptr noundef %324) #19
  %326 = call ptr @build1_stat(i32 noundef 48, ptr noundef nonnull %21, ptr noundef %325) #19
  br label %330

327:                                              ; preds = %281
  %328 = call ptr @build1_stat(i32 noundef 48, ptr noundef nonnull %21, ptr noundef %282) #19
  br label %330

329:                                              ; preds = %281
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3625, ptr noundef nonnull @.str.10) #19
  br label %330

330:                                              ; preds = %329, %327, %315, %301, %287
  %331 = phi ptr [ %276, %329 ], [ %276, %327 ], [ %320, %315 ], [ %276, %301 ], [ %276, %287 ]
  %332 = phi ptr [ %273, %329 ], [ %328, %327 ], [ %326, %315 ], [ %305, %301 ], [ %288, %287 ]
  %333 = call i32 @get_alias_set(ptr noundef %332) #19
  %334 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %335 = call i32 @get_alias_set(ptr noundef %334) #19
  %336 = call i32 @alias_sets_conflict_p(i32 noundef %333, i32 noundef %335) #19
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %339, !prof !603

338:                                              ; preds = %330
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3630, ptr noundef nonnull @.str.10) #19
  br label %339

339:                                              ; preds = %330, %338
  %340 = call ptr @vect_create_destination_var(ptr noundef nonnull %72, ptr noundef nonnull %21) #19
  %341 = call ptr @gimple_build_assign_stat(ptr noundef %340, ptr noundef %332) #19
  %342 = call fastcc ptr @make_ssa_name(ptr noundef %340, ptr noundef %341) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %341, ptr noundef %342) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %341, ptr noundef %1) #20
  call void @mark_symbols_for_renaming(ptr noundef %341) #19
  br i1 %241, label %365, label %343, !prof !972

343:                                              ; preds = %339
  %344 = call fastcc ptr @gimple_assign_lhs(ptr noundef %341) #20
  %345 = load ptr, ptr %8, align 8, !tbaa !508
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  store ptr %282, ptr %8, align 8, !tbaa !508
  br label %348

348:                                              ; preds = %347, %343
  %349 = call ptr @vect_create_destination_var(ptr noundef nonnull %72, ptr noundef nonnull %21) #19
  %350 = load ptr, ptr %8, align 8, !tbaa !508
  %351 = call ptr @build3_stat(i32 noundef 151, ptr noundef nonnull %21, ptr noundef %331, ptr noundef %344, ptr noundef %350) #19
  %352 = call ptr @gimple_build_assign_stat(ptr noundef %349, ptr noundef %351) #19
  %353 = call fastcc ptr @make_ssa_name(ptr noundef %349, ptr noundef %352) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %352, ptr noundef %353) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %352, ptr noundef %1) #20
  br i1 %242, label %354, label %365

354:                                              ; preds = %348
  %355 = icmp eq ptr %246, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %354
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3658, ptr noundef nonnull @.str.10) #19
  br label %357

357:                                              ; preds = %354, %356
  %358 = add nsw i32 %182, -1
  %359 = add nsw i32 %58, -1
  %360 = icmp eq i32 %258, %359
  %361 = icmp eq i32 %275, %358
  %362 = select i1 %361, i1 %360, i1 false
  br i1 %362, label %363, label %365

363:                                              ; preds = %357
  %364 = call ptr @loop_latch_edge(ptr noundef %17) #19
  call void @add_phi_arg(ptr noundef %246, ptr noundef %344, ptr noundef %364, i32 noundef 0) #19
  br label %365

365:                                              ; preds = %348, %363, %357, %339
  %366 = phi ptr [ %331, %339 ], [ %331, %348 ], [ %344, %363 ], [ %344, %357 ]
  %367 = phi ptr [ %341, %339 ], [ %352, %348 ], [ %352, %363 ], [ %352, %357 ]
  %368 = phi ptr [ %342, %339 ], [ %353, %348 ], [ %353, %363 ], [ %353, %357 ]
  %369 = load i8, ptr %10, align 1, !tbaa !515
  %370 = icmp eq i8 %369, 0
  %371 = select i1 %370, i1 true, i1 %62
  br i1 %371, label %401, label %372, !prof !790

372:                                              ; preds = %365
  br i1 %250, label %374, label %373

373:                                              ; preds = %372
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3669, ptr noundef nonnull @.str.10) #19
  br label %374

374:                                              ; preds = %372, %373
  %375 = call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %40, ptr noundef %0) #20, !range !511
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3670, ptr noundef nonnull @.str.10) #19
  br label %378

378:                                              ; preds = %374, %377
  br i1 %260, label %379, label %400

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 2
  %381 = icmp sgt i32 %27, 0
  %382 = load ptr, ptr %380, align 8, !tbaa !515
  %383 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !508
  %384 = call ptr @build3_stat(i32 noundef 42, ptr noundef %89, ptr noundef %368, ptr noundef %382, ptr noundef %383) #19
  %385 = call ptr @vect_create_destination_var(ptr noundef nonnull %72, ptr noundef null) #19
  %386 = call ptr @gimple_build_assign_stat(ptr noundef %385, ptr noundef %384) #19
  %387 = call fastcc ptr @make_ssa_name(ptr noundef %385, ptr noundef %386) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %386, ptr noundef %387) #20
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %386, ptr noundef %1) #20
  br i1 %381, label %388, label %394

388:                                              ; preds = %379, %388
  %389 = phi ptr [ %392, %388 ], [ null, %379 ]
  %390 = phi i32 [ %391, %388 ], [ %27, %379 ]
  %391 = add nsw i32 %390, -1
  %392 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %387, ptr noundef %389) #19
  %393 = icmp ugt i32 %390, 1
  br i1 %393, label %388, label %394, !llvm.loop !973

394:                                              ; preds = %388, %379
  %395 = phi ptr [ null, %379 ], [ %392, %388 ]
  %396 = call ptr @build_constructor_from_list(ptr noundef nonnull %21, ptr noundef %395) #19
  %397 = call ptr @vect_init_vector(ptr noundef %0, ptr noundef %396, ptr noundef nonnull %21, ptr noundef %1) #20
  %398 = getelementptr inbounds %struct.tree_ssa_name, ptr %397, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !515
  br label %401

400:                                              ; preds = %378
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3696, ptr noundef nonnull @.str.10) #19
  br label %401

401:                                              ; preds = %394, %400, %365
  %402 = phi ptr [ %367, %365 ], [ %399, %394 ], [ %367, %400 ]
  %403 = phi ptr [ %368, %365 ], [ %397, %394 ], [ %368, %400 ]
  br i1 %271, label %406, label %404, !prof !972

404:                                              ; preds = %401
  %405 = load ptr, ptr %9, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %405, ptr noundef %403) #20
  br label %406

406:                                              ; preds = %401, %404
  br i1 %252, label %407, label %410, !prof !974

407:                                              ; preds = %406
  %408 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !913
  call fastcc void @VEC_gimple_base_quick_push(ptr noundef %409, ptr noundef %402) #20
  br label %410

410:                                              ; preds = %406, %407
  %411 = add nuw nsw i32 %275, 1
  %412 = icmp eq i32 %411, %182
  br i1 %412, label %413, label %272, !prof !970, !llvm.loop !975

413:                                              ; preds = %410, %267
  %414 = phi ptr [ %259, %267 ], [ %366, %410 ]
  %415 = phi ptr [ %268, %267 ], [ %282, %410 ]
  %416 = phi ptr [ %256, %267 ], [ %402, %410 ]
  %417 = phi ptr [ %254, %267 ], [ %332, %410 ]
  br i1 %252, label %441, label %418, !prof !974

418:                                              ; preds = %413
  br i1 %251, label %424, label %419, !prof !577

419:                                              ; preds = %418
  %420 = load ptr, ptr %9, align 8, !tbaa !508
  %421 = call zeroext i8 @vect_transform_slp_perm_load(ptr noundef %0, ptr noundef %420, ptr noundef %1, i32 noundef %38, ptr noundef %4, i8 noundef zeroext 0) #19
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %423, label %441

423:                                              ; preds = %419
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #20
  br label %451

424:                                              ; preds = %418
  br i1 %250, label %433, label %425, !prof !577

425:                                              ; preds = %424
  %426 = load ptr, ptr %9, align 8, !tbaa !508
  %427 = call zeroext i8 @vect_transform_strided_load(ptr noundef %0, ptr noundef %426, i32 noundef %179, ptr noundef %1) #19
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %451, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 6
  %431 = load ptr, ptr %430, align 8, !tbaa !835
  store ptr %431, ptr %2, align 8, !tbaa !508
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #20
  %432 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %179) #20
  store ptr %432, ptr %9, align 8, !tbaa !508
  br label %441

433:                                              ; preds = %424
  br i1 %260, label %434, label %436, !prof !577

434:                                              ; preds = %433
  %435 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 6
  store ptr %416, ptr %2, align 8, !tbaa !508
  br label %438

436:                                              ; preds = %433
  %437 = getelementptr inbounds %struct._stmt_vec_info, ptr %255, i64 0, i32 14
  br label %438

438:                                              ; preds = %436, %434
  %439 = phi ptr [ %437, %436 ], [ %435, %434 ]
  store ptr %416, ptr %439, align 8, !tbaa !508
  %440 = call fastcc ptr @vinfo_for_stmt(ptr noundef %416) #20
  br label %441

441:                                              ; preds = %419, %438, %429, %413
  %442 = phi ptr [ %255, %419 ], [ %255, %429 ], [ %440, %438 ], [ %255, %413 ]
  %443 = add nuw nsw i32 %258, 1
  %444 = icmp eq i32 %443, %58
  br i1 %444, label %445, label %253, !prof !970, !llvm.loop !976

445:                                              ; preds = %441
  %446 = load ptr, ptr %9, align 8, !tbaa !508
  br label %447

447:                                              ; preds = %445, %240
  %448 = phi ptr [ %446, %445 ], [ %178, %240 ]
  %449 = icmp eq ptr %448, null
  br i1 %449, label %451, label %450, !prof !577

450:                                              ; preds = %447
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #20
  br label %451

451:                                              ; preds = %425, %81, %447, %450, %134, %118, %121, %105, %108, %82, %71, %68, %64, %57, %51, %54, %423, %155, %141
  %452 = phi i8 [ 1, %155 ], [ 0, %423 ], [ 1, %141 ], [ 0, %54 ], [ 0, %51 ], [ 0, %57 ], [ 0, %64 ], [ 0, %68 ], [ 0, %71 ], [ 0, %81 ], [ 0, %82 ], [ 0, %108 ], [ 0, %105 ], [ 0, %121 ], [ 0, %118 ], [ 0, %134 ], [ 1, %450 ], [ 1, %447 ], [ 0, %425 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i8 %452
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_call(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !778 !PGOFuncName !977 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca ptr, align 8
  %8 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %9 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store i64 34359738376, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !508
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !779

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1242, ptr noundef nonnull @.str.10) #19
  br label %13

13:                                               ; preds = %3, %12
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !527
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %246, label %17, !prof !779

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !531
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %246, !prof !785

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 25
  %23 = load i32, ptr %22, align 4, !tbaa !770
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %246, !prof !785

25:                                               ; preds = %21
  %26 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !511
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %246, label %28, !prof !785

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %246

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %35 = zext i32 %34 to i64
  %36 = add i32 %34, -3
  %37 = icmp ult i32 %36, -2
  br i1 %37, label %246, label %41

38:                                               ; preds = %58
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %35
  br i1 %40, label %70, label %41, !llvm.loop !978

41:                                               ; preds = %33, %38
  %42 = phi i64 [ %39, %38 ], [ 0, %33 ]
  %43 = phi ptr [ %60, %38 ], [ null, %33 ]
  %44 = trunc i64 %42 to i32
  %45 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %44) #20
  %46 = icmp eq ptr %43, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !515
  %50 = tail call zeroext i8 @types_compatible_p(ptr noundef nonnull %43, ptr noundef %49) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %246, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %57 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 22, i64 1, ptr %56)
  br label %246

58:                                               ; preds = %47, %41
  %59 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !515
  %61 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %42
  %62 = call zeroext i8 @vect_is_simple_use(ptr noundef %45, ptr noundef %10, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %61) #20, !range !511
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %38

64:                                               ; preds = %58
  %65 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %246, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %69 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %68)
  br label %246

70:                                               ; preds = %38
  %71 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %60) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %246, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_type, ptr %71, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1023
  %77 = zext nneg i32 %76 to i64
  %78 = shl nuw i64 1, %77
  %79 = trunc i64 %78 to i32
  %80 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %81 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !515
  %83 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %82) #20
  %84 = icmp eq ptr %83, null
  br i1 %84, label %246, label %85

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = trunc i64 %90 to i32
  %92 = sdiv i32 %91, 2
  %93 = icmp eq i32 %92, %79
  br i1 %93, label %99, label %94

94:                                               ; preds = %85
  %95 = icmp eq i32 %91, %79
  br i1 %95, label %99, label %96

96:                                               ; preds = %94
  %97 = sdiv i32 %79, 2
  %98 = icmp eq i32 %97, %91
  br i1 %98, label %99, label %246

99:                                               ; preds = %96, %94, %85
  %100 = phi i32 [ 0, %85 ], [ 1, %94 ], [ 2, %96 ]
  %101 = tail call ptr @vectorizable_function(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %71) #20
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %246, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %108 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 29, i64 1, ptr %107)
  br label %246

109:                                              ; preds = %99
  %110 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1327, ptr noundef nonnull @.str.10) #19
  br label %113

113:                                              ; preds = %109, %112
  %114 = getelementptr inbounds %struct._loop_vec_info, ptr %10, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !875
  %116 = select i1 %93, i32 %91, i32 %79
  %117 = sdiv i32 %115, %116
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1336, ptr noundef nonnull @.str.10) #19
  br label %120

120:                                              ; preds = %113, %119
  %121 = icmp eq ptr %2, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  store i32 4, ptr %8, align 8, !tbaa !555
  %123 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %127 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 25, i64 1, ptr %126)
  br label %128

128:                                              ; preds = %125, %122
  call void @vect_model_simple_cost(ptr noundef nonnull %8, i32 noundef %117, ptr noundef nonnull %6, ptr noundef null) #20
  br label %246

129:                                              ; preds = %120
  %130 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %134 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 20, i64 1, ptr %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %137 = tail call ptr @vect_create_destination_var(ptr noundef %136, ptr noundef nonnull %83) #19
  switch i32 %100, label %226 [
    i32 1, label %142
    i32 0, label %138
    i32 2, label %246
  ]

138:                                              ; preds = %135
  br i1 %118, label %139, label %222

139:                                              ; preds = %138
  %140 = shl nuw nsw i32 %34, 1
  %141 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 6
  br label %182

142:                                              ; preds = %135
  br i1 %118, label %143, label %227

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 6
  br label %145

145:                                              ; preds = %143, %177
  %146 = phi i32 [ 0, %143 ], [ %180, %177 ]
  %147 = phi ptr [ null, %143 ], [ %172, %177 ]
  %148 = phi ptr [ null, %143 ], [ %179, %177 ]
  %149 = phi ptr [ null, %143 ], [ %155, %177 ]
  %150 = icmp eq i32 %146, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %34) #20
  br label %154

153:                                              ; preds = %145
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %149, i32 noundef 0) #20
  br label %154

154:                                              ; preds = %151, %153
  %155 = phi ptr [ %149, %153 ], [ %152, %151 ]
  br label %156

156:                                              ; preds = %154, %167
  %157 = phi i64 [ %169, %167 ], [ 0, %154 ]
  %158 = trunc i64 %157 to i32
  %159 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %158) #20
  br i1 %150, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %159, ptr noundef %0, ptr noundef null) #20
  br label %167

162:                                              ; preds = %156
  %163 = tail call fastcc ptr @gimple_call_arg(ptr noundef %147, i32 noundef %158) #20
  %164 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %157
  %165 = load i32, ptr %164, align 4, !tbaa !514
  %166 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %165, ptr noundef %163) #20
  br label %167

167:                                              ; preds = %162, %160
  %168 = phi ptr [ %161, %160 ], [ %166, %162 ]
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %155, ptr noundef %168) #20
  %169 = add nuw nsw i64 %157, 1
  %170 = icmp eq i64 %169, %35
  br i1 %170, label %171, label %156, !llvm.loop !979

171:                                              ; preds = %167
  %172 = tail call ptr @gimple_build_call_vec(ptr noundef nonnull %101, ptr noundef %155) #19
  %173 = tail call fastcc ptr @make_ssa_name(ptr noundef %137, ptr noundef %172) #20
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %172, ptr noundef %173) #20
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %172, ptr noundef %1) #20
  tail call void @mark_symbols_for_renaming(ptr noundef %172) #19
  br i1 %150, label %174, label %175

174:                                              ; preds = %171
  store ptr %172, ptr %2, align 8, !tbaa !508
  br label %177

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct._stmt_vec_info, ptr %148, i64 0, i32 14
  br label %177

177:                                              ; preds = %175, %174
  %178 = phi ptr [ %176, %175 ], [ %144, %174 ]
  store ptr %172, ptr %178, align 8, !tbaa !508
  %179 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %172) #20
  %180 = add nuw nsw i32 %146, 1
  %181 = icmp eq i32 %180, %117
  br i1 %181, label %227, label %145, !llvm.loop !980

182:                                              ; preds = %139, %214
  %183 = phi i32 [ 0, %139 ], [ %220, %214 ]
  %184 = phi ptr [ null, %139 ], [ %215, %214 ]
  %185 = phi ptr [ null, %139 ], [ %219, %214 ]
  %186 = phi ptr [ null, %139 ], [ %192, %214 ]
  %187 = icmp eq i32 %183, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %140) #20
  br label %191

190:                                              ; preds = %182
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %186, i32 noundef 0) #20
  br label %191

191:                                              ; preds = %188, %190
  %192 = phi ptr [ %186, %190 ], [ %189, %188 ]
  br label %193

193:                                              ; preds = %191, %209
  %194 = phi i64 [ %212, %209 ], [ 0, %191 ]
  %195 = trunc i64 %194 to i32
  %196 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %195) #20
  br i1 %187, label %197, label %202

197:                                              ; preds = %193
  %198 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %196, ptr noundef %0, ptr noundef null) #20
  %199 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %194
  %200 = load i32, ptr %199, align 4, !tbaa !514
  %201 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %200, ptr noundef %198) #20
  br label %209

202:                                              ; preds = %193
  %203 = shl i32 %195, 1
  %204 = tail call fastcc ptr @gimple_call_arg(ptr noundef %184, i32 noundef %203) #20
  %205 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %194
  %206 = load i32, ptr %205, align 4, !tbaa !514
  %207 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %206, ptr noundef %204) #20
  %208 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %206, ptr noundef %207) #20
  br label %209

209:                                              ; preds = %202, %197
  %210 = phi ptr [ %201, %197 ], [ %208, %202 ]
  %211 = phi ptr [ %198, %197 ], [ %207, %202 ]
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %192, ptr noundef %211) #20
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %192, ptr noundef %210) #20
  %212 = add nuw nsw i64 %194, 1
  %213 = icmp eq i64 %212, %35
  br i1 %213, label %214, label %193, !llvm.loop !981

214:                                              ; preds = %209
  %215 = tail call ptr @gimple_build_call_vec(ptr noundef nonnull %101, ptr noundef %192) #19
  %216 = tail call fastcc ptr @make_ssa_name(ptr noundef %137, ptr noundef %215) #20
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %215, ptr noundef %216) #20
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %215, ptr noundef %1) #20
  tail call void @mark_symbols_for_renaming(ptr noundef %215) #19
  %217 = getelementptr inbounds %struct._stmt_vec_info, ptr %185, i64 0, i32 14
  %218 = select i1 %187, ptr %141, ptr %217
  store ptr %215, ptr %218, align 8, !tbaa !508
  %219 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %215) #20
  %220 = add nuw nsw i32 %183, 1
  %221 = icmp eq i32 %220, %117
  br i1 %221, label %222, label %182, !llvm.loop !982

222:                                              ; preds = %214, %138
  %223 = phi ptr [ null, %138 ], [ %192, %214 ]
  store ptr %223, ptr %7, align 8
  %224 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 6
  %225 = load ptr, ptr %224, align 8, !tbaa !835
  store ptr %225, ptr %2, align 8, !tbaa !508
  br label %229

226:                                              ; preds = %135
  unreachable

227:                                              ; preds = %177, %142
  %228 = phi ptr [ null, %142 ], [ %155, %177 ]
  store ptr %228, ptr %7, align 8
  br label %229

229:                                              ; preds = %227, %222
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %7) #20
  %230 = load ptr, ptr %2, align 8, !tbaa !508
  %231 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %0, ptr noundef %230) #19
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %235 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %234) #19
  br label %236

236:                                              ; preds = %233, %229
  %237 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !515
  %239 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %240 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !508
  %241 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %238, ptr noundef %240) #19
  %242 = tail call ptr @gimple_build_assign_stat(ptr noundef %239, ptr noundef %241) #19
  tail call fastcc void @set_vinfo_for_stmt(ptr noundef %242, ptr noundef %8) #20
  tail call fastcc void @set_vinfo_for_stmt(ptr noundef %0, ptr noundef null) #20
  %243 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 1
  store ptr %242, ptr %243, align 8, !tbaa !788
  tail call void @gsi_replace(ptr noundef %1, ptr noundef %242, i8 noundef zeroext 0) #19
  %244 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %242) #20
  %245 = getelementptr inbounds %struct.tree_ssa_name, ptr %244, i64 0, i32 2
  store ptr %242, ptr %245, align 8, !tbaa !515
  br label %246

246:                                              ; preds = %135, %103, %106, %96, %73, %70, %64, %67, %52, %55, %33, %28, %25, %21, %17, %13, %236, %128
  %247 = phi i8 [ 1, %236 ], [ 1, %128 ], [ 0, %13 ], [ 0, %17 ], [ 0, %21 ], [ 0, %25 ], [ 0, %28 ], [ 0, %33 ], [ 0, %55 ], [ 0, %52 ], [ 0, %67 ], [ 0, %64 ], [ 0, %70 ], [ 0, %73 ], [ 0, %96 ], [ 0, %106 ], [ 0, %103 ], [ 0, %135 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %247
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vectorizable_store(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !prof !983 !PGOFuncName !984 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !720
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !828
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %22 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = trunc i64 %26 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr null, ptr %9, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr null, ptr %10, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr null, ptr %11, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store ptr null, ptr %13, align 8, !tbaa !508
  %28 = icmp ne ptr %3, null
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !811
  %31 = icmp eq ptr %21, null
  br i1 %31, label %34, label %32, !prof !723

32:                                               ; preds = %4
  %33 = load ptr, ptr %21, align 8, !tbaa !495
  br label %34

34:                                               ; preds = %32, %4
  %35 = phi ptr [ %33, %32 ], [ null, %4 ]
  br i1 %28, label %42, label %36, !prof !723

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct._loop_vec_info, ptr %21, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !875
  %39 = sdiv i32 %38, %27
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %42, label %41, !prof !985

41:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2923, ptr noundef nonnull @.str.10) #19
  br label %42

42:                                               ; preds = %34, %36, %41
  %43 = phi i32 [ %39, %36 ], [ %39, %41 ], [ 1, %34 ]
  %44 = icmp eq ptr %35, null
  br i1 %44, label %56, label %45, !prof !723

45:                                               ; preds = %42
  %46 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %35, ptr noundef %0) #20, !range !511
  %47 = icmp ne i8 %46, 0
  %48 = icmp sgt i32 %43, 1
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %56, !prof !986

50:                                               ; preds = %45
  %51 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %366, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %55 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %54)
  br label %366

56:                                               ; preds = %45, %42
  %57 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !527
  %59 = icmp ne i32 %58, 0
  %60 = icmp ne ptr %30, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %366, !prof !987

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 16
  %64 = load i32, ptr %63, align 8, !tbaa !531
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %366, !prof !988

66:                                               ; preds = %62
  %67 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !511
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %366, label %69, !prof !723

69:                                               ; preds = %66
  %70 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %366 [
    i16 45, label %73
    i16 47, label %73
    i16 41, label %73
    i16 44, label %73
    i16 43, label %73
  ], !prof !989

73:                                               ; preds = %69, %69, %69, %69, %69
  %74 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77, !prof !723

76:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2952, ptr noundef nonnull @.str.10) #19
  br label %77

77:                                               ; preds = %73, %76
  %78 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %79 = call zeroext i8 @vect_is_simple_use(ptr noundef %78, ptr noundef %21, ptr noundef %30, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !511
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %87, !prof !723

81:                                               ; preds = %77
  %82 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %366, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %86 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %85)
  br label %366

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !515
  %90 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !515
  %92 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %89, ptr noundef %91) #19
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %100, !prof !723

94:                                               ; preds = %87
  %95 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %366, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %99 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 32, i64 1, ptr %98)
  br label %366

100:                                              ; preds = %87
  %101 = load i64, ptr %19, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 14
  br i1 %103, label %104, label %106, !prof !988

104:                                              ; preds = %100
  %105 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #19
  br label %110

106:                                              ; preds = %100
  %107 = load i32, ptr %22, align 4
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i32 [ %105, %104 ], [ %109, %106 ]
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !932
  %115 = icmp eq i32 %114, 2956
  br i1 %115, label %366, label %116, !prof !723

116:                                              ; preds = %110
  %117 = load ptr, ptr %16, align 8, !tbaa !720
  %118 = icmp eq ptr %117, null
  br i1 %118, label %366, label %119, !prof !723

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 17
  %121 = load ptr, ptr %120, align 8, !tbaa !781
  %122 = icmp eq ptr %121, null
  br i1 %122, label %159, label %123, !prof !988

123:                                              ; preds = %119
  %124 = tail call zeroext i8 @vect_strided_store_supported(ptr noundef nonnull %19) #19
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 25
  %128 = load i32, ptr %127, align 4, !tbaa !770
  %129 = icmp eq i32 %128, 1
  %130 = or i1 %28, %129
  br i1 %130, label %131, label %366

131:                                              ; preds = %126, %123
  %132 = icmp eq ptr %121, %0
  br i1 %132, label %133, label %161

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 18
  %135 = load ptr, ptr %134, align 8, !tbaa !990
  %136 = icmp eq ptr %135, null
  br i1 %136, label %157, label %137

137:                                              ; preds = %133, %152
  %138 = phi ptr [ %155, %152 ], [ %135, %133 ]
  %139 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %138) #19
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2994, ptr noundef nonnull @.str.10) #19
  br label %142

142:                                              ; preds = %137, %141
  %143 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %138) #20
  %144 = call zeroext i8 @vect_is_simple_use(ptr noundef %143, ptr noundef %21, ptr noundef %30, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !511
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %366, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %151 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 15, i64 1, ptr %150)
  br label %366

152:                                              ; preds = %142
  %153 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %138) #20
  %154 = getelementptr inbounds %struct._stmt_vec_info, ptr %153, i64 0, i32 18
  %155 = load ptr, ptr %154, align 8, !tbaa !990
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %137, !llvm.loop !991

157:                                              ; preds = %152, %133
  %158 = icmp eq ptr %2, null
  br i1 %158, label %163, label %165, !prof !992

159:                                              ; preds = %119
  %160 = icmp eq ptr %2, null
  br i1 %160, label %163, label %194, !prof !992

161:                                              ; preds = %131
  %162 = icmp eq ptr %2, null
  br i1 %162, label %163, label %165, !prof !992

163:                                              ; preds = %159, %161, %157
  store i32 2, ptr %15, align 8, !tbaa !555
  %164 = load i32, ptr %8, align 4, !tbaa !514
  tail call void @vect_model_store_cost(ptr noundef nonnull %15, i32 noundef %43, i32 noundef %164, ptr noundef null) #20
  br label %366

165:                                              ; preds = %157, %161
  %166 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %121) #20
  %167 = getelementptr inbounds %struct._stmt_vec_info, ptr %166, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !720
  %169 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %121) #20
  %170 = getelementptr inbounds %struct._stmt_vec_info, ptr %169, i64 0, i32 19
  %171 = load i32, ptr %170, align 8, !tbaa !789
  %172 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %121) #20
  %173 = getelementptr inbounds %struct._stmt_vec_info, ptr %172, i64 0, i32 20
  %174 = load i32, ptr %173, align 4, !tbaa !993
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 4, !tbaa !993
  br i1 %44, label %180, label %176

176:                                              ; preds = %165
  %177 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %35, ptr noundef %0) #20, !range !511
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3025, ptr noundef nonnull @.str.10) #19
  br label %180

180:                                              ; preds = %165, %176, %179
  %181 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %121) #20
  %182 = getelementptr inbounds %struct._stmt_vec_info, ptr %181, i64 0, i32 20
  %183 = load i32, ptr %182, align 4, !tbaa !993
  %184 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %121) #20
  %185 = getelementptr inbounds %struct._stmt_vec_info, ptr %184, i64 0, i32 19
  %186 = load i32, ptr %185, align 8, !tbaa !789
  %187 = icmp uge i32 %183, %186
  %188 = or i1 %28, %187
  br i1 %188, label %190, label %189

189:                                              ; preds = %180
  store ptr null, ptr %2, align 8, !tbaa !508
  br label %366

190:                                              ; preds = %180
  br i1 %28, label %191, label %194

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 4
  %193 = load i32, ptr %192, align 8, !tbaa !936
  br label %194

194:                                              ; preds = %159, %190, %191
  %195 = phi ptr [ %121, %191 ], [ %121, %190 ], [ %0, %159 ]
  %196 = phi i1 [ true, %191 ], [ false, %190 ], [ true, %159 ]
  %197 = phi i32 [ %171, %191 ], [ %171, %190 ], [ 1, %159 ]
  %198 = phi ptr [ %168, %191 ], [ %168, %190 ], [ %17, %159 ]
  %199 = phi i32 [ %193, %191 ], [ %171, %190 ], [ 1, %159 ]
  %200 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %205, label %202, !prof !994

202:                                              ; preds = %194
  %203 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.77, i32 noundef %43) #20
  br label %205

205:                                              ; preds = %202, %194
  %206 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %197) #20
  store ptr %206, ptr %9, align 8, !tbaa !508
  %207 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %197) #20
  store ptr %207, ptr %10, align 8, !tbaa !508
  %208 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %198) #19
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211, !prof !995

210:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3060, ptr noundef nonnull @.str.10) #19
  br label %211

211:                                              ; preds = %205, %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  %212 = icmp sgt i32 %43, 0
  br i1 %212, label %213, label %360, !prof !996

213:                                              ; preds = %211
  %214 = icmp eq i32 %197, 0
  %215 = icmp eq i32 %199, 0
  br label %216

216:                                              ; preds = %213, %354
  %217 = phi ptr [ null, %213 ], [ %357, %354 ]
  %218 = phi i32 [ 0, %213 ], [ %358, %354 ]
  %219 = phi ptr [ null, %213 ], [ %356, %354 ]
  %220 = phi ptr [ null, %213 ], [ %355, %354 ]
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %226, label %222, !prof !994

222:                                              ; preds = %216
  br i1 %214, label %271, label %223

223:                                              ; preds = %222
  %224 = load ptr, ptr %10, align 8
  %225 = load ptr, ptr %9, align 8
  br label %263

226:                                              ; preds = %216
  br i1 %28, label %228, label %227, !prof !995

227:                                              ; preds = %226
  br i1 %214, label %249, label %231, !prof !997

228:                                              ; preds = %226
  call void @vect_get_slp_defs(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef null) #19
  %229 = load ptr, ptr %13, align 8
  %230 = call fastcc ptr @VEC_tree_base_index(ptr noundef %229, i32 noundef 0) #20
  br label %249

231:                                              ; preds = %227, %239
  %232 = phi i32 [ %247, %239 ], [ 0, %227 ]
  %233 = phi ptr [ %246, %239 ], [ %195, %227 ]
  %234 = icmp eq ptr %233, null
  br i1 %234, label %238, label %235, !prof !995

235:                                              ; preds = %231
  %236 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %233) #19
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %239, !prof !995

238:                                              ; preds = %235, %231
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3139, ptr noundef nonnull @.str.10) #19
  br label %239

239:                                              ; preds = %235, %238
  %240 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %233) #20
  %241 = call ptr @vect_get_vec_def_for_operand(ptr noundef %240, ptr noundef %233, ptr noundef null) #20
  %242 = load ptr, ptr %9, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %242, ptr noundef %241) #20
  %243 = load ptr, ptr %10, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %243, ptr noundef %241) #20
  %244 = call fastcc ptr @vinfo_for_stmt(ptr noundef %233) #20
  %245 = getelementptr inbounds %struct._stmt_vec_info, ptr %244, i64 0, i32 18
  %246 = load ptr, ptr %245, align 8, !tbaa !990
  %247 = add nuw i32 %232, 1
  %248 = icmp eq i32 %247, %197
  br i1 %248, label %249, label %231, !prof !996, !llvm.loop !998

249:                                              ; preds = %239, %227, %228
  %250 = phi ptr [ %230, %228 ], [ %217, %227 ], [ %241, %239 ]
  %251 = getelementptr inbounds %struct.tree_common, ptr %250, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !515
  %253 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %19, ptr noundef %252) #19
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %256, !prof !995

255:                                              ; preds = %249
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3152, ptr noundef nonnull @.str.10) #19
  br label %256

256:                                              ; preds = %249, %255
  %257 = icmp eq ptr %30, null
  %258 = call ptr @vect_create_data_ref_ptr(ptr noundef %195, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %14, i8 noundef zeroext 0, ptr noundef nonnull %12) #19
  %259 = load i8, ptr %12, align 1
  %260 = icmp ne i8 %259, 0
  %261 = select i1 %257, i1 %260, i1 false
  br i1 %261, label %262, label %275, !prof !999

262:                                              ; preds = %256
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3156, ptr noundef nonnull @.str.10) #19
  br label %275

263:                                              ; preds = %223, %263
  %264 = phi i32 [ 0, %223 ], [ %269, %263 ]
  %265 = call fastcc ptr @VEC_tree_base_index(ptr noundef %224, i32 noundef %264) #20
  %266 = call zeroext i8 @vect_is_simple_use(ptr noundef %265, ptr noundef %21, ptr noundef %30, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !511
  %267 = load i32, ptr %8, align 4, !tbaa !514
  %268 = call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %267, ptr noundef %265) #20
  call fastcc void @VEC_tree_base_replace(ptr noundef %225, i32 noundef %264, ptr noundef %268) #20
  call fastcc void @VEC_tree_base_replace(ptr noundef %224, i32 noundef %264, ptr noundef %268) #20
  %269 = add nuw i32 %264, 1
  %270 = icmp eq i32 %269, %197
  br i1 %270, label %271, label %263, !llvm.loop !1000

271:                                              ; preds = %263, %222
  %272 = phi ptr [ %217, %222 ], [ %268, %263 ]
  %273 = load ptr, ptr %14, align 8, !tbaa !508
  %274 = call ptr @bump_vector_ptr(ptr noundef %219, ptr noundef %273, ptr noundef %1, ptr noundef %0, ptr noundef null) #19
  br label %275

275:                                              ; preds = %262, %256, %271
  %276 = phi ptr [ %258, %262 ], [ %258, %256 ], [ %274, %271 ]
  %277 = phi ptr [ %250, %262 ], [ %250, %256 ], [ %272, %271 ]
  br i1 %196, label %283, label %278, !prof !994

278:                                              ; preds = %275
  %279 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %197) #20
  store ptr %279, ptr %11, align 8, !tbaa !508
  %280 = load ptr, ptr %9, align 8, !tbaa !508
  %281 = call zeroext i8 @vect_permute_store_chain(ptr noundef %280, i32 noundef %197, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #19
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %364, label %283

283:                                              ; preds = %278, %275
  br i1 %215, label %354, label %284, !prof !1001

284:                                              ; preds = %283
  %285 = xor i1 %196, true
  %286 = or i1 %28, %285
  br label %287

287:                                              ; preds = %284, %349
  %288 = phi ptr [ %305, %349 ], [ %277, %284 ]
  %289 = phi i32 [ %352, %349 ], [ 0, %284 ]
  %290 = phi ptr [ %351, %349 ], [ %195, %284 ]
  %291 = phi ptr [ %298, %349 ], [ %276, %284 ]
  %292 = phi ptr [ %350, %349 ], [ %220, %284 ]
  %293 = icmp eq i32 %289, 0
  br i1 %293, label %297, label %294, !prof !994

294:                                              ; preds = %287
  %295 = load ptr, ptr %14, align 8, !tbaa !508
  %296 = call ptr @bump_vector_ptr(ptr noundef %291, ptr noundef %295, ptr noundef %1, ptr noundef %0, ptr noundef null) #19
  br label %297

297:                                              ; preds = %294, %287
  %298 = phi ptr [ %296, %294 ], [ %291, %287 ]
  br i1 %286, label %299, label %304, !prof !1002

299:                                              ; preds = %297
  %300 = load ptr, ptr %13, align 8
  %301 = load ptr, ptr %11, align 8
  %302 = select i1 %28, ptr %300, ptr %301
  %303 = call fastcc ptr @VEC_tree_base_index(ptr noundef %302, i32 noundef %289) #20
  br label %304

304:                                              ; preds = %297, %299
  %305 = phi ptr [ %303, %299 ], [ %288, %297 ]
  %306 = call fastcc zeroext i8 @aligned_access_p(ptr noundef %198) #20, !range !511
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %310, label %308, !prof !995

308:                                              ; preds = %304
  %309 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %298) #19
  br label %327

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.data_reference, ptr %198, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !971
  %313 = ptrtoint ptr %312 to i64
  %314 = and i64 %313, 4294967295
  %315 = icmp eq i64 %314, 4294967295
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !508
  br label %322

318:                                              ; preds = %310
  %319 = shl i64 %313, 32
  %320 = ashr exact i64 %319, 32
  %321 = call ptr @size_int_kind(i64 noundef %320, i32 noundef 0) #19
  br label %322

322:                                              ; preds = %318, %316
  %323 = phi ptr [ %317, %316 ], [ %321, %318 ]
  %324 = call ptr @size_int_kind(i64 noundef 8, i32 noundef 0) #19
  %325 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %323, ptr noundef %324) #19
  %326 = call ptr @build2_stat(i32 noundef 49, ptr noundef nonnull %19, ptr noundef %298, ptr noundef %325) #19
  br label %327

327:                                              ; preds = %322, %308
  %328 = phi ptr [ %309, %308 ], [ %326, %322 ]
  %329 = call i32 @get_alias_set(ptr noundef %328) #19
  %330 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %331 = call i32 @get_alias_set(ptr noundef %330) #19
  %332 = call i32 @alias_sets_conflict_p(i32 noundef %329, i32 noundef %331) #19
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %335, !prof !995

334:                                              ; preds = %327
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3217, ptr noundef nonnull @.str.10) #19
  br label %335

335:                                              ; preds = %327, %334
  %336 = call ptr @gimple_build_assign_stat(ptr noundef %328, ptr noundef %305) #19
  call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %336, ptr noundef %1) #20
  call void @mark_symbols_for_renaming(ptr noundef %336) #19
  br i1 %28, label %349, label %337, !prof !995

337:                                              ; preds = %335
  br i1 %221, label %338, label %340, !prof !994

338:                                              ; preds = %337
  %339 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 6
  store ptr %336, ptr %2, align 8, !tbaa !508
  br label %342

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct._stmt_vec_info, ptr %292, i64 0, i32 14
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi ptr [ %341, %340 ], [ %339, %338 ]
  store ptr %336, ptr %343, align 8, !tbaa !508
  %344 = call fastcc ptr @vinfo_for_stmt(ptr noundef %336) #20
  %345 = call fastcc ptr @vinfo_for_stmt(ptr noundef %290) #20
  %346 = getelementptr inbounds %struct._stmt_vec_info, ptr %345, i64 0, i32 18
  %347 = load ptr, ptr %346, align 8, !tbaa !990
  %348 = icmp eq ptr %347, null
  br i1 %348, label %354, label %349, !prof !994

349:                                              ; preds = %342, %335
  %350 = phi ptr [ %292, %335 ], [ %344, %342 ]
  %351 = phi ptr [ %290, %335 ], [ %347, %342 ]
  %352 = add nuw i32 %289, 1
  %353 = icmp eq i32 %352, %199
  br i1 %353, label %354, label %287, !prof !1003, !llvm.loop !1004

354:                                              ; preds = %349, %342, %283
  %355 = phi ptr [ %220, %283 ], [ %344, %342 ], [ %350, %349 ]
  %356 = phi ptr [ %276, %283 ], [ %298, %342 ], [ %298, %349 ]
  %357 = phi ptr [ %277, %283 ], [ %305, %342 ], [ %305, %349 ]
  %358 = add nuw nsw i32 %218, 1
  %359 = icmp eq i32 %358, %43
  br i1 %359, label %360, label %216, !prof !996, !llvm.loop !1005

360:                                              ; preds = %354, %211
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %10) #20
  %361 = load ptr, ptr %11, align 8, !tbaa !508
  %362 = icmp eq ptr %361, null
  br i1 %362, label %364, label %363, !prof !994

363:                                              ; preds = %360
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %11) #20
  br label %364

364:                                              ; preds = %278, %360, %363
  %365 = phi i8 [ 1, %363 ], [ 1, %360 ], [ 0, %278 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  br label %366

366:                                              ; preds = %146, %149, %126, %116, %110, %94, %97, %81, %84, %69, %66, %62, %56, %50, %53, %364, %189, %163
  %367 = phi i8 [ %365, %364 ], [ 1, %189 ], [ 1, %163 ], [ 0, %53 ], [ 0, %50 ], [ 0, %56 ], [ 0, %62 ], [ 0, %66 ], [ 0, %69 ], [ 0, %84 ], [ 0, %81 ], [ 0, %97 ], [ 0, %94 ], [ 0, %110 ], [ 0, %116 ], [ 0, %126 ], [ 0, %149 ], [ 0, %146 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i8 %367
}

; Function Attrs: optsize
declare zeroext i8 @vectorizable_reduction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vectorizable_live_operation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !786 !PGOFuncName !1006 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !515
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !515
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1007 !PGOFuncName !1008 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !622

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @supportable_widening_operation(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7, ptr nocapture noundef %8) local_unnamed_addr #0 !prof !786 {
  %10 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #20
  %11 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !808
  %13 = load ptr, ptr %12, align 8, !tbaa !495
  %14 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %15 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %14) #20
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !527
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %47

19:                                               ; preds = %9
  %20 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %13, ptr noundef %1) #20, !range !511
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = icmp eq i32 %0, 169
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 3), align 8
  %25 = icmp ne ptr %24, null
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = tail call ptr %24(ptr noundef %2) #19
  %29 = icmp ne ptr %28, null
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 4), align 8
  %31 = icmp ne ptr %30, null
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = tail call ptr %30(ptr noundef %2) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %41 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 38, i64 1, ptr %40)
  br label %42

42:                                               ; preds = %39, %36
  store i32 59, ptr %6, align 4, !tbaa !514
  store i32 59, ptr %5, align 4, !tbaa !514
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 3), align 8, !tbaa !1009
  %44 = tail call ptr %43(ptr noundef %2) #19
  store ptr %44, ptr %3, align 8, !tbaa !508
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 4), align 8, !tbaa !1010
  %46 = tail call ptr %45(ptr noundef %2) #19
  store ptr %46, ptr %4, align 8, !tbaa !508
  br label %220

47:                                               ; preds = %19, %9, %22
  switch i32 %0, label %50 [
    i32 169, label %51
    i32 116, label %48
    i32 113, label %48
    i32 78, label %49
    i32 77, label %220
  ]

48:                                               ; preds = %47, %47
  br label %51

49:                                               ; preds = %47
  br label %51

50:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4734, ptr noundef nonnull @.str.10) #19
  unreachable

51:                                               ; preds = %27, %33, %47, %49, %48
  %52 = phi i32 [ 177, %49 ], [ 175, %48 ], [ 173, %47 ], [ 173, %33 ], [ 173, %27 ]
  %53 = phi i32 [ 176, %49 ], [ 174, %48 ], [ 172, %47 ], [ 172, %33 ], [ 172, %27 ]
  %54 = tail call ptr @optab_for_tree_code(i32 noundef %52, ptr noundef %2, i32 noundef 0) #19
  %55 = tail call ptr @optab_for_tree_code(i32 noundef %53, ptr noundef %2, i32 noundef 0) #19
  %56 = icmp ne ptr %54, null
  %57 = icmp ne ptr %55, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %220

59:                                               ; preds = %51
  %60 = load i64, ptr %2, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 14
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #19
  br label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi i32 [ %64, %63 ], [ %69, %65 ]
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.optab_d, ptr %54, i64 0, i32 4, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !932
  %75 = icmp eq i32 %74, 2956
  br i1 %75, label %220, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.optab_d, ptr %55, i64 0, i32 4, i64 %72
  %78 = load i32, ptr %77, align 4, !tbaa !932
  %79 = icmp eq i32 %78, 2956
  br i1 %79, label %220, label %80

80:                                               ; preds = %76
  %81 = zext i32 %74 to i64
  %82 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %81, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !938
  %84 = getelementptr inbounds %struct.insn_operand_data, ptr %83, i64 0, i32 2
  %85 = load i16, ptr %84, align 8
  %86 = zext i16 %85 to i32
  %87 = load i64, ptr %15, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 14
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #19
  br label %97

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ]
  %99 = icmp eq i32 %98, %86
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = zext i32 %78 to i64
  %102 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %101, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !938
  %104 = getelementptr inbounds %struct.insn_operand_data, ptr %103, i64 0, i32 2
  %105 = load i16, ptr %104, align 8
  %106 = zext i16 %105 to i32
  %107 = load i64, ptr %15, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 14
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #19
  br label %117

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  br label %117

117:                                              ; preds = %112, %110
  %118 = phi i32 [ %111, %110 ], [ %116, %112 ]
  %119 = icmp eq i32 %118, %106
  br i1 %119, label %219, label %120

120:                                              ; preds = %117, %97
  switch i32 %0, label %220 [
    i32 116, label %121
    i32 113, label %121
  ]

121:                                              ; preds = %120, %120
  store i32 %52, ptr %5, align 4, !tbaa !514
  store i32 %53, ptr %6, align 4, !tbaa !514
  %122 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 3) #20
  store ptr %122, ptr %8, align 8, !tbaa !508
  %123 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  br label %124

124:                                              ; preds = %121, %216
  %125 = phi ptr [ %83, %121 ], [ %181, %216 ]
  %126 = phi i32 [ %71, %121 ], [ %131, %216 ]
  %127 = phi ptr [ %2, %121 ], [ %137, %216 ]
  %128 = phi i32 [ 0, %121 ], [ %217, %216 ]
  %129 = getelementptr inbounds %struct.insn_operand_data, ptr %125, i64 0, i32 2
  %130 = load i16, ptr %129, align 8
  %131 = zext i16 %130 to i32
  %132 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !1011
  %133 = load i64, ptr %127, align 8
  %134 = trunc i64 %133 to i32
  %135 = lshr i32 %134, 21
  %136 = and i32 %135, 1
  %137 = tail call ptr %132(i32 noundef %131, i32 noundef %136) #19
  %138 = tail call ptr @optab_for_tree_code(i32 noundef %52, ptr noundef %137, i32 noundef 0) #19
  %139 = tail call ptr @optab_for_tree_code(i32 noundef %53, ptr noundef %137, i32 noundef 0) #19
  %140 = icmp ne ptr %138, null
  %141 = icmp ne ptr %139, null
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %143, label %220

143:                                              ; preds = %124
  %144 = sext i32 %126 to i64
  %145 = getelementptr inbounds %struct.optab_d, ptr %54, i64 0, i32 4, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !932
  %147 = icmp eq i32 %146, 2956
  br i1 %147, label %220, label %148

148:                                              ; preds = %143
  %149 = zext i32 %146 to i64
  %150 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %149, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !938
  %152 = getelementptr inbounds %struct.insn_operand_data, ptr %151, i64 0, i32 2
  %153 = load i16, ptr %152, align 8
  %154 = icmp eq i16 %153, %130
  br i1 %154, label %155, label %220

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.optab_d, ptr %55, i64 0, i32 4, i64 %144
  %157 = load i32, ptr %156, align 4, !tbaa !932
  %158 = icmp eq i32 %157, 2956
  br i1 %158, label %220, label %159

159:                                              ; preds = %155
  %160 = zext i32 %157 to i64
  %161 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %160, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !938
  %163 = getelementptr inbounds %struct.insn_operand_data, ptr %162, i64 0, i32 2
  %164 = load i16, ptr %163, align 8
  %165 = icmp eq i16 %164, %130
  br i1 %165, label %166, label %220

166:                                              ; preds = %159
  %167 = zext i16 %130 to i64
  %168 = getelementptr inbounds %struct.optab_d, ptr %138, i64 0, i32 4, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !932
  %170 = icmp eq i32 %169, 2956
  br i1 %170, label %220, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.optab_d, ptr %139, i64 0, i32 4, i64 %167
  %173 = load i32, ptr %172, align 4, !tbaa !932
  %174 = icmp eq i32 %173, 2956
  br i1 %174, label %220, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %8, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %176, ptr noundef %137) #20
  %177 = load i32, ptr %7, align 4, !tbaa !514
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %7, align 4, !tbaa !514
  %179 = zext i32 %169 to i64
  %180 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %179, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !938
  %182 = getelementptr inbounds %struct.insn_operand_data, ptr %181, i64 0, i32 2
  %183 = load i16, ptr %182, align 8
  %184 = zext i16 %183 to i32
  %185 = load i64, ptr %15, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #19
  br label %194

190:                                              ; preds = %175
  %191 = load i32, ptr %123, align 4
  %192 = lshr i32 %191, 16
  %193 = and i32 %192, 255
  br label %194

194:                                              ; preds = %190, %188
  %195 = phi i32 [ %189, %188 ], [ %193, %190 ]
  %196 = icmp eq i32 %195, %184
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = zext i32 %173 to i64
  %199 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %198, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !938
  %201 = getelementptr inbounds %struct.insn_operand_data, ptr %200, i64 0, i32 2
  %202 = load i16, ptr %201, align 8
  %203 = zext i16 %202 to i32
  %204 = load i64, ptr %15, align 8
  %205 = and i64 %204, 65535
  %206 = icmp eq i64 %205, 14
  br i1 %206, label %207, label %209

207:                                              ; preds = %197
  %208 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #19
  br label %213

209:                                              ; preds = %197
  %210 = load i32, ptr %123, align 4
  %211 = lshr i32 %210, 16
  %212 = and i32 %211, 255
  br label %213

213:                                              ; preds = %209, %207
  %214 = phi i32 [ %208, %207 ], [ %212, %209 ]
  %215 = icmp eq i32 %214, %203
  br i1 %215, label %220, label %216

216:                                              ; preds = %213, %194
  %217 = add nuw nsw i32 %128, 1
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %220, label %124, !llvm.loop !1019

219:                                              ; preds = %117
  store i32 %52, ptr %5, align 4, !tbaa !514
  store i32 %53, ptr %6, align 4, !tbaa !514
  br label %220

220:                                              ; preds = %171, %166, %159, %155, %148, %143, %124, %213, %216, %120, %70, %76, %51, %47, %219, %42
  %221 = phi i8 [ 1, %42 ], [ 1, %219 ], [ 0, %47 ], [ 0, %51 ], [ 0, %76 ], [ 0, %70 ], [ 0, %120 ], [ 0, %216 ], [ 1, %213 ], [ 0, %124 ], [ 0, %143 ], [ 0, %148 ], [ 0, %155 ], [ 0, %159 ], [ 0, %166 ], [ 0, %171 ]
  ret i8 %221
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1020 !PGOFuncName !1021 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !1022 !PGOFuncName !1023 {
  %3 = load i32, ptr %0, align 8, !tbaa !1024
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1024
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !786 !PGOFuncName !1026 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1024
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !1007 !PGOFuncName !1027 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !930

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1024
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !935

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !508
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !508
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @vect_pow2(i32 noundef %0) unnamed_addr #15 !prof !786 !PGOFuncName !1028 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 1, %1 ]
  %5 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %6 = shl nsw i32 %4, 1
  %7 = add nuw nsw i32 %5, 1
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %9, label %3, !llvm.loop !1029

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 1, %1 ], [ %6, %3 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @vect_get_slp_defs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 !prof !786 !PGOFuncName !1030 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !508
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_tree_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !786 !PGOFuncName !1031 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %4) #19
  store i32 %4, ptr %8, align 8, !tbaa !1032
  %9 = getelementptr inbounds %struct.VEC_tree_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_vectorized_promotion_stmts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr nocapture noundef %12) unnamed_addr #0 !prof !786 !PGOFuncName !1034 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  %16 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  %17 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %4) #20
  %18 = load ptr, ptr %0, align 8, !tbaa !508
  %19 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %18) #20
  %20 = shl i32 %19, 1
  %21 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %20) #20
  store ptr %21, ptr %15, align 8, !tbaa !508
  %22 = load ptr, ptr %0, align 8, !tbaa !508
  %23 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %14) #20, !range !904
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %13
  %26 = icmp eq i32 %11, 2
  %27 = icmp eq i32 %2, 0
  %28 = icmp eq ptr %6, null
  %29 = getelementptr inbounds %struct._slp_tree, ptr %6, i64 0, i32 3
  %30 = getelementptr inbounds %struct._stmt_vec_info, ptr %16, i64 0, i32 6
  br label %31

31:                                               ; preds = %25, %65
  %32 = phi i32 [ 0, %25 ], [ %66, %65 ]
  br i1 %26, label %33, label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr %1, align 8, !tbaa !508
  %35 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %32) #20
  br label %36

36:                                               ; preds = %31, %33
  %37 = phi ptr [ %35, %33 ], [ null, %31 ]
  %38 = load ptr, ptr %14, align 8, !tbaa !508
  %39 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %7, ptr noundef %9, ptr noundef %38, ptr noundef %37, i32 noundef %11, ptr noundef %17, ptr noundef %5, ptr noundef %3) #20
  %40 = tail call fastcc ptr @vect_gen_widened_results_half(i32 noundef %8, ptr noundef %10, ptr noundef %38, ptr noundef %37, i32 noundef %11, ptr noundef %17, ptr noundef %5, ptr noundef %3) #20
  %41 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %39) #20, !range !511
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %39) #20
  %45 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %40) #20
  br label %49

46:                                               ; preds = %36
  %47 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %39) #20
  %48 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %40) #20
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %45, %43 ], [ %48, %46 ]
  %51 = phi ptr [ %44, %43 ], [ %47, %46 ]
  br i1 %27, label %53, label %52

52:                                               ; preds = %49
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %21, ptr noundef %51) #20
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %21, ptr noundef %50) #20
  br label %65

53:                                               ; preds = %49
  br i1 %28, label %57, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %29, align 8, !tbaa !913
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %55, ptr noundef %39) #20
  %56 = load ptr, ptr %29, align 8, !tbaa !913
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %56, ptr noundef %40) #20
  br label %65

57:                                               ; preds = %53
  %58 = load ptr, ptr %12, align 8, !tbaa !508
  %59 = icmp eq ptr %58, null
  %60 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 14
  %61 = select i1 %59, ptr %30, ptr %60
  store ptr %39, ptr %61, align 8, !tbaa !508
  %62 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %39) #20
  store ptr %62, ptr %12, align 8, !tbaa !508
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %62, i64 0, i32 14
  store ptr %40, ptr %63, align 8, !tbaa !574
  %64 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %40) #20
  store ptr %64, ptr %12, align 8, !tbaa !508
  br label %65

65:                                               ; preds = %52, %57, %54
  %66 = add nuw nsw i32 %32, 1
  %67 = load ptr, ptr %0, align 8, !tbaa !508
  %68 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %67, i32 noundef %66, ptr noundef nonnull %14) #20, !range !904
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %31, !llvm.loop !1035

70:                                               ; preds = %65, %13
  %71 = icmp eq i32 %2, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = tail call fastcc ptr @VEC_tree_heap_copy(ptr noundef %21) #20
  store ptr %73, ptr %0, align 8, !tbaa !508
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %15) #20
  %74 = add nsw i32 %2, -1
  tail call fastcc void @vect_create_vectorized_promotion_stmts(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %74, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %10, ptr noundef %10, i32 noundef %11, ptr noundef %12) #20
  br label %75

75:                                               ; preds = %72, %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !1022 !PGOFuncName !1036 {
  %2 = load ptr, ptr %0, align 8, !tbaa !508
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1037

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #8 !prof !786 !PGOFuncName !1038 {
  %2 = load i32, ptr %0, align 8, !tbaa !1024
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1024
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !769 !PGOFuncName !1039 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !508
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @vect_gen_widened_results_half(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7) unnamed_addr #0 !prof !786 !PGOFuncName !1040 {
  %9 = icmp eq i32 %0, 59
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1, i32 noundef 2, ptr noundef %2, ptr noundef %3) #19
  br label %16

14:                                               ; preds = %10
  %15 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1, i32 noundef 1, ptr noundef %2) #19
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = tail call fastcc ptr @make_ssa_name(ptr noundef %5, ptr noundef %17) #20
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %17, ptr noundef %18) #20
  br label %31

19:                                               ; preds = %8
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !515
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1514, ptr noundef nonnull @.str.10) #19
  br label %26

26:                                               ; preds = %19, %25
  %27 = icmp eq i32 %4, 2
  %28 = select i1 %27, ptr %3, ptr null
  %29 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef %28) #19
  %30 = tail call fastcc ptr @make_ssa_name(ptr noundef %5, ptr noundef %29) #20
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %29, ptr noundef %30) #20
  br label %31

31:                                               ; preds = %26, %16
  %32 = phi ptr [ %17, %16 ], [ %29, %26 ]
  tail call void @vect_finish_stmt_generation(ptr noundef %7, ptr noundef %32, ptr noundef %6) #20
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !786 !PGOFuncName !1041 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !515
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @supportable_narrowing_operation(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !prof !786 {
  %7 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %8 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %7) #20
  switch i32 %0, label %9 [
    i32 116, label %12
    i32 113, label %12
    i32 77, label %10
    i32 78, label %116
  ]

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4869, ptr noundef nonnull @.str.10) #19
  br label %12

10:                                               ; preds = %6
  %11 = tail call ptr @optab_for_tree_code(i32 noundef 180, ptr noundef %7, i32 noundef 0) #19
  br label %14

12:                                               ; preds = %6, %6, %9
  %13 = tail call ptr @optab_for_tree_code(i32 noundef 178, ptr noundef %2, i32 noundef 0) #19
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 180, %10 ], [ 178, %12 ]
  %16 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %116, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %2, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #19
  br label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.optab_d, ptr %16, i64 0, i32 4, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !932
  %34 = icmp eq i32 %33, 2956
  br i1 %34, label %116, label %35

35:                                               ; preds = %29
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %36, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !938
  %39 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 0, i32 2
  %40 = load i16, ptr %39, align 8
  %41 = zext i16 %40 to i32
  %42 = load i64, ptr %8, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 14
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #19
  br label %52

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  %54 = icmp eq i32 %53, %41
  store i32 %15, ptr %3, align 4, !tbaa !514
  br i1 %54, label %116, label %55

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 3) #20
  store ptr %56, ptr %5, align 8, !tbaa !508
  %57 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  br label %61

58:                                               ; preds = %113
  %59 = add nuw nsw i32 %64, 1
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %116, label %61, !llvm.loop !1042

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %38, %55 ], [ %100, %58 ]
  %63 = phi i32 [ %30, %55 ], [ %68, %58 ]
  %64 = phi i32 [ 0, %55 ], [ %59, %58 ]
  %65 = phi ptr [ %2, %55 ], [ %74, %58 ]
  %66 = getelementptr inbounds %struct.insn_operand_data, ptr %62, i64 0, i32 2
  %67 = load i16, ptr %66, align 8
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !1011
  %70 = load i64, ptr %65, align 8
  %71 = trunc i64 %70 to i32
  %72 = lshr i32 %71, 21
  %73 = and i32 %72, 1
  %74 = tail call ptr %69(i32 noundef %68, i32 noundef %73) #19
  %75 = tail call ptr @optab_for_tree_code(i32 noundef %15, ptr noundef %74, i32 noundef 0) #19
  %76 = icmp eq ptr %75, null
  br i1 %76, label %116, label %77

77:                                               ; preds = %61
  %78 = sext i32 %63 to i64
  %79 = getelementptr inbounds %struct.optab_d, ptr %16, i64 0, i32 4, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !932
  %81 = icmp eq i32 %80, 2956
  br i1 %81, label %116, label %82

82:                                               ; preds = %77
  %83 = zext i32 %80 to i64
  %84 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %83, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !938
  %86 = getelementptr inbounds %struct.insn_operand_data, ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 8
  %88 = icmp eq i16 %87, %67
  br i1 %88, label %89, label %116

89:                                               ; preds = %82
  %90 = zext i16 %67 to i64
  %91 = getelementptr inbounds %struct.optab_d, ptr %75, i64 0, i32 4, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !932
  %93 = icmp eq i32 %92, 2956
  br i1 %93, label %116, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %5, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %95, ptr noundef %74) #20
  %96 = load i32, ptr %4, align 4, !tbaa !514
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %4, align 4, !tbaa !514
  %98 = zext i32 %92 to i64
  %99 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %98, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !938
  %101 = getelementptr inbounds %struct.insn_operand_data, ptr %100, i64 0, i32 2
  %102 = load i16, ptr %101, align 8
  %103 = zext i16 %102 to i32
  %104 = load i64, ptr %8, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 14
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #19
  br label %113

109:                                              ; preds = %94
  %110 = load i32, ptr %57, align 4
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  br label %113

113:                                              ; preds = %109, %107
  %114 = phi i32 [ %108, %107 ], [ %112, %109 ]
  %115 = icmp eq i32 %114, %103
  br i1 %115, label %116, label %58

116:                                              ; preds = %89, %82, %77, %61, %113, %58, %52, %29, %14, %6
  %117 = phi i8 [ 0, %6 ], [ 0, %14 ], [ 0, %29 ], [ 1, %52 ], [ 0, %58 ], [ 1, %113 ], [ 0, %61 ], [ 0, %77 ], [ 0, %82 ], [ 0, %89 ]
  ret i8 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_get_loop_based_defs(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !prof !786 !PGOFuncName !1043 {
  %6 = load ptr, ptr %0, align 8, !tbaa !508
  br label %7

7:                                                ; preds = %19, %5
  %8 = phi ptr [ %6, %5 ], [ %22, %19 ]
  %9 = phi i32 [ %4, %5 ], [ %25, %19 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !515
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %8, ptr noundef %1, ptr noundef null) #20
  br label %19

17:                                               ; preds = %7
  %18 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %2, ptr noundef nonnull %8) #20
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %21, ptr noundef %20) #20
  %22 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %2, ptr noundef %20) #20
  %23 = load ptr, ptr %3, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %23, ptr noundef %22) #20
  store ptr %22, ptr %0, align 8, !tbaa !508
  %24 = icmp eq i32 %9, 0
  %25 = add nsw i32 %9, -1
  br i1 %24, label %26, label %7

26:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_vectorized_demotion_stmts(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef readonly %5, i32 noundef %6, ptr nocapture noundef %7) unnamed_addr #0 !prof !786 !PGOFuncName !1044 {
  %9 = icmp eq ptr %5, null
  %10 = getelementptr inbounds %struct._slp_tree, ptr %5, i64 0, i32 3
  br label %11

11:                                               ; preds = %50, %8
  %12 = phi i32 [ %1, %8 ], [ %52, %50 ]
  %13 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #20
  %14 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %3) #20
  %15 = load ptr, ptr %0, align 8, !tbaa !508
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %11
  %19 = icmp eq i32 %12, 0
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %13, i64 0, i32 6
  br label %21

21:                                               ; preds = %18, %41
  %22 = phi ptr [ %15, %18 ], [ %43, %41 ]
  %23 = phi i32 [ 0, %18 ], [ %42, %41 ]
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %23) #20
  %25 = or disjoint i32 %23, 1
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %25) #20
  %27 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %6, ptr noundef %14, ptr noundef %24, ptr noundef %26) #19
  %28 = tail call fastcc ptr @make_ssa_name(ptr noundef %14, ptr noundef %27) #20
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %27, ptr noundef %28) #20
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef %27, ptr noundef %4) #20
  br i1 %19, label %32, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %0, align 8, !tbaa !508
  %31 = lshr exact i32 %23, 1
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %30, i32 noundef %31, ptr noundef %28) #20
  br label %41

32:                                               ; preds = %21
  br i1 %9, label %35, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %10, align 8, !tbaa !913
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %34, ptr noundef %27) #20
  br label %41

35:                                               ; preds = %32
  %36 = load ptr, ptr %7, align 8, !tbaa !508
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 14
  %39 = select i1 %37, ptr %20, ptr %38
  store ptr %27, ptr %39, align 8, !tbaa !508
  %40 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %27) #20
  store ptr %40, ptr %7, align 8, !tbaa !508
  br label %41

41:                                               ; preds = %29, %35, %33
  %42 = add i32 %23, 2
  %43 = load ptr, ptr %0, align 8, !tbaa !508
  %44 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %43) #20
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %21, label %46, !llvm.loop !1045

46:                                               ; preds = %41, %11
  %47 = phi i32 [ 0, %11 ], [ %42, %41 ]
  %48 = phi ptr [ %15, %11 ], [ %43, %41 ]
  %49 = icmp eq i32 %12, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = lshr exact i32 %47, 1
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %48, i32 noundef %51) #20
  %52 = add nsw i32 %12, -1
  br label %11

53:                                               ; preds = %46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !786 !PGOFuncName !1046 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !1024
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_get_vec_defs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !769 !PGOFuncName !1047 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %9, label %8, !prof !535

8:                                                ; preds = %6
  tail call void @vect_get_slp_defs(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4) #19
  br label %18

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #20
  store ptr %10, ptr %3, align 8, !tbaa !508
  %11 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef %0, ptr noundef %2, ptr noundef null) #20
  %12 = load ptr, ptr %3, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %12, ptr noundef %11) #20
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14, !prof !625

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #20
  store ptr %15, ptr %4, align 8, !tbaa !508
  %16 = tail call ptr @vect_get_vec_def_for_operand(ptr noundef nonnull %1, ptr noundef %2, ptr noundef null) #20
  %17 = load ptr, ptr %4, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %17, ptr noundef %16) #20
  br label %18

18:                                               ; preds = %9, %14, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_get_vec_defs_for_stmt_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !786 !PGOFuncName !1048 {
  %4 = load ptr, ptr %1, align 8, !tbaa !508
  %5 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %4) #20
  %6 = load i32, ptr %0, align 4, !tbaa !514
  %7 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %6, ptr noundef %5) #20
  %8 = load ptr, ptr %1, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %8, ptr noundef %7) #20
  %9 = icmp eq ptr %2, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %2, align 8, !tbaa !508
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef nonnull %11) #20
  %15 = getelementptr inbounds i32, ptr %0, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !514
  %17 = tail call ptr @vect_get_vec_def_for_stmt_copy(i32 noundef %16, ptr noundef %14) #20
  %18 = load ptr, ptr %2, align 8, !tbaa !508
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %18, ptr noundef %17) #20
  br label %19

19:                                               ; preds = %13, %10, %3
  ret void
}

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vect_min_worthwhile_factor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vect_strided_load_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vect_setup_realignment(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vect_create_data_ref_ptr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bump_vector_ptr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @aligned_access_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1049 !PGOFuncName !1050 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !971
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !786 !PGOFuncName !1051 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !511
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1416, ptr noundef nonnull @.str.10) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !515
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !786 !PGOFuncName !1052 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !511
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1407, ptr noundef nonnull @.str.10) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !515
  ret void
}

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vect_transform_slp_perm_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vect_transform_strided_load(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !786 !PGOFuncName !1053 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !786 !PGOFuncName !1054 {
  %3 = add nuw nsw i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vect_strided_store_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vect_permute_store_chain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @vect_transform_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !817 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !508
  %8 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %9 = load i32, ptr %8, align 8, !tbaa !555
  switch i32 %9, label %75 [
    i32 10, label %10
    i32 9, label %14
    i32 11, label %18
    i32 8, label %22
    i32 3, label %29
    i32 5, label %33
    i32 1, label %37
    i32 2, label %41
    i32 6, label %56
    i32 4, label %63
    i32 7, label %68
  ], !prof !1055

10:                                               ; preds = %5
  %11 = call fastcc zeroext i8 @vectorizable_type_demotion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3) #20, !range !511
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %86

13:                                               ; preds = %10
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4150, ptr noundef nonnull @.str.10) #19
  br label %86

14:                                               ; preds = %5
  %15 = call fastcc zeroext i8 @vectorizable_type_promotion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3) #20, !range !511
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4155, ptr noundef nonnull @.str.10) #19
  br label %86

18:                                               ; preds = %5
  %19 = call fastcc zeroext i8 @vectorizable_conversion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3) #20, !range !511
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4160, ptr noundef nonnull @.str.10) #19
  br label %86

22:                                               ; preds = %5
  %23 = icmp eq ptr %3, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4164, ptr noundef nonnull @.str.10) #19
  br label %25

25:                                               ; preds = %22, %24
  %26 = call zeroext i8 @vectorizable_induction(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4166, ptr noundef nonnull @.str.10) #19
  br label %86

29:                                               ; preds = %5
  %30 = call fastcc zeroext i8 @vectorizable_operation(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3) #20, !range !511
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %86, !prof !625

32:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4171, ptr noundef nonnull @.str.10) #19
  br label %86

33:                                               ; preds = %5
  %34 = call fastcc zeroext i8 @vectorizable_assignment(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3) #20, !range !511
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4176, ptr noundef nonnull @.str.10) #19
  br label %86

37:                                               ; preds = %5
  %38 = call fastcc zeroext i8 @vectorizable_load(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4) #20, !range !511
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %86, !prof !603

40:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4182, ptr noundef nonnull @.str.10) #19
  br label %86

41:                                               ; preds = %5
  %42 = call fastcc zeroext i8 @vectorizable_store(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45, !prof !995

44:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4187, ptr noundef nonnull @.str.10) #19
  br label %45

45:                                               ; preds = %41, %44
  %46 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !781
  %48 = icmp eq ptr %47, null
  %49 = icmp ne ptr %3, null
  %50 = or i1 %49, %48
  br i1 %50, label %86, label %51, !prof !1056

51:                                               ; preds = %45
  store i8 1, ptr %2, align 1, !tbaa !515
  %52 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !835
  %54 = icmp ne ptr %53, null
  %55 = zext i1 %54 to i8
  br label %86

56:                                               ; preds = %5
  %57 = icmp eq ptr %3, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4203, ptr noundef nonnull @.str.10) #19
  br label %59

59:                                               ; preds = %56, %58
  %60 = call zeroext i8 @vectorizable_condition(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4205, ptr noundef nonnull @.str.10) #19
  br label %86

63:                                               ; preds = %5
  %64 = icmp eq ptr %3, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4209, ptr noundef nonnull @.str.10) #19
  br label %66

66:                                               ; preds = %63, %65
  %67 = call fastcc zeroext i8 @vectorizable_call(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #20, !range !511
  br label %86

68:                                               ; preds = %5
  %69 = icmp eq ptr %3, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4214, ptr noundef nonnull @.str.10) #19
  br label %71

71:                                               ; preds = %68, %70
  %72 = call zeroext i8 @vectorizable_reduction(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #19
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4216, ptr noundef nonnull @.str.10) #19
  br label %86

75:                                               ; preds = %5
  %76 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 4
  %77 = load i8, ptr %76, align 4, !tbaa !530
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %84 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 19, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %82, %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4224, ptr noundef nonnull @.str.10) #19
  br label %86

86:                                               ; preds = %51, %45, %74, %71, %62, %59, %40, %37, %36, %33, %32, %29, %28, %25, %21, %18, %17, %14, %13, %10, %75, %85, %66
  %87 = phi i8 [ 0, %75 ], [ 0, %85 ], [ 0, %71 ], [ 0, %74 ], [ 0, %66 ], [ 0, %59 ], [ 0, %62 ], [ 0, %37 ], [ 0, %40 ], [ 0, %33 ], [ 0, %36 ], [ 0, %29 ], [ 0, %32 ], [ 0, %25 ], [ 0, %28 ], [ 0, %18 ], [ 0, %21 ], [ 0, %14 ], [ 0, %17 ], [ 0, %10 ], [ 0, %13 ], [ %55, %51 ], [ 1, %45 ]
  %88 = load ptr, ptr %6, align 8, !tbaa !508
  %89 = icmp eq ptr %88, null
  br i1 %89, label %144, label %90, !prof !818

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !808
  %93 = icmp eq ptr %92, null
  br i1 %93, label %144, label %94, !prof !818

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !495
  %96 = call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %95, ptr noundef %0) #20, !range !511
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %144, label %98, !prof !819

98:                                               ; preds = %94
  %99 = load i32, ptr %8, align 8, !tbaa !555
  %100 = icmp eq i32 %99, 7
  br i1 %100, label %144, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !527
  %104 = add i32 %103, -1
  %105 = icmp ult i32 %104, 2
  br i1 %105, label %106, label %144

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.loop, ptr %95, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !810
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #18
  %109 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #19
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr @vect_dump, align 8, !tbaa !508
  %113 = call i64 @fwrite(ptr nonnull @.str.79, i64 45, i64 1, ptr %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !534
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #20
  %119 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %118) #20
  br label %122

120:                                              ; preds = %114
  %121 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi ptr [ %119, %117 ], [ %121, %120 ]
  %124 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %7, ptr noundef %123) #20
  %125 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %7) #20, !range !511
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %122, %139
  %128 = phi ptr [ %140, %139 ], [ %124, %122 ]
  %129 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !515
  %131 = call fastcc ptr @gimple_bb(ptr noundef %130) #20
  %132 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %108, ptr noundef %131) #19
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load ptr, ptr %129, align 8, !tbaa !515
  %136 = load ptr, ptr %6, align 8, !tbaa !508
  %137 = call fastcc ptr @vinfo_for_stmt(ptr noundef %135) #20
  %138 = getelementptr inbounds %struct._stmt_vec_info, ptr %137, i64 0, i32 6
  store ptr %136, ptr %138, align 8, !tbaa !835
  br label %139

139:                                              ; preds = %127, %134
  %140 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %7) #20
  %141 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %7) #20, !range !511
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %127, label %143, !llvm.loop !1057

143:                                              ; preds = %139, %122
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #18
  br label %144

144:                                              ; preds = %101, %143, %98, %94, %90, %86
  %145 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 4
  %146 = load i8, ptr %145, align 4, !tbaa !530
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %155, label %148, !prof !819

148:                                              ; preds = %144
  %149 = load i32, ptr %8, align 8, !tbaa !555
  %150 = icmp eq i32 %149, 7
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = call zeroext i8 @vectorizable_live_operation(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #19
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4273, ptr noundef nonnull @.str.10) #19
  br label %155

155:                                              ; preds = %154, %151, %148, %144
  %156 = load ptr, ptr %6, align 8, !tbaa !508
  %157 = icmp eq ptr %156, null
  br i1 %157, label %176, label %158, !prof !818

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 6
  store ptr %156, ptr %159, align 8, !tbaa !835
  %160 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 14
  %161 = load ptr, ptr %160, align 8, !tbaa !574
  %162 = icmp eq ptr %161, null
  br i1 %162, label %176, label %163, !prof !819

163:                                              ; preds = %158
  %164 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %161) #20
  %165 = getelementptr inbounds %struct._stmt_vec_info, ptr %164, i64 0, i32 13
  %166 = load i8, ptr %165, align 8, !tbaa !573
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct._stmt_vec_info, ptr %164, i64 0, i32 14
  %170 = load ptr, ptr %169, align 8, !tbaa !574
  %171 = icmp eq ptr %170, %0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4290, ptr noundef nonnull @.str.10) #19
  br label %173

173:                                              ; preds = %168, %172
  %174 = load ptr, ptr %6, align 8, !tbaa !508
  %175 = getelementptr inbounds %struct._stmt_vec_info, ptr %164, i64 0, i32 6
  store ptr %174, ptr %175, align 8, !tbaa !835
  br label %176

176:                                              ; preds = %163, %173, %158, %155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i8 %87
}

; Function Attrs: optsize
declare zeroext i8 @vectorizable_induction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_remove_stores(ptr noundef %0) local_unnamed_addr #0 !prof !786 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %0, %1 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #19
  %7 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %6) #20
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !990
  call void @free_stmt_vec_info(ptr noundef nonnull %6) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !1058

11:                                               ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_stmt_vec_info(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !1059 {
  %2 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !1060

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._stmt_vec_info, ptr %2, i64 0, i32 15
  tail call fastcc void @VEC_dr_p_heap_free(ptr noundef nonnull %5) #20
  tail call fastcc void @set_vinfo_for_stmt(ptr noundef %0, ptr noundef null) #20
  tail call void @free(ptr noundef nonnull %2) #20
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_loop_header_bb_p(ptr noundef readonly %0) unnamed_addr #0 !prof !1061 !PGOFuncName !1062 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !626
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1063
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %12, label %7, !prof !1064

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !1065
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 694, ptr noundef nonnull @.str.10) #19
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %7 ], [ 0, %11 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_dr_p_heap_alloc() unnamed_addr #0 !prof !853 !PGOFuncName !1066 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 5) #19
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !786 !PGOFuncName !1067 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1068
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_stmt_vec_info_vec() local_unnamed_addr #0 !prof !1070 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1071

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4378, ptr noundef nonnull @.str.10) #19
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call fastcc ptr @VEC_vec_void_p_heap_alloc() #20
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_vec_void_p_heap_alloc() unnamed_addr #0 !prof !1070 !PGOFuncName !1072 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 50) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_stmt_vec_info_vec() local_unnamed_addr #0 !prof !1070 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !1073

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 4388, ptr noundef nonnull @.str.10) #19
  br label %4

4:                                                ; preds = %0, %3
  tail call fastcc void @VEC_vec_void_p_heap_free() #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vec_void_p_heap_free() unnamed_addr #9 !prof !1070 !PGOFuncName !1074 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1073

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @stmt_vec_info_vec, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_dr_p_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !865 !PGOFuncName !1075 {
  %2 = load ptr, ptr %0, align 8, !tbaa !508
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1076

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !508
  ret void
}

; Function Attrs: optsize
declare ptr @build_vector_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!493}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!36 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @vect_print_dump_info, i64 2082}
!37 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @fwrite, i64 5}
!38 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @VEC_gimple_heap_alloc, i64 190}
!39 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @VEC_gimple_base_length, i64 525}
!40 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @gsi_start_phis, i64 379}
!41 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @gsi_end_p, i64 2227}
!42 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @gsi_stmt, i64 1469}
!43 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @print_gimple_stmt, i64 3}
!44 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @vect_stmt_relevant_p, i64 1469}
!45 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @vect_mark_relevant, i64 110}
!46 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @gsi_next, i64 1469}
!47 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @gsi_start_bb, i64 379}
!48 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @VEC_gimple_base_pop, i64 422}
!49 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @vinfo_for_stmt, i64 422}
!50 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @gimple_code, i64 423}
!51 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @op_iter_init_phiuse, i64 9}
!52 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @op_iter_init_use, i64 412}
!53 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @op_iter_done, i64 941}
!54 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @get_use_from_ptr, i64 605}
!55 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @process_use, i64 605}
!56 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @op_iter_next_use, i64 520}
!57 = !{ptr @vect_mark_stmts_to_be_vectorized, ptr @VEC_gimple_heap_free, i64 190}
!58 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 190}
!59 = !{ptr @vect_stmt_relevant_p, ptr @is_ctrl_stmt, i64 1475}
!60 = !{ptr @vect_stmt_relevant_p, ptr @vinfo_for_stmt, i64 191}
!61 = !{ptr @vect_stmt_relevant_p, ptr @gimple_code, i64 3027}
!62 = !{ptr @vect_stmt_relevant_p, ptr @gimple_vdef, i64 987}
!63 = !{ptr @vect_stmt_relevant_p, ptr @vect_print_dump_info, i64 111}
!64 = !{ptr @vect_stmt_relevant_p, ptr @fwrite, i64 2}
!65 = !{ptr @vect_stmt_relevant_p, ptr @op_iter_init_phidef, i64 488}
!66 = !{ptr @vect_stmt_relevant_p, ptr @op_iter_init_def, i64 987}
!67 = !{ptr @vect_stmt_relevant_p, ptr @op_iter_done, i64 2649}
!68 = !{ptr @vect_stmt_relevant_p, ptr @get_def_from_ptr, i64 1174}
!69 = !{ptr @vect_stmt_relevant_p, ptr @first_readonly_imm_use, i64 1174}
!70 = !{ptr @vect_stmt_relevant_p, ptr @end_readonly_imm_use_p, i64 2811}
!71 = !{ptr @vect_stmt_relevant_p, ptr @gimple_bb, i64 1637}
!72 = !{ptr @vect_stmt_relevant_p, ptr @flow_bb_inside_loop_p, i64 1637}
!73 = !{ptr @vect_stmt_relevant_p, ptr @is_gimple_debug, i64 78}
!74 = !{ptr @vect_stmt_relevant_p, ptr @fancy_abort, i64 2}
!75 = !{ptr @vect_stmt_relevant_p, ptr @single_exit, i64 77}
!76 = !{ptr @vect_stmt_relevant_p, ptr @next_readonly_imm_use, i64 1637}
!77 = !{ptr @vect_stmt_relevant_p, ptr @op_iter_next_def, i64 1174}
!78 = !{ptr @vect_mark_relevant, ptr @vinfo_for_stmt, i64 425}
!79 = !{ptr @vect_mark_relevant, ptr @vect_print_dump_info, i64 433}
!80 = !{ptr @vect_mark_relevant, ptr @fprintf, i64 1}
!81 = !{ptr @vect_mark_relevant, ptr @fwrite, i64 2}
!82 = !{ptr @vect_mark_relevant, ptr @fancy_abort, i64 1}
!83 = !{ptr @vect_mark_relevant, ptr @VEC_gimple_heap_safe_push, i64 416}
!84 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 380}
!85 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 380}
!86 = !{ptr @vinfo_for_stmt, ptr @gimple_uid, i64 701242}
!87 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 701191}
!88 = !{ptr @vinfo_for_stmt, ptr @fancy_abort, i64 1}
!89 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_index, i64 701191}
!90 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 189}
!91 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 7}
!92 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 7}
!93 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 7}
!94 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 6}
!95 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 6}
!96 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 386}
!97 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 386}
!98 = !{ptr @process_use, ptr @vinfo_for_stmt, i64 815}
!99 = !{ptr @process_use, ptr @exist_non_indexing_operands_for_use_p, i64 502}
!100 = !{ptr @process_use, ptr @vect_is_simple_use, i64 395}
!101 = !{ptr @process_use, ptr @vect_print_dump_info, i64 79}
!102 = !{ptr @process_use, ptr @fwrite, i64 4}
!103 = !{ptr @process_use, ptr @gimple_nop_p, i64 320}
!104 = !{ptr @process_use, ptr @gimple_bb, i64 631}
!105 = !{ptr @process_use, ptr @flow_bb_inside_loop_p, i64 318}
!106 = !{ptr @process_use, ptr @gimple_code, i64 316}
!107 = !{ptr @process_use, ptr @flow_loop_nested_p, i64 623}
!108 = !{ptr @process_use, ptr @vect_mark_relevant, i64 312}
!109 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 15}
!110 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 1784}
!111 = !{ptr @op_iter_init_phidef, ptr @gimple_phi_result_ptr, i64 488}
!112 = !{ptr @op_iter_init_phidef, ptr @get_def_from_ptr, i64 488}
!113 = !{ptr @op_iter_init_phidef, ptr @clear_and_done_ssa_iter, i64 488}
!114 = !{ptr @op_iter_init_phidef, ptr @is_gimple_reg, i64 488}
!115 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 987}
!116 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 987}
!117 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 1174}
!118 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 77}
!119 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 1637}
!120 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 2274}
!121 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 987}
!122 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 797}
!123 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 386}
!124 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 386}
!125 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 987}
!126 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 386}
!127 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 386}
!128 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2623}
!129 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 417}
!130 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 417}
!131 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 417}
!132 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!133 = !{ptr @exist_non_indexing_operands_for_use_p, ptr @vinfo_for_stmt, i64 502}
!134 = !{ptr @exist_non_indexing_operands_for_use_p, ptr @gimple_assign_copy_p, i64 118}
!135 = !{ptr @exist_non_indexing_operands_for_use_p, ptr @gimple_assign_lhs, i64 45}
!136 = !{ptr @exist_non_indexing_operands_for_use_p, ptr @gimple_assign_rhs1, i64 44}
!137 = !{ptr @vect_is_simple_use, ptr @vect_print_dump_info, i64 1518}
!138 = !{ptr @vect_is_simple_use, ptr @fwrite, i64 7}
!139 = !{ptr @vect_is_simple_use, ptr @print_generic_expr, i64 1}
!140 = !{ptr @vect_is_simple_use, ptr @is_gimple_min_invariant, i64 492}
!141 = !{ptr @vect_is_simple_use, ptr @print_gimple_stmt, i64 1}
!142 = !{ptr @vect_is_simple_use, ptr @gimple_nop_p, i64 478}
!143 = !{ptr @vect_is_simple_use, ptr @gimple_bb, i64 476}
!144 = !{ptr @vect_is_simple_use, ptr @flow_bb_inside_loop_p, i64 475}
!145 = !{ptr @vect_is_simple_use, ptr @vinfo_for_stmt, i64 470}
!146 = !{ptr @vect_is_simple_use, ptr @fprintf, i64 1}
!147 = !{ptr @vect_is_simple_use, ptr @gimple_code, i64 346}
!148 = !{ptr @vect_is_simple_use, ptr @gimple_phi_result, i64 13}
!149 = !{ptr @vect_is_simple_use, ptr @gimple_assign_lhs, i64 330}
!150 = !{ptr @vect_is_simple_use, ptr @gimple_call_lhs, i64 3}
!151 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 805}
!152 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 683}
!153 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 535}
!154 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 1224}
!155 = !{ptr @gimple_op, ptr @gimple_ops, i64 1223}
!156 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 1250}
!157 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!158 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 1250}
!159 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 1250}
!160 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 14}
!161 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!162 = !{ptr @cost_for_stmt, ptr @vinfo_for_stmt, i64 32}
!163 = !{ptr @cost_for_stmt, ptr @fancy_abort, i64 1}
!164 = !{ptr @vect_model_simple_cost, ptr @vect_print_dump_info, i64 2}
!165 = !{ptr @vect_model_simple_cost, ptr @stmt_vinfo_set_inside_of_loop_cost, i64 2}
!166 = !{ptr @vect_model_simple_cost, ptr @stmt_vinfo_set_outside_of_loop_cost, i64 2}
!167 = !{ptr @vect_model_store_cost, ptr @vect_print_dump_info, i64 22}
!168 = !{ptr @vect_model_store_cost, ptr @fprintf, i64 1}
!169 = !{ptr @vect_model_store_cost, ptr @stmt_vinfo_set_inside_of_loop_cost, i64 22}
!170 = !{ptr @vect_model_store_cost, ptr @stmt_vinfo_set_outside_of_loop_cost, i64 22}
!171 = !{ptr @vect_model_load_cost, ptr @vect_supportable_dr_alignment, i64 6}
!172 = !{ptr @vect_model_load_cost, ptr @vect_print_dump_info, i64 12}
!173 = !{ptr @vect_model_load_cost, ptr @fancy_abort, i64 1}
!174 = !{ptr @vect_model_load_cost, ptr @fprintf, i64 1}
!175 = !{ptr @vect_model_load_cost, ptr @stmt_vinfo_set_inside_of_loop_cost, i64 6}
!176 = !{ptr @vect_model_load_cost, ptr @stmt_vinfo_set_outside_of_loop_cost, i64 6}
!177 = !{ptr @vect_init_vector, ptr @vinfo_for_stmt, i64 17}
!178 = !{ptr @vect_init_vector, ptr @vect_get_new_vect_var, i64 17}
!179 = !{ptr @vect_init_vector, ptr @add_referenced_var, i64 17}
!180 = !{ptr @vect_init_vector, ptr @gimple_build_assign_stat, i64 17}
!181 = !{ptr @vect_init_vector, ptr @make_ssa_name, i64 17}
!182 = !{ptr @vect_init_vector, ptr @gimple_assign_set_lhs, i64 17}
!183 = !{ptr @vect_init_vector, ptr @vect_finish_stmt_generation, i64 1}
!184 = !{ptr @vect_init_vector, ptr @nested_in_vect_loop_p, i64 15}
!185 = !{ptr @vect_init_vector, ptr @loop_preheader_edge, i64 15}
!186 = !{ptr @vect_init_vector, ptr @gsi_insert_on_edge_immediate, i64 15}
!187 = !{ptr @vect_init_vector, ptr @fancy_abort, i64 1}
!188 = !{ptr @vect_init_vector, ptr @gsi_after_labels, i64 1}
!189 = !{ptr @vect_init_vector, ptr @gsi_insert_before, i64 1}
!190 = !{ptr @vect_init_vector, ptr @vect_print_dump_info, i64 17}
!191 = !{ptr @vect_init_vector, ptr @fwrite, i64 1}
!192 = !{ptr @vect_init_vector, ptr @print_gimple_stmt, i64 1}
!193 = !{ptr @vect_init_vector, ptr @gimple_assign_lhs, i64 17}
!194 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 26}
!195 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 26}
!196 = !{ptr @vect_finish_stmt_generation, ptr @vinfo_for_stmt, i64 31}
!197 = !{ptr @vect_finish_stmt_generation, ptr @gimple_code, i64 31}
!198 = !{ptr @vect_finish_stmt_generation, ptr @fancy_abort, i64 1}
!199 = !{ptr @vect_finish_stmt_generation, ptr @gsi_insert_before, i64 31}
!200 = !{ptr @vect_finish_stmt_generation, ptr @new_stmt_vec_info, i64 31}
!201 = !{ptr @vect_finish_stmt_generation, ptr @set_vinfo_for_stmt, i64 31}
!202 = !{ptr @vect_finish_stmt_generation, ptr @vect_print_dump_info, i64 31}
!203 = !{ptr @vect_finish_stmt_generation, ptr @fwrite, i64 1}
!204 = !{ptr @vect_finish_stmt_generation, ptr @print_gimple_stmt, i64 1}
!205 = !{ptr @vect_finish_stmt_generation, ptr @gsi_stmt, i64 31}
!206 = !{ptr @vect_finish_stmt_generation, ptr @gimple_location, i64 31}
!207 = !{ptr @vect_finish_stmt_generation, ptr @gimple_set_location, i64 31}
!208 = !{ptr @nested_in_vect_loop_p, ptr @gimple_bb, i64 1}
!209 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 26}
!210 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 25}
!211 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!212 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 26}
!213 = !{ptr @vect_get_vec_def_for_operand, ptr @vinfo_for_stmt, i64 35}
!214 = !{ptr @vect_get_vec_def_for_operand, ptr @vect_print_dump_info, i64 67}
!215 = !{ptr @vect_get_vec_def_for_operand, ptr @fwrite, i64 3}
!216 = !{ptr @vect_get_vec_def_for_operand, ptr @print_generic_expr, i64 2}
!217 = !{ptr @vect_get_vec_def_for_operand, ptr @vect_is_simple_use, i64 26}
!218 = !{ptr @vect_get_vec_def_for_operand, ptr @fancy_abort, i64 6}
!219 = !{ptr @vect_get_vec_def_for_operand, ptr @print_gimple_stmt, i64 1}
!220 = !{ptr @vect_get_vec_def_for_operand, ptr @get_vectype_for_scalar_type, i64 15}
!221 = !{ptr @vect_get_vec_def_for_operand, ptr @fprintf, i64 1}
!222 = !{ptr @vect_get_vec_def_for_operand, ptr @tree_cons_stat, i64 66}
!223 = !{ptr @vect_get_vec_def_for_operand, ptr @build_vector, i64 14}
!224 = !{ptr @vect_get_vec_def_for_operand, ptr @vect_init_vector, i64 15}
!225 = !{ptr @vect_get_vec_def_for_operand, ptr @build_constructor_from_list, i64 1}
!226 = !{ptr @vect_get_vec_def_for_operand, ptr @gimple_code, i64 11}
!227 = !{ptr @vect_get_vec_def_for_operand, ptr @gimple_phi_result_ptr, i64 2}
!228 = !{ptr @vect_get_vec_def_for_operand, ptr @get_def_from_ptr, i64 2}
!229 = !{ptr @vect_get_vec_def_for_operand, ptr @is_gimple_call, i64 7}
!230 = !{ptr @vect_get_vec_def_for_operand, ptr @gimple_call_lhs, i64 1}
!231 = !{ptr @vect_get_vec_def_for_operand, ptr @gimple_assign_lhs, i64 6}
!232 = !{ptr @vect_get_vec_def_for_operand, ptr @gimple_bb, i64 2}
!233 = !{ptr @vect_get_vec_def_for_operand, ptr @loop_preheader_edge, i64 2}
!234 = !{ptr @vect_get_vec_def_for_operand, ptr @gimple_phi_arg_imm_use_ptr, i64 2}
!235 = !{ptr @vect_get_vec_def_for_operand, ptr @get_use_from_ptr, i64 2}
!236 = !{ptr @vect_get_vec_def_for_operand, ptr @get_initial_def_for_reduction, i64 2}
!237 = !{ptr @get_vectype_for_scalar_type, ptr @vector_type_mode, i64 29}
!238 = !{ptr @get_vectype_for_scalar_type, ptr @build_vector_type, i64 1}
!239 = !{ptr @get_vectype_for_scalar_type, ptr @vect_print_dump_info, i64 2}
!240 = !{ptr @get_vectype_for_scalar_type, ptr @fprintf, i64 1}
!241 = !{ptr @get_vectype_for_scalar_type, ptr @print_generic_expr, i64 1}
!242 = !{ptr @is_gimple_call, ptr @gimple_code, i64 32}
!243 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 2}
!244 = !{ptr @set_vinfo_for_stmt, ptr @gimple_uid, i64 697828}
!245 = !{ptr @set_vinfo_for_stmt, ptr @fancy_abort, i64 1}
!246 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 32}
!247 = !{ptr @set_vinfo_for_stmt, ptr @gimple_set_uid, i64 32}
!248 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_heap_safe_push, i64 32}
!249 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_base_replace, i64 697796}
!250 = !{ptr @new_stmt_vec_info, ptr @xcalloc, i64 697818}
!251 = !{ptr @new_stmt_vec_info, ptr @gimple_code, i64 697818}
!252 = !{ptr @new_stmt_vec_info, ptr @gimple_bb, i64 2617}
!253 = !{ptr @new_stmt_vec_info, ptr @is_loop_header_bb_p, i64 2617}
!254 = !{ptr @new_stmt_vec_info, ptr @VEC_dr_p_heap_alloc, i64 697818}
!255 = !{ptr @VEC_vec_void_p_heap_safe_push, ptr @VEC_vec_void_p_heap_reserve, i64 31}
!256 = !{ptr @VEC_vec_void_p_heap_safe_push, ptr @VEC_vec_void_p_base_quick_push, i64 31}
!257 = !{ptr @VEC_vec_void_p_heap_reserve, ptr @VEC_vec_void_p_base_space, i64 31}
!258 = !{ptr @VEC_vec_void_p_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!259 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 242}
!260 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 436}
!261 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 436}
!262 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 401}
!263 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 436}
!264 = !{ptr @vect_analyze_stmt, ptr @vinfo_for_stmt, i64 105}
!265 = !{ptr @vect_analyze_stmt, ptr @vect_print_dump_info, i64 177}
!266 = !{ptr @vect_analyze_stmt, ptr @fwrite, i64 4}
!267 = !{ptr @vect_analyze_stmt, ptr @print_gimple_stmt, i64 1}
!268 = !{ptr @vect_analyze_stmt, ptr @gimple_has_volatile_ops, i64 104}
!269 = !{ptr @vect_analyze_stmt, ptr @fancy_abort, i64 11}
!270 = !{ptr @vect_analyze_stmt, ptr @vect_get_smallest_scalar_type, i64 1}
!271 = !{ptr @vect_analyze_stmt, ptr @print_generic_expr, i64 1}
!272 = !{ptr @vect_analyze_stmt, ptr @get_vectype_for_scalar_type, i64 1}
!273 = !{ptr @vect_analyze_stmt, ptr @gimple_expr_type, i64 354}
!274 = !{ptr @vect_analyze_stmt, ptr @vector_type_mode, i64 6}
!275 = !{ptr @vect_analyze_stmt, ptr @vectorizable_type_promotion, i64 31}
!276 = !{ptr @vect_analyze_stmt, ptr @vectorizable_type_demotion, i64 30}
!277 = !{ptr @vect_analyze_stmt, ptr @vectorizable_conversion, i64 29}
!278 = !{ptr @vect_analyze_stmt, ptr @vectorizable_operation, i64 30}
!279 = !{ptr @vect_analyze_stmt, ptr @vectorizable_assignment, i64 26}
!280 = !{ptr @vect_analyze_stmt, ptr @vectorizable_load, i64 25}
!281 = !{ptr @vect_analyze_stmt, ptr @vectorizable_call, i64 19}
!282 = !{ptr @vect_analyze_stmt, ptr @vectorizable_store, i64 18}
!283 = !{ptr @vect_analyze_stmt, ptr @vectorizable_reduction, i64 1}
!284 = !{ptr @vect_analyze_stmt, ptr @exact_log2, i64 1}
!285 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 104}
!286 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 384}
!287 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 383}
!288 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 1}
!289 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 382}
!290 = !{ptr @vectorizable_type_promotion, ptr @vinfo_for_stmt, i64 32}
!291 = !{ptr @vectorizable_type_promotion, ptr @fancy_abort, i64 1}
!292 = !{ptr @vectorizable_type_promotion, ptr @is_gimple_assign, i64 30}
!293 = !{ptr @vectorizable_type_promotion, ptr @gimple_assign_lhs, i64 33}
!294 = !{ptr @vectorizable_type_promotion, ptr @gimple_assign_rhs_code, i64 9}
!295 = !{ptr @vectorizable_type_promotion, ptr @gimple_assign_rhs1, i64 6}
!296 = !{ptr @vectorizable_type_promotion, ptr @get_vectype_for_scalar_type, i64 10}
!297 = !{ptr @vectorizable_type_promotion, ptr @vect_create_destination_var, i64 1}
!298 = !{ptr @vectorizable_type_promotion, ptr @VEC_tree_base_quick_push, i64 1}
!299 = !{ptr @vectorizable_type_promotion, ptr @VEC_tree_base_iterate, i64 1}
!300 = !{ptr @vectorizable_type_promotion, ptr @vect_get_vec_def_for_stmt_copy, i64 2}
!301 = !{ptr @vectorizable_type_promotion, ptr @VEC_tree_base_replace, i64 2}
!302 = !{ptr @vectorizable_type_promotion, ptr @VEC_tree_heap_copy, i64 2}
!303 = !{ptr @vectorizable_type_promotion, ptr @vect_create_vectorized_promotion_stmts, i64 2}
!304 = !{ptr @vectorizable_type_demotion, ptr @vinfo_for_stmt, i64 32}
!305 = !{ptr @vectorizable_type_demotion, ptr @fancy_abort, i64 1}
!306 = !{ptr @vectorizable_type_demotion, ptr @is_gimple_assign, i64 30}
!307 = !{ptr @vectorizable_type_demotion, ptr @gimple_assign_lhs, i64 33}
!308 = !{ptr @vectorizable_type_demotion, ptr @gimple_assign_rhs_code, i64 9}
!309 = !{ptr @vectorizable_type_demotion, ptr @gimple_assign_rhs1, i64 6}
!310 = !{ptr @vectorizable_type_demotion, ptr @get_vectype_for_scalar_type, i64 10}
!311 = !{ptr @vectorizable_type_demotion, ptr @vect_create_destination_var, i64 1}
!312 = !{ptr @vectorizable_type_demotion, ptr @VEC_tree_base_quick_push, i64 1}
!313 = !{ptr @vectorizable_type_demotion, ptr @VEC_tree_base_iterate, i64 1}
!314 = !{ptr @vectorizable_type_demotion, ptr @vect_get_slp_defs, i64 1}
!315 = !{ptr @vectorizable_type_demotion, ptr @VEC_tree_heap_free, i64 1}
!316 = !{ptr @vectorizable_type_demotion, ptr @vect_pow2, i64 2}
!317 = !{ptr @vectorizable_type_demotion, ptr @VEC_tree_heap_alloc, i64 1}
!318 = !{ptr @vectorizable_type_demotion, ptr @vect_get_loop_based_defs, i64 1}
!319 = !{ptr @vectorizable_type_demotion, ptr @VEC_tree_heap_copy, i64 2}
!320 = !{ptr @vectorizable_type_demotion, ptr @vect_create_vectorized_demotion_stmts, i64 2}
!321 = !{ptr @vectorizable_conversion, ptr @vinfo_for_stmt, i64 32}
!322 = !{ptr @vectorizable_conversion, ptr @fancy_abort, i64 1}
!323 = !{ptr @vectorizable_conversion, ptr @is_gimple_assign, i64 30}
!324 = !{ptr @vectorizable_conversion, ptr @gimple_assign_lhs, i64 30}
!325 = !{ptr @vectorizable_conversion, ptr @gimple_assign_rhs_code, i64 9}
!326 = !{ptr @vectorizable_conversion, ptr @gimple_assign_rhs1, i64 1}
!327 = !{ptr @vectorizable_conversion, ptr @get_vectype_for_scalar_type, i64 2}
!328 = !{ptr @vectorizable_conversion, ptr @gimple_build_call, i64 5}
!329 = !{ptr @vectorizable_conversion, ptr @make_ssa_name, i64 5}
!330 = !{ptr @vectorizable_conversion, ptr @gimple_call_set_lhs, i64 5}
!331 = !{ptr @vectorizable_conversion, ptr @vect_finish_stmt_generation, i64 5}
!332 = !{ptr @vectorizable_conversion, ptr @VEC_gimple_base_quick_push, i64 3}
!333 = !{ptr @vectorizable_conversion, ptr @VEC_tree_base_iterate, i64 5}
!334 = !{ptr @vectorizable_operation, ptr @vinfo_for_stmt, i64 35}
!335 = !{ptr @vectorizable_operation, ptr @fancy_abort, i64 1}
!336 = !{ptr @vectorizable_operation, ptr @is_gimple_assign, i64 33}
!337 = !{ptr @vectorizable_operation, ptr @gimple_assign_lhs, i64 43}
!338 = !{ptr @vectorizable_operation, ptr @get_vectype_for_scalar_type, i64 11}
!339 = !{ptr @vectorizable_operation, ptr @gimple_assign_rhs_code, i64 9}
!340 = !{ptr @vectorizable_operation, ptr @vect_print_dump_info, i64 9}
!341 = !{ptr @vectorizable_operation, ptr @fprintf, i64 1}
!342 = !{ptr @vectorizable_operation, ptr @gimple_assign_rhs1, i64 6}
!343 = !{ptr @vectorizable_operation, ptr @vect_is_simple_use, i64 9}
!344 = !{ptr @vectorizable_operation, ptr @fwrite, i64 1}
!345 = !{ptr @vectorizable_operation, ptr @gimple_assign_rhs2, i64 3}
!346 = !{ptr @vectorizable_operation, ptr @optab_for_tree_code, i64 2}
!347 = !{ptr @vectorizable_operation, ptr @vector_type_mode, i64 8}
!348 = !{ptr @vectorizable_operation, ptr @vect_min_worthwhile_factor, i64 1}
!349 = !{ptr @vectorizable_operation, ptr @vect_model_simple_cost, i64 1}
!350 = !{ptr @vectorizable_operation, ptr @vect_create_destination_var, i64 1}
!351 = !{ptr @vectorizable_operation, ptr @VEC_tree_heap_alloc, i64 1}
!352 = !{ptr @vectorizable_operation, ptr @VEC_tree_base_quick_push, i64 1}
!353 = !{ptr @vectorizable_operation, ptr @VEC_tree_base_iterate, i64 2}
!354 = !{ptr @vectorizable_operation, ptr @VEC_tree_base_index, i64 1}
!355 = !{ptr @vectorizable_operation, ptr @gimple_build_assign_with_ops_stat, i64 1}
!356 = !{ptr @vectorizable_operation, ptr @make_ssa_name, i64 1}
!357 = !{ptr @vectorizable_operation, ptr @gimple_assign_set_lhs, i64 1}
!358 = !{ptr @vectorizable_operation, ptr @vect_finish_stmt_generation, i64 1}
!359 = !{ptr @vectorizable_operation, ptr @VEC_tree_heap_free, i64 2}
!360 = !{ptr @vectorizable_assignment, ptr @vinfo_for_stmt, i64 33}
!361 = !{ptr @vectorizable_assignment, ptr @fancy_abort, i64 1}
!362 = !{ptr @vectorizable_assignment, ptr @is_gimple_assign, i64 29}
!363 = !{ptr @vectorizable_assignment, ptr @gimple_assign_lhs, i64 28}
!364 = !{ptr @vectorizable_assignment, ptr @gimple_assign_single_p, i64 7}
!365 = !{ptr @vectorizable_assignment, ptr @gimple_assign_rhs_code, i64 1}
!366 = !{ptr @vectorizable_assignment, ptr @gimple_assign_rhs1, i64 7}
!367 = !{ptr @vectorizable_assignment, ptr @vect_is_simple_use, i64 7}
!368 = !{ptr @vectorizable_assignment, ptr @vect_print_dump_info, i64 6}
!369 = !{ptr @vectorizable_assignment, ptr @fwrite, i64 1}
!370 = !{ptr @vectorizable_assignment, ptr @vect_get_vec_defs, i64 3}
!371 = !{ptr @vectorizable_assignment, ptr @vect_get_vec_defs_for_stmt_copy, i64 6}
!372 = !{ptr @vectorizable_assignment, ptr @VEC_tree_base_iterate, i64 191}
!373 = !{ptr @vectorizable_assignment, ptr @gimple_build_assign_stat, i64 182}
!374 = !{ptr @vectorizable_assignment, ptr @make_ssa_name, i64 182}
!375 = !{ptr @vectorizable_assignment, ptr @gimple_assign_set_lhs, i64 182}
!376 = !{ptr @vectorizable_assignment, ptr @vect_finish_stmt_generation, i64 182}
!377 = !{ptr @vectorizable_assignment, ptr @VEC_gimple_base_quick_push, i64 114}
!378 = !{ptr @vectorizable_load, ptr @vinfo_for_stmt, i64 41}
!379 = !{ptr @vectorizable_load, ptr @gimple_bb, i64 37}
!380 = !{ptr @vectorizable_load, ptr @nested_in_vect_loop_p, i64 40}
!381 = !{ptr @vectorizable_load, ptr @fancy_abort, i64 1}
!382 = !{ptr @vectorizable_load, ptr @is_gimple_assign, i64 35}
!383 = !{ptr @vectorizable_load, ptr @gimple_assign_lhs, i64 35}
!384 = !{ptr @vectorizable_load, ptr @gimple_assign_rhs_code, i64 13}
!385 = !{ptr @vectorizable_load, ptr @vector_type_mode, i64 10}
!386 = !{ptr @vectorizable_load, ptr @vect_print_dump_info, i64 7}
!387 = !{ptr @vectorizable_load, ptr @useless_type_conversion_p, i64 10}
!388 = !{ptr @vectorizable_load, ptr @vect_strided_load_supported, i64 1}
!389 = !{ptr @vectorizable_load, ptr @vect_model_load_cost, i64 5}
!390 = !{ptr @vectorizable_load, ptr @fwrite, i64 1}
!391 = !{ptr @vectorizable_load, ptr @vect_supportable_dr_alignment, i64 4}
!392 = !{ptr @vectorizable_load, ptr @vect_create_data_ref_ptr, i64 4}
!393 = !{ptr @vectorizable_load, ptr @aligned_access_p, i64 3}
!394 = !{ptr @vectorizable_load, ptr @build_fold_indirect_ref_loc, i64 3}
!395 = !{ptr @vectorizable_load, ptr @get_alias_set, i64 8}
!396 = !{ptr @vectorizable_load, ptr @gimple_assign_rhs1, i64 4}
!397 = !{ptr @vectorizable_load, ptr @alias_sets_conflict_p, i64 4}
!398 = !{ptr @vectorizable_load, ptr @vect_create_destination_var, i64 5}
!399 = !{ptr @vectorizable_load, ptr @gimple_build_assign_stat, i64 5}
!400 = !{ptr @vectorizable_load, ptr @make_ssa_name, i64 5}
!401 = !{ptr @vectorizable_load, ptr @gimple_assign_set_lhs, i64 5}
!402 = !{ptr @vectorizable_load, ptr @vect_finish_stmt_generation, i64 5}
!403 = !{ptr @vectorizable_load, ptr @mark_symbols_for_renaming, i64 4}
!404 = !{ptr @vectorizable_load, ptr @build3_stat, i64 1}
!405 = !{ptr @vectorizable_load, ptr @tree_cons_stat, i64 2}
!406 = !{ptr @vectorizable_load, ptr @VEC_tree_base_quick_push, i64 1}
!407 = !{ptr @vectorizable_call, ptr @vinfo_for_stmt, i64 23}
!408 = !{ptr @vectorizable_call, ptr @fancy_abort, i64 1}
!409 = !{ptr @vectorizable_call, ptr @is_gimple_call, i64 20}
!410 = !{ptr @vectorizable_call, ptr @gimple_call_lhs, i64 1}
!411 = !{ptr @vectorizable_call, ptr @gimple_call_arg, i64 9}
!412 = !{ptr @vectorizable_call, ptr @types_compatible_p, i64 2}
!413 = !{ptr @vectorizable_call, ptr @vect_is_simple_use, i64 2}
!414 = !{ptr @vectorizable_call, ptr @vect_get_vec_def_for_operand, i64 2}
!415 = !{ptr @vectorizable_call, ptr @vect_get_vec_def_for_stmt_copy, i64 4}
!416 = !{ptr @vectorizable_call, ptr @VEC_tree_base_quick_push, i64 6}
!417 = !{ptr @vectorizable_store, ptr @vinfo_for_stmt, i64 102}
!418 = !{ptr @vectorizable_store, ptr @fancy_abort, i64 8}
!419 = !{ptr @vectorizable_store, ptr @nested_in_vect_loop_p, i64 44}
!420 = !{ptr @vectorizable_store, ptr @is_gimple_assign, i64 43}
!421 = !{ptr @vectorizable_store, ptr @gimple_assign_lhs, i64 62}
!422 = !{ptr @vectorizable_store, ptr @gimple_assign_single_p, i64 61}
!423 = !{ptr @vectorizable_store, ptr @gimple_assign_rhs1, i64 62}
!424 = !{ptr @vectorizable_store, ptr @vect_is_simple_use, i64 61}
!425 = !{ptr @vectorizable_store, ptr @vect_print_dump_info, i64 21}
!426 = !{ptr @vectorizable_store, ptr @fwrite, i64 2}
!427 = !{ptr @vectorizable_store, ptr @useless_type_conversion_p, i64 59}
!428 = !{ptr @vectorizable_store, ptr @vector_type_mode, i64 39}
!429 = !{ptr @vectorizable_store, ptr @vect_strided_store_supported, i64 1}
!430 = !{ptr @vectorizable_store, ptr @vect_model_store_cost, i64 20}
!431 = !{ptr @vectorizable_store, ptr @fprintf, i64 1}
!432 = !{ptr @vectorizable_store, ptr @VEC_tree_heap_alloc, i64 39}
!433 = !{ptr @vectorizable_store, ptr @vect_supportable_dr_alignment, i64 19}
!434 = !{ptr @vectorizable_store, ptr @vect_get_slp_defs, i64 1}
!435 = !{ptr @vectorizable_store, ptr @VEC_tree_base_index, i64 19}
!436 = !{ptr @vectorizable_store, ptr @vect_get_vec_def_for_operand, i64 17}
!437 = !{ptr @vectorizable_store, ptr @VEC_tree_base_quick_push, i64 34}
!438 = !{ptr @vectorizable_store, ptr @vect_create_data_ref_ptr, i64 18}
!439 = !{ptr @vectorizable_store, ptr @vect_get_vec_def_for_stmt_copy, i64 16}
!440 = !{ptr @vectorizable_store, ptr @VEC_tree_base_replace, i64 32}
!441 = !{ptr @vectorizable_store, ptr @bump_vector_ptr, i64 2}
!442 = !{ptr @vectorizable_store, ptr @vect_permute_store_chain, i64 1}
!443 = !{ptr @vectorizable_store, ptr @aligned_access_p, i64 20}
!444 = !{ptr @vectorizable_store, ptr @build_fold_indirect_ref_loc, i64 19}
!445 = !{ptr @vectorizable_store, ptr @size_int_kind, i64 1}
!446 = !{ptr @vectorizable_store, ptr @size_binop_loc, i64 1}
!447 = !{ptr @vectorizable_store, ptr @build2_stat, i64 1}
!448 = !{ptr @vectorizable_store, ptr @get_alias_set, i64 40}
!449 = !{ptr @vectorizable_store, ptr @alias_sets_conflict_p, i64 20}
!450 = !{ptr @vectorizable_store, ptr @gimple_build_assign_stat, i64 20}
!451 = !{ptr @vectorizable_store, ptr @vect_finish_stmt_generation, i64 20}
!452 = !{ptr @vectorizable_store, ptr @mark_symbols_for_renaming, i64 20}
!453 = !{ptr @vectorizable_store, ptr @VEC_tree_heap_free, i64 39}
!454 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 4}
!455 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 3}
!456 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 52}
!457 = !{ptr @VEC_tree_heap_free, ptr @free, i64 47}
!458 = !{ptr @vect_get_vec_defs, ptr @vect_get_slp_defs, i64 1}
!459 = !{ptr @vect_get_vec_defs, ptr @VEC_tree_heap_alloc, i64 3}
!460 = !{ptr @vect_get_vec_defs, ptr @vect_get_vec_def_for_operand, i64 3}
!461 = !{ptr @vect_get_vec_defs, ptr @VEC_tree_base_quick_push, i64 3}
!462 = !{ptr @vect_transform_stmt, ptr @vinfo_for_stmt, i64 33}
!463 = !{ptr @vect_transform_stmt, ptr @vectorizable_type_demotion, i64 1}
!464 = !{ptr @vect_transform_stmt, ptr @vectorizable_type_promotion, i64 1}
!465 = !{ptr @vect_transform_stmt, ptr @vectorizable_conversion, i64 1}
!466 = !{ptr @vect_transform_stmt, ptr @vectorizable_induction, i64 1}
!467 = !{ptr @vect_transform_stmt, ptr @vectorizable_operation, i64 2}
!468 = !{ptr @vect_transform_stmt, ptr @fancy_abort, i64 3}
!469 = !{ptr @vect_transform_stmt, ptr @vectorizable_assignment, i64 1}
!470 = !{ptr @vect_transform_stmt, ptr @vectorizable_load, i64 6}
!471 = !{ptr @vect_transform_stmt, ptr @vectorizable_store, i64 17}
!472 = !{ptr @vect_transform_stmt, ptr @vectorizable_condition, i64 1}
!473 = !{ptr @vect_transform_stmt, ptr @vectorizable_call, i64 1}
!474 = !{ptr @vect_transform_stmt, ptr @vectorizable_reduction, i64 1}
!475 = !{ptr @vect_transform_stmt, ptr @nested_in_vect_loop_p, i64 29}
!476 = !{ptr @vect_transform_stmt, ptr @gimple_bb, i64 3}
!477 = !{ptr @vect_transform_stmt, ptr @flow_bb_inside_loop_p, i64 3}
!478 = !{ptr @vect_transform_stmt, ptr @next_readonly_imm_use, i64 3}
!479 = !{ptr @vect_transform_stmt, ptr @end_readonly_imm_use_p, i64 3}
!480 = !{ptr @free_stmt_vec_info, ptr @vinfo_for_stmt, i64 697847}
!481 = !{ptr @free_stmt_vec_info, ptr @VEC_dr_p_heap_free, i64 697796}
!482 = !{ptr @free_stmt_vec_info, ptr @set_vinfo_for_stmt, i64 697796}
!483 = !{ptr @free_stmt_vec_info, ptr @free, i64 697796}
!484 = !{ptr @is_loop_header_bb_p, ptr @VEC_edge_base_length, i64 1}
!485 = !{ptr @VEC_dr_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 697818}
!486 = !{ptr @init_stmt_vec_info_vec, ptr @fancy_abort, i64 1}
!487 = !{ptr @init_stmt_vec_info_vec, ptr @VEC_vec_void_p_heap_alloc, i64 9279}
!488 = !{ptr @VEC_vec_void_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 9279}
!489 = !{ptr @free_stmt_vec_info_vec, ptr @fancy_abort, i64 1}
!490 = !{ptr @free_stmt_vec_info_vec, ptr @VEC_vec_void_p_heap_free, i64 9279}
!491 = !{ptr @VEC_vec_void_p_heap_free, ptr @free, i64 9278}
!492 = !{ptr @VEC_dr_p_heap_free, ptr @free, i64 697796}
!493 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!494 = !{!"function_entry_count", i64 190}
!495 = !{!496, !497, i64 0}
!496 = !{!"_loop_vec_info", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !500, i64 32, !498, i64 36, !500, i64 40, !497, i64 48, !500, i64 56, !500, i64 60, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !500, i64 96, !497, i64 104, !497, i64 112, !500, i64 120}
!497 = !{!"any pointer", !498, i64 0}
!498 = !{!"omnipotent char", !499, i64 0}
!499 = !{!"Simple C/C++ TBAA"}
!500 = !{!"int", !498, i64 0}
!501 = !{!496, !497, i64 8}
!502 = !{!503, !500, i64 36}
!503 = !{!"loop", !500, i64 0, !500, i64 4, !497, i64 8, !497, i64 16, !504, i64 24, !500, i64 32, !500, i64 36, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !505, i64 80, !505, i64 96, !498, i64 112, !498, i64 113, !500, i64 116, !497, i64 120, !497, i64 128, !498, i64 136, !497, i64 144}
!504 = !{!"lpt_decision", !500, i64 0, !500, i64 4}
!505 = !{!"", !506, i64 0, !506, i64 8}
!506 = !{!"long", !498, i64 0}
!507 = !{!"branch_weights", i32 191, i32 1}
!508 = !{!497, !497, i64 0}
!509 = !{!"branch_weights", i32 1, i32 190}
!510 = !{!"branch_weights", i32 1, i32 241}
!511 = !{i8 0, i8 2}
!512 = !{!"branch_weights", i32 380, i32 1}
!513 = !{!"branch_weights", i32 489, i32 1}
!514 = !{!500, !500, i64 0}
!515 = !{!498, !498, i64 0}
!516 = !{!"branch_weights", i32 109, i32 380}
!517 = distinct !{!517, !518}
!518 = !{!"llvm.loop.mustprogress"}
!519 = !{i64 0, i64 8, !508, i64 8, i64 8, !508, i64 16, i64 8, !508}
!520 = !{!"branch_weights", i32 988, i32 1}
!521 = !{!"branch_weights", i32 879, i32 110}
!522 = !{!"branch_weights", i32 608, i32 380}
!523 = distinct !{!523, !518}
!524 = !{!"branch_weights", i32 190, i32 191}
!525 = distinct !{!525, !518}
!526 = !{!"branch_weights", i32 394, i32 1}
!527 = !{!528, !500, i64 24}
!528 = !{!"_stmt_vec_info", !500, i64 0, !497, i64 8, !497, i64 16, !500, i64 24, !498, i64 28, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !498, i64 96, !497, i64 104, !497, i64 112, !500, i64 120, !497, i64 128, !497, i64 136, !500, i64 144, !500, i64 148, !500, i64 152, !497, i64 160, !498, i64 168, !529, i64 172, !500, i64 180, !497, i64 184}
!529 = !{!"", !500, i64 0, !500, i64 4}
!530 = !{!528, !498, i64 28}
!531 = !{!528, !500, i64 120}
!532 = !{!"branch_weights", i32 390, i32 5, i32 1, i32 1}
!533 = !{!"branch_weights", i32 1, i32 3, i32 3}
!534 = !{i32 0, i32 256}
!535 = !{!"branch_weights", i32 3, i32 1}
!536 = !{!"branch_weights", i32 8, i32 387}
!537 = !{!"branch_weights", i32 323, i32 1}
!538 = !{!"branch_weights", i32 71, i32 433}
!539 = !{!"branch_weights", i32 180, i32 323}
!540 = distinct !{!540, !518}
!541 = !{!"branch_weights", i32 241, i32 547}
!542 = distinct !{!542, !518}
!543 = !{!"tree-vect-stmts.c:VEC_gimple_heap_alloc"}
!544 = !{!"function_entry_count", i64 2235}
!545 = !{!"tree-vect-stmts.c:gsi_end_p"}
!546 = !{!547, !497, i64 0}
!547 = !{!"", !497, i64 0, !497, i64 8, !497, i64 16}
!548 = !{!"function_entry_count", i64 1506}
!549 = !{!"tree-vect-stmts.c:gsi_stmt"}
!550 = !{!551, !497, i64 0}
!551 = !{!"gimple_seq_node_d", !497, i64 0, !497, i64 8, !497, i64 16}
!552 = !{!"function_entry_count", i64 1475}
!553 = !{!"tree-vect-stmts.c:vect_stmt_relevant_p"}
!554 = !{!"branch_weights", i32 1286, i32 191}
!555 = !{!528, !500, i64 0}
!556 = !{!"branch_weights", i32 489, i32 988}
!557 = !{!"branch_weights", i32 956, i32 33}
!558 = !{!"branch_weights", i32 33, i32 1}
!559 = !{!"branch_weights", i32 1175, i32 301}
!560 = !{!"branch_weights", i32 1174, i32 1}
!561 = !{!"branch_weights", i32 78, i32 1561}
!562 = !{!"branch_weights", i32 78, i32 1}
!563 = !{!564, !497, i64 8}
!564 = !{!"edge_def", !497, i64 0, !497, i64 8, !498, i64 16, !497, i64 24, !497, i64 32, !500, i64 40, !500, i64 44, !500, i64 48, !500, i64 52, !506, i64 56}
!565 = !{!"branch_weights", i32 464, i32 1174}
!566 = distinct !{!566, !518}
!567 = !{!"branch_weights", i32 0, i32 1175}
!568 = distinct !{!568, !518}
!569 = !{!"branch_weights", i32 1399, i32 78}
!570 = !{!"function_entry_count", i64 424}
!571 = !{!"tree-vect-stmts.c:vect_mark_relevant"}
!572 = !{!"branch_weights", i32 425, i32 1}
!573 = !{!528, !498, i64 96}
!574 = !{!528, !497, i64 104}
!575 = !{!"branch_weights", i32 60, i32 366}
!576 = !{!"branch_weights", i32 2928, i32 153414}
!577 = !{!"branch_weights", i32 8, i32 1}
!578 = !{!"tree-vect-stmts.c:gsi_next"}
!579 = !{!551, !497, i64 16}
!580 = !{!"function_entry_count", i64 380}
!581 = !{!"tree-vect-stmts.c:gsi_start_bb"}
!582 = !{!547, !497, i64 8}
!583 = !{!547, !497, i64 16}
!584 = !{!"function_entry_count", i64 513}
!585 = !{!"tree-vect-stmts.c:VEC_gimple_base_length"}
!586 = !{!"branch_weights", i32 1, i32 514}
!587 = !{!588, !500, i64 0}
!588 = !{!"VEC_gimple_base", !500, i64 0, !500, i64 4, !498, i64 8}
!589 = !{!"function_entry_count", i64 393}
!590 = !{!"tree-vect-stmts.c:VEC_gimple_base_pop"}
!591 = !{!"function_entry_count", i64 701242}
!592 = !{!"tree-vect-stmts.c:vinfo_for_stmt"}
!593 = !{!"branch_weights", i32 51, i32 701193}
!594 = !{!"branch_weights", i32 1, i32 701193}
!595 = !{!"function_entry_count", i64 714758}
!596 = !{!"tree-vect-stmts.c:gimple_code"}
!597 = !{!"tree-vect-stmts.c:VEC_gimple_heap_free"}
!598 = !{!"branch_weights", i32 1, i32 191}
!599 = !{!"function_entry_count", i64 7}
!600 = !{!"tree-vect-stmts.c:op_iter_init_phiuse"}
!601 = !{!602, !498, i64 0}
!602 = !{!"ssa_operand_iterator_d", !498, i64 0, !500, i64 4, !497, i64 8, !497, i64 16, !500, i64 24, !500, i64 28, !497, i64 32}
!603 = !{!"branch_weights", i32 1, i32 8}
!604 = !{!602, !497, i64 32}
!605 = !{!602, !500, i64 28}
!606 = !{!602, !500, i64 4}
!607 = !{!"function_entry_count", i64 386}
!608 = !{!"tree-vect-stmts.c:op_iter_init_use"}
!609 = !{!"function_entry_count", i64 3474}
!610 = !{!"tree-vect-stmts.c:op_iter_done"}
!611 = !{!"function_entry_count", i64 502}
!612 = !{!"tree-vect-stmts.c:get_use_from_ptr"}
!613 = !{!614, !497, i64 24}
!614 = !{!"ssa_use_operand_d", !497, i64 0, !497, i64 8, !498, i64 16, !497, i64 24}
!615 = !{!"tree-vect-stmts.c:process_use"}
!616 = !{!"branch_weights", i32 107, i32 397}
!617 = !{!"branch_weights", i32 71, i32 327}
!618 = !{!"branch_weights", i32 71, i32 1}
!619 = !{!"branch_weights", i32 5, i32 323}
!620 = !{!"branch_weights", i32 322, i32 2}
!621 = !{!"branch_weights", i32 5, i32 318}
!622 = !{!"branch_weights", i32 5, i32 1}
!623 = !{!"branch_weights", i32 8, i32 311}
!624 = !{!"branch_weights", i32 3, i32 6}
!625 = !{!"branch_weights", i32 1, i32 3}
!626 = !{!627, !497, i64 24}
!627 = !{!"basic_block_def", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !498, i64 32, !497, i64 48, !497, i64 56, !498, i64 64, !506, i64 72, !500, i64 80, !500, i64 84, !500, i64 88, !500, i64 92, !500, i64 96}
!628 = !{!"branch_weights", i32 316, i32 1}
!629 = !{!"function_entry_count", i64 825}
!630 = !{!"tree-vect-stmts.c:op_iter_next_use"}
!631 = !{!602, !497, i64 16}
!632 = !{!"branch_weights", i32 338, i32 489}
!633 = !{!634, !497, i64 0}
!634 = !{!"use_optype_d", !497, i64 0, !614, i64 8}
!635 = !{!602, !500, i64 24}
!636 = !{!"branch_weights", i32 15, i32 324}
!637 = !{!"function_entry_count", i64 1784}
!638 = !{!"tree-vect-stmts.c:gimple_vdef"}
!639 = !{!"branch_weights", i32 191, i32 1595}
!640 = !{!"function_entry_count", i64 488}
!641 = !{!"tree-vect-stmts.c:op_iter_init_phidef"}
!642 = !{!"branch_weights", i32 80, i32 410}
!643 = !{!"function_entry_count", i64 987}
!644 = !{!"tree-vect-stmts.c:op_iter_init_def"}
!645 = !{!"function_entry_count", i64 1174}
!646 = !{!"tree-vect-stmts.c:first_readonly_imm_use"}
!647 = !{!648, !497, i64 8}
!648 = !{!"immediate_use_iterator_d", !497, i64 0, !497, i64 8, !614, i64 16, !497, i64 48}
!649 = !{!614, !497, i64 8}
!650 = !{!648, !497, i64 0}
!651 = !{!"branch_weights", i32 1172, i32 4}
!652 = !{!"function_entry_count", i64 1662}
!653 = !{!"tree-vect-stmts.c:get_def_from_ptr"}
!654 = !{!"function_entry_count", i64 5622}
!655 = !{!"tree-vect-stmts.c:end_readonly_imm_use_p"}
!656 = !{!"function_entry_count", i64 5410}
!657 = !{!"tree-vect-stmts.c:gimple_bb"}
!658 = !{!"function_entry_count", i64 77}
!659 = !{!"tree-vect-stmts.c:is_gimple_debug"}
!660 = !{!"function_entry_count", i64 1637}
!661 = !{!"tree-vect-stmts.c:next_readonly_imm_use"}
!662 = !{!"branch_weights", i32 467, i32 1172}
!663 = !{!"function_entry_count", i64 2161}
!664 = !{!"tree-vect-stmts.c:op_iter_next_def"}
!665 = !{!602, !497, i64 8}
!666 = !{!"branch_weights", i32 1397, i32 766}
!667 = !{!668, !497, i64 8}
!668 = !{!"def_optype_d", !497, i64 0, !497, i64 8}
!669 = !{!668, !497, i64 0}
!670 = !{!"function_entry_count", i64 2274}
!671 = !{!"tree-vect-stmts.c:gimple_has_mem_ops"}
!672 = !{!"function_entry_count", i64 897}
!673 = !{!"tree-vect-stmts.c:gimple_phi_result_ptr"}
!674 = !{!"function_entry_count", i64 495}
!675 = !{!"tree-vect-stmts.c:clear_and_done_ssa_iter"}
!676 = !{!"function_entry_count", i64 1373}
!677 = !{!"tree-vect-stmts.c:op_iter_init"}
!678 = !{!"branch_weights", i32 387, i32 988}
!679 = !{!"branch_weights", i32 412977624, i32 1734506024}
!680 = !{!"branch_weights", i32 766, i32 33}
!681 = !{!"branch_weights", i32 988, i32 387}
!682 = !{!"branch_weights", i32 0, i32 -2147483648}
!683 = !{!"branch_weights", i32 285, i32 103}
!684 = !{!"tree-vect-stmts.c:gimple_def_ops"}
!685 = !{!"branch_weights", i32 1, i32 988}
!686 = !{!"tree-vect-stmts.c:gimple_use_ops"}
!687 = !{!"branch_weights", i32 1, i32 387}
!688 = !{!"tree-vect-stmts.c:gimple_vuse"}
!689 = !{!"function_entry_count", i64 2623}
!690 = !{!"tree-vect-stmts.c:gimple_has_ops"}
!691 = !{!"function_entry_count", i64 417}
!692 = !{!"tree-vect-stmts.c:VEC_gimple_heap_safe_push"}
!693 = !{!"tree-vect-stmts.c:VEC_gimple_heap_reserve"}
!694 = !{!"branch_weights", i32 1, i32 418}
!695 = !{!"tree-vect-stmts.c:VEC_gimple_base_quick_push"}
!696 = !{!"tree-vect-stmts.c:VEC_gimple_base_space"}
!697 = !{!588, !500, i64 4}
!698 = !{!"tree-vect-stmts.c:bb_seq"}
!699 = !{!627, !500, i64 96}
!700 = !{!"branch_weights", i32 381, i32 1}
!701 = !{!"branch_weights", i32 1, i32 381}
!702 = !{!703, !497, i64 0}
!703 = !{!"gimple_bb_info", !497, i64 0, !497, i64 8}
!704 = !{!"tree-vect-stmts.c:gimple_seq_first"}
!705 = !{!706, !497, i64 0}
!706 = !{!"gimple_seq_d", !497, i64 0, !497, i64 8, !497, i64 16}
!707 = !{!"function_entry_count", i64 1399070}
!708 = !{!"tree-vect-stmts.c:gimple_uid"}
!709 = !{!"function_entry_count", i64 701223}
!710 = !{!"tree-vect-stmts.c:VEC_vec_void_p_base_length"}
!711 = !{!"branch_weights", i32 1, i32 701224}
!712 = !{!713, !500, i64 0}
!713 = !{!"VEC_vec_void_p_base", !500, i64 0, !500, i64 4, !498, i64 8}
!714 = !{!"function_entry_count", i64 701192}
!715 = !{!"tree-vect-stmts.c:VEC_vec_void_p_base_index"}
!716 = !{!"function_entry_count", i64 19}
!717 = !{!"tree-vect-stmts.c:gimple_phi_result"}
!718 = !{!"tree-vect-stmts.c:gimple_phi_num_args"}
!719 = !{!"tree-vect-stmts.c:exist_non_indexing_operands_for_use_p"}
!720 = !{!528, !497, i64 48}
!721 = !{!"branch_weights", i32 386, i32 118}
!722 = !{!"branch_weights", i32 73, i32 46}
!723 = !{!"branch_weights", i32 1, i32 46}
!724 = !{!"branch_weights", i32 25, i32 22}
!725 = !{!"function_entry_count", i64 549}
!726 = !{!"branch_weights", i32 1, i32 550}
!727 = !{!"branch_weights", i32 550, i32 1}
!728 = !{!"branch_weights", i32 28271, i32 245025}
!729 = !{!"branch_weights", i32 494, i32 2}
!730 = !{!"branch_weights", i32 1, i32 494}
!731 = !{!"branch_weights", i32 484, i32 11}
!732 = !{!"branch_weights", i32 11, i32 1}
!733 = !{!"branch_weights", i32 1, i32 484}
!734 = !{!"branch_weights", i32 484, i32 1}
!735 = !{!"branch_weights", i32 483, i32 2}
!736 = !{!"branch_weights", i32 1, i32 483}
!737 = !{!"branch_weights", i32 6, i32 478}
!738 = !{!739, !497, i64 0}
!739 = !{!"_bb_vec_info", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32}
!740 = !{!"branch_weights", i32 594023267, i32 1553460381}
!741 = !{!"branch_weights", i32 132, i32 1}
!742 = !{!"branch_weights", i32 352, i32 1}
!743 = !{!"branch_weights", i32 1, i32 13, i32 338, i32 3}
!744 = !{!"function_entry_count", i64 805}
!745 = !{!"tree-vect-stmts.c:gimple_nop_p"}
!746 = !{!"function_entry_count", i64 683}
!747 = !{!"tree-vect-stmts.c:gimple_assign_lhs"}
!748 = !{!"function_entry_count", i64 535}
!749 = !{!"tree-vect-stmts.c:gimple_assign_rhs1"}
!750 = !{!"function_entry_count", i64 1224}
!751 = !{!"tree-vect-stmts.c:gimple_op"}
!752 = !{!"branch_weights", i32 1, i32 1225}
!753 = !{!"function_entry_count", i64 1250}
!754 = !{!"tree-vect-stmts.c:gimple_ops"}
!755 = !{!506, !506, i64 0}
!756 = !{!"branch_weights", i32 1, i32 1251}
!757 = !{!"tree-vect-stmts.c:gimple_statement_structure"}
!758 = !{!"tree-vect-stmts.c:gss_for_code"}
!759 = !{!"function_entry_count", i64 14}
!760 = !{!"tree-vect-stmts.c:gimple_phi_arg_imm_use_ptr"}
!761 = !{!"tree-vect-stmts.c:gimple_phi_arg"}
!762 = !{!"branch_weights", i32 1, i32 15}
!763 = !{!"function_entry_count", i64 32}
!764 = !{!"branch_weights", i32 2, i32 8, i32 24, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!765 = !{!766, !500, i64 376}
!766 = !{!"processor_costs", !500, i64 0, !500, i64 4, !500, i64 8, !500, i64 12, !498, i64 16, !500, i64 36, !498, i64 40, !500, i64 60, !500, i64 64, !500, i64 68, !500, i64 72, !500, i64 76, !498, i64 80, !498, i64 92, !500, i64 104, !498, i64 108, !498, i64 120, !500, i64 132, !498, i64 136, !498, i64 144, !500, i64 152, !498, i64 156, !498, i64 168, !500, i64 180, !500, i64 184, !500, i64 188, !500, i64 192, !500, i64 196, !500, i64 200, !500, i64 204, !500, i64 208, !500, i64 212, !500, i64 216, !500, i64 220, !500, i64 224, !498, i64 228, !498, i64 300, !500, i64 372, !500, i64 376, !500, i64 380, !500, i64 384, !500, i64 388, !500, i64 392, !500, i64 396, !500, i64 400, !500, i64 404, !500, i64 408, !500, i64 412}
!767 = !{!766, !500, i64 380}
!768 = !{!766, !500, i64 372}
!769 = !{!"function_entry_count", i64 2}
!770 = !{!528, !500, i64 180}
!771 = !{!766, !500, i64 384}
!772 = !{!"branch_weights", i32 15, i32 9}
!773 = !{!766, !500, i64 392}
!774 = !{!"branch_weights", i32 2, i32 3}
!775 = distinct !{!775, !518}
!776 = !{!"tree-vect-stmts.c:stmt_vinfo_set_inside_of_loop_cost"}
!777 = !{!"tree-vect-stmts.c:stmt_vinfo_set_outside_of_loop_cost"}
!778 = !{!"function_entry_count", i64 23}
!779 = !{!"branch_weights", i32 1, i32 24}
!780 = !{!"branch_weights", i32 161, i32 64}
!781 = !{!528, !497, i64 128}
!782 = !{!"branch_weights", i32 49, i32 1}
!783 = !{!"branch_weights", i32 -2147483648, i32 0}
!784 = !{!766, !500, i64 404}
!785 = !{!"branch_weights", i32 24, i32 1}
!786 = !{!"function_entry_count", i64 0}
!787 = !{!"tree-vect-stmts.c:vect_cost_strided_group_size"}
!788 = !{!528, !497, i64 8}
!789 = !{!528, !500, i64 144}
!790 = !{!"branch_weights", i32 17, i32 1}
!791 = !{!"branch_weights", i32 1, i32 8, i32 1, i32 1, i32 1}
!792 = !{!766, !500, i64 396}
!793 = !{!766, !500, i64 400}
!794 = !{!795, !497, i64 664}
!795 = !{!"gcc_target", !796, i64 0, !798, i64 368, !799, i64 664, !500, i64 744, !497, i64 752, !497, i64 760, !497, i64 768, !497, i64 776, !497, i64 784, !497, i64 792, !497, i64 800, !497, i64 808, !497, i64 816, !497, i64 824, !497, i64 832, !497, i64 840, !497, i64 848, !497, i64 856, !497, i64 864, !497, i64 872, !497, i64 880, !497, i64 888, !497, i64 896, !497, i64 904, !497, i64 912, !497, i64 920, !497, i64 928, !497, i64 936, !497, i64 944, !497, i64 952, !497, i64 960, !497, i64 968, !497, i64 976, !497, i64 984, !497, i64 992, !497, i64 1000, !497, i64 1008, !497, i64 1016, !497, i64 1024, !497, i64 1032, !497, i64 1040, !497, i64 1048, !497, i64 1056, !506, i64 1064, !506, i64 1072, !497, i64 1080, !497, i64 1088, !497, i64 1096, !497, i64 1104, !497, i64 1112, !497, i64 1120, !497, i64 1128, !497, i64 1136, !497, i64 1144, !497, i64 1152, !497, i64 1160, !497, i64 1168, !800, i64 1176, !497, i64 1232, !497, i64 1240, !497, i64 1248, !497, i64 1256, !497, i64 1264, !497, i64 1272, !497, i64 1280, !497, i64 1288, !497, i64 1296, !497, i64 1304, !497, i64 1312, !497, i64 1320, !497, i64 1328, !497, i64 1336, !497, i64 1344, !497, i64 1352, !497, i64 1360, !497, i64 1368, !497, i64 1376, !497, i64 1384, !497, i64 1392, !497, i64 1400, !497, i64 1408, !497, i64 1416, !497, i64 1424, !497, i64 1432, !497, i64 1440, !497, i64 1448, !497, i64 1456, !506, i64 1464, !801, i64 1472, !497, i64 1664, !497, i64 1672, !497, i64 1680, !497, i64 1688, !497, i64 1696, !497, i64 1704, !497, i64 1712, !497, i64 1720, !497, i64 1728, !497, i64 1736, !497, i64 1744, !497, i64 1752, !497, i64 1760, !497, i64 1768, !497, i64 1776, !802, i64 1784, !803, i64 1792, !804, i64 1896, !805, i64 1968, !497, i64 2016, !498, i64 2024, !498, i64 2025, !498, i64 2026, !498, i64 2027, !498, i64 2028, !498, i64 2029, !498, i64 2030, !498, i64 2031, !498, i64 2032, !498, i64 2033, !498, i64 2034, !498, i64 2035}
!796 = !{!"asm_out", !497, i64 0, !497, i64 8, !497, i64 16, !797, i64 24, !797, i64 56, !497, i64 88, !497, i64 96, !497, i64 104, !497, i64 112, !497, i64 120, !497, i64 128, !497, i64 136, !497, i64 144, !497, i64 152, !497, i64 160, !497, i64 168, !497, i64 176, !497, i64 184, !497, i64 192, !497, i64 200, !497, i64 208, !497, i64 216, !497, i64 224, !497, i64 232, !497, i64 240, !497, i64 248, !497, i64 256, !497, i64 264, !497, i64 272, !497, i64 280, !497, i64 288, !497, i64 296, !497, i64 304, !497, i64 312, !497, i64 320, !497, i64 328, !497, i64 336, !497, i64 344, !497, i64 352, !497, i64 360}
!797 = !{!"asm_int_op", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24}
!798 = !{!"sched", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !497, i64 96, !497, i64 104, !497, i64 112, !497, i64 120, !497, i64 128, !497, i64 136, !497, i64 144, !497, i64 152, !497, i64 160, !497, i64 168, !497, i64 176, !497, i64 184, !497, i64 192, !497, i64 200, !497, i64 208, !497, i64 216, !497, i64 224, !497, i64 232, !497, i64 240, !497, i64 248, !497, i64 256, !497, i64 264, !497, i64 272, !497, i64 280, !497, i64 288}
!799 = !{!"vectorize", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72}
!800 = !{!"addr_space", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48}
!801 = !{!"calls", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !497, i64 96, !497, i64 104, !497, i64 112, !497, i64 120, !497, i64 128, !497, i64 136, !497, i64 144, !497, i64 152, !497, i64 160, !497, i64 168, !497, i64 176, !497, i64 184}
!802 = !{!"c", !497, i64 0}
!803 = !{!"cxx", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !497, i64 96}
!804 = !{!"emutls", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !498, i64 64, !498, i64 65}
!805 = !{!"target_option_hooks", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40}
!806 = !{!"function_entry_count", i64 17}
!807 = !{!"branch_weights", i32 18, i32 1}
!808 = !{!528, !497, i64 16}
!809 = !{!"branch_weights", i32 1, i32 18}
!810 = !{!503, !497, i64 48}
!811 = !{!528, !497, i64 184}
!812 = !{!"function_entry_count", i64 26}
!813 = !{!"tree-vect-stmts.c:make_ssa_name"}
!814 = !{!"tree-vect-stmts.c:gimple_assign_set_lhs"}
!815 = !{!"branch_weights", i32 1, i32 27}
!816 = !{!"branch_weights", i32 27, i32 1}
!817 = !{!"function_entry_count", i64 31}
!818 = !{!"branch_weights", i32 1, i32 32}
!819 = !{!"branch_weights", i32 32, i32 1}
!820 = !{!"function_entry_count", i64 137}
!821 = !{!"tree-vect-stmts.c:nested_in_vect_loop_p"}
!822 = !{!"branch_weights", i32 138, i32 1}
!823 = !{!"tree-vect-stmts.c:gsi_after_labels"}
!824 = distinct !{!824, !518}
!825 = !{!"tree-vect-stmts.c:gimple_set_op"}
!826 = !{!"function_entry_count", i64 30}
!827 = !{!"tree-vect-stmts.c:gimple_num_ops"}
!828 = !{!528, !497, i64 32}
!829 = !{!"branch_weights", i32 1, i32 18, i32 1, i32 10, i32 1, i32 1, i32 1, i32 1}
!830 = !{!"branch_weights", i32 143, i32 1}
!831 = !{!"branch_weights", i32 143, i32 393}
!832 = distinct !{!832, !518}
!833 = distinct !{!833, !518}
!834 = !{!"branch_weights", i32 10, i32 1}
!835 = !{!528, !497, i64 40}
!836 = !{!"branch_weights", i32 1, i32 10}
!837 = !{!564, !500, i64 44}
!838 = !{!"function_entry_count", i64 81869}
!839 = !{!"branch_weights", i32 22, i32 81849}
!840 = !{!"branch_weights", i32 118, i32 81753}
!841 = !{!"branch_weights", i32 81753, i32 1}
!842 = !{!"branch_weights", i32 1, i32 67612}
!843 = !{!"branch_weights", i32 1, i32 14142}
!844 = !{!"branch_weights", i32 -1532520241, i32 195308}
!845 = !{!"branch_weights", i32 13783, i32 360}
!846 = !{!"branch_weights", i32 13783, i32 1}
!847 = !{!"branch_weights", i32 1, i32 13783}
!848 = !{!"tree-vect-stmts.c:is_gimple_call"}
!849 = !{!"tree-vect-stmts.c:gimple_call_lhs"}
!850 = !{!"function_entry_count", i64 697828}
!851 = !{!"tree-vect-stmts.c:set_vinfo_for_stmt"}
!852 = !{!"branch_weights", i32 32, i32 697798}
!853 = !{!"function_entry_count", i64 697818}
!854 = !{!"branch_weights", i32 2617, i32 695203}
!855 = !{!"branch_weights", i32 1, i32 2617}
!856 = !{!528, !497, i64 112}
!857 = !{!528, !500, i64 176}
!858 = !{!528, !500, i64 172}
!859 = !{!528, !497, i64 160}
!860 = !{!528, !498, i64 168}
!861 = !{!"tree-vect-stmts.c:gimple_set_location"}
!862 = !{!"tree-vect-stmts.c:gimple_location"}
!863 = !{!"tree-vect-stmts.c:gimple_set_uid"}
!864 = !{!"tree-vect-stmts.c:VEC_vec_void_p_heap_safe_push"}
!865 = !{!"function_entry_count", i64 697797}
!866 = !{!"tree-vect-stmts.c:VEC_vec_void_p_base_replace"}
!867 = !{!"tree-vect-stmts.c:VEC_vec_void_p_heap_reserve"}
!868 = !{!"branch_weights", i32 2, i32 31}
!869 = !{!"tree-vect-stmts.c:VEC_vec_void_p_base_quick_push"}
!870 = !{!"tree-vect-stmts.c:VEC_vec_void_p_base_space"}
!871 = !{!713, !500, i64 4}
!872 = !{!795, !497, i64 672}
!873 = !{!"tree-vect-stmts.c:gimple_call_fndecl"}
!874 = !{!"tree-vect-stmts.c:gimple_call_fn"}
!875 = !{!496, !500, i64 40}
!876 = !{i32 0, i32 65536}
!877 = !{!"function_entry_count", i64 242}
!878 = !{!"tree-vect-stmts.c:is_gimple_assign"}
!879 = !{!"function_entry_count", i64 436}
!880 = !{!"tree-vect-stmts.c:gimple_assign_rhs_code"}
!881 = !{!"branch_weights", i32 403, i32 35}
!882 = !{!"tree-vect-stmts.c:vect_is_simple_cond"}
!883 = !{!"tree-vect-stmts.c:gimple_expr_code"}
!884 = !{!"branch_weights", i32 1, i32 1748, i32 2, i32 1}
!885 = !{!"tree-vect-stmts.c:get_gimple_rhs_class"}
!886 = !{!"function_entry_count", i64 104}
!887 = !{!"branch_weights", i32 105, i32 1}
!888 = !{!"branch_weights", i32 73, i32 33}
!889 = !{!"branch_weights", i32 73, i32 1}
!890 = !{!"branch_weights", i32 5, i32 33, i32 1, i32 1}
!891 = !{!"branch_weights", i32 2082702844, i32 64780804}
!892 = !{!"branch_weights", i32 1, i32 33}
!893 = !{!"branch_weights", i32 31, i32 3}
!894 = !{!"branch_weights", i32 31, i32 1}
!895 = !{!"branch_weights", i32 24, i32 8}
!896 = !{!"tree-vect-stmts.c:gimple_has_volatile_ops"}
!897 = !{!"branch_weights", i32 23, i32 83}
!898 = !{!"function_entry_count", i64 384}
!899 = !{!"tree-vect-stmts.c:gimple_expr_type"}
!900 = !{!"branch_weights", i32 1, i32 2, i32 1540, i32 1}
!901 = !{!"branch_weights", i32 1, i32 385}
!902 = !{!"tree-vect-stmts.c:vectorizable_type_promotion"}
!903 = !{!"branch_weights", i32 10, i32 24}
!904 = !{i32 0, i32 2}
!905 = distinct !{!905, !518}
!906 = distinct !{!906, !518}
!907 = !{!"tree-vect-stmts.c:vectorizable_type_demotion"}
!908 = distinct !{!908, !518}
!909 = distinct !{!909, !518}
!910 = !{!"tree-vect-stmts.c:vectorizable_conversion"}
!911 = !{!"branch_weights", i32 100, i32 21}
!912 = !{!795, !497, i64 680}
!913 = !{!914, !497, i64 24}
!914 = !{!"_slp_tree", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !500, i64 32, !529, i64 36}
!915 = distinct !{!915, !518}
!916 = distinct !{!916, !518}
!917 = distinct !{!917, !518}
!918 = distinct !{!918, !518}
!919 = !{!"function_entry_count", i64 34}
!920 = !{!"tree-vect-stmts.c:vectorizable_operation"}
!921 = !{!"branch_weights", i32 1, i32 35}
!922 = !{!"branch_weights", i32 35, i32 1}
!923 = !{!"branch_weights", i32 2086126972, i32 61356676}
!924 = !{!"branch_weights", i32 12, i32 24}
!925 = !{!"branch_weights", i32 1, i32 12}
!926 = !{!"branch_weights", i32 12, i32 1}
!927 = !{!"branch_weights", i32 45, i32 85}
!928 = !{!"branch_weights", i32 4, i32 5}
!929 = !{!"branch_weights", i32 4, i32 1}
!930 = !{!"branch_weights", i32 1, i32 5}
!931 = !{!"branch_weights", i32 671, i32 625}
!932 = !{!933, !500, i64 0}
!933 = !{!"optab_handlers", !500, i64 0}
!934 = !{!"branch_weights", i32 323729236, i32 1823754412}
!935 = !{!"branch_weights", i32 3, i32 3}
!936 = !{!914, !500, i64 32}
!937 = !{!"branch_weights", i32 3, i32 13}
!938 = !{!939, !497, i64 24}
!939 = !{!"insn_data", !497, i64 0, !498, i64 8, !497, i64 16, !497, i64 24, !498, i64 32, !498, i64 33, !498, i64 34, !498, i64 35}
!940 = distinct !{!940, !518}
!941 = !{!"branch_weights", i32 7, i32 9}
!942 = distinct !{!942, !518}
!943 = distinct !{!943, !518}
!944 = !{!"tree-vect-stmts.c:vectorizable_assignment"}
!945 = !{!"branch_weights", i32 2078209982, i32 69273666}
!946 = !{!"branch_weights", i32 63, i32 1}
!947 = !{!"branch_weights", i32 1, i32 31}
!948 = !{!"branch_weights", i32 8, i32 24}
!949 = distinct !{!949, !518}
!950 = distinct !{!950, !518}
!951 = !{!"function_entry_count", i64 37}
!952 = !{!"tree-vect-stmts.c:vectorizable_load"}
!953 = !{!"branch_weights", i32 1, i32 38}
!954 = !{!"branch_weights", i32 2090970921, i32 56512727}
!955 = !{!"branch_weights", i32 29020050, i32 2118463598}
!956 = !{!"branch_weights", i32 77, i32 1}
!957 = !{!"branch_weights", i32 38, i32 1}
!958 = !{!"branch_weights", i32 15, i32 24}
!959 = !{!960, !497, i64 8}
!960 = !{!"data_reference", !497, i64 0, !497, i64 8, !497, i64 16, !498, i64 24, !961, i64 32, !962, i64 72, !963, i64 88, !497, i64 104}
!961 = !{!"innermost_loop_behavior", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32}
!962 = !{!"indices", !497, i64 0, !497, i64 8}
!963 = !{!"dr_alias", !497, i64 0, !497, i64 8}
!964 = !{!"branch_weights", i32 15, i32 1}
!965 = !{!"branch_weights", i32 8, i32 8}
!966 = !{!967, !497, i64 24}
!967 = !{!"_slp_instance", !497, i64 0, !500, i64 8, !500, i64 12, !529, i64 16, !497, i64 24, !497, i64 32, !497, i64 40}
!968 = !{!960, !497, i64 56}
!969 = !{!"branch_weights", i32 240179092, i32 1907304556}
!970 = !{!"branch_weights", i32 127, i32 1}
!971 = !{!960, !497, i64 16}
!972 = !{!"branch_weights", i32 64, i32 17}
!973 = distinct !{!973, !518}
!974 = !{!"branch_weights", i32 1, i32 17}
!975 = distinct !{!975, !518}
!976 = distinct !{!976, !518}
!977 = !{!"tree-vect-stmts.c:vectorizable_call"}
!978 = distinct !{!978, !518}
!979 = distinct !{!979, !518}
!980 = distinct !{!980, !518}
!981 = distinct !{!981, !518}
!982 = distinct !{!982, !518}
!983 = !{!"function_entry_count", i64 45}
!984 = !{!"tree-vect-stmts.c:vectorizable_store"}
!985 = !{!"branch_weights", i32 2100799222, i32 46684426}
!986 = !{!"branch_weights", i32 1, i32 93}
!987 = !{!"branch_weights", i32 93, i32 1}
!988 = !{!"branch_weights", i32 46, i32 1}
!989 = !{!"branch_weights", i32 28, i32 4408, i32 6272, i32 112, i32 56, i32 28}
!990 = !{!528, !497, i64 136}
!991 = distinct !{!991, !518}
!992 = !{!"branch_weights", i32 24, i32 23}
!993 = !{!528, !500, i64 148}
!994 = !{!"branch_weights", i32 23, i32 1}
!995 = !{!"branch_weights", i32 1, i32 23}
!996 = !{!"branch_weights", i32 183, i32 1}
!997 = !{!"branch_weights", i32 1, i32 183}
!998 = distinct !{!998, !518}
!999 = !{!"branch_weights", i32 23, i32 553}
!1000 = distinct !{!1000, !518}
!1001 = !{!"branch_weights", i32 1, i32 127}
!1002 = !{!"branch_weights", i32 47, i32 529}
!1003 = !{!"branch_weights", i32 127, i32 2817}
!1004 = distinct !{!1004, !518}
!1005 = distinct !{!1005, !518}
!1006 = !{!"tree-vect-stmts.c:gimple_call_return_type"}
!1007 = !{!"function_entry_count", i64 4}
!1008 = !{!"tree-vect-stmts.c:gimple_assign_rhs2"}
!1009 = !{!795, !497, i64 688}
!1010 = !{!795, !497, i64 696}
!1011 = !{!1012, !497, i64 448}
!1012 = !{!"lang_hooks", !497, i64 0, !506, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !497, i64 96, !497, i64 104, !497, i64 112, !497, i64 120, !497, i64 128, !497, i64 136, !497, i64 144, !497, i64 152, !497, i64 160, !497, i64 168, !497, i64 176, !497, i64 184, !497, i64 192, !497, i64 200, !497, i64 208, !497, i64 216, !497, i64 224, !497, i64 232, !1013, i64 240, !1014, i64 248, !1015, i64 256, !1016, i64 272, !1017, i64 432, !1018, i64 560, !497, i64 584, !497, i64 592, !497, i64 600, !497, i64 608, !497, i64 616, !497, i64 624, !497, i64 632, !497, i64 640, !497, i64 648, !497, i64 656, !497, i64 664, !498, i64 672}
!1013 = !{!"lang_hooks_for_tree_inlining", !497, i64 0}
!1014 = !{!"lang_hooks_for_callgraph", !497, i64 0}
!1015 = !{!"lang_hooks_for_tree_dump", !497, i64 0, !497, i64 8}
!1016 = !{!"lang_hooks_for_decls", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !497, i64 96, !497, i64 104, !497, i64 112, !497, i64 120, !497, i64 128, !497, i64 136, !497, i64 144, !497, i64 152}
!1017 = !{!"lang_hooks_for_types", !497, i64 0, !497, i64 8, !497, i64 16, !497, i64 24, !497, i64 32, !497, i64 40, !497, i64 48, !497, i64 56, !497, i64 64, !497, i64 72, !497, i64 80, !497, i64 88, !497, i64 96, !497, i64 104, !497, i64 112, !498, i64 120}
!1018 = !{!"lang_hooks_for_lto", !497, i64 0, !497, i64 8, !497, i64 16}
!1019 = distinct !{!1019, !518}
!1020 = !{!"function_entry_count", i64 52}
!1021 = !{!"tree-vect-stmts.c:VEC_tree_heap_alloc"}
!1022 = !{!"function_entry_count", i64 48}
!1023 = !{!"tree-vect-stmts.c:VEC_tree_base_quick_push"}
!1024 = !{!1025, !500, i64 0}
!1025 = !{!"VEC_tree_base", !500, i64 0, !500, i64 4, !498, i64 8}
!1026 = !{!"tree-vect-stmts.c:VEC_tree_base_length"}
!1027 = !{!"tree-vect-stmts.c:VEC_tree_base_iterate"}
!1028 = !{!"tree-vect-stmts.c:vect_pow2"}
!1029 = distinct !{!1029, !518}
!1030 = !{!"tree-vect-stmts.c:VEC_tree_base_replace"}
!1031 = !{!"tree-vect-stmts.c:VEC_tree_heap_copy"}
!1032 = !{!1033, !500, i64 0}
!1033 = !{!"VEC_tree_heap", !1025, i64 0}
!1034 = !{!"tree-vect-stmts.c:vect_create_vectorized_promotion_stmts"}
!1035 = distinct !{!1035, !518}
!1036 = !{!"tree-vect-stmts.c:VEC_tree_heap_free"}
!1037 = !{!"branch_weights", i32 1, i32 49}
!1038 = !{!"tree-vect-stmts.c:VEC_tree_base_pop"}
!1039 = !{!"tree-vect-stmts.c:VEC_tree_base_index"}
!1040 = !{!"tree-vect-stmts.c:vect_gen_widened_results_half"}
!1041 = !{!"tree-vect-stmts.c:gimple_call_set_lhs"}
!1042 = distinct !{!1042, !518}
!1043 = !{!"tree-vect-stmts.c:vect_get_loop_based_defs"}
!1044 = !{!"tree-vect-stmts.c:vect_create_vectorized_demotion_stmts"}
!1045 = distinct !{!1045, !518}
!1046 = !{!"tree-vect-stmts.c:VEC_tree_base_truncate"}
!1047 = !{!"tree-vect-stmts.c:vect_get_vec_defs"}
!1048 = !{!"tree-vect-stmts.c:vect_get_vec_defs_for_stmt_copy"}
!1049 = !{!"function_entry_count", i64 29}
!1050 = !{!"tree-vect-stmts.c:aligned_access_p"}
!1051 = !{!"tree-vect-stmts.c:gimple_set_vdef"}
!1052 = !{!"tree-vect-stmts.c:gimple_set_vuse"}
!1053 = !{!"tree-vect-stmts.c:gimple_call_num_args"}
!1054 = !{!"tree-vect-stmts.c:gimple_call_arg"}
!1055 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 8, i32 23, i32 1, i32 1, i32 1}
!1056 = !{!"branch_weights", i32 47, i32 1}
!1057 = distinct !{!1057, !518}
!1058 = distinct !{!1058, !518}
!1059 = !{!"function_entry_count", i64 697847}
!1060 = !{!"branch_weights", i32 51, i32 697798}
!1061 = !{!"function_entry_count", i64 2616}
!1062 = !{!"tree-vect-stmts.c:is_loop_header_bb_p"}
!1063 = !{!503, !497, i64 8}
!1064 = !{!"branch_weights", i32 2617, i32 1}
!1065 = !{!627, !497, i64 0}
!1066 = !{!"tree-vect-stmts.c:VEC_dr_p_heap_alloc"}
!1067 = !{!"tree-vect-stmts.c:VEC_edge_base_length"}
!1068 = !{!1069, !500, i64 0}
!1069 = !{!"VEC_edge_base", !500, i64 0, !500, i64 4, !498, i64 8}
!1070 = !{!"function_entry_count", i64 9279}
!1071 = !{!"branch_weights", i32 9280, i32 1}
!1072 = !{!"tree-vect-stmts.c:VEC_vec_void_p_heap_alloc"}
!1073 = !{!"branch_weights", i32 1, i32 9280}
!1074 = !{!"tree-vect-stmts.c:VEC_vec_void_p_heap_free"}
!1075 = !{!"tree-vect-stmts.c:VEC_dr_p_heap_free"}
!1076 = !{!"branch_weights", i32 1, i32 697798}
