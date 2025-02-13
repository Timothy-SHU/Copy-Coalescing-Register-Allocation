; ModuleID = 'tree-vect-data-refs.c'
source_filename = "tree-vect-data-refs.c"
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct._bb_vec_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_dr_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"=== vect_analyze_dependences ===\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [67 x i8] c"versioning for alias required: can't determine dependence between \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"can't determine dependence between \00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"determined dependence between \00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"versioning for alias required: bad dist vector for \00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"dependence distance  = %d.\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"accesses have the same alignment.\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"dependence distance modulo vf == 0 between \00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"dependence distance >= VF or negative.\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"not vectorized, possible dependence between data-refs \00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Detected interleaving \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"mark for run-time aliasing test between \00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"versioning not supported when optimizing for size.\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"versioning not yet supported for outer-loops.\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"not vectorized: unsupported unaligned load.\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"not vectorized: unsupported unaligned store.\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Vectorizing an unaligned access.\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"=== vect_enhance_data_refs_alignment ===\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"vector alignment may not be reachable\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Try peeling by %d\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Alignment of access forced using peeling.\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Peeling for alignment will be applied.\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"tree-vect-data-refs.c\00", align 1
@flag_tree_vect_loop_version = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [45 x i8] c"Alignment of access forced using versioning.\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Versioning for alignment will be applied.\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"data size =%ld\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c". misalignment = %d. \00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"data size does not divide the misalignment.\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Unknown misalignment, is_packed = %d\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.33 = private unnamed_addr constant [28 x i8] c"Setting misalignment to -1.\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"=== vect_analyze_data_refs_alignment ===\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"not vectorized: can't calculate alignment for data ref.\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"vect_compute_data_ref_alignment:\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"inner step divides the vector-size.\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"inner step doesn't divide the vector-size.\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Unknown alignment for access: \00", align 1
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [31 x i8] c"can't force alignment of ref: \00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"force alignment\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"unexpected misalign value\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"misalign = %d bytes of ref \00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"=== vect_analyze_data_ref_accesses ===\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"not vectorized: complicated access pattern.\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"zero step in outer loop.\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"strided access in outer loop.\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Detected single element interleaving \00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c" step \00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"not consecutive access\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"Two store stmts share the same dr.\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"READ_WRITE dependence in interleaving.\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"not consecutive access in interleaving\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"interleaved store with gaps\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"interleaving size is greater than step for \00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"step is not a multiple of type size: step \00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c" size \00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"interleaving is not a power of 2\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"Detected interleaving of size %d\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"=== vect_prune_runtime_alias_test_list ===\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"found equal ranges \00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.64 = private unnamed_addr constant [72 x i8] c"disable versioning for alias - max number of generated checks exceeded.\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"=== vect_analyze_data_refs ===\0A\00", align 1
@.str.66 = private unnamed_addr constant [88 x i8] c"not vectorized: loop contains function calls or data references that cannot be analyzed\00", align 1
@.str.67 = private unnamed_addr constant [95 x i8] c"not vectorized: basic block contains function calls or data references that cannot be analyzed\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"not vectorized: unhandled data-ref \00", align 1
@.str.69 = private unnamed_addr constant [42 x i8] c"not vectorized: data ref analysis failed \00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"not vectorized: base addr of dr is a constant\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.71 = private unnamed_addr constant [24 x i8] c"analyze in outer-loop: \00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"failed: bit offset alignment.\0A\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"failed: evolution of base is not affine.\0A\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"evolution of offset is not affine.\0A\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"\09outer base_address: \00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"\0A\09outer offset from base address: \00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"\0A\09outer constant offset from base address: \00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"\0A\09outer step: \00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"\0A\09outer aligned to: \00", align 1
@.str.80 = private unnamed_addr constant [49 x i8] c"not vectorized: more than one data ref in stmt: \00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"not vectorized: no vectype for stmt: \00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c" scalar_type: \00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"vect_\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"stmp_\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"vect_p\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"batmp\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"base_off\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"created \00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"create vector-pointer variable to type: \00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"  vectorizing an array ref: \00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"  vectorizing a record based array ref: \00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"  vectorizing a pointer ref: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.95 = private unnamed_addr constant [5 x i8] c"var_\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"no optab for interleave.\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"interleave op not supported by target.\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"vect_inter_high\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"vect_inter_low\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"no optab for perm_even.\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"perm_even op not supported by target.\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"no optab for perm_odd.\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"perm_odd op not supported by target.\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"vect_perm_even\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"vect_perm_odd\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@reltable.vect_get_new_vect_var = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.83 to i64), i64 ptrtoint (ptr @reltable.vect_get_new_vect_var to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.85 to i64), i64 ptrtoint (ptr @reltable.vect_get_new_vect_var to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.vect_get_new_vect_var to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_get_smallest_scalar_type(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !294 {
  %4 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !295
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !298
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11, !prof !299

11:                                               ; preds = %3
  %12 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #19, !range !298
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20, !prof !300

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !301
  %16 = icmp eq i32 %15, 169
  br i1 %16, label %20, label %17, !prof !302

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !301
  %19 = icmp eq i32 %18, 78
  br i1 %19, label %20, label %30, !prof !302

20:                                               ; preds = %17, %14, %11
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !295
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !295
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !295
  %28 = icmp slt i64 %27, %8
  %29 = select i1 %28, ptr %23, ptr %4, !prof !303
  br label %30

30:                                               ; preds = %20, %17, %3
  %31 = phi i64 [ %27, %20 ], [ %8, %17 ], [ %8, %3 ]
  %32 = phi ptr [ %29, %20 ], [ %4, %17 ], [ %4, %3 ]
  store i64 %8, ptr %1, align 8, !tbaa !304
  store i64 %31, ptr %2, align 8, !tbaa !304
  ret ptr %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !294 !PGOFuncName !306 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !307
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !308

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !301
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !309

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !295
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !295
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !310
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !310
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !312 !PGOFuncName !313 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !307
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !294 !PGOFuncName !314 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !298
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !299

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !301
  %6 = icmp eq i32 %5, 113
  %7 = and i32 %5, 65533
  %8 = icmp eq i32 %7, 116
  %9 = or i1 %6, %8
  %10 = icmp eq i32 %5, 77
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi i8 [ %12, %4 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !315 !PGOFuncName !316 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !301
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !307
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !317

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !318 !PGOFuncName !319 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !320 !PGOFuncName !321 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !323 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !295
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !324 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !318 !PGOFuncName !325 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !298
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !326

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !310
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !327 !PGOFuncName !328 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !307
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !327 !PGOFuncName !329 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !304
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !330

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !327 !PGOFuncName !331 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !307
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 !prof !327 !PGOFuncName !332 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !333
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !315 !PGOFuncName !335 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !307
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 !prof !315 !PGOFuncName !336 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !295
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vect_get_place_in_interleaving_chain(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !322 {
  %3 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = icmp ne ptr %1, null
  %9 = icmp ne ptr %1, %0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %14, %11 ], [ 0, %7 ]
  %13 = phi ptr [ %17, %11 ], [ %1, %7 ]
  %14 = add nuw nsw i32 %12, 1
  %15 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %13) #19
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !340
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %17, %0
  %20 = and i1 %18, %19
  br i1 %20, label %11, label %21, !llvm.loop !341

21:                                               ; preds = %11, %7
  %22 = phi i32 [ 0, %7 ], [ %14, %11 ]
  %23 = phi i1 [ %8, %7 ], [ %18, %11 ]
  %24 = select i1 %23, i32 %22, i32 -1
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i32 [ -1, %2 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !343 !PGOFuncName !344 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4, !prof !345

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #19
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10, !prof !345

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 629, ptr noundef nonnull @.str.1) #20
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = add i32 %2, -1
  %13 = tail call fastcc ptr @VEC_vec_void_p_base_index(ptr noundef %11, i32 noundef %12) #19
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !346 !PGOFuncName !347 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !295
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !346 !PGOFuncName !348 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !349

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !350
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !343 !PGOFuncName !352 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !310
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !353 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !354

6:                                                ; preds = %2
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %8 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 32, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11, !prof !355

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  br label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !310
  %18 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %24, !prof !357

20:                                               ; preds = %24
  %21 = add i32 %25, 1
  %22 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %17, i32 noundef %21, ptr noundef nonnull %3) #19, !range !356
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !prof !358, !llvm.loop !359

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %21, %20 ], [ 0, %15 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !310
  %27 = tail call fastcc zeroext i8 @vect_analyze_data_ref_dependence(ptr noundef %26, ptr noundef %0) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %20, label %29, !prof !360

29:                                               ; preds = %24, %20, %15
  %30 = phi i8 [ 1, %15 ], [ 1, %20 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %30
}

; Function Attrs: optsize
declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !361 !PGOFuncName !362 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !363

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !364
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !366

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_analyze_data_ref_dependence(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !367 !PGOFuncName !368 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !369
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !371
  %7 = load ptr, ptr %4, align 8, !tbaa !372
  %8 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %7) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !372
  %10 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %9) #19
  %11 = getelementptr inbounds %struct.data_reference, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !377
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !295
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20, !prof !378

18:                                               ; preds = %2
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %14) #20
  br label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !295
  %30 = getelementptr inbounds %struct.data_reference, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !377
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !295
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39, !prof !378

37:                                               ; preds = %25
  %38 = tail call i32 @vector_type_mode(ptr noundef nonnull %33) #20
  br label %44

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %49 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !379
  %51 = load ptr, ptr @chrec_known, align 8, !tbaa !310
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %55, !prof !380

53:                                               ; preds = %44
  %54 = tail call fastcc zeroext i8 @vect_check_interleaving(ptr noundef nonnull %4, ptr noundef nonnull %6) #19, !range !298
  br label %236

55:                                               ; preds = %44
  %56 = icmp ne ptr %1, null
  br i1 %56, label %57, label %61, !prof !381

57:                                               ; preds = %55
  %58 = load ptr, ptr %1, align 8, !tbaa !382
  %59 = getelementptr inbounds %struct._loop_vec_info, ptr %1, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !384
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i32 [ %60, %57 ], [ 0, %55 ]
  %63 = phi ptr [ %58, %57 ], [ null, %55 ]
  %64 = getelementptr inbounds %struct.data_reference, ptr %4, i64 0, i32 3
  %65 = load i8, ptr %64, align 8, !tbaa !385
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67, !prof !386

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.data_reference, ptr %6, i64 0, i32 3
  %69 = load i8, ptr %68, align 8, !tbaa !385
  %70 = icmp ne i8 %69, 0
  %71 = and i1 %56, %70
  %72 = icmp eq ptr %4, %6
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %236, label %76, !prof !387

74:                                               ; preds = %61
  %75 = icmp eq ptr %4, %6
  br i1 %75, label %236, label %76, !prof !388

76:                                               ; preds = %67, %74
  %77 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !310
  %78 = icmp eq ptr %50, %77
  br i1 %78, label %79, label %110, !prof !389

79:                                               ; preds = %76
  br i1 %56, label %80, label %95, !prof !390

80:                                               ; preds = %79
  %81 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %85 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 66, i64 1, ptr %84)
  %86 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %87 = load ptr, ptr %11, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %86, ptr noundef %87, i32 noundef 2) #20
  %88 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %89 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %88)
  %90 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %91 = load ptr, ptr %30, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %90, ptr noundef %91, i32 noundef 2) #20
  br label %92

92:                                               ; preds = %83, %80
  %93 = tail call fastcc zeroext i8 @vect_mark_for_runtime_alias_test(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !298
  %94 = xor i8 %93, 1
  br label %236

95:                                               ; preds = %79
  %96 = tail call fastcc zeroext i8 @vect_check_interleaving(ptr noundef nonnull %4, ptr noundef nonnull %6) #19, !range !298
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %236, !prof !391

98:                                               ; preds = %95
  %99 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %236, label %101, !prof !392

101:                                              ; preds = %98
  %102 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %103 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 35, i64 1, ptr %102)
  %104 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %105 = load ptr, ptr %11, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %104, ptr noundef %105, i32 noundef 2) #20
  %106 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %107 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %106)
  %108 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %109 = load ptr, ptr %30, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %108, ptr noundef %109, i32 noundef 2) #20
  br label %236

110:                                              ; preds = %76
  br i1 %56, label %128, label %111, !prof !393

111:                                              ; preds = %110
  %112 = icmp eq ptr %4, %6
  br i1 %112, label %116, label %113, !prof !394

113:                                              ; preds = %111
  %114 = tail call fastcc zeroext i8 @vect_check_interleaving(ptr noundef nonnull %4, ptr noundef nonnull %6) #19, !range !298
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %236, !prof !395

116:                                              ; preds = %113, %111
  %117 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %236, label %119, !prof !395

119:                                              ; preds = %116
  %120 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %121 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %120)
  %122 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %123 = load ptr, ptr %11, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %122, ptr noundef %123, i32 noundef 2) #20
  %124 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %125 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %124)
  %126 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %127 = load ptr, ptr %30, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %126, ptr noundef %127, i32 noundef 2) #20
  br label %236

128:                                              ; preds = %110
  %129 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !396
  %131 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %130) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %148, !prof !397

133:                                              ; preds = %128
  %134 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %138 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 51, i64 1, ptr %137)
  %139 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %140 = load ptr, ptr %11, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %139, ptr noundef %140, i32 noundef 2) #20
  %141 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %142 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %141)
  %143 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %144 = load ptr, ptr %30, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %143, ptr noundef %144, i32 noundef 2) #20
  br label %145

145:                                              ; preds = %136, %133
  %146 = tail call fastcc zeroext i8 @vect_mark_for_runtime_alias_test(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !298
  %147 = xor i8 %146, 1
  br label %236

148:                                              ; preds = %128
  %149 = load i32, ptr %63, align 8, !tbaa !398
  %150 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !402
  %152 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %149, ptr noundef %151) #19
  %153 = load ptr, ptr %129, align 8, !tbaa !396
  %154 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %153, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %236, label %156, !prof !403

156:                                              ; preds = %148
  %157 = zext i32 %152 to i64
  %158 = icmp eq i8 %29, %48
  br label %159

159:                                              ; preds = %156, %231
  %160 = phi i32 [ 0, %156 ], [ %232, %231 ]
  %161 = load ptr, ptr %3, align 8, !tbaa !310
  %162 = getelementptr inbounds i32, ptr %161, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !333
  %164 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166, !prof !404

166:                                              ; preds = %159
  %167 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.9, i32 noundef %163) #19
  br label %169

169:                                              ; preds = %166, %159
  %170 = srem i32 %163, %62
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i1 %158, i1 false
  br i1 %172, label %173, label %204, !prof !405

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 15
  %175 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 15
  tail call fastcc void @VEC_dr_p_heap_safe_push(ptr noundef nonnull %174, ptr noundef nonnull %6) #19
  tail call fastcc void @VEC_dr_p_heap_safe_push(ptr noundef nonnull %175, ptr noundef nonnull %4) #19
  %176 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %181, label %178, !prof !406

178:                                              ; preds = %173
  %179 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %180 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 33, i64 1, ptr %179)
  br label %181

181:                                              ; preds = %178, %173
  %182 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %193, label %184, !prof !406

184:                                              ; preds = %181
  %185 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %186 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 43, i64 1, ptr %185)
  %187 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %188 = load ptr, ptr %11, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %187, ptr noundef %188, i32 noundef 2) #20
  %189 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %190 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %189)
  %191 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %192 = load ptr, ptr %30, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %191, ptr noundef %192, i32 noundef 2) #20
  br label %193

193:                                              ; preds = %184, %181
  %194 = load i8, ptr %64, align 8, !tbaa !385
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196, !prof !326

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct._stmt_vec_info, ptr %8, i64 0, i32 23
  store i8 1, ptr %197, align 8, !tbaa !407
  br label %231

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.data_reference, ptr %6, i64 0, i32 3
  %200 = load i8, ptr %199, align 8, !tbaa !385
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %231, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct._stmt_vec_info, ptr %10, i64 0, i32 23
  store i8 1, ptr %203, align 8, !tbaa !407
  br label %231

204:                                              ; preds = %169
  %205 = tail call i32 @llvm.abs.i32(i32 %163, i1 true)
  %206 = icmp slt i32 %205, %62
  br i1 %206, label %207, label %213, !prof !300

207:                                              ; preds = %204
  %208 = icmp sgt i32 %163, 0
  br i1 %208, label %209, label %219, !prof !408

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 8
  %211 = load i8, ptr %210, align 4, !tbaa !409
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %219, label %213, !prof !302

213:                                              ; preds = %209, %204
  %214 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %231, label %216, !prof !410

216:                                              ; preds = %213
  %217 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %218 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 38, i64 1, ptr %217)
  br label %231

219:                                              ; preds = %209, %207
  %220 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %236, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %224 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 54, i64 1, ptr %223)
  %225 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %226 = load ptr, ptr %11, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %225, ptr noundef %226, i32 noundef 2) #20
  %227 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %228 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %227)
  %229 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %230 = load ptr, ptr %30, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %229, ptr noundef %230, i32 noundef 2) #20
  br label %236

231:                                              ; preds = %213, %216, %196, %202, %198
  %232 = add i32 %160, 1
  %233 = load ptr, ptr %129, align 8, !tbaa !396
  %234 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %233, i32 noundef %232, ptr noundef nonnull %3) #19, !range !356
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %159, !prof !411, !llvm.loop !412

236:                                              ; preds = %231, %148, %222, %219, %116, %119, %113, %98, %101, %95, %74, %67, %145, %92, %53
  %237 = phi i8 [ 0, %53 ], [ %94, %92 ], [ %147, %145 ], [ 0, %67 ], [ 0, %74 ], [ 0, %95 ], [ 1, %101 ], [ 1, %98 ], [ 0, %113 ], [ 1, %119 ], [ 1, %116 ], [ 1, %219 ], [ 1, %222 ], [ 0, %148 ], [ 0, %231 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %237
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_check_interleaving(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !413 !PGOFuncName !414 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !415
  %5 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !415
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %22, label %8, !prof !416

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %12, label %119, !prof !417

12:                                               ; preds = %8
  %13 = load i64, ptr %6, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 121
  br i1 %15, label %16, label %119, !prof !418

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !295
  %19 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !295
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %119, !prof !419

22:                                               ; preds = %16, %2
  %23 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !420
  %25 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !420
  %27 = tail call fastcc zeroext i8 @vect_equal_offsets(ptr noundef %24, ptr noundef %26) #19, !range !298
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %119, label %29, !prof !421

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !422
  %32 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !422
  %34 = tail call i32 @tree_int_cst_compare(ptr noundef %31, ptr noundef %33) #20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %119, label %36, !prof !423

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %38 = load i8, ptr %37, align 8, !tbaa !385
  %39 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %40 = load i8, ptr %39, align 8, !tbaa !385
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %42, label %119, !prof !424

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !377
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !295
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !295
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !295
  %51 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !377
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !295
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !295
  %57 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !295
  %59 = icmp eq i64 %50, %58
  br i1 %59, label %60, label %119, !prof !425

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !426
  %63 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !426
  %65 = tail call i32 @tree_int_cst_compare(ptr noundef %62, ptr noundef %64) #20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %119, !prof !427

67:                                               ; preds = %60
  %68 = load ptr, ptr %43, align 8, !tbaa !377
  %69 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !295
  %71 = load ptr, ptr %51, align 8, !tbaa !377
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !295
  %74 = tail call zeroext i8 @types_compatible_p(ptr noundef %70, ptr noundef %73) #20
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %119, label %76, !prof !428

76:                                               ; preds = %67
  %77 = load ptr, ptr %30, align 8, !tbaa !422
  %78 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !295
  %80 = load ptr, ptr %32, align 8, !tbaa !422
  %81 = getelementptr inbounds %struct.tree_int_cst, ptr %80, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !295
  %83 = load ptr, ptr %61, align 8, !tbaa !426
  %84 = getelementptr inbounds %struct.tree_int_cst, ptr %83, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !295
  %86 = icmp sgt i64 %79, %82
  %87 = icmp eq i64 %85, 0
  br i1 %86, label %88, label %100, !prof !429

88:                                               ; preds = %76
  %89 = sub nsw i64 %79, %82
  %90 = srem i64 %89, %50
  br i1 %87, label %95, label %91, !prof !430

91:                                               ; preds = %88
  %92 = icmp sle i64 %89, %85
  %93 = icmp eq i64 %90, 0
  %94 = and i1 %92, %93
  br i1 %94, label %97, label %119, !prof !431

95:                                               ; preds = %88
  %96 = icmp eq i64 %90, 0
  br i1 %96, label %97, label %119, !prof !430

97:                                               ; preds = %91, %95
  tail call fastcc void @vect_update_interleaving_chain(ptr noundef nonnull %1, ptr noundef nonnull %0) #19
  %98 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %119, label %110, !prof !430

100:                                              ; preds = %76
  %101 = sub nsw i64 %82, %79
  %102 = srem i64 %101, %50
  %103 = icmp sle i64 %101, %85
  %104 = select i1 %87, i1 true, i1 %103
  %105 = icmp eq i64 %102, 0
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %119, !prof !432

107:                                              ; preds = %100
  tail call fastcc void @vect_update_interleaving_chain(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %108 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110, !prof !433

110:                                              ; preds = %107, %97
  %111 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %112 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 22, i64 1, ptr %111)
  %113 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %114 = load ptr, ptr %43, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %113, ptr noundef %114, i32 noundef 2) #20
  %115 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %116 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %115)
  %117 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %118 = load ptr, ptr %51, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %117, ptr noundef %118, i32 noundef 2) #20
  br label %119

119:                                              ; preds = %110, %95, %107, %100, %97, %91, %42, %60, %67, %8, %12, %16, %22, %29, %36
  %120 = phi i8 [ 0, %36 ], [ 0, %29 ], [ 0, %22 ], [ 0, %16 ], [ 0, %12 ], [ 0, %8 ], [ 0, %67 ], [ 0, %60 ], [ 0, %42 ], [ 0, %91 ], [ 1, %97 ], [ 0, %100 ], [ 1, %107 ], [ 0, %95 ], [ 1, %110 ]
  ret i8 %120
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_mark_for_runtime_alias_test(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !322 !PGOFuncName !434 {
  %3 = load ptr, ptr %1, align 8, !tbaa !382
  %4 = load ptr, ptr @compiler_params, align 8, !tbaa !310
  %5 = getelementptr inbounds %struct.param_info, ptr %4, i64 72, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !435
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %13 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %12)
  %14 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %15 = load ptr, ptr %0, align 8, !tbaa !369
  %16 = getelementptr inbounds %struct.data_reference, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %14, ptr noundef %17, i32 noundef 2) #20
  %18 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %19 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %18)
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %21 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !371
  %23 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %20, ptr noundef %24, i32 noundef 2) #20
  br label %25

25:                                               ; preds = %11, %8
  %26 = tail call zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %33 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 50, i64 1, ptr %32)
  br label %46

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !437
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %43 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 45, i64 1, ptr %42)
  br label %46

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct._loop_vec_info, ptr %1, i64 0, i32 12
  tail call fastcc void @VEC_ddr_p_heap_safe_push(ptr noundef nonnull %45, ptr noundef %0) #19
  br label %46

46:                                               ; preds = %38, %41, %28, %31, %2, %44
  %47 = phi i8 [ 1, %44 ], [ 0, %2 ], [ 0, %31 ], [ 0, %28 ], [ 0, %41 ], [ 0, %38 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_vector_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !438 !PGOFuncName !439 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !397

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !440
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @index_in_loop_nest(i32 noundef %0, ptr noundef %1) unnamed_addr #7 !prof !438 !PGOFuncName !442 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6, !prof !403

6:                                                ; preds = %2, %11
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !310
  %9 = load i32, ptr %8, align 8, !tbaa !398
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %15, label %11, !prof !404

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %1, i32 noundef %12, ptr noundef nonnull %3) #19, !range !356
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !prof !443, !llvm.loop !444

15:                                               ; preds = %11, %6, %2
  %16 = phi i32 [ 0, %2 ], [ %7, %6 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_lambda_vector_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !445 !PGOFuncName !446 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !447

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !440
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !448

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_dr_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !449 !PGOFuncName !450 {
  tail call fastcc void @VEC_dr_p_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !310
  tail call fastcc void @VEC_dr_p_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_equal_offsets(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !451 !PGOFuncName !452 {
  %3 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #20
  %4 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #20
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %41, label %6, !prof !453

6:                                                ; preds = %2, %33
  %7 = phi ptr [ %39, %33 ], [ %4, %2 ]
  %8 = phi ptr [ %38, %33 ], [ %3, %2 ]
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %7, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %41, !prof !454

14:                                               ; preds = %6
  %15 = and i64 %9, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !333
  %18 = and i32 %17, -2
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %41, !prof !455

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !295
  %23 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !295
  %25 = tail call fastcc zeroext i8 @vect_equal_offsets(ptr noundef %22, ptr noundef %24) #19, !range !298
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %41, label %27, !prof !456

27:                                               ; preds = %20
  %28 = load i64, ptr %8, align 8
  %29 = and i64 %28, 65535
  %30 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !333
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %41, !prof !457

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !295
  %36 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !295
  %38 = tail call ptr @tree_strip_nop_conversions(ptr noundef %35) #20
  %39 = tail call ptr @tree_strip_nop_conversions(ptr noundef %37) #20
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %6, !prof !458

41:                                               ; preds = %33, %6, %27, %20, %14, %2
  %42 = phi i8 [ 1, %2 ], [ 0, %14 ], [ 0, %20 ], [ 1, %27 ], [ 0, %6 ], [ 1, %33 ]
  ret i8 %42
}

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_interleaving_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %3 = load ptr, ptr %1, align 8, !tbaa !372
  %4 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %3) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !372
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %5) #19
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !337
  %12 = icmp eq ptr %11, null
  br i1 %9, label %13, label %19, !prof !461

13:                                               ; preds = %2
  br i1 %12, label %14, label %18, !prof !462

14:                                               ; preds = %13
  %15 = load ptr, ptr %0, align 8, !tbaa !372
  store ptr %15, ptr %7, align 8, !tbaa !337
  store ptr %15, ptr %10, align 8, !tbaa !337
  %16 = load ptr, ptr %1, align 8, !tbaa !372
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 18
  store ptr %16, ptr %17, align 8, !tbaa !340
  br label %114

18:                                               ; preds = %13
  store ptr %11, ptr %7, align 8, !tbaa !337
  tail call fastcc void @vect_insert_into_interleaving_chain(ptr noundef nonnull %1, ptr noundef nonnull %0) #19
  br label %114

19:                                               ; preds = %2
  br i1 %12, label %20, label %44, !prof !463

20:                                               ; preds = %19
  %21 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %8) #19
  %22 = getelementptr inbounds %struct._stmt_vec_info, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !464
  %24 = getelementptr inbounds %struct.data_reference, ptr %23, i64 0, i32 4, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !422
  %26 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !422
  %28 = tail call i32 @tree_int_cst_compare(ptr noundef %25, ptr noundef %27) #20
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42, !prof !465

30:                                               ; preds = %20
  %31 = load ptr, ptr %0, align 8, !tbaa !372
  store ptr %31, ptr %10, align 8, !tbaa !337
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 18
  store ptr %8, ptr %32, align 8, !tbaa !340
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi ptr [ %8, %30 ], [ %40, %33 ]
  %35 = load ptr, ptr %0, align 8, !tbaa !372
  %36 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %34) #19
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 17
  store ptr %35, ptr %37, align 8, !tbaa !337
  %38 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %34) #19
  %39 = getelementptr inbounds %struct._stmt_vec_info, ptr %38, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !340
  %41 = icmp eq ptr %40, null
  br i1 %41, label %114, label %33, !prof !466, !llvm.loop !467

42:                                               ; preds = %20
  tail call fastcc void @vect_insert_into_interleaving_chain(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %43 = load ptr, ptr %7, align 8, !tbaa !337
  store ptr %43, ptr %10, align 8, !tbaa !337
  br label %114

44:                                               ; preds = %19
  %45 = icmp eq ptr %8, %11
  br i1 %45, label %114, label %46, !prof !468

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 17
  %48 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %8) #19
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !464
  %51 = getelementptr inbounds %struct.data_reference, ptr %50, i64 0, i32 4, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !422
  %53 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %11) #19
  %54 = getelementptr inbounds %struct._stmt_vec_info, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !464
  %56 = getelementptr inbounds %struct.data_reference, ptr %55, i64 0, i32 4, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !422
  %58 = tail call i32 @tree_int_cst_compare(ptr noundef %52, ptr noundef %57) #20
  %59 = icmp sgt i32 %58, 0
  %60 = select i1 %59, ptr %11, ptr %8
  %61 = select i1 %59, ptr %7, ptr %47
  %62 = load ptr, ptr %61, align 8, !tbaa !310
  %63 = icmp eq ptr %62, null
  br i1 %63, label %114, label %64

64:                                               ; preds = %46
  %65 = select i1 %59, ptr %47, ptr %7
  %66 = load ptr, ptr %65, align 8, !tbaa !337
  br label %67

67:                                               ; preds = %64, %101
  %68 = phi ptr [ %112, %101 ], [ %62, %64 ]
  %69 = phi ptr [ %68, %101 ], [ %66, %64 ]
  %70 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %68) #19
  %71 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !464
  %73 = getelementptr inbounds %struct.data_reference, ptr %72, i64 0, i32 4, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !422
  %75 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %69) #19
  %76 = getelementptr inbounds %struct._stmt_vec_info, ptr %75, i64 0, i32 18
  %77 = load ptr, ptr %76, align 8, !tbaa !340
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %67
  %80 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %77) #19
  %81 = getelementptr inbounds %struct._stmt_vec_info, ptr %80, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !464
  %83 = getelementptr inbounds %struct.data_reference, ptr %82, i64 0, i32 4, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !422
  %85 = tail call i32 @tree_int_cst_compare(ptr noundef %84, ptr noundef %74) #20
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %101, label %95

87:                                               ; preds = %95
  %88 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %99) #19
  %89 = getelementptr inbounds %struct._stmt_vec_info, ptr %88, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !464
  %91 = getelementptr inbounds %struct.data_reference, ptr %90, i64 0, i32 4, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !422
  %93 = tail call i32 @tree_int_cst_compare(ptr noundef %92, ptr noundef %74) #20
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %101, label %95, !llvm.loop !469

95:                                               ; preds = %79, %87
  %96 = phi ptr [ %99, %87 ], [ %77, %79 ]
  %97 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %96) #19
  %98 = getelementptr inbounds %struct._stmt_vec_info, ptr %97, i64 0, i32 18
  %99 = load ptr, ptr %98, align 8, !tbaa !340
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %87, !llvm.loop !469

101:                                              ; preds = %87, %95, %79, %67
  %102 = phi ptr [ %69, %67 ], [ %69, %79 ], [ %96, %95 ], [ %96, %87 ]
  %103 = phi ptr [ null, %67 ], [ %77, %79 ], [ null, %95 ], [ %99, %87 ]
  %104 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %102) #19
  %105 = getelementptr inbounds %struct._stmt_vec_info, ptr %104, i64 0, i32 18
  store ptr %68, ptr %105, align 8, !tbaa !340
  %106 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %68) #19
  %107 = getelementptr inbounds %struct._stmt_vec_info, ptr %106, i64 0, i32 18
  store ptr %103, ptr %107, align 8, !tbaa !340
  %108 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %68) #19
  %109 = getelementptr inbounds %struct._stmt_vec_info, ptr %108, i64 0, i32 17
  store ptr %60, ptr %109, align 8, !tbaa !337
  %110 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %68) #19
  %111 = getelementptr inbounds %struct._stmt_vec_info, ptr %110, i64 0, i32 18
  %112 = load ptr, ptr %111, align 8, !tbaa !310
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %67, !llvm.loop !470

114:                                              ; preds = %101, %33, %46, %44, %42, %18, %14
  ret void
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_insert_into_interleaving_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !471 !PGOFuncName !472 {
  %3 = load ptr, ptr %0, align 8, !tbaa !372
  %4 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %3) #19
  %5 = load ptr, ptr %1, align 8, !tbaa !372
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %5) #19
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !340
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13, !prof !473

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %15 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %11) #19
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 4, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !422
  %20 = load ptr, ptr %14, align 8, !tbaa !422
  %21 = tail call i32 @tree_int_cst_compare(ptr noundef %19, ptr noundef %20) #20
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %38, label %32, !prof !474

23:                                               ; preds = %32
  %24 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %36) #19
  %25 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !464
  %27 = getelementptr inbounds %struct.data_reference, ptr %26, i64 0, i32 4, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !422
  %29 = load ptr, ptr %14, align 8, !tbaa !422
  %30 = tail call i32 @tree_int_cst_compare(ptr noundef %28, ptr noundef %29) #20
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %38, label %32, !prof !475, !llvm.loop !476

32:                                               ; preds = %13, %23
  %33 = phi ptr [ %36, %23 ], [ %11, %13 ]
  %34 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %33) #19
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !340
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %23, !prof !477, !llvm.loop !476

38:                                               ; preds = %23, %32, %13, %2
  %39 = phi ptr [ %8, %2 ], [ %8, %13 ], [ %33, %32 ], [ %33, %23 ]
  %40 = phi ptr [ null, %2 ], [ %11, %13 ], [ null, %32 ], [ %36, %23 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !372
  %42 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %39) #19
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %42, i64 0, i32 18
  store ptr %41, ptr %43, align 8, !tbaa !340
  %44 = getelementptr inbounds %struct._stmt_vec_info, ptr %4, i64 0, i32 18
  store ptr %40, ptr %44, align 8, !tbaa !340
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ddr_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !322 !PGOFuncName !478 {
  tail call fastcc void @VEC_ddr_p_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !310
  tail call fastcc void @VEC_ddr_p_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ddr_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !479 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = tail call fastcc i32 @VEC_ddr_p_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !310
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ddr_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !322 !PGOFuncName !480 {
  %3 = load i32, ptr %0, align 8, !tbaa !364
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !364
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !322 !PGOFuncName !481 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !482
  %6 = load i32, ptr %0, align 8, !tbaa !364
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !438 !PGOFuncName !483 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !397

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !484
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !404

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_dr_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !449 !PGOFuncName !486 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = tail call fastcc i32 @VEC_dr_p_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !302

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !310
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_dr_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !449 !PGOFuncName !487 {
  %3 = load i32, ptr %0, align 8, !tbaa !488
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !488
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_dr_p_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !449 !PGOFuncName !490 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !302

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !491
  %6 = load i32, ptr %0, align 8, !tbaa !488
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_verify_datarefs_alignment(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !492 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %6 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %7 = select i1 %4, ptr %6, ptr %5, !prof !493
  %8 = load ptr, ptr %7, align 8, !tbaa !310
  %9 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11, !prof !494

11:                                               ; preds = %2, %41
  %12 = phi i32 [ %42, %41 ], [ 0, %2 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !310
  %14 = load ptr, ptr %13, align 8, !tbaa !372
  %15 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %14) #19
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !337
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %14
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %41, !prof !495

21:                                               ; preds = %11
  %22 = tail call i32 @vect_supportable_dr_alignment(ptr noundef nonnull %13) #19
  switch i32 %22, label %35 [
    i32 0, label %23
    i32 4, label %41
  ], !prof !496

23:                                               ; preds = %21
  %24 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %45, label %26, !prof !497

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.data_reference, ptr %13, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !385
  %29 = icmp eq i8 %28, 0
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  br i1 %29, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 43, i64 1, ptr %30)
  br label %45

33:                                               ; preds = %26
  %34 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 44, i64 1, ptr %30)
  br label %45

35:                                               ; preds = %21
  %36 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %40 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 32, i64 1, ptr %39)
  br label %41

41:                                               ; preds = %11, %21, %38, %35
  %42 = add i32 %12, 1
  %43 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %8, i32 noundef %42, ptr noundef nonnull %3) #19, !range !356
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %11, !prof !498, !llvm.loop !499

45:                                               ; preds = %41, %2, %31, %33, %23
  %46 = phi i8 [ 0, %23 ], [ 0, %33 ], [ 0, %31 ], [ 1, %2 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !500 !PGOFuncName !501 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !502

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !503
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !505

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vect_supportable_dr_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !506 {
  %2 = load ptr, ptr %0, align 8, !tbaa !372
  %3 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !507
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11, !prof !508

9:                                                ; preds = %1
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #20
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !509
  %20 = tail call fastcc zeroext i8 @aligned_access_p(ptr noundef nonnull %0) #19, !range !298
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %108, !prof !510

22:                                               ; preds = %16
  %23 = icmp eq ptr %19, null
  br i1 %23, label %108, label %24, !prof !511

24:                                               ; preds = %22
  %25 = load ptr, ptr %19, align 8, !tbaa !382
  %26 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %25, ptr noundef %2) #19, !range !298
  %27 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !385
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !377
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !295
  br i1 %29, label %89, label %34, !prof !512

34:                                               ; preds = %24
  %35 = sext i32 %17 to i64
  %36 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 140, i32 4, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !513
  %38 = icmp eq i32 %37, 2956
  br i1 %38, label %71, label %39, !prof !515

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !516
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call ptr %40() #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %71, label %45

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr %4, align 8, !tbaa !507
  %47 = icmp eq i8 %26, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !426
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !295
  %53 = load i64, ptr %46, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 14
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #20
  br label %63

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i32 [ %57, %56 ], [ %62, %58 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !295
  %68 = zext i8 %67 to i64
  %69 = icmp eq i64 %52, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %63, %45
  br label %108

71:                                               ; preds = %42, %34
  %72 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %0) #19, !range !298
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %80, !prof !515

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !528
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !529

78:                                               ; preds = %74
  %79 = tail call zeroext i8 @contains_packed_reference(ptr noundef nonnull %76) #20
  br label %80

80:                                               ; preds = %71, %78, %74
  %81 = phi i8 [ 0, %71 ], [ %79, %78 ], [ 0, %74 ]
  %82 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 9), align 8, !tbaa !530
  %83 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !531
  %85 = ptrtoint ptr %84 to i64
  %86 = trunc i64 %85 to i32
  %87 = tail call zeroext i8 %82(i32 noundef %17, ptr noundef %33, i32 noundef %86, i8 noundef zeroext %81) #20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %107, label %108

89:                                               ; preds = %24
  %90 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %0) #19, !range !298
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %98, !prof !410

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !528
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !299

96:                                               ; preds = %92
  %97 = tail call zeroext i8 @contains_packed_reference(ptr noundef nonnull %94) #20
  br label %98

98:                                               ; preds = %92, %96, %89
  %99 = phi i8 [ 0, %89 ], [ %97, %96 ], [ 0, %92 ]
  %100 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 9), align 8, !tbaa !530
  %101 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !531
  %103 = ptrtoint ptr %102 to i64
  %104 = trunc i64 %103 to i32
  %105 = tail call zeroext i8 %100(i32 noundef %17, ptr noundef %33, i32 noundef %104, i8 noundef zeroext %99) #20
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98, %80
  br label %108

108:                                              ; preds = %70, %63, %22, %16, %80, %98, %107
  %109 = phi i32 [ 0, %107 ], [ 1, %80 ], [ 1, %98 ], [ 4, %16 ], [ 0, %22 ], [ 2, %63 ], [ 3, %70 ]
  ret i32 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_enhance_data_refs_alignment(ptr noundef %0) local_unnamed_addr #0 !prof !532 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !533
  %6 = load ptr, ptr %0, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %7 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !534

9:                                                ; preds = %1
  %10 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 40, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #19, !range !356
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15, !prof !403

15:                                               ; preds = %12, %41
  %16 = phi i32 [ %42, %41 ], [ 0, %12 ]
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %17, align 8, !tbaa !372
  %19 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %18) #19
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !337
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %21, %18
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %41, !prof !535

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 3
  %27 = load i8, ptr %26, align 8, !tbaa !385
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %41, !prof !536

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @aligned_access_p(ptr noundef nonnull %17) #19, !range !298
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41, !prof !537

32:                                               ; preds = %29
  %33 = tail call fastcc zeroext i8 @vector_alignment_reachable_p(ptr noundef nonnull %17) #19, !range !298
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %45, !prof !538

35:                                               ; preds = %32
  %36 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %40 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %39)
  br label %45

41:                                               ; preds = %15, %25, %29
  %42 = add i32 %16, 1
  %43 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef %42, ptr noundef nonnull %2) #19, !range !356
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %15, !prof !539, !llvm.loop !540

45:                                               ; preds = %41, %12, %32, %35, %38
  %46 = phi i1 [ false, %32 ], [ true, %38 ], [ true, %35 ], [ true, %12 ], [ true, %41 ]
  %47 = phi ptr [ %17, %32 ], [ null, %38 ], [ null, %35 ], [ null, %12 ], [ null, %41 ]
  %48 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !541
  %50 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %49) #19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %179, !prof !534

52:                                               ; preds = %45
  %53 = tail call zeroext i8 @vect_can_advance_ivs_p(ptr noundef nonnull %0) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %179, label %55, !prof !542

55:                                               ; preds = %52
  %56 = tail call ptr @single_exit(ptr noundef %6) #20
  %57 = tail call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %6, ptr noundef %56) #20
  %58 = icmp eq i8 %57, 0
  %59 = or i1 %46, %58
  br i1 %59, label %179, label %60, !prof !543

60:                                               ; preds = %55
  %61 = load ptr, ptr %47, align 8, !tbaa !372
  %62 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %61) #19
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %62, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !507
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1023
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = trunc i64 %69 to i32
  %71 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %47) #19, !range !298
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %116, label %73, !prof !544

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.data_reference, ptr %47, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !531
  %76 = ptrtoint ptr %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.data_reference, ptr %47, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !377
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !295
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #20
  br label %92

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i32 [ %86, %85 ], [ %91, %87 ]
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !295
  %97 = zext i8 %96 to i32
  %98 = sdiv i32 %77, %97
  %99 = sub nsw i32 %70, %98
  %100 = load ptr, ptr %47, align 8, !tbaa !372
  %101 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %100) #19
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %101, i64 0, i32 17
  %103 = load ptr, ptr %102, align 8, !tbaa !337
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct._stmt_vec_info, ptr %101, i64 0, i32 19
  %107 = load i32, ptr %106, align 8, !tbaa !545
  %108 = udiv i32 %99, %107
  br label %109

109:                                              ; preds = %105, %92
  %110 = phi i32 [ %108, %105 ], [ %99, %92 ]
  %111 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.23, i32 noundef %110) #19
  br label %116

116:                                              ; preds = %109, %113, %60
  %117 = phi i32 [ %110, %113 ], [ %110, %109 ], [ 0, %60 ]
  %118 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #19, !range !356
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %145, label %120, !prof !546

120:                                              ; preds = %116, %141
  %121 = phi i32 [ %142, %141 ], [ 0, %116 ]
  %122 = load ptr, ptr %2, align 8, !tbaa !310
  %123 = icmp eq ptr %122, %47
  br i1 %123, label %141, label %124, !prof !547

124:                                              ; preds = %120
  %125 = load ptr, ptr %122, align 8, !tbaa !372
  %126 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %125) #19
  %127 = getelementptr inbounds %struct._stmt_vec_info, ptr %126, i64 0, i32 17
  %128 = load ptr, ptr %127, align 8, !tbaa !337
  %129 = icmp eq ptr %128, null
  %130 = icmp eq ptr %128, %125
  %131 = or i1 %129, %130
  br i1 %131, label %132, label %141, !prof !548

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.data_reference, ptr %122, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !531
  %135 = ptrtoint ptr %134 to i64
  tail call fastcc void @vect_update_misalignment_for_peel(ptr noundef nonnull %122, ptr noundef nonnull %47, i32 noundef %117) #19
  %136 = tail call i32 @vect_supportable_dr_alignment(ptr noundef nonnull %122) #19
  %137 = shl i64 %135, 32
  %138 = ashr exact i64 %137, 32
  %139 = inttoptr i64 %138 to ptr
  store ptr %139, ptr %133, align 8, !tbaa !531
  %140 = icmp eq i32 %136, 0
  br i1 %140, label %179, label %141

141:                                              ; preds = %124, %120, %132
  %142 = add i32 %121, 1
  %143 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef %142, ptr noundef nonnull %2) #19, !range !356
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %120, !prof !549, !llvm.loop !550

145:                                              ; preds = %141, %116
  %146 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #19, !range !356
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148, !prof !546

148:                                              ; preds = %145, %153
  %149 = phi i32 [ %154, %153 ], [ 0, %145 ]
  %150 = load ptr, ptr %2, align 8, !tbaa !310
  %151 = icmp eq ptr %150, %47
  br i1 %151, label %153, label %152, !prof !551

152:                                              ; preds = %148
  tail call fastcc void @vect_update_misalignment_for_peel(ptr noundef %150, ptr noundef nonnull %47, i32 noundef %117) #19
  br label %153

153:                                              ; preds = %148, %152
  %154 = add i32 %149, 1
  %155 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef %154, ptr noundef nonnull %2) #19, !range !356
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %148, !prof !552, !llvm.loop !553

157:                                              ; preds = %153, %145
  %158 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  store ptr %47, ptr %158, align 8, !tbaa !554
  %159 = getelementptr inbounds %struct.data_reference, ptr %47, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !531
  %161 = ptrtoint ptr %160 to i64
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  store i32 %162, ptr %163, align 8, !tbaa !555
  store ptr null, ptr %159, align 8, !tbaa !531
  %164 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166, !prof !551

166:                                              ; preds = %157
  %167 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %168 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 41, i64 1, ptr %167)
  br label %169

169:                                              ; preds = %166, %157
  %170 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %175, label %172, !prof !551

172:                                              ; preds = %169
  %173 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %174 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 38, i64 1, ptr %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef nonnull %0, ptr noundef null) #19
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %295, !prof !556

178:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1293, ptr noundef nonnull @.str.1) #20
  br label %295

179:                                              ; preds = %132, %55, %52, %45
  %180 = load i32, ptr @flag_tree_vect_loop_version, align 4, !tbaa !333
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %293, label %182, !prof !557

182:                                              ; preds = %179
  %183 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef %6) #20
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %293, label %185, !prof !557

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 8
  %187 = load ptr, ptr %186, align 8, !tbaa !437
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %293, !prof !558

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %191 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #19, !range !356
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %256, label %193, !prof !559

193:                                              ; preds = %189, %252
  %194 = phi i32 [ %253, %252 ], [ 0, %189 ]
  %195 = load ptr, ptr %2, align 8, !tbaa !310
  %196 = load ptr, ptr %195, align 8, !tbaa !372
  %197 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %196) #19
  %198 = tail call fastcc zeroext i8 @aligned_access_p(ptr noundef nonnull %195) #19, !range !298
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %252, !prof !560

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct._stmt_vec_info, ptr %197, i64 0, i32 17
  %202 = load ptr, ptr %201, align 8, !tbaa !337
  %203 = icmp eq ptr %202, null
  %204 = icmp eq ptr %202, %196
  %205 = or i1 %203, %204
  br i1 %205, label %206, label %252, !prof !534

206:                                              ; preds = %200
  %207 = tail call i32 @vect_supportable_dr_alignment(ptr noundef nonnull %195) #19
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %252, !prof !515

209:                                              ; preds = %206
  %210 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %195) #19, !range !298
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %256, !prof !515

212:                                              ; preds = %209
  %213 = load ptr, ptr %190, align 8, !tbaa !561
  %214 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %213) #19
  %215 = load ptr, ptr @compiler_params, align 8, !tbaa !310
  %216 = getelementptr inbounds %struct.param_info, ptr %215, i64 71, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !435
  %218 = icmp ult i32 %214, %217
  br i1 %218, label %219, label %256, !prof !515

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 9
  %221 = load ptr, ptr %195, align 8, !tbaa !372
  %222 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %221) #19
  %223 = getelementptr inbounds %struct._stmt_vec_info, ptr %222, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !507
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227, !prof !529

226:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1347, ptr noundef nonnull @.str.1) #20
  br label %227

227:                                              ; preds = %219, %226
  %228 = load i64, ptr %224, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 14
  br i1 %230, label %231, label %233, !prof !515

231:                                              ; preds = %227
  %232 = tail call i32 @vector_type_mode(ptr noundef nonnull %224) #20
  br label %238

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.tree_type, ptr %224, i64 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  br label %238

238:                                              ; preds = %233, %231
  %239 = phi i32 [ %232, %231 ], [ %237, %233 ]
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !295
  %243 = zext i8 %242 to i32
  %244 = add nsw i32 %243, -1
  %245 = load i32, ptr %220, align 4, !tbaa !562
  %246 = icmp eq i32 %245, 0
  %247 = icmp eq i32 %245, %244
  %248 = select i1 %246, i1 true, i1 %247
  br i1 %248, label %250, label %249, !prof !563

249:                                              ; preds = %238
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1361, ptr noundef nonnull @.str.1) #20
  br label %250

250:                                              ; preds = %249, %238
  store i32 %244, ptr %220, align 4, !tbaa !562
  %251 = load ptr, ptr %195, align 8, !tbaa !372
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %190, ptr noundef %251) #19
  br label %252

252:                                              ; preds = %250, %200, %206, %193
  %253 = add i32 %194, 1
  %254 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %5, i32 noundef %253, ptr noundef nonnull %2) #19, !range !356
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %193, !prof !564, !llvm.loop !565

256:                                              ; preds = %252, %212, %209, %189
  %257 = phi i1 [ true, %189 ], [ false, %209 ], [ false, %212 ], [ true, %252 ]
  %258 = load ptr, ptr %190, align 8, !tbaa !561
  %259 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %258) #19
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %293, label %261, !prof !566

261:                                              ; preds = %256
  br i1 %257, label %263, label %262, !prof !410

262:                                              ; preds = %261
  tail call fastcc void @VEC_gimple_base_truncate(ptr noundef %258) #19
  br label %293

263:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %264 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %258, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %282, label %266, !prof !567

266:                                              ; preds = %263, %278
  %267 = phi i32 [ %279, %278 ], [ 0, %263 ]
  %268 = load ptr, ptr %3, align 8, !tbaa !310
  %269 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %268) #19
  %270 = getelementptr inbounds %struct._stmt_vec_info, ptr %269, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !464
  %272 = getelementptr inbounds %struct.data_reference, ptr %271, i64 0, i32 2
  store ptr null, ptr %272, align 8, !tbaa !531
  %273 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %278, label %275, !prof !515

275:                                              ; preds = %266
  %276 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %277 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 44, i64 1, ptr %276)
  br label %278

278:                                              ; preds = %275, %266
  %279 = add i32 %267, 1
  %280 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %258, i32 noundef %279, ptr noundef nonnull %3) #19, !range !356
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %266, !prof !568, !llvm.loop !569

282:                                              ; preds = %278, %263
  %283 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %288, label %285, !prof !410

285:                                              ; preds = %282
  %286 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %287 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 41, i64 1, ptr %286)
  br label %288

288:                                              ; preds = %282, %285
  %289 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef nonnull %0, ptr noundef null) #19
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %292, !prof !299

291:                                              ; preds = %288
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1401, ptr noundef nonnull @.str.1) #20
  br label %292

292:                                              ; preds = %288, %291
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %295

293:                                              ; preds = %182, %179, %256, %262, %185
  %294 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef nonnull %0, ptr noundef null) #19
  br label %295

295:                                              ; preds = %175, %178, %293, %292
  %296 = phi i8 [ %289, %292 ], [ %294, %293 ], [ %176, %175 ], [ 0, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %296
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @aligned_access_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !570 !PGOFuncName !571 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !531
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vector_alignment_reachable_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !572 !PGOFuncName !573 {
  %2 = load ptr, ptr %0, align 8, !tbaa !372
  %3 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !507
  %6 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !337
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9, !prof !544

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1023
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = trunc i64 %14 to i32
  %16 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %0) #19, !range !298
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %107, label %18

18:                                               ; preds = %9
  %19 = load i64, ptr %5, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #20
  br label %27

24:                                               ; preds = %18
  %25 = lshr i32 %11, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !295
  %32 = zext i8 %31 to i32
  %33 = udiv i32 %32, %15
  %34 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !531
  %36 = ptrtoint ptr %35 to i64
  %37 = trunc i64 %36 to i32
  %38 = sdiv i32 %37, %33
  %39 = sub nsw i32 %15, %38
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 19
  %41 = load i32, ptr %40, align 8, !tbaa !545
  %42 = urem i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %27, %1
  %45 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %0) #19, !range !298
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %81, label %47, !prof !544

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @aligned_access_p(ptr noundef nonnull %0) #19, !range !298
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !295
  %53 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !295
  %55 = tail call i64 @int_cst_value(ptr noundef %54) #20
  %56 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.29, i64 noundef %55) #19
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %62 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !531
  %64 = ptrtoint ptr %63 to i64
  %65 = trunc i64 %64 to i32
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.30, i32 noundef %65) #19
  br label %67

67:                                               ; preds = %58, %50
  %68 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !531
  %70 = ptrtoint ptr %69 to i64
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = srem i64 %72, %55
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %80 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 44, i64 1, ptr %79)
  br label %107

81:                                               ; preds = %67, %47, %44
  %82 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %0) #19, !range !298
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %107, !prof !544

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !377
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !295
  %89 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !528
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !538

92:                                               ; preds = %84
  %93 = tail call zeroext i8 @contains_packed_reference(ptr noundef nonnull %90) #20
  br label %94

94:                                               ; preds = %92, %84
  %95 = phi i8 [ %93, %92 ], [ 0, %84 ]
  %96 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98, !prof !544

98:                                               ; preds = %94
  %99 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %100 = zext i8 %95 to i32
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.32, i32 noundef %100) #19
  br label %102

102:                                              ; preds = %98, %94
  %103 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 6), align 8, !tbaa !574
  %104 = tail call zeroext i8 %103(ptr noundef %88, i8 noundef zeroext %95) #20
  %105 = icmp ne i8 %104, 0
  %106 = zext i1 %105 to i8
  br label %107

107:                                              ; preds = %78, %75, %9, %81, %27, %102
  %108 = phi i8 [ %106, %102 ], [ 0, %27 ], [ 1, %81 ], [ 0, %9 ], [ 0, %75 ], [ 0, %78 ]
  ret i8 %108
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !575 !PGOFuncName !576 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !577

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !364
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @vect_can_advance_ivs_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @known_alignment_for_access_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !578 !PGOFuncName !579 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !531
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 4294967295
  %6 = icmp ne i64 %5, 4294967295
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_update_misalignment_for_peel(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !294 !PGOFuncName !580 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !377
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !295
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %14, !prof !299

12:                                               ; preds = %3
  %13 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #20
  br label %19

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !295
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !377
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !295
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 14
  br i1 %31, label %32, label %34, !prof !299

32:                                               ; preds = %19
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %28) #20
  br label %39

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !295
  %44 = zext i8 %43 to i32
  %45 = load ptr, ptr %0, align 8, !tbaa !372
  %46 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %45) #19
  %47 = load ptr, ptr %1, align 8, !tbaa !372
  %48 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %47) #19
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %46, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !337
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !410

52:                                               ; preds = %39
  %53 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %50) #19
  %54 = getelementptr inbounds %struct._stmt_vec_info, ptr %53, i64 0, i32 19
  %55 = load i32, ptr %54, align 8, !tbaa !545
  %56 = mul i32 %55, %24
  br label %57

57:                                               ; preds = %52, %39
  %58 = phi i32 [ %56, %52 ], [ %24, %39 ]
  %59 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !337
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62, !prof !410

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 19
  %64 = load i32, ptr %63, align 8, !tbaa !545
  %65 = mul i32 %64, %44
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i32 [ %65, %62 ], [ %44, %57 ]
  %68 = load ptr, ptr %1, align 8, !tbaa !372
  %69 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %68) #19
  %70 = getelementptr inbounds %struct._stmt_vec_info, ptr %69, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !581
  %72 = call fastcc i32 @VEC_dr_p_base_iterate(ptr noundef %71, i32 noundef 0, ptr noundef nonnull %4) #19, !range !356
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %96, label %78, !prof !408

74:                                               ; preds = %78
  %75 = add i32 %79, 1
  %76 = call fastcc i32 @VEC_dr_p_base_iterate(ptr noundef %71, i32 noundef %75, ptr noundef nonnull %4) #19, !range !356
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78, !prof !582, !llvm.loop !583

78:                                               ; preds = %66, %74
  %79 = phi i32 [ %75, %74 ], [ 0, %66 ]
  %80 = load ptr, ptr %4, align 8, !tbaa !310
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %74

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !531
  %85 = ptrtoint ptr %84 to i64
  %86 = trunc i64 %85 to i32
  %87 = sdiv i32 %86, %58
  %88 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !531
  %90 = ptrtoint ptr %89 to i64
  %91 = trunc i64 %90 to i32
  %92 = sdiv i32 %91, %67
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 889, ptr noundef nonnull @.str.1) #20
  br label %95

95:                                               ; preds = %82, %94
  store ptr null, ptr %83, align 8, !tbaa !531
  br label %138

96:                                               ; preds = %74, %66
  %97 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %0) #19, !range !298
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %130, label %99, !prof !410

99:                                               ; preds = %96
  %100 = tail call fastcc zeroext i8 @known_alignment_for_access_p(ptr noundef nonnull %1) #19, !range !298
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !531
  %105 = ptrtoint ptr %104 to i64
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct._stmt_vec_info, ptr %46, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !507
  %109 = mul nsw i32 %58, %2
  %110 = add nsw i32 %109, %106
  %111 = load i64, ptr %108, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 14
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = tail call i32 @vector_type_mode(ptr noundef nonnull %108) #20
  br label %121

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.tree_type, ptr %108, i64 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  br label %121

121:                                              ; preds = %116, %114
  %122 = phi i32 [ %115, %114 ], [ %120, %116 ]
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !295
  %126 = zext i8 %125 to i32
  %127 = srem i32 %110, %126
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to ptr
  store ptr %129, ptr %103, align 8, !tbaa !531
  br label %138

130:                                              ; preds = %99, %96
  %131 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133, !prof !410

133:                                              ; preds = %130
  %134 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %135 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 27, i64 1, ptr %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  store ptr inttoptr (i64 -1 to ptr), ptr %137, align 8, !tbaa !531
  br label %138

138:                                              ; preds = %136, %121, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !584 !PGOFuncName !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !556

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !586
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !588 !PGOFuncName !589 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !310
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_gimple_base_truncate(ptr noundef writeonly %0) unnamed_addr #9 !prof !322 !PGOFuncName !590 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !586
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !591 !PGOFuncName !592 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !593

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !586
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !594

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @contains_packed_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_dr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !294 !PGOFuncName !595 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !299

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !488
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !299

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !588 !PGOFuncName !596 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !597

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !310
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !588 !PGOFuncName !598 {
  %3 = load i32, ptr %0, align 8, !tbaa !586
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !586
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !588 !PGOFuncName !599 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !597

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !600
  %6 = load i32, ptr %0, align 8, !tbaa !586
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !601 {
  %3 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !602

5:                                                ; preds = %2
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %7 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 40, i64 1, ptr %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = tail call fastcc zeroext i8 @vect_compute_data_refs_alignment(ptr noundef %0, ptr noundef %1) #19, !range !298
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17, !prof !603

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %16 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 55, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %8, %11, %14
  %18 = phi i8 [ 0, %14 ], [ 0, %11 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_compute_data_refs_alignment(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !601 !PGOFuncName !604 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %6 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %7 = select i1 %4, ptr %6, ptr %5, !prof !605
  %8 = load ptr, ptr %7, align 8, !tbaa !310
  %9 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %15, !prof !606

11:                                               ; preds = %15
  %12 = add i32 %16, 1
  %13 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %8, i32 noundef %12, ptr noundef nonnull %3) #19, !range !356
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15, !prof !607, !llvm.loop !608

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !310
  %18 = tail call fastcc zeroext i8 @vect_compute_data_ref_alignment(ptr noundef %17) #19, !range !298
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %11, !prof !609

20:                                               ; preds = %15, %11, %2
  %21 = phi i8 [ 1, %2 ], [ 1, %11 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_compute_data_ref_alignment(ptr nocapture noundef %0) unnamed_addr #0 !prof !610 !PGOFuncName !611 {
  %2 = load ptr, ptr %0, align 8, !tbaa !372
  %3 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !509
  %6 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !377
  %8 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10, !prof !612

10:                                               ; preds = %1
  %11 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %12 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 32, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = icmp eq ptr %5, null
  br i1 %14, label %15, label %25, !prof !613

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  store ptr inttoptr (i64 -1 to ptr), ptr %16, align 8, !tbaa !531
  %17 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !422
  %20 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !614
  %22 = load ptr, ptr %17, align 8, !tbaa !415
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !507
  br label %80

25:                                               ; preds = %13
  %26 = load ptr, ptr %5, align 8, !tbaa !382
  %27 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  store ptr inttoptr (i64 -1 to ptr), ptr %27, align 8, !tbaa !531
  %28 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !422
  %31 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !614
  %33 = load ptr, ptr %28, align 8, !tbaa !415
  %34 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !507
  %36 = icmp eq ptr %26, null
  br i1 %36, label %80, label %37, !prof !615

37:                                               ; preds = %25
  %38 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %26, ptr noundef %2) #19, !range !298
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %80, label %40, !prof !616

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !426
  %43 = getelementptr inbounds %struct.tree_int_cst, ptr %42, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !295
  %45 = load i64, ptr %35, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = tail call i32 @vector_type_mode(ptr noundef nonnull %35) #20
  br label %55

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !295
  %60 = zext i8 %59 to i64
  %61 = srem i64 %44, %60
  %62 = icmp eq i64 %61, 0
  %63 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %64 = icmp eq i8 %63, 0
  br i1 %62, label %65, label %76

65:                                               ; preds = %55
  br i1 %64, label %69, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %68 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 35, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %65
  %70 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !617
  %72 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !618
  %74 = getelementptr inbounds %struct._stmt_vec_info, ptr %3, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !619
  br label %80

76:                                               ; preds = %55
  br i1 %64, label %80, label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %79 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %78)
  br label %80

80:                                               ; preds = %15, %69, %77, %76, %37, %25
  %81 = phi ptr [ %35, %37 ], [ %35, %25 ], [ %35, %69 ], [ %35, %77 ], [ %35, %76 ], [ %24, %15 ]
  %82 = phi ptr [ %27, %37 ], [ %27, %25 ], [ %27, %69 ], [ %27, %77 ], [ %27, %76 ], [ %16, %15 ]
  %83 = phi ptr [ %30, %37 ], [ %30, %25 ], [ %71, %69 ], [ null, %77 ], [ null, %76 ], [ %19, %15 ]
  %84 = phi ptr [ %32, %37 ], [ %32, %25 ], [ %73, %69 ], [ %32, %77 ], [ %32, %76 ], [ %21, %15 ]
  %85 = phi ptr [ %33, %37 ], [ %33, %25 ], [ %75, %69 ], [ %33, %77 ], [ %33, %76 ], [ %22, %15 ]
  %86 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %85) #20
  %87 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !295
  %89 = lshr i32 %88, 3
  %90 = zext nneg i32 %89 to i64
  %91 = tail call ptr @size_int_kind(i64 noundef %90, i32 noundef 1) #20
  %92 = icmp eq ptr %84, null
  br i1 %92, label %98, label %93, !prof !609

93:                                               ; preds = %80
  %94 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %84, ptr noundef %91) #20
  %95 = icmp sgt i32 %94, -1
  %96 = icmp ne ptr %83, null
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %107, label %100, !prof !620

98:                                               ; preds = %80
  %99 = icmp eq ptr %83, null
  br i1 %99, label %100, label %107, !prof !621

100:                                              ; preds = %98, %93
  %101 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %195, label %103, !prof !622

103:                                              ; preds = %100
  %104 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %105 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 30, i64 1, ptr %104)
  %106 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  tail call void @print_generic_expr(ptr noundef %106, ptr noundef %86, i32 noundef 2) #20
  br label %195

107:                                              ; preds = %93, %98
  %108 = load i64, ptr %86, align 8
  %109 = and i64 %108, 65535
  %110 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !333
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %121, !prof !623

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.tree_decl_common, ptr %86, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !295
  %116 = lshr i32 %115, 3
  %117 = zext nneg i32 %116 to i64
  %118 = tail call ptr @size_int_kind(i64 noundef %117, i32 noundef 1) #20
  %119 = tail call i32 @tree_int_cst_compare(ptr noundef %118, ptr noundef %91) #20
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %172, label %121, !prof !624

121:                                              ; preds = %113, %107
  %122 = load i64, ptr %85, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 141
  br i1 %124, label %125, label %137, !prof !625

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !295
  %128 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !295
  %130 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 7
  %131 = load i32, ptr %130, align 8, !tbaa !295
  %132 = lshr i32 %131, 3
  %133 = zext nneg i32 %132 to i64
  %134 = tail call ptr @size_int_kind(i64 noundef %133, i32 noundef 1) #20
  %135 = tail call i32 @tree_int_cst_compare(ptr noundef %134, ptr noundef %91) #20
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %172, label %137, !prof !626

137:                                              ; preds = %125, %121
  %138 = load i32, ptr %87, align 8, !tbaa !295
  %139 = tail call zeroext i8 @vect_can_force_dr_alignment_p(ptr noundef nonnull %86, i32 noundef %138) #19, !range !298
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %148, label %141, !prof !627

141:                                              ; preds = %137
  %142 = load i64, ptr %86, align 8
  %143 = and i64 %142, 67108864
  %144 = icmp ne i64 %143, 0
  %145 = load i32, ptr @flag_section_anchors, align 4
  %146 = icmp ne i32 %145, 0
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %155, !prof !628

148:                                              ; preds = %141, %137
  %149 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %195, label %151, !prof !629

151:                                              ; preds = %148
  %152 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %153 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 30, i64 1, ptr %152)
  %154 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  tail call void @print_generic_expr(ptr noundef %154, ptr noundef %7, i32 noundef 2) #20
  br label %195

155:                                              ; preds = %141
  %156 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %161, label %158, !prof !630

158:                                              ; preds = %155
  %159 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %160 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 15, i64 1, ptr %159)
  br label %161

161:                                              ; preds = %155, %158
  %162 = load i32, ptr %87, align 8, !tbaa !295
  %163 = getelementptr inbounds %struct.tree_decl_common, ptr %86, i64 0, i32 3
  store i32 %162, ptr %163, align 8, !tbaa !295
  %164 = load i64, ptr %86, align 8
  %165 = or i64 %164, 4398046511104
  store i64 %165, ptr %86, align 8
  %166 = and i64 %164, 65535
  %167 = icmp eq i64 %166, 32
  br i1 %167, label %168, label %171, !prof !630

168:                                              ; preds = %161
  %169 = load i32, ptr %87, align 8, !tbaa !295
  %170 = icmp ult i32 %162, %169
  br i1 %170, label %171, label %172, !prof !631

171:                                              ; preds = %168, %161
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 802, ptr noundef nonnull @.str.1) #20
  br label %172

172:                                              ; preds = %113, %125, %168, %171
  %173 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 73, ptr noundef nonnull %83, ptr noundef %91) #20
  %174 = tail call i32 @host_integerp(ptr noundef %173, i32 noundef 1) #20
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %182, !prof !632

176:                                              ; preds = %172
  %177 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %176
  %180 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %181 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 25, i64 1, ptr %180)
  br label %195

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.tree_int_cst, ptr %173, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !295
  %185 = inttoptr i64 %184 to ptr
  store ptr %185, ptr %82, align 8, !tbaa !531
  %186 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %195, label %188, !prof !633

188:                                              ; preds = %182
  %189 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %190 = load ptr, ptr %82, align 8, !tbaa !531
  %191 = ptrtoint ptr %190 to i64
  %192 = trunc i64 %191 to i32
  %193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef nonnull @.str.43, i32 noundef %192) #19
  %194 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  tail call void @print_generic_expr(ptr noundef %194, ptr noundef %7, i32 noundef 2) #20
  br label %195

195:                                              ; preds = %182, %188, %176, %179, %148, %151, %100, %103
  %196 = phi i8 [ 1, %103 ], [ 1, %100 ], [ 1, %151 ], [ 1, %148 ], [ 0, %179 ], [ 0, %176 ], [ 1, %188 ], [ 1, %182 ]
  ret i8 %196
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @nested_in_vect_loop_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !634 !PGOFuncName !635 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !437
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !636

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #19
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !637
  %10 = icmp eq ptr %4, %9
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %2 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @vect_can_force_dr_alignment_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 !prof !639 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 32
  br i1 %5, label %6, label %16, !prof !640

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 33554432
  %10 = and i64 %3, 4194304
  %11 = or disjoint i64 %9, %10
  %12 = icmp eq i64 %11, 0
  %13 = icmp ult i32 %1, -2147483647
  %14 = and i1 %12, %13
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i8 [ 0, %2 ], [ %15, %6 ]
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !641 !PGOFuncName !642 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !295
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !643 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !644

6:                                                ; preds = %2
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %8 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 38, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11, !prof !645

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  br label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !310
  %18 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %24, !prof !646

20:                                               ; preds = %24
  %21 = add i32 %25, 1
  %22 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %17, i32 noundef %21, ptr noundef nonnull %3) #19, !range !356
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24, !prof !647, !llvm.loop !648

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %21, %20 ], [ 0, %15 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !310
  %27 = tail call fastcc zeroext i8 @vect_analyze_data_ref_access(ptr noundef %26) #19, !range !298
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %20, !prof !649

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32, !prof !650

32:                                               ; preds = %29
  %33 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %34 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 43, i64 1, ptr %33)
  br label %35

35:                                               ; preds = %20, %15, %29, %32
  %36 = phi i8 [ 0, %32 ], [ 0, %29 ], [ 1, %15 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vect_analyze_data_ref_access(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !651 !PGOFuncName !652 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !377
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = load ptr, ptr %0, align 8, !tbaa !372
  %9 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !509
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13, !prof !653

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !295
  %16 = load ptr, ptr %11, align 8, !tbaa !382
  %17 = icmp eq i64 %15, 0
  br i1 %17, label %73, label %18, !prof !654

18:                                               ; preds = %13
  %19 = icmp eq ptr %16, null
  br i1 %19, label %48, label %20, !prof !615

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %16, ptr noundef %8) #19, !range !298
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %42, label %23, !prof !655

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %8) #19
  %25 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 17
  store ptr null, ptr %25, align 8, !tbaa !337
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !656
  %28 = getelementptr inbounds %struct.tree_int_cst, ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !295
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %36 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 24, i64 1, ptr %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %39 = load i8, ptr %38, align 8, !tbaa !385
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i8
  br label %73

42:                                               ; preds = %23, %20
  %43 = phi ptr [ %27, %23 ], [ %3, %20 ]
  %44 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !295
  %46 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %43, ptr noundef %45) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %61, !prof !657

48:                                               ; preds = %18
  %49 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !295
  %51 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %3, ptr noundef %50) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %71, !prof !657

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !295
  %56 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %3, ptr noundef %55) #20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %71, !prof !657

58:                                               ; preds = %48, %53, %42
  %59 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %8) #19
  %60 = getelementptr inbounds %struct._stmt_vec_info, ptr %59, i64 0, i32 17
  store ptr null, ptr %60, align 8, !tbaa !337
  br label %73

61:                                               ; preds = %42
  br i1 %19, label %71, label %62, !prof !658

62:                                               ; preds = %61
  %63 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %16, ptr noundef %8) #19, !range !298
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65, !prof !404

65:                                               ; preds = %62
  %66 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %70 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 29, i64 1, ptr %69)
  br label %73

71:                                               ; preds = %48, %53, %62, %61
  %72 = tail call fastcc zeroext i8 @vect_analyze_group_access(ptr noundef nonnull %0) #19, !range !298
  br label %73

73:                                               ; preds = %65, %68, %37, %13, %71, %58
  %74 = phi i8 [ %72, %71 ], [ 1, %58 ], [ 0, %13 ], [ %41, %37 ], [ 0, %68 ], [ 0, %65 ]
  ret i8 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_analyze_group_access(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !659 !PGOFuncName !660 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !377
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !295
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !295
  %12 = load ptr, ptr %0, align 8, !tbaa !372
  %13 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !509
  %16 = getelementptr inbounds %struct._stmt_vec_info, ptr %13, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !661
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !295
  %20 = sdiv i64 %19, %11
  %21 = srem i64 %19, %11
  %22 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !337
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %60, !prof !662

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !385
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30, !prof !663

30:                                               ; preds = %26
  %31 = srem i64 %19, %11
  %32 = icmp eq i64 %31, 0
  %33 = icmp sgt i64 %20, 0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %54, !prof !664

35:                                               ; preds = %30
  %36 = tail call i32 @exact_log2(i64 noundef %20) #20
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %54, label %38, !prof !665

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %39, i64 0, i32 17
  store ptr %12, ptr %40, align 8, !tbaa !337
  %41 = trunc i64 %20 to i32
  %42 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %42, i64 0, i32 19
  store i32 %41, ptr %43, align 8, !tbaa !545
  %44 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %265, label %46, !prof !666

46:                                               ; preds = %38
  %47 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %48 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 37, i64 1, ptr %47)
  %49 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %50 = load ptr, ptr %4, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %49, ptr noundef %50, i32 noundef 2) #20
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %52 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 6, i64 1, ptr %51)
  %53 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef nonnull %3, i32 noundef 2) #20
  br label %265

54:                                               ; preds = %35, %30, %26
  %55 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %265, label %57, !prof !667

57:                                               ; preds = %54
  %58 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %59 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 22, i64 1, ptr %58)
  br label %265

60:                                               ; preds = %1
  %61 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %62 = getelementptr inbounds %struct._stmt_vec_info, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !337
  %64 = icmp eq ptr %63, %12
  br i1 %64, label %65, label %265, !prof !668

65:                                               ; preds = %60
  %66 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %67 = getelementptr inbounds %struct._stmt_vec_info, ptr %66, i64 0, i32 18
  %68 = load ptr, ptr %67, align 8, !tbaa !340
  %69 = icmp eq ptr %68, null
  br i1 %69, label %178, label %70, !prof !403

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !422
  br label %73

73:                                               ; preds = %70, %166
  %74 = phi ptr [ %176, %166 ], [ %68, %70 ]
  %75 = phi i64 [ %168, %166 ], [ 0, %70 ]
  %76 = phi ptr [ %83, %166 ], [ %12, %70 ]
  %77 = phi ptr [ %172, %166 ], [ %72, %70 ]
  %78 = phi i8 [ %167, %166 ], [ 0, %70 ]
  %79 = phi i32 [ %175, %166 ], [ 1, %70 ]
  %80 = phi ptr [ %143, %166 ], [ %0, %70 ]
  %81 = getelementptr inbounds %struct.data_reference, ptr %80, i64 0, i32 4, i32 2
  br label %82

82:                                               ; preds = %73, %119
  %83 = phi ptr [ %74, %73 ], [ %124, %119 ]
  %84 = phi ptr [ %76, %73 ], [ %83, %119 ]
  %85 = load ptr, ptr %81, align 8, !tbaa !422
  %86 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %87 = getelementptr inbounds %struct._stmt_vec_info, ptr %86, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !464
  %89 = getelementptr inbounds %struct.data_reference, ptr %88, i64 0, i32 4, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !422
  %91 = tail call i32 @tree_int_cst_compare(ptr noundef %85, ptr noundef %90) #20
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %126, !prof !669

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.data_reference, ptr %80, i64 0, i32 3
  %95 = load i8, ptr %94, align 8, !tbaa !385
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %265, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %102 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 34, i64 1, ptr %101)
  br label %265

103:                                              ; preds = %93
  %104 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %105 = getelementptr inbounds %struct._stmt_vec_info, ptr %104, i64 0, i32 23
  %106 = load i8, ptr %105, align 8, !tbaa !407
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %84) #19
  %110 = getelementptr inbounds %struct._stmt_vec_info, ptr %109, i64 0, i32 23
  %111 = load i8, ptr %110, align 8, !tbaa !407
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108, %103
  %114 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %265, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %118 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 38, i64 1, ptr %117)
  br label %265

119:                                              ; preds = %108
  %120 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %121 = getelementptr inbounds %struct._stmt_vec_info, ptr %120, i64 0, i32 22
  store ptr %84, ptr %121, align 8, !tbaa !670
  %122 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %123 = getelementptr inbounds %struct._stmt_vec_info, ptr %122, i64 0, i32 18
  %124 = load ptr, ptr %123, align 8, !tbaa !340
  %125 = icmp eq ptr %124, null
  br i1 %125, label %178, label %82, !prof !671, !llvm.loop !672

126:                                              ; preds = %82
  %127 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %128 = getelementptr inbounds %struct._stmt_vec_info, ptr %127, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !464
  %130 = getelementptr inbounds %struct.data_reference, ptr %129, i64 0, i32 4, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !426
  %132 = tail call i32 @tree_int_cst_compare(ptr noundef %3, ptr noundef %131) #20
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134, !prof !673

134:                                              ; preds = %126
  %135 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %265, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %139 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 38, i64 1, ptr %138)
  br label %265

140:                                              ; preds = %126
  %141 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %142 = getelementptr inbounds %struct._stmt_vec_info, ptr %141, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !464
  %144 = getelementptr inbounds %struct.data_reference, ptr %143, i64 0, i32 4, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !422
  %146 = getelementptr inbounds %struct.tree_int_cst, ptr %145, i64 0, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !295
  %148 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !295
  %150 = sub i64 %147, %149
  %151 = udiv i64 %150, %11
  %152 = icmp eq i64 %151, 1
  br i1 %152, label %166, label %153, !prof !674

153:                                              ; preds = %140
  %154 = getelementptr inbounds %struct.data_reference, ptr %143, i64 0, i32 3
  %155 = load i8, ptr %154, align 8, !tbaa !385
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %163, !prof !675

157:                                              ; preds = %153
  %158 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %265, label %160, !prof !676

160:                                              ; preds = %157
  %161 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %162 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 27, i64 1, ptr %161)
  br label %265

163:                                              ; preds = %153
  %164 = add i64 %75, -1
  %165 = add i64 %164, %151
  br label %166

166:                                              ; preds = %163, %140
  %167 = phi i8 [ 1, %163 ], [ %78, %140 ]
  %168 = phi i64 [ %165, %163 ], [ %75, %140 ]
  %169 = trunc i64 %151 to i32
  %170 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %171 = getelementptr inbounds %struct._stmt_vec_info, ptr %170, i64 0, i32 21
  store i32 %169, ptr %171, align 8, !tbaa !677
  %172 = load ptr, ptr %144, align 8, !tbaa !422
  %173 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %83) #19
  %174 = getelementptr inbounds %struct._stmt_vec_info, ptr %173, i64 0, i32 18
  %175 = add i32 %79, 1
  %176 = load ptr, ptr %174, align 8, !tbaa !340
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %73, !prof !678, !llvm.loop !672

178:                                              ; preds = %166, %119, %65
  %179 = phi i32 [ 1, %65 ], [ %79, %119 ], [ %175, %166 ]
  %180 = phi i8 [ 0, %65 ], [ %78, %119 ], [ %167, %166 ]
  %181 = phi i64 [ 0, %65 ], [ %75, %119 ], [ %168, %166 ]
  %182 = zext i32 %179 to i64
  %183 = mul nsw i64 %11, %182
  %184 = icmp eq i64 %19, 0
  br i1 %184, label %228, label %185, !prof !679

185:                                              ; preds = %178
  %186 = add i64 %181, %182
  %187 = mul i64 %186, %11
  %188 = icmp slt i64 %19, %187
  br i1 %188, label %189, label %197, !prof !680

189:                                              ; preds = %185
  %190 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %265, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %194 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 43, i64 1, ptr %193)
  %195 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %196 = load ptr, ptr %4, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %195, ptr noundef %196, i32 noundef 2) #20
  br label %265

197:                                              ; preds = %185
  %198 = icmp eq i64 %19, %183
  br i1 %198, label %214, label %199, !prof !681

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %201 = load i8, ptr %200, align 8, !tbaa !385
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = trunc i64 %20 to i32
  %205 = sub i32 %204, %179
  %206 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %207 = getelementptr inbounds %struct._stmt_vec_info, ptr %206, i64 0, i32 21
  store i32 %205, ptr %207, align 8, !tbaa !677
  br label %214

208:                                              ; preds = %199
  %209 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %265, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %213 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 27, i64 1, ptr %212)
  br label %265

214:                                              ; preds = %203, %197
  %215 = phi i8 [ %180, %197 ], [ 1, %203 ]
  %216 = icmp eq i64 %21, 0
  br i1 %216, label %228, label %217, !prof !303

217:                                              ; preds = %214
  %218 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %265, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %222 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 42, i64 1, ptr %221)
  %223 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  tail call void @print_generic_expr(ptr noundef %223, ptr noundef %3, i32 noundef 2) #20
  %224 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %225 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %224)
  %226 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %227 = load ptr, ptr %8, align 8, !tbaa !295
  tail call void @print_generic_expr(ptr noundef %226, ptr noundef %227, i32 noundef 2) #20
  br label %265

228:                                              ; preds = %178, %214
  %229 = phi i8 [ %215, %214 ], [ %180, %178 ]
  %230 = tail call i32 @exact_log2(i64 noundef %20) #20
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %240, !prof !682

232:                                              ; preds = %228
  %233 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %238, label %235, !prof !682

235:                                              ; preds = %232
  %236 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %237 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 32, i64 1, ptr %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = icmp eq i8 %229, 0
  br i1 %239, label %240, label %265, !prof !683

240:                                              ; preds = %238, %228
  %241 = icmp eq i64 %20, 0
  %242 = select i1 %241, i64 %182, i64 %20, !prof !684
  %243 = trunc i64 %242 to i32
  %244 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #19
  %245 = getelementptr inbounds %struct._stmt_vec_info, ptr %244, i64 0, i32 19
  store i32 %243, ptr %245, align 8, !tbaa !545
  %246 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248, !prof !534

248:                                              ; preds = %240
  %249 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %250 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %249, ptr noundef nonnull @.str.60, i32 noundef %243) #19
  br label %251

251:                                              ; preds = %248, %240
  %252 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %253 = load i8, ptr %252, align 8, !tbaa !385
  %254 = icmp ne i8 %253, 0
  %255 = icmp ne i8 %229, 0
  %256 = select i1 %254, i1 true, i1 %255
  br i1 %256, label %265, label %257, !prof !685

257:                                              ; preds = %251
  %258 = icmp eq ptr %15, null
  br i1 %258, label %261, label %259, !prof !686

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct._loop_vec_info, ptr %15, i64 0, i32 15
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %260, ptr noundef %12) #19
  br label %261

261:                                              ; preds = %259, %257
  %262 = icmp eq ptr %17, null
  br i1 %262, label %265, label %263, !prof !593

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct._bb_vec_info, ptr %17, i64 0, i32 1
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %264, ptr noundef %12) #19
  br label %265

265:                                              ; preds = %100, %97, %116, %113, %137, %134, %160, %157, %192, %189, %211, %208, %220, %217, %238, %60, %251, %263, %261, %54, %57, %38, %46
  %266 = phi i8 [ 1, %46 ], [ 1, %38 ], [ 0, %57 ], [ 0, %54 ], [ 1, %261 ], [ 1, %263 ], [ 1, %251 ], [ 1, %60 ], [ 0, %238 ], [ 0, %217 ], [ 0, %220 ], [ 0, %208 ], [ 0, %211 ], [ 0, %189 ], [ 0, %192 ], [ 0, %157 ], [ 0, %160 ], [ 0, %134 ], [ 0, %137 ], [ 0, %113 ], [ 0, %116 ], [ 0, %97 ], [ 0, %100 ]
  ret i8 %266
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_prune_runtime_alias_test_list(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !532 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !541
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !534

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %8 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 42, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %3) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %74, label %12, !prof !544

12:                                               ; preds = %9, %57
  %13 = phi i32 [ %58, %57 ], [ 0, %9 ]
  %14 = tail call fastcc ptr @VEC_ddr_p_base_index(ptr noundef %3, i32 noundef %13) #19
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %55, label %19

16:                                               ; preds = %19
  %17 = add nuw i32 %20, 1
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %55, label %19, !llvm.loop !687

19:                                               ; preds = %12, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %12 ]
  %21 = tail call fastcc ptr @VEC_ddr_p_base_index(ptr noundef %3, i32 noundef %20) #19
  %22 = tail call fastcc zeroext i8 @vect_vfa_range_equal(ptr noundef %14, ptr noundef %21) #19, !range !298
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %19
  %25 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %29 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 19, i64 1, ptr %28)
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %31 = load ptr, ptr %14, align 8, !tbaa !369
  %32 = getelementptr inbounds %struct.data_reference, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef %33, i32 noundef 2) #20
  %34 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %35 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 2, i64 1, ptr %34)
  %36 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %37 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !371
  %39 = getelementptr inbounds %struct.data_reference, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef %40, i32 noundef 2) #20
  %41 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %42 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %41)
  %43 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %44 = load ptr, ptr %21, align 8, !tbaa !369
  %45 = getelementptr inbounds %struct.data_reference, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %43, ptr noundef %46, i32 noundef 2) #20
  %47 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %48 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 2, i64 1, ptr %47)
  %49 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %50 = getelementptr inbounds %struct.data_dependence_relation, ptr %21, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !371
  %52 = getelementptr inbounds %struct.data_reference, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !377
  tail call void @print_generic_expr(ptr noundef %49, ptr noundef %53, i32 noundef 2) #20
  br label %54

54:                                               ; preds = %27, %24
  tail call fastcc void @VEC_ddr_p_base_ordered_remove(ptr noundef %3, i32 noundef %13) #19
  br label %57, !llvm.loop !688

55:                                               ; preds = %16, %12
  %56 = add i32 %13, 1
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ %13, %54 ], [ %56, %55 ]
  %59 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %3) #19
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %12, label %61, !prof !689

61:                                               ; preds = %57
  %62 = load ptr, ptr @compiler_params, align 8, !tbaa !310
  %63 = getelementptr inbounds %struct.param_info, ptr %62, i64 72, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !435
  %65 = icmp ugt i32 %59, %64
  br i1 %65, label %66, label %74, !prof !690

66:                                               ; preds = %61
  %67 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %71 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 71, i64 1, ptr %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %2, align 8, !tbaa !541
  tail call fastcc void @VEC_ddr_p_base_truncate(ptr noundef %73) #19
  br label %74

74:                                               ; preds = %9, %61, %72
  %75 = phi i8 [ 0, %72 ], [ 1, %61 ], [ 1, %9 ]
  ret i8 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ddr_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !322 !PGOFuncName !691 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !310
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_vfa_range_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !322 !PGOFuncName !692 {
  %3 = load ptr, ptr %0, align 8, !tbaa !369
  %4 = load ptr, ptr %1, align 8, !tbaa !369
  %5 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %3, ptr noundef %4) #19, !range !298
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !371
  %10 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !371
  %12 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %9, ptr noundef %11) #19, !range !298
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7, %2
  %15 = load ptr, ptr %0, align 8, !tbaa !369
  %16 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !371
  %18 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %15, ptr noundef %17) #19, !range !298
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !371
  %23 = load ptr, ptr %1, align 8, !tbaa !369
  %24 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %22, ptr noundef %23) #19, !range !298
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %27

27:                                               ; preds = %7, %20, %26
  %28 = phi i8 [ 0, %26 ], [ 1, %20 ], [ 1, %7 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ddr_p_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !322 !PGOFuncName !693 {
  %3 = load i32, ptr %0, align 8, !tbaa !364
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !364
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_ddr_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #9 !prof !322 !PGOFuncName !694 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !364
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_same_range_drs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !322 !PGOFuncName !695 {
  %3 = load ptr, ptr %0, align 8, !tbaa !372
  %4 = load ptr, ptr %1, align 8, !tbaa !372
  %5 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !377
  %7 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !377
  %9 = tail call i32 @operand_equal_p(ptr noundef %6, ptr noundef %8, i32 noundef 0) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %3) #19
  %13 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !337
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %4) #19
  %18 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !337
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %3) #19
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !337
  %25 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %4) #19
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !337
  %28 = icmp eq ptr %24, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %21, %16, %11
  br label %30

30:                                               ; preds = %2, %21, %29
  %31 = phi i8 [ 0, %29 ], [ 1, %21 ], [ 1, %2 ]
  ret i8 %31
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_refs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !696 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.affine_iv, align 8
  %11 = alloca %struct.affine_iv, align 8
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %13 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15, !prof !697

15:                                               ; preds = %2
  %16 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %17 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 31, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = icmp eq ptr %0, null
  br i1 %19, label %32, label %20, !prof !698

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !382
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %23 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %24 = tail call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %21, i8 noundef zeroext 1, ptr noundef nonnull %22, ptr noundef nonnull %23) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %44, !prof !699

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %264, label %29, !prof !700

29:                                               ; preds = %26
  %30 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %31 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 87, i64 1, ptr %30)
  br label %264

32:                                               ; preds = %18
  %33 = load ptr, ptr %1, align 8, !tbaa !701
  %34 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 4
  %36 = tail call zeroext i8 @compute_data_dependences_for_bb(ptr noundef %33, i8 noundef zeroext 1, ptr noundef nonnull %34, ptr noundef nonnull %35) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44, !prof !703

38:                                               ; preds = %32
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %264, label %41, !prof !704

41:                                               ; preds = %38
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %43 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 94, i64 1, ptr %42)
  br label %264

44:                                               ; preds = %32, %20
  %45 = phi ptr [ %22, %20 ], [ %34, %32 ]
  %46 = phi ptr [ %21, %20 ], [ null, %32 ]
  %47 = load ptr, ptr %45, align 8, !tbaa !310
  %48 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %3) #19, !range !356
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %264, label %54, !prof !705

50:                                               ; preds = %244
  %51 = add i32 %55, 1
  %52 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %47, i32 noundef %51, ptr noundef nonnull %3) #19, !range !356
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %264, label %54, !prof !706, !llvm.loop !707

54:                                               ; preds = %44, %50
  %55 = phi i32 [ %51, %50 ], [ 0, %44 ]
  %56 = load ptr, ptr %3, align 8, !tbaa !310
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !708

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.data_reference, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !377
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68, !prof !708

62:                                               ; preds = %58, %54
  %63 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %264, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %67 = call i64 @fwrite(ptr nonnull @.str.68, i64 35, i64 1, ptr %66)
  br label %264

68:                                               ; preds = %58
  %69 = load ptr, ptr %56, align 8, !tbaa !372
  %70 = call fastcc ptr @vinfo_for_stmt(ptr noundef %69) #19
  %71 = getelementptr inbounds %struct.data_reference, ptr %56, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !415
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %74, !prof !709

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.data_reference, ptr %56, i64 0, i32 4, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !420
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78, !prof !710

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.data_reference, ptr %56, i64 0, i32 4, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !422
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82, !prof !710

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.data_reference, ptr %56, i64 0, i32 4, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !426
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %93, !prof !710

86:                                               ; preds = %82, %78, %74, %68
  %87 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %264, label %89, !prof !711

89:                                               ; preds = %86
  %90 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %91 = call i64 @fwrite(ptr nonnull @.str.69, i64 41, i64 1, ptr %90)
  %92 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_gimple_stmt(ptr noundef %92, ptr noundef %69, i32 noundef 0, i32 noundef 2) #20
  br label %264

93:                                               ; preds = %82
  %94 = load i64, ptr %72, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 23
  br i1 %96, label %97, label %103, !prof !712

97:                                               ; preds = %93
  %98 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %264, label %100, !prof !713

100:                                              ; preds = %97
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %102 = call i64 @fwrite(ptr nonnull @.str.70, i64 45, i64 1, ptr %101)
  br label %264

103:                                              ; preds = %93
  %104 = icmp eq ptr %46, null
  %105 = call ptr @unshare_expr(ptr noundef nonnull %72) #20
  %106 = load ptr, ptr %75, align 8, !tbaa !420
  %107 = call ptr @unshare_expr(ptr noundef %106) #20
  %108 = load ptr, ptr %79, align 8, !tbaa !422
  %109 = call ptr @unshare_expr(ptr noundef %108) #20
  br i1 %104, label %233, label %110, !prof !714

110:                                              ; preds = %103
  %111 = call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef nonnull %46, ptr noundef %69) #19, !range !298
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %233, label %113, !prof !715

113:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  %114 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !295
  %116 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %117 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %116, ptr noundef %109) #20
  %118 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %115, ptr noundef %105, ptr noundef %117) #20
  %119 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %118) #20
  %120 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122, !prof !406

122:                                              ; preds = %113
  %123 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %124 = call i64 @fwrite(ptr nonnull @.str.71, i64 23, i64 1, ptr %123)
  %125 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_generic_expr(ptr noundef %125, ptr noundef %119, i32 noundef 2) #20
  br label %126

126:                                              ; preds = %122, %113
  %127 = call ptr @get_inner_reference(ptr noundef %119, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #20
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130, !prof !326

129:                                              ; preds = %126
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1979, ptr noundef nonnull @.str.1) #20
  br label %130

130:                                              ; preds = %126, %129
  %131 = load i64, ptr %5, align 8, !tbaa !304
  %132 = and i64 %131, 7
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %140, label %134, !prof !406

134:                                              ; preds = %130
  %135 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %263, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %139 = call i64 @fwrite(ptr nonnull @.str.72, i64 30, i64 1, ptr %138)
  br label %263

140:                                              ; preds = %130
  %141 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %127) #20
  %142 = call fastcc ptr @loop_containing_stmt(ptr noundef %69) #19
  %143 = call zeroext i8 @simple_iv(ptr noundef nonnull %46, ptr noundef %142, ptr noundef %141, ptr noundef nonnull %10, i8 noundef zeroext 0) #20
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %151, !prof !326

145:                                              ; preds = %140
  %146 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %263, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %150 = call i64 @fwrite(ptr nonnull @.str.73, i64 41, i64 1, ptr %149)
  br label %263

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.affine_iv, ptr %11, i64 0, i32 1
  %153 = icmp eq ptr %107, null
  %154 = load ptr, ptr %6, align 8, !tbaa !310
  br i1 %153, label %162, label %155, !prof !326

155:                                              ; preds = %151
  %156 = icmp eq ptr %154, null
  br i1 %156, label %161, label %157, !prof !406

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !295
  %160 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %159, ptr noundef nonnull %107, ptr noundef nonnull %154) #20
  store ptr %160, ptr %6, align 8, !tbaa !310
  br label %162

161:                                              ; preds = %155
  store ptr %107, ptr %6, align 8, !tbaa !310
  br label %168

162:                                              ; preds = %151, %157
  %163 = phi ptr [ %160, %157 ], [ %154, %151 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %168, !prof !716

165:                                              ; preds = %162
  %166 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  store ptr %166, ptr %11, align 8, !tbaa !717
  %167 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  store ptr %167, ptr %152, align 8, !tbaa !719
  br label %179

168:                                              ; preds = %161, %162
  %169 = phi ptr [ %107, %161 ], [ %163, %162 ]
  %170 = call fastcc ptr @loop_containing_stmt(ptr noundef %69) #19
  %171 = call zeroext i8 @simple_iv(ptr noundef nonnull %46, ptr noundef %170, ptr noundef nonnull %169, ptr noundef nonnull %11, i8 noundef zeroext 0) #20
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %179, !prof !326

173:                                              ; preds = %168
  %174 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %263, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %178 = call i64 @fwrite(ptr nonnull @.str.74, i64 35, i64 1, ptr %177)
  br label %263

179:                                              ; preds = %168, %165
  %180 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 1
  %181 = load i64, ptr %5, align 8, !tbaa !304
  %182 = sdiv i64 %181, 8
  %183 = call ptr @size_int_kind(i64 noundef %182, i32 noundef 1) #20
  %184 = load ptr, ptr %10, align 8, !tbaa !717
  call void @split_constant_offset(ptr noundef %184, ptr noundef nonnull %10, ptr noundef nonnull %12) #20
  %185 = load ptr, ptr %12, align 8, !tbaa !310
  %186 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %183, ptr noundef %185) #20
  %187 = load ptr, ptr %11, align 8, !tbaa !717
  call void @split_constant_offset(ptr noundef %187, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %188 = load ptr, ptr %12, align 8, !tbaa !310
  %189 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %186, ptr noundef %188) #20
  %190 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !310
  %191 = load ptr, ptr %180, align 8, !tbaa !719
  %192 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %190, ptr noundef %191) #20
  %193 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !310
  %194 = load ptr, ptr %152, align 8, !tbaa !719
  %195 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %193, ptr noundef %194) #20
  %196 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %192, ptr noundef %195) #20
  %197 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 11
  store ptr %196, ptr %197, align 8, !tbaa !656
  %198 = load ptr, ptr %10, align 8, !tbaa !717
  %199 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 8
  store ptr %198, ptr %199, align 8, !tbaa !619
  %200 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 9
  store ptr %189, ptr %200, align 8, !tbaa !617
  %201 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !310
  %202 = load ptr, ptr %11, align 8, !tbaa !717
  %203 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %201, ptr noundef %202) #20
  %204 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 10
  store ptr %203, ptr %204, align 8, !tbaa !720
  %205 = load ptr, ptr %11, align 8, !tbaa !717
  %206 = call i64 @highest_pow2_factor(ptr noundef %205) #20
  %207 = call ptr @size_int_kind(i64 noundef %206, i32 noundef 0) #20
  %208 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 12
  store ptr %207, ptr %208, align 8, !tbaa !618
  %209 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %232, label %211, !prof !406

211:                                              ; preds = %179
  %212 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %213 = call i64 @fwrite(ptr nonnull @.str.75, i64 21, i64 1, ptr %212)
  %214 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %215 = load ptr, ptr %199, align 8, !tbaa !619
  call void @print_generic_expr(ptr noundef %214, ptr noundef %215, i32 noundef 2) #20
  %216 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %217 = call i64 @fwrite(ptr nonnull @.str.76, i64 34, i64 1, ptr %216)
  %218 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %219 = load ptr, ptr %204, align 8, !tbaa !720
  call void @print_generic_expr(ptr noundef %218, ptr noundef %219, i32 noundef 2) #20
  %220 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %221 = call i64 @fwrite(ptr nonnull @.str.77, i64 43, i64 1, ptr %220)
  %222 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %223 = load ptr, ptr %200, align 8, !tbaa !617
  call void @print_generic_expr(ptr noundef %222, ptr noundef %223, i32 noundef 2) #20
  %224 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %225 = call i64 @fwrite(ptr nonnull @.str.78, i64 14, i64 1, ptr %224)
  %226 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %227 = load ptr, ptr %197, align 8, !tbaa !656
  call void @print_generic_expr(ptr noundef %226, ptr noundef %227, i32 noundef 2) #20
  %228 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %229 = call i64 @fwrite(ptr nonnull @.str.79, i64 20, i64 1, ptr %228)
  %230 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %231 = load ptr, ptr %208, align 8, !tbaa !618
  call void @print_generic_expr(ptr noundef %230, ptr noundef %231, i32 noundef 2) #20
  br label %232

232:                                              ; preds = %179, %211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %233

233:                                              ; preds = %232, %110, %103
  %234 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 7
  %235 = load ptr, ptr %234, align 8, !tbaa !464
  %236 = icmp eq ptr %235, null
  br i1 %236, label %244, label %237, !prof !721

237:                                              ; preds = %233
  %238 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %264, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %242 = call i64 @fwrite(ptr nonnull @.str.80, i64 48, i64 1, ptr %241)
  %243 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_gimple_stmt(ptr noundef %243, ptr noundef %69, i32 noundef 0, i32 noundef 2) #20
  br label %264

244:                                              ; preds = %233
  %245 = load ptr, ptr %3, align 8, !tbaa !310
  store ptr %245, ptr %234, align 8, !tbaa !464
  %246 = getelementptr inbounds %struct.data_reference, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !377
  %248 = getelementptr inbounds %struct.tree_common, ptr %247, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !295
  %250 = call ptr @get_vectype_for_scalar_type(ptr noundef %249) #20
  %251 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 5
  store ptr %250, ptr %251, align 8, !tbaa !507
  %252 = icmp eq ptr %250, null
  br i1 %252, label %253, label %50, !prof !722

253:                                              ; preds = %244
  %254 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %264, label %256, !prof !723

256:                                              ; preds = %253
  %257 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %258 = call i64 @fwrite(ptr nonnull @.str.81, i64 37, i64 1, ptr %257)
  %259 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_gimple_stmt(ptr noundef %259, ptr noundef %69, i32 noundef 0, i32 noundef 2) #20
  %260 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %261 = call i64 @fwrite(ptr nonnull @.str.82, i64 14, i64 1, ptr %260)
  %262 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_generic_expr(ptr noundef %262, ptr noundef %249, i32 noundef 8) #20
  br label %264

263:                                              ; preds = %173, %176, %145, %148, %134, %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %264

264:                                              ; preds = %50, %44, %65, %62, %89, %86, %100, %97, %263, %240, %237, %256, %253, %38, %41, %26, %29
  %265 = phi i8 [ 0, %29 ], [ 0, %26 ], [ 0, %41 ], [ 0, %38 ], [ 0, %253 ], [ 0, %256 ], [ 0, %237 ], [ 0, %240 ], [ 0, %263 ], [ 0, %97 ], [ 0, %100 ], [ 0, %86 ], [ 0, %89 ], [ 0, %62 ], [ 0, %65 ], [ 1, %44 ], [ 1, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %265
}

; Function Attrs: optsize
declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @compute_data_dependences_for_bb(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !449 !PGOFuncName !724 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !302

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !637
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @split_constant_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @highest_pow2_factor(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_get_new_vect_var(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !725 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2113, ptr noundef nonnull @.str.1) #20
  br label %10

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  %8 = shl i64 %7, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.vect_get_new_vect_var, i64 %8)
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi ptr [ undef, %5 ], [ %9, %6 ]
  %12 = icmp eq ptr %2, null
  br i1 %12, label %16, label %13, !prof !726

13:                                               ; preds = %10
  %14 = tail call ptr (ptr, ...) @concat(ptr noundef %11, ptr noundef nonnull %2, ptr noundef null) #20
  %15 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %14) #20
  tail call void @free(ptr noundef %14) #19
  br label %18

16:                                               ; preds = %10
  %17 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %11) #20
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %15, %13 ], [ %17, %16 ]
  %20 = load i64, ptr %0, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %27, !prof !727

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = or i64 %25, 134217728
  store i64 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %23, %18
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_create_addr_base_for_vector_ref(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3) local_unnamed_addr #0 !prof !728 {
  %5 = alloca ptr, align 8
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !464
  %9 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !415
  %11 = tail call ptr @unshare_expr(ptr noundef %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !310
  %12 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !420
  %14 = tail call ptr @unshare_expr(ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !422
  %17 = tail call ptr @unshare_expr(ptr noundef %16) #20
  %18 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !377
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !295
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !295
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !509
  %26 = icmp ne ptr %25, null
  %27 = icmp ne ptr %3, null
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %49, !prof !729

29:                                               ; preds = %4
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !637
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %55, label %34, !prof !730

34:                                               ; preds = %29
  %35 = load ptr, ptr %25, align 8, !tbaa !382
  %36 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %35, ptr noundef %0) #19, !range !298
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2189, ptr noundef nonnull @.str.1) #20
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !619
  %42 = tail call ptr @unshare_expr(ptr noundef %41) #20
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !720
  %45 = tail call ptr @unshare_expr(ptr noundef %44) #20
  %46 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !617
  %48 = tail call ptr @unshare_expr(ptr noundef %47) #20
  br label %55

49:                                               ; preds = %4
  br i1 %26, label %55, label %50, !prof !731

50:                                               ; preds = %49
  %51 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  %52 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  %53 = load ptr, ptr %18, align 8, !tbaa !377
  %54 = tail call ptr @unshare_expr(ptr noundef %53) #20
  br label %55

55:                                               ; preds = %49, %39, %29, %50
  %56 = phi ptr [ %54, %50 ], [ %11, %49 ], [ %11, %29 ], [ %42, %39 ]
  %57 = phi ptr [ %11, %50 ], [ %11, %49 ], [ %11, %29 ], [ %42, %39 ]
  %58 = phi ptr [ %51, %50 ], [ %14, %49 ], [ %14, %29 ], [ %45, %39 ]
  %59 = phi ptr [ %52, %50 ], [ %17, %49 ], [ %17, %29 ], [ %48, %39 ]
  %60 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %56) #20
  %61 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !295
  %63 = tail call ptr @create_tmp_var(ptr noundef %62, ptr noundef nonnull @.str.86) #20
  %64 = tail call zeroext i8 @add_referenced_var(ptr noundef %63) #20
  %65 = call ptr @force_gimple_operand(ptr noundef %57, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef %63) #20
  %66 = load ptr, ptr %5, align 8, !tbaa !310
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %66) #20
  %67 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %68 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %67, ptr noundef %58) #20
  %69 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %70 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %69, ptr noundef %59) #20
  %71 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %68, ptr noundef %70) #20
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %73 = call ptr @create_tmp_var(ptr noundef %72, ptr noundef nonnull @.str.87) #20
  %74 = call zeroext i8 @add_referenced_var(ptr noundef %73) #20
  %75 = call ptr @force_gimple_operand(ptr noundef %71, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef %73) #20
  %76 = load ptr, ptr %5, align 8, !tbaa !310
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %76) #20
  %77 = icmp eq ptr %2, null
  br i1 %77, label %89, label %78, !prof !730

78:                                               ; preds = %55
  %79 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %80 = call ptr @create_tmp_var(ptr noundef %79, ptr noundef nonnull @.str.88) #20
  %81 = call zeroext i8 @add_referenced_var(ptr noundef %80) #20
  %82 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %83 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %82, ptr noundef nonnull %2) #20
  %84 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %82, ptr noundef %83, ptr noundef %23) #20
  %85 = load ptr, ptr @sizetype_tab, align 16, !tbaa !310
  %86 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %85, ptr noundef %75, ptr noundef %84) #20
  %87 = call ptr @force_gimple_operand(ptr noundef %86, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef %80) #20
  %88 = load ptr, ptr %5, align 8, !tbaa !310
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %88) #20
  br label %89

89:                                               ; preds = %78, %55
  %90 = phi ptr [ %87, %78 ], [ %75, %55 ]
  br i1 %26, label %91, label %95, !prof !730

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !295
  %94 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %93, ptr noundef %65, ptr noundef %90) #20
  br label %111

95:                                               ; preds = %89
  %96 = load ptr, ptr %18, align 8, !tbaa !377
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 47
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_exp, ptr %96, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !295
  %103 = call ptr @unshare_expr(ptr noundef %102) #20
  br label %111

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !295
  %107 = call ptr @build_pointer_type(ptr noundef %106) #20
  %108 = load ptr, ptr %18, align 8, !tbaa !377
  %109 = call ptr @unshare_expr(ptr noundef %108) #20
  %110 = call ptr @build1_stat(i32 noundef 121, ptr noundef %107, ptr noundef %109) #20
  br label %111

111:                                              ; preds = %100, %104, %91
  %112 = phi ptr [ %94, %91 ], [ %103, %100 ], [ %110, %104 ]
  %113 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !507
  %115 = call ptr @build_pointer_type(ptr noundef %114) #20
  %116 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %115, ptr noundef %112) #20
  %117 = call ptr @get_name(ptr noundef %60) #20
  %118 = call ptr @vect_get_new_vect_var(ptr noundef %115, i32 noundef 1, ptr noundef %117) #19
  %119 = call zeroext i8 @add_referenced_var(ptr noundef %118) #20
  %120 = call ptr @force_gimple_operand(ptr noundef %116, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef %118) #20
  %121 = load ptr, ptr %5, align 8, !tbaa !310
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %121) #20
  %122 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %128, label %124, !prof !730

124:                                              ; preds = %111
  %125 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %126 = call i64 @fwrite(ptr nonnull @.str.89, i64 8, i64 1, ptr %125)
  %127 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_generic_expr(ptr noundef %127, ptr noundef %120, i32 noundef 2) #20
  br label %128

128:                                              ; preds = %124, %111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret ptr %120
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vect_create_data_ref_ptr(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, i8 noundef zeroext %5, ptr nocapture noundef %6) local_unnamed_addr #0 !prof !732 {
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #19
  %15 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !509
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !310
  %19 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !464
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  %21 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 26
  %22 = load ptr, ptr %21, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %0) #20
  %23 = icmp eq ptr %16, null
  br i1 %23, label %24, label %28, !prof !733

24:                                               ; preds = %7
  %25 = icmp eq ptr %22, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2350, ptr noundef nonnull @.str.1) #20
  br label %27

27:                                               ; preds = %26, %24
  store ptr null, ptr %4, align 8, !tbaa !310
  br label %38

28:                                               ; preds = %7
  %29 = load ptr, ptr %16, align 8, !tbaa !382
  %30 = call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %29, ptr noundef %0) #19, !range !298
  %31 = call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !637
  %34 = call ptr @loop_preheader_edge(ptr noundef %29) #20
  %35 = icmp eq i8 %30, 0
  br i1 %35, label %38, label %36, !prof !734

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 11
  br label %45

38:                                               ; preds = %27, %28
  %39 = phi i8 [ 1, %27 ], [ %5, %28 ]
  %40 = phi ptr [ null, %27 ], [ %29, %28 ]
  %41 = phi ptr [ null, %27 ], [ %33, %28 ]
  %42 = phi ptr [ null, %27 ], [ %34, %28 ]
  %43 = load ptr, ptr %19, align 8, !tbaa !464
  %44 = getelementptr inbounds %struct.data_reference, ptr %43, i64 0, i32 4, i32 3
  br label %45

45:                                               ; preds = %38, %36
  %46 = phi i1 [ false, %36 ], [ true, %38 ]
  %47 = phi i8 [ %5, %36 ], [ %39, %38 ]
  %48 = phi ptr [ %29, %36 ], [ %40, %38 ]
  %49 = phi ptr [ %33, %36 ], [ %41, %38 ]
  %50 = phi ptr [ %34, %36 ], [ %42, %38 ]
  %51 = phi ptr [ %37, %36 ], [ %44, %38 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !310
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !310
  %54 = call i32 @tree_int_cst_compare(ptr noundef %52, ptr noundef %53) #20
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %6, align 1, !tbaa !295
  %57 = getelementptr inbounds %struct.data_reference, ptr %20, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !415
  %59 = call ptr @unshare_expr(ptr noundef %58) #20
  %60 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %59) #20
  %61 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %80, label %63, !prof !735

63:                                               ; preds = %45
  %64 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %65 = call i64 @fwrite(ptr nonnull @.str.90, i64 40, i64 1, ptr %64)
  %66 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_generic_expr(ptr noundef %66, ptr noundef %18, i32 noundef 2) #20
  %67 = load i64, ptr %60, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %78 [
    i16 32, label %69
    i16 45, label %69
    i16 41, label %72
    i16 141, label %75
  ]

69:                                               ; preds = %63, %63
  %70 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %71 = call i64 @fwrite(ptr nonnull @.str.91, i64 28, i64 1, ptr %70)
  br label %78

72:                                               ; preds = %63
  %73 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %74 = call i64 @fwrite(ptr nonnull @.str.92, i64 40, i64 1, ptr %73)
  br label %78

75:                                               ; preds = %63
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %77 = call i64 @fwrite(ptr nonnull @.str.93, i64 29, i64 1, ptr %76)
  br label %78

78:                                               ; preds = %63, %72, %75, %69
  %79 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  call void @print_generic_expr(ptr noundef %79, ptr noundef nonnull %60, i32 noundef 2) #20
  br label %80

80:                                               ; preds = %78, %45
  %81 = call ptr @build_pointer_type(ptr noundef %18) #20
  %82 = call ptr @get_name(ptr noundef %60) #20
  %83 = call ptr @vect_get_new_vect_var(ptr noundef %81, i32 noundef 1, ptr noundef %82) #19
  %84 = call i32 @get_deref_alias_set(ptr noundef %83) #20
  %85 = getelementptr inbounds %struct.data_reference, ptr %20, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !377
  %87 = call i32 @get_alias_set(ptr noundef %86) #20
  %88 = call i32 @alias_sets_conflict_p(i32 noundef %84, i32 noundef %87) #20
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101, !prof !733

90:                                               ; preds = %80
  %91 = load i64, ptr %81, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 14
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @vector_type_mode(ptr noundef nonnull %81) #20
  br label %131

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  br label %131

101:                                              ; preds = %80
  %102 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 19
  %103 = load i32, ptr %102, align 8, !tbaa !545
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %136, !prof !733

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !337
  br label %108

108:                                              ; preds = %126, %105
  %109 = phi ptr [ %107, %105 ], [ %129, %126 ]
  %110 = call fastcc ptr @gimple_assign_lhs(ptr noundef %109) #19
  %111 = call i32 @get_deref_alias_set(ptr noundef %83) #20
  %112 = call i32 @get_alias_set(ptr noundef %110) #20
  %113 = call i32 @alias_sets_conflict_p(i32 noundef %111, i32 noundef %112) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load i64, ptr %81, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 14
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 @vector_type_mode(ptr noundef nonnull %81) #20
  br label %131

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 255
  br label %131

126:                                              ; preds = %108
  %127 = call fastcc ptr @vinfo_for_stmt(ptr noundef %109) #19
  %128 = getelementptr inbounds %struct._stmt_vec_info, ptr %127, i64 0, i32 18
  %129 = load ptr, ptr %128, align 8, !tbaa !340
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %108, !llvm.loop !736

131:                                              ; preds = %121, %119, %94, %96
  %132 = phi i32 [ %95, %94 ], [ %100, %96 ], [ %120, %119 ], [ %125, %121 ]
  %133 = call ptr @build_pointer_type_for_mode(ptr noundef %18, i32 noundef %132, i8 noundef zeroext 1) #20
  %134 = call ptr @get_name(ptr noundef %60) #20
  %135 = call ptr @vect_get_new_vect_var(ptr noundef %133, i32 noundef 1, ptr noundef %134) #19
  br label %136

136:                                              ; preds = %126, %131, %101
  %137 = phi ptr [ %83, %101 ], [ %135, %131 ], [ %83, %126 ]
  %138 = phi ptr [ %81, %101 ], [ %133, %131 ], [ %81, %126 ]
  %139 = call zeroext i8 @add_referenced_var(ptr noundef %137) #20
  %140 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %48) #19
  %141 = load ptr, ptr %8, align 8, !tbaa !310
  %142 = icmp eq ptr %141, null
  br i1 %142, label %150, label %143, !prof !733

143:                                              ; preds = %136
  %144 = icmp eq ptr %50, null
  br i1 %144, label %149, label %145, !prof !733

145:                                              ; preds = %143
  %146 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef nonnull %50, ptr noundef nonnull %141) #20
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148, !prof !735

148:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2473, ptr noundef nonnull @.str.1) #20
  br label %150

149:                                              ; preds = %143
  call void @gsi_insert_seq_before(ptr noundef nonnull %13, ptr noundef nonnull %141, i32 noundef 1) #20
  br label %150

150:                                              ; preds = %148, %145, %149, %136
  store ptr %140, ptr %3, align 8, !tbaa !310
  %151 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %138, ptr noundef %140) #20
  %152 = call ptr @gimple_build_assign_stat(ptr noundef %137, ptr noundef %151) #20
  %153 = call fastcc ptr @make_ssa_name(ptr noundef %137, ptr noundef %152) #19
  call fastcc void @gimple_assign_set_lhs(ptr noundef %152, ptr noundef %153) #19
  %154 = icmp eq ptr %50, null
  br i1 %154, label %159, label %155, !prof !733

155:                                              ; preds = %150
  %156 = call ptr @gsi_insert_on_edge_immediate(ptr noundef nonnull %50, ptr noundef %152) #20
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158, !prof !735

158:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2489, ptr noundef nonnull @.str.1) #20
  br label %160

159:                                              ; preds = %150
  call void @gsi_insert_before(ptr noundef nonnull %13, ptr noundef %152, i32 noundef 1) #20
  br label %160

160:                                              ; preds = %158, %155, %159
  %161 = icmp ne i8 %47, 0
  %162 = icmp eq ptr %48, %1
  %163 = or i1 %23, %162
  %164 = and i1 %161, %163
  br i1 %164, label %165, label %170, !prof !737

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.data_reference, ptr %20, i64 0, i32 6
  %167 = load ptr, ptr %166, align 8, !tbaa !738
  %168 = icmp eq ptr %167, null
  br i1 %168, label %210, label %169

169:                                              ; preds = %165
  call void @duplicate_ssa_name_ptr_info(ptr noundef %153, ptr noundef nonnull %167) #20
  br label %210

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 3
  %172 = load i8, ptr %6, align 1, !tbaa !295
  %173 = icmp eq i8 %172, 0
  %174 = select i1 %173, ptr %171, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), !prof !735
  %175 = load ptr, ptr %174, align 8, !tbaa !295
  call void @standard_iv_increment_position(ptr noundef %48, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %176 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %138, ptr noundef %175) #20
  %177 = load i8, ptr %10, align 1, !tbaa !295
  call void @create_iv(ptr noundef %153, ptr noundef %176, ptr noundef %137, ptr noundef %48, ptr noundef nonnull %9, i8 noundef zeroext %177, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %178 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #19
  %179 = call ptr @new_stmt_vec_info(ptr noundef %178, ptr noundef %16, ptr noundef null) #20
  call fastcc void @set_vinfo_for_stmt(ptr noundef %178, ptr noundef %179) #19
  %180 = getelementptr inbounds %struct.data_reference, ptr %20, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !738
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183, !prof !739

183:                                              ; preds = %170
  %184 = load ptr, ptr %11, align 8, !tbaa !310
  call void @duplicate_ssa_name_ptr_info(ptr noundef %184, ptr noundef nonnull %181) #20
  %185 = load ptr, ptr %12, align 8, !tbaa !310
  %186 = load ptr, ptr %180, align 8, !tbaa !738
  call void @duplicate_ssa_name_ptr_info(ptr noundef %185, ptr noundef %186) #20
  br label %187

187:                                              ; preds = %183, %170
  %188 = icmp eq ptr %4, null
  br i1 %188, label %190, label %189, !prof !733

189:                                              ; preds = %187
  store ptr %178, ptr %4, align 8, !tbaa !310
  br label %190

190:                                              ; preds = %187, %189
  %191 = load ptr, ptr %11, align 8, !tbaa !310
  %192 = or i1 %46, %161
  br i1 %192, label %210, label %193, !prof !740

193:                                              ; preds = %190
  call void @standard_iv_increment_position(ptr noundef %49, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %194 = getelementptr inbounds %struct.data_reference, ptr %20, i64 0, i32 4, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !426
  %196 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %138, ptr noundef %195) #20
  %197 = load i8, ptr %10, align 1, !tbaa !295
  call void @create_iv(ptr noundef %191, ptr noundef %196, ptr noundef %137, ptr noundef %49, ptr noundef nonnull %9, i8 noundef zeroext %197, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %198 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #19
  %199 = call ptr @new_stmt_vec_info(ptr noundef %198, ptr noundef %16, ptr noundef null) #20
  call fastcc void @set_vinfo_for_stmt(ptr noundef %198, ptr noundef %199) #19
  %200 = load ptr, ptr %180, align 8, !tbaa !738
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %193
  %203 = load ptr, ptr %11, align 8, !tbaa !310
  call void @duplicate_ssa_name_ptr_info(ptr noundef %203, ptr noundef nonnull %200) #20
  %204 = load ptr, ptr %12, align 8, !tbaa !310
  %205 = load ptr, ptr %180, align 8, !tbaa !738
  call void @duplicate_ssa_name_ptr_info(ptr noundef %204, ptr noundef %205) #20
  br label %206

206:                                              ; preds = %202, %193
  br i1 %188, label %208, label %207

207:                                              ; preds = %206
  store ptr %198, ptr %4, align 8, !tbaa !310
  br label %208

208:                                              ; preds = %207, %206
  %209 = load ptr, ptr %11, align 8, !tbaa !310
  br label %210

210:                                              ; preds = %169, %165, %190, %208
  %211 = phi ptr [ %209, %208 ], [ %191, %190 ], [ %153, %165 ], [ %153, %169 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  ret ptr %211
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !741 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !732 !PGOFuncName !742 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !310
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !732 !PGOFuncName !743 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !733

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !735

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !295
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @duplicate_ssa_name_ptr_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @standard_iv_increment_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !732 !PGOFuncName !744 {
  %2 = load ptr, ptr %0, align 8, !tbaa !745
  %3 = load ptr, ptr %2, align 8, !tbaa !747
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_vinfo_for_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !732 !PGOFuncName !749 {
  %3 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !735

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !733

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 639, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %5, %7
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %9) #19
  %11 = add i32 %10, 1
  tail call fastcc void @gimple_set_uid(ptr noundef %0, i32 noundef %11) #19
  tail call fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %1) #19
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = add i32 %3, -1
  tail call fastcc void @VEC_vec_void_p_base_replace(ptr noundef %13, i32 noundef %14, ptr noundef %1) #19
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !732 !PGOFuncName !750 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !298
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !733

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !733

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  store ptr %1, ptr %10, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !732 !PGOFuncName !751 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !295
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #9 !prof !732 !PGOFuncName !752 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !295
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !732 !PGOFuncName !753 {
  tail call fastcc void @VEC_vec_void_p_heap_reserve() #19
  %2 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !310
  tail call fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !322 !PGOFuncName !754 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !310
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_reserve() unnamed_addr #0 !prof !732 !PGOFuncName !755 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !310
  %2 = tail call fastcc i32 @VEC_vec_void_p_base_space(ptr noundef %1) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !733

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #20
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !310
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !732 !PGOFuncName !756 {
  %3 = load i32, ptr %0, align 8, !tbaa !350
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !350
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !732 !PGOFuncName !757 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !733

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !758
  %6 = load i32, ptr %0, align 8, !tbaa !350
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bump_vector_ptr(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !322 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  %7 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %3) #19
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !464
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !507
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !295
  %14 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %16 = icmp eq ptr %4, null
  %17 = select i1 %16, ptr %15, ptr %4
  %18 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 66, ptr noundef %13, ptr noundef %0, ptr noundef %17) #20
  %19 = tail call fastcc ptr @make_ssa_name(ptr noundef %13, ptr noundef %18) #19
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %18, ptr noundef %19) #19
  tail call void @vect_finish_stmt_generation(ptr noundef %3, ptr noundef %18, ptr noundef %2) #20
  %20 = getelementptr inbounds %struct.data_reference, ptr %9, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !738
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  tail call void @duplicate_ssa_name_ptr_info(ptr noundef %19, ptr noundef nonnull %21) #20
  br label %24

24:                                               ; preds = %23, %5
  %25 = icmp eq ptr %1, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %6, ptr noundef nonnull %1) #19
  %28 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26, %39
  %31 = phi ptr [ %40, %39 ], [ %27, %26 ]
  %32 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %31) #19
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %31, ptr noundef %19) #19
  br label %39

35:                                               ; preds = %30
  %36 = tail call i32 @tree_int_cst_compare(ptr noundef %32, ptr noundef %17) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2646, ptr noundef nonnull @.str.1) #20
  br label %39

39:                                               ; preds = %38, %35, %34
  %40 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %6) #19
  %41 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #19
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %30, label %43, !llvm.loop !759

43:                                               ; preds = %39, %26, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_finish_stmt_generation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !322 !PGOFuncName !760 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !761
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !322 !PGOFuncName !763 {
  %2 = load i8, ptr %0, align 8, !tbaa !764
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !322 !PGOFuncName !765 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !766
  %4 = load ptr, ptr %3, align 8, !tbaa !310
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !322 !PGOFuncName !768 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !766
  store ptr %1, ptr %4, align 8, !tbaa !310
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !769 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !770
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !771
  store ptr %7, ptr %2, align 8, !tbaa !770
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !773
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !774
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !775
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !773
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !764
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !322 !PGOFuncName !776 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !777
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !770
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !771
  store ptr %11, ptr %5, align 8, !tbaa !770
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !764
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !322 !PGOFuncName !778 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !298
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !322 !PGOFuncName !779 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !298
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !322 !PGOFuncName !780 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !307
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #13 !prof !322 !PGOFuncName !781 {
  %2 = load ptr, ptr %0, align 8, !tbaa !782
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !783
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !783
  store ptr %2, ptr %6, align 8, !tbaa !782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !322 !PGOFuncName !784 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !782
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !322 !PGOFuncName !785 {
  store ptr %1, ptr %0, align 8, !tbaa !782
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !783
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !783
  store ptr %0, ptr %4, align 8, !tbaa !782
  store ptr %0, ptr %3, align 8, !tbaa !783
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !322 !PGOFuncName !786 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !322 !PGOFuncName !787 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !295
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vect_create_destination_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !788 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7, !prof !789

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ %1, %2 ]
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12, !prof !457

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2668, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %7, %12
  %14 = select i1 %3, i32 2, i32 0
  %15 = tail call ptr @get_name(ptr noundef nonnull %0) #20
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.95, ptr %15, !prof !457
  %18 = tail call ptr @vect_get_new_vect_var(ptr noundef %8, i32 noundef %14, ptr noundef nonnull %17) #19
  %19 = tail call zeroext i8 @add_referenced_var(ptr noundef %18) #20
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_strided_store_supported(ptr noundef %0) local_unnamed_addr #0 !prof !322 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #20
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i32 [ %6, %5 ], [ %11, %7 ]
  %14 = tail call ptr @optab_for_tree_code(i32 noundef 183, ptr noundef nonnull %0, i32 noundef 0) #20
  %15 = tail call ptr @optab_for_tree_code(i32 noundef 184, ptr noundef nonnull %0, i32 noundef 0) #20
  %16 = icmp ne ptr %14, null
  %17 = icmp ne ptr %15, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %24 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 24, i64 1, ptr %23)
  br label %40

25:                                               ; preds = %12
  %26 = sext i32 %13 to i64
  %27 = getelementptr inbounds %struct.optab_d, ptr %14, i64 0, i32 4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !513
  %29 = icmp eq i32 %28, 2956
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.optab_d, ptr %15, i64 0, i32 4, i64 %26
  %32 = load i32, ptr %31, align 4, !tbaa !513
  %33 = icmp eq i32 %32, 2956
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %25
  %35 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %39 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 38, i64 1, ptr %38)
  br label %40

40:                                               ; preds = %30, %34, %37, %19, %22
  %41 = phi i8 [ 0, %22 ], [ 0, %19 ], [ 0, %37 ], [ 0, %34 ], [ 1, %30 ]
  ret i8 %41
}

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_permute_store_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !prof !322 {
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #19
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !507
  %9 = tail call zeroext i8 @vect_strided_store_supported(ptr noundef %8) #19, !range !298
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @VEC_tree_heap_copy(ptr noundef %0) #19
  store ptr %12, ptr %4, align 8, !tbaa !310
  %13 = zext i32 %1 to i64
  %14 = tail call i32 @exact_log2(i64 noundef %13) #20
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = lshr i32 %1, 1
  %18 = icmp ult i32 %1, 2
  br label %19

19:                                               ; preds = %16, %47
  %20 = phi ptr [ %0, %16 ], [ %49, %47 ]
  %21 = phi i32 [ 0, %16 ], [ %50, %47 ]
  br i1 %18, label %47, label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %45, %22 ], [ 0, %19 ]
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %23) #19
  %25 = add nuw i32 %23, %17
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %25) #19
  %27 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef nonnull @.str.98) #20
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = or i64 %29, 134217728
  store i64 %30, ptr %28, align 8
  %31 = tail call zeroext i8 @add_referenced_var(ptr noundef %27) #20
  %32 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 184, ptr noundef %27, ptr noundef %24, ptr noundef %26) #20
  %33 = tail call fastcc ptr @make_ssa_name(ptr noundef %27, ptr noundef %32) #19
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %32, ptr noundef %33) #19
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef %32, ptr noundef %3) #20
  %34 = load ptr, ptr %4, align 8, !tbaa !310
  %35 = shl nuw i32 %23, 1
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %34, i32 noundef %35, ptr noundef %33) #19
  %36 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef nonnull @.str.99) #20
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = or i64 %38, 134217728
  store i64 %39, ptr %37, align 8
  %40 = tail call zeroext i8 @add_referenced_var(ptr noundef %36) #20
  %41 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 183, ptr noundef %36, ptr noundef %24, ptr noundef %26) #20
  %42 = tail call fastcc ptr @make_ssa_name(ptr noundef %36, ptr noundef %41) #19
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %41, ptr noundef %42) #19
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef %41, ptr noundef %3) #20
  %43 = load ptr, ptr %4, align 8, !tbaa !310
  %44 = or disjoint i32 %35, 1
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %43, i32 noundef %44, ptr noundef %42) #19
  %45 = add nuw nsw i32 %23, 1
  %46 = icmp eq i32 %45, %17
  br i1 %46, label %47, label %22, !llvm.loop !790

47:                                               ; preds = %22, %19
  %48 = load ptr, ptr %4, align 8, !tbaa !310
  %49 = tail call fastcc ptr @VEC_tree_heap_copy(ptr noundef %48) #19
  %50 = add nuw nsw i32 %21, 1
  %51 = tail call i32 @exact_log2(i64 noundef %13) #20
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %19, label %53, !llvm.loop !791

53:                                               ; preds = %47, %11, %5
  %54 = phi i8 [ 0, %5 ], [ 1, %11 ], [ 1, %47 ]
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_tree_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !322 !PGOFuncName !792 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !793
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %4) #20
  store i32 %4, ptr %8, align 8, !tbaa !795
  %9 = getelementptr inbounds %struct.VEC_tree_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !322 !PGOFuncName !797 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !310
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !322 !PGOFuncName !798 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !310
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vect_setup_realignment(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 !prof !322 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  store ptr %4, ptr %7, align 8, !tbaa !310
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #19
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !507
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !509
  %16 = load ptr, ptr %15, align 8, !tbaa !382
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store ptr null, ptr %9, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #21
  %18 = tail call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %16, ptr noundef %0) #19, !range !298
  %19 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !637
  %22 = icmp eq i32 %3, 2
  %23 = icmp eq i32 %3, 3
  %24 = and i32 %3, -2
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2933, ptr noundef nonnull @.str.1) #20
  br label %27

27:                                               ; preds = %6, %26
  %28 = icmp eq ptr %4, null
  %29 = or i1 %22, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2971, ptr noundef nonnull @.str.1) #20
  br label %31

31:                                               ; preds = %27, %30
  %32 = icmp eq i8 %18, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !656
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !310
  %37 = tail call i32 @tree_int_cst_compare(ptr noundef %35, ptr noundef %36) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.loop, ptr %16, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !437
  br label %42

42:                                               ; preds = %31, %39, %33
  %43 = phi ptr [ %41, %39 ], [ %16, %33 ], [ %16, %31 ]
  %44 = icmp eq ptr %5, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store ptr %43, ptr %5, align 8, !tbaa !310
  br label %46

46:                                               ; preds = %45, %42
  br i1 %23, label %47, label %61

47:                                               ; preds = %46
  br i1 %28, label %49, label %48

48:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3007, ptr noundef nonnull @.str.1) #20
  br label %49

49:                                               ; preds = %47, %48
  %50 = tail call ptr @loop_preheader_edge(ptr noundef %43) #20
  %51 = tail call ptr @vect_create_destination_var(ptr noundef %17, ptr noundef %13) #19
  %52 = call ptr @vect_create_data_ref_ptr(ptr noundef %0, ptr noundef %43, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef nonnull %10) #19
  %53 = call ptr @build1_stat(i32 noundef 48, ptr noundef %13, ptr noundef %52) #20
  %54 = call ptr @gimple_build_assign_stat(ptr noundef %51, ptr noundef %53) #20
  %55 = call fastcc ptr @make_ssa_name(ptr noundef %51, ptr noundef %54) #19
  call fastcc void @gimple_assign_set_lhs(ptr noundef %54, ptr noundef %55) #19
  call void @mark_symbols_for_renaming(ptr noundef %54) #20
  %56 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %50, ptr noundef %54) #20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3018, ptr noundef nonnull @.str.1) #20
  br label %59

59:                                               ; preds = %49, %58
  %60 = call fastcc ptr @gimple_assign_lhs(ptr noundef %54) #19
  br label %61

61:                                               ; preds = %59, %46
  %62 = phi ptr [ %60, %59 ], [ null, %46 ]
  %63 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !516
  %64 = icmp eq ptr %63, null
  br i1 %64, label %98, label %65

65:                                               ; preds = %61
  br i1 %28, label %69, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %7, align 8, !tbaa !310
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %78

69:                                               ; preds = %65
  %70 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %0, ptr noundef nonnull %9, ptr noundef null, ptr noundef %16) #19
  %71 = call ptr @loop_preheader_edge(ptr noundef %16) #20
  %72 = load ptr, ptr %9, align 8, !tbaa !310
  %73 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %71, ptr noundef %72) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69, %66
  %76 = phi i32 [ 3032, %66 ], [ 3040, %69 ]
  %77 = phi ptr [ null, %66 ], [ %70, %69 ]
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef %76, ptr noundef nonnull @.str.1) #20
  br label %78

78:                                               ; preds = %75, %69, %66
  %79 = phi ptr [ %70, %69 ], [ %67, %66 ], [ %77, %75 ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !516
  %81 = call ptr %80() #20
  %82 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %81, i32 noundef 1, ptr noundef %79) #20
  %83 = call fastcc ptr @gimple_call_return_type(ptr noundef %82) #19
  %84 = call ptr @vect_create_destination_var(ptr noundef %17, ptr noundef %83) #19
  %85 = call fastcc ptr @make_ssa_name(ptr noundef %84, ptr noundef %82) #19
  call fastcc void @gimple_call_set_lhs(ptr noundef %82, ptr noundef %85) #19
  br i1 %28, label %87, label %86

86:                                               ; preds = %78
  call void @gsi_insert_before(ptr noundef %1, ptr noundef %82, i32 noundef 1) #20
  br label %92

87:                                               ; preds = %78
  %88 = call ptr @loop_preheader_edge(ptr noundef %16) #20
  %89 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %88, ptr noundef %82) #20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3058, ptr noundef nonnull @.str.1) #20
  br label %92

92:                                               ; preds = %91, %87, %86
  %93 = call fastcc ptr @gimple_call_lhs(ptr noundef %82) #19
  store ptr %93, ptr %2, align 8, !tbaa !310
  %94 = load i64, ptr %81, align 8
  %95 = and i64 %94, 1048576
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3068, ptr noundef nonnull @.str.1) #20
  br label %98

98:                                               ; preds = %97, %92, %61
  br i1 %22, label %111, label %99

99:                                               ; preds = %98
  br i1 %28, label %101, label %100

100:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3074, ptr noundef nonnull @.str.1) #20
  br label %101

101:                                              ; preds = %99, %100
  br i1 %23, label %103, label %102

102:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3075, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %101, %102
  %104 = call ptr @loop_preheader_edge(ptr noundef %21) #20
  %105 = call ptr @vect_create_destination_var(ptr noundef %17, ptr noundef %13) #19
  %106 = call fastcc ptr @make_ssa_name(ptr noundef %105, ptr noundef null) #19
  %107 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !799
  %109 = call ptr @create_phi_node(ptr noundef %106, ptr noundef %108) #20
  %110 = getelementptr inbounds %struct.tree_ssa_name, ptr %106, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !295
  call void @add_phi_arg(ptr noundef %109, ptr noundef %62, ptr noundef %104, i32 noundef 0) #20
  br label %111

111:                                              ; preds = %98, %103
  %112 = phi ptr [ %106, %103 ], [ null, %98 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  ret ptr %112
}

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !322 !PGOFuncName !800 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !295
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !801 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_strided_load_supported(ptr noundef %0) local_unnamed_addr #0 !prof !322 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #20
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i32 [ %6, %5 ], [ %11, %7 ]
  %14 = tail call ptr @optab_for_tree_code(i32 noundef 181, ptr noundef nonnull %0, i32 noundef 0) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %21 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 23, i64 1, ptr %20)
  br label %52

22:                                               ; preds = %12
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds %struct.optab_d, ptr %14, i64 0, i32 4, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !513
  %26 = icmp eq i32 %25, 2956
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %32 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 37, i64 1, ptr %31)
  br label %52

33:                                               ; preds = %22
  %34 = tail call ptr @optab_for_tree_code(i32 noundef 182, ptr noundef nonnull %0, i32 noundef 0) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %41 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 22, i64 1, ptr %40)
  br label %52

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.optab_d, ptr %34, i64 0, i32 4, i64 %23
  %44 = load i32, ptr %43, align 4, !tbaa !513
  %45 = icmp eq i32 %44, 2956
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !310
  %51 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 36, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %42, %46, %49, %36, %39, %27, %30, %16, %19
  %53 = phi i8 [ 0, %19 ], [ 0, %16 ], [ 0, %30 ], [ 0, %27 ], [ 0, %39 ], [ 0, %36 ], [ 0, %49 ], [ 0, %46 ], [ 1, %42 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_permute_load_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !prof !322 {
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #19
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !507
  %9 = tail call zeroext i8 @vect_strided_load_supported(ptr noundef %8) #19, !range !298
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @VEC_tree_heap_copy(ptr noundef %0) #19
  store ptr %12, ptr %4, align 8, !tbaa !310
  %13 = zext i32 %1 to i64
  %14 = tail call i32 @exact_log2(i64 noundef %13) #20
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = icmp eq i32 %1, 0
  %18 = lshr i32 %1, 1
  br label %19

19:                                               ; preds = %16, %47
  %20 = phi i32 [ 0, %16 ], [ %50, %47 ]
  %21 = phi ptr [ %0, %16 ], [ %49, %47 ]
  br i1 %17, label %47, label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %45, %22 ], [ 0, %19 ]
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %21, i32 noundef %23) #19
  %25 = or disjoint i32 %23, 1
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %21, i32 noundef %25) #19
  %27 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef nonnull @.str.104) #20
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = or i64 %29, 134217728
  store i64 %30, ptr %28, align 8
  %31 = tail call zeroext i8 @add_referenced_var(ptr noundef %27) #20
  %32 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 181, ptr noundef %27, ptr noundef %24, ptr noundef %26) #20
  %33 = tail call fastcc ptr @make_ssa_name(ptr noundef %27, ptr noundef %32) #19
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %32, ptr noundef %33) #19
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef %32, ptr noundef %3) #20
  tail call void @mark_symbols_for_renaming(ptr noundef %32) #20
  %34 = load ptr, ptr %4, align 8, !tbaa !310
  %35 = lshr exact i32 %23, 1
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %34, i32 noundef %35, ptr noundef %33) #19
  %36 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef nonnull @.str.105) #20
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = or i64 %38, 134217728
  store i64 %39, ptr %37, align 8
  %40 = tail call zeroext i8 @add_referenced_var(ptr noundef %36) #20
  %41 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 182, ptr noundef %36, ptr noundef %24, ptr noundef %26) #20
  %42 = tail call fastcc ptr @make_ssa_name(ptr noundef %36, ptr noundef %41) #19
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %41, ptr noundef %42) #19
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef %41, ptr noundef %3) #20
  tail call void @mark_symbols_for_renaming(ptr noundef %41) #20
  %43 = load ptr, ptr %4, align 8, !tbaa !310
  %44 = add nuw i32 %35, %18
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %43, i32 noundef %44, ptr noundef %42) #19
  %45 = add i32 %23, 2
  %46 = icmp ult i32 %45, %1
  br i1 %46, label %22, label %47, !llvm.loop !802

47:                                               ; preds = %22, %19
  %48 = load ptr, ptr %4, align 8, !tbaa !310
  %49 = tail call fastcc ptr @VEC_tree_heap_copy(ptr noundef %48) #19
  %50 = add nuw nsw i32 %20, 1
  %51 = tail call i32 @exact_log2(i64 noundef %13) #20
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %19, label %53, !llvm.loop !803

53:                                               ; preds = %47, %11, %5
  %54 = phi i8 [ 0, %5 ], [ 1, %11 ], [ 1, %47 ]
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_transform_strided_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !322 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct._stmt_vec_info, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %10 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %2) #19
  store ptr %10, ptr %5, align 8, !tbaa !310
  %11 = call zeroext i8 @vect_permute_load_chain(ptr noundef %1, i32 noundef %2, ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5) #19, !range !298
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %87, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8
  %15 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %6) #19, !range !356
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne ptr %9, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %86

19:                                               ; preds = %13, %78
  %20 = phi i32 [ %80, %78 ], [ 1, %13 ]
  %21 = phi i32 [ %81, %78 ], [ 0, %13 ]
  %22 = phi ptr [ %79, %78 ], [ %9, %13 ]
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %22) #19
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 21
  %27 = load i32, ptr %26, align 8, !tbaa !677
  %28 = icmp ult i32 %20, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = add nuw i32 %20, 1
  br label %78

31:                                               ; preds = %24, %19
  %32 = load ptr, ptr %6, align 8, !tbaa !310
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %32, i64 0, i32 2
  br label %34

34:                                               ; preds = %31, %73
  %35 = phi ptr [ %22, %31 ], [ %71, %73 ]
  %36 = load ptr, ptr %33, align 8, !tbaa !295
  %37 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %35) #19
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %37, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !804
  %40 = icmp eq ptr %39, null
  %41 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %35) #19
  br i1 %40, label %42, label %44

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %41, i64 0, i32 6
  br label %66

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %41, i64 0, i32 22
  %46 = load ptr, ptr %45, align 8, !tbaa !670
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %35) #19
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !804
  %52 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %51) #19
  %53 = getelementptr inbounds %struct._stmt_vec_info, ptr %52, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !805
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %48, %56
  %57 = phi ptr [ %60, %56 ], [ %54, %48 ]
  %58 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %57) #19
  %59 = getelementptr inbounds %struct._stmt_vec_info, ptr %58, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !805
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %56, !llvm.loop !806

62:                                               ; preds = %56, %48
  %63 = phi ptr [ %51, %48 ], [ %57, %56 ]
  %64 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %63) #19
  %65 = getelementptr inbounds %struct._stmt_vec_info, ptr %64, i64 0, i32 14
  br label %66

66:                                               ; preds = %42, %62
  %67 = phi ptr [ %65, %62 ], [ %43, %42 ]
  store ptr %36, ptr %67, align 8, !tbaa !310
  br label %68

68:                                               ; preds = %66, %44
  %69 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %35) #19
  %70 = getelementptr inbounds %struct._stmt_vec_info, ptr %69, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !340
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %71) #19
  %75 = getelementptr inbounds %struct._stmt_vec_info, ptr %74, i64 0, i32 22
  %76 = load ptr, ptr %75, align 8, !tbaa !670
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %34, !llvm.loop !807

78:                                               ; preds = %73, %68, %29
  %79 = phi ptr [ %22, %29 ], [ null, %68 ], [ %71, %73 ]
  %80 = phi i32 [ %30, %29 ], [ 1, %68 ], [ 1, %73 ]
  %81 = add i32 %21, 1
  %82 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %14, i32 noundef %81, ptr noundef nonnull %6) #19, !range !356
  %83 = icmp ne i32 %82, 0
  %84 = icmp ne ptr %79, null
  %85 = and i1 %83, %84
  br i1 %85, label %19, label %86, !llvm.loop !808

86:                                               ; preds = %78, %13
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %5) #19
  br label %87

87:                                               ; preds = %4, %86
  %88 = phi i8 [ 1, %86 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret i8 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !322 !PGOFuncName !809 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !322 !PGOFuncName !810 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !793
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !310
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #15 !prof !322 !PGOFuncName !811 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !310
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!293}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!36 = !{ptr @vect_get_smallest_scalar_type, ptr @gimple_expr_type, i64 5}
!37 = !{ptr @vect_get_smallest_scalar_type, ptr @is_gimple_assign, i64 5}
!38 = !{ptr @vect_get_smallest_scalar_type, ptr @gimple_assign_cast_p, i64 4}
!39 = !{ptr @vect_get_smallest_scalar_type, ptr @gimple_assign_rhs_code, i64 6}
!40 = !{ptr @vect_get_smallest_scalar_type, ptr @gimple_assign_rhs1, i64 2}
!41 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 5}
!42 = !{ptr @gimple_expr_type, ptr @gimple_call_return_type, i64 2}
!43 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 2}
!44 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 1}
!45 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 10}
!46 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 5}
!47 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 4}
!48 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 18}
!49 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 18}
!50 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 1}
!51 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2}
!52 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 2}
!53 = !{ptr @gimple_op, ptr @gimple_ops, i64 2}
!54 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 31}
!55 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 31}
!56 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!57 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 31}
!58 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 31}
!59 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 18}
!60 = !{ptr @gimple_expr_code, ptr @fancy_abort, i64 5}
!61 = !{ptr @vinfo_for_stmt, ptr @gimple_uid, i64 199300}
!62 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 199299}
!63 = !{ptr @vinfo_for_stmt, ptr @fancy_abort, i64 1}
!64 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_index, i64 199299}
!65 = !{ptr @vect_analyze_data_ref_dependences, ptr @vect_print_dump_info, i64 11334}
!66 = !{ptr @vect_analyze_data_ref_dependences, ptr @fwrite, i64 1}
!67 = !{ptr @vect_analyze_data_ref_dependences, ptr @VEC_ddr_p_base_iterate, i64 25891}
!68 = !{ptr @vect_analyze_data_ref_dependences, ptr @vect_analyze_data_ref_dependence, i64 14930}
!69 = !{ptr @vect_analyze_data_ref_dependence, ptr @vinfo_for_stmt, i64 29142}
!70 = !{ptr @vect_analyze_data_ref_dependence, ptr @vector_type_mode, i64 2}
!71 = !{ptr @vect_analyze_data_ref_dependence, ptr @vect_check_interleaving, i64 2661}
!72 = !{ptr @vect_analyze_data_ref_dependence, ptr @vect_print_dump_info, i64 379}
!73 = !{ptr @vect_analyze_data_ref_dependence, ptr @fwrite, i64 11}
!74 = !{ptr @vect_analyze_data_ref_dependence, ptr @print_generic_expr, i64 10}
!75 = !{ptr @vect_analyze_data_ref_dependence, ptr @vect_mark_for_runtime_alias_test, i64 2}
!76 = !{ptr @vect_analyze_data_ref_dependence, ptr @VEC_lambda_vector_base_length, i64 8}
!77 = !{ptr @vect_analyze_data_ref_dependence, ptr @index_in_loop_nest, i64 7}
!78 = !{ptr @vect_analyze_data_ref_dependence, ptr @VEC_lambda_vector_base_iterate, i64 13}
!79 = !{ptr @vect_analyze_data_ref_dependence, ptr @fprintf, i64 1}
!80 = !{ptr @vect_analyze_data_ref_dependence, ptr @VEC_dr_p_heap_safe_push, i64 4}
!81 = !{ptr @vect_check_interleaving, ptr @vect_equal_offsets, i64 656}
!82 = !{ptr @vect_check_interleaving, ptr @tree_int_cst_compare, i64 1120}
!83 = !{ptr @vect_check_interleaving, ptr @types_compatible_p, i64 512}
!84 = !{ptr @vect_check_interleaving, ptr @vect_update_interleaving_chain, i64 508}
!85 = !{ptr @vect_check_interleaving, ptr @vect_print_dump_info, i64 508}
!86 = !{ptr @vect_check_interleaving, ptr @fwrite, i64 4}
!87 = !{ptr @vect_check_interleaving, ptr @print_generic_expr, i64 4}
!88 = !{ptr @index_in_loop_nest, ptr @VEC_loop_p_base_iterate, i64 8}
!89 = !{ptr @VEC_dr_p_heap_safe_push, ptr @VEC_dr_p_heap_reserve, i64 4}
!90 = !{ptr @VEC_dr_p_heap_safe_push, ptr @VEC_dr_p_base_quick_push, i64 4}
!91 = !{ptr @vect_equal_offsets, ptr @tree_strip_nop_conversions, i64 1368}
!92 = !{ptr @vect_equal_offsets, ptr @vect_equal_offsets, i64 13}
!93 = !{ptr @vect_update_interleaving_chain, ptr @vinfo_for_stmt, i64 1596}
!94 = !{ptr @vect_update_interleaving_chain, ptr @vect_insert_into_interleaving_chain, i64 61}
!95 = !{ptr @vect_update_interleaving_chain, ptr @tree_int_cst_compare, i64 124}
!96 = !{ptr @vect_insert_into_interleaving_chain, ptr @vinfo_for_stmt, i64 471}
!97 = !{ptr @vect_insert_into_interleaving_chain, ptr @tree_int_cst_compare, i64 138}
!98 = !{ptr @VEC_dr_p_heap_reserve, ptr @VEC_dr_p_base_space, i64 4}
!99 = !{ptr @VEC_dr_p_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!100 = !{ptr @vect_verify_datarefs_alignment, ptr @VEC_data_reference_p_base_iterate, i64 966}
!101 = !{ptr @vect_verify_datarefs_alignment, ptr @vinfo_for_stmt, i64 916}
!102 = !{ptr @vect_verify_datarefs_alignment, ptr @vect_supportable_dr_alignment, i64 906}
!103 = !{ptr @vect_verify_datarefs_alignment, ptr @vect_print_dump_info, i64 700}
!104 = !{ptr @vect_verify_datarefs_alignment, ptr @fwrite, i64 2}
!105 = !{ptr @vect_supportable_dr_alignment, ptr @vinfo_for_stmt, i64 814}
!106 = !{ptr @vect_supportable_dr_alignment, ptr @vector_type_mode, i64 813}
!107 = !{ptr @vect_supportable_dr_alignment, ptr @aligned_access_p, i64 814}
!108 = !{ptr @vect_supportable_dr_alignment, ptr @nested_in_vect_loop_p, i64 16}
!109 = !{ptr @vect_supportable_dr_alignment, ptr @known_alignment_for_access_p, i64 16}
!110 = !{ptr @vect_supportable_dr_alignment, ptr @contains_packed_reference, i64 12}
!111 = !{ptr @vect_enhance_data_refs_alignment, ptr @vect_print_dump_info, i64 65}
!112 = !{ptr @vect_enhance_data_refs_alignment, ptr @fwrite, i64 4}
!113 = !{ptr @vect_enhance_data_refs_alignment, ptr @VEC_data_reference_p_base_iterate, i64 120}
!114 = !{ptr @vect_enhance_data_refs_alignment, ptr @vinfo_for_stmt, i64 67}
!115 = !{ptr @vect_enhance_data_refs_alignment, ptr @aligned_access_p, i64 28}
!116 = !{ptr @vect_enhance_data_refs_alignment, ptr @vector_alignment_reachable_p, i64 21}
!117 = !{ptr @vect_enhance_data_refs_alignment, ptr @VEC_ddr_p_base_length, i64 22}
!118 = !{ptr @vect_enhance_data_refs_alignment, ptr @vect_can_advance_ivs_p, i64 21}
!119 = !{ptr @vect_enhance_data_refs_alignment, ptr @single_exit, i64 20}
!120 = !{ptr @vect_enhance_data_refs_alignment, ptr @slpeel_can_duplicate_loop_p, i64 20}
!121 = !{ptr @vect_enhance_data_refs_alignment, ptr @known_alignment_for_access_p, i64 21}
!122 = !{ptr @vect_enhance_data_refs_alignment, ptr @fprintf, i64 1}
!123 = !{ptr @vect_enhance_data_refs_alignment, ptr @vect_update_misalignment_for_peel, i64 7}
!124 = !{ptr @vect_enhance_data_refs_alignment, ptr @vect_supportable_dr_alignment, i64 8}
!125 = !{ptr @vect_enhance_data_refs_alignment, ptr @vect_verify_datarefs_alignment, i64 22}
!126 = !{ptr @vect_enhance_data_refs_alignment, ptr @fancy_abort, i64 1}
!127 = !{ptr @vect_enhance_data_refs_alignment, ptr @optimize_loop_nest_for_speed_p, i64 2}
!128 = !{ptr @vect_enhance_data_refs_alignment, ptr @VEC_gimple_base_length, i64 4}
!129 = !{ptr @vect_enhance_data_refs_alignment, ptr @vector_type_mode, i64 2}
!130 = !{ptr @vect_enhance_data_refs_alignment, ptr @VEC_gimple_heap_safe_push, i64 2}
!131 = !{ptr @vect_enhance_data_refs_alignment, ptr @VEC_gimple_base_iterate, i64 3}
!132 = !{ptr @vector_alignment_reachable_p, ptr @vinfo_for_stmt, i64 21}
!133 = !{ptr @vector_alignment_reachable_p, ptr @known_alignment_for_access_p, i64 41}
!134 = !{ptr @vector_alignment_reachable_p, ptr @aligned_access_p, i64 1}
!135 = !{ptr @vector_alignment_reachable_p, ptr @contains_packed_reference, i64 18}
!136 = !{ptr @vector_alignment_reachable_p, ptr @vect_print_dump_info, i64 19}
!137 = !{ptr @vector_alignment_reachable_p, ptr @fprintf, i64 1}
!138 = !{ptr @vect_update_misalignment_for_peel, ptr @vector_type_mode, i64 2}
!139 = !{ptr @vect_update_misalignment_for_peel, ptr @vinfo_for_stmt, i64 16}
!140 = !{ptr @vect_update_misalignment_for_peel, ptr @VEC_dr_p_base_iterate, i64 6}
!141 = !{ptr @vect_update_misalignment_for_peel, ptr @known_alignment_for_access_p, i64 6}
!142 = !{ptr @vect_update_misalignment_for_peel, ptr @vect_print_dump_info, i64 5}
!143 = !{ptr @vect_update_misalignment_for_peel, ptr @fwrite, i64 1}
!144 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 25}
!145 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 25}
!146 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 25}
!147 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!148 = !{ptr @vect_analyze_data_refs_alignment, ptr @vect_print_dump_info, i64 11426}
!149 = !{ptr @vect_analyze_data_refs_alignment, ptr @fwrite, i64 2}
!150 = !{ptr @vect_analyze_data_refs_alignment, ptr @vect_compute_data_refs_alignment, i64 11425}
!151 = !{ptr @vect_compute_data_refs_alignment, ptr @VEC_data_reference_p_base_iterate, i64 24136}
!152 = !{ptr @vect_compute_data_refs_alignment, ptr @vect_compute_data_ref_alignment, i64 12712}
!153 = !{ptr @vect_compute_data_ref_alignment, ptr @vinfo_for_stmt, i64 12712}
!154 = !{ptr @vect_compute_data_ref_alignment, ptr @vect_print_dump_info, i64 25576}
!155 = !{ptr @vect_compute_data_ref_alignment, ptr @fwrite, i64 5}
!156 = !{ptr @vect_compute_data_ref_alignment, ptr @nested_in_vect_loop_p, i64 44}
!157 = !{ptr @vect_compute_data_ref_alignment, ptr @build_fold_indirect_ref_loc, i64 12712}
!158 = !{ptr @vect_compute_data_ref_alignment, ptr @size_int_kind, i64 22808}
!159 = !{ptr @vect_compute_data_ref_alignment, ptr @tree_int_cst_compare, i64 22807}
!160 = !{ptr @vect_compute_data_ref_alignment, ptr @print_generic_expr, i64 3}
!161 = !{ptr @vect_compute_data_ref_alignment, ptr @vect_can_force_dr_alignment_p, i64 2460}
!162 = !{ptr @vect_compute_data_ref_alignment, ptr @fancy_abort, i64 2}
!163 = !{ptr @vect_compute_data_ref_alignment, ptr @size_binop_loc, i64 8574}
!164 = !{ptr @vect_compute_data_ref_alignment, ptr @host_integerp, i64 8574}
!165 = !{ptr @vect_compute_data_ref_alignment, ptr @fprintf, i64 1}
!166 = !{ptr @nested_in_vect_loop_p, ptr @gimple_bb, i64 3}
!167 = !{ptr @vect_analyze_data_ref_accesses, ptr @vect_print_dump_info, i64 21868}
!168 = !{ptr @vect_analyze_data_ref_accesses, ptr @fwrite, i64 2}
!169 = !{ptr @vect_analyze_data_ref_accesses, ptr @VEC_data_reference_p_base_iterate, i64 11855}
!170 = !{ptr @vect_analyze_data_ref_accesses, ptr @vect_analyze_data_ref_access, i64 11780}
!171 = !{ptr @vect_analyze_data_ref_access, ptr @vinfo_for_stmt, i64 11783}
!172 = !{ptr @vect_analyze_data_ref_access, ptr @nested_in_vect_loop_p, i64 45}
!173 = !{ptr @vect_analyze_data_ref_access, ptr @tree_int_cst_compare, i64 11050}
!174 = !{ptr @vect_analyze_data_ref_access, ptr @vect_print_dump_info, i64 1}
!175 = !{ptr @vect_analyze_data_ref_access, ptr @fwrite, i64 1}
!176 = !{ptr @vect_analyze_data_ref_access, ptr @vect_analyze_group_access, i64 10318}
!177 = !{ptr @vect_analyze_group_access, ptr @vinfo_for_stmt, i64 21646}
!178 = !{ptr @vect_analyze_group_access, ptr @exact_log2, i64 42}
!179 = !{ptr @vect_analyze_group_access, ptr @vect_print_dump_info, i64 10265}
!180 = !{ptr @vect_analyze_group_access, ptr @fwrite, i64 6}
!181 = !{ptr @vect_analyze_group_access, ptr @print_generic_expr, i64 2}
!182 = !{ptr @vect_analyze_group_access, ptr @tree_int_cst_compare, i64 360}
!183 = !{ptr @vect_analyze_group_access, ptr @VEC_gimple_heap_safe_push, i64 1}
!184 = !{ptr @vect_prune_runtime_alias_test_list, ptr @vect_print_dump_info, i64 23}
!185 = !{ptr @vect_prune_runtime_alias_test_list, ptr @fwrite, i64 2}
!186 = !{ptr @vect_prune_runtime_alias_test_list, ptr @VEC_ddr_p_base_length, i64 23}
!187 = !{ptr @vect_prune_runtime_alias_test_list, ptr @VEC_ddr_p_base_index, i64 11}
!188 = !{ptr @vect_prune_runtime_alias_test_list, ptr @vect_vfa_range_equal, i64 10}
!189 = !{ptr @vect_prune_runtime_alias_test_list, ptr @VEC_ddr_p_base_truncate, i64 1}
!190 = !{ptr @vect_analyze_data_refs, ptr @vect_print_dump_info, i64 501018}
!191 = !{ptr @vect_analyze_data_refs, ptr @fwrite, i64 22}
!192 = !{ptr @vect_analyze_data_refs, ptr @compute_data_dependences_for_loop, i64 851}
!193 = !{ptr @vect_analyze_data_refs, ptr @compute_data_dependences_for_bb, i64 258390}
!194 = !{ptr @vect_analyze_data_refs, ptr @VEC_data_reference_p_base_iterate, i64 221278}
!195 = !{ptr @vect_analyze_data_refs, ptr @vinfo_for_stmt, i64 203803}
!196 = !{ptr @vect_analyze_data_refs, ptr @print_gimple_stmt, i64 5}
!197 = !{ptr @vect_analyze_data_refs, ptr @unshare_expr, i64 414078}
!198 = !{ptr @vect_analyze_data_refs, ptr @nested_in_vect_loop_p, i64 892}
!199 = !{ptr @vect_analyze_data_refs, ptr @fold_convert_loc, i64 11}
!200 = !{ptr @vect_analyze_data_refs, ptr @fold_build2_stat_loc, i64 6}
!201 = !{ptr @vect_analyze_data_refs, ptr @build_fold_indirect_ref_loc, i64 5}
!202 = !{ptr @vect_analyze_data_refs, ptr @print_generic_expr, i64 8}
!203 = !{ptr @vect_analyze_data_refs, ptr @get_inner_reference, i64 5}
!204 = !{ptr @vect_analyze_data_refs, ptr @fancy_abort, i64 1}
!205 = !{ptr @vect_analyze_data_refs, ptr @build_fold_addr_expr_loc, i64 4}
!206 = !{ptr @vect_analyze_data_refs, ptr @loop_containing_stmt, i64 6}
!207 = !{ptr @vect_analyze_data_refs, ptr @simple_iv, i64 6}
!208 = !{ptr @vect_analyze_data_refs, ptr @size_int_kind, i64 6}
!209 = !{ptr @vect_analyze_data_refs, ptr @split_constant_offset, i64 4}
!210 = !{ptr @vect_analyze_data_refs, ptr @size_binop_loc, i64 6}
!211 = !{ptr @vect_analyze_data_refs, ptr @highest_pow2_factor, i64 2}
!212 = !{ptr @vect_analyze_data_refs, ptr @get_vectype_for_scalar_type, i64 138022}
!213 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 4}
!214 = !{ptr @vect_get_new_vect_var, ptr @fancy_abort, i64 55}
!215 = !{ptr @vect_get_new_vect_var, ptr @concat, i64 49}
!216 = !{ptr @vect_get_new_vect_var, ptr @create_tmp_var, i64 109}
!217 = !{ptr @vect_get_new_vect_var, ptr @free, i64 49}
!218 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @vinfo_for_stmt, i64 54}
!219 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @unshare_expr, i64 166}
!220 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @gimple_bb, i64 52}
!221 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @nested_in_vect_loop_p, i64 1}
!222 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @size_int_kind, i64 2}
!223 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @build_fold_indirect_ref_loc, i64 54}
!224 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @create_tmp_var, i64 109}
!225 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @add_referenced_var, i64 163}
!226 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @force_gimple_operand, i64 163}
!227 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @gimple_seq_add_seq, i64 163}
!228 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @fold_convert_loc, i64 163}
!229 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @size_binop_loc, i64 54}
!230 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @fold_build2_stat_loc, i64 55}
!231 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @build_pointer_type, i64 54}
!232 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @get_name, i64 54}
!233 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @vect_get_new_vect_var, i64 54}
!234 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @vect_print_dump_info, i64 54}
!235 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @fwrite, i64 1}
!236 = !{ptr @vect_create_addr_base_for_vector_ref, ptr @print_generic_expr, i64 1}
!237 = !{ptr @vect_create_data_ref_ptr, ptr @vinfo_for_stmt, i64 43}
!238 = !{ptr @vect_create_data_ref_ptr, ptr @gsi_for_stmt, i64 29}
!239 = !{ptr @vect_create_data_ref_ptr, ptr @nested_in_vect_loop_p, i64 28}
!240 = !{ptr @vect_create_data_ref_ptr, ptr @gimple_bb, i64 28}
!241 = !{ptr @vect_create_data_ref_ptr, ptr @loop_preheader_edge, i64 28}
!242 = !{ptr @vect_create_data_ref_ptr, ptr @tree_int_cst_compare, i64 29}
!243 = !{ptr @vect_create_data_ref_ptr, ptr @unshare_expr, i64 29}
!244 = !{ptr @vect_create_data_ref_ptr, ptr @build_fold_indirect_ref_loc, i64 29}
!245 = !{ptr @vect_create_data_ref_ptr, ptr @vect_print_dump_info, i64 29}
!246 = !{ptr @vect_create_data_ref_ptr, ptr @fwrite, i64 1}
!247 = !{ptr @vect_create_data_ref_ptr, ptr @print_generic_expr, i64 2}
!248 = !{ptr @vect_create_data_ref_ptr, ptr @build_pointer_type, i64 29}
!249 = !{ptr @vect_create_data_ref_ptr, ptr @get_name, i64 30}
!250 = !{ptr @vect_create_data_ref_ptr, ptr @vect_get_new_vect_var, i64 30}
!251 = !{ptr @vect_create_data_ref_ptr, ptr @get_deref_alias_set, i64 44}
!252 = !{ptr @vect_create_data_ref_ptr, ptr @get_alias_set, i64 44}
!253 = !{ptr @vect_create_data_ref_ptr, ptr @alias_sets_conflict_p, i64 44}
!254 = !{ptr @vect_create_data_ref_ptr, ptr @gimple_assign_lhs, i64 15}
!255 = !{ptr @vect_create_data_ref_ptr, ptr @build_pointer_type_for_mode, i64 1}
!256 = !{ptr @vect_create_data_ref_ptr, ptr @add_referenced_var, i64 29}
!257 = !{ptr @vect_create_data_ref_ptr, ptr @vect_create_addr_base_for_vector_ref, i64 29}
!258 = !{ptr @vect_create_data_ref_ptr, ptr @gsi_insert_seq_on_edge_immediate, i64 27}
!259 = !{ptr @vect_create_data_ref_ptr, ptr @fancy_abort, i64 2}
!260 = !{ptr @vect_create_data_ref_ptr, ptr @gsi_insert_seq_before, i64 1}
!261 = !{ptr @vect_create_data_ref_ptr, ptr @fold_convert_loc, i64 58}
!262 = !{ptr @vect_create_data_ref_ptr, ptr @gimple_build_assign_stat, i64 29}
!263 = !{ptr @vect_create_data_ref_ptr, ptr @make_ssa_name, i64 29}
!264 = !{ptr @vect_create_data_ref_ptr, ptr @gimple_assign_set_lhs, i64 29}
!265 = !{ptr @vect_create_data_ref_ptr, ptr @gsi_insert_on_edge_immediate, i64 28}
!266 = !{ptr @vect_create_data_ref_ptr, ptr @gsi_insert_before, i64 1}
!267 = !{ptr @vect_create_data_ref_ptr, ptr @standard_iv_increment_position, i64 29}
!268 = !{ptr @vect_create_data_ref_ptr, ptr @create_iv, i64 29}
!269 = !{ptr @vect_create_data_ref_ptr, ptr @gsi_stmt, i64 29}
!270 = !{ptr @vect_create_data_ref_ptr, ptr @new_stmt_vec_info, i64 29}
!271 = !{ptr @vect_create_data_ref_ptr, ptr @set_vinfo_for_stmt, i64 29}
!272 = !{ptr @vect_create_data_ref_ptr, ptr @duplicate_ssa_name_ptr_info, i64 38}
!273 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 29}
!274 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 29}
!275 = !{ptr @set_vinfo_for_stmt, ptr @gimple_uid, i64 29}
!276 = !{ptr @set_vinfo_for_stmt, ptr @fancy_abort, i64 1}
!277 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 28}
!278 = !{ptr @set_vinfo_for_stmt, ptr @gimple_set_uid, i64 28}
!279 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_heap_safe_push, i64 28}
!280 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_base_replace, i64 1}
!281 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 29}
!282 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 28}
!283 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!284 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 29}
!285 = !{ptr @VEC_vec_void_p_heap_safe_push, ptr @VEC_vec_void_p_heap_reserve, i64 29}
!286 = !{ptr @VEC_vec_void_p_heap_safe_push, ptr @VEC_vec_void_p_base_quick_push, i64 29}
!287 = !{ptr @VEC_vec_void_p_heap_reserve, ptr @VEC_vec_void_p_base_space, i64 29}
!288 = !{ptr @VEC_vec_void_p_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!289 = !{ptr @vect_create_destination_var, ptr @fancy_abort, i64 1}
!290 = !{ptr @vect_create_destination_var, ptr @get_name, i64 9}
!291 = !{ptr @vect_create_destination_var, ptr @vect_get_new_vect_var, i64 9}
!292 = !{ptr @vect_create_destination_var, ptr @add_referenced_var, i64 9}
!293 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!294 = !{!"function_entry_count", i64 5}
!295 = !{!296, !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !{i8 0, i8 2}
!299 = !{!"branch_weights", i32 1, i32 6}
!300 = !{!"branch_weights", i32 5, i32 2}
!301 = !{i32 0, i32 65536}
!302 = !{!"branch_weights", i32 1, i32 5}
!303 = !{!"branch_weights", i32 2, i32 1}
!304 = !{!305, !305, i64 0}
!305 = !{!"long", !296, i64 0}
!306 = !{!"tree-vect-data-refs.c:gimple_expr_type"}
!307 = !{i32 0, i32 256}
!308 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 1}
!309 = !{!"branch_weights", i32 2, i32 5}
!310 = !{!311, !311, i64 0}
!311 = !{!"any pointer", !296, i64 0}
!312 = !{!"function_entry_count", i64 10}
!313 = !{!"tree-vect-data-refs.c:is_gimple_assign"}
!314 = !{!"tree-vect-data-refs.c:gimple_assign_cast_p"}
!315 = !{!"function_entry_count", i64 18}
!316 = !{!"tree-vect-data-refs.c:gimple_assign_rhs_code"}
!317 = !{!"branch_weights", i32 1, i32 19}
!318 = !{!"function_entry_count", i64 2}
!319 = !{!"tree-vect-data-refs.c:gimple_assign_rhs1"}
!320 = !{!"function_entry_count", i64 126}
!321 = !{!"tree-vect-data-refs.c:gimple_code"}
!322 = !{!"function_entry_count", i64 0}
!323 = !{!"tree-vect-data-refs.c:gimple_call_return_type"}
!324 = !{!"tree-vect-data-refs.c:gimple_call_fn"}
!325 = !{!"tree-vect-data-refs.c:gimple_op"}
!326 = !{!"branch_weights", i32 1, i32 3}
!327 = !{!"function_entry_count", i64 31}
!328 = !{!"tree-vect-data-refs.c:gimple_has_ops"}
!329 = !{!"tree-vect-data-refs.c:gimple_ops"}
!330 = !{!"branch_weights", i32 1, i32 32}
!331 = !{!"tree-vect-data-refs.c:gimple_statement_structure"}
!332 = !{!"tree-vect-data-refs.c:gss_for_code"}
!333 = !{!334, !334, i64 0}
!334 = !{!"int", !296, i64 0}
!335 = !{!"tree-vect-data-refs.c:gimple_expr_code"}
!336 = !{!"tree-vect-data-refs.c:get_gimple_rhs_class"}
!337 = !{!338, !311, i64 128}
!338 = !{!"_stmt_vec_info", !334, i64 0, !311, i64 8, !311, i64 16, !334, i64 24, !296, i64 28, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !296, i64 96, !311, i64 104, !311, i64 112, !334, i64 120, !311, i64 128, !311, i64 136, !334, i64 144, !334, i64 148, !334, i64 152, !311, i64 160, !296, i64 168, !339, i64 172, !334, i64 180, !311, i64 184}
!339 = !{!"", !334, i64 0, !334, i64 4}
!340 = !{!338, !311, i64 136}
!341 = distinct !{!341, !342}
!342 = !{!"llvm.loop.mustprogress"}
!343 = !{!"function_entry_count", i64 199300}
!344 = !{!"tree-vect-data-refs.c:vinfo_for_stmt"}
!345 = !{!"branch_weights", i32 1, i32 199301}
!346 = !{!"function_entry_count", i64 199329}
!347 = !{!"tree-vect-data-refs.c:gimple_uid"}
!348 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_base_length"}
!349 = !{!"branch_weights", i32 1, i32 199330}
!350 = !{!351, !334, i64 0}
!351 = !{!"VEC_vec_void_p_base", !334, i64 0, !334, i64 4, !296, i64 8}
!352 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_base_index"}
!353 = !{!"function_entry_count", i64 11334}
!354 = !{!"branch_weights", i32 11335, i32 1}
!355 = !{!"branch_weights", i32 11306, i32 30}
!356 = !{i32 0, i32 2}
!357 = !{!"branch_weights", i32 1, i32 10971}
!358 = !{!"branch_weights", i32 10971, i32 3601}
!359 = distinct !{!359, !342}
!360 = !{!"branch_weights", i32 14209, i32 364}
!361 = !{!"function_entry_count", i64 25542}
!362 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_iterate"}
!363 = !{!"branch_weights", i32 1, i32 25543}
!364 = !{!365, !334, i64 0}
!365 = !{!"VEC_ddr_p_base", !334, i64 0, !334, i64 4, !296, i64 8}
!366 = !{!"branch_weights", i32 14572, i32 10972}
!367 = !{!"function_entry_count", i64 14571}
!368 = !{!"tree-vect-data-refs.c:vect_analyze_data_ref_dependence"}
!369 = !{!370, !311, i64 0}
!370 = !{!"data_dependence_relation", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !334, i64 56, !296, i64 60, !296, i64 61, !296, i64 62}
!371 = !{!370, !311, i64 8}
!372 = !{!373, !311, i64 0}
!373 = !{!"data_reference", !311, i64 0, !311, i64 8, !311, i64 16, !296, i64 24, !374, i64 32, !375, i64 72, !376, i64 88, !311, i64 104}
!374 = !{!"innermost_loop_behavior", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32}
!375 = !{!"indices", !311, i64 0, !311, i64 8}
!376 = !{!"dr_alias", !311, i64 0, !311, i64 8}
!377 = !{!373, !311, i64 8}
!378 = !{!"branch_weights", i32 1, i32 14572}
!379 = !{!370, !311, i64 16}
!380 = !{!"branch_weights", i32 2204, i32 12369}
!381 = !{!"branch_weights", i32 48, i32 12322}
!382 = !{!383, !311, i64 0}
!383 = !{!"_loop_vec_info", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !334, i64 32, !296, i64 36, !334, i64 40, !311, i64 48, !334, i64 56, !334, i64 60, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !334, i64 96, !311, i64 104, !311, i64 112, !334, i64 120}
!384 = !{!383, !334, i64 40}
!385 = !{!373, !296, i64 24}
!386 = !{!"branch_weights", i32 869, i32 11501}
!387 = !{!"branch_weights", i32 -1236240067, i32 119987057}
!388 = !{!"branch_weights", i32 11893, i32 467}
!389 = !{!"branch_weights", i32 379, i32 89}
!390 = !{!"branch_weights", i32 1, i32 379}
!391 = !{!"branch_weights", i32 283, i32 97}
!392 = !{!"branch_weights", i32 283, i32 1}
!393 = !{!"branch_weights", i32 8, i32 82}
!394 = !{!"branch_weights", i32 1, i32 82}
!395 = !{!"branch_weights", i32 82, i32 1}
!396 = !{!370, !311, i64 48}
!397 = !{!"branch_weights", i32 1, i32 8}
!398 = !{!399, !334, i64 0}
!399 = !{!"loop", !334, i64 0, !334, i64 4, !311, i64 8, !311, i64 16, !400, i64 24, !334, i64 32, !334, i64 36, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !401, i64 80, !401, i64 96, !296, i64 112, !296, i64 113, !334, i64 116, !311, i64 120, !311, i64 128, !296, i64 136, !311, i64 144}
!400 = !{!"lpt_decision", !334, i64 0, !334, i64 4}
!401 = !{!"", !305, i64 0, !305, i64 8}
!402 = !{!370, !311, i64 32}
!403 = !{!"branch_weights", i32 1, i32 127}
!404 = !{!"branch_weights", i32 8, i32 1}
!405 = !{!"branch_weights", i32 9, i32 27}
!406 = !{!"branch_weights", i32 3, i32 1}
!407 = !{!338, !296, i64 168}
!408 = !{!"branch_weights", i32 5, i32 1}
!409 = !{!370, !296, i64 60}
!410 = !{!"branch_weights", i32 6, i32 1}
!411 = !{!"branch_weights", i32 127, i32 1}
!412 = distinct !{!412, !342}
!413 = !{!"function_entry_count", i64 2662}
!414 = !{!"tree-vect-data-refs.c:vect_check_interleaving"}
!415 = !{!373, !311, i64 32}
!416 = !{!"branch_weights", i32 569, i32 2095}
!417 = !{!"branch_weights", i32 1079, i32 1017}
!418 = !{!"branch_weights", i32 679, i32 401}
!419 = !{!"branch_weights", i32 88, i32 592}
!420 = !{!373, !311, i64 40}
!421 = !{!"branch_weights", i32 49, i32 608}
!422 = !{!373, !311, i64 48}
!423 = !{!"branch_weights", i32 26, i32 583}
!424 = !{!"branch_weights", i32 559, i32 25}
!425 = !{!"branch_weights", i32 516, i32 44}
!426 = !{!373, !311, i64 56}
!427 = !{!"branch_weights", i32 516, i32 1}
!428 = !{!"branch_weights", i32 1, i32 516}
!429 = !{!"branch_weights", i32 322, i32 195}
!430 = !{!"branch_weights", i32 322, i32 1}
!431 = !{!"branch_weights", i32 322, i32 324}
!432 = !{!"branch_weights", i32 2585895, i32 26393}
!433 = !{!"branch_weights", i32 195, i32 1}
!434 = !{!"tree-vect-data-refs.c:vect_mark_for_runtime_alias_test"}
!435 = !{!436, !334, i64 8}
!436 = !{!"param_info", !311, i64 0, !334, i64 8, !296, i64 12, !334, i64 16, !334, i64 20, !311, i64 24}
!437 = !{!399, !311, i64 48}
!438 = !{!"function_entry_count", i64 7}
!439 = !{!"tree-vect-data-refs.c:VEC_lambda_vector_base_length"}
!440 = !{!441, !334, i64 0}
!441 = !{!"VEC_lambda_vector_base", !334, i64 0, !334, i64 4, !296, i64 8}
!442 = !{!"tree-vect-data-refs.c:index_in_loop_nest"}
!443 = !{!"branch_weights", i32 127, i32 897}
!444 = distinct !{!444, !342}
!445 = !{!"function_entry_count", i64 14}
!446 = !{!"tree-vect-data-refs.c:VEC_lambda_vector_base_iterate"}
!447 = !{!"branch_weights", i32 1, i32 15}
!448 = !{!"branch_weights", i32 8, i32 8}
!449 = !{!"function_entry_count", i64 4}
!450 = !{!"tree-vect-data-refs.c:VEC_dr_p_heap_safe_push"}
!451 = !{!"function_entry_count", i64 674}
!452 = !{!"tree-vect-data-refs.c:vect_equal_offsets"}
!453 = !{!"branch_weights", i32 558, i32 59}
!454 = !{!"branch_weights", i32 54, i32 6}
!455 = !{!"branch_weights", i32 539, i32 1936}
!456 = !{!"branch_weights", i32 2, i32 10}
!457 = !{!"branch_weights", i32 10, i32 1}
!458 = !{!"branch_weights", i32 59, i32 0}
!459 = !{!"function_entry_count", i64 515}
!460 = !{!"tree-vect-data-refs.c:vect_update_interleaving_chain"}
!461 = !{!"branch_weights", i32 156, i32 361}
!462 = !{!"branch_weights", i32 100, i32 57}
!463 = !{!"branch_weights", i32 38, i32 324}
!464 = !{!338, !311, i64 48}
!465 = !{!"branch_weights", i32 34, i32 5}
!466 = !{!"branch_weights", i32 34, i32 93}
!467 = distinct !{!467, !342}
!468 = !{!"branch_weights", i32 324, i32 1}
!469 = distinct !{!469, !342}
!470 = distinct !{!470, !342}
!471 = !{!"function_entry_count", i64 60}
!472 = !{!"tree-vect-data-refs.c:vect_insert_into_interleaving_chain"}
!473 = !{!"branch_weights", i32 1, i32 151}
!474 = !{!"branch_weights", i32 1, i32 171}
!475 = !{!"branch_weights", i32 171, i32 129}
!476 = distinct !{!476, !342}
!477 = !{!"branch_weights", i32 151, i32 785}
!478 = !{!"tree-vect-data-refs.c:VEC_ddr_p_heap_safe_push"}
!479 = !{!"tree-vect-data-refs.c:VEC_ddr_p_heap_reserve"}
!480 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_quick_push"}
!481 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_space"}
!482 = !{!365, !334, i64 4}
!483 = !{!"tree-vect-data-refs.c:VEC_loop_p_base_iterate"}
!484 = !{!485, !334, i64 0}
!485 = !{!"VEC_loop_p_base", !334, i64 0, !334, i64 4, !296, i64 8}
!486 = !{!"tree-vect-data-refs.c:VEC_dr_p_heap_reserve"}
!487 = !{!"tree-vect-data-refs.c:VEC_dr_p_base_quick_push"}
!488 = !{!489, !334, i64 0}
!489 = !{!"VEC_dr_p_base", !334, i64 0, !334, i64 4, !296, i64 8}
!490 = !{!"tree-vect-data-refs.c:VEC_dr_p_base_space"}
!491 = !{!489, !334, i64 4}
!492 = !{!"function_entry_count", i64 748}
!493 = !{!"branch_weights", i32 727, i32 23}
!494 = !{!"branch_weights", i32 1, i32 159}
!495 = !{!"branch_weights", i32 37445, i32 432}
!496 = !{!"branch_weights", i32 175, i32 103840, i32 30625}
!497 = !{!"branch_weights", i32 590, i32 1}
!498 = !{!"branch_weights", i32 159, i32 613}
!499 = distinct !{!499, !342}
!500 = !{!"function_entry_count", i64 248823}
!501 = !{!"tree-vect-data-refs.c:VEC_data_reference_p_base_iterate"}
!502 = !{!"branch_weights", i32 79520, i32 169305}
!503 = !{!504, !334, i64 0}
!504 = !{!"VEC_data_reference_p_base", !334, i64 0, !334, i64 4, !296, i64 8}
!505 = !{!"branch_weights", i32 145439, i32 23867}
!506 = !{!"function_entry_count", i64 814}
!507 = !{!338, !311, i64 32}
!508 = !{!"branch_weights", i32 815, i32 1}
!509 = !{!338, !311, i64 16}
!510 = !{!"branch_weights", i32 605, i32 211}
!511 = !{!"branch_weights", i32 590, i32 16}
!512 = !{!"branch_weights", i32 6, i32 11}
!513 = !{!514, !334, i64 0}
!514 = !{!"optab_handlers", !334, i64 0}
!515 = !{!"branch_weights", i32 11, i32 1}
!516 = !{!517, !311, i64 664}
!517 = !{!"gcc_target", !518, i64 0, !520, i64 368, !521, i64 664, !334, i64 744, !311, i64 752, !311, i64 760, !311, i64 768, !311, i64 776, !311, i64 784, !311, i64 792, !311, i64 800, !311, i64 808, !311, i64 816, !311, i64 824, !311, i64 832, !311, i64 840, !311, i64 848, !311, i64 856, !311, i64 864, !311, i64 872, !311, i64 880, !311, i64 888, !311, i64 896, !311, i64 904, !311, i64 912, !311, i64 920, !311, i64 928, !311, i64 936, !311, i64 944, !311, i64 952, !311, i64 960, !311, i64 968, !311, i64 976, !311, i64 984, !311, i64 992, !311, i64 1000, !311, i64 1008, !311, i64 1016, !311, i64 1024, !311, i64 1032, !311, i64 1040, !311, i64 1048, !311, i64 1056, !305, i64 1064, !305, i64 1072, !311, i64 1080, !311, i64 1088, !311, i64 1096, !311, i64 1104, !311, i64 1112, !311, i64 1120, !311, i64 1128, !311, i64 1136, !311, i64 1144, !311, i64 1152, !311, i64 1160, !311, i64 1168, !522, i64 1176, !311, i64 1232, !311, i64 1240, !311, i64 1248, !311, i64 1256, !311, i64 1264, !311, i64 1272, !311, i64 1280, !311, i64 1288, !311, i64 1296, !311, i64 1304, !311, i64 1312, !311, i64 1320, !311, i64 1328, !311, i64 1336, !311, i64 1344, !311, i64 1352, !311, i64 1360, !311, i64 1368, !311, i64 1376, !311, i64 1384, !311, i64 1392, !311, i64 1400, !311, i64 1408, !311, i64 1416, !311, i64 1424, !311, i64 1432, !311, i64 1440, !311, i64 1448, !311, i64 1456, !305, i64 1464, !523, i64 1472, !311, i64 1664, !311, i64 1672, !311, i64 1680, !311, i64 1688, !311, i64 1696, !311, i64 1704, !311, i64 1712, !311, i64 1720, !311, i64 1728, !311, i64 1736, !311, i64 1744, !311, i64 1752, !311, i64 1760, !311, i64 1768, !311, i64 1776, !524, i64 1784, !525, i64 1792, !526, i64 1896, !527, i64 1968, !311, i64 2016, !296, i64 2024, !296, i64 2025, !296, i64 2026, !296, i64 2027, !296, i64 2028, !296, i64 2029, !296, i64 2030, !296, i64 2031, !296, i64 2032, !296, i64 2033, !296, i64 2034, !296, i64 2035}
!518 = !{!"asm_out", !311, i64 0, !311, i64 8, !311, i64 16, !519, i64 24, !519, i64 56, !311, i64 88, !311, i64 96, !311, i64 104, !311, i64 112, !311, i64 120, !311, i64 128, !311, i64 136, !311, i64 144, !311, i64 152, !311, i64 160, !311, i64 168, !311, i64 176, !311, i64 184, !311, i64 192, !311, i64 200, !311, i64 208, !311, i64 216, !311, i64 224, !311, i64 232, !311, i64 240, !311, i64 248, !311, i64 256, !311, i64 264, !311, i64 272, !311, i64 280, !311, i64 288, !311, i64 296, !311, i64 304, !311, i64 312, !311, i64 320, !311, i64 328, !311, i64 336, !311, i64 344, !311, i64 352, !311, i64 360}
!519 = !{!"asm_int_op", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24}
!520 = !{!"sched", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !311, i64 96, !311, i64 104, !311, i64 112, !311, i64 120, !311, i64 128, !311, i64 136, !311, i64 144, !311, i64 152, !311, i64 160, !311, i64 168, !311, i64 176, !311, i64 184, !311, i64 192, !311, i64 200, !311, i64 208, !311, i64 216, !311, i64 224, !311, i64 232, !311, i64 240, !311, i64 248, !311, i64 256, !311, i64 264, !311, i64 272, !311, i64 280, !311, i64 288}
!521 = !{!"vectorize", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72}
!522 = !{!"addr_space", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48}
!523 = !{!"calls", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !311, i64 96, !311, i64 104, !311, i64 112, !311, i64 120, !311, i64 128, !311, i64 136, !311, i64 144, !311, i64 152, !311, i64 160, !311, i64 168, !311, i64 176, !311, i64 184}
!524 = !{!"c", !311, i64 0}
!525 = !{!"cxx", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !311, i64 96}
!526 = !{!"emutls", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !296, i64 64, !296, i64 65}
!527 = !{!"target_option_hooks", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40}
!528 = !{!373, !311, i64 72}
!529 = !{!"branch_weights", i32 1, i32 11}
!530 = !{!517, !311, i64 736}
!531 = !{!373, !311, i64 16}
!532 = !{!"function_entry_count", i64 22}
!533 = !{!383, !311, i64 64}
!534 = !{!"branch_weights", i32 23, i32 1}
!535 = !{!"branch_weights", i32 63, i32 1}
!536 = !{!"branch_weights", i32 24, i32 8}
!537 = !{!"branch_weights", i32 22, i32 3}
!538 = !{!"branch_weights", i32 1, i32 22}
!539 = !{!"branch_weights", i32 127, i32 1857}
!540 = distinct !{!540, !342}
!541 = !{!383, !311, i64 80}
!542 = !{!"branch_weights", i32 1, i32 23}
!543 = !{!"branch_weights", i32 134217728, i32 -1207959552}
!544 = !{!"branch_weights", i32 22, i32 1}
!545 = !{!338, !334, i64 144}
!546 = !{!"branch_weights", i32 1, i32 135}
!547 = !{!"branch_weights", i32 17, i32 6}
!548 = !{!"branch_weights", i32 13, i32 1}
!549 = !{!"branch_weights", i32 135, i32 41}
!550 = distinct !{!550, !342}
!551 = !{!"branch_weights", i32 17, i32 1}
!552 = !{!"branch_weights", i32 135, i32 1}
!553 = distinct !{!553, !342}
!554 = !{!383, !311, i64 48}
!555 = !{!383, !334, i64 56}
!556 = !{!"branch_weights", i32 1, i32 17}
!557 = !{!"branch_weights", i32 1, i32 7}
!558 = !{!"branch_weights", i32 7, i32 1}
!559 = !{!"branch_weights", i32 1, i32 223}
!560 = !{!"branch_weights", i32 11, i32 5}
!561 = !{!383, !311, i64 88}
!562 = !{!383, !334, i64 60}
!563 = !{!"branch_weights", i32 78, i32 6}
!564 = !{!"branch_weights", i32 223, i32 257}
!565 = distinct !{!565, !342}
!566 = !{!"branch_weights", i32 2, i32 6}
!567 = !{!"branch_weights", i32 1, i32 191}
!568 = !{!"branch_weights", i32 191, i32 161}
!569 = distinct !{!569, !342}
!570 = !{!"function_entry_count", i64 851}
!571 = !{!"tree-vect-data-refs.c:aligned_access_p"}
!572 = !{!"function_entry_count", i64 21}
!573 = !{!"tree-vect-data-refs.c:vector_alignment_reachable_p"}
!574 = !{!517, !311, i64 712}
!575 = !{!"function_entry_count", i64 66}
!576 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_length"}
!577 = !{!"branch_weights", i32 1, i32 67}
!578 = !{!"function_entry_count", i64 93}
!579 = !{!"tree-vect-data-refs.c:known_alignment_for_access_p"}
!580 = !{!"tree-vect-data-refs.c:vect_update_misalignment_for_peel"}
!581 = !{!338, !311, i64 112}
!582 = !{!"branch_weights", i32 1, i32 0}
!583 = distinct !{!583, !342}
!584 = !{!"function_entry_count", i64 16}
!585 = !{!"tree-vect-data-refs.c:VEC_gimple_base_length"}
!586 = !{!587, !334, i64 0}
!587 = !{!"VEC_gimple_base", !334, i64 0, !334, i64 4, !296, i64 8}
!588 = !{!"function_entry_count", i64 25}
!589 = !{!"tree-vect-data-refs.c:VEC_gimple_heap_safe_push"}
!590 = !{!"tree-vect-data-refs.c:VEC_gimple_base_truncate"}
!591 = !{!"function_entry_count", i64 15}
!592 = !{!"tree-vect-data-refs.c:VEC_gimple_base_iterate"}
!593 = !{!"branch_weights", i32 1, i32 16}
!594 = !{!"branch_weights", i32 11, i32 6}
!595 = !{!"tree-vect-data-refs.c:VEC_dr_p_base_iterate"}
!596 = !{!"tree-vect-data-refs.c:VEC_gimple_heap_reserve"}
!597 = !{!"branch_weights", i32 1, i32 26}
!598 = !{!"tree-vect-data-refs.c:VEC_gimple_base_quick_push"}
!599 = !{!"tree-vect-data-refs.c:VEC_gimple_base_space"}
!600 = !{!587, !334, i64 4}
!601 = !{!"function_entry_count", i64 11425}
!602 = !{!"branch_weights", i32 11426, i32 1}
!603 = !{!"branch_weights", i32 1, i32 11426}
!604 = !{!"tree-vect-data-refs.c:vect_compute_data_refs_alignment"}
!605 = !{!"branch_weights", i32 11306, i32 121}
!606 = !{!"branch_weights", i32 1, i32 11425}
!607 = !{!"branch_weights", i32 11425, i32 1288}
!608 = distinct !{!608, !342}
!609 = !{!"branch_weights", i32 1, i32 12713}
!610 = !{!"function_entry_count", i64 12712}
!611 = !{!"tree-vect-data-refs.c:vect_compute_data_ref_alignment"}
!612 = !{!"branch_weights", i32 12713, i32 1}
!613 = !{!"branch_weights", i32 12670, i32 44}
!614 = !{!373, !311, i64 64}
!615 = !{!"branch_weights", i32 0, i32 -2147483648}
!616 = !{!"branch_weights", i32 44, i32 1}
!617 = !{!338, !311, i64 64}
!618 = !{!338, !311, i64 88}
!619 = !{!338, !311, i64 56}
!620 = !{!"branch_weights", i32 118504996, i32 19912322}
!621 = !{!"branch_weights", i32 1, i32 10886}
!622 = !{!"branch_weights", i32 1828, i32 1}
!623 = !{!"branch_weights", i32 932, i32 9955}
!624 = !{!"branch_weights", i32 781, i32 152}
!625 = !{!"branch_weights", i32 9167, i32 940}
!626 = !{!"branch_weights", i32 7647, i32 1521}
!627 = !{!"branch_weights", i32 2309, i32 152}
!628 = !{!"branch_weights", i32 74, i32 11401}
!629 = !{!"branch_weights", i32 2309, i32 1}
!630 = !{!"branch_weights", i32 152, i32 1}
!631 = !{!"branch_weights", i32 1, i32 152}
!632 = !{!"branch_weights", i32 1, i32 8578}
!633 = !{!"branch_weights", i32 8578, i32 1}
!634 = !{!"function_entry_count", i64 659}
!635 = !{!"tree-vect-data-refs.c:nested_in_vect_loop_p"}
!636 = !{!"branch_weights", i32 658, i32 3}
!637 = !{!638, !311, i64 24}
!638 = !{!"basic_block_def", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !296, i64 32, !311, i64 48, !311, i64 56, !296, i64 64, !305, i64 72, !334, i64 80, !334, i64 84, !334, i64 88, !334, i64 92, !334, i64 96}
!639 = !{!"function_entry_count", i64 2459}
!640 = !{!"branch_weights", i32 152, i32 2309}
!641 = !{!"function_entry_count", i64 89}
!642 = !{!"tree-vect-data-refs.c:gimple_bb"}
!643 = !{!"function_entry_count", i64 10971}
!644 = !{!"branch_weights", i32 10972, i32 1}
!645 = !{!"branch_weights", i32 10943, i32 30}
!646 = !{!"branch_weights", i32 1, i32 748}
!647 = !{!"branch_weights", i32 748, i32 10304}
!648 = distinct !{!648, !342}
!649 = !{!"branch_weights", i32 10224, i32 829}
!650 = !{!"branch_weights", i32 10224, i32 1}
!651 = !{!"function_entry_count", i64 11051}
!652 = !{!"tree-vect-data-refs.c:vect_analyze_data_ref_access"}
!653 = !{!"branch_weights", i32 11015, i32 38}
!654 = !{!"branch_weights", i32 1, i32 38}
!655 = !{!"branch_weights", i32 38, i32 1}
!656 = !{!338, !311, i64 80}
!657 = !{!"branch_weights", i32 731, i32 10322}
!658 = !{!"branch_weights", i32 1645737479, i32 501746169}
!659 = !{!"function_entry_count", i64 10321}
!660 = !{!"tree-vect-data-refs.c:vect_analyze_group_access"}
!661 = !{!338, !311, i64 184}
!662 = !{!"branch_weights", i32 10202, i32 121}
!663 = !{!"branch_weights", i32 449, i32 9754}
!664 = !{!"branch_weights", i32 399914, i32 94760111}
!665 = !{!"branch_weights", i32 22, i32 20}
!666 = !{!"branch_weights", i32 20, i32 1}
!667 = !{!"branch_weights", i32 10183, i32 1}
!668 = !{!"branch_weights", i32 64, i32 58}
!669 = !{!"branch_weights", i32 1, i32 97}
!670 = !{!338, !311, i64 160}
!671 = !{!"branch_weights", i32 247, i32 529}
!672 = distinct !{!672, !342}
!673 = !{!"branch_weights", i32 97, i32 1}
!674 = !{!"branch_weights", i32 56, i32 42}
!675 = !{!"branch_weights", i32 34, i32 9}
!676 = !{!"branch_weights", i32 34, i32 1}
!677 = !{!338, !334, i64 152}
!678 = !{!"branch_weights", i32 127, i32 31489}
!679 = !{!"branch_weights", i32 30, i32 2}
!680 = !{!"branch_weights", i32 1, i32 2}
!681 = !{!"branch_weights", i32 94, i32 2}
!682 = !{!"branch_weights", i32 31, i32 1}
!683 = !{!"branch_weights", i32 23, i32 9}
!684 = !{!"branch_weights", i32 22, i32 2}
!685 = !{!"branch_weights", i32 152, i32 256}
!686 = !{!"branch_weights", i32 16, i32 1}
!687 = distinct !{!687, !342}
!688 = distinct !{!688, !342}
!689 = !{!"branch_weights", i32 0, i32 1}
!690 = !{!"branch_weights", i32 2058005161, i32 89478487}
!691 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_index"}
!692 = !{!"tree-vect-data-refs.c:vect_vfa_range_equal"}
!693 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_ordered_remove"}
!694 = !{!"tree-vect-data-refs.c:VEC_ddr_p_base_truncate"}
!695 = !{!"tree-vect-data-refs.c:vect_same_range_drs"}
!696 = !{!"function_entry_count", i64 259241}
!697 = !{!"branch_weights", i32 259242, i32 1}
!698 = !{!"branch_weights", i32 258392, i32 851}
!699 = !{!"branch_weights", i32 160, i32 692}
!700 = !{!"branch_weights", i32 160, i32 1}
!701 = !{!702, !311, i64 0}
!702 = !{!"_bb_vec_info", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32}
!703 = !{!"branch_weights", i32 60995, i32 197398}
!704 = !{!"branch_weights", i32 60995, i32 1}
!705 = !{!"branch_weights", i32 1, i32 91014}
!706 = !{!"branch_weights", i32 91014, i32 29810}
!707 = distinct !{!707, !342}
!708 = !{!"branch_weights", i32 1, i32 120824}
!709 = !{!"branch_weights", i32 38932, i32 81893}
!710 = !{!"branch_weights", i32 1, i32 81893}
!711 = !{!"branch_weights", i32 38932, i32 1}
!712 = !{!"branch_weights", i32 61, i32 81833}
!713 = !{!"branch_weights", i32 61, i32 1}
!714 = !{!"branch_weights", i32 81305, i32 529}
!715 = !{!"branch_weights", i32 527, i32 3}
!716 = !{!"branch_weights", i32 1227133513, i32 920350135}
!717 = !{!718, !311, i64 0}
!718 = !{!"", !311, i64 0, !311, i64 8, !296, i64 16}
!719 = !{!718, !311, i64 8}
!720 = !{!338, !311, i64 72}
!721 = !{!"branch_weights", i32 81833, i32 1}
!722 = !{!"branch_weights", i32 68084, i32 13750}
!723 = !{!"branch_weights", i32 68084, i32 1}
!724 = !{!"tree-vect-data-refs.c:loop_containing_stmt"}
!725 = !{!"function_entry_count", i64 109}
!726 = !{!"branch_weights", i32 61, i32 50}
!727 = !{!"branch_weights", i32 27, i32 84}
!728 = !{!"function_entry_count", i64 54}
!729 = !{!"branch_weights", i32 3025, i32 111}
!730 = !{!"branch_weights", i32 55, i32 1}
!731 = !{!"branch_weights", i32 1064068479, i32 1083415169}
!732 = !{!"function_entry_count", i64 29}
!733 = !{!"branch_weights", i32 1, i32 30}
!734 = !{!"branch_weights", i32 2075900860, i32 71582788}
!735 = !{!"branch_weights", i32 30, i32 1}
!736 = distinct !{!736, !342}
!737 = !{!"branch_weights", i32 1, i32 61}
!738 = !{!373, !311, i64 88}
!739 = !{!"branch_weights", i32 10, i32 21}
!740 = !{!"branch_weights", i32 2112278998, i32 35204650}
!741 = !{!"tree-vect-data-refs.c:gimple_assign_lhs"}
!742 = !{!"tree-vect-data-refs.c:make_ssa_name"}
!743 = !{!"tree-vect-data-refs.c:gimple_assign_set_lhs"}
!744 = !{!"tree-vect-data-refs.c:gsi_stmt"}
!745 = !{!746, !311, i64 0}
!746 = !{!"", !311, i64 0, !311, i64 8, !311, i64 16}
!747 = !{!748, !311, i64 0}
!748 = !{!"gimple_seq_node_d", !311, i64 0, !311, i64 8, !311, i64 16}
!749 = !{!"tree-vect-data-refs.c:set_vinfo_for_stmt"}
!750 = !{!"tree-vect-data-refs.c:gimple_set_op"}
!751 = !{!"tree-vect-data-refs.c:gimple_num_ops"}
!752 = !{!"tree-vect-data-refs.c:gimple_set_uid"}
!753 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_heap_safe_push"}
!754 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_base_replace"}
!755 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_heap_reserve"}
!756 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_base_quick_push"}
!757 = !{!"tree-vect-data-refs.c:VEC_vec_void_p_base_space"}
!758 = !{!351, !334, i64 4}
!759 = distinct !{!759, !342}
!760 = !{!"tree-vect-data-refs.c:op_iter_init_use"}
!761 = !{!762, !334, i64 4}
!762 = !{!"ssa_operand_iterator_d", !296, i64 0, !334, i64 4, !311, i64 8, !311, i64 16, !334, i64 24, !334, i64 28, !311, i64 32}
!763 = !{!"tree-vect-data-refs.c:op_iter_done"}
!764 = !{!762, !296, i64 0}
!765 = !{!"tree-vect-data-refs.c:get_use_from_ptr"}
!766 = !{!767, !311, i64 24}
!767 = !{!"ssa_use_operand_d", !311, i64 0, !311, i64 8, !296, i64 16, !311, i64 24}
!768 = !{!"tree-vect-data-refs.c:set_ssa_use_from_ptr"}
!769 = !{!"tree-vect-data-refs.c:op_iter_next_use"}
!770 = !{!762, !311, i64 16}
!771 = !{!772, !311, i64 0}
!772 = !{!"use_optype_d", !311, i64 0, !767, i64 8}
!773 = !{!762, !334, i64 24}
!774 = !{!762, !334, i64 28}
!775 = !{!762, !311, i64 32}
!776 = !{!"tree-vect-data-refs.c:op_iter_init"}
!777 = !{!762, !311, i64 8}
!778 = !{!"tree-vect-data-refs.c:gimple_use_ops"}
!779 = !{!"tree-vect-data-refs.c:gimple_vuse"}
!780 = !{!"tree-vect-data-refs.c:gimple_has_mem_ops"}
!781 = !{!"tree-vect-data-refs.c:delink_imm_use"}
!782 = !{!767, !311, i64 0}
!783 = !{!767, !311, i64 8}
!784 = !{!"tree-vect-data-refs.c:link_imm_use"}
!785 = !{!"tree-vect-data-refs.c:link_imm_use_to_list"}
!786 = !{!"tree-vect-data-refs.c:gimple_phi_arg_imm_use_ptr"}
!787 = !{!"tree-vect-data-refs.c:gimple_phi_arg"}
!788 = !{!"function_entry_count", i64 9}
!789 = !{!"branch_weights", i32 1, i32 10}
!790 = distinct !{!790, !342}
!791 = distinct !{!791, !342}
!792 = !{!"tree-vect-data-refs.c:VEC_tree_heap_copy"}
!793 = !{!794, !334, i64 0}
!794 = !{!"VEC_tree_base", !334, i64 0, !334, i64 4, !296, i64 8}
!795 = !{!796, !334, i64 0}
!796 = !{!"VEC_tree_heap", !794, i64 0}
!797 = !{!"tree-vect-data-refs.c:VEC_tree_base_index"}
!798 = !{!"tree-vect-data-refs.c:VEC_tree_base_replace"}
!799 = !{!399, !311, i64 8}
!800 = !{!"tree-vect-data-refs.c:gimple_call_set_lhs"}
!801 = !{!"tree-vect-data-refs.c:gimple_call_lhs"}
!802 = distinct !{!802, !342}
!803 = distinct !{!803, !342}
!804 = !{!338, !311, i64 40}
!805 = !{!338, !311, i64 104}
!806 = distinct !{!806, !342}
!807 = distinct !{!807, !342}
!808 = distinct !{!808, !342}
!809 = !{!"tree-vect-data-refs.c:VEC_tree_heap_alloc"}
!810 = !{!"tree-vect-data-refs.c:VEC_tree_base_iterate"}
!811 = !{!"tree-vect-data-refs.c:VEC_tree_heap_free"}
